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
	<24.218204, 34.817463, 35.329433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120596, 35.154636, 35.137638>,  <24.062031, 35.356941, 35.022560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.120596, 35.154636, 35.137638>,  <24.218204, 34.817463, 35.329433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120596, 35.154636, 35.137638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955629, 0.293142, 0.029003,
		0.165006, -0.451136, -0.877068,
		-0.244022, 0.842937, -0.479489,
		24.047390, 35.407516, 34.993790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559040, 34.986023, 34.616573>,  <24.218204, 34.817463, 35.329433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559040, 34.986023, 34.616573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464396, 35.342197, 34.772076>,  <24.407608, 35.555904, 34.865379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464396, 35.342197, 34.772076>,  <24.559040, 34.986023, 34.616573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464396, 35.342197, 34.772076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969999, 0.193496, 0.147178,
		0.055830, 0.411920, -0.909508,
		-0.236612, 0.890439, 0.388759,
		24.393412, 35.609329, 34.888702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755209, 35.631157, 34.204380>,  <24.559040, 34.986023, 34.616573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755209, 35.631157, 34.204380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762476, 35.626728, 34.604290>,  <24.766836, 35.624069, 34.844234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762476, 35.626728, 34.604290>,  <24.755209, 35.631157, 34.204380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.762476, 35.626728, 34.604290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994919, -0.098838, -0.019173,
		0.099028, 0.995042, 0.009220,
		0.018167, -0.011072, 0.999774,
		24.767925, 35.623405, 34.904221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252016, 36.052544, 34.400742>,  <24.755209, 35.631157, 34.204380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252016, 36.052544, 34.400742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188835, 35.814686, 34.716068>,  <25.150927, 35.671970, 34.905266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188835, 35.814686, 34.716068>,  <25.252016, 36.052544, 34.400742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188835, 35.814686, 34.716068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977219, -0.208738, 0.038346,
		0.141749, 0.776416, 0.614073,
		-0.157953, -0.594648, 0.788317,
		25.141449, 35.636292, 34.952564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748034, 36.142815, 34.837727>,  <25.252016, 36.052544, 34.400742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748034, 36.142815, 34.837727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643219, 35.775608, 34.956776>,  <25.580330, 35.555283, 35.028206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643219, 35.775608, 34.956776>,  <25.748034, 36.142815, 34.837727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643219, 35.775608, 34.956776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964448, -0.238144, 0.114576,
		-0.034304, 0.317069, 0.947782,
		-0.262037, -0.918016, 0.297628,
		25.564608, 35.500202, 35.046062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007942, 35.913162, 34.131901>,  <25.748034, 36.142815, 34.837727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007942, 35.913162, 34.131901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353481, 35.712749, 34.152798>,  <26.560804, 35.592503, 34.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353481, 35.712749, 34.152798>,  <26.007942, 35.913162, 34.131901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353481, 35.712749, 34.152798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315592, -0.457443, 0.831353,
		-0.392635, -0.734653, -0.553283,
		0.863852, -0.501030, 0.052242,
		26.612637, 35.562439, 34.168468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013674, 35.135159, 34.216404>,  <26.007942, 35.913162, 34.131901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013674, 35.135159, 34.216404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360960, 35.270962, 34.361145>,  <26.569332, 35.352444, 34.447990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360960, 35.270962, 34.361145>,  <26.013674, 35.135159, 34.216404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360960, 35.270962, 34.361145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097599, -0.598171, 0.795403,
		0.486496, -0.725897, -0.486205,
		0.868214, 0.339507, 0.361855,
		26.621424, 35.372814, 34.469700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414476, 34.549137, 34.490417>,  <26.013674, 35.135159, 34.216404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414476, 34.549137, 34.490417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564930, 34.874912, 34.667152>,  <26.655203, 35.070377, 34.773193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564930, 34.874912, 34.667152>,  <26.414476, 34.549137, 34.490417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564930, 34.874912, 34.667152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016089, -0.482521, 0.875737,
		0.926426, -0.322285, -0.194596,
		0.376133, 0.814436, 0.441835,
		26.677771, 35.119244, 34.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956783, 34.264305, 34.851948>,  <26.414476, 34.549137, 34.490417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956783, 34.264305, 34.851948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918074, 34.619095, 35.032574>,  <26.894848, 34.831970, 35.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918074, 34.619095, 35.032574>,  <26.956783, 34.264305, 34.851948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918074, 34.619095, 35.032574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108269, -0.441620, 0.890646,
		0.989400, 0.135081, -0.053295,
		-0.096773, 0.886975, 0.451564,
		26.889042, 34.885189, 35.168041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575563, 34.390842, 35.324669>,  <26.956783, 34.264305, 34.851948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575563, 34.390842, 35.324669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265656, 34.605637, 35.458160>,  <27.079710, 34.734512, 35.538258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265656, 34.605637, 35.458160>,  <27.575563, 34.390842, 35.324669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265656, 34.605637, 35.458160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042719, -0.482186, 0.875027,
		0.630799, 0.692200, 0.350644,
		-0.774769, 0.536987, 0.333732,
		27.033224, 34.766731, 35.558281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815268, 34.546055, 35.997688>,  <27.575563, 34.390842, 35.324669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815268, 34.546055, 35.997688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429710, 34.649616, 36.022598>,  <27.198376, 34.711754, 36.037544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429710, 34.649616, 36.022598>,  <27.815268, 34.546055, 35.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429710, 34.649616, 36.022598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035264, -0.355920, 0.933851,
		0.263946, 0.897936, 0.352199,
		-0.963893, 0.258906, 0.062279,
		27.140543, 34.727287, 36.041283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731911, 34.727703, 36.637062>,  <27.815268, 34.546055, 35.997688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731911, 34.727703, 36.637062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375689, 34.591183, 36.516777>,  <27.161955, 34.509270, 36.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375689, 34.591183, 36.516777>,  <27.731911, 34.727703, 36.637062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375689, 34.591183, 36.516777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051372, -0.581391, 0.812001,
		-0.451963, 0.738581, 0.500228,
		-0.890556, -0.341296, -0.300709,
		27.108522, 34.488792, 36.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117847, 34.714230, 37.136868>,  <27.731911, 34.727703, 36.637062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117847, 34.714230, 37.136868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022635, 34.413517, 36.890888>,  <26.965506, 34.233089, 36.743301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022635, 34.413517, 36.890888>,  <27.117847, 34.714230, 37.136868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022635, 34.413517, 36.890888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593200, -0.388810, 0.704940,
		-0.769060, 0.532588, -0.353407,
		-0.238034, -0.751783, -0.614949,
		26.951225, 34.187981, 36.706402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386156, 34.719357, 36.927475>,  <27.117847, 34.714230, 37.136868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386156, 34.719357, 36.927475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554131, 34.360031, 36.979145>,  <26.654915, 34.144436, 37.010147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554131, 34.360031, 36.979145>,  <26.386156, 34.719357, 36.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554131, 34.360031, 36.979145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481485, -0.099873, 0.870746,
		-0.769303, -0.427850, -0.474465,
		0.419935, -0.898315, 0.129171,
		26.680111, 34.090538, 37.017895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876657, 34.190975, 36.980503>,  <26.386156, 34.719357, 36.927475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876657, 34.190975, 36.980503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211199, 34.074368, 37.166206>,  <26.411922, 34.004402, 37.277626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211199, 34.074368, 37.166206>,  <25.876657, 34.190975, 36.980503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211199, 34.074368, 37.166206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527242, -0.195860, 0.826834,
		-0.150103, -0.936301, -0.317506,
		0.836352, -0.291513, 0.464258,
		26.462105, 33.986912, 37.305485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050720, 34.057461, 36.262394>,  <25.876657, 34.190975, 36.980503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050720, 34.057461, 36.262394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336958, 34.322067, 36.352119>,  <26.508701, 34.480831, 36.405956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336958, 34.322067, 36.352119>,  <26.050720, 34.057461, 36.262394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336958, 34.322067, 36.352119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186659, 0.490546, -0.851189,
		-0.673113, 0.567238, 0.474511,
		0.715596, 0.661518, 0.224313,
		26.551638, 34.520523, 36.419415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844267, 34.874996, 36.147518>,  <26.050720, 34.057461, 36.262394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844267, 34.874996, 36.147518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240688, 34.834118, 36.113182>,  <26.478540, 34.809589, 36.092583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240688, 34.834118, 36.113182>,  <25.844267, 34.874996, 36.147518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240688, 34.834118, 36.113182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024729, 0.772633, -0.634371,
		0.131150, 0.626573, 0.768249,
		0.991054, -0.102196, -0.085836,
		26.538004, 34.803459, 36.087433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110157, 35.557243, 35.907246>,  <25.844267, 34.874996, 36.147518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110157, 35.557243, 35.907246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406689, 35.307205, 35.809528>,  <26.584608, 35.157181, 35.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406689, 35.307205, 35.809528>,  <26.110157, 35.557243, 35.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406689, 35.307205, 35.809528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233575, 0.581551, -0.779257,
		0.629183, 0.520625, 0.577129,
		0.741330, -0.625099, -0.244297,
		26.629087, 35.119675, 35.736240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650093, 35.929729, 35.872982>,  <26.110157, 35.557243, 35.907246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650093, 35.929729, 35.872982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715075, 35.615284, 35.634441>,  <26.754063, 35.426617, 35.491318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715075, 35.615284, 35.634441>,  <26.650093, 35.929729, 35.872982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715075, 35.615284, 35.634441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098557, 0.614282, -0.782907,
		0.981782, 0.068410, 0.177268,
		0.162452, -0.786115, -0.596349,
		26.763809, 35.379448, 35.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222311, 36.104504, 35.394375>,  <26.650093, 35.929729, 35.872982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222311, 36.104504, 35.394375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029551, 35.811180, 35.202530>,  <26.913895, 35.635185, 35.087421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029551, 35.811180, 35.202530>,  <27.222311, 36.104504, 35.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029551, 35.811180, 35.202530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228374, 0.423332, -0.876719,
		0.845942, -0.532022, -0.036535,
		-0.481900, -0.733310, -0.479614,
		26.884981, 35.591187, 35.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429443, 36.733967, 35.831844>,  <27.222311, 36.104504, 35.394375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429443, 36.733967, 35.831844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776648, 36.671391, 36.020348>,  <27.984970, 36.633842, 36.133450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776648, 36.671391, 36.020348>,  <27.429443, 36.733967, 35.831844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776648, 36.671391, 36.020348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225502, -0.721360, -0.654820,
		0.442391, 0.674659, -0.590868,
		0.868009, -0.156444, 0.471260,
		28.037050, 36.624458, 36.161724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053156, 36.827751, 35.449162>,  <27.429443, 36.733967, 35.831844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053156, 36.827751, 35.449162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096298, 36.543926, 35.727695>,  <28.122183, 36.373631, 35.894817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096298, 36.543926, 35.727695>,  <28.053156, 36.827751, 35.449162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096298, 36.543926, 35.727695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270477, -0.653058, -0.707359,
		0.956666, 0.264635, 0.121486,
		0.107855, -0.709566, 0.696336,
		28.128654, 36.331055, 35.936596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668976, 36.366463, 35.421638>,  <28.053156, 36.827751, 35.449162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668976, 36.366463, 35.421638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459173, 36.136150, 35.672516>,  <28.333292, 35.997963, 35.823040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459173, 36.136150, 35.672516>,  <28.668976, 36.366463, 35.421638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459173, 36.136150, 35.672516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460894, -0.811400, -0.359455,
		0.715870, 0.100532, 0.690958,
		-0.524506, -0.575781, 0.627191,
		28.301821, 35.963417, 35.860672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039816, 35.827465, 35.543716>,  <28.668976, 36.366463, 35.421638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039816, 35.827465, 35.543716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702312, 35.674515, 35.694374>,  <28.499809, 35.582745, 35.784767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702312, 35.674515, 35.694374>,  <29.039816, 35.827465, 35.543716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702312, 35.674515, 35.694374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294086, -0.916398, -0.271528,
		0.448981, -0.118339, 0.885671,
		-0.843759, -0.382374, 0.376643,
		28.449184, 35.559803, 35.807365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099623, 35.334877, 36.087723>,  <29.039816, 35.827465, 35.543716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099623, 35.334877, 36.087723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748905, 35.256653, 35.912003>,  <28.538475, 35.209721, 35.806568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748905, 35.256653, 35.912003>,  <29.099623, 35.334877, 36.087723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748905, 35.256653, 35.912003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263490, -0.959597, -0.098723,
		-0.402247, -0.202312, 0.892898,
		-0.876795, -0.195559, -0.439302,
		28.485867, 35.197987, 35.780212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744272, 34.817703, 36.557907>,  <29.099623, 35.334877, 36.087723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744272, 34.817703, 36.557907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664606, 34.769661, 36.168877>,  <28.616806, 34.740833, 35.935459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664606, 34.769661, 36.168877>,  <28.744272, 34.817703, 36.557907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664606, 34.769661, 36.168877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300134, -0.952244, 0.056137,
		-0.932873, -0.280723, 0.225704,
		-0.199166, -0.120110, -0.972577,
		28.604856, 34.733627, 35.877102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277201, 34.133049, 36.383476>,  <28.744272, 34.817703, 36.557907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277201, 34.133049, 36.383476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515074, 34.213665, 36.072159>,  <28.657797, 34.262035, 35.885368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515074, 34.213665, 36.072159>,  <28.277201, 34.133049, 36.383476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515074, 34.213665, 36.072159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255119, -0.965342, -0.055043,
		-0.762409, -0.165824, -0.625488,
		0.594682, 0.201539, -0.778290,
		28.693478, 34.274128, 35.838673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129179, 33.763382, 35.677048>,  <28.277201, 34.133049, 36.383476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129179, 33.763382, 35.677048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518562, 33.847012, 35.714291>,  <28.752192, 33.897190, 35.736637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518562, 33.847012, 35.714291>,  <28.129179, 33.763382, 35.677048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518562, 33.847012, 35.714291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198240, -0.973556, 0.113534,
		0.114379, -0.092064, -0.989162,
		0.973457, 0.209078, 0.093104,
		28.810600, 33.909737, 35.742222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500397, 33.341213, 35.239105>,  <28.129179, 33.763382, 35.677048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500397, 33.341213, 35.239105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756809, 33.436024, 35.531105>,  <28.910656, 33.492912, 35.706306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756809, 33.436024, 35.531105>,  <28.500397, 33.341213, 35.239105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756809, 33.436024, 35.531105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269080, -0.960156, 0.075473,
		0.718801, 0.148047, -0.679269,
		0.641031, 0.237028, 0.729998,
		28.949118, 33.507133, 35.750103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114801, 33.086151, 35.085476>,  <28.500397, 33.341213, 35.239105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114801, 33.086151, 35.085476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072235, 33.100361, 35.482952>,  <29.046696, 33.108887, 35.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072235, 33.100361, 35.482952>,  <29.114801, 33.086151, 35.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072235, 33.100361, 35.482952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042346, -0.998293, 0.040226,
		0.993420, 0.046359, 0.104730,
		-0.106416, 0.035526, 0.993687,
		29.040310, 33.111019, 35.781059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759047, 32.854782, 35.454369>,  <29.114801, 33.086151, 35.085476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759047, 32.854782, 35.454369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440512, 32.815456, 35.693092>,  <29.249390, 32.791859, 35.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440512, 32.815456, 35.693092>,  <29.759047, 32.854782, 35.454369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440512, 32.815456, 35.693092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133454, -0.990944, 0.014823,
		0.589944, 0.091450, 0.802249,
		-0.796339, -0.098319, 0.596806,
		29.201611, 32.785961, 35.872135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841188, 32.246243, 35.799202>,  <29.759047, 32.854782, 35.454369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841188, 32.246243, 35.799202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446932, 32.296631, 35.844173>,  <29.210379, 32.326866, 35.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446932, 32.296631, 35.844173>,  <29.841188, 32.246243, 35.799202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446932, 32.296631, 35.844173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106463, -0.980487, 0.165261,
		0.131054, 0.150919, 0.979820,
		-0.985642, 0.125973, 0.112430,
		29.151239, 32.334423, 35.877903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562738, 32.255688, 36.580303>,  <29.841188, 32.246243, 35.799202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562738, 32.255688, 36.580303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282089, 32.139282, 36.320137>,  <29.113701, 32.069439, 36.164036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282089, 32.139282, 36.320137>,  <29.562738, 32.255688, 36.580303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282089, 32.139282, 36.320137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045487, -0.929229, 0.366693,
		-0.711096, 0.227694, 0.665205,
		-0.701622, -0.291012, -0.650414,
		29.071602, 32.051979, 36.125011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221132, 31.723654, 37.022144>,  <29.562738, 32.255688, 36.580303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221132, 31.723654, 37.022144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061125, 31.640160, 36.665176>,  <28.965120, 31.590063, 36.450996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061125, 31.640160, 36.665176>,  <29.221132, 31.723654, 37.022144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061125, 31.640160, 36.665176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040664, -0.976803, 0.210244,
		-0.915605, 0.047812, 0.399227,
		-0.400019, -0.208734, -0.892421,
		28.941120, 31.577539, 36.397449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768509, 31.180292, 37.165649>,  <29.221132, 31.723654, 37.022144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768509, 31.180292, 37.165649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858030, 31.180433, 36.775795>,  <28.911743, 31.180519, 36.541882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858030, 31.180433, 36.775795>,  <28.768509, 31.180292, 37.165649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858030, 31.180433, 36.775795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064578, -0.997808, 0.014465,
		-0.972493, -0.066177, -0.223335,
		0.223803, 0.000355, -0.974634,
		28.925171, 31.180540, 36.483406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749096, 30.416430, 37.167286>,  <28.768509, 31.180292, 37.165649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749096, 30.416430, 37.167286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686739, 30.167212, 36.860687>,  <28.649324, 30.017681, 36.676727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686739, 30.167212, 36.860687>,  <28.749096, 30.416430, 37.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686739, 30.167212, 36.860687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068643, 0.767270, -0.637640,
		0.985386, -0.152017, -0.076843,
		-0.155891, -0.623047, -0.766492,
		28.639971, 29.980297, 36.630741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308619, 30.429873, 36.646221>,  <28.749096, 30.416430, 37.167286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308619, 30.429873, 36.646221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941263, 30.362444, 36.503029>,  <28.720850, 30.321987, 36.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941263, 30.362444, 36.503029>,  <29.308619, 30.429873, 36.646221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941263, 30.362444, 36.503029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086650, 0.797070, -0.597638,
		0.386078, -0.579882, -0.717412,
		-0.918388, -0.168571, -0.357978,
		28.665747, 30.311872, 36.395634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261505, 30.440836, 35.887562>,  <29.308619, 30.429873, 36.646221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261505, 30.440836, 35.887562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915081, 30.580124, 36.031052>,  <28.707226, 30.663696, 36.117146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915081, 30.580124, 36.031052>,  <29.261505, 30.440836, 35.887562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915081, 30.580124, 36.031052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128279, 0.848291, -0.513757,
		-0.483200, -0.398929, -0.779342,
		-0.866061, 0.348221, 0.358720,
		28.655262, 30.684589, 36.138668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000109, 30.905813, 35.350174>,  <29.261505, 30.440836, 35.887562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000109, 30.905813, 35.350174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802450, 31.017136, 35.679626>,  <28.683855, 31.083929, 35.877296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802450, 31.017136, 35.679626>,  <29.000109, 30.905813, 35.350174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802450, 31.017136, 35.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060077, 0.934182, -0.351703,
		-0.867301, -0.223274, -0.444901,
		-0.494145, 0.278304, 0.823630,
		28.654207, 31.100626, 35.926716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427023, 31.415792, 35.180950>,  <29.000109, 30.905813, 35.350174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427023, 31.415792, 35.180950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580980, 31.454235, 35.548126>,  <28.673355, 31.477301, 35.768433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580980, 31.454235, 35.548126>,  <28.427023, 31.415792, 35.180950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580980, 31.454235, 35.548126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116693, 0.981515, -0.151694,
		-0.915554, 0.165504, 0.366565,
		0.384895, 0.096108, 0.917943,
		28.696449, 31.483068, 35.823509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026342, 31.865826, 35.467602>,  <28.427023, 31.415792, 35.180950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026342, 31.865826, 35.467602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349932, 31.900997, 35.700096>,  <28.544085, 31.922100, 35.839592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349932, 31.900997, 35.700096>,  <28.026342, 31.865826, 35.467602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349932, 31.900997, 35.700096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028034, 0.981854, -0.187554,
		-0.587178, 0.168021, 0.791828,
		0.808972, 0.087930, 0.581233,
		28.592623, 31.927376, 35.874466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835032, 32.402767, 35.956936>,  <28.026342, 31.865826, 35.467602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835032, 32.402767, 35.956936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232512, 32.374989, 35.921761>,  <28.471001, 32.358322, 35.900654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232512, 32.374989, 35.921761>,  <27.835032, 32.402767, 35.956936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232512, 32.374989, 35.921761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051284, 0.979634, -0.194130,
		0.099630, 0.188398, 0.977026,
		0.993702, -0.069447, -0.087939,
		28.530622, 32.354153, 35.895378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121367, 32.809265, 36.512409>,  <27.835032, 32.402767, 35.956936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121367, 32.809265, 36.512409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381645, 32.796585, 36.208939>,  <28.537813, 32.788979, 36.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381645, 32.796585, 36.208939>,  <28.121367, 32.809265, 36.512409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381645, 32.796585, 36.208939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112961, 0.992052, 0.055437,
		0.750889, -0.121773, 0.649105,
		0.650697, -0.031697, -0.758676,
		28.576855, 32.787075, 35.981335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667757, 33.254372, 36.761692>,  <28.121367, 32.809265, 36.512409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667757, 33.254372, 36.761692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947906, 33.048424, 36.563953>,  <29.115995, 32.924854, 36.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947906, 33.048424, 36.563953>,  <28.667757, 33.254372, 36.761692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947906, 33.048424, 36.563953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255015, 0.827369, -0.500427,
		0.666666, 0.224420, 0.710769,
		0.700374, -0.514874, -0.494349,
		29.158018, 32.893963, 36.415649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375124, 33.490829, 36.936707>,  <28.667757, 33.254372, 36.761692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375124, 33.490829, 36.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326288, 33.358742, 36.562317>,  <29.296986, 33.279491, 36.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326288, 33.358742, 36.562317>,  <29.375124, 33.490829, 36.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326288, 33.358742, 36.562317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046985, 0.940050, -0.337783,
		0.991406, -0.085218, -0.099257,
		-0.122092, -0.330217, -0.935976,
		29.289661, 33.259678, 36.281525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819069, 33.886986, 36.617249>,  <29.375124, 33.490829, 36.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819069, 33.886986, 36.617249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552961, 33.762878, 36.345615>,  <29.393297, 33.688412, 36.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552961, 33.762878, 36.345615>,  <29.819069, 33.886986, 36.617249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552961, 33.762878, 36.345615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160607, 0.947737, -0.275681,
		0.729124, -0.074337, -0.680332,
		-0.665269, -0.310272, -0.679079,
		29.353380, 33.669796, 36.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042381, 34.135754, 35.983322>,  <29.819069, 33.886986, 36.617249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042381, 34.135754, 35.983322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656361, 34.073784, 35.898781>,  <29.424747, 34.036602, 35.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.656361, 34.073784, 35.898781>,  <30.042381, 34.135754, 35.983322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656361, 34.073784, 35.898781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114016, 0.974419, -0.193670,
		0.235950, -0.162804, -0.958030,
		-0.965053, -0.154927, -0.211352,
		29.366844, 34.027306, 35.835377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014246, 34.384907, 35.281559>,  <30.042381, 34.135754, 35.983322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014246, 34.384907, 35.281559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654814, 34.435398, 35.449661>,  <29.439154, 34.465694, 35.550522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654814, 34.435398, 35.449661>,  <30.014246, 34.384907, 35.281559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654814, 34.435398, 35.449661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103935, 0.991703, -0.075644,
		-0.426318, -0.024293, -0.904247,
		-0.898583, 0.126231, 0.420256,
		29.385239, 34.473267, 35.575737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598328, 34.682137, 35.683048>,  <30.014246, 34.384907, 35.281559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598328, 34.682137, 35.683048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312983, 34.835873, 35.917446>,  <30.141775, 34.928116, 36.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312983, 34.835873, 35.917446>,  <30.598328, 34.682137, 35.683048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312983, 34.835873, 35.917446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230505, -0.918348, 0.321722,
		0.661800, 0.094430, 0.743709,
		-0.713364, 0.384344, 0.585996,
		30.098974, 34.951176, 36.093246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080513, 35.187927, 35.395206>,  <30.598328, 34.682137, 35.683048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080513, 35.187927, 35.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449680, 35.074245, 35.499092>,  <31.671181, 35.006035, 35.561424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449680, 35.074245, 35.499092>,  <31.080513, 35.187927, 35.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449680, 35.074245, 35.499092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367010, 0.853264, -0.370465,
		-0.116316, 0.437226, 0.891798,
		0.922916, -0.284207, 0.259715,
		31.726555, 34.988983, 35.577007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622215, 35.758915, 35.314922>,  <31.080513, 35.187927, 35.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622215, 35.758915, 35.314922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879049, 35.464588, 35.401001>,  <32.033150, 35.287994, 35.452648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879049, 35.464588, 35.401001>,  <31.622215, 35.758915, 35.314922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879049, 35.464588, 35.401001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736440, 0.513992, -0.439850,
		0.213038, 0.440899, 0.871907,
		0.642083, -0.735812, 0.215196,
		32.071674, 35.243843, 35.465561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136894, 36.007088, 35.591946>,  <31.622215, 35.758915, 35.314922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136894, 36.007088, 35.591946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255455, 35.680363, 35.393970>,  <32.326591, 35.484329, 35.275185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255455, 35.680363, 35.393970>,  <32.136894, 36.007088, 35.591946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255455, 35.680363, 35.393970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865224, 0.449076, -0.222975,
		0.404395, -0.362144, 0.839831,
		0.296399, -0.816812, -0.494940,
		32.344376, 35.435318, 35.245487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775871, 35.614716, 35.798378>,  <32.136894, 36.007088, 35.591946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775871, 35.614716, 35.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733719, 35.574795, 35.402615>,  <32.708427, 35.550842, 35.165157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733719, 35.574795, 35.402615>,  <32.775871, 35.614716, 35.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733719, 35.574795, 35.402615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952219, 0.276683, -0.129324,
		0.286660, -0.955765, 0.065875,
		-0.105376, -0.099800, -0.989412,
		32.702106, 35.544853, 35.105789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274296, 35.253719, 35.422810>,  <32.775871, 35.614716, 35.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274296, 35.253719, 35.422810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172077, 35.527409, 35.149597>,  <33.110744, 35.691624, 34.985668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172077, 35.527409, 35.149597>,  <33.274296, 35.253719, 35.422810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172077, 35.527409, 35.149597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949162, 0.311880, -0.042690,
		0.183815, -0.659218, -0.729139,
		-0.255546, 0.684224, -0.683033,
		33.095413, 35.732677, 34.944687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641510, 35.235783, 34.825146>,  <33.274296, 35.253719, 35.422810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641510, 35.235783, 34.825146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536961, 35.621876, 34.826553>,  <33.474232, 35.853531, 34.827396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536961, 35.621876, 34.826553>,  <33.641510, 35.235783, 34.825146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536961, 35.621876, 34.826553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932062, 0.253334, -0.259004,
		-0.250889, -0.064419, -0.965870,
		-0.261373, 0.965232, 0.003517,
		33.458549, 35.911446, 34.827610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839466, 34.588371, 34.312477>,  <33.641510, 35.235783, 34.825146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839466, 34.588371, 34.312477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813698, 34.282871, 34.055561>,  <33.798237, 34.099571, 33.901409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813698, 34.282871, 34.055561>,  <33.839466, 34.588371, 34.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813698, 34.282871, 34.055561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767346, 0.373570, -0.521177,
		0.637989, -0.526437, 0.561992,
		-0.064424, -0.763747, -0.642293,
		33.794373, 34.053745, 33.862873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488228, 34.301327, 34.339691>,  <33.839466, 34.588371, 34.312477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488228, 34.301327, 34.339691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303844, 34.213757, 33.995693>,  <34.193214, 34.161213, 33.789295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303844, 34.213757, 33.995693>,  <34.488228, 34.301327, 34.339691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303844, 34.213757, 33.995693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847889, 0.177373, -0.499623,
		0.261921, -0.959484, 0.103864,
		-0.460958, -0.218927, -0.859994,
		34.165558, 34.148079, 33.737694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871693, 33.774654, 33.899071>,  <34.488228, 34.301327, 34.339691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871693, 33.774654, 33.899071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711281, 34.086983, 33.707451>,  <34.615032, 34.274380, 33.592480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711281, 34.086983, 33.707451>,  <34.871693, 33.774654, 33.899071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711281, 34.086983, 33.707451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912879, 0.297061, -0.280013,
		-0.076332, -0.549611, -0.831926,
		-0.401031, 0.780822, -0.479053,
		34.590973, 34.321228, 33.563736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905880, 33.736229, 33.213364>,  <34.871693, 33.774654, 33.899071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905880, 33.736229, 33.213364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890556, 34.132973, 33.261944>,  <34.881363, 34.371017, 33.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890556, 34.132973, 33.261944>,  <34.905880, 33.736229, 33.213364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890556, 34.132973, 33.261944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920374, 0.082360, -0.382267,
		-0.389157, 0.097135, -0.916036,
		-0.038314, 0.991858, 0.121452,
		34.879063, 34.430531, 33.298378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971397, 34.273926, 32.612698>,  <34.905880, 33.736229, 33.213364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971397, 34.273926, 32.612698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148361, 34.354721, 32.962208>,  <35.254539, 34.403198, 33.171913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148361, 34.354721, 32.962208>,  <34.971397, 34.273926, 32.612698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148361, 34.354721, 32.962208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884897, 0.059986, -0.461908,
		-0.145715, 0.977549, -0.152203,
		0.442407, 0.201991, 0.873771,
		35.281082, 34.415318, 33.224339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313549, 33.739487, 32.490871>,  <34.971397, 34.273926, 32.612698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313549, 33.739487, 32.490871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296650, 33.531036, 32.149899>,  <35.286510, 33.405968, 31.945314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296650, 33.531036, 32.149899>,  <35.313549, 33.739487, 32.490871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296650, 33.531036, 32.149899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901899, -0.386986, 0.191884,
		-0.429876, -0.760704, 0.486350,
		-0.042244, -0.521125, -0.852434,
		35.283978, 33.374699, 31.894169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620773, 33.619751, 33.224617>,  <35.313549, 33.739487, 32.490871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620773, 33.619751, 33.224617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019848, 33.605473, 33.247776>,  <36.259293, 33.596905, 33.261669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019848, 33.605473, 33.247776>,  <35.620773, 33.619751, 33.224617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019848, 33.605473, 33.247776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065025, 0.251090, -0.965777,
		0.019936, 0.967305, 0.252829,
		0.997684, -0.035694, 0.057894,
		36.319153, 33.594765, 33.265144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891891, 34.290844, 33.062534>,  <35.620773, 33.619751, 33.224617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891891, 34.290844, 33.062534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168690, 34.013256, 32.982975>,  <36.334766, 33.846703, 32.935242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168690, 34.013256, 32.982975>,  <35.891891, 34.290844, 33.062534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168690, 34.013256, 32.982975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145185, 0.403668, -0.903312,
		0.707155, 0.596208, 0.380089,
		0.691992, -0.693965, -0.198895,
		36.376286, 33.805065, 32.923306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461456, 34.665386, 32.765884>,  <35.891891, 34.290844, 33.062534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461456, 34.665386, 32.765884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467697, 34.283329, 32.647591>,  <36.471443, 34.054096, 32.576614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467697, 34.283329, 32.647591>,  <36.461456, 34.665386, 32.765884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467697, 34.283329, 32.647591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049311, 0.294675, -0.954324,
		0.998662, 0.029474, -0.042501,
		0.015603, -0.955143, -0.295734,
		36.472378, 33.996788, 32.558872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131840, 34.528736, 32.379414>,  <36.461456, 34.665386, 32.765884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131840, 34.528736, 32.379414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773026, 34.362030, 32.320587>,  <36.557735, 34.262009, 32.285290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773026, 34.362030, 32.320587>,  <37.131840, 34.528736, 32.379414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773026, 34.362030, 32.320587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065207, 0.453932, -0.888647,
		0.437103, -0.787566, -0.434373,
		-0.897044, -0.416755, -0.147061,
		36.503914, 34.237000, 32.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982067, 33.935226, 31.792553>,  <37.131840, 34.528736, 32.379414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982067, 33.935226, 31.792553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695927, 34.209747, 31.845098>,  <36.524242, 34.374462, 31.876627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695927, 34.209747, 31.845098>,  <36.982067, 33.935226, 31.792553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695927, 34.209747, 31.845098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043843, 0.143543, -0.988672,
		-0.697388, -0.713008, -0.072594,
		-0.715352, 0.686306, 0.131366,
		36.481319, 34.415638, 31.884508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246037, 33.849483, 31.566160>,  <36.982067, 33.935226, 31.792553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246037, 33.849483, 31.566160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345356, 34.235622, 31.534046>,  <36.404949, 34.467308, 31.514778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345356, 34.235622, 31.534046>,  <36.246037, 33.849483, 31.566160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345356, 34.235622, 31.534046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013483, -0.079428, -0.996749,
		-0.968588, 0.248578, -0.006706,
		0.248303, 0.965349, -0.080285,
		36.419846, 34.525227, 31.509960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949436, 34.057590, 31.043018>,  <36.246037, 33.849483, 31.566160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949436, 34.057590, 31.043018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228512, 34.341251, 31.083675>,  <36.395958, 34.511448, 31.108070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228512, 34.341251, 31.083675>,  <35.949436, 34.057590, 31.043018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228512, 34.341251, 31.083675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026842, 0.167656, -0.985480,
		-0.715896, 0.684833, 0.136007,
		0.697691, 0.709152, 0.101642,
		36.437820, 34.553997, 31.114168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814716, 34.477654, 30.540083>,  <35.949436, 34.057590, 31.043018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814716, 34.477654, 30.540083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174969, 34.617092, 30.643883>,  <36.391121, 34.700756, 30.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174969, 34.617092, 30.643883>,  <35.814716, 34.477654, 30.540083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174969, 34.617092, 30.643883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146848, 0.317881, -0.936690,
		-0.409019, 0.881720, 0.235102,
		0.900633, 0.348599, 0.259498,
		36.445160, 34.721672, 30.721733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851067, 35.197594, 30.319794>,  <35.814716, 34.477654, 30.540083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851067, 35.197594, 30.319794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213242, 35.028328, 30.306459>,  <36.430546, 34.926769, 30.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213242, 35.028328, 30.306459>,  <35.851067, 35.197594, 30.319794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213242, 35.028328, 30.306459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112949, 0.315890, -0.942049,
		0.409170, 0.849204, 0.333815,
		0.905441, -0.423162, -0.033336,
		36.484875, 34.901379, 30.296459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264172, 35.623558, 29.921923>,  <35.851067, 35.197594, 30.319794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264172, 35.623558, 29.921923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497566, 35.298733, 29.925739>,  <36.637604, 35.103836, 29.928028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497566, 35.298733, 29.925739>,  <36.264172, 35.623558, 29.921923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497566, 35.298733, 29.925739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192960, 0.127216, -0.972925,
		0.788865, 0.569531, 0.230925,
		0.583488, -0.812066, 0.009540,
		36.672611, 35.055115, 29.928602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954350, 35.807293, 29.591957>,  <36.264172, 35.623558, 29.921923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954350, 35.807293, 29.591957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893951, 35.412094, 29.578911>,  <36.857712, 35.174976, 29.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893951, 35.412094, 29.578911>,  <36.954350, 35.807293, 29.591957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893951, 35.412094, 29.578911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337274, -0.020477, -0.941184,
		0.929218, -0.153119, 0.336317,
		-0.151000, -0.987996, -0.032615,
		36.848652, 35.115696, 29.569126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520721, 35.640938, 29.189655>,  <36.954350, 35.807293, 29.591957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520721, 35.640938, 29.189655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326729, 35.292538, 29.158278>,  <37.210331, 35.083500, 29.139450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326729, 35.292538, 29.158278>,  <37.520721, 35.640938, 29.189655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326729, 35.292538, 29.158278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174005, -0.008201, -0.984711,
		0.857037, -0.491220, 0.155535,
		-0.484985, -0.870997, -0.078446,
		37.181232, 35.031239, 29.134745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001629, 35.190372, 28.935160>,  <37.520721, 35.640938, 29.189655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001629, 35.190372, 28.935160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639484, 35.047211, 28.843739>,  <37.422199, 34.961315, 28.788887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639484, 35.047211, 28.843739>,  <38.001629, 35.190372, 28.935160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639484, 35.047211, 28.843739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228700, 0.042544, -0.972567,
		0.357807, -0.932790, 0.043334,
		-0.905357, -0.357901, -0.228551,
		37.367878, 34.939838, 28.775173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183472, 34.615543, 28.590435>,  <38.001629, 35.190372, 28.935160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183472, 34.615543, 28.590435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820728, 34.751019, 28.490112>,  <37.603085, 34.832302, 28.429918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820728, 34.751019, 28.490112>,  <38.183472, 34.615543, 28.590435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820728, 34.751019, 28.490112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277571, 0.032189, -0.960166,
		-0.317124, -0.940348, -0.123200,
		-0.906855, 0.338688, -0.250805,
		37.548672, 34.852627, 28.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097179, 34.205860, 28.047602>,  <38.183472, 34.615543, 28.590435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097179, 34.205860, 28.047602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823639, 34.495361, 28.010666>,  <37.659515, 34.669064, 27.988504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823639, 34.495361, 28.010666>,  <38.097179, 34.205860, 28.047602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823639, 34.495361, 28.010666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447805, 0.316414, -0.836273,
		-0.576041, -0.613234, -0.540481,
		-0.683847, 0.723758, -0.092342,
		37.618484, 34.712490, 27.982964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896088, 34.120373, 27.340229>,  <38.097179, 34.205860, 28.047602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896088, 34.120373, 27.340229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782810, 34.490044, 27.442751>,  <37.714844, 34.711845, 27.504265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782810, 34.490044, 27.442751>,  <37.896088, 34.120373, 27.340229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782810, 34.490044, 27.442751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199619, 0.318195, -0.926771,
		-0.938058, -0.211293, -0.274595,
		-0.283195, 0.924179, 0.256307,
		37.697853, 34.767296, 27.519644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640869, 34.328266, 26.788877>,  <37.896088, 34.120373, 27.340229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640869, 34.328266, 26.788877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686508, 34.686321, 26.961256>,  <37.713890, 34.901154, 27.064684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686508, 34.686321, 26.961256>,  <37.640869, 34.328266, 26.788877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686508, 34.686321, 26.961256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169159, 0.409942, -0.896288,
		-0.978962, 0.175162, -0.104648,
		0.114096, 0.895135, 0.430948,
		37.720737, 34.954861, 27.090540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027470, 34.816284, 26.600624>,  <37.640869, 34.328266, 26.788877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027470, 34.816284, 26.600624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352589, 35.028175, 26.697584>,  <37.547661, 35.155312, 26.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352589, 35.028175, 26.697584>,  <37.027470, 34.816284, 26.600624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352589, 35.028175, 26.697584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048320, 0.475968, -0.878135,
		-0.580545, 0.702029, 0.412460,
		0.812793, 0.529727, 0.242398,
		37.596428, 35.187092, 26.770304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964561, 35.364624, 26.174879>,  <37.027470, 34.816284, 26.600624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964561, 35.364624, 26.174879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341587, 35.408302, 26.301149>,  <37.567802, 35.434509, 26.376911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341587, 35.408302, 26.301149>,  <36.964561, 35.364624, 26.174879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341587, 35.408302, 26.301149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204788, 0.557695, -0.804387,
		-0.263885, 0.822832, 0.503301,
		0.942564, 0.109195, 0.315673,
		37.624355, 35.441059, 26.395851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061417, 36.020687, 26.062971>,  <36.964561, 35.364624, 26.174879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061417, 36.020687, 26.062971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420536, 35.844524, 26.063219>,  <37.636009, 35.738827, 26.063368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420536, 35.844524, 26.063219>,  <37.061417, 36.020687, 26.062971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420536, 35.844524, 26.063219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165188, 0.335442, -0.927465,
		0.408252, 0.832780, 0.373909,
		0.897799, -0.440405, 0.000621,
		37.689877, 35.712402, 26.063406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402832, 36.569599, 25.816452>,  <37.061417, 36.020687, 26.062971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402832, 36.569599, 25.816452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638802, 36.249886, 25.770599>,  <37.780384, 36.058060, 25.743088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638802, 36.249886, 25.770599>,  <37.402832, 36.569599, 25.816452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638802, 36.249886, 25.770599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484961, 0.464226, -0.741152,
		0.645604, 0.381631, 0.661478,
		0.589922, -0.799282, -0.114630,
		37.815777, 36.010101, 25.736210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074795, 36.846436, 25.590519>,  <37.402832, 36.569599, 25.816452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074795, 36.846436, 25.590519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044140, 36.463165, 25.480227>,  <38.025745, 36.233204, 25.414051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044140, 36.463165, 25.480227>,  <38.074795, 36.846436, 25.590519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044140, 36.463165, 25.480227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260494, 0.247698, -0.933160,
		0.962429, -0.143345, 0.230615,
		-0.076641, -0.958174, -0.275732,
		38.021149, 36.175713, 25.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702015, 36.687809, 25.214853>,  <38.074795, 36.846436, 25.590519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702015, 36.687809, 25.214853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430294, 36.411240, 25.116480>,  <38.267262, 36.245296, 25.057455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430294, 36.411240, 25.116480>,  <38.702015, 36.687809, 25.214853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430294, 36.411240, 25.116480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188417, 0.159566, -0.969040,
		0.709263, -0.704604, 0.021884,
		-0.679297, -0.691427, -0.245933,
		38.226505, 36.203812, 25.042700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018738, 36.343872, 24.651449>,  <38.702015, 36.687809, 25.214853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018738, 36.343872, 24.651449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628456, 36.256531, 24.644239>,  <38.394287, 36.204124, 24.639914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628456, 36.256531, 24.644239>,  <39.018738, 36.343872, 24.651449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628456, 36.256531, 24.644239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020066, 0.170976, -0.985071,
		0.218177, -0.960775, -0.171203,
		-0.975703, -0.218356, -0.018025,
		38.335747, 36.191025, 24.638832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001019, 35.938614, 24.093061>,  <39.018738, 36.343872, 24.651449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001019, 35.938614, 24.093061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618187, 36.045570, 24.137777>,  <38.388489, 36.109745, 24.164606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618187, 36.045570, 24.137777>,  <39.001019, 35.938614, 24.093061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618187, 36.045570, 24.137777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077130, 0.136805, -0.987591,
		-0.279368, -0.953827, -0.110310,
		-0.957081, 0.267393, 0.111787,
		38.331062, 36.125790, 24.171314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590897, 35.537502, 23.521246>,  <39.001019, 35.938614, 24.093061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590897, 35.537502, 23.521246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401470, 35.876305, 23.617836>,  <38.287815, 36.079586, 23.675791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401470, 35.876305, 23.617836>,  <38.590897, 35.537502, 23.521246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401470, 35.876305, 23.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091291, 0.225486, -0.969960,
		-0.876015, -0.481383, -0.029457,
		-0.473565, 0.847010, 0.241475,
		38.259399, 36.130409, 23.690279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020462, 35.611507, 22.964712>,  <38.590897, 35.537502, 23.521246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020462, 35.611507, 22.964712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036533, 35.961315, 23.158041>,  <38.046177, 36.171200, 23.274038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036533, 35.961315, 23.158041>,  <38.020462, 35.611507, 22.964712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036533, 35.961315, 23.158041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320682, 0.469410, -0.822689,
		-0.946335, -0.121938, 0.299303,
		0.040179, 0.874520, 0.483322,
		38.048588, 36.223671, 23.303038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276047, 35.892414, 22.976168>,  <38.020462, 35.611507, 22.964712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276047, 35.892414, 22.976168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524471, 36.202469, 23.022537>,  <37.673527, 36.388504, 23.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524471, 36.202469, 23.022537>,  <37.276047, 35.892414, 22.976168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524471, 36.202469, 23.022537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363457, 0.415881, -0.833632,
		-0.694391, 0.475606, 0.540019,
		0.621064, 0.775140, 0.115921,
		37.710789, 36.435009, 23.057314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955498, 36.489483, 22.686195>,  <37.276047, 35.892414, 22.976168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955498, 36.489483, 22.686195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341572, 36.591072, 22.711245>,  <37.573215, 36.652027, 22.726274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341572, 36.591072, 22.711245>,  <36.955498, 36.489483, 22.686195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341572, 36.591072, 22.711245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054817, 0.430460, -0.900944,
		-0.255775, 0.866141, 0.429394,
		0.965181, 0.253977, 0.062622,
		37.631126, 36.667267, 22.730032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012691, 37.113998, 22.358595>,  <36.955498, 36.489483, 22.686195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012691, 37.113998, 22.358595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390141, 36.981583, 22.358385>,  <37.616608, 36.902134, 22.358259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390141, 36.981583, 22.358385>,  <37.012691, 37.113998, 22.358595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390141, 36.981583, 22.358385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163873, 0.468493, -0.868136,
		0.287628, 0.819104, 0.496326,
		0.943619, -0.331035, -0.000522,
		37.673225, 36.882271, 22.358229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309589, 37.687775, 22.022104>,  <37.012691, 37.113998, 22.358595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309589, 37.687775, 22.022104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558708, 37.375015, 22.011106>,  <37.708179, 37.187359, 22.004509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558708, 37.375015, 22.011106>,  <37.309589, 37.687775, 22.022104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558708, 37.375015, 22.011106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397056, 0.346150, -0.850016,
		0.674145, 0.518470, 0.526040,
		0.622796, -0.781901, -0.027493,
		37.745548, 37.140446, 22.002859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908195, 37.982918, 21.723766>,  <37.309589, 37.687775, 22.022104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908195, 37.982918, 21.723766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921715, 37.590092, 21.649569>,  <37.929825, 37.354397, 21.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921715, 37.590092, 21.649569>,  <37.908195, 37.982918, 21.723766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921715, 37.590092, 21.649569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389654, 0.183860, -0.902422,
		0.920341, -0.041781, 0.388879,
		0.033795, -0.982064, -0.185494,
		37.931854, 37.295471, 21.593920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648468, 37.827332, 21.532799>,  <37.908195, 37.982918, 21.723766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648468, 37.827332, 21.532799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414345, 37.532513, 21.397638>,  <38.273872, 37.355621, 21.316542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414345, 37.532513, 21.397638>,  <38.648468, 37.827332, 21.532799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414345, 37.532513, 21.397638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292352, 0.196869, -0.935827,
		0.756271, -0.646532, 0.100249,
		-0.585307, -0.737047, -0.337901,
		38.238754, 37.311398, 21.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056782, 37.541618, 20.996475>,  <38.648468, 37.827332, 21.532799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056782, 37.541618, 20.996475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685741, 37.410362, 20.925056>,  <38.463116, 37.331608, 20.882204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685741, 37.410362, 20.925056>,  <39.056782, 37.541618, 20.996475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685741, 37.410362, 20.925056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154203, 0.099002, -0.983067,
		0.340258, -0.939428, -0.041235,
		-0.927602, -0.328138, -0.178548,
		38.407459, 37.311920, 20.871492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102402, 37.006145, 20.546066>,  <39.056782, 37.541618, 20.996475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102402, 37.006145, 20.546066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710197, 37.077881, 20.513971>,  <38.474876, 37.120922, 20.494715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710197, 37.077881, 20.513971>,  <39.102402, 37.006145, 20.546066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710197, 37.077881, 20.513971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122093, 0.236221, -0.963998,
		-0.153931, -0.955006, -0.253513,
		-0.980509, 0.179341, -0.080237,
		38.416046, 37.131683, 20.489901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921997, 36.632431, 19.863686>,  <39.102402, 37.006145, 20.546066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921997, 36.632431, 19.863686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657887, 36.923042, 19.939774>,  <38.499420, 37.097408, 19.985426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657887, 36.923042, 19.939774>,  <38.921997, 36.632431, 19.863686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657887, 36.923042, 19.939774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124289, 0.355498, -0.926376,
		-0.740663, -0.588026, -0.325028,
		-0.660280, 0.726530, 0.190220,
		38.459801, 37.141003, 19.996840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275501, 36.498131, 19.466379>,  <38.921997, 36.632431, 19.863686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275501, 36.498131, 19.466379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242142, 36.890163, 19.538481>,  <38.222126, 37.125381, 19.581741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242142, 36.890163, 19.538481>,  <38.275501, 36.498131, 19.466379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242142, 36.890163, 19.538481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051723, 0.176385, -0.982961,
		-0.995173, -0.091301, 0.035983,
		-0.083399, 0.980078, 0.180256,
		38.217121, 37.184185, 19.592558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007168, 36.777977, 18.905933>,  <38.275501, 36.498131, 19.466379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007168, 36.777977, 18.905933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148350, 37.113033, 19.072681>,  <38.233059, 37.314068, 19.172731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148350, 37.113033, 19.072681>,  <38.007168, 36.777977, 18.905933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148350, 37.113033, 19.072681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279438, 0.330840, -0.901365,
		-0.892938, 0.434631, -0.117297,
		0.352954, 0.837640, 0.416872,
		38.254234, 37.364326, 19.197742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708687, 37.391289, 18.537161>,  <38.007168, 36.777977, 18.905933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708687, 37.391289, 18.537161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044807, 37.519955, 18.711710>,  <38.246479, 37.597157, 18.816439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044807, 37.519955, 18.711710>,  <37.708687, 37.391289, 18.537161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044807, 37.519955, 18.711710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221114, 0.531580, -0.817638,
		-0.494975, 0.783551, 0.375562,
		0.840302, 0.321668, 0.436373,
		38.296898, 37.616455, 18.842623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695126, 38.038467, 18.413153>,  <37.708687, 37.391289, 18.537161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695126, 38.038467, 18.413153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076031, 37.937401, 18.481680>,  <38.304573, 37.876762, 18.522797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076031, 37.937401, 18.481680>,  <37.695126, 38.038467, 18.413153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076031, 37.937401, 18.481680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275236, 0.467893, -0.839834,
		0.132038, 0.846898, 0.515101,
		0.952266, -0.252664, 0.171317,
		38.361710, 37.861603, 18.533075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073467, 38.605484, 18.042383>,  <37.695126, 38.038467, 18.413153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073467, 38.605484, 18.042383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369328, 38.363445, 18.160213>,  <38.546844, 38.218224, 18.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369328, 38.363445, 18.160213>,  <38.073467, 38.605484, 18.042383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369328, 38.363445, 18.160213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603310, 0.402223, -0.688646,
		0.298210, 0.687080, 0.662565,
		0.739654, -0.605093, 0.294576,
		38.591225, 38.181919, 18.248587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673164, 38.958385, 18.260509>,  <38.073467, 38.605484, 18.042383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673164, 38.958385, 18.260509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777584, 38.600231, 18.116209>,  <38.840237, 38.385338, 18.029629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777584, 38.600231, 18.116209>,  <38.673164, 38.958385, 18.260509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777584, 38.600231, 18.116209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548892, 0.445097, -0.707535,
		0.794084, -0.013310, 0.607662,
		0.261051, -0.895384, -0.360750,
		38.855900, 38.331615, 18.007984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354458, 39.040733, 18.194351>,  <38.673164, 38.958385, 18.260509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354458, 39.040733, 18.194351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228161, 38.745152, 17.956272>,  <39.152382, 38.567802, 17.813425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228161, 38.745152, 17.956272>,  <39.354458, 39.040733, 18.194351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228161, 38.745152, 17.956272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512677, 0.394976, -0.762336,
		0.798418, -0.545844, 0.254133,
		-0.315740, -0.738950, -0.595198,
		39.133438, 38.523468, 17.777712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832756, 38.916927, 17.679983>,  <39.354458, 39.040733, 18.194351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832756, 38.916927, 17.679983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527782, 38.724243, 17.507174>,  <39.344799, 38.608631, 17.403488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527782, 38.724243, 17.507174>,  <39.832756, 38.916927, 17.679983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527782, 38.724243, 17.507174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321592, 0.297269, -0.899005,
		0.561487, -0.824371, -0.071735,
		-0.762438, -0.481710, -0.432023,
		39.299049, 38.579731, 17.377567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157017, 38.471878, 17.261963>,  <39.832756, 38.916927, 17.679983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157017, 38.471878, 17.261963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784607, 38.541782, 17.133810>,  <39.561161, 38.583725, 17.056917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784607, 38.541782, 17.133810>,  <40.157017, 38.471878, 17.261963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784607, 38.541782, 17.133810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340462, 0.099785, -0.934948,
		-0.131420, -0.979542, -0.152401,
		-0.931029, 0.174758, -0.320384,
		39.505299, 38.594208, 17.037695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979851, 37.968903, 16.721666>,  <40.157017, 38.471878, 17.261963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979851, 37.968903, 16.721666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737438, 38.283810, 16.676174>,  <39.591991, 38.472755, 16.648878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737438, 38.283810, 16.676174>,  <39.979851, 37.968903, 16.721666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737438, 38.283810, 16.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432282, 0.205942, -0.877906,
		-0.667724, -0.581205, -0.465129,
		-0.606033, 0.787266, -0.113732,
		39.555630, 38.519989, 16.642056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814331, 37.959282, 16.042639>,  <39.979851, 37.968903, 16.721666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814331, 37.959282, 16.042639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674309, 38.319263, 16.146599>,  <39.590298, 38.535252, 16.208975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674309, 38.319263, 16.146599>,  <39.814331, 37.959282, 16.042639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674309, 38.319263, 16.146599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425193, 0.399879, -0.811978,
		-0.834670, -0.173729, -0.522632,
		-0.350054, 0.899953, 0.259899,
		39.569294, 38.589249, 16.224569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551456, 38.270748, 15.472825>,  <39.814331, 37.959282, 16.042639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551456, 38.270748, 15.472825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595173, 38.598972, 15.697233>,  <39.621403, 38.795906, 15.831878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595173, 38.598972, 15.697233>,  <39.551456, 38.270748, 15.472825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595173, 38.598972, 15.697233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246315, 0.524442, -0.815039,
		-0.963008, 0.227263, -0.144799,
		0.109289, 0.820556, 0.561020,
		39.627960, 38.845139, 15.865540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060699, 38.834843, 15.222545>,  <39.551456, 38.270748, 15.472825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060699, 38.834843, 15.222545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391323, 38.984631, 15.390631>,  <39.589695, 39.074501, 15.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391323, 38.984631, 15.390631>,  <39.060699, 38.834843, 15.222545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391323, 38.984631, 15.390631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220063, 0.472150, -0.853608,
		-0.518052, 0.798028, 0.307852,
		0.826556, 0.374467, 0.420214,
		39.639290, 39.096970, 15.516695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995659, 39.512184, 15.214254>,  <39.060699, 38.834843, 15.222545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995659, 39.512184, 15.214254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377884, 39.396870, 15.189609>,  <39.607220, 39.327679, 15.174821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377884, 39.396870, 15.189609>,  <38.995659, 39.512184, 15.214254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377884, 39.396870, 15.189609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122557, 0.578568, -0.806374,
		0.268116, 0.762987, 0.588188,
		0.955559, -0.288288, -0.061615,
		39.664551, 39.310383, 15.171124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715637, 40.026470, 15.200899>,  <38.995659, 39.512184, 15.214254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715637, 40.026470, 15.200899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727531, 39.698437, 14.972310>,  <39.734669, 39.501617, 14.835156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727531, 39.698437, 14.972310>,  <39.715637, 40.026470, 15.200899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727531, 39.698437, 14.972310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135261, 0.569767, -0.810598,
		0.990364, -0.053194, 0.127868,
		0.029736, -0.820083, -0.571471,
		39.736454, 39.452412, 14.800869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141621, 40.534733, 15.517056>,  <39.715637, 40.026470, 15.200899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141621, 40.534733, 15.517056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251873, 40.915771, 15.568570>,  <40.318024, 41.144394, 15.599479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251873, 40.915771, 15.568570>,  <40.141621, 40.534733, 15.517056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251873, 40.915771, 15.568570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539881, -0.042558, -0.840665,
		-0.795334, 0.301243, -0.526020,
		0.275631, 0.952597, 0.128787,
		40.334560, 41.201550, 15.607206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883839, 40.974125, 14.895282>,  <40.141621, 40.534733, 15.517056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883839, 40.974125, 14.895282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191231, 41.165127, 15.065655>,  <40.375668, 41.279728, 15.167878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191231, 41.165127, 15.065655>,  <39.883839, 40.974125, 14.895282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191231, 41.165127, 15.065655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532987, -0.109370, -0.839025,
		-0.354056, 0.871794, -0.338554,
		0.768485, 0.477507, 0.425932,
		40.421776, 41.308380, 15.193435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219505, 41.280933, 14.380898>,  <39.883839, 40.974125, 14.895282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219505, 41.280933, 14.380898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488163, 41.273788, 14.677162>,  <40.649357, 41.269501, 14.854921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488163, 41.273788, 14.677162>,  <40.219505, 41.280933, 14.380898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488163, 41.273788, 14.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692505, -0.340177, -0.636173,
		0.263318, 0.940192, -0.216109,
		0.671640, -0.017859, 0.740662,
		40.689655, 41.268433, 14.899361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835316, 40.896404, 14.473928>,  <40.219505, 41.280933, 14.380898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835316, 40.896404, 14.473928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128239, 41.165672, 14.432801>,  <41.303993, 41.327232, 14.408125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128239, 41.165672, 14.432801>,  <40.835316, 40.896404, 14.473928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128239, 41.165672, 14.432801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344379, 0.496348, 0.796895,
		0.587478, -0.548163, 0.595304,
		0.732306, 0.673169, -0.102817,
		41.347931, 41.367622, 14.401956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344097, 40.922466, 15.160784>,  <40.835316, 40.896404, 14.473928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344097, 40.922466, 15.160784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292751, 41.263786, 14.958637>,  <41.261944, 41.468578, 14.837349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292751, 41.263786, 14.958637>,  <41.344097, 40.922466, 15.160784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292751, 41.263786, 14.958637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630970, 0.322873, 0.705429,
		0.765115, 0.409420, 0.496965,
		-0.128360, 0.853304, -0.505367,
		41.254242, 41.519779, 14.807027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600082, 41.416607, 15.592031>,  <41.344097, 40.922466, 15.160784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600082, 41.416607, 15.592031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282078, 41.510792, 15.368420>,  <41.091274, 41.567303, 15.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282078, 41.510792, 15.368420>,  <41.600082, 41.416607, 15.592031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282078, 41.510792, 15.368420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466264, 0.352285, 0.811476,
		0.388011, 0.905788, -0.170282,
		-0.795013, 0.235465, -0.559026,
		41.043575, 41.581432, 15.200712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331017, 42.054089, 15.743617>,  <41.600082, 41.416607, 15.592031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331017, 42.054089, 15.743617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039566, 41.833752, 15.580801>,  <40.864697, 41.701550, 15.483111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039566, 41.833752, 15.580801>,  <41.331017, 42.054089, 15.743617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039566, 41.833752, 15.580801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542130, 0.100641, 0.834246,
		-0.418572, 0.828520, -0.371957,
		-0.728623, -0.550841, -0.407040,
		40.820980, 41.668499, 15.458689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663429, 42.466232, 15.784815>,  <41.331017, 42.054089, 15.743617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663429, 42.466232, 15.784815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579456, 42.077053, 15.746231>,  <40.529072, 41.843544, 15.723081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579456, 42.077053, 15.746231>,  <40.663429, 42.466232, 15.784815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579456, 42.077053, 15.746231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567158, 0.040820, 0.822597,
		-0.796405, 0.227395, -0.560383,
		-0.209929, -0.972946, -0.096460,
		40.516476, 41.785168, 15.717293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962440, 42.381046, 15.796679>,  <40.663429, 42.466232, 15.784815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962440, 42.381046, 15.796679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065323, 42.007912, 15.897595>,  <40.127052, 41.784031, 15.958146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065323, 42.007912, 15.897595>,  <39.962440, 42.381046, 15.796679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065323, 42.007912, 15.897595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637029, 0.032647, 0.770148,
		-0.726663, -0.358806, -0.585850,
		0.257208, -0.932842, 0.252293,
		40.142487, 41.728058, 15.973283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363918, 41.985497, 16.077131>,  <39.962440, 42.381046, 15.796679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363918, 41.985497, 16.077131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665894, 41.766239, 16.221142>,  <39.847076, 41.634686, 16.307549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665894, 41.766239, 16.221142>,  <39.363918, 41.985497, 16.077131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665894, 41.766239, 16.221142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427332, 0.005260, 0.904079,
		-0.497456, -0.836370, -0.230267,
		0.754933, -0.548140, 0.360024,
		39.892372, 41.601799, 16.329149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076481, 41.596844, 16.592360>,  <39.363918, 41.985497, 16.077131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076481, 41.596844, 16.592360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456562, 41.510002, 16.681784>,  <39.684612, 41.457897, 16.735439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456562, 41.510002, 16.681784>,  <39.076481, 41.596844, 16.592360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456562, 41.510002, 16.681784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253105, -0.119136, 0.960075,
		-0.181809, -0.968849, -0.168155,
		0.950202, -0.217111, 0.223561,
		39.741623, 41.444870, 16.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109112, 40.901470, 16.930513>,  <39.076481, 41.596844, 16.592360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109112, 40.901470, 16.930513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410961, 41.132664, 17.054760>,  <39.592072, 41.271378, 17.129309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410961, 41.132664, 17.054760>,  <39.109112, 40.901470, 16.930513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410961, 41.132664, 17.054760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219043, -0.224334, 0.949576,
		0.618519, -0.784609, -0.042685,
		0.754622, 0.577981, 0.310618,
		39.637348, 41.306057, 17.147945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508057, 40.592953, 17.356686>,  <39.109112, 40.901470, 16.930513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508057, 40.592953, 17.356686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581879, 40.974625, 17.450911>,  <39.626171, 41.203629, 17.507444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581879, 40.974625, 17.450911>,  <39.508057, 40.592953, 17.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581879, 40.974625, 17.450911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006295, -0.238526, 0.971116,
		0.982803, -0.180705, -0.038014,
		0.184553, 0.954176, 0.235561,
		39.637245, 41.260876, 17.521580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033230, 40.569759, 17.747282>,  <39.508057, 40.592953, 17.356686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033230, 40.569759, 17.747282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892582, 40.930714, 17.846924>,  <39.808193, 41.147285, 17.906710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892582, 40.930714, 17.846924>,  <40.033230, 40.569759, 17.747282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892582, 40.930714, 17.846924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029592, -0.255249, 0.966422,
		0.935674, 0.347189, 0.063049,
		-0.351624, 0.902390, 0.249104,
		39.787094, 41.201431, 17.921656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480255, 40.801636, 18.278418>,  <40.033230, 40.569759, 17.747282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480255, 40.801636, 18.278418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151318, 41.028320, 18.298815>,  <39.953957, 41.164330, 18.311054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151318, 41.028320, 18.298815>,  <40.480255, 40.801636, 18.278418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151318, 41.028320, 18.298815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016774, -0.113728, 0.993370,
		0.568749, 0.816033, 0.103029,
		-0.822340, 0.566707, 0.050994,
		39.904617, 41.198334, 18.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655674, 41.168507, 18.812317>,  <40.480255, 40.801636, 18.278418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655674, 41.168507, 18.812317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257145, 41.199459, 18.797653>,  <40.018028, 41.218033, 18.788855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257145, 41.199459, 18.797653>,  <40.655674, 41.168507, 18.812317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257145, 41.199459, 18.797653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053821, -0.232977, 0.970992,
		0.066600, 0.969398, 0.236286,
		-0.996327, 0.077385, -0.036658,
		39.958248, 41.222675, 18.786655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471455, 41.592953, 19.425671>,  <40.655674, 41.168507, 18.812317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471455, 41.592953, 19.425671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140762, 41.383430, 19.343563>,  <39.942345, 41.257717, 19.294298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140762, 41.383430, 19.343563>,  <40.471455, 41.592953, 19.425671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140762, 41.383430, 19.343563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046008, -0.300693, 0.952611,
		-0.560709, 0.796999, 0.224493,
		-0.826734, -0.523809, -0.205269,
		39.892742, 41.226288, 19.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964096, 41.789089, 19.950840>,  <40.471455, 41.592953, 19.425671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964096, 41.789089, 19.950840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832668, 41.441563, 19.802679>,  <39.753811, 41.233047, 19.713783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832668, 41.441563, 19.802679>,  <39.964096, 41.789089, 19.950840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832668, 41.441563, 19.802679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084928, -0.363409, 0.927750,
		-0.940654, 0.336288, 0.045618,
		-0.328569, -0.868818, -0.370402,
		39.734097, 41.180916, 19.691559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319588, 41.579334, 20.370665>,  <39.964096, 41.789089, 19.950840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319588, 41.579334, 20.370665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467628, 41.252842, 20.193222>,  <39.556454, 41.056946, 20.086756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467628, 41.252842, 20.193222>,  <39.319588, 41.579334, 20.370665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467628, 41.252842, 20.193222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166335, -0.528023, 0.832781,
		-0.913977, -0.234431, -0.331193,
		0.370107, -0.816232, -0.443607,
		39.578659, 41.007973, 20.060141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807930, 41.026905, 20.236322>,  <39.319588, 41.579334, 20.370665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807930, 41.026905, 20.236322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154633, 40.827534, 20.229395>,  <39.362656, 40.707912, 20.225239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154633, 40.827534, 20.229395>,  <38.807930, 41.026905, 20.236322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154633, 40.827534, 20.229395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307454, -0.561351, 0.768347,
		-0.392688, -0.660646, -0.639799,
		0.866757, -0.498430, -0.017318,
		39.414661, 40.678005, 20.224199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634949, 40.378971, 20.476061>,  <38.807930, 41.026905, 20.236322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634949, 40.378971, 20.476061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031403, 40.351288, 20.521421>,  <39.269276, 40.334679, 20.548637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031403, 40.351288, 20.521421>,  <38.634949, 40.378971, 20.476061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031403, 40.351288, 20.521421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132816, -0.496136, 0.858027,
		-0.003119, -0.865482, -0.500930,
		0.991136, -0.069207, 0.113403,
		39.328743, 40.330524, 20.555443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755119, 39.728657, 20.689058>,  <38.634949, 40.378971, 20.476061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755119, 39.728657, 20.689058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098473, 39.899612, 20.802557>,  <39.304485, 40.002186, 20.870655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098473, 39.899612, 20.802557>,  <38.755119, 39.728657, 20.689058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098473, 39.899612, 20.802557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077526, -0.438684, 0.895291,
		0.507111, -0.790504, -0.343427,
		0.858387, 0.427388, 0.283746,
		39.355988, 40.027828, 20.887680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183048, 39.240028, 20.953932>,  <38.755119, 39.728657, 20.689058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183048, 39.240028, 20.953932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308140, 39.587402, 21.107826>,  <39.383194, 39.795826, 21.200163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308140, 39.587402, 21.107826>,  <39.183048, 39.240028, 20.953932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308140, 39.587402, 21.107826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162807, -0.350048, 0.922475,
		0.935785, -0.351123, 0.031917,
		0.312729, 0.868435, 0.384735,
		39.401958, 39.847931, 21.223248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613403, 39.041664, 21.451273>,  <39.183048, 39.240028, 20.953932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613403, 39.041664, 21.451273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527863, 39.414555, 21.568047>,  <39.476540, 39.638290, 21.638111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527863, 39.414555, 21.568047>,  <39.613403, 39.041664, 21.451273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527863, 39.414555, 21.568047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135181, -0.324212, 0.936276,
		0.967468, 0.160757, 0.195351,
		-0.213848, 0.932225, 0.291934,
		39.463707, 39.694221, 21.655626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925800, 39.176952, 22.201551>,  <39.613403, 39.041664, 21.451273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925800, 39.176952, 22.201551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638386, 39.451523, 22.156780>,  <39.465939, 39.616264, 22.129917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638386, 39.451523, 22.156780>,  <39.925800, 39.176952, 22.201551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638386, 39.451523, 22.156780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443609, -0.328384, 0.833892,
		0.535648, 0.648833, 0.540459,
		-0.718535, 0.686425, -0.111930,
		39.422825, 39.657452, 22.123201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004124, 39.567066, 22.775883>,  <39.925800, 39.176952, 22.201551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004124, 39.567066, 22.775883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629749, 39.606728, 22.640713>,  <39.405125, 39.630524, 22.559610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629749, 39.606728, 22.640713>,  <40.004124, 39.567066, 22.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629749, 39.606728, 22.640713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349070, -0.134114, 0.927450,
		0.046641, 0.985993, 0.160134,
		-0.935935, 0.099155, -0.337925,
		39.348969, 39.636475, 22.539335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749794, 40.065327, 23.239609>,  <40.004124, 39.567066, 22.775883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749794, 40.065327, 23.239609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408371, 39.917992, 23.092220>,  <39.203518, 39.829590, 23.003788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408371, 39.917992, 23.092220>,  <39.749794, 40.065327, 23.239609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408371, 39.917992, 23.092220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381546, -0.039665, 0.923498,
		-0.354771, 0.928847, -0.106680,
		-0.853557, -0.368333, -0.368470,
		39.152306, 39.807491, 22.981680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222878, 40.373692, 23.627155>,  <39.749794, 40.065327, 23.239609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222878, 40.373692, 23.627155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050224, 40.053562, 23.460701>,  <38.946632, 39.861485, 23.360828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050224, 40.053562, 23.460701>,  <39.222878, 40.373692, 23.627155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050224, 40.053562, 23.460701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454290, -0.205682, 0.866785,
		-0.779301, 0.563183, -0.274800,
		-0.431637, -0.800325, -0.416137,
		38.920734, 39.813465, 23.335859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570618, 40.382252, 23.844183>,  <39.222878, 40.373692, 23.627155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570618, 40.382252, 23.844183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640663, 39.999565, 23.751202>,  <38.682690, 39.769955, 23.695412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640663, 39.999565, 23.751202>,  <38.570618, 40.382252, 23.844183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640663, 39.999565, 23.751202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482463, -0.289199, 0.826797,
		-0.858233, -0.032637, -0.512222,
		0.175118, -0.956712, -0.232454,
		38.693199, 39.712551, 23.681465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983559, 40.079895, 23.955381>,  <38.570618, 40.382252, 23.844183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983559, 40.079895, 23.955381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246677, 39.779308, 23.975788>,  <38.404549, 39.598957, 23.988033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246677, 39.779308, 23.975788>,  <37.983559, 40.079895, 23.955381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246677, 39.779308, 23.975788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437242, -0.325828, 0.838246,
		-0.613292, -0.573700, -0.542901,
		0.657793, -0.751468, 0.051018,
		38.444016, 39.553867, 23.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616051, 39.554218, 24.265244>,  <37.983559, 40.079895, 23.955381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616051, 39.554218, 24.265244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 39.412979, 24.309572>,  <38.210613, 39.328236, 24.336170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 39.412979, 24.309572>,  <37.616051, 39.554218, 24.265244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987652, 39.412979, 24.309572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264339, -0.423525, 0.866459,
		-0.259009, -0.834234, -0.486793,
		0.928999, -0.353099, 0.110824,
		38.266350, 39.307049, 24.342819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645840, 38.818230, 24.552629>,  <37.616051, 39.554218, 24.265244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645840, 38.818230, 24.552629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016125, 38.952766, 24.621826>,  <38.238297, 39.033489, 24.663343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016125, 38.952766, 24.621826>,  <37.645840, 38.818230, 24.552629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016125, 38.952766, 24.621826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004010, -0.448634, 0.893707,
		0.378198, -0.828012, -0.413959,
		0.925716, 0.336338, 0.172993,
		38.293839, 39.053669, 24.673723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919285, 38.308750, 24.880852>,  <37.645840, 38.818230, 24.552629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919285, 38.308750, 24.880852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194710, 38.590664, 24.949163>,  <38.359966, 38.759811, 24.990150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194710, 38.590664, 24.949163>,  <37.919285, 38.308750, 24.880852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194710, 38.590664, 24.949163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214624, -0.423004, 0.880343,
		0.692690, -0.569517, -0.442527,
		0.688561, 0.704782, 0.170779,
		38.401279, 38.802097, 25.000397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541115, 37.970409, 25.228983>,  <37.919285, 38.308750, 24.880852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541115, 37.970409, 25.228983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559269, 38.360424, 25.315933>,  <38.570160, 38.594433, 25.368103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559269, 38.360424, 25.315933>,  <38.541115, 37.970409, 25.228983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559269, 38.360424, 25.315933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100880, -0.220960, 0.970051,
		0.993863, -0.022097, -0.108390,
		0.045385, 0.975032, 0.217375,
		38.572884, 38.652935, 25.381145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983418, 38.072418, 25.813044>,  <38.541115, 37.970409, 25.228983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983418, 38.072418, 25.813044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756516, 38.400524, 25.842398>,  <38.620377, 38.597389, 25.860010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756516, 38.400524, 25.842398>,  <38.983418, 38.072418, 25.813044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756516, 38.400524, 25.842398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032005, -0.110997, 0.993305,
		0.822922, 0.561107, 0.089216,
		-0.567253, 0.820268, 0.073384,
		38.586338, 38.646603, 25.864412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233593, 38.555717, 26.384579>,  <38.983418, 38.072418, 25.813044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233593, 38.555717, 26.384579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845516, 38.637115, 26.331930>,  <38.612671, 38.685955, 26.300341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845516, 38.637115, 26.331930>,  <39.233593, 38.555717, 26.384579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845516, 38.637115, 26.331930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162052, -0.140894, 0.976672,
		0.180201, 0.968886, 0.169670,
		-0.970189, 0.203493, -0.131621,
		38.554459, 38.698162, 26.292444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023277, 39.147522, 26.822462>,  <39.233593, 38.555717, 26.384579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023277, 39.147522, 26.822462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683933, 38.957214, 26.729572>,  <38.480328, 38.843029, 26.673838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683933, 38.957214, 26.729572>,  <39.023277, 39.147522, 26.822462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683933, 38.957214, 26.729572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249004, -0.028523, 0.968082,
		-0.467211, 0.879106, -0.094272,
		-0.848358, -0.475773, -0.232227,
		38.429424, 38.814484, 26.659904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525070, 39.509075, 27.148642>,  <39.023277, 39.147522, 26.822462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525070, 39.509075, 27.148642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367706, 39.149071, 27.073587>,  <38.273289, 38.933067, 27.028555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367706, 39.149071, 27.073587>,  <38.525070, 39.509075, 27.148642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367706, 39.149071, 27.073587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123941, -0.150311, 0.980839,
		-0.910969, 0.409130, -0.052414,
		-0.393412, -0.900011, -0.187637,
		38.249683, 38.879066, 27.017296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955708, 39.442253, 27.593220>,  <38.525070, 39.509075, 27.148642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955708, 39.442253, 27.593220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996586, 39.061451, 27.477808>,  <38.021111, 38.832970, 27.408560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996586, 39.061451, 27.477808>,  <37.955708, 39.442253, 27.593220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996586, 39.061451, 27.477808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179658, -0.302943, 0.935921,
		-0.978406, -0.043808, -0.201994,
		0.102194, -0.952001, -0.288531,
		38.027245, 38.775852, 27.391249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537815, 39.076778, 28.116575>,  <37.955708, 39.442253, 27.593220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537815, 39.076778, 28.116575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744812, 38.780670, 27.944904>,  <37.869011, 38.603004, 27.841902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744812, 38.780670, 27.944904>,  <37.537815, 39.076778, 28.116575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744812, 38.780670, 27.944904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137510, -0.566987, 0.812168,
		-0.844565, -0.361276, -0.395208,
		0.517495, -0.740274, -0.429178,
		37.900059, 38.558590, 27.816151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230690, 38.569447, 28.243412>,  <37.537815, 39.076778, 28.116575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230690, 38.569447, 28.243412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582676, 38.398968, 28.159491>,  <37.793869, 38.296680, 28.109137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582676, 38.398968, 28.159491>,  <37.230690, 38.569447, 28.243412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582676, 38.398968, 28.159491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068259, -0.550514, 0.832030,
		-0.470110, -0.717836, -0.513525,
		0.879964, -0.426198, -0.209803,
		37.846664, 38.271107, 28.096550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157467, 37.822990, 28.169153>,  <37.230690, 38.569447, 28.243412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157467, 37.822990, 28.169153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528336, 37.923271, 28.280504>,  <37.750858, 37.983440, 28.347315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528336, 37.923271, 28.280504>,  <37.157467, 37.822990, 28.169153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528336, 37.923271, 28.280504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136651, -0.465552, 0.874407,
		0.348816, -0.848769, -0.397389,
		0.927175, 0.250704, 0.278377,
		37.806488, 37.998482, 28.364017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252350, 37.200195, 28.476706>,  <37.157467, 37.822990, 28.169153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252350, 37.200195, 28.476706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545582, 37.422966, 28.632868>,  <37.721523, 37.556629, 28.726566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545582, 37.422966, 28.632868>,  <37.252350, 37.200195, 28.476706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545582, 37.422966, 28.632868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072469, -0.634704, 0.769350,
		0.676268, -0.535705, -0.505651,
		0.733083, 0.556931, 0.390408,
		37.765507, 37.590046, 28.749990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753105, 36.690338, 28.703062>,  <37.252350, 37.200195, 28.476706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753105, 36.690338, 28.703062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850132, 37.022556, 28.903601>,  <37.908348, 37.221889, 29.023924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850132, 37.022556, 28.903601>,  <37.753105, 36.690338, 28.703062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850132, 37.022556, 28.903601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000496, -0.516887, 0.856054,
		0.970134, -0.207402, -0.125792,
		0.242568, 0.830550, 0.501347,
		37.922901, 37.271721, 29.054005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319668, 36.505951, 29.091894>,  <37.753105, 36.690338, 28.703062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319668, 36.505951, 29.091894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135681, 36.816216, 29.264765>,  <38.025291, 37.002377, 29.368488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135681, 36.816216, 29.264765>,  <38.319668, 36.505951, 29.091894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135681, 36.816216, 29.264765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027835, -0.499077, 0.866111,
		0.887502, 0.386349, 0.251148,
		-0.459963, 0.775665, 0.432177,
		37.997692, 37.048916, 29.394419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660366, 36.619953, 29.638815>,  <38.319668, 36.505951, 29.091894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660366, 36.619953, 29.638815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310020, 36.789619, 29.730858>,  <38.099815, 36.891418, 29.786083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310020, 36.789619, 29.730858>,  <38.660366, 36.619953, 29.638815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310020, 36.789619, 29.730858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020171, -0.444247, 0.895677,
		0.482143, 0.789129, 0.380543,
		-0.875860, 0.424169, 0.230108,
		38.047264, 36.916870, 29.799891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757862, 37.026573, 30.318430>,  <38.660366, 36.619953, 29.638815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757862, 37.026573, 30.318430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361721, 36.987171, 30.279446>,  <38.124035, 36.963531, 30.256056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361721, 36.987171, 30.279446>,  <38.757862, 37.026573, 30.318430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361721, 36.987171, 30.279446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044822, -0.437792, 0.897958,
		-0.131120, 0.893664, 0.429154,
		-0.990353, -0.098505, -0.097459,
		38.064613, 36.957619, 30.250208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467827, 37.099442, 30.327307>,  <38.757862, 37.026573, 30.318430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467827, 37.099442, 30.327307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851917, 37.014740, 30.400101>,  <40.082371, 36.963921, 30.443777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851917, 37.014740, 30.400101>,  <39.467827, 37.099442, 30.327307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851917, 37.014740, 30.400101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278895, 0.696347, -0.661301,
		0.013308, 0.685755, 0.727710,
		0.960230, -0.211755, 0.181987,
		40.139988, 36.951214, 30.454697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766865, 37.723740, 30.567242>,  <39.467827, 37.099442, 30.327307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766865, 37.723740, 30.567242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057854, 37.492973, 30.418673>,  <40.232449, 37.354515, 30.329531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057854, 37.492973, 30.418673>,  <39.766865, 37.723740, 30.567242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057854, 37.492973, 30.418673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242688, 0.722679, -0.647176,
		0.641783, 0.380664, 0.665740,
		0.727473, -0.576914, -0.371421,
		40.276096, 37.319901, 30.307247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381779, 38.128040, 30.590231>,  <39.766865, 37.723740, 30.567242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381779, 38.128040, 30.590231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467159, 37.837498, 30.328896>,  <40.518387, 37.663174, 30.172094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467159, 37.837498, 30.328896>,  <40.381779, 38.128040, 30.590231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467159, 37.837498, 30.328896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487197, 0.658799, -0.573256,
		0.846805, -0.195945, 0.494496,
		0.213447, -0.726353, -0.653338,
		40.531193, 37.619591, 30.132895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902489, 38.392567, 30.244141>,  <40.381779, 38.128040, 30.590231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902489, 38.392567, 30.244141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783173, 38.101227, 29.997393>,  <40.711582, 37.926422, 29.849344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783173, 38.101227, 29.997393>,  <40.902489, 38.392567, 30.244141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783173, 38.101227, 29.997393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388725, 0.497561, -0.775452,
		0.871732, -0.471101, 0.134712,
		-0.298288, -0.728352, -0.616869,
		40.693687, 37.882721, 29.812332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552277, 38.304909, 29.783970>,  <40.902489, 38.392567, 30.244141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552277, 38.304909, 29.783970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234444, 38.150219, 29.596743>,  <41.043743, 38.057407, 29.484406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234444, 38.150219, 29.596743>,  <41.552277, 38.304909, 29.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234444, 38.150219, 29.596743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301966, 0.417108, -0.857227,
		0.526744, -0.822476, -0.214649,
		-0.794580, -0.386723, -0.468069,
		40.996071, 38.034203, 29.456322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752380, 38.056873, 29.116091>,  <41.552277, 38.304909, 29.783970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752380, 38.056873, 29.116091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358925, 38.107815, 29.065111>,  <41.122852, 38.138378, 29.034523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358925, 38.107815, 29.065111>,  <41.752380, 38.056873, 29.116091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358925, 38.107815, 29.065111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165845, 0.363591, -0.916677,
		-0.070400, -0.922813, -0.378761,
		-0.983636, 0.127350, -0.127447,
		41.063835, 38.146019, 29.026876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603279, 37.775345, 28.398323>,  <41.752380, 38.056873, 29.116091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603279, 37.775345, 28.398323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316708, 38.031448, 28.509176>,  <41.144764, 38.185112, 28.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316708, 38.031448, 28.509176>,  <41.603279, 37.775345, 28.398323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316708, 38.031448, 28.509176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059062, 0.451463, -0.890333,
		-0.695161, -0.621488, -0.361254,
		-0.716424, 0.640261, 0.277133,
		41.101780, 38.223526, 28.592316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135597, 37.793568, 27.872370>,  <41.603279, 37.775345, 28.398323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135597, 37.793568, 27.872370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044903, 38.136799, 28.056669>,  <40.990486, 38.342739, 28.167250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044903, 38.136799, 28.056669>,  <41.135597, 37.793568, 27.872370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044903, 38.136799, 28.056669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119203, 0.493962, -0.861273,
		-0.966633, -0.140362, -0.214287,
		-0.226740, 0.858079, 0.460749,
		40.976879, 38.394222, 28.194895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640255, 38.155296, 27.505127>,  <41.135597, 37.793568, 27.872370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640255, 38.155296, 27.505127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835979, 38.425030, 27.726341>,  <40.953415, 38.586872, 27.859070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835979, 38.425030, 27.726341>,  <40.640255, 38.155296, 27.505127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835979, 38.425030, 27.726341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200925, 0.529910, -0.823908,
		-0.848650, 0.514264, 0.123799,
		0.489308, 0.674335, 0.553037,
		40.982773, 38.627331, 27.892252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426048, 38.869762, 27.208075>,  <40.640255, 38.155296, 27.505127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426048, 38.869762, 27.208075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756378, 38.936344, 27.423595>,  <40.954575, 38.976295, 27.552908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756378, 38.936344, 27.423595>,  <40.426048, 38.869762, 27.208075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756378, 38.936344, 27.423595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400744, 0.498990, -0.768383,
		-0.396759, 0.850471, 0.345372,
		0.825825, 0.166457, 0.538800,
		41.004128, 38.986282, 27.585236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446579, 39.537495, 27.136148>,  <40.426048, 38.869762, 27.208075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446579, 39.537495, 27.136148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818031, 39.426388, 27.234526>,  <41.040901, 39.359722, 27.293552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818031, 39.426388, 27.234526>,  <40.446579, 39.537495, 27.136148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818031, 39.426388, 27.234526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368654, 0.616347, -0.695852,
		0.041701, 0.736858, 0.674760,
		0.928631, -0.277771, 0.245944,
		41.096619, 39.343056, 27.308310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816853, 40.144867, 27.092274>,  <40.446579, 39.537495, 27.136148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816853, 40.144867, 27.092274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098671, 39.862854, 27.059893>,  <41.267761, 39.693645, 27.040464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098671, 39.862854, 27.059893>,  <40.816853, 40.144867, 27.092274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098671, 39.862854, 27.059893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308973, 0.407434, -0.859379,
		0.638870, 0.580458, 0.504890,
		0.704543, -0.705029, -0.080952,
		41.310032, 39.651344, 27.035606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442139, 40.435493, 26.824774>,  <40.816853, 40.144867, 27.092274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442139, 40.435493, 26.824774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521839, 40.048695, 26.761248>,  <41.569660, 39.816616, 26.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521839, 40.048695, 26.761248>,  <41.442139, 40.435493, 26.824774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521839, 40.048695, 26.761248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467770, 0.236259, -0.851689,
		0.861100, 0.095408, 0.499405,
		0.199247, -0.966995, -0.158814,
		41.581612, 39.758595, 26.713604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136662, 40.318020, 26.502996>,  <41.442139, 40.435493, 26.824774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136662, 40.318020, 26.502996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952782, 39.973804, 26.415232>,  <41.842453, 39.767273, 26.362574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952782, 39.973804, 26.415232>,  <42.136662, 40.318020, 26.502996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952782, 39.973804, 26.415232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392900, 0.024492, -0.919255,
		0.796431, -0.508790, 0.326848,
		-0.459702, -0.860542, -0.219410,
		41.814873, 39.715641, 26.349409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662460, 39.953693, 26.063543>,  <42.136662, 40.318020, 26.502996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662460, 39.953693, 26.063543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294769, 39.807877, 26.004049>,  <42.074154, 39.720387, 25.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294769, 39.807877, 26.004049>,  <42.662460, 39.953693, 26.063543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294769, 39.807877, 26.004049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138643, 0.053866, -0.988876,
		0.368502, -0.929626, 0.001027,
		-0.919230, -0.364546, -0.148736,
		42.019001, 39.698513, 25.959429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749386, 39.452518, 25.623093>,  <42.662460, 39.953693, 26.063543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749386, 39.452518, 25.623093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371792, 39.575043, 25.573984>,  <42.145237, 39.648556, 25.544519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371792, 39.575043, 25.573984>,  <42.749386, 39.452518, 25.623093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371792, 39.575043, 25.573984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162315, 0.107057, -0.980914,
		-0.287320, -0.945893, -0.150778,
		-0.943982, 0.306309, -0.122773,
		42.088596, 39.666935, 25.537151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540462, 39.202404, 25.014513>,  <42.749386, 39.452518, 25.623093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540462, 39.202404, 25.014513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249870, 39.473885, 25.057585>,  <42.075516, 39.636772, 25.083427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249870, 39.473885, 25.057585>,  <42.540462, 39.202404, 25.014513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249870, 39.473885, 25.057585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004617, 0.161516, -0.986859,
		-0.687172, -0.716436, -0.120472,
		-0.726480, 0.678699, 0.107682,
		42.031925, 39.677494, 25.089890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017841, 39.032352, 24.570553>,  <42.540462, 39.202404, 25.014513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017841, 39.032352, 24.570553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931980, 39.416203, 24.643269>,  <41.880463, 39.646511, 24.686899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931980, 39.416203, 24.643269>,  <42.017841, 39.032352, 24.570553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931980, 39.416203, 24.643269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056718, 0.173568, -0.983188,
		-0.975042, -0.221358, 0.017171,
		-0.214656, 0.959623, 0.181791,
		41.867584, 39.704090, 24.697805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398659, 39.240643, 24.138029>,  <42.017841, 39.032352, 24.570553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398659, 39.240643, 24.138029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586594, 39.583626, 24.221956>,  <41.699352, 39.789413, 24.272312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586594, 39.583626, 24.221956>,  <41.398659, 39.240643, 24.138029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586594, 39.583626, 24.221956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036348, 0.218693, -0.975116,
		-0.882006, 0.465770, 0.071583,
		0.469835, 0.857456, 0.209819,
		41.727543, 39.840862, 24.284903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931412, 39.844501, 23.884155>,  <41.398659, 39.240643, 24.138029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931412, 39.844501, 23.884155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307281, 39.978371, 23.912453>,  <41.532803, 40.058693, 23.929432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307281, 39.978371, 23.912453>,  <40.931412, 39.844501, 23.884155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307281, 39.978371, 23.912453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017329, 0.253124, -0.967279,
		-0.341626, 0.907703, 0.243654,
		0.939676, 0.334670, 0.070744,
		41.589184, 40.078773, 23.933676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018951, 40.412296, 23.564047>,  <40.931412, 39.844501, 23.884155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018951, 40.412296, 23.564047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407291, 40.317539, 23.578690>,  <41.640293, 40.260685, 23.587475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407291, 40.317539, 23.578690>,  <41.018951, 40.412296, 23.564047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407291, 40.317539, 23.578690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097637, 0.251326, -0.962965,
		0.218920, 0.938465, 0.267128,
		0.970846, -0.236894, 0.036609,
		41.698544, 40.246471, 23.589672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378391, 40.831104, 23.151365>,  <41.018951, 40.412296, 23.564047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378391, 40.831104, 23.151365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644524, 40.532486, 23.150776>,  <41.804203, 40.353313, 23.150423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644524, 40.532486, 23.150776>,  <41.378391, 40.831104, 23.151365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644524, 40.532486, 23.150776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245745, 0.220870, -0.943836,
		0.704945, 0.627599, 0.330412,
		0.665328, -0.746549, -0.001472,
		41.844124, 40.308521, 23.150333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778259, 41.102440, 22.729765>,  <41.378391, 40.831104, 23.151365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778259, 41.102440, 22.729765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906902, 40.723721, 22.734619>,  <41.984089, 40.496490, 22.737532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906902, 40.723721, 22.734619>,  <41.778259, 41.102440, 22.729765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906902, 40.723721, 22.734619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085984, 0.016437, -0.996161,
		0.942960, 0.321418, 0.086696,
		0.321609, -0.946795, 0.012137,
		42.003384, 40.439682, 22.738260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311134, 41.116100, 22.242069>,  <41.778259, 41.102440, 22.729765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311134, 41.116100, 22.242069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184227, 40.738163, 22.274612>,  <42.108082, 40.511402, 22.294138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184227, 40.738163, 22.274612>,  <42.311134, 41.116100, 22.242069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184227, 40.738163, 22.274612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118801, -0.124713, -0.985055,
		0.940866, -0.302860, 0.151815,
		-0.317267, -0.944840, 0.081358,
		42.089046, 40.454712, 22.299021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805218, 40.720627, 21.810770>,  <42.311134, 41.116100, 22.242069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805218, 40.720627, 21.810770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461018, 40.521511, 21.854115>,  <42.254498, 40.402042, 21.880121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461018, 40.521511, 21.854115>,  <42.805218, 40.720627, 21.810770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461018, 40.521511, 21.854115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085707, -0.068221, -0.993982,
		0.502185, -0.864611, 0.016041,
		-0.860502, -0.497788, 0.108363,
		42.202866, 40.372173, 21.886623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940796, 40.169857, 21.425526>,  <42.805218, 40.720627, 21.810770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940796, 40.169857, 21.425526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544289, 40.184978, 21.476048>,  <42.306385, 40.194054, 21.506361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544289, 40.184978, 21.476048>,  <42.940796, 40.169857, 21.425526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544289, 40.184978, 21.476048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131172, -0.186387, -0.973681,
		-0.013272, -0.981749, 0.189720,
		-0.991271, 0.037809, 0.126304,
		42.246906, 40.196320, 21.513939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857433, 39.652447, 21.040047>,  <42.940796, 40.169857, 21.425526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857433, 39.652447, 21.040047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511642, 39.850780, 21.073116>,  <42.304169, 39.969780, 21.092958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511642, 39.850780, 21.073116>,  <42.857433, 39.652447, 21.040047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511642, 39.850780, 21.073116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217513, -0.220700, -0.950778,
		-0.453183, -0.839904, 0.298640,
		-0.864472, 0.495835, 0.082673,
		42.252300, 39.999531, 21.097918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407150, 39.202358, 20.717508>,  <42.857433, 39.652447, 21.040047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407150, 39.202358, 20.717508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261543, 39.574535, 20.734337>,  <42.174179, 39.797840, 20.744434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261543, 39.574535, 20.734337>,  <42.407150, 39.202358, 20.717508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261543, 39.574535, 20.734337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021418, 0.036797, -0.999093,
		-0.931145, -0.364589, 0.006533,
		-0.364018, 0.930441, 0.042072,
		42.152336, 39.853668, 20.746958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728596, 39.200851, 20.212227>,  <42.407150, 39.202358, 20.717508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728596, 39.200851, 20.212227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822231, 39.586914, 20.259018>,  <41.878410, 39.818550, 20.287092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822231, 39.586914, 20.259018>,  <41.728596, 39.200851, 20.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822231, 39.586914, 20.259018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058544, 0.106110, -0.992629,
		-0.970451, 0.239210, -0.031665,
		0.234087, 0.965152, 0.116979,
		41.892456, 39.876461, 20.294111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239380, 39.554928, 19.824987>,  <41.728596, 39.200851, 20.212227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239380, 39.554928, 19.824987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537674, 39.819180, 19.859491>,  <41.716652, 39.977730, 19.880194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537674, 39.819180, 19.859491>,  <41.239380, 39.554928, 19.824987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537674, 39.819180, 19.859491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109950, 0.005662, -0.993921,
		-0.657106, 0.750687, -0.068415,
		0.745736, 0.660634, 0.086259,
		41.761395, 40.017368, 19.885368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122112, 39.990864, 19.319893>,  <41.239380, 39.554928, 19.824987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122112, 39.990864, 19.319893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505768, 40.068695, 19.402061>,  <41.735962, 40.115395, 19.451363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505768, 40.068695, 19.402061>,  <41.122112, 39.990864, 19.319893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505768, 40.068695, 19.402061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215796, -0.033494, -0.975864,
		-0.182998, 0.980316, -0.074114,
		0.959137, 0.194574, 0.205419,
		41.793510, 40.127068, 19.463688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300095, 40.420921, 18.780325>,  <41.122112, 39.990864, 19.319893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300095, 40.420921, 18.780325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639271, 40.277077, 18.936108>,  <41.842777, 40.190769, 19.029577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639271, 40.277077, 18.936108>,  <41.300095, 40.420921, 18.780325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639271, 40.277077, 18.936108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233093, -0.406910, -0.883228,
		0.476093, 0.839705, -0.261212,
		0.847941, -0.359612, 0.389457,
		41.893654, 40.169193, 19.052944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826405, 40.673866, 18.347305>,  <41.300095, 40.420921, 18.780325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826405, 40.673866, 18.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961460, 40.339115, 18.519648>,  <42.042492, 40.138264, 18.623053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961460, 40.339115, 18.519648>,  <41.826405, 40.673866, 18.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961460, 40.339115, 18.519648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205359, -0.381217, -0.901389,
		0.918602, 0.392822, 0.043147,
		0.337636, -0.836878, 0.430856,
		42.062752, 40.088051, 18.648905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489410, 40.595585, 18.087521>,  <41.826405, 40.673866, 18.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489410, 40.595585, 18.087521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402035, 40.227020, 18.216068>,  <42.349609, 40.005882, 18.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402035, 40.227020, 18.216068>,  <42.489410, 40.595585, 18.087521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402035, 40.227020, 18.216068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328462, -0.379532, -0.864909,
		0.918910, -0.083375, 0.385555,
		-0.218442, -0.921414, 0.321371,
		42.336502, 39.950596, 18.312479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060863, 40.175495, 17.884201>,  <42.489410, 40.595585, 18.087521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060863, 40.175495, 17.884201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788189, 39.889217, 17.944986>,  <42.624584, 39.717453, 17.981457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788189, 39.889217, 17.944986>,  <43.060863, 40.175495, 17.884201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788189, 39.889217, 17.944986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247857, -0.421314, -0.872388,
		0.688385, -0.557027, 0.464592,
		-0.681683, -0.715692, 0.151963,
		42.583683, 39.674511, 17.990576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367752, 39.546986, 17.740099>,  <43.060863, 40.175495, 17.884201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367752, 39.546986, 17.740099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972626, 39.519077, 17.684450>,  <42.735550, 39.502335, 17.651060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972626, 39.519077, 17.684450>,  <43.367752, 39.546986, 17.740099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972626, 39.519077, 17.684450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155340, -0.386793, -0.908989,
		0.009607, -0.919524, 0.392917,
		-0.987814, -0.069769, -0.139123,
		42.676281, 39.498146, 17.642714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339760, 38.912392, 17.292091>,  <43.367752, 39.546986, 17.740099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339760, 38.912392, 17.292091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983845, 39.094181, 17.275398>,  <42.770298, 39.203255, 17.265383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983845, 39.094181, 17.275398>,  <43.339760, 38.912392, 17.292091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983845, 39.094181, 17.275398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105074, -0.292981, -0.950327,
		-0.444124, -0.841200, 0.308442,
		-0.889783, 0.454472, -0.041732,
		42.716911, 39.230522, 17.262878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755554, 38.419395, 17.057226>,  <43.339760, 38.912392, 17.292091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755554, 38.419395, 17.057226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651031, 38.793957, 16.963526>,  <42.588318, 39.018692, 16.907305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651031, 38.793957, 16.963526>,  <42.755554, 38.419395, 17.057226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651031, 38.793957, 16.963526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171691, -0.283905, -0.943356,
		-0.949863, -0.206288, 0.234958,
		-0.261309, 0.936399, -0.234253,
		42.572639, 39.074875, 16.893250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991669, 37.936024, 16.517832>,  <42.755554, 38.419395, 17.057226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991669, 37.936024, 16.517832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221596, 37.608856, 16.527534>,  <43.359550, 37.412556, 16.533356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221596, 37.608856, 16.527534>,  <42.991669, 37.936024, 16.517832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221596, 37.608856, 16.527534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386389, -0.245175, 0.889153,
		-0.721311, -0.520472, -0.456967,
		0.574817, -0.817923, 0.024257,
		43.394039, 37.363480, 16.534811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507133, 37.353111, 16.722883>,  <42.991669, 37.936024, 16.517832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507133, 37.353111, 16.722883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882507, 37.249073, 16.813818>,  <43.107731, 37.186649, 16.868380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882507, 37.249073, 16.813818>,  <42.507133, 37.353111, 16.722883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882507, 37.249073, 16.813818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288108, -0.226207, 0.930497,
		-0.190591, -0.938713, -0.287216,
		0.938440, -0.260094, 0.227337,
		43.164040, 37.171043, 16.882019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430111, 36.917561, 17.196411>,  <42.507133, 37.353111, 16.722883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430111, 36.917561, 17.196411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816982, 36.980297, 17.276377>,  <43.049107, 37.017941, 17.324356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816982, 36.980297, 17.276377>,  <42.430111, 36.917561, 17.196411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816982, 36.980297, 17.276377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156284, -0.253153, 0.954719,
		0.200350, -0.954628, -0.220332,
		0.967179, 0.156844, 0.199912,
		43.107136, 37.027351, 17.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740788, 36.331791, 17.591082>,  <42.430111, 36.917561, 17.196411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740788, 36.331791, 17.591082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947353, 36.666428, 17.664211>,  <43.071293, 36.867210, 17.708090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947353, 36.666428, 17.664211>,  <42.740788, 36.331791, 17.591082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947353, 36.666428, 17.664211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180498, -0.102359, 0.978235,
		0.837099, -0.538175, 0.098143,
		0.516416, 0.836594, 0.182824,
		43.102280, 36.917404, 17.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052757, 36.119556, 18.163952>,  <42.740788, 36.331791, 17.591082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052757, 36.119556, 18.163952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113045, 36.514862, 18.153990>,  <43.149216, 36.752045, 18.148012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113045, 36.514862, 18.153990>,  <43.052757, 36.119556, 18.163952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113045, 36.514862, 18.153990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095789, 0.039676, 0.994611,
		0.983925, -0.147520, 0.100644,
		0.150718, 0.988263, -0.024907,
		43.158260, 36.811340, 18.146517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563381, 36.343601, 18.702065>,  <43.052757, 36.119556, 18.163952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563381, 36.343601, 18.702065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359867, 36.670063, 18.592499>,  <43.237759, 36.865940, 18.526760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359867, 36.670063, 18.592499>,  <43.563381, 36.343601, 18.702065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359867, 36.670063, 18.592499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214794, 0.187766, 0.958440,
		0.833665, 0.546480, 0.079771,
		-0.508790, 0.816152, -0.273914,
		43.207230, 36.914909, 18.510324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961571, 36.878674, 19.025223>,  <43.563381, 36.343601, 18.702065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961571, 36.878674, 19.025223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578098, 36.976543, 18.967161>,  <43.348015, 37.035267, 18.932325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578098, 36.976543, 18.967161>,  <43.961571, 36.878674, 19.025223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578098, 36.976543, 18.967161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100166, 0.187245, 0.977193,
		0.266278, 0.951352, -0.154999,
		-0.958678, 0.244679, -0.145152,
		43.290497, 37.049946, 18.923616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802555, 37.061775, 19.596802>,  <43.961571, 36.878674, 19.025223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802555, 37.061775, 19.596802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435566, 37.134140, 19.455086>,  <43.215374, 37.177559, 19.370056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435566, 37.134140, 19.455086>,  <43.802555, 37.061775, 19.596802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435566, 37.134140, 19.455086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282625, 0.330317, 0.900563,
		0.279954, 0.926370, -0.251924,
		-0.917469, 0.180917, -0.354289,
		43.160324, 37.188416, 19.348799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664482, 37.782997, 19.655750>,  <43.802555, 37.061775, 19.596802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664482, 37.782997, 19.655750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337814, 37.552269, 19.663023>,  <43.141815, 37.413830, 19.667387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337814, 37.552269, 19.663023>,  <43.664482, 37.782997, 19.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337814, 37.552269, 19.663023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189096, 0.297221, 0.935896,
		-0.545250, 0.760877, -0.351806,
		-0.816667, -0.576823, 0.018181,
		43.092815, 37.379223, 19.668478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196857, 38.144611, 20.015764>,  <43.664482, 37.782997, 19.655750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196857, 38.144611, 20.015764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005009, 37.793869, 20.002598>,  <42.889900, 37.583424, 19.994698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005009, 37.793869, 20.002598>,  <43.196857, 38.144611, 20.015764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005009, 37.793869, 20.002598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314658, 0.136849, 0.939288,
		-0.819120, 0.460856, -0.341546,
		-0.479617, -0.876860, -0.032917,
		42.861122, 37.530811, 19.992723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465282, 38.187092, 20.211754>,  <43.196857, 38.144611, 20.015764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465282, 38.187092, 20.211754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618786, 37.822258, 20.269478>,  <42.710888, 37.603355, 20.304113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618786, 37.822258, 20.269478>,  <42.465282, 38.187092, 20.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618786, 37.822258, 20.269478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279552, 0.034196, 0.959521,
		-0.880103, -0.408566, -0.241853,
		0.383757, -0.912088, 0.144312,
		42.733913, 37.548630, 20.312771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024216, 37.923897, 20.638714>,  <42.465282, 38.187092, 20.211754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024216, 37.923897, 20.638714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367168, 37.720360, 20.669638>,  <42.572941, 37.598236, 20.688192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367168, 37.720360, 20.669638>,  <42.024216, 37.923897, 20.638714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367168, 37.720360, 20.669638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062199, 0.046674, 0.996972,
		-0.510913, -0.859592, 0.008368,
		0.857379, -0.508845, 0.077312,
		42.624382, 37.567707, 20.692831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842476, 37.341537, 21.098894>,  <42.024216, 37.923897, 20.638714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842476, 37.341537, 21.098894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241016, 37.375534, 21.095583>,  <42.480141, 37.395931, 21.093597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241016, 37.375534, 21.095583>,  <41.842476, 37.341537, 21.098894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241016, 37.375534, 21.095583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016635, -0.098116, 0.995036,
		0.083760, -0.991539, -0.099171,
		0.996348, 0.084994, -0.008276,
		42.539921, 37.401031, 21.093100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025314, 36.800724, 21.514330>,  <41.842476, 37.341537, 21.098894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025314, 36.800724, 21.514330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339622, 37.048107, 21.517750>,  <42.528206, 37.196537, 21.519802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339622, 37.048107, 21.517750>,  <42.025314, 36.800724, 21.514330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339622, 37.048107, 21.517750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060469, -0.090568, 0.994053,
		0.615557, -0.780579, -0.108563,
		0.785769, 0.618461, 0.008549,
		42.575352, 37.233646, 21.520315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592312, 36.337132, 21.726110>,  <42.025314, 36.800724, 21.514330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592312, 36.337132, 21.726110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642509, 36.727814, 21.795740>,  <42.672626, 36.962223, 21.837519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642509, 36.727814, 21.795740>,  <42.592312, 36.337132, 21.726110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642509, 36.727814, 21.795740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028774, -0.178970, 0.983434,
		0.991677, -0.118404, -0.050563,
		0.125491, 0.976704, 0.174073,
		42.680157, 37.020824, 21.847961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107876, 36.398613, 22.084867>,  <42.592312, 36.337132, 21.726110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107876, 36.398613, 22.084867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946079, 36.756466, 22.160784>,  <42.848999, 36.971176, 22.206333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946079, 36.756466, 22.160784>,  <43.107876, 36.398613, 22.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946079, 36.756466, 22.160784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087961, -0.168506, 0.981768,
		0.910300, 0.413815, -0.010533,
		-0.404496, 0.894630, 0.189791,
		42.824730, 37.024857, 22.217720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557724, 36.651169, 22.672697>,  <43.107876, 36.398613, 22.084867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557724, 36.651169, 22.672697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225838, 36.873283, 22.695444>,  <43.026707, 37.006554, 22.709093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225838, 36.873283, 22.695444>,  <43.557724, 36.651169, 22.672697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225838, 36.873283, 22.695444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036837, -0.047188, 0.998207,
		0.556974, 0.830320, 0.018698,
		-0.829713, 0.555286, 0.056869,
		42.976925, 37.039867, 22.712505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706615, 37.121754, 23.171885>,  <43.557724, 36.651169, 22.672697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706615, 37.121754, 23.171885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307793, 37.100357, 23.149910>,  <43.068501, 37.087517, 23.136724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307793, 37.100357, 23.149910>,  <43.706615, 37.121754, 23.171885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307793, 37.100357, 23.149910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052951, -0.037837, 0.997880,
		-0.055459, 0.997851, 0.034893,
		-0.997056, -0.053494, -0.054936,
		43.008675, 37.084309, 23.133429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464424, 37.551434, 23.801838>,  <43.706615, 37.121754, 23.171885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464424, 37.551434, 23.801838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137516, 37.359894, 23.673611>,  <42.941368, 37.244968, 23.596674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137516, 37.359894, 23.673611>,  <43.464424, 37.551434, 23.801838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137516, 37.359894, 23.673611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387491, 0.044933, 0.920778,
		-0.426512, 0.876745, -0.222274,
		-0.817275, -0.478852, -0.320566,
		42.892334, 37.216240, 23.577440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898357, 37.962646, 23.937277>,  <43.464424, 37.551434, 23.801838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898357, 37.962646, 23.937277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766296, 37.585545, 23.918438>,  <42.687061, 37.359283, 23.907135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766296, 37.585545, 23.918438>,  <42.898357, 37.962646, 23.937277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766296, 37.585545, 23.918438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442269, 0.110414, 0.890060,
		-0.833907, 0.314682, -0.453403,
		-0.330148, -0.942753, -0.047099,
		42.667252, 37.302719, 23.904308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220394, 37.912838, 24.260235>,  <42.898357, 37.962646, 23.937277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220394, 37.912838, 24.260235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349770, 37.534344, 24.258402>,  <42.427395, 37.307247, 24.257301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349770, 37.534344, 24.258402>,  <42.220394, 37.912838, 24.260235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349770, 37.534344, 24.258402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024940, -0.013366, 0.999599,
		-0.945919, -0.323200, -0.027922,
		0.323443, -0.946236, -0.004583,
		42.446804, 37.250473, 24.257027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799049, 37.547585, 24.706556>,  <42.220394, 37.912838, 24.260235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799049, 37.547585, 24.706556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122910, 37.314339, 24.679890>,  <42.317226, 37.174393, 24.663889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122910, 37.314339, 24.679890>,  <41.799049, 37.547585, 24.706556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122910, 37.314339, 24.679890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070253, -0.209064, 0.975375,
		-0.582692, -0.785030, -0.210235,
		0.809651, -0.583113, -0.066669,
		42.365807, 37.139404, 24.659889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680035, 37.042480, 25.216473>,  <41.799049, 37.547585, 24.706556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680035, 37.042480, 25.216473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073799, 37.027874, 25.147648>,  <42.310059, 37.019112, 25.106354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073799, 37.027874, 25.147648>,  <41.680035, 37.042480, 25.216473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073799, 37.027874, 25.147648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163637, -0.168632, 0.972001,
		-0.064506, -0.985003, -0.160028,
		0.984409, -0.036514, -0.172061,
		42.369122, 37.016918, 25.096029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950008, 36.454834, 25.563704>,  <41.680035, 37.042480, 25.216473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950008, 36.454834, 25.563704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254128, 36.712158, 25.527719>,  <42.436600, 36.866554, 25.506130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254128, 36.712158, 25.527719>,  <41.950008, 36.454834, 25.563704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254128, 36.712158, 25.527719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137095, -0.023550, 0.990278,
		0.634938, -0.765243, -0.106100,
		0.760302, 0.643310, -0.089958,
		42.482220, 36.905151, 25.500732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448071, 36.171394, 25.976835>,  <41.950008, 36.454834, 25.563704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448071, 36.171394, 25.976835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530815, 36.558292, 25.917988>,  <42.580463, 36.790432, 25.882679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530815, 36.558292, 25.917988>,  <42.448071, 36.171394, 25.976835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530815, 36.558292, 25.917988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262009, 0.090111, 0.960850,
		0.942635, -0.237308, -0.234787,
		0.206860, 0.967246, -0.147118,
		42.592873, 36.848465, 25.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107193, 36.256184, 26.134495>,  <42.448071, 36.171394, 25.976835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107193, 36.256184, 26.134495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928909, 36.609303, 26.193850>,  <42.821938, 36.821175, 26.229462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928909, 36.609303, 26.193850>,  <43.107193, 36.256184, 26.134495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928909, 36.609303, 26.193850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369061, 0.030195, 0.928915,
		0.815560, 0.468789, -0.339263,
		-0.445709, 0.882794, 0.148386,
		42.795197, 36.874142, 26.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659855, 36.670303, 26.421146>,  <43.107193, 36.256184, 26.134495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659855, 36.670303, 26.421146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335316, 36.894188, 26.488607>,  <43.140594, 37.028519, 26.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335316, 36.894188, 26.488607>,  <43.659855, 36.670303, 26.421146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335316, 36.894188, 26.488607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369250, 0.267041, 0.890137,
		0.453182, 0.784483, -0.423336,
		-0.811345, 0.559710, 0.168653,
		43.091911, 37.062099, 26.539204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932602, 37.273842, 26.712765>,  <43.659855, 36.670303, 26.421146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932602, 37.273842, 26.712765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547169, 37.255848, 26.818211>,  <43.315910, 37.245052, 26.881477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547169, 37.255848, 26.818211>,  <43.932602, 37.273842, 26.712765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547169, 37.255848, 26.818211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249390, 0.204690, 0.946523,
		-0.096541, 0.977792, -0.186016,
		-0.963579, -0.044988, 0.263613,
		43.258095, 37.242352, 26.897295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842781, 37.875237, 27.047417>,  <43.932602, 37.273842, 26.712765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842781, 37.875237, 27.047417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552010, 37.622612, 27.155273>,  <43.377548, 37.471039, 27.219988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552010, 37.622612, 27.155273>,  <43.842781, 37.875237, 27.047417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552010, 37.622612, 27.155273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143939, 0.243800, 0.959085,
		-0.671458, 0.735998, -0.086319,
		-0.726929, -0.631560, 0.269640,
		43.333931, 37.433144, 27.236166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600239, 38.225319, 27.681166>,  <43.842781, 37.875237, 27.047417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600239, 38.225319, 27.681166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512272, 37.835140, 27.676525>,  <43.459492, 37.601032, 27.673740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512272, 37.835140, 27.676525>,  <43.600239, 38.225319, 27.681166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512272, 37.835140, 27.676525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151300, 0.022358, 0.988235,
		-0.963714, 0.219085, -0.152502,
		-0.219917, -0.975450, -0.011601,
		43.446297, 37.542507, 27.673044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956806, 38.183029, 28.094332>,  <43.600239, 38.225319, 27.681166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956806, 38.183029, 28.094332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084816, 37.804066, 28.093115>,  <43.161621, 37.576687, 28.092384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084816, 37.804066, 28.093115>,  <42.956806, 38.183029, 28.094332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084816, 37.804066, 28.093115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170528, -0.060760, 0.983478,
		-0.931936, -0.314218, -0.181003,
		0.320024, -0.947405, -0.003041,
		43.180824, 37.519844, 28.092203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420151, 37.719723, 28.379921>,  <42.956806, 38.183029, 28.094332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420151, 37.719723, 28.379921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728153, 37.468765, 28.426327>,  <42.912956, 37.318192, 28.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728153, 37.468765, 28.426327>,  <42.420151, 37.719723, 28.379921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728153, 37.468765, 28.426327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183951, -0.044193, 0.981941,
		-0.610939, -0.777445, -0.149439,
		0.770010, -0.627396, 0.116013,
		42.959156, 37.280548, 28.461130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242485, 37.079472, 28.823570>,  <42.420151, 37.719723, 28.379921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242485, 37.079472, 28.823570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630020, 37.172543, 28.857536>,  <42.862541, 37.228386, 28.877916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630020, 37.172543, 28.857536>,  <42.242485, 37.079472, 28.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630020, 37.172543, 28.857536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094907, 0.032062, 0.994970,
		0.228787, -0.972025, 0.053146,
		0.968839, 0.232680, 0.084917,
		42.920673, 37.242348, 28.883011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508236, 36.749928, 29.369902>,  <42.242485, 37.079472, 28.823570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508236, 36.749928, 29.369902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830376, 36.985992, 29.347532>,  <43.023659, 37.127632, 29.334110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830376, 36.985992, 29.347532>,  <42.508236, 36.749928, 29.369902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830376, 36.985992, 29.347532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144711, -0.104236, 0.983968,
		0.574873, -0.800526, -0.169349,
		0.805345, 0.590163, -0.055922,
		43.071980, 37.163040, 29.330755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947254, 36.401138, 29.678598>,  <42.508236, 36.749928, 29.369902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947254, 36.401138, 29.678598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072399, 36.780533, 29.698566>,  <43.147484, 37.008171, 29.710546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072399, 36.780533, 29.698566>,  <42.947254, 36.401138, 29.678598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072399, 36.780533, 29.698566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259150, -0.135809, 0.956241,
		0.913762, -0.286231, -0.288290,
		0.312859, 0.948487, 0.049921,
		43.166256, 37.065079, 29.713543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682426, 36.321411, 29.871021>,  <42.947254, 36.401138, 29.678598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682426, 36.321411, 29.871021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580509, 36.696228, 29.966541>,  <43.519360, 36.921120, 30.023853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580509, 36.696228, 29.966541>,  <43.682426, 36.321411, 29.871021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580509, 36.696228, 29.966541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438780, -0.108033, 0.892077,
		0.861715, 0.332076, -0.383631,
		-0.254792, 0.937046, 0.238802,
		43.504070, 36.977341, 30.038181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205681, 36.590038, 30.272907>,  <43.682426, 36.321411, 29.871021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205681, 36.590038, 30.272907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917759, 36.859577, 30.339613>,  <43.745007, 37.021301, 30.379637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917759, 36.859577, 30.339613>,  <44.205681, 36.590038, 30.272907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917759, 36.859577, 30.339613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204347, -0.023904, 0.978606,
		0.663417, 0.738485, -0.120492,
		-0.719805, 0.673846, 0.166766,
		43.701817, 37.061729, 30.389643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464905, 37.151764, 30.749214>,  <44.205681, 36.590038, 30.272907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464905, 37.151764, 30.749214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066113, 37.156780, 30.779882>,  <43.826839, 37.159790, 30.798285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066113, 37.156780, 30.779882>,  <44.464905, 37.151764, 30.749214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066113, 37.156780, 30.779882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077519, 0.095049, 0.992450,
		0.005159, 0.995394, -0.095734,
		-0.996978, 0.012541, 0.076672,
		43.767017, 37.160542, 30.802883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297337, 37.743919, 31.152084>,  <44.464905, 37.151764, 30.749214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297337, 37.743919, 31.152084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007423, 37.469421, 31.176573>,  <43.833473, 37.304722, 31.191265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007423, 37.469421, 31.176573>,  <44.297337, 37.743919, 31.152084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007423, 37.469421, 31.176573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050609, 0.035587, 0.998084,
		-0.687114, 0.726495, 0.008937,
		-0.724785, -0.686250, 0.061219,
		43.789989, 37.263546, 31.194939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904827, 37.929398, 31.764412>,  <44.297337, 37.743919, 31.152084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904827, 37.929398, 31.764412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806622, 37.546638, 31.702360>,  <43.747700, 37.316982, 31.665129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806622, 37.546638, 31.702360>,  <43.904827, 37.929398, 31.764412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806622, 37.546638, 31.702360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013577, -0.156616, 0.987566,
		-0.969298, 0.244567, 0.025460,
		-0.245514, -0.956900, -0.155128,
		43.732967, 37.259567, 31.655821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486240, 37.885201, 32.295185>,  <43.904827, 37.929398, 31.764412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486240, 37.885201, 32.295185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574104, 37.509094, 32.191147>,  <43.626823, 37.283432, 32.128723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574104, 37.509094, 32.191147>,  <43.486240, 37.885201, 32.295185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574104, 37.509094, 32.191147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059556, -0.279037, 0.958432,
		-0.973756, -0.195041, -0.117292,
		0.219663, -0.940264, -0.260099,
		43.640003, 37.227016, 32.113117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096439, 37.472569, 32.630920>,  <43.486240, 37.885201, 32.295185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096439, 37.472569, 32.630920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404476, 37.233212, 32.542480>,  <43.589298, 37.089600, 32.489418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404476, 37.233212, 32.542480>,  <43.096439, 37.472569, 32.630920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404476, 37.233212, 32.542480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176065, -0.133758, 0.975248,
		-0.613152, -0.789962, 0.002349,
		0.770094, -0.598389, -0.221099,
		43.635506, 37.053696, 32.476151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006855, 36.876762, 33.007721>,  <43.096439, 37.472569, 32.630920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006855, 36.876762, 33.007721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399063, 36.892834, 32.930820>,  <43.634388, 36.902477, 32.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399063, 36.892834, 32.930820>,  <43.006855, 36.876762, 33.007721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399063, 36.892834, 32.930820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195086, -0.312520, 0.929663,
		-0.022725, -0.949061, -0.314272,
		0.980523, 0.040183, -0.192251,
		43.693218, 36.904888, 32.873146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306198, 36.171509, 33.243534>,  <43.006855, 36.876762, 33.007721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306198, 36.171509, 33.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605129, 36.436871, 33.228603>,  <43.784489, 36.596088, 33.219646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605129, 36.436871, 33.228603>,  <43.306198, 36.171509, 33.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605129, 36.436871, 33.228603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256425, -0.236129, 0.937278,
		0.612984, -0.710024, -0.346580,
		0.747327, 0.663408, -0.037325,
		43.829327, 36.635891, 33.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907063, 35.879196, 33.655830>,  <43.306198, 36.171509, 33.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907063, 35.879196, 33.655830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006851, 36.265060, 33.621902>,  <44.066723, 36.496578, 33.601547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006851, 36.265060, 33.621902>,  <43.907063, 35.879196, 33.655830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006851, 36.265060, 33.621902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501089, -0.053644, 0.863731,
		0.828658, -0.257978, -0.496763,
		0.249472, 0.964660, -0.084817,
		44.081692, 36.554459, 33.596458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544331, 35.864563, 33.838634>,  <43.907063, 35.879196, 33.655830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544331, 35.864563, 33.838634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426929, 36.243004, 33.893406>,  <44.356487, 36.470066, 33.926270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426929, 36.243004, 33.893406>,  <44.544331, 35.864563, 33.838634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426929, 36.243004, 33.893406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464173, 0.015829, 0.885603,
		0.835701, 0.323488, -0.443800,
		-0.293507, 0.946100, 0.136926,
		44.338879, 36.526833, 33.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120296, 36.041656, 34.228424>,  <44.544331, 35.864563, 33.838634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120296, 36.041656, 34.228424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845558, 36.327576, 34.281036>,  <44.680714, 36.499126, 34.312603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845558, 36.327576, 34.281036>,  <45.120296, 36.041656, 34.228424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845558, 36.327576, 34.281036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304327, 0.118504, 0.945168,
		0.660020, 0.689214, -0.298927,
		-0.686847, 0.714801, 0.131531,
		44.639503, 36.542015, 34.320496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496002, 36.703873, 34.559937>,  <45.120296, 36.041656, 34.228424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496002, 36.703873, 34.559937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109474, 36.702026, 34.662861>,  <44.877560, 36.700916, 34.724617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109474, 36.702026, 34.662861>,  <45.496002, 36.703873, 34.559937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109474, 36.702026, 34.662861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252445, -0.211419, 0.944232,
		0.050040, 0.977385, 0.205463,
		-0.966316, -0.004619, 0.257315,
		44.819580, 36.700642, 34.740055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330513, 37.077629, 35.178413>,  <45.496002, 36.703873, 34.559937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330513, 37.077629, 35.178413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052502, 36.791679, 35.147724>,  <44.885696, 36.620110, 35.129311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052502, 36.791679, 35.147724>,  <45.330513, 37.077629, 35.178413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052502, 36.791679, 35.147724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059740, -0.163756, 0.984690,
		-0.716496, 0.679804, 0.156522,
		-0.695028, -0.714878, -0.076719,
		44.843994, 36.577217, 35.124710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912071, 37.152821, 35.737183>,  <45.330513, 37.077629, 35.178413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912071, 37.152821, 35.737183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885517, 36.768490, 35.629547>,  <44.869583, 36.537891, 35.564964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885517, 36.768490, 35.629547>,  <44.912071, 37.152821, 35.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885517, 36.768490, 35.629547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325424, -0.275788, 0.904456,
		-0.943235, -0.027523, 0.330985,
		-0.066388, -0.960825, -0.269089,
		44.865601, 36.480244, 35.548820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486061, 36.707912, 36.159500>,  <44.912071, 37.152821, 35.737183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486061, 36.707912, 36.159500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759892, 36.470737, 35.989895>,  <44.924191, 36.328434, 35.888134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759892, 36.470737, 35.989895>,  <44.486061, 36.707912, 36.159500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759892, 36.470737, 35.989895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235039, -0.371061, 0.898371,
		-0.690008, -0.714663, -0.114657,
		0.684577, -0.592935, -0.424009,
		44.965263, 36.292858, 35.862694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302227, 36.027756, 36.434441>,  <44.486061, 36.707912, 36.159500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302227, 36.027756, 36.434441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688553, 36.063934, 36.337257>,  <44.920349, 36.085644, 36.278946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688553, 36.063934, 36.337257>,  <44.302227, 36.027756, 36.434441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688553, 36.063934, 36.337257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254565, -0.153492, 0.954797,
		0.049069, -0.984001, -0.171270,
		0.965810, 0.090451, -0.242960,
		44.978294, 36.091068, 36.264370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716572, 35.434177, 36.756805>,  <44.302227, 36.027756, 36.434441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716572, 35.434177, 36.756805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942226, 35.757263, 36.688290>,  <45.077618, 35.951115, 36.647179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942226, 35.757263, 36.688290>,  <44.716572, 35.434177, 36.756805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942226, 35.757263, 36.688290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354644, -0.049693, 0.933680,
		0.745638, -0.587470, -0.314487,
		0.564137, 0.807719, -0.171290,
		45.111469, 35.999580, 36.636902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972092, 34.764133, 36.763168>,  <44.716572, 35.434177, 36.756805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972092, 34.764133, 36.763168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197868, 35.080917, 36.670036>,  <45.333336, 35.270988, 36.614159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197868, 35.080917, 36.670036>,  <44.972092, 34.764133, 36.763168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197868, 35.080917, 36.670036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611098, -0.211274, 0.762838,
		0.554946, -0.572857, -0.603216,
		0.564441, 0.791959, -0.232826,
		45.367199, 35.318504, 36.600189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709404, 34.580650, 36.671753>,  <44.972092, 34.764133, 36.763168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709404, 34.580650, 36.671753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700775, 34.969528, 36.765034>,  <45.695599, 35.202854, 36.821003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700775, 34.969528, 36.765034>,  <45.709404, 34.580650, 36.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700775, 34.969528, 36.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720088, -0.146703, 0.678197,
		0.693547, 0.182551, -0.696899,
		-0.021568, 0.972190, 0.233199,
		45.694305, 35.261185, 36.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362160, 34.979565, 36.629105>,  <45.709404, 34.580650, 36.671753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362160, 34.979565, 36.629105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196190, 35.255859, 36.865990>,  <46.096607, 35.421638, 37.008121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196190, 35.255859, 36.865990>,  <46.362160, 34.979565, 36.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196190, 35.255859, 36.865990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711570, -0.159270, 0.684325,
		0.567012, 0.705345, -0.425424,
		-0.414928, 0.690740, 0.592210,
		46.071712, 35.463081, 37.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844879, 35.359077, 37.044071>,  <46.362160, 34.979565, 36.629105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844879, 35.359077, 37.044071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505390, 35.409008, 37.249630>,  <46.301697, 35.438969, 37.372967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505390, 35.409008, 37.249630>,  <46.844879, 35.359077, 37.044071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505390, 35.409008, 37.249630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498509, -0.135521, 0.856226,
		0.176526, 0.982879, 0.052791,
		-0.848721, 0.124830, 0.513897,
		46.250774, 35.446457, 37.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058643, 35.744621, 37.673241>,  <46.844879, 35.359077, 37.044071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058643, 35.744621, 37.673241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695004, 35.601410, 37.758427>,  <46.476818, 35.515484, 37.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695004, 35.601410, 37.758427>,  <47.058643, 35.744621, 37.673241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695004, 35.601410, 37.758427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305833, -0.226494, 0.924752,
		-0.282847, 0.905825, 0.315401,
		-0.909100, -0.358024, 0.212968,
		46.422272, 35.494003, 37.822319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649384, 36.025112, 38.161217>,  <47.058643, 35.744621, 37.673241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649384, 36.025112, 38.161217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495472, 35.656361, 38.179474>,  <46.403126, 35.435108, 38.190430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495472, 35.656361, 38.179474>,  <46.649384, 36.025112, 38.161217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495472, 35.656361, 38.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274483, -0.067072, 0.959250,
		-0.881250, 0.381631, 0.278847,
		-0.384782, -0.921878, 0.045644,
		46.380039, 35.379799, 38.193169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386009, 35.939568, 38.857136>,  <46.649384, 36.025112, 38.161217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386009, 35.939568, 38.857136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447422, 35.579914, 38.693192>,  <46.484268, 35.364120, 38.594826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447422, 35.579914, 38.693192>,  <46.386009, 35.939568, 38.857136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447422, 35.579914, 38.693192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454433, -0.304068, 0.837277,
		-0.877450, -0.314801, 0.361913,
		0.153530, -0.899135, -0.409860,
		46.493481, 35.310173, 38.570232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223606, 35.590221, 39.381485>,  <46.386009, 35.939568, 38.857136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223606, 35.590221, 39.381485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447247, 35.374371, 39.129704>,  <46.581429, 35.244858, 38.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447247, 35.374371, 39.129704>,  <46.223606, 35.590221, 39.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447247, 35.374371, 39.129704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429459, -0.460920, 0.776607,
		-0.709208, -0.704521, -0.025949,
		0.559097, -0.539632, -0.629451,
		46.614975, 35.212482, 38.940868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731384, 35.766041, 40.010983>,  <46.223606, 35.590221, 39.381485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731384, 35.766041, 40.010983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713890, 35.372555, 40.080711>,  <46.703392, 35.136463, 40.122547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713890, 35.372555, 40.080711>,  <46.731384, 35.766041, 40.010983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713890, 35.372555, 40.080711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092117, -0.169776, -0.981168,
		0.994787, -0.058971, -0.083192,
		-0.043736, -0.983717, 0.174323,
		46.700768, 35.077438, 40.133007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169918, 35.526657, 39.491966>,  <46.731384, 35.766041, 40.010983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169918, 35.526657, 39.491966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935638, 35.219582, 39.595974>,  <46.795071, 35.035336, 39.658379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935638, 35.219582, 39.595974>,  <47.169918, 35.526657, 39.491966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935638, 35.219582, 39.595974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143260, -0.217705, -0.965443,
		0.797765, -0.602713, 0.017532,
		-0.585702, -0.767686, 0.260023,
		46.759930, 34.989277, 39.673981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295658, 34.907494, 39.091373>,  <47.169918, 35.526657, 39.491966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295658, 34.907494, 39.091373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915447, 34.886250, 39.213799>,  <46.687321, 34.873501, 39.287254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915447, 34.886250, 39.213799>,  <47.295658, 34.907494, 39.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915447, 34.886250, 39.213799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290987, -0.192584, -0.937144,
		0.108717, -0.979842, 0.167601,
		-0.950530, -0.053114, 0.306058,
		46.630287, 34.870316, 39.305614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946766, 34.299072, 38.837292>,  <47.295658, 34.907494, 39.091373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946766, 34.299072, 38.837292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.675201, 34.583862, 38.909050>,  <46.512264, 34.754734, 38.952103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.675201, 34.583862, 38.909050>,  <46.946766, 34.299072, 38.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.675201, 34.583862, 38.909050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321257, -0.068350, -0.944522,
		-0.660212, -0.698873, 0.275129,
		-0.678907, 0.711972, 0.179393,
		46.471531, 34.797455, 38.962868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222698, 34.064106, 38.605751>,  <46.946766, 34.299072, 38.837292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222698, 34.064106, 38.605751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255867, 34.462727, 38.604801>,  <46.275768, 34.701900, 38.604233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255867, 34.462727, 38.604801>,  <46.222698, 34.064106, 38.605751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255867, 34.462727, 38.604801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359856, 0.027721, -0.932596,
		-0.929316, 0.078183, 0.360915,
		0.082918, 0.996553, -0.002373,
		46.280743, 34.761692, 38.604088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657642, 34.345505, 38.283100>,  <46.222698, 34.064106, 38.605751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657642, 34.345505, 38.283100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903172, 34.660931, 38.268215>,  <46.050488, 34.850185, 38.259285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903172, 34.660931, 38.268215>,  <45.657642, 34.345505, 38.283100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903172, 34.660931, 38.268215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394903, 0.265897, -0.879403,
		-0.683575, 0.554491, 0.474621,
		0.613822, 0.788567, -0.037209,
		46.087318, 34.897499, 38.257053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207790, 34.922146, 38.075378>,  <45.657642, 34.345505, 38.283100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207790, 34.922146, 38.075378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567978, 35.082027, 38.006805>,  <45.784092, 35.177956, 37.965660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567978, 35.082027, 38.006805>,  <45.207790, 34.922146, 38.075378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567978, 35.082027, 38.006805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324183, 0.354094, -0.877225,
		-0.289929, 0.845490, 0.448429,
		0.900470, 0.399706, -0.171431,
		45.838120, 35.201939, 37.955376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079624, 35.595432, 37.950680>,  <45.207790, 34.922146, 38.075378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079624, 35.595432, 37.950680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438572, 35.537941, 37.783791>,  <45.653938, 35.503445, 37.683655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438572, 35.537941, 37.783791>,  <45.079624, 35.595432, 37.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438572, 35.537941, 37.783791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326005, 0.421300, -0.846302,
		0.297414, 0.895460, 0.331205,
		0.897366, -0.143728, -0.417225,
		45.707783, 35.494823, 37.658623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380547, 36.252502, 37.798367>,  <45.079624, 35.595432, 37.950680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380547, 36.252502, 37.798367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534645, 35.969276, 37.561649>,  <45.627106, 35.799339, 37.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534645, 35.969276, 37.561649>,  <45.380547, 36.252502, 37.798367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534645, 35.969276, 37.561649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393641, 0.453932, -0.799370,
		0.834644, 0.540912, -0.103848,
		0.385248, -0.708068, -0.591797,
		45.650219, 35.756855, 37.384109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576454, 36.509396, 37.107586>,  <45.380547, 36.252502, 37.798367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576454, 36.509396, 37.107586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612743, 36.117302, 37.037266>,  <45.634518, 35.882046, 36.995075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612743, 36.117302, 37.037266>,  <45.576454, 36.509396, 37.107586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612743, 36.117302, 37.037266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313942, 0.139375, -0.939157,
		0.945097, 0.140397, -0.295093,
		0.090726, -0.980237, -0.175800,
		45.639961, 35.823231, 36.984528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057404, 36.459408, 36.543892>,  <45.576454, 36.509396, 37.107586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057404, 36.459408, 36.543892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803219, 36.151302, 36.565346>,  <45.650707, 35.966438, 36.578217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803219, 36.151302, 36.565346>,  <46.057404, 36.459408, 36.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803219, 36.151302, 36.565346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335192, 0.212622, -0.917844,
		0.695579, -0.601236, -0.393301,
		-0.635465, -0.770265, 0.053634,
		45.612579, 35.920223, 36.581436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233208, 35.974754, 35.986855>,  <46.057404, 36.459408, 36.543892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233208, 35.974754, 35.986855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845066, 36.002094, 36.079582>,  <45.612183, 36.018497, 36.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845066, 36.002094, 36.079582>,  <46.233208, 35.974754, 35.986855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845066, 36.002094, 36.079582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177209, 0.451014, -0.874748,
		-0.164345, -0.889895, -0.425531,
		-0.970354, 0.068352, 0.231819,
		45.553959, 36.022598, 36.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908218, 35.674324, 35.452267>,  <46.233208, 35.974754, 35.986855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908218, 35.674324, 35.452267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661175, 35.944050, 35.614178>,  <45.512947, 36.105888, 35.711327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661175, 35.944050, 35.614178>,  <45.908218, 35.674324, 35.452267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661175, 35.944050, 35.614178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181744, 0.378376, -0.907635,
		-0.765195, -0.634134, -0.111136,
		-0.617613, 0.674319, 0.404781,
		45.475891, 36.146347, 35.735611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296627, 35.487671, 34.967178>,  <45.908218, 35.674324, 35.452267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296627, 35.487671, 34.967178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127979, 35.635021, 35.298607>,  <45.026791, 35.723431, 35.497463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127979, 35.635021, 35.298607>,  <45.296627, 35.487671, 34.967178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127979, 35.635021, 35.298607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733176, 0.399183, -0.550551,
		-0.533564, -0.839613, 0.101783,
		-0.421619, 0.368379, 0.828573,
		45.001492, 35.745533, 35.547180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685497, 35.291634, 35.091694>,  <45.296627, 35.487671, 34.967178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685497, 35.291634, 35.091694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766258, 35.665054, 35.210159>,  <44.814713, 35.889107, 35.281239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766258, 35.665054, 35.210159>,  <44.685497, 35.291634, 35.091694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766258, 35.665054, 35.210159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629040, 0.355381, -0.691385,
		-0.750697, -0.046711, 0.658993,
		0.201899, 0.933554, 0.296167,
		44.826828, 35.945122, 35.299011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993153, 35.636627, 35.091373>,  <44.685497, 35.291634, 35.091694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993153, 35.636627, 35.091373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276005, 35.919361, 35.083836>,  <44.445717, 36.089001, 35.079311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276005, 35.919361, 35.083836>,  <43.993153, 35.636627, 35.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276005, 35.919361, 35.083836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417756, 0.396133, -0.817654,
		-0.570480, 0.586060, 0.575401,
		0.707129, 0.706833, -0.018844,
		44.488144, 36.131413, 35.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645630, 36.192970, 34.803211>,  <43.993153, 35.636627, 35.091373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645630, 36.192970, 34.803211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040550, 36.230686, 34.752056>,  <44.277500, 36.253315, 34.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040550, 36.230686, 34.752056>,  <43.645630, 36.192970, 34.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040550, 36.230686, 34.752056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154335, 0.377776, -0.912944,
		-0.037764, 0.921084, 0.387528,
		0.987297, 0.094285, -0.127889,
		44.336739, 36.258972, 34.713688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500858, 36.832249, 34.976093>,  <43.645630, 36.192970, 34.803211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500858, 36.832249, 34.976093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891106, 36.775707, 34.908936>,  <44.125256, 36.741783, 34.868641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891106, 36.775707, 34.908936>,  <43.500858, 36.832249, 34.976093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891106, 36.775707, 34.908936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102971, 0.380741, -0.918930,
		0.193821, 0.913813, 0.356902,
		0.975618, -0.141358, -0.167892,
		44.183792, 36.733299, 34.858566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793564, 37.413803, 34.561977>,  <43.500858, 36.832249, 34.976093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793564, 37.413803, 34.561977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076885, 37.143406, 34.480656>,  <44.246880, 36.981167, 34.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076885, 37.143406, 34.480656>,  <43.793564, 37.413803, 34.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076885, 37.143406, 34.480656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042834, 0.328632, -0.943486,
		0.704605, 0.659568, 0.261728,
		0.708306, -0.675996, -0.203304,
		44.289375, 36.940609, 34.419666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288361, 37.801342, 34.197815>,  <43.793564, 37.413803, 34.561977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288361, 37.801342, 34.197815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289700, 37.412415, 34.104355>,  <44.290501, 37.179058, 34.048279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289700, 37.412415, 34.104355>,  <44.288361, 37.801342, 34.197815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289700, 37.412415, 34.104355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085210, 0.232521, -0.968851,
		0.996357, 0.023148, -0.082074,
		0.003343, -0.972316, -0.233647,
		44.290703, 37.120720, 34.034260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348339, 37.806046, 33.498688>,  <44.288361, 37.801342, 34.197815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348339, 37.806046, 33.498688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264141, 37.416122, 33.528214>,  <44.213623, 37.182171, 33.545929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264141, 37.416122, 33.528214>,  <44.348339, 37.806046, 33.498688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264141, 37.416122, 33.528214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165146, -0.038960, -0.985499,
		0.963545, -0.219629, -0.152785,
		-0.210492, -0.974805, 0.073811,
		44.200993, 37.123680, 33.550358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756168, 37.452232, 33.038017>,  <44.348339, 37.806046, 33.498688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756168, 37.452232, 33.038017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436562, 37.219326, 33.098064>,  <44.244797, 37.079582, 33.134094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436562, 37.219326, 33.098064>,  <44.756168, 37.452232, 33.038017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436562, 37.219326, 33.098064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203848, 0.027423, -0.978619,
		0.565702, -0.812533, -0.140606,
		-0.799016, -0.582269, 0.150120,
		44.196857, 37.044647, 33.143101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935696, 36.972466, 32.568867>,  <44.756168, 37.452232, 33.038017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935696, 36.972466, 32.568867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544994, 36.958294, 32.653431>,  <44.310574, 36.949791, 32.704170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544994, 36.958294, 32.653431>,  <44.935696, 36.972466, 32.568867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544994, 36.958294, 32.653431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213160, 0.056208, -0.975399,
		0.022664, -0.997791, -0.062451,
		-0.976755, -0.035419, 0.211415,
		44.251968, 36.947666, 32.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712261, 36.502373, 32.099888>,  <44.935696, 36.972466, 32.568867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712261, 36.502373, 32.099888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383995, 36.685349, 32.236862>,  <44.187035, 36.795132, 32.319046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383995, 36.685349, 32.236862>,  <44.712261, 36.502373, 32.099888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383995, 36.685349, 32.236862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352915, 0.065562, -0.933356,
		-0.449403, -0.886822, 0.107633,
		-0.820663, 0.457438, 0.342437,
		44.137794, 36.822578, 32.339592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197243, 36.121948, 31.785603>,  <44.712261, 36.502373, 32.099888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197243, 36.121948, 31.785603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017349, 36.459984, 31.901226>,  <43.909412, 36.662807, 31.970600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017349, 36.459984, 31.901226>,  <44.197243, 36.121948, 31.785603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017349, 36.459984, 31.901226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405623, 0.095085, -0.909081,
		-0.795743, -0.526097, 0.300025,
		-0.449737, 0.845092, 0.289060,
		43.882427, 36.713512, 31.987944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059299, 35.690746, 32.226891>,  <44.197243, 36.121948, 31.785603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059299, 35.690746, 32.226891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356529, 35.665237, 31.960424>,  <44.534866, 35.649933, 31.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356529, 35.665237, 31.960424>,  <44.059299, 35.690746, 32.226891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356529, 35.665237, 31.960424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230424, -0.910197, 0.344159,
		-0.628286, -0.409236, -0.661651,
		0.743075, -0.063770, -0.666162,
		44.579453, 35.646107, 31.760576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071259, 35.094067, 31.825573>,  <44.059299, 35.690746, 32.226891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071259, 35.094067, 31.825573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430271, 35.238956, 31.926155>,  <44.645679, 35.325890, 31.986504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430271, 35.238956, 31.926155>,  <44.071259, 35.094067, 31.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430271, 35.238956, 31.926155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326200, -0.929128, 0.174110,
		0.296701, -0.074245, -0.952080,
		0.897531, 0.362227, 0.251455,
		44.699532, 35.347626, 32.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556068, 34.729557, 31.452148>,  <44.071259, 35.094067, 31.825573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556068, 34.729557, 31.452148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725918, 34.858032, 31.790743>,  <44.827827, 34.935116, 31.993898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725918, 34.858032, 31.790743>,  <44.556068, 34.729557, 31.452148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725918, 34.858032, 31.790743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054327, -0.942314, 0.330292,
		0.903739, -0.094263, -0.417577,
		0.424623, 0.321184, 0.846485,
		44.853306, 34.954388, 32.044689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050613, 34.223392, 31.842737>,  <44.556068, 34.729557, 31.452148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050613, 34.223392, 31.842737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949688, 34.453808, 32.153740>,  <44.889133, 34.592056, 32.340343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949688, 34.453808, 32.153740>,  <45.050613, 34.223392, 31.842737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949688, 34.453808, 32.153740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038358, -0.808829, 0.586792,
		0.966884, 0.118234, 0.226177,
		-0.252317, 0.576036, 0.777508,
		44.873993, 34.626617, 32.386993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445953, 33.774685, 32.307526>,  <45.050613, 34.223392, 31.842737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445953, 33.774685, 32.307526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183525, 33.558208, 32.097122>,  <45.026070, 33.428322, 31.970881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183525, 33.558208, 32.097122>,  <45.445953, 33.774685, 32.307526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183525, 33.558208, 32.097122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699331, 0.697985, 0.154120,
		0.283738, 0.468968, -0.836398,
		-0.656071, -0.541189, -0.526009,
		44.986702, 33.395851, 31.939320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209724, 33.718410, 32.314812>,  <45.445953, 33.774685, 32.307526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209724, 33.718410, 32.314812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257381, 33.782669, 32.706730>,  <46.285976, 33.821224, 32.941879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257381, 33.782669, 32.706730>,  <46.209724, 33.718410, 32.314812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257381, 33.782669, 32.706730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058972, -0.986227, 0.154528,
		0.991124, 0.039369, -0.126978,
		0.119146, 0.160644, 0.979795,
		46.293125, 33.830864, 33.000668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633209, 33.201447, 32.495068>,  <46.209724, 33.718410, 32.314812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633209, 33.201447, 32.495068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473125, 33.309425, 32.845371>,  <46.377075, 33.374214, 33.055553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473125, 33.309425, 32.845371>,  <46.633209, 33.201447, 32.495068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473125, 33.309425, 32.845371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012866, -0.953882, 0.299907,
		0.916334, 0.131293, 0.378278,
		-0.400208, 0.269948, 0.875764,
		46.353062, 33.390411, 33.108101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073753, 32.891735, 32.887371>,  <46.633209, 33.201447, 32.495068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073753, 32.891735, 32.887371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763504, 32.971451, 33.126934>,  <46.577354, 33.019279, 33.270672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763504, 32.971451, 33.126934>,  <47.073753, 32.891735, 32.887371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763504, 32.971451, 33.126934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239788, -0.970745, 0.012481,
		0.583871, -0.133930, 0.800723,
		-0.775626, 0.199291, 0.598905,
		46.530815, 33.031239, 33.306606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083401, 32.517242, 33.468857>,  <47.073753, 32.891735, 32.887371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083401, 32.517242, 33.468857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697407, 32.597363, 33.401115>,  <46.465809, 32.645435, 33.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697407, 32.597363, 33.401115>,  <47.083401, 32.517242, 33.468857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697407, 32.597363, 33.401115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160715, -0.961766, -0.221758,
		-0.207299, -0.186775, 0.960282,
		-0.964986, 0.200302, -0.169355,
		46.407909, 32.657452, 33.350307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700668, 32.012722, 33.770958>,  <47.083401, 32.517242, 33.468857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700668, 32.012722, 33.770958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449989, 32.163456, 33.498123>,  <46.299583, 32.253895, 33.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449989, 32.163456, 33.498123>,  <46.700668, 32.012722, 33.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449989, 32.163456, 33.498123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178571, -0.921456, -0.345008,
		-0.758528, -0.094413, 0.644765,
		-0.626696, 0.376834, -0.682091,
		46.261982, 32.276505, 33.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115036, 31.604197, 33.434196>,  <46.700668, 32.012722, 33.770958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115036, 31.604197, 33.434196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734955, 31.647125, 33.551220>,  <45.506905, 31.672882, 33.621433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734955, 31.647125, 33.551220>,  <46.115036, 31.604197, 33.434196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734955, 31.647125, 33.551220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131681, 0.989170, 0.064822,
		-0.282432, 0.100119, -0.954048,
		-0.950206, 0.107322, 0.292557,
		45.449894, 31.679321, 33.638988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904724, 31.986691, 32.885590>,  <46.115036, 31.604197, 33.434196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904724, 31.986691, 32.885590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737179, 32.056976, 33.241943>,  <45.636650, 32.099148, 33.455757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737179, 32.056976, 33.241943>,  <45.904724, 31.986691, 32.885590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737179, 32.056976, 33.241943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455434, 0.889427, 0.038706,
		-0.785576, 0.421952, -0.452577,
		-0.418867, 0.175713, 0.890885,
		45.611519, 32.109692, 33.509209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355030, 32.575008, 32.863926>,  <45.904724, 31.986691, 32.885590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355030, 32.575008, 32.863926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588120, 32.503021, 33.180923>,  <45.727974, 32.459831, 33.371124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588120, 32.503021, 33.180923>,  <45.355030, 32.575008, 32.863926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588120, 32.503021, 33.180923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286113, 0.958169, 0.007207,
		-0.760641, 0.222544, 0.609835,
		0.582721, -0.179964, 0.792495,
		45.762936, 32.449032, 33.418671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192249, 33.100208, 33.402538>,  <45.355030, 32.575008, 32.863926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192249, 33.100208, 33.402538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562603, 32.955086, 33.444695>,  <45.784817, 32.868011, 33.469986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562603, 32.955086, 33.444695>,  <45.192249, 33.100208, 33.402538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562603, 32.955086, 33.444695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328290, 0.910660, 0.250845,
		-0.186981, -0.197656, 0.962273,
		0.925885, -0.362808, 0.105387,
		45.840370, 32.846245, 33.476311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438404, 33.282452, 34.075466>,  <45.192249, 33.100208, 33.402538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438404, 33.282452, 34.075466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754108, 33.227283, 33.836121>,  <45.943531, 33.194183, 33.692513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754108, 33.227283, 33.836121>,  <45.438404, 33.282452, 34.075466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754108, 33.227283, 33.836121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330584, 0.916620, 0.224772,
		0.517472, -0.375214, 0.769049,
		0.789263, -0.137922, -0.598365,
		45.990887, 33.185905, 33.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161655, 33.474289, 34.345631>,  <45.438404, 33.282452, 34.075466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161655, 33.474289, 34.345631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172924, 33.602673, 33.966961>,  <46.179684, 33.679703, 33.739758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172924, 33.602673, 33.966961>,  <46.161655, 33.474289, 34.345631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172924, 33.602673, 33.966961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583773, 0.763486, 0.276223,
		0.811428, -0.560423, -0.165860,
		0.028170, 0.320960, -0.946674,
		46.181374, 33.698959, 33.682961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919399, 33.444622, 34.562313>,  <46.161655, 33.474289, 34.345631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919399, 33.444622, 34.562313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168232, 33.711308, 34.398113>,  <47.317532, 33.871319, 34.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168232, 33.711308, 34.398113>,  <46.919399, 33.444622, 34.562313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168232, 33.711308, 34.398113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706435, 0.251890, -0.661438,
		-0.337590, 0.701458, 0.627686,
		0.622079, 0.666715, -0.410499,
		47.354855, 33.911324, 34.274963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663883, 34.148258, 34.504128>,  <46.919399, 33.444622, 34.562313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663883, 34.148258, 34.504128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916260, 34.060658, 34.206413>,  <47.067684, 34.008099, 34.027786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916260, 34.060658, 34.206413>,  <46.663883, 34.148258, 34.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916260, 34.060658, 34.206413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676006, 0.315561, -0.665911,
		0.380701, 0.923288, 0.051054,
		0.630938, -0.219000, -0.744282,
		47.105541, 33.994957, 33.983128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389061, 34.271244, 34.704376>,  <46.663883, 34.148258, 34.504128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389061, 34.271244, 34.704376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714401, 34.077274, 34.832947>,  <47.909603, 33.960892, 34.910088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714401, 34.077274, 34.832947>,  <47.389061, 34.271244, 34.704376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714401, 34.077274, 34.832947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288404, -0.143744, -0.946658,
		0.505263, 0.862661, 0.022941,
		0.813347, -0.484927, 0.321423,
		47.958405, 33.931797, 34.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892315, 34.518288, 34.244831>,  <47.389061, 34.271244, 34.704376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892315, 34.518288, 34.244831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.998192, 34.161789, 34.392132>,  <48.061718, 33.947887, 34.480511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.998192, 34.161789, 34.392132>,  <47.892315, 34.518288, 34.244831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.998192, 34.161789, 34.392132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328527, -0.275683, -0.903365,
		0.906645, 0.360097, 0.219828,
		0.264696, -0.891251, 0.368249,
		48.077602, 33.894413, 34.502605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.877373, 34.808929, 34.903454>,  <47.892315, 34.518288, 34.244831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.877373, 34.808929, 34.903454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735073, 35.159405, 35.033520>,  <47.649693, 35.369690, 35.111561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735073, 35.159405, 35.033520>,  <47.877373, 34.808929, 34.903454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735073, 35.159405, 35.033520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934224, -0.323749, -0.149710,
		-0.025903, -0.357037, 0.933731,
		-0.355746, 0.876191, 0.325167,
		47.628349, 35.422264, 35.131069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.159103, 33.374901, 21.892185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855244, 33.630402, 21.941063>,  <39.672928, 33.783703, 21.970388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855244, 33.630402, 21.941063>,  <40.159103, 33.374901, 21.892185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855244, 33.630402, 21.941063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008839, -0.198013, 0.980159,
		0.650277, 0.743494, 0.156066,
		-0.759645, 0.638755, 0.122192,
		39.627350, 33.822029, 21.977720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358582, 33.795345, 22.388821>,  <40.159103, 33.374901, 21.892185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358582, 33.795345, 22.388821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963108, 33.854416, 22.378309>,  <39.725822, 33.889858, 22.372004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963108, 33.854416, 22.378309>,  <40.358582, 33.795345, 22.388821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963108, 33.854416, 22.378309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037933, -0.076672, 0.996335,
		0.145121, 0.986059, 0.081406,
		-0.988687, 0.147677, -0.026278,
		39.666504, 33.898720, 22.370426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200504, 34.316452, 22.911854>,  <40.358582, 33.795345, 22.388821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200504, 34.316452, 22.911854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854984, 34.125080, 22.848660>,  <39.647675, 34.010258, 22.810743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854984, 34.125080, 22.848660>,  <40.200504, 34.316452, 22.911854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854984, 34.125080, 22.848660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194201, 0.026820, 0.980595,
		-0.464912, 0.877714, -0.116080,
		-0.863796, -0.478433, -0.157984,
		39.595844, 33.981548, 22.801264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600060, 34.750134, 23.283607>,  <40.200504, 34.316452, 22.911854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600060, 34.750134, 23.283607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.466789, 34.376640, 23.231234>,  <39.386826, 34.152546, 23.199808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.466789, 34.376640, 23.231234>,  <39.600060, 34.750134, 23.283607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466789, 34.376640, 23.231234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193774, -0.068097, 0.978680,
		-0.922738, 0.351444, -0.158244,
		-0.333175, -0.933729, -0.130936,
		39.366837, 34.096523, 23.191954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937519, 34.677212, 23.676851>,  <39.600060, 34.750134, 23.283607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937519, 34.677212, 23.676851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065189, 34.302280, 23.620922>,  <39.141792, 34.077324, 23.587364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065189, 34.302280, 23.620922>,  <38.937519, 34.677212, 23.676851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065189, 34.302280, 23.620922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113496, -0.184283, 0.976298,
		-0.940876, -0.295738, -0.165201,
		0.319173, -0.937325, -0.139823,
		39.160942, 34.021084, 23.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496925, 34.241085, 24.099642>,  <38.937519, 34.677212, 23.676851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496925, 34.241085, 24.099642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829269, 34.029392, 24.030842>,  <39.028675, 33.902378, 23.989561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829269, 34.029392, 24.030842>,  <38.496925, 34.241085, 24.099642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829269, 34.029392, 24.030842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022269, -0.277221, 0.960548,
		-0.556033, -0.801913, -0.218547,
		0.830862, -0.529230, -0.172002,
		39.078529, 33.870625, 23.979240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264927, 33.639355, 24.424000>,  <38.496925, 34.241085, 24.099642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264927, 33.639355, 24.424000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663139, 33.671520, 24.404213>,  <38.902069, 33.690819, 24.392342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663139, 33.671520, 24.404213>,  <38.264927, 33.639355, 24.424000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663139, 33.671520, 24.404213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060701, -0.143892, 0.987730,
		0.072308, -0.986321, -0.148130,
		0.995534, 0.080412, -0.049466,
		38.961800, 33.695644, 24.389374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566689, 33.258190, 24.956587>,  <38.264927, 33.639355, 24.424000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566689, 33.258190, 24.956587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894314, 33.468971, 24.865849>,  <39.090889, 33.595440, 24.811405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894314, 33.468971, 24.865849>,  <38.566689, 33.258190, 24.956587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894314, 33.468971, 24.865849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249306, 0.029203, 0.967984,
		0.516707, -0.849393, -0.107454,
		0.819061, 0.526953, -0.226848,
		39.140034, 33.627056, 24.797794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102741, 32.890900, 25.183517>,  <38.566689, 33.258190, 24.956587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102741, 32.890900, 25.183517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250278, 33.261650, 25.155657>,  <39.338799, 33.484100, 25.138941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250278, 33.261650, 25.155657>,  <39.102741, 32.890900, 25.183517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250278, 33.261650, 25.155657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426232, -0.102069, 0.898837,
		0.826005, -0.361214, -0.432713,
		0.368839, 0.926880, -0.069651,
		39.360931, 33.539715, 25.134762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725063, 32.867142, 25.535946>,  <39.102741, 32.890900, 25.183517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725063, 32.867142, 25.535946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653515, 33.260616, 25.528244>,  <39.610588, 33.496700, 25.523623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653515, 33.260616, 25.528244>,  <39.725063, 32.867142, 25.535946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653515, 33.260616, 25.528244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315233, 0.075839, 0.945979,
		0.932005, 0.163135, -0.323655,
		-0.178868, 0.983685, -0.019257,
		39.599854, 33.555721, 25.522467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366482, 33.298550, 25.670996>,  <39.725063, 32.867142, 25.535946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366482, 33.298550, 25.670996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041100, 33.506134, 25.776045>,  <39.845871, 33.630684, 25.839073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041100, 33.506134, 25.776045>,  <40.366482, 33.298550, 25.670996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041100, 33.506134, 25.776045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425860, 0.223895, 0.876650,
		0.396145, 0.824957, -0.403133,
		-0.813457, 0.518958, 0.262621,
		39.797062, 33.661823, 25.854832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656250, 33.952671, 25.992203>,  <40.366482, 33.298550, 25.670996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656250, 33.952671, 25.992203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276295, 33.914551, 26.111290>,  <40.048321, 33.891678, 26.182741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.276295, 33.914551, 26.111290>,  <40.656250, 33.952671, 25.992203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276295, 33.914551, 26.111290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248494, 0.347621, 0.904107,
		-0.189652, 0.932780, -0.306519,
		-0.949886, -0.095298, 0.297717,
		39.991329, 33.885960, 26.200605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499302, 34.546883, 26.310581>,  <40.656250, 33.952671, 25.992203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499302, 34.546883, 26.310581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188297, 34.338779, 26.451893>,  <40.001694, 34.213917, 26.536680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188297, 34.338779, 26.451893>,  <40.499302, 34.546883, 26.310581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188297, 34.338779, 26.451893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052488, 0.506122, 0.860863,
		-0.626674, 0.687874, -0.366208,
		-0.777512, -0.520259, 0.353278,
		39.955044, 34.182701, 26.557877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051262, 35.012283, 26.565733>,  <40.499302, 34.546883, 26.310581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051262, 35.012283, 26.565733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964836, 34.666035, 26.746408>,  <39.912983, 34.458286, 26.854815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964836, 34.666035, 26.746408>,  <40.051262, 35.012283, 26.565733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964836, 34.666035, 26.746408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192783, 0.415688, 0.888841,
		-0.957158, 0.279124, 0.077062,
		-0.216063, -0.865617, 0.451690,
		39.900017, 34.406349, 26.881916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627377, 35.288475, 27.119240>,  <40.051262, 35.012283, 26.565733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627377, 35.288475, 27.119240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762669, 34.920517, 27.198629>,  <39.843842, 34.699741, 27.246264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762669, 34.920517, 27.198629>,  <39.627377, 35.288475, 27.119240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762669, 34.920517, 27.198629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103788, 0.246082, 0.963676,
		-0.935323, -0.305343, 0.178706,
		0.338228, -0.919896, 0.198475,
		39.864136, 34.644547, 27.258171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415852, 35.107826, 27.913353>,  <39.627377, 35.288475, 27.119240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415852, 35.107826, 27.913353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703079, 34.841587, 27.832012>,  <39.875416, 34.681843, 27.783209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703079, 34.841587, 27.832012>,  <39.415852, 35.107826, 27.913353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703079, 34.841587, 27.832012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352406, 0.095772, 0.930934,
		-0.600156, -0.740137, 0.303333,
		0.718069, -0.665601, -0.203351,
		39.918499, 34.641907, 27.771008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538578, 34.791054, 28.530403>,  <39.415852, 35.107826, 27.913353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538578, 34.791054, 28.530403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869057, 34.664059, 28.344242>,  <40.067345, 34.587860, 28.232546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869057, 34.664059, 28.344242>,  <39.538578, 34.791054, 28.530403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869057, 34.664059, 28.344242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485601, -0.017526, 0.874005,
		-0.285643, -0.948100, 0.139692,
		0.826196, -0.317488, -0.465404,
		40.116917, 34.568813, 28.204620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771011, 34.118824, 28.855497>,  <39.538578, 34.791054, 28.530403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771011, 34.118824, 28.855497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081554, 34.309311, 28.690340>,  <40.267879, 34.423603, 28.591246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081554, 34.309311, 28.690340>,  <39.771011, 34.118824, 28.855497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081554, 34.309311, 28.690340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537749, -0.158750, 0.828025,
		0.328773, -0.864879, -0.379332,
		0.776360, 0.476218, -0.412895,
		40.314461, 34.452175, 28.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409328, 33.790218, 29.118071>,  <39.771011, 34.118824, 28.855497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409328, 33.790218, 29.118071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.534828, 34.151955, 29.002327>,  <40.610126, 34.368996, 28.932880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.534828, 34.151955, 29.002327>,  <40.409328, 33.790218, 29.118071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534828, 34.151955, 29.002327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549705, 0.075480, 0.831941,
		0.774200, -0.420082, -0.473440,
		0.313748, 0.904342, -0.289358,
		40.628952, 34.423256, 28.915520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124146, 33.802216, 29.213511>,  <40.409328, 33.790218, 29.118071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124146, 33.802216, 29.213511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009048, 34.184536, 29.189346>,  <40.939991, 34.413929, 29.174847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.009048, 34.184536, 29.189346>,  <41.124146, 33.802216, 29.213511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009048, 34.184536, 29.189346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542887, 0.214750, 0.811885,
		0.788974, 0.200815, -0.580684,
		-0.287741, 0.955801, -0.060412,
		40.922726, 34.471275, 29.171223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719936, 34.026478, 29.289074>,  <41.124146, 33.802216, 29.213511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719936, 34.026478, 29.289074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439468, 34.297970, 29.376419>,  <41.271187, 34.460865, 29.428827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439468, 34.297970, 29.376419>,  <41.719936, 34.026478, 29.289074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439468, 34.297970, 29.376419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567241, 0.345482, 0.747582,
		0.431966, 0.648049, -0.627246,
		-0.701172, 0.678730, 0.218364,
		41.229118, 34.501587, 29.441929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993080, 34.632511, 29.269857>,  <41.719936, 34.026478, 29.289074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993080, 34.632511, 29.269857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.683445, 34.691364, 29.516157>,  <41.497665, 34.726677, 29.663937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.683445, 34.691364, 29.516157>,  <41.993080, 34.632511, 29.269857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683445, 34.691364, 29.516157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597012, 0.493270, 0.632662,
		-0.210642, 0.857342, -0.469674,
		-0.774084, 0.147136, 0.615747,
		41.451221, 34.735504, 29.700882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125229, 35.105007, 29.781021>,  <41.993080, 34.632511, 29.269857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125229, 35.105007, 29.781021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.515316, 35.030109, 29.828167>,  <42.749367, 34.985168, 29.856455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.515316, 35.030109, 29.828167>,  <42.125229, 35.105007, 29.781021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515316, 35.030109, 29.828167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165763, 0.265490, -0.949757,
		0.146547, 0.945756, 0.289949,
		0.975216, -0.187246, 0.117865,
		42.807880, 34.973934, 29.863527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372845, 35.659248, 29.474918>,  <42.125229, 35.105007, 29.781021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372845, 35.659248, 29.474918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.658073, 35.379494, 29.494440>,  <42.829212, 35.211639, 29.506153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.658073, 35.379494, 29.494440>,  <42.372845, 35.659248, 29.474918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658073, 35.379494, 29.494440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324184, 0.267201, -0.907474,
		0.621638, 0.662915, 0.417265,
		0.713072, -0.699391, 0.048805,
		42.871994, 35.169678, 29.509081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917240, 35.936527, 29.062632>,  <42.372845, 35.659248, 29.474918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917240, 35.936527, 29.062632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.012138, 35.548229, 29.077398>,  <43.069077, 35.315250, 29.086258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.012138, 35.548229, 29.077398>,  <42.917240, 35.936527, 29.062632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012138, 35.548229, 29.077398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268812, 0.029086, -0.962753,
		0.933516, 0.238336, 0.267849,
		0.237250, -0.970747, 0.036915,
		43.083313, 35.257004, 29.088472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614326, 35.895546, 28.761803>,  <42.917240, 35.936527, 29.062632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614326, 35.895546, 28.761803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.422794, 35.546944, 28.719482>,  <43.307873, 35.337780, 28.694090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.422794, 35.546944, 28.719482>,  <43.614326, 35.895546, 28.761803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422794, 35.546944, 28.719482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384175, -0.099647, -0.917867,
		0.789386, -0.480151, 0.382525,
		-0.478832, -0.871508, -0.105802,
		43.279144, 35.285492, 28.687742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101379, 35.433617, 28.507309>,  <43.614326, 35.895546, 28.761803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101379, 35.433617, 28.507309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.758488, 35.246357, 28.421524>,  <43.552753, 35.134003, 28.370052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.758488, 35.246357, 28.421524>,  <44.101379, 35.433617, 28.507309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758488, 35.246357, 28.421524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356939, -0.240032, -0.902762,
		0.371151, -0.850423, 0.372863,
		-0.857229, -0.468151, -0.214462,
		43.501320, 35.105911, 28.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374527, 34.965492, 28.095623>,  <44.101379, 35.433617, 28.507309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374527, 34.965492, 28.095623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.978886, 34.950611, 28.038658>,  <43.741501, 34.941681, 28.004478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.978886, 34.950611, 28.038658>,  <44.374527, 34.965492, 28.095623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978886, 34.950611, 28.038658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143245, -0.465840, -0.873197,
		-0.033854, -0.884086, 0.466095,
		-0.989108, -0.037205, -0.142412,
		43.682152, 34.939449, 27.995935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204212, 34.182186, 27.850138>,  <44.374527, 34.965492, 28.095623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204212, 34.182186, 27.850138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.918617, 34.441887, 27.745298>,  <43.747261, 34.597706, 27.682394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.918617, 34.441887, 27.745298>,  <44.204212, 34.182186, 27.850138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918617, 34.441887, 27.745298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137333, -0.496932, -0.856854,
		-0.686560, -0.575786, 0.443966,
		-0.713985, 0.649253, -0.262099,
		43.704422, 34.636662, 27.666668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831749, 33.866501, 27.294699>,  <44.204212, 34.182186, 27.850138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831749, 33.866501, 27.294699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.687859, 34.239067, 27.272579>,  <43.601524, 34.462608, 27.259308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.687859, 34.239067, 27.272579>,  <43.831749, 33.866501, 27.294699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687859, 34.239067, 27.272579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471422, -0.232572, -0.850689,
		-0.805209, -0.279944, 0.522753,
		-0.359723, 0.931419, -0.055297,
		43.579941, 34.518494, 27.255991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109039, 33.840126, 27.086018>,  <43.831749, 33.866501, 27.294699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109039, 33.840126, 27.086018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.243465, 34.208664, 27.007862>,  <43.324123, 34.429787, 26.960968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.243465, 34.208664, 27.007862>,  <43.109039, 33.840126, 27.086018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243465, 34.208664, 27.007862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456353, -0.022182, -0.889522,
		-0.823892, 0.388109, 0.413005,
		0.336070, 0.921346, -0.195391,
		43.344288, 34.485069, 26.949245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527309, 34.171654, 26.830250>,  <43.109039, 33.840126, 27.086018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527309, 34.171654, 26.830250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810284, 34.413052, 26.683100>,  <42.980068, 34.557892, 26.594809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810284, 34.413052, 26.683100>,  <42.527309, 34.171654, 26.830250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810284, 34.413052, 26.683100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413747, -0.068383, -0.907820,
		-0.573021, 0.794429, 0.201318,
		0.707432, 0.603495, -0.367877,
		43.022514, 34.594101, 26.572737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195930, 34.803524, 26.474829>,  <42.527309, 34.171654, 26.830250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195930, 34.803524, 26.474829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.566689, 34.779434, 26.326649>,  <42.789143, 34.764980, 26.237741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.566689, 34.779434, 26.326649>,  <42.195930, 34.803524, 26.474829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566689, 34.779434, 26.326649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365425, 0.080249, -0.927375,
		0.085582, 0.994954, 0.052374,
		0.926898, -0.060228, -0.370448,
		42.844757, 34.761364, 26.215513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180779, 35.284206, 25.897116>,  <42.195930, 34.803524, 26.474829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180779, 35.284206, 25.897116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.495930, 35.043472, 25.844891>,  <42.685020, 34.899033, 25.813555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.495930, 35.043472, 25.844891>,  <42.180779, 35.284206, 25.897116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495930, 35.043472, 25.844891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243412, -0.109586, -0.963712,
		0.565686, 0.791068, -0.232834,
		0.787877, -0.601833, -0.130564,
		42.732292, 34.862923, 25.805721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442814, 35.554752, 25.288946>,  <42.180779, 35.284206, 25.897116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442814, 35.554752, 25.288946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.626160, 35.203667, 25.344845>,  <42.736168, 34.993015, 25.378384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.626160, 35.203667, 25.344845>,  <42.442814, 35.554752, 25.288946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626160, 35.203667, 25.344845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039013, -0.176956, -0.983445,
		0.887908, 0.445323, -0.115353,
		0.458363, -0.877710, 0.139748,
		42.763668, 34.940353, 25.386768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871349, 35.467087, 24.728748>,  <42.442814, 35.554752, 25.288946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871349, 35.467087, 24.728748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.837444, 35.088997, 24.854834>,  <42.817101, 34.862141, 24.930485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.837444, 35.088997, 24.854834>,  <42.871349, 35.467087, 24.728748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837444, 35.088997, 24.854834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213851, -0.291720, -0.932291,
		0.973182, -0.146436, -0.177409,
		-0.084767, -0.945228, 0.315212,
		42.812016, 34.805428, 24.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251667, 35.031631, 24.211676>,  <42.871349, 35.467087, 24.728748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251667, 35.031631, 24.211676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.016159, 34.773148, 24.405897>,  <42.874855, 34.618057, 24.522430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.016159, 34.773148, 24.405897>,  <43.251667, 35.031631, 24.211676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016159, 34.773148, 24.405897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394481, -0.294591, -0.870403,
		0.705503, -0.704009, -0.081471,
		-0.588771, -0.646211, 0.485552,
		42.839527, 34.579285, 24.551563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417931, 34.471581, 23.906456>,  <43.251667, 35.031631, 24.211676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417931, 34.471581, 23.906456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.052197, 34.417564, 24.059170>,  <42.832756, 34.385155, 24.150799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.052197, 34.417564, 24.059170>,  <43.417931, 34.471581, 23.906456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052197, 34.417564, 24.059170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365321, -0.131761, -0.921510,
		0.174745, -0.982040, 0.071141,
		-0.914333, -0.135040, 0.381784,
		42.777897, 34.377052, 24.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206635, 33.930546, 23.592081>,  <43.417931, 34.471581, 23.906456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206635, 33.930546, 23.592081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.870422, 34.118877, 23.699284>,  <42.668694, 34.231876, 23.763605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.870422, 34.118877, 23.699284>,  <43.206635, 33.930546, 23.592081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870422, 34.118877, 23.699284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334984, -0.062884, -0.940123,
		-0.425784, -0.879981, 0.210576,
		-0.840532, 0.470829, 0.268004,
		42.618263, 34.260124, 23.779684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655735, 33.450905, 23.337049>,  <43.206635, 33.930546, 23.592081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655735, 33.450905, 23.337049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.502697, 33.815712, 23.396158>,  <42.410873, 34.034595, 23.431623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.502697, 33.815712, 23.396158>,  <42.655735, 33.450905, 23.337049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502697, 33.815712, 23.396158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339848, 0.009809, -0.940429,
		-0.859141, -0.410025, 0.306196,
		-0.382596, 0.912022, 0.147773,
		42.387917, 34.089317, 23.440491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.032162, 33.498600, 22.893694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052097, 33.889820, 22.974613>,  <42.064060, 34.124554, 23.023165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.052097, 33.889820, 22.974613>,  <42.032162, 33.498600, 22.893694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052097, 33.889820, 22.974613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097719, 0.206354, -0.973586,
		-0.993965, 0.028759, 0.105860,
		0.049844, 0.978055, 0.202298,
		42.067051, 34.183235, 23.035303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441818, 33.719933, 22.704237>,  <42.032162, 33.498600, 22.893694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441818, 33.719933, 22.704237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691479, 34.032291, 22.694115>,  <41.841274, 34.219707, 22.688042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.691479, 34.032291, 22.694115>,  <41.441818, 33.719933, 22.704237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691479, 34.032291, 22.694115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336289, 0.239269, -0.910857,
		-0.705231, 0.577018, 0.411946,
		0.624147, 0.780897, -0.025305,
		41.878723, 34.266560, 22.686523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092953, 34.335594, 22.477083>,  <41.441818, 33.719933, 22.704237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092953, 34.335594, 22.477083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474754, 34.422913, 22.395832>,  <41.703835, 34.475304, 22.347082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474754, 34.422913, 22.395832>,  <41.092953, 34.335594, 22.477083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474754, 34.422913, 22.395832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236721, 0.140511, -0.961363,
		-0.181323, 0.965713, 0.185795,
		0.954508, 0.218299, -0.203127,
		41.761108, 34.488403, 22.334894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088047, 34.805046, 21.886086>,  <41.092953, 34.335594, 22.477083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088047, 34.805046, 21.886086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453426, 34.642296, 21.882914>,  <41.672653, 34.544647, 21.881010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453426, 34.642296, 21.882914>,  <41.088047, 34.805046, 21.886086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453426, 34.642296, 21.882914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012539, -0.008665, -0.999884,
		0.406761, 0.913442, -0.013017,
		0.913449, -0.406877, -0.007929,
		41.727463, 34.520233, 21.880535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621414, 35.218910, 21.409847>,  <41.088047, 34.805046, 21.886086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621414, 35.218910, 21.409847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764488, 34.847763, 21.452034>,  <41.850330, 34.625076, 21.477346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764488, 34.847763, 21.452034>,  <41.621414, 35.218910, 21.409847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764488, 34.847763, 21.452034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278513, -0.001804, -0.960431,
		0.891344, 0.372902, 0.257778,
		0.357682, -0.927869, 0.105466,
		41.871792, 34.569401, 21.483673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063030, 35.210178, 20.878372>,  <41.621414, 35.218910, 21.409847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063030, 35.210178, 20.878372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042019, 34.819725, 20.962664>,  <42.029411, 34.585453, 21.013239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042019, 34.819725, 20.962664>,  <42.063030, 35.210178, 20.878372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042019, 34.819725, 20.962664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210938, -0.217105, -0.953085,
		0.976087, -0.005614, 0.217308,
		-0.052529, -0.976132, 0.210729,
		42.026260, 34.526886, 21.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534203, 34.916515, 20.398413>,  <42.063030, 35.210178, 20.878372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534203, 34.916515, 20.398413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306717, 34.617104, 20.534809>,  <42.170227, 34.437458, 20.616648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306717, 34.617104, 20.534809>,  <42.534203, 34.916515, 20.398413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306717, 34.617104, 20.534809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028810, -0.432435, -0.901205,
		0.822031, -0.502704, 0.267496,
		-0.568714, -0.748525, 0.340991,
		42.136105, 34.392548, 20.637106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835258, 34.227524, 20.224903>,  <42.534203, 34.916515, 20.398413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835258, 34.227524, 20.224903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443020, 34.166027, 20.273554>,  <42.207676, 34.129128, 20.302744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443020, 34.166027, 20.273554>,  <42.835258, 34.227524, 20.224903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443020, 34.166027, 20.273554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080333, -0.250801, -0.964700,
		0.178822, -0.955752, 0.233584,
		-0.980597, -0.153745, 0.121628,
		42.148842, 34.119904, 20.310041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746029, 33.624737, 19.874872>,  <42.835258, 34.227524, 20.224903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746029, 33.624737, 19.874872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396049, 33.817638, 19.892296>,  <42.186062, 33.933380, 19.902750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.396049, 33.817638, 19.892296>,  <42.746029, 33.624737, 19.874872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396049, 33.817638, 19.892296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160209, -0.203421, -0.965895,
		-0.456949, -0.852085, 0.255244,
		-0.874946, 0.482257, 0.043559,
		42.133564, 33.962315, 19.905363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264721, 33.158253, 19.563101>,  <42.746029, 33.624737, 19.874872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264721, 33.158253, 19.563101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075642, 33.509926, 19.539145>,  <41.962193, 33.720932, 19.524771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.075642, 33.509926, 19.539145>,  <42.264721, 33.158253, 19.563101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075642, 33.509926, 19.539145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226729, -0.187014, -0.955835,
		-0.851558, -0.438241, 0.287738,
		-0.472697, 0.879188, -0.059891,
		41.933834, 33.773682, 19.521177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792282, 33.034966, 19.115746>,  <42.264721, 33.158253, 19.563101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792282, 33.034966, 19.115746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800396, 33.434864, 19.119791>,  <41.805264, 33.674801, 19.122219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800396, 33.434864, 19.119791>,  <41.792282, 33.034966, 19.115746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800396, 33.434864, 19.119791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107734, 0.012245, -0.994105,
		-0.993973, 0.019076, 0.107954,
		0.020286, 0.999743, 0.010116,
		41.806480, 33.734787, 19.122826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393581, 33.259907, 18.510202>,  <41.792282, 33.034966, 19.115746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393581, 33.259907, 18.510202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627796, 33.573387, 18.593100>,  <41.768326, 33.761475, 18.642838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627796, 33.573387, 18.593100>,  <41.393581, 33.259907, 18.510202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627796, 33.573387, 18.593100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036355, 0.280782, -0.959083,
		-0.809827, 0.554048, 0.192901,
		0.585541, 0.783705, 0.207242,
		41.803459, 33.808498, 18.655272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098461, 33.854256, 18.053997>,  <41.393581, 33.259907, 18.510202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098461, 33.854256, 18.053997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454567, 34.000282, 18.162924>,  <41.668232, 34.087898, 18.228279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454567, 34.000282, 18.162924>,  <41.098461, 33.854256, 18.053997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454567, 34.000282, 18.162924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199666, 0.224555, -0.953786,
		-0.409344, 0.903495, 0.127022,
		0.890264, 0.365065, 0.272317,
		41.721645, 34.109802, 18.244619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028236, 34.467766, 17.754553>,  <41.098461, 33.854256, 18.053997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028236, 34.467766, 17.754553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418015, 34.381626, 17.780125>,  <41.651882, 34.329945, 17.795467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.418015, 34.381626, 17.780125>,  <41.028236, 34.467766, 17.754553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418015, 34.381626, 17.780125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119941, 0.258143, -0.958633,
		0.189935, 0.941800, 0.277375,
		0.974443, -0.215347, 0.063930,
		41.710346, 34.317020, 17.799303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329018, 34.926182, 17.397760>,  <41.028236, 34.467766, 17.754553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329018, 34.926182, 17.397760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.629055, 34.662697, 17.421297>,  <41.809078, 34.504604, 17.435419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.629055, 34.662697, 17.421297>,  <41.329018, 34.926182, 17.397760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629055, 34.662697, 17.421297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386919, 0.364946, -0.846823,
		0.536338, 0.657961, 0.528611,
		0.750090, -0.658713, 0.058843,
		41.854080, 34.465084, 17.438950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974976, 35.256962, 17.490940>,  <41.329018, 34.926182, 17.397760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974976, 35.256962, 17.490940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.092899, 34.900234, 17.353680>,  <42.163654, 34.686199, 17.271324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.092899, 34.900234, 17.353680>,  <41.974976, 35.256962, 17.490940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092899, 34.900234, 17.353680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368601, 0.437451, -0.820225,
		0.881603, 0.115321, 0.457688,
		0.294805, -0.891817, -0.343150,
		42.181339, 34.632690, 17.250734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792259, 35.265236, 17.263025>,  <41.974976, 35.256962, 17.490940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792259, 35.265236, 17.263025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.597843, 34.978813, 17.062616>,  <42.481194, 34.806957, 16.942371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.597843, 34.978813, 17.062616>,  <42.792259, 35.265236, 17.263025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597843, 34.978813, 17.062616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443191, 0.292156, -0.847482,
		0.753225, -0.633959, 0.175352,
		-0.486039, -0.716060, -0.501024,
		42.452030, 34.763996, 16.912310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328712, 35.180046, 16.770315>,  <42.792259, 35.265236, 17.263025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328712, 35.180046, 16.770315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999584, 34.996086, 16.636772>,  <42.802109, 34.885712, 16.556646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999584, 34.996086, 16.636772>,  <43.328712, 35.180046, 16.770315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999584, 34.996086, 16.636772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201012, 0.313972, -0.927909,
		0.531568, -0.830611, -0.165897,
		-0.822818, -0.459900, -0.333860,
		42.752739, 34.858116, 16.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466282, 34.934235, 16.114124>,  <43.328712, 35.180046, 16.770315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466282, 34.934235, 16.114124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.072262, 35.002476, 16.123663>,  <42.835850, 35.043419, 16.129387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.072262, 35.002476, 16.123663>,  <43.466282, 34.934235, 16.114124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072262, 35.002476, 16.123663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031318, 0.313501, -0.949071,
		-0.169387, -0.934138, -0.314158,
		-0.985052, 0.170599, 0.023848,
		42.776745, 35.053654, 16.130817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338776, 34.799900, 15.434129>,  <43.466282, 34.934235, 16.114124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338776, 34.799900, 15.434129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999393, 34.973904, 15.554719>,  <42.795765, 35.078308, 15.627073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.999393, 34.973904, 15.554719>,  <43.338776, 34.799900, 15.434129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999393, 34.973904, 15.554719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292815, 0.088687, -0.952047,
		-0.440891, -0.896046, 0.052132,
		-0.848455, 0.435014, 0.301476,
		42.744858, 35.104408, 15.645162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790283, 34.463524, 15.040611>,  <43.338776, 34.799900, 15.434129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790283, 34.463524, 15.040611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682133, 34.820160, 15.185915>,  <42.617245, 35.034142, 15.273097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682133, 34.820160, 15.185915>,  <42.790283, 34.463524, 15.040611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682133, 34.820160, 15.185915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142795, 0.336002, -0.930974,
		-0.952107, -0.303582, 0.036469,
		-0.270373, 0.891594, 0.363259,
		42.601021, 35.087639, 15.294893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394009, 34.649906, 14.504766>,  <42.790283, 34.463524, 15.040611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394009, 34.649906, 14.504766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448601, 34.997028, 14.695881>,  <42.481358, 35.205303, 14.810550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448601, 34.997028, 14.695881>,  <42.394009, 34.649906, 14.504766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448601, 34.997028, 14.695881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017564, 0.484343, -0.874702,
		-0.990487, 0.110989, 0.081346,
		0.136481, 0.867810, 0.477786,
		42.489544, 35.257370, 14.839216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709946, 34.548000, 14.560028>,  <42.394009, 34.649906, 14.504766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709946, 34.548000, 14.560028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.665546, 34.915764, 14.409101>,  <41.638905, 35.136421, 14.318545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.665546, 34.915764, 14.409101>,  <41.709946, 34.548000, 14.560028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665546, 34.915764, 14.409101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684834, 0.204369, 0.699454,
		0.720195, 0.336040, 0.606957,
		-0.111001, 0.919408, -0.377317,
		41.632248, 35.191586, 14.295906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648849, 34.965729, 15.099897>,  <41.709946, 34.548000, 14.560028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648849, 34.965729, 15.099897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541027, 35.232327, 14.821870>,  <41.476334, 35.392284, 14.655053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541027, 35.232327, 14.821870>,  <41.648849, 34.965729, 15.099897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541027, 35.232327, 14.821870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554209, 0.482903, 0.677980,
		0.787524, 0.567965, 0.239211,
		-0.269553, 0.666498, -0.695069,
		41.460159, 35.432278, 14.613349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839165, 35.602589, 15.301588>,  <41.648849, 34.965729, 15.099897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839165, 35.602589, 15.301588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520115, 35.639065, 15.063102>,  <41.328686, 35.660950, 14.920010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520115, 35.639065, 15.063102>,  <41.839165, 35.602589, 15.301588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520115, 35.639065, 15.063102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544523, 0.316244, 0.776842,
		0.259393, 0.944285, -0.202587,
		-0.797627, 0.091194, -0.596217,
		41.280827, 35.666424, 14.884236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531456, 36.217033, 15.488173>,  <41.839165, 35.602589, 15.301588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531456, 36.217033, 15.488173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240211, 36.031567, 15.286237>,  <41.065464, 35.920288, 15.165075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240211, 36.031567, 15.286237>,  <41.531456, 36.217033, 15.488173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240211, 36.031567, 15.286237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606197, 0.091785, 0.790000,
		-0.319957, 0.881245, -0.347902,
		-0.728116, -0.463663, -0.504841,
		41.021778, 35.892467, 15.134785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976612, 36.707050, 15.499824>,  <41.531456, 36.217033, 15.488173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976612, 36.707050, 15.499824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808018, 36.348690, 15.443660>,  <40.706860, 36.133675, 15.409962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808018, 36.348690, 15.443660>,  <40.976612, 36.707050, 15.499824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808018, 36.348690, 15.443660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554280, 0.131974, 0.821801,
		-0.717719, 0.424207, -0.552203,
		-0.421490, -0.895897, -0.140409,
		40.681572, 36.079922, 15.401537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290714, 36.838799, 15.511000>,  <40.976612, 36.707050, 15.499824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290714, 36.838799, 15.511000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310349, 36.443993, 15.572175>,  <40.322128, 36.207108, 15.608880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310349, 36.443993, 15.572175>,  <40.290714, 36.838799, 15.511000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310349, 36.443993, 15.572175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529483, 0.104122, 0.841906,
		-0.846899, -0.122303, -0.517497,
		0.049085, -0.987016, 0.152938,
		40.325073, 36.147888, 15.618056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617912, 36.649616, 15.732925>,  <40.290714, 36.838799, 15.511000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617912, 36.649616, 15.732925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827789, 36.327095, 15.842163>,  <39.953716, 36.133583, 15.907705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827789, 36.327095, 15.842163>,  <39.617912, 36.649616, 15.732925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827789, 36.327095, 15.842163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393052, 0.055106, 0.917864,
		-0.755122, -0.588935, -0.288003,
		0.524692, -0.806299, 0.273094,
		39.985195, 36.085205, 15.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142006, 36.171333, 15.970407>,  <39.617912, 36.649616, 15.732925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142006, 36.171333, 15.970407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.488243, 36.082169, 16.149767>,  <39.695984, 36.028667, 16.257383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.488243, 36.082169, 16.149767>,  <39.142006, 36.171333, 15.970407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488243, 36.082169, 16.149767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443973, 0.072518, 0.893101,
		-0.231603, -0.972137, -0.036198,
		0.865591, -0.222916, 0.448398,
		39.747921, 36.015293, 16.284286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983494, 35.779831, 16.565773>,  <39.142006, 36.171333, 15.970407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983494, 35.779831, 16.565773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.359509, 35.867683, 16.670149>,  <39.585117, 35.920395, 16.732775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.359509, 35.867683, 16.670149>,  <38.983494, 35.779831, 16.565773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359509, 35.867683, 16.670149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265972, -0.006876, 0.963956,
		0.213511, -0.975558, 0.051952,
		0.940038, 0.219633, 0.260940,
		39.641521, 35.933575, 16.748430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137131, 35.311382, 16.960758>,  <38.983494, 35.779831, 16.565773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137131, 35.311382, 16.960758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400135, 35.590115, 17.075375>,  <39.557938, 35.757355, 17.144144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400135, 35.590115, 17.075375>,  <39.137131, 35.311382, 16.960758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400135, 35.590115, 17.075375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154646, -0.247394, 0.956494,
		0.737403, -0.673218, -0.054902,
		0.657511, 0.696832, 0.286539,
		39.597389, 35.799164, 17.161337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666538, 34.969669, 17.259663>,  <39.137131, 35.311382, 16.960758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666538, 34.969669, 17.259663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719925, 35.343563, 17.391390>,  <39.751957, 35.567902, 17.470427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.719925, 35.343563, 17.391390>,  <39.666538, 34.969669, 17.259663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719925, 35.343563, 17.391390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028559, -0.328527, 0.944063,
		0.990642, -0.135405, -0.017151,
		0.133466, 0.934738, 0.329319,
		39.759964, 35.623985, 17.490185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203220, 34.928116, 17.769590>,  <39.666538, 34.969669, 17.259663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203220, 34.928116, 17.769590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008720, 35.270443, 17.840170>,  <39.892021, 35.475838, 17.882519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008720, 35.270443, 17.840170>,  <40.203220, 34.928116, 17.769590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008720, 35.270443, 17.840170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055804, -0.231932, 0.971130,
		0.872035, 0.462368, 0.160535,
		-0.486253, 0.855818, 0.176450,
		39.862846, 35.527187, 17.893105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517040, 35.277466, 18.199600>,  <40.203220, 34.928116, 17.769590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517040, 35.277466, 18.199600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141804, 35.408142, 18.245653>,  <39.916660, 35.486546, 18.273285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141804, 35.408142, 18.245653>,  <40.517040, 35.277466, 18.199600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141804, 35.408142, 18.245653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026346, -0.264135, 0.964126,
		0.345377, 0.907474, 0.239176,
		-0.938094, 0.326686, 0.115135,
		39.860374, 35.506149, 18.280193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500011, 35.482342, 18.922401>,  <40.517040, 35.277466, 18.199600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500011, 35.482342, 18.922401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106308, 35.483997, 18.851732>,  <39.870087, 35.484989, 18.809330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106308, 35.483997, 18.851732>,  <40.500011, 35.482342, 18.922401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106308, 35.483997, 18.851732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164002, -0.393801, 0.904447,
		-0.065834, 0.919186, 0.388281,
		-0.984261, 0.004135, -0.176674,
		39.811031, 35.485237, 18.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158199, 35.768097, 19.532497>,  <40.500011, 35.482342, 18.922401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158199, 35.768097, 19.532497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868717, 35.552166, 19.360529>,  <39.695026, 35.422607, 19.257347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868717, 35.552166, 19.360529>,  <40.158199, 35.768097, 19.532497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868717, 35.552166, 19.360529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125833, -0.509312, 0.851333,
		-0.678539, 0.670214, 0.300664,
		-0.723707, -0.539829, -0.429923,
		39.651604, 35.390217, 19.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474056, 35.893879, 19.837784>,  <40.158199, 35.768097, 19.532497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474056, 35.893879, 19.837784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452293, 35.538162, 19.656151>,  <39.439236, 35.324730, 19.547171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452293, 35.538162, 19.656151>,  <39.474056, 35.893879, 19.837784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452293, 35.538162, 19.656151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380102, -0.402075, 0.832981,
		-0.923343, 0.217918, -0.316148,
		-0.054406, -0.889296, -0.454084,
		39.435970, 35.271374, 19.519926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946281, 35.621635, 20.120075>,  <39.474056, 35.893879, 19.837784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946281, 35.621635, 20.120075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118294, 35.299141, 19.957563>,  <39.221500, 35.105644, 19.860056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118294, 35.299141, 19.957563>,  <38.946281, 35.621635, 20.120075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118294, 35.299141, 19.957563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298433, -0.551659, 0.778852,
		-0.852063, -0.213684, -0.477837,
		0.430031, -0.806233, -0.406278,
		39.247303, 35.057270, 19.835680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515392, 35.091766, 20.213827>,  <38.946281, 35.621635, 20.120075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515392, 35.091766, 20.213827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864498, 34.909264, 20.144421>,  <39.073963, 34.799763, 20.102776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864498, 34.909264, 20.144421>,  <38.515392, 35.091766, 20.213827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864498, 34.909264, 20.144421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132064, -0.562915, 0.815896,
		-0.469931, -0.689172, -0.551549,
		0.872768, -0.456255, -0.173516,
		39.126328, 34.772388, 20.092365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388893, 34.375305, 20.216663>,  <38.515392, 35.091766, 20.213827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388893, 34.375305, 20.216663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768829, 34.443535, 20.321512>,  <38.996792, 34.484474, 20.384422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768829, 34.443535, 20.321512>,  <38.388893, 34.375305, 20.216663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768829, 34.443535, 20.321512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098739, -0.631715, 0.768887,
		0.296740, -0.756201, -0.583185,
		0.949840, 0.170576, 0.262122,
		39.053780, 34.494709, 20.400148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668354, 33.719898, 20.526730>,  <38.388893, 34.375305, 20.216663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668354, 33.719898, 20.526730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939369, 33.980907, 20.662470>,  <39.101978, 34.137512, 20.743914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939369, 33.980907, 20.662470>,  <38.668354, 33.719898, 20.526730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939369, 33.980907, 20.662470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084903, -0.527700, 0.845177,
		0.730569, -0.543829, -0.412939,
		0.677540, 0.652520, 0.339349,
		39.142632, 34.176662, 20.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204861, 33.341236, 20.842501>,  <38.668354, 33.719898, 20.526730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204861, 33.341236, 20.842501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286423, 33.698177, 21.003563>,  <39.335361, 33.912342, 21.100201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286423, 33.698177, 21.003563>,  <39.204861, 33.341236, 20.842501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286423, 33.698177, 21.003563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068245, -0.423252, 0.903438,
		0.976609, -0.156736, -0.147201,
		0.203904, 0.892352, 0.402655,
		39.347595, 33.965881, 21.124359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725639, 33.253059, 21.240486>,  <39.204861, 33.341236, 20.842501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725639, 33.253059, 21.240486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588879, 33.596741, 21.392733>,  <39.506821, 33.802952, 21.484079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588879, 33.596741, 21.392733>,  <39.725639, 33.253059, 21.240486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588879, 33.596741, 21.392733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092056, -0.372452, 0.923474,
		0.935216, 0.350776, 0.048247,
		-0.341903, 0.859206, 0.380614,
		39.486309, 33.854504, 21.506916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.762936, 34.077374, 25.617327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454453, 34.325108, 25.676201>,  <43.269363, 34.473747, 25.711525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454453, 34.325108, 25.676201>,  <43.762936, 34.077374, 25.617327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454453, 34.325108, 25.676201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375126, 0.255343, 0.891112,
		0.514315, 0.742445, -0.429251,
		-0.771208, 0.619335, 0.147183,
		43.223091, 34.510906, 25.720356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056004, 34.637291, 25.818943>,  <43.762936, 34.077374, 25.617327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056004, 34.637291, 25.818943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672863, 34.665558, 25.930323>,  <43.442978, 34.682518, 25.997150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672863, 34.665558, 25.930323>,  <44.056004, 34.637291, 25.818943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672863, 34.665558, 25.930323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283673, 0.385690, 0.877936,
		-0.045357, 0.919918, -0.389478,
		-0.957848, 0.070664, 0.278450,
		43.385509, 34.686756, 26.013857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060818, 35.230930, 26.089119>,  <44.056004, 34.637291, 25.818943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060818, 35.230930, 26.089119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759464, 35.022488, 26.249546>,  <43.578651, 34.897423, 26.345802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759464, 35.022488, 26.249546>,  <44.060818, 35.230930, 26.089119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759464, 35.022488, 26.249546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234601, 0.356783, 0.904250,
		-0.614306, 0.775341, -0.146543,
		-0.753386, -0.521107, 0.401070,
		43.533447, 34.866154, 26.369867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760906, 35.670147, 26.624418>,  <44.060818, 35.230930, 26.089119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760906, 35.670147, 26.624418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646568, 35.299908, 26.723663>,  <43.577965, 35.077763, 26.783211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646568, 35.299908, 26.723663>,  <43.760906, 35.670147, 26.624418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646568, 35.299908, 26.723663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124326, 0.220909, 0.967338,
		-0.950177, 0.307353, 0.051931,
		-0.285842, -0.925599, 0.248115,
		43.560814, 35.022228, 26.798098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202301, 35.709900, 27.026638>,  <43.760906, 35.670147, 26.624418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202301, 35.709900, 27.026638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316521, 35.332455, 27.093637>,  <43.385052, 35.105988, 27.133837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316521, 35.332455, 27.093637>,  <43.202301, 35.709900, 27.026638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316521, 35.332455, 27.093637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277118, 0.086012, 0.956978,
		-0.917426, -0.319677, -0.236932,
		0.285545, -0.943615, 0.167498,
		43.402184, 35.049370, 27.143887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630974, 35.395638, 27.418465>,  <43.202301, 35.709900, 27.026638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630974, 35.395638, 27.418465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959648, 35.174400, 27.473484>,  <43.156853, 35.041656, 27.506496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959648, 35.174400, 27.473484>,  <42.630974, 35.395638, 27.418465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959648, 35.174400, 27.473484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224366, -0.092053, 0.970147,
		-0.523921, -0.828018, -0.199735,
		0.821685, -0.553094, 0.137550,
		43.206154, 35.008472, 27.514750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350430, 34.786003, 27.688745>,  <42.630974, 35.395638, 27.418465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350430, 34.786003, 27.688745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734722, 34.826237, 27.792187>,  <42.965298, 34.850376, 27.854252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734722, 34.826237, 27.792187>,  <42.350430, 34.786003, 27.688745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734722, 34.826237, 27.792187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263150, 0.034687, 0.964131,
		0.088008, -0.994324, 0.059794,
		0.960733, 0.100586, 0.258603,
		43.022942, 34.856415, 27.869768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493034, 34.361576, 28.225595>,  <42.350430, 34.786003, 27.688745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493034, 34.361576, 28.225595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792404, 34.625050, 28.256557>,  <42.972027, 34.783134, 28.275135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792404, 34.625050, 28.256557>,  <42.493034, 34.361576, 28.225595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792404, 34.625050, 28.256557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091813, -0.012689, 0.995696,
		0.656831, -0.752312, 0.050979,
		0.748427, 0.658684, 0.077406,
		43.016933, 34.822655, 28.279779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838772, 34.007076, 28.774628>,  <42.493034, 34.361576, 28.225595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838772, 34.007076, 28.774628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006500, 34.369728, 28.755913>,  <43.107136, 34.587318, 28.744684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006500, 34.369728, 28.755913>,  <42.838772, 34.007076, 28.774628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006500, 34.369728, 28.755913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134149, -0.010909, 0.990901,
		0.897874, -0.421777, -0.126199,
		0.419316, 0.906634, -0.046786,
		43.132294, 34.641720, 28.741877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424263, 34.008614, 29.191622>,  <42.838772, 34.007076, 28.774628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424263, 34.008614, 29.191622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335945, 34.397812, 29.164694>,  <43.282955, 34.631332, 29.148537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335945, 34.397812, 29.164694>,  <43.424263, 34.008614, 29.191622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335945, 34.397812, 29.164694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026671, 0.075020, 0.996825,
		0.974957, 0.218294, -0.042515,
		-0.220791, 0.972995, -0.067319,
		43.269707, 34.689709, 29.144499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854523, 34.358597, 29.602514>,  <43.424263, 34.008614, 29.191622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854523, 34.358597, 29.602514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544704, 34.608147, 29.560822>,  <43.358814, 34.757877, 29.535807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544704, 34.608147, 29.560822>,  <43.854523, 34.358597, 29.602514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544704, 34.608147, 29.560822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003006, 0.161154, 0.986925,
		0.632515, 0.764728, -0.122946,
		-0.774542, 0.623875, -0.104231,
		43.312344, 34.795311, 29.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073765, 35.170403, 29.813751>,  <43.854523, 34.358597, 29.602514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073765, 35.170403, 29.813751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691883, 35.062653, 29.864309>,  <43.462753, 34.998001, 29.894644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691883, 35.062653, 29.864309>,  <44.073765, 35.170403, 29.813751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691883, 35.062653, 29.864309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095966, 0.123325, 0.987715,
		-0.281656, 0.955105, -0.091888,
		-0.954704, -0.269378, 0.126393,
		43.405472, 34.981838, 29.902227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741917, 35.525490, 30.422878>,  <44.073765, 35.170403, 29.813751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741917, 35.525490, 30.422878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477676, 35.234264, 30.349632>,  <43.319130, 35.059528, 30.305685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477676, 35.234264, 30.349632>,  <43.741917, 35.525490, 30.422878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477676, 35.234264, 30.349632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122785, -0.135852, 0.983091,
		-0.740625, 0.671918, 0.000350,
		-0.660604, -0.728059, -0.183117,
		43.279495, 35.015846, 30.294697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216320, 35.734055, 30.838032>,  <43.741917, 35.525490, 30.422878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216320, 35.734055, 30.838032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252499, 35.340504, 30.776325>,  <43.274208, 35.104374, 30.739302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252499, 35.340504, 30.776325>,  <43.216320, 35.734055, 30.838032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252499, 35.340504, 30.776325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245169, -0.172133, 0.954077,
		-0.965252, -0.048475, -0.256787,
		0.090451, -0.983880, -0.154267,
		43.279633, 35.045341, 30.730045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384930, 36.037327, 31.485420>,  <43.216320, 35.734055, 30.838032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384930, 36.037327, 31.485420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478825, 36.422611, 31.537771>,  <43.535160, 36.653782, 31.569181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478825, 36.422611, 31.537771>,  <43.384930, 36.037327, 31.485420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478825, 36.422611, 31.537771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454576, 0.227786, -0.861089,
		-0.859220, 0.142635, 0.491321,
		0.234737, 0.963208, 0.130880,
		43.549244, 36.711575, 31.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779633, 36.460453, 31.354900>,  <43.384930, 36.037327, 31.485420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779633, 36.460453, 31.354900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085133, 36.714886, 31.310915>,  <43.268433, 36.867546, 31.284523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085133, 36.714886, 31.310915>,  <42.779633, 36.460453, 31.354900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085133, 36.714886, 31.310915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422507, 0.363796, -0.830145,
		-0.488034, 0.680482, 0.546596,
		0.763748, 0.636080, -0.109963,
		43.314259, 36.905708, 31.277925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491898, 37.030609, 31.021828>,  <42.779633, 36.460453, 31.354900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491898, 37.030609, 31.021828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880882, 37.078659, 30.941936>,  <43.114273, 37.107487, 30.894001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880882, 37.078659, 30.941936>,  <42.491898, 37.030609, 31.021828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880882, 37.078659, 30.941936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230045, 0.357137, -0.905280,
		-0.037413, 0.926296, 0.374935,
		0.972461, 0.120121, -0.199728,
		43.172619, 37.114697, 30.882017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566856, 37.760441, 30.662817>,  <42.491898, 37.030609, 31.021828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566856, 37.760441, 30.662817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911854, 37.571732, 30.589569>,  <43.118855, 37.458508, 30.545620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.911854, 37.571732, 30.589569>,  <42.566856, 37.760441, 30.662817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911854, 37.571732, 30.589569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009185, 0.347200, -0.937746,
		0.505979, 0.810485, 0.295125,
		0.862497, -0.471769, -0.183120,
		43.170605, 37.430202, 30.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075825, 38.184914, 30.345190>,  <42.566856, 37.760441, 30.662817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075825, 38.184914, 30.345190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188854, 37.811356, 30.257565>,  <43.256672, 37.587219, 30.204990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188854, 37.811356, 30.257565>,  <43.075825, 38.184914, 30.345190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188854, 37.811356, 30.257565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073336, 0.248733, -0.965792,
		0.956439, 0.256840, 0.138773,
		0.282571, -0.933898, -0.219063,
		43.273624, 37.531185, 30.191845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607056, 38.253761, 29.824326>,  <43.075825, 38.184914, 30.345190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607056, 38.253761, 29.824326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462040, 37.883900, 29.777716>,  <43.375031, 37.661983, 29.749750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462040, 37.883900, 29.777716>,  <43.607056, 38.253761, 29.824326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462040, 37.883900, 29.777716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123063, 0.076439, -0.989451,
		0.923808, -0.373055, 0.086079,
		-0.362540, -0.924655, -0.116524,
		43.353279, 37.606503, 29.742758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032742, 38.004318, 29.307589>,  <43.607056, 38.253761, 29.824326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032742, 38.004318, 29.307589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750347, 37.721817, 29.328712>,  <43.580910, 37.552315, 29.341387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750347, 37.721817, 29.328712>,  <44.032742, 38.004318, 29.307589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750347, 37.721817, 29.328712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127954, -0.200532, -0.971295,
		0.696574, -0.678961, 0.231941,
		-0.705984, -0.706257, 0.052809,
		43.538551, 37.509941, 29.344555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242947, 37.323551, 29.011286>,  <44.032742, 38.004318, 29.307589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242947, 37.323551, 29.011286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844509, 37.312229, 28.977835>,  <43.605446, 37.305435, 28.957764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844509, 37.312229, 28.977835>,  <44.242947, 37.323551, 29.011286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844509, 37.312229, 28.977835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087561, -0.195253, -0.976837,
		0.011326, -0.980344, 0.196969,
		-0.996095, -0.028311, -0.083628,
		43.545681, 37.303738, 28.952745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207649, 36.898529, 28.498171>,  <44.242947, 37.323551, 29.011286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207649, 36.898529, 28.498171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.818665, 36.991066, 28.509436>,  <43.585274, 37.046589, 28.516193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.818665, 36.991066, 28.509436>,  <44.207649, 36.898529, 28.498171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818665, 36.991066, 28.509436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069799, -0.173835, -0.982298,
		-0.222361, -0.957214, 0.185196,
		-0.972463, 0.231351, 0.028159,
		43.526924, 37.060471, 28.517883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785797, 36.350254, 28.161617>,  <44.207649, 36.898529, 28.498171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785797, 36.350254, 28.161617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623566, 36.715622, 28.147900>,  <43.526226, 36.934841, 28.139669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.623566, 36.715622, 28.147900>,  <43.785797, 36.350254, 28.161617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623566, 36.715622, 28.147900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082062, -0.073754, -0.993894,
		-0.910370, -0.400286, 0.104869,
		-0.405576, 0.913418, -0.034295,
		43.501892, 36.989647, 28.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055523, 36.301575, 27.817074>,  <43.785797, 36.350254, 28.161617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055523, 36.301575, 27.817074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147453, 36.686440, 27.758526>,  <43.202614, 36.917358, 27.723396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147453, 36.686440, 27.758526>,  <43.055523, 36.301575, 27.817074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147453, 36.686440, 27.758526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156169, -0.111989, -0.981361,
		-0.960620, 0.248404, 0.124521,
		0.229829, 0.962161, -0.146372,
		43.216404, 36.975086, 27.714615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471344, 36.491737, 27.453087>,  <43.055523, 36.301575, 27.817074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471344, 36.491737, 27.453087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737797, 36.785648, 27.401915>,  <42.897671, 36.961994, 27.371212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737797, 36.785648, 27.401915>,  <42.471344, 36.491737, 27.453087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737797, 36.785648, 27.401915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291202, 0.098318, -0.951596,
		-0.686632, 0.671146, 0.279462,
		0.666136, 0.734776, -0.127931,
		42.937637, 37.006081, 27.363535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099979, 37.132652, 27.405735>,  <42.471344, 36.491737, 27.453087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099979, 37.132652, 27.405735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454456, 37.162682, 27.222860>,  <42.667145, 37.180698, 27.113136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454456, 37.162682, 27.222860>,  <42.099979, 37.132652, 27.405735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454456, 37.162682, 27.222860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461644, 0.059508, -0.885067,
		-0.039238, 0.995401, 0.087393,
		0.886197, 0.075073, -0.457186,
		42.720314, 37.185204, 27.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091820, 37.766960, 26.993706>,  <42.099979, 37.132652, 27.405735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091820, 37.766960, 26.993706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372246, 37.527916, 26.838079>,  <42.540501, 37.384487, 26.744703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372246, 37.527916, 26.838079>,  <42.091820, 37.766960, 26.993706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372246, 37.527916, 26.838079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387347, 0.138956, -0.911402,
		0.598728, 0.789652, -0.134066,
		0.701061, -0.597612, -0.389067,
		42.582565, 37.348633, 26.721359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135754, 38.575687, 27.089870>,  <42.091820, 37.766960, 26.993706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135754, 38.575687, 27.089870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.881428, 38.882355, 27.054171>,  <41.728832, 39.066357, 27.032751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.881428, 38.882355, 27.054171>,  <42.135754, 38.575687, 27.089870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881428, 38.882355, 27.054171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306287, -0.144476, 0.940912,
		0.708472, 0.625578, 0.326679,
		-0.635811, 0.766667, -0.089249,
		41.690685, 39.112354, 27.027395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342754, 38.948807, 27.666624>,  <42.135754, 38.575687, 27.089870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342754, 38.948807, 27.666624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975754, 39.055935, 27.549006>,  <41.755554, 39.120213, 27.478434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975754, 39.055935, 27.549006>,  <42.342754, 38.948807, 27.666624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975754, 39.055935, 27.549006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375428, -0.339065, 0.862606,
		0.131321, 0.901836, 0.411639,
		-0.917501, 0.267819, -0.294048,
		41.700504, 39.136280, 27.460791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046154, 39.355148, 28.195137>,  <42.342754, 38.948807, 27.666624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046154, 39.355148, 28.195137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707855, 39.233479, 28.019781>,  <41.504875, 39.160477, 27.914568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707855, 39.233479, 28.019781>,  <42.046154, 39.355148, 28.195137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707855, 39.233479, 28.019781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359790, -0.281628, 0.889515,
		-0.394029, 0.910036, 0.128749,
		-0.845750, -0.304173, -0.438391,
		41.454132, 39.142227, 27.888264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438431, 39.568436, 28.660250>,  <42.046154, 39.355148, 28.195137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438431, 39.568436, 28.660250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298939, 39.277454, 28.423876>,  <41.215244, 39.102867, 28.282051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298939, 39.277454, 28.423876>,  <41.438431, 39.568436, 28.660250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298939, 39.277454, 28.423876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382514, -0.465142, 0.798327,
		-0.855612, 0.504441, -0.116051,
		-0.348729, -0.727449, -0.590937,
		41.194321, 39.059219, 28.246595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742409, 39.469109, 28.932487>,  <41.438431, 39.568436, 28.660250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742409, 39.469109, 28.932487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.835236, 39.146931, 28.714348>,  <40.890930, 38.953625, 28.583464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.835236, 39.146931, 28.714348>,  <40.742409, 39.469109, 28.932487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835236, 39.146931, 28.714348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401913, -0.589959, 0.700296,
		-0.885783, 0.056667, -0.460628,
		0.232068, -0.805442, -0.545351,
		40.904858, 38.905296, 28.550743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147964, 39.066704, 28.886755>,  <40.742409, 39.469109, 28.932487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147964, 39.066704, 28.886755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.455563, 38.820282, 28.818487>,  <40.640121, 38.672428, 28.777527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.455563, 38.820282, 28.818487>,  <40.147964, 39.066704, 28.886755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455563, 38.820282, 28.818487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403068, -0.674491, 0.618545,
		-0.496169, -0.406867, -0.766991,
		0.768994, -0.616053, -0.170667,
		40.686260, 38.635468, 28.767286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851994, 38.388004, 28.818806>,  <40.147964, 39.066704, 28.886755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851994, 38.388004, 28.818806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.238647, 38.326359, 28.900658>,  <40.470638, 38.289371, 28.949768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.238647, 38.326359, 28.900658>,  <39.851994, 38.388004, 28.818806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238647, 38.326359, 28.900658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247752, -0.765572, 0.593733,
		0.065155, -0.624618, -0.778208,
		0.966630, -0.154118, 0.204631,
		40.528637, 38.280125, 28.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948879, 37.685608, 28.783442>,  <39.851994, 38.388004, 28.818806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948879, 37.685608, 28.783442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285511, 37.774567, 28.980330>,  <40.487492, 37.827942, 29.098463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285511, 37.774567, 28.980330>,  <39.948879, 37.685608, 28.783442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285511, 37.774567, 28.980330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135604, -0.795113, 0.591106,
		0.522831, -0.564211, -0.638994,
		0.841581, 0.222399, 0.492219,
		40.537987, 37.841286, 29.127995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113152, 37.063442, 29.017632>,  <39.948879, 37.685608, 28.783442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113152, 37.063442, 29.017632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322826, 37.310795, 29.251841>,  <40.448631, 37.459206, 29.392366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322826, 37.310795, 29.251841>,  <40.113152, 37.063442, 29.017632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322826, 37.310795, 29.251841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035864, -0.670915, 0.740667,
		0.850849, -0.409245, -0.329506,
		0.524184, 0.618379, 0.585525,
		40.480083, 37.496307, 29.427498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781071, 36.679390, 29.189476>,  <40.113152, 37.063442, 29.017632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781071, 36.679390, 29.189476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695839, 36.970249, 29.450504>,  <40.644699, 37.144764, 29.607122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695839, 36.970249, 29.450504>,  <40.781071, 36.679390, 29.189476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695839, 36.970249, 29.450504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091845, -0.679859, 0.727569,
		0.972709, 0.095091, 0.211647,
		-0.213075, 0.727152, 0.652572,
		40.631916, 37.188396, 29.646276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099251, 36.453461, 29.796652>,  <40.781071, 36.679390, 29.189476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099251, 36.453461, 29.796652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866039, 36.744076, 29.942101>,  <40.726112, 36.918446, 30.029369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.866039, 36.744076, 29.942101>,  <41.099251, 36.453461, 29.796652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866039, 36.744076, 29.942101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144175, -0.532978, 0.833756,
		0.799558, 0.433677, 0.415489,
		-0.583027, 0.726539, 0.363622,
		40.691132, 36.962036, 30.051188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410660, 36.600151, 30.444719>,  <41.099251, 36.453461, 29.796652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410660, 36.600151, 30.444719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.021568, 36.691788, 30.459249>,  <40.788113, 36.746769, 30.467968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.021568, 36.691788, 30.459249>,  <41.410660, 36.600151, 30.444719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021568, 36.691788, 30.459249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101452, -0.561047, 0.821544,
		0.208587, 0.795453, 0.568987,
		-0.972728, 0.229088, 0.036327,
		40.729752, 36.760513, 30.470148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.965275, 39.874981, 23.687693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574623, 39.947041, 23.640802>,  <42.340233, 39.990276, 23.612667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574623, 39.947041, 23.640802>,  <42.965275, 39.874981, 23.687693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574623, 39.947041, 23.640802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094331, 0.130813, 0.986909,
		0.193129, 0.974902, -0.110762,
		-0.976628, 0.180152, -0.117228,
		42.281635, 40.001087, 23.605635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820843, 40.499393, 24.020245>,  <42.965275, 39.874981, 23.687693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820843, 40.499393, 24.020245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468163, 40.310951, 24.009909>,  <42.256554, 40.197884, 24.003708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468163, 40.310951, 24.009909>,  <42.820843, 40.499393, 24.020245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468163, 40.310951, 24.009909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126450, 0.183186, 0.974912,
		-0.454555, 0.862844, -0.221086,
		-0.881697, -0.471108, -0.025839,
		42.203655, 40.169621, 24.002157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485584, 40.863010, 24.540951>,  <42.820843, 40.499393, 24.020245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485584, 40.863010, 24.540951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252529, 40.547749, 24.461605>,  <42.112698, 40.358593, 24.413998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252529, 40.547749, 24.461605>,  <42.485584, 40.863010, 24.540951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252529, 40.547749, 24.461605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306930, -0.012615, 0.951649,
		-0.752549, 0.615348, -0.234558,
		-0.582636, -0.788155, -0.198362,
		42.077740, 40.311302, 24.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877144, 41.008255, 24.859209>,  <42.485584, 40.863010, 24.540951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877144, 41.008255, 24.859209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871208, 40.610397, 24.818300>,  <41.867645, 40.371681, 24.793755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871208, 40.610397, 24.818300>,  <41.877144, 41.008255, 24.859209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871208, 40.610397, 24.818300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372806, -0.089404, 0.923592,
		-0.927791, 0.051833, -0.369483,
		-0.014840, -0.994646, -0.102272,
		41.866756, 40.312004, 24.787619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300076, 40.698856, 25.361092>,  <41.877144, 41.008255, 24.859209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300076, 40.698856, 25.361092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495823, 40.364170, 25.262774>,  <41.613274, 40.163357, 25.203783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495823, 40.364170, 25.262774>,  <41.300076, 40.698856, 25.361092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495823, 40.364170, 25.262774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215290, -0.389043, 0.895710,
		-0.845084, -0.385417, -0.370524,
		0.489371, -0.836720, -0.245797,
		41.642635, 40.113155, 25.189034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870571, 40.088066, 25.557642>,  <41.300076, 40.698856, 25.361092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870571, 40.088066, 25.557642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245956, 39.950649, 25.543392>,  <41.471188, 39.868198, 25.534842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245956, 39.950649, 25.543392>,  <40.870571, 40.088066, 25.557642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245956, 39.950649, 25.543392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166102, -0.539345, 0.825541,
		-0.302823, -0.768820, -0.563217,
		0.938461, -0.343544, -0.035624,
		41.527496, 39.847588, 25.532705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844830, 39.349564, 25.691467>,  <40.870571, 40.088066, 25.557642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844830, 39.349564, 25.691467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217197, 39.457481, 25.789936>,  <41.440617, 39.522232, 25.849018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217197, 39.457481, 25.789936>,  <40.844830, 39.349564, 25.691467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217197, 39.457481, 25.789936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029231, -0.616834, 0.786550,
		0.364053, -0.739411, -0.566336,
		0.930919, 0.269791, 0.246174,
		41.496471, 39.538418, 25.863789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175179, 38.689278, 25.865124>,  <40.844830, 39.349564, 25.691467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175179, 38.689278, 25.865124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366970, 38.999481, 26.029406>,  <41.482044, 39.185604, 26.127975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366970, 38.999481, 26.029406>,  <41.175179, 38.689278, 25.865124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366970, 38.999481, 26.029406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102350, -0.415399, 0.903863,
		0.871562, -0.475422, -0.119803,
		0.479483, 0.775511, 0.410705,
		41.510815, 39.232136, 26.152617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650860, 38.490662, 26.401110>,  <41.175179, 38.689278, 25.865124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650860, 38.490662, 26.401110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634567, 38.869843, 26.527433>,  <41.624790, 39.097351, 26.603228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634567, 38.869843, 26.527433>,  <41.650860, 38.490662, 26.401110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634567, 38.869843, 26.527433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207107, -0.317219, 0.925462,
		0.977470, -0.027710, 0.209248,
		-0.040733, 0.947948, 0.315811,
		41.622349, 39.154228, 26.622177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201935, 38.032921, 26.263132>,  <41.650860, 38.490662, 26.401110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201935, 38.032921, 26.263132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416061, 37.695221, 26.252628>,  <42.544537, 37.492603, 26.246326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416061, 37.695221, 26.252628>,  <42.201935, 38.032921, 26.263132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416061, 37.695221, 26.252628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058115, -0.005800, -0.998293,
		0.842653, 0.535924, -0.052168,
		0.535312, -0.844246, -0.026258,
		42.576656, 37.441948, 26.244751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804367, 38.151386, 25.776251>,  <42.201935, 38.032921, 26.263132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804367, 38.151386, 25.776251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739994, 37.757053, 25.795156>,  <42.701370, 37.520454, 25.806499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739994, 37.757053, 25.795156>,  <42.804367, 38.151386, 25.776251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739994, 37.757053, 25.795156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122635, -0.067493, -0.990154,
		0.979316, -0.153556, 0.131759,
		-0.160937, -0.985832, 0.047266,
		42.691711, 37.461304, 25.809336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340034, 37.822186, 25.298948>,  <42.804367, 38.151386, 25.776251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340034, 37.822186, 25.298948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066242, 37.538097, 25.364771>,  <42.901966, 37.367645, 25.404264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066242, 37.538097, 25.364771>,  <43.340034, 37.822186, 25.298948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066242, 37.538097, 25.364771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083267, -0.300405, -0.950170,
		0.724261, -0.636670, 0.264759,
		-0.684480, -0.710217, 0.164557,
		42.860897, 37.325031, 25.414139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646252, 37.145779, 24.938116>,  <43.340034, 37.822186, 25.298948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646252, 37.145779, 24.938116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251305, 37.098019, 24.979786>,  <43.014336, 37.069363, 25.004787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251305, 37.098019, 24.979786>,  <43.646252, 37.145779, 24.938116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251305, 37.098019, 24.979786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094557, -0.083583, -0.992005,
		0.127151, -0.989322, 0.071237,
		-0.987366, -0.119398, 0.104174,
		42.955093, 37.062199, 25.011038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451374, 36.443409, 24.631073>,  <43.646252, 37.145779, 24.938116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451374, 36.443409, 24.631073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105511, 36.644176, 24.639513>,  <42.897995, 36.764637, 24.644577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105511, 36.644176, 24.639513>,  <43.451374, 36.443409, 24.631073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105511, 36.644176, 24.639513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066768, -0.073189, -0.995081,
		-0.497908, -0.861811, 0.096795,
		-0.864656, 0.501922, 0.021100,
		42.846115, 36.794754, 24.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950073, 36.080879, 24.197794>,  <43.451374, 36.443409, 24.631073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950073, 36.080879, 24.197794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785454, 36.445148, 24.212234>,  <42.686684, 36.663712, 24.220898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785454, 36.445148, 24.212234>,  <42.950073, 36.080879, 24.197794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785454, 36.445148, 24.212234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165976, -0.035943, -0.985475,
		-0.896148, -0.411561, 0.165942,
		-0.411547, 0.910673, 0.036099,
		42.661991, 36.718349, 24.223064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299992, 36.061333, 23.782181>,  <42.950073, 36.080879, 24.197794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299992, 36.061333, 23.782181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436489, 36.434280, 23.829918>,  <42.518387, 36.658047, 23.858561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436489, 36.434280, 23.829918>,  <42.299992, 36.061333, 23.782181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436489, 36.434280, 23.829918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028513, 0.116640, -0.992765,
		-0.939541, 0.342181, 0.013219,
		0.341247, 0.932366, 0.119344,
		42.538864, 36.713989, 23.865721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937042, 36.418533, 23.257757>,  <42.299992, 36.061333, 23.782181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937042, 36.418533, 23.257757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217918, 36.683014, 23.363396>,  <42.386444, 36.841702, 23.426779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217918, 36.683014, 23.363396>,  <41.937042, 36.418533, 23.257757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217918, 36.683014, 23.363396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153673, 0.221439, -0.962990,
		-0.695212, 0.716782, 0.053882,
		0.702186, 0.661202, 0.264097,
		42.428574, 36.881374, 23.442625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750629, 37.094051, 22.967178>,  <41.937042, 36.418533, 23.257757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750629, 37.094051, 22.967178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144814, 37.084362, 23.034447>,  <42.381325, 37.078548, 23.074808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144814, 37.084362, 23.034447>,  <41.750629, 37.094051, 22.967178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144814, 37.084362, 23.034447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166717, 0.328752, -0.929585,
		-0.032771, 0.944106, 0.328010,
		0.985460, -0.024221, 0.168172,
		42.440453, 37.077095, 23.084898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954662, 37.809120, 22.906416>,  <41.750629, 37.094051, 22.967178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954662, 37.809120, 22.906416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245525, 37.549240, 22.817751>,  <42.420044, 37.393314, 22.764551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245525, 37.549240, 22.817751>,  <41.954662, 37.809120, 22.906416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245525, 37.549240, 22.817751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089139, 0.409534, -0.907930,
		0.680657, 0.640451, 0.355709,
		0.727159, -0.649696, -0.221663,
		42.463673, 37.354332, 22.751251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461853, 38.183437, 22.517267>,  <41.954662, 37.809120, 22.906416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461853, 38.183437, 22.517267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531322, 37.803207, 22.414314>,  <42.573006, 37.575069, 22.352543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531322, 37.803207, 22.414314>,  <42.461853, 38.183437, 22.517267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531322, 37.803207, 22.414314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223050, 0.292529, -0.929879,
		0.959211, 0.104086, 0.262831,
		0.173673, -0.950575, -0.257381,
		42.583424, 37.518036, 22.337099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854359, 38.340435, 22.012985>,  <42.461853, 38.183437, 22.517267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854359, 38.340435, 22.012985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834587, 37.942619, 21.976225>,  <42.822723, 37.703930, 21.954168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834587, 37.942619, 21.976225>,  <42.854359, 38.340435, 22.012985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834587, 37.942619, 21.976225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386364, 0.065810, -0.919996,
		0.921021, -0.080977, 0.381002,
		-0.049425, -0.994541, -0.091899,
		42.819759, 37.644257, 21.948656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461391, 38.214321, 21.506540>,  <42.854359, 38.340435, 22.012985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461391, 38.214321, 21.506540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217445, 37.897373, 21.512278>,  <43.071075, 37.707203, 21.515720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217445, 37.897373, 21.512278>,  <43.461391, 38.214321, 21.506540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217445, 37.897373, 21.512278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200472, -0.171758, -0.964526,
		0.766729, -0.585357, 0.263598,
		-0.609867, -0.792374, 0.014344,
		43.034485, 37.659660, 21.516581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828346, 37.639915, 21.131023>,  <43.461391, 38.214321, 21.506540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828346, 37.639915, 21.131023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435600, 37.566906, 21.110527>,  <43.199951, 37.523098, 21.098228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435600, 37.566906, 21.110527>,  <43.828346, 37.639915, 21.131023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435600, 37.566906, 21.110527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074888, -0.125103, -0.989313,
		0.174167, -0.975209, 0.136503,
		-0.981864, -0.182529, -0.051242,
		43.141041, 37.512146, 21.095154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.184269, 36.772507, 20.637159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543655, 36.933098, 20.708231>,  <37.759289, 37.029453, 20.750874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543655, 36.933098, 20.708231>,  <37.184269, 36.772507, 20.637159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543655, 36.933098, 20.708231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003820, -0.411838, 0.911249,
		0.439020, -0.818051, -0.371557,
		0.898469, 0.401476, 0.177680,
		37.813194, 37.053539, 20.761536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602005, 36.244762, 20.934727>,  <37.184269, 36.772507, 20.637159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602005, 36.244762, 20.934727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797089, 36.579002, 21.035854>,  <37.914139, 36.779545, 21.096531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797089, 36.579002, 21.035854>,  <37.602005, 36.244762, 20.934727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797089, 36.579002, 21.035854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037520, -0.309389, 0.950195,
		0.872198, -0.453935, -0.182244,
		0.487711, 0.835596, 0.252817,
		37.943401, 36.829681, 21.111700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068542, 36.031479, 21.340757>,  <37.602005, 36.244762, 20.934727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068542, 36.031479, 21.340757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034988, 36.423080, 21.415077>,  <38.014858, 36.658039, 21.459669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034988, 36.423080, 21.415077>,  <38.068542, 36.031479, 21.340757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034988, 36.423080, 21.415077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103364, -0.193998, 0.975541,
		0.991100, 0.062625, 0.117466,
		-0.083881, 0.979001, 0.185799,
		38.009823, 36.716782, 21.470818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526398, 36.099468, 21.901133>,  <38.068542, 36.031479, 21.340757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526398, 36.099468, 21.901133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289894, 36.421825, 21.913456>,  <38.147991, 36.615238, 21.920849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289894, 36.421825, 21.913456>,  <38.526398, 36.099468, 21.901133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289894, 36.421825, 21.913456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060814, 0.006462, 0.998128,
		0.804184, 0.592028, -0.052830,
		-0.591261, 0.805891, 0.030808,
		38.112514, 36.663593, 21.922699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878693, 36.570923, 22.332487>,  <38.526398, 36.099468, 21.901133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878693, 36.570923, 22.332487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494049, 36.679905, 22.345585>,  <38.263264, 36.745296, 22.353443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494049, 36.679905, 22.345585>,  <38.878693, 36.570923, 22.332487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494049, 36.679905, 22.345585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003573, -0.106880, 0.994265,
		0.274396, 0.956213, 0.101804,
		-0.961610, 0.272459, 0.032744,
		38.205566, 36.761642, 22.355408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865231, 37.061760, 22.869343>,  <38.878693, 36.570923, 22.332487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865231, 37.061760, 22.869343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484886, 36.945171, 22.827547>,  <38.256680, 36.875217, 22.802469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484886, 36.945171, 22.827547>,  <38.865231, 37.061760, 22.869343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484886, 36.945171, 22.827547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014714, -0.294551, 0.955523,
		-0.309281, 0.910102, 0.275787,
		-0.950857, -0.291467, -0.104490,
		38.199631, 36.857731, 22.796200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559593, 37.374863, 23.359116>,  <38.865231, 37.061760, 22.869343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559593, 37.374863, 23.359116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308292, 37.082134, 23.253483>,  <38.157513, 36.906498, 23.190104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308292, 37.082134, 23.253483>,  <38.559593, 37.374863, 23.359116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308292, 37.082134, 23.253483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065154, -0.288750, 0.955185,
		-0.775278, 0.617301, 0.133726,
		-0.628250, -0.731821, -0.264081,
		38.119816, 36.862587, 23.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057026, 37.395374, 23.906981>,  <38.559593, 37.374863, 23.359116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057026, 37.395374, 23.906981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043770, 37.041042, 23.721853>,  <38.035816, 36.828442, 23.610777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043770, 37.041042, 23.721853>,  <38.057026, 37.395374, 23.906981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043770, 37.041042, 23.721853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047333, -0.463946, 0.884598,
		-0.998329, 0.007405, 0.057302,
		-0.033136, -0.885833, -0.462820,
		38.033829, 36.775291, 23.583008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451832, 37.106014, 24.076611>,  <38.057026, 37.395374, 23.906981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451832, 37.106014, 24.076611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703735, 36.814373, 23.969416>,  <37.854877, 36.639389, 23.905098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.703735, 36.814373, 23.969416>,  <37.451832, 37.106014, 24.076611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703735, 36.814373, 23.969416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135087, -0.442527, 0.886522,
		-0.764958, -0.522090, -0.377176,
		0.629755, -0.729104, -0.267987,
		37.892662, 36.595642, 23.889019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074749, 36.562832, 24.266951>,  <37.451832, 37.106014, 24.076611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074749, 36.562832, 24.266951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446770, 36.419350, 24.235098>,  <37.669983, 36.333260, 24.215986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446770, 36.419350, 24.235098>,  <37.074749, 36.562832, 24.266951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446770, 36.419350, 24.235098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106859, -0.471407, 0.875418,
		-0.351553, -0.805673, -0.476762,
		0.930050, -0.358702, -0.079631,
		37.725784, 36.311737, 24.211208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067863, 35.811611, 24.540794>,  <37.074749, 36.562832, 24.266951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067863, 35.811611, 24.540794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445465, 35.937775, 24.579523>,  <37.672028, 36.013474, 24.602760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445465, 35.937775, 24.579523>,  <37.067863, 35.811611, 24.540794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445465, 35.937775, 24.579523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054978, -0.439726, 0.896448,
		0.325324, -0.840926, -0.432443,
		0.944003, 0.315411, 0.096821,
		37.728664, 36.032398, 24.608570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446503, 35.219635, 24.708105>,  <37.067863, 35.811611, 24.540794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446503, 35.219635, 24.708105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676773, 35.525093, 24.825033>,  <37.814934, 35.708366, 24.895189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.676773, 35.525093, 24.825033>,  <37.446503, 35.219635, 24.708105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676773, 35.525093, 24.825033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187710, -0.471371, 0.861728,
		0.795844, -0.441200, -0.414698,
		0.575671, 0.763644, 0.292320,
		37.849476, 35.754185, 24.912729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925743, 34.896038, 25.122330>,  <37.446503, 35.219635, 24.708105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925743, 34.896038, 25.122330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977398, 35.284470, 25.202660>,  <38.008392, 35.517529, 25.250858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977398, 35.284470, 25.202660>,  <37.925743, 34.896038, 25.122330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977398, 35.284470, 25.202660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194056, -0.223353, 0.955226,
		0.972453, -0.084386, -0.217287,
		0.129140, 0.971078, 0.200825,
		38.016140, 35.575794, 25.262907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528885, 34.932823, 25.538738>,  <37.925743, 34.896038, 25.122330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528885, 34.932823, 25.538738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325062, 35.269173, 25.611702>,  <38.202766, 35.470982, 25.655479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325062, 35.269173, 25.611702>,  <38.528885, 34.932823, 25.538738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325062, 35.269173, 25.611702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121320, -0.139664, 0.982739,
		0.851839, 0.522894, -0.030848,
		-0.509560, 0.840878, 0.182408,
		38.172195, 35.521435, 25.666424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254223, 34.780804, 25.404158>,  <38.528885, 34.932823, 25.538738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254223, 34.780804, 25.404158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.400726, 34.411812, 25.452959>,  <39.488628, 34.190418, 25.482241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.400726, 34.411812, 25.452959>,  <39.254223, 34.780804, 25.404158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400726, 34.411812, 25.452959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053789, -0.109908, -0.992485,
		0.928956, 0.370071, 0.009364,
		0.366261, -0.922479, 0.122006,
		39.510605, 34.135067, 25.489561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876923, 34.759117, 25.018930>,  <39.254223, 34.780804, 25.404158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876923, 34.759117, 25.018930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750248, 34.380882, 25.048805>,  <39.674244, 34.153942, 25.066730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750248, 34.380882, 25.048805>,  <39.876923, 34.759117, 25.018930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750248, 34.380882, 25.048805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093712, -0.047165, -0.994481,
		0.943889, -0.321938, -0.073676,
		-0.316686, -0.945585, 0.074688,
		39.655243, 34.097206, 25.071211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255138, 34.240353, 24.544735>,  <39.876923, 34.759117, 25.018930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255138, 34.240353, 24.544735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910381, 34.050266, 24.615509>,  <39.703526, 33.936214, 24.657972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910381, 34.050266, 24.615509>,  <40.255138, 34.240353, 24.544735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910381, 34.050266, 24.615509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048064, -0.270790, -0.961438,
		0.504804, -0.837162, 0.210552,
		-0.861895, -0.475218, 0.176933,
		39.651814, 33.907700, 24.668589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303272, 33.610924, 24.233850>,  <40.255138, 34.240353, 24.544735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303272, 33.610924, 24.233850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907124, 33.634220, 24.284094>,  <39.669434, 33.648197, 24.314240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907124, 33.634220, 24.284094>,  <40.303272, 33.610924, 24.233850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907124, 33.634220, 24.284094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132594, -0.137765, -0.981550,
		-0.039861, -0.988751, 0.144160,
		-0.990369, 0.058241, 0.125611,
		39.610012, 33.651691, 24.321777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074959, 33.029938, 23.859943>,  <40.303272, 33.610924, 24.233850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074959, 33.029938, 23.859943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764301, 33.280373, 23.887774>,  <39.577908, 33.430634, 23.904470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764301, 33.280373, 23.887774>,  <40.074959, 33.029938, 23.859943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764301, 33.280373, 23.887774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188249, -0.125273, -0.974099,
		-0.601153, -0.769626, 0.215153,
		-0.776645, 0.626085, 0.069573,
		39.531307, 33.468197, 23.908646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446915, 32.741066, 23.521406>,  <40.074959, 33.029938, 23.859943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446915, 32.741066, 23.521406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394779, 33.137653, 23.522654>,  <39.363499, 33.375607, 23.523403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394779, 33.137653, 23.522654>,  <39.446915, 32.741066, 23.521406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394779, 33.137653, 23.522654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095138, -0.009374, -0.995420,
		-0.986894, -0.130041, 0.095548,
		-0.130341, 0.991464, 0.003120,
		39.355679, 33.435093, 23.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015377, 32.822800, 22.968306>,  <39.446915, 32.741066, 23.521406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015377, 32.822800, 22.968306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118927, 33.203197, 23.035946>,  <39.181057, 33.431435, 23.076530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118927, 33.203197, 23.035946>,  <39.015377, 32.822800, 22.968306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118927, 33.203197, 23.035946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109894, 0.202932, -0.973007,
		-0.959639, 0.233305, 0.157043,
		0.258877, 0.950993, 0.169103,
		39.196590, 33.488495, 23.086678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501251, 33.340797, 22.712784>,  <39.015377, 32.822800, 22.968306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501251, 33.340797, 22.712784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843925, 33.546700, 22.726099>,  <39.049530, 33.670242, 22.734089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843925, 33.546700, 22.726099>,  <38.501251, 33.340797, 22.712784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843925, 33.546700, 22.726099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120734, 0.262840, -0.957256,
		-0.501503, 0.816052, 0.287321,
		0.856690, 0.514756, 0.033290,
		39.100933, 33.701126, 22.736086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365433, 33.948662, 22.288713>,  <38.501251, 33.340797, 22.712784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365433, 33.948662, 22.288713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764454, 33.929588, 22.309160>,  <39.003868, 33.918144, 22.321428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764454, 33.929588, 22.309160>,  <38.365433, 33.948662, 22.288713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764454, 33.929588, 22.309160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068921, 0.548746, -0.833143,
		0.011675, 0.834628, 0.550690,
		0.997554, -0.047681, 0.051117,
		39.063721, 33.915283, 22.324495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589558, 34.598774, 22.303526>,  <38.365433, 33.948662, 22.288713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589558, 34.598774, 22.303526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898216, 34.382511, 22.169508>,  <39.083412, 34.252754, 22.089098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898216, 34.382511, 22.169508>,  <38.589558, 34.598774, 22.303526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898216, 34.382511, 22.169508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034944, 0.489923, -0.871065,
		0.635096, 0.683859, 0.359152,
		0.771643, -0.540660, -0.335044,
		39.129707, 34.220314, 22.068995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812675, 34.965282, 21.818226>,  <38.589558, 34.598774, 22.303526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812675, 34.965282, 21.818226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034885, 34.642685, 21.737270>,  <39.168213, 34.449127, 21.688698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034885, 34.642685, 21.737270>,  <38.812675, 34.965282, 21.818226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034885, 34.642685, 21.737270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059822, 0.281535, -0.957684,
		0.829346, 0.519909, 0.204646,
		0.555524, -0.806494, -0.202388,
		39.201542, 34.400738, 21.676554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573765, 35.202816, 21.581512>,  <38.812675, 34.965282, 21.818226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573765, 35.202816, 21.581512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511906, 34.830864, 21.448004>,  <39.474789, 34.607693, 21.367899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511906, 34.830864, 21.448004>,  <39.573765, 35.202816, 21.581512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511906, 34.830864, 21.448004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119315, 0.317787, -0.940625,
		0.980739, -0.185290, 0.061804,
		-0.154648, -0.929881, -0.333774,
		39.465511, 34.551899, 21.347872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141033, 34.987209, 21.102009>,  <39.573765, 35.202816, 21.581512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141033, 34.987209, 21.102009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824749, 34.757690, 21.016666>,  <39.634979, 34.619980, 20.965460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824749, 34.757690, 21.016666>,  <40.141033, 34.987209, 21.102009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824749, 34.757690, 21.016666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072380, 0.258448, -0.963310,
		0.607890, -0.777146, -0.162827,
		-0.790715, -0.573801, -0.213358,
		39.587536, 34.585548, 20.952660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288769, 34.534340, 20.539259>,  <40.141033, 34.987209, 21.102009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288769, 34.534340, 20.539259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.888988, 34.547024, 20.535419>,  <39.649120, 34.554634, 20.533115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.888988, 34.547024, 20.535419>,  <40.288769, 34.534340, 20.539259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888988, 34.547024, 20.535419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011397, 0.056952, -0.998312,
		-0.031111, -0.997873, -0.057282,
		-0.999451, 0.031712, -0.009601,
		39.589153, 34.556538, 20.532539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903423, 33.966942, 20.514196>,  <40.288769, 34.534340, 20.539259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903423, 33.966942, 20.514196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295769, 33.992626, 20.440678>,  <41.531178, 34.008038, 20.396566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295769, 33.992626, 20.440678>,  <40.903423, 33.966942, 20.514196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295769, 33.992626, 20.440678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180680, 0.051406, 0.982198,
		0.072535, -0.996610, 0.038817,
		0.980864, 0.064230, -0.183796,
		41.590027, 34.011890, 20.385538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300426, 33.447964, 20.798147>,  <40.903423, 33.966942, 20.514196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300426, 33.447964, 20.798147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596188, 33.714268, 20.758074>,  <41.773643, 33.874050, 20.734030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596188, 33.714268, 20.758074>,  <41.300426, 33.447964, 20.798147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596188, 33.714268, 20.758074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188511, -0.061875, 0.980120,
		0.646329, -0.743593, -0.171254,
		0.739407, 0.665764, -0.100183,
		41.818008, 33.913998, 20.728020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821125, 33.259853, 21.246746>,  <41.300426, 33.447964, 20.798147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821125, 33.259853, 21.246746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.879543, 33.649082, 21.175421>,  <41.914597, 33.882622, 21.132626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.879543, 33.649082, 21.175421>,  <41.821125, 33.259853, 21.246746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879543, 33.649082, 21.175421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336328, 0.120672, 0.933982,
		0.930351, -0.196379, -0.309648,
		0.146049, 0.973074, -0.178315,
		41.923359, 33.941006, 21.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489372, 33.433876, 21.522533>,  <41.821125, 33.259853, 21.246746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489372, 33.433876, 21.522533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295944, 33.783947, 21.516581>,  <42.179886, 33.993988, 21.513010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295944, 33.783947, 21.516581>,  <42.489372, 33.433876, 21.522533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295944, 33.783947, 21.516581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184393, 0.118475, 0.975686,
		0.855661, 0.469071, -0.218668,
		-0.483573, 0.875178, -0.014881,
		42.150871, 34.046501, 21.512115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921822, 33.926830, 21.901436>,  <42.489372, 33.433876, 21.522533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921822, 33.926830, 21.901436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.565620, 34.108818, 21.900146>,  <42.351898, 34.218010, 21.899374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.565620, 34.108818, 21.900146>,  <42.921822, 33.926830, 21.901436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565620, 34.108818, 21.900146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104621, 0.211654, 0.971729,
		0.442788, 0.864989, -0.236078,
		-0.890502, 0.454969, -0.003222,
		42.298470, 34.245308, 21.899179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979485, 34.630592, 22.106230>,  <42.921822, 33.926830, 21.901436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979485, 34.630592, 22.106230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.596035, 34.547703, 22.184311>,  <42.365967, 34.497971, 22.231159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.596035, 34.547703, 22.184311>,  <42.979485, 34.630592, 22.106230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596035, 34.547703, 22.184311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137495, 0.263395, 0.954839,
		-0.249280, 0.942168, -0.224004,
		-0.958621, -0.207223, 0.195203,
		42.308449, 34.485535, 22.242872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900932, 35.151627, 22.706684>,  <42.979485, 34.630592, 22.106230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900932, 35.151627, 22.706684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.585423, 34.906197, 22.691952>,  <42.396118, 34.758938, 22.683113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.585423, 34.906197, 22.691952>,  <42.900932, 35.151627, 22.706684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585423, 34.906197, 22.691952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040332, -0.008128, 0.999153,
		-0.613356, 0.789594, -0.018336,
		-0.788776, -0.613576, -0.036832,
		42.348789, 34.722122, 22.680902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405907, 35.407753, 23.157866>,  <42.900932, 35.151627, 22.706684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405907, 35.407753, 23.157866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288734, 35.025963, 23.135340>,  <42.218433, 34.796890, 23.121824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288734, 35.025963, 23.135340>,  <42.405907, 35.407753, 23.157866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288734, 35.025963, 23.135340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009211, -0.056079, 0.998384,
		-0.956091, 0.292972, 0.007635,
		-0.292927, -0.954475, -0.056315,
		42.200855, 34.739620, 23.118444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928879, 35.288429, 23.687603>,  <42.405907, 35.407753, 23.157866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928879, 35.288429, 23.687603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.071278, 34.924084, 23.604094>,  <42.156715, 34.705475, 23.553988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.071278, 34.924084, 23.604094>,  <41.928879, 35.288429, 23.687603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071278, 34.924084, 23.604094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063660, -0.246532, 0.967041,
		-0.932316, -0.330974, -0.145751,
		0.355998, -0.910867, -0.208776,
		42.178078, 34.650826, 23.541460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438118, 34.721519, 24.000870>,  <41.928879, 35.288429, 23.687603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438118, 34.721519, 24.000870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813679, 34.592606, 23.952553>,  <42.039017, 34.515259, 23.923563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813679, 34.592606, 23.952553>,  <41.438118, 34.721519, 24.000870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813679, 34.592606, 23.952553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061569, -0.188019, 0.980234,
		-0.338627, -0.927782, -0.156689,
		0.938904, -0.322287, -0.120791,
		42.095348, 34.495918, 23.916315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477867, 34.342144, 24.578598>,  <41.438118, 34.721519, 24.000870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477867, 34.342144, 24.578598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.860916, 34.374260, 24.467955>,  <42.090744, 34.393528, 24.401567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.860916, 34.374260, 24.467955>,  <41.477867, 34.342144, 24.578598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860916, 34.374260, 24.467955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286734, -0.174890, 0.941911,
		0.027250, -0.981309, -0.190501,
		0.957622, 0.080291, -0.276609,
		42.148201, 34.398346, 24.384972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847233, 33.885017, 25.090345>,  <41.477867, 34.342144, 24.578598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847233, 33.885017, 25.090345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.153744, 34.104599, 24.956802>,  <42.337650, 34.236347, 24.876677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.153744, 34.104599, 24.956802>,  <41.847233, 33.885017, 25.090345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153744, 34.104599, 24.956802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503699, -0.190677, 0.842573,
		0.398877, -0.813811, -0.422621,
		0.766280, 0.548957, -0.333859,
		42.383629, 34.269287, 24.856644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354015, 33.706535, 25.451601>,  <41.847233, 33.885017, 25.090345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354015, 33.706535, 25.451601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517204, 34.030651, 25.283319>,  <42.615120, 34.225121, 25.182350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517204, 34.030651, 25.283319>,  <42.354015, 33.706535, 25.451601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517204, 34.030651, 25.283319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373401, 0.272409, 0.886772,
		0.833144, -0.518871, -0.191426,
		0.407974, 0.810288, -0.420703,
		42.639595, 34.273739, 25.157108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143433, 33.702171, 25.491636>,  <42.354015, 33.706535, 25.451601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143433, 33.702171, 25.491636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.991253, 34.072029, 25.484877>,  <42.899944, 34.293945, 25.480822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.991253, 34.072029, 25.484877>,  <43.143433, 33.702171, 25.491636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991253, 34.072029, 25.484877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582420, 0.253752, 0.772268,
		0.718364, 0.283966, -0.635072,
		-0.380449, 0.924648, -0.016899,
		42.877117, 34.349422, 25.479807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.692776, 36.835144, 20.757820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.363262, 37.060501, 20.732615>,  <43.165554, 37.195717, 20.717491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.363262, 37.060501, 20.732615>,  <43.692776, 36.835144, 20.757820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363262, 37.060501, 20.732615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106852, -0.263467, -0.958732,
		-0.556749, -0.783051, 0.277239,
		-0.823780, 0.563397, -0.063015,
		43.116127, 37.229519, 20.713711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267029, 36.375019, 20.478304>,  <43.692776, 36.835144, 20.757820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267029, 36.375019, 20.478304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102814, 36.735062, 20.419981>,  <43.004284, 36.951088, 20.384987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102814, 36.735062, 20.419981>,  <43.267029, 36.375019, 20.478304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102814, 36.735062, 20.419981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179844, -0.236691, -0.954795,
		-0.893931, -0.365760, 0.259050,
		-0.410541, 0.900109, -0.145806,
		42.979652, 37.005093, 20.376240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516052, 36.281521, 20.115694>,  <43.267029, 36.375019, 20.478304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516052, 36.281521, 20.115694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.615551, 36.667248, 20.079426>,  <42.675251, 36.898682, 20.057665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.615551, 36.667248, 20.079426>,  <42.516052, 36.281521, 20.115694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615551, 36.667248, 20.079426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305431, -0.010739, -0.952153,
		-0.919149, 0.264543, 0.291860,
		0.248751, 0.964314, -0.090671,
		42.690178, 36.956543, 20.052225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076832, 36.531071, 19.587414>,  <42.516052, 36.281521, 20.115694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076832, 36.531071, 19.587414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.369762, 36.802883, 19.605007>,  <42.545521, 36.965969, 19.615562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.369762, 36.802883, 19.605007>,  <42.076832, 36.531071, 19.587414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369762, 36.802883, 19.605007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066907, 0.136082, -0.988436,
		-0.677659, 0.720915, 0.145122,
		0.732326, 0.679532, 0.043983,
		42.589458, 37.006744, 19.618202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914906, 36.964901, 19.044867>,  <42.076832, 36.531071, 19.587414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914906, 36.964901, 19.044867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.295155, 37.031921, 19.149359>,  <42.523304, 37.072132, 19.212055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.295155, 37.031921, 19.149359>,  <41.914906, 36.964901, 19.044867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295155, 37.031921, 19.149359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226792, 0.199543, -0.953283,
		-0.211848, 0.965458, 0.151691,
		0.950624, 0.167549, 0.261231,
		42.580341, 37.082188, 19.227728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122074, 37.654297, 18.845619>,  <41.914906, 36.964901, 19.044867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122074, 37.654297, 18.845619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459801, 37.441357, 18.870071>,  <42.662437, 37.313591, 18.884743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459801, 37.441357, 18.870071>,  <42.122074, 37.654297, 18.845619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459801, 37.441357, 18.870071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237461, 0.269445, -0.933280,
		0.480364, 0.802496, 0.353909,
		0.844312, -0.532354, 0.061130,
		42.713093, 37.281651, 18.888411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681225, 38.091335, 18.422029>,  <42.122074, 37.654297, 18.845619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681225, 38.091335, 18.422029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.860172, 37.734268, 18.443954>,  <42.967541, 37.520027, 18.457109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.860172, 37.734268, 18.443954>,  <42.681225, 38.091335, 18.422029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860172, 37.734268, 18.443954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382753, 0.135709, -0.913829,
		0.808305, 0.429803, 0.402383,
		0.447373, -0.892666, 0.054814,
		42.994385, 37.466469, 18.460400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400558, 38.139420, 18.038668>,  <42.681225, 38.091335, 18.422029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400558, 38.139420, 18.038668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338463, 37.745235, 18.066301>,  <43.301205, 37.508724, 18.082882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338463, 37.745235, 18.066301>,  <43.400558, 38.139420, 18.038668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338463, 37.745235, 18.066301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495542, -0.138179, -0.857523,
		0.854599, -0.098886, 0.509787,
		-0.155239, -0.985458, 0.069086,
		43.291893, 37.449596, 18.087027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018684, 37.816380, 17.946096>,  <43.400558, 38.139420, 18.038668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018684, 37.816380, 17.946096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735378, 37.547165, 17.860886>,  <43.565395, 37.385635, 17.809759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.735378, 37.547165, 17.860886>,  <44.018684, 37.816380, 17.946096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735378, 37.547165, 17.860886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356449, -0.080485, -0.930842,
		0.609343, -0.735219, 0.296908,
		-0.708269, -0.673035, -0.213025,
		43.522896, 37.345253, 17.796978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336395, 37.270748, 17.693146>,  <44.018684, 37.816380, 17.946096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336395, 37.270748, 17.693146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.960880, 37.227921, 17.562172>,  <43.735573, 37.202225, 17.483587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.960880, 37.227921, 17.562172>,  <44.336395, 37.270748, 17.693146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960880, 37.227921, 17.562172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341439, -0.162867, -0.925685,
		0.045785, -0.980821, 0.189456,
		-0.938788, -0.107071, -0.327434,
		43.679245, 37.195801, 17.463942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372650, 36.841686, 17.216379>,  <44.336395, 37.270748, 17.693146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372650, 36.841686, 17.216379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.005390, 36.966103, 17.118189>,  <43.785034, 37.040752, 17.059275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.005390, 36.966103, 17.118189>,  <44.372650, 36.841686, 17.216379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005390, 36.966103, 17.118189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258631, 0.001079, -0.965976,
		-0.300196, -0.950395, -0.081437,
		-0.918146, 0.311044, -0.245477,
		43.729946, 37.059414, 17.044546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236401, 36.436604, 16.625519>,  <44.372650, 36.841686, 17.216379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236401, 36.436604, 16.625519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983715, 36.744923, 16.592505>,  <43.832104, 36.929913, 16.572697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983715, 36.744923, 16.592505>,  <44.236401, 36.436604, 16.625519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983715, 36.744923, 16.592505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181618, 0.043656, -0.982399,
		-0.753624, -0.635587, -0.167568,
		-0.631716, 0.770794, -0.082533,
		43.794201, 36.976162, 16.567745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717506, 36.412228, 16.072472>,  <44.236401, 36.436604, 16.625519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717506, 36.412228, 16.072472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.775852, 36.807350, 16.094267>,  <43.810860, 37.044422, 16.107344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.775852, 36.807350, 16.094267>,  <43.717506, 36.412228, 16.072472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775852, 36.807350, 16.094267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263078, 0.014365, -0.964668,
		-0.953684, 0.155045, -0.257774,
		0.145864, 0.987803, 0.054488,
		43.819611, 37.103691, 16.110613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343212, 36.761898, 15.579280>,  <43.717506, 36.412228, 16.072472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343212, 36.761898, 15.579280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.684170, 36.967636, 15.616940>,  <43.888744, 37.091080, 15.639537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.684170, 36.967636, 15.616940>,  <43.343212, 36.761898, 15.579280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684170, 36.967636, 15.616940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111154, -0.002295, -0.993801,
		-0.510942, 0.857580, -0.059128,
		0.852399, 0.514346, 0.094151,
		43.939888, 37.121941, 15.645185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773232, 36.259804, 15.655341>,  <43.343212, 36.761898, 15.579280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773232, 36.259804, 15.655341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673740, 35.976063, 15.391537>,  <42.614044, 35.805820, 15.233254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.673740, 35.976063, 15.391537>,  <42.773232, 36.259804, 15.655341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673740, 35.976063, 15.391537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096599, -0.659348, 0.745607,
		-0.963743, 0.249164, 0.095478,
		-0.248732, -0.709350, -0.659511,
		42.599121, 35.763256, 15.193684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152489, 36.202126, 15.808744>,  <42.773232, 36.259804, 15.655341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152489, 36.202126, 15.808744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278431, 35.866646, 15.631004>,  <42.353996, 35.665359, 15.524361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278431, 35.866646, 15.631004>,  <42.152489, 36.202126, 15.808744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278431, 35.866646, 15.631004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070420, -0.487513, 0.870271,
		-0.946524, -0.242718, -0.212557,
		0.314855, -0.838700, -0.444350,
		42.372887, 35.615036, 15.497699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777020, 35.791527, 16.152328>,  <42.152489, 36.202126, 15.808744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777020, 35.791527, 16.152328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.059338, 35.565224, 15.981791>,  <42.228729, 35.429440, 15.879469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.059338, 35.565224, 15.981791>,  <41.777020, 35.791527, 16.152328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059338, 35.565224, 15.981791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090336, -0.668790, 0.737943,
		-0.702633, -0.482322, -0.523137,
		0.705794, -0.565761, -0.426344,
		42.271076, 35.395496, 15.853889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488873, 35.125908, 16.089928>,  <41.777020, 35.791527, 16.152328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488873, 35.125908, 16.089928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887096, 35.092934, 16.108088>,  <42.126030, 35.073147, 16.118984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887096, 35.092934, 16.108088>,  <41.488873, 35.125908, 16.089928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887096, 35.092934, 16.108088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083795, -0.556829, 0.826390,
		-0.042847, -0.826526, -0.561265,
		0.995562, -0.082440, 0.045401,
		42.185764, 35.068203, 16.121708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563675, 34.432083, 16.090868>,  <41.488873, 35.125908, 16.089928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563675, 34.432083, 16.090868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915997, 34.564190, 16.226583>,  <42.127388, 34.643452, 16.308014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915997, 34.564190, 16.226583>,  <41.563675, 34.432083, 16.090868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915997, 34.564190, 16.226583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054980, -0.640390, 0.766079,
		0.470286, -0.693417, -0.545898,
		0.880800, 0.330263, 0.339290,
		42.180237, 34.663269, 16.328371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839161, 33.799110, 16.315830>,  <41.563675, 34.432083, 16.090868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839161, 33.799110, 16.315830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054699, 34.075642, 16.508379>,  <42.184021, 34.241558, 16.623909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054699, 34.075642, 16.508379>,  <41.839161, 33.799110, 16.315830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054699, 34.075642, 16.508379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127287, -0.498047, 0.857757,
		0.832734, -0.523469, -0.180373,
		0.538844, 0.691325, 0.481371,
		42.216351, 34.283039, 16.652790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324009, 33.443897, 16.801594>,  <41.839161, 33.799110, 16.315830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324009, 33.443897, 16.801594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.288010, 33.820057, 16.932777>,  <42.266411, 34.045753, 17.011488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.288010, 33.820057, 16.932777>,  <42.324009, 33.443897, 16.801594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288010, 33.820057, 16.932777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023520, -0.331210, 0.943264,
		0.995664, 0.077178, 0.051926,
		-0.089998, 0.940395, 0.327959,
		42.261009, 34.102177, 17.031164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791607, 33.578136, 17.380072>,  <42.324009, 33.443897, 16.801594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791607, 33.578136, 17.380072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483631, 33.832630, 17.399696>,  <42.298847, 33.985325, 17.411472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483631, 33.832630, 17.399696>,  <42.791607, 33.578136, 17.380072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483631, 33.832630, 17.399696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041966, -0.127207, 0.990988,
		0.636738, 0.760940, 0.124641,
		-0.769938, 0.636230, 0.049064,
		42.252651, 34.023499, 17.414415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941860, 33.965008, 17.955843>,  <42.791607, 33.578136, 17.380072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941860, 33.965008, 17.955843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.556515, 34.060482, 17.906918>,  <42.325310, 34.117767, 17.877562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.556515, 34.060482, 17.906918>,  <42.941860, 33.965008, 17.955843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556515, 34.060482, 17.906918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124308, 0.006744, 0.992221,
		0.237658, 0.971072, 0.023174,
		-0.963362, 0.238690, -0.122315,
		42.267506, 34.132088, 17.870222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988880, 34.399384, 18.446453>,  <42.941860, 33.965008, 17.955843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988880, 34.399384, 18.446453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608387, 34.297913, 18.376259>,  <42.380089, 34.237030, 18.334143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608387, 34.297913, 18.376259>,  <42.988880, 34.399384, 18.446453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608387, 34.297913, 18.376259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201002, 0.078224, 0.976463,
		-0.233983, 0.964120, -0.125400,
		-0.951236, -0.253681, -0.175487,
		42.323017, 34.221809, 18.323612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658089, 34.765892, 18.901680>,  <42.988880, 34.399384, 18.446453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658089, 34.765892, 18.901680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382893, 34.485451, 18.826702>,  <42.217777, 34.317188, 18.781715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382893, 34.485451, 18.826702>,  <42.658089, 34.765892, 18.901680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382893, 34.485451, 18.826702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175232, -0.090161, 0.980390,
		-0.704250, 0.707341, -0.060825,
		-0.687986, -0.701098, -0.187445,
		42.176498, 34.275120, 18.770468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047382, 34.994408, 19.272034>,  <42.658089, 34.765892, 18.901680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047382, 34.994408, 19.272034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965557, 34.606766, 19.216915>,  <41.916462, 34.374180, 19.183844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965557, 34.606766, 19.216915>,  <42.047382, 34.994408, 19.272034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965557, 34.606766, 19.216915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156111, -0.106674, 0.981962,
		-0.966325, 0.222383, -0.129467,
		-0.204561, -0.969106, -0.137798,
		41.904190, 34.316032, 19.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288548, 34.884663, 19.489040>,  <42.047382, 34.994408, 19.272034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288548, 34.884663, 19.489040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475910, 34.531288, 19.484457>,  <41.588326, 34.319263, 19.481707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475910, 34.531288, 19.484457>,  <41.288548, 34.884663, 19.489040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475910, 34.531288, 19.484457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007552, -0.016970, 0.999828,
		-0.883483, -0.468235, -0.014620,
		0.468403, -0.883441, -0.011456,
		41.616432, 34.266254, 19.481020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921158, 34.427658, 19.907295>,  <41.288548, 34.884663, 19.489040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921158, 34.427658, 19.907295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.294315, 34.284843, 19.926233>,  <41.518208, 34.199154, 19.937595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.294315, 34.284843, 19.926233>,  <40.921158, 34.427658, 19.907295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294315, 34.284843, 19.926233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050249, 0.001137, 0.998736,
		-0.356636, -0.934091, -0.016880,
		0.932891, -0.357033, 0.047343,
		41.574184, 34.177734, 19.940435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223587, 34.127514, 19.937414>,  <40.921158, 34.427658, 19.907295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223587, 34.127514, 19.937414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872776, 34.316475, 19.972401>,  <39.662289, 34.429852, 19.993393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872776, 34.316475, 19.972401>,  <40.223587, 34.127514, 19.937414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872776, 34.316475, 19.972401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018740, 0.215560, -0.976311,
		-0.480066, -0.854617, -0.197906,
		-0.877032, 0.472402, 0.087467,
		39.609665, 34.458195, 19.998640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825584, 33.940254, 19.376862>,  <40.223587, 34.127514, 19.937414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825584, 33.940254, 19.376862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629948, 34.265656, 19.502718>,  <39.512566, 34.460896, 19.578232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629948, 34.265656, 19.502718>,  <39.825584, 33.940254, 19.376862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629948, 34.265656, 19.502718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198292, 0.247582, -0.948358,
		-0.849395, -0.526223, 0.040222,
		-0.489090, 0.813506, 0.314641,
		39.483219, 34.509708, 19.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399181, 34.158913, 18.826057>,  <39.825584, 33.940254, 19.376862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399181, 34.158913, 18.826057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.412544, 34.495892, 19.041155>,  <39.420563, 34.698078, 19.170214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.412544, 34.495892, 19.041155>,  <39.399181, 34.158913, 18.826057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412544, 34.495892, 19.041155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002879, 0.537962, -0.842964,
		-0.999438, 0.029710, 0.015546,
		0.033407, 0.842445, 0.537745,
		39.422565, 34.748627, 19.202478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876339, 34.520786, 18.575327>,  <39.399181, 34.158913, 18.826057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876339, 34.520786, 18.575327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114864, 34.778984, 18.766220>,  <39.257980, 34.933903, 18.880756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114864, 34.778984, 18.766220>,  <38.876339, 34.520786, 18.575327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114864, 34.778984, 18.766220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045006, 0.620442, -0.782960,
		-0.801490, 0.445410, 0.399028,
		0.596312, 0.645493, 0.477232,
		39.293758, 34.972633, 18.909389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629448, 35.203503, 18.478809>,  <38.876339, 34.520786, 18.575327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629448, 35.203503, 18.478809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009594, 35.277588, 18.578814>,  <39.237682, 35.322037, 18.638815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009594, 35.277588, 18.578814>,  <38.629448, 35.203503, 18.478809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009594, 35.277588, 18.578814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063236, 0.671783, -0.738044,
		-0.304644, 0.717221, 0.626727,
		0.950365, 0.185208, 0.250009,
		39.294704, 35.333149, 18.653816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747894, 35.970596, 18.584143>,  <38.629448, 35.203503, 18.478809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747894, 35.970596, 18.584143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067944, 35.774364, 18.446077>,  <39.259972, 35.656624, 18.363239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067944, 35.774364, 18.446077>,  <38.747894, 35.970596, 18.584143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067944, 35.774364, 18.446077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068023, 0.645921, -0.760367,
		0.595968, 0.584907, 0.550187,
		0.800122, -0.490580, -0.345162,
		39.307980, 35.627190, 18.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134186, 36.519360, 18.231152>,  <38.747894, 35.970596, 18.584143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134186, 36.519360, 18.231152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343967, 36.198574, 18.116749>,  <39.469837, 36.006104, 18.048107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343967, 36.198574, 18.116749>,  <39.134186, 36.519360, 18.231152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343967, 36.198574, 18.116749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371540, 0.517794, -0.770615,
		0.766099, 0.297888, 0.569521,
		0.524452, -0.801967, -0.286005,
		39.501305, 35.957985, 18.030947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563320, 37.274624, 18.321047>,  <39.134186, 36.519360, 18.231152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563320, 37.274624, 18.321047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267113, 37.542465, 18.298206>,  <39.089386, 37.703171, 18.284502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267113, 37.542465, 18.298206>,  <39.563320, 37.274624, 18.321047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267113, 37.542465, 18.298206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187073, -0.123786, 0.974516,
		0.645470, 0.732331, 0.216931,
		-0.740521, 0.669603, -0.057099,
		39.044956, 37.743347, 18.281076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594975, 37.616016, 18.907499>,  <39.563320, 37.274624, 18.321047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594975, 37.616016, 18.907499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217068, 37.688835, 18.798491>,  <38.990322, 37.732525, 18.733086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217068, 37.688835, 18.798491>,  <39.594975, 37.616016, 18.907499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217068, 37.688835, 18.798491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311680, -0.242044, 0.918842,
		0.101309, 0.953034, 0.285417,
		-0.944771, 0.182046, -0.272520,
		38.933636, 37.743450, 18.716734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366917, 38.001377, 19.414112>,  <39.594975, 37.616016, 18.907499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366917, 38.001377, 19.414112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031876, 37.865932, 19.242640>,  <38.830853, 37.784664, 19.139755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031876, 37.865932, 19.242640>,  <39.366917, 38.001377, 19.414112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031876, 37.865932, 19.242640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439447, -0.048514, 0.896957,
		-0.324518, 0.939674, -0.108167,
		-0.837600, -0.338613, -0.428681,
		38.780594, 37.764347, 19.114035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770287, 38.462269, 19.662180>,  <39.366917, 38.001377, 19.414112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770287, 38.462269, 19.662180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.600700, 38.127796, 19.523010>,  <38.498947, 37.927113, 19.439508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.600700, 38.127796, 19.523010>,  <38.770287, 38.462269, 19.662180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600700, 38.127796, 19.523010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360678, -0.196497, 0.911757,
		-0.830762, 0.512041, -0.218285,
		-0.423965, -0.836183, -0.347924,
		38.473511, 37.876942, 19.418633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120472, 38.458805, 19.908253>,  <38.770287, 38.462269, 19.662180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120472, 38.458805, 19.908253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173008, 38.073460, 19.814722>,  <38.204529, 37.842251, 19.758604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173008, 38.073460, 19.814722>,  <38.120472, 38.458805, 19.908253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173008, 38.073460, 19.814722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352493, -0.265839, 0.897262,
		-0.926552, -0.035422, -0.374495,
		0.131338, -0.963366, -0.233828,
		38.212410, 37.784451, 19.744574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579056, 38.153885, 20.167919>,  <38.120472, 38.458805, 19.908253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579056, 38.153885, 20.167919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848446, 37.859375, 20.141603>,  <38.010078, 37.682671, 20.125814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848446, 37.859375, 20.141603>,  <37.579056, 38.153885, 20.167919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848446, 37.859375, 20.141603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350516, -0.396440, 0.848512,
		-0.650821, -0.548392, -0.525069,
		0.673476, -0.736275, -0.065791,
		38.050488, 37.638493, 20.121866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198162, 37.498112, 20.229387>,  <37.579056, 38.153885, 20.167919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198162, 37.498112, 20.229387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573154, 37.392441, 20.320019>,  <37.798149, 37.329037, 20.374397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.573154, 37.392441, 20.320019>,  <37.198162, 37.498112, 20.229387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573154, 37.392441, 20.320019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330777, -0.473854, 0.816118,
		-0.108239, -0.840042, -0.531615,
		0.937481, -0.264182, 0.226577,
		37.854401, 37.313187, 20.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.011646, 40.309910, 16.964052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.129681, 39.929733, 16.924894>,  <42.200500, 39.701626, 16.901400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.129681, 39.929733, 16.924894>,  <42.011646, 40.309910, 16.964052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129681, 39.929733, 16.924894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108806, -0.135217, 0.984823,
		-0.949256, -0.279952, -0.143315,
		0.295082, -0.950444, -0.097896,
		42.218204, 39.644600, 16.895525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533787, 39.913601, 17.194036>,  <42.011646, 40.309910, 16.964052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533787, 39.913601, 17.194036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.858166, 39.682217, 17.229252>,  <42.052792, 39.543385, 17.250381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.858166, 39.682217, 17.229252>,  <41.533787, 39.913601, 17.194036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858166, 39.682217, 17.229252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036417, 0.200066, 0.979105,
		-0.583987, -0.790795, 0.183309,
		0.810946, -0.578460, 0.088038,
		42.101448, 39.508678, 17.255663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363991, 39.366245, 17.606857>,  <41.533787, 39.913601, 17.194036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363991, 39.366245, 17.606857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.761787, 39.403965, 17.625195>,  <42.000465, 39.426598, 17.636196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.761787, 39.403965, 17.625195>,  <41.363991, 39.366245, 17.606857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761787, 39.403965, 17.625195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058700, 0.138465, 0.988626,
		0.086873, -0.985868, 0.143237,
		0.994489, 0.094293, 0.045841,
		42.060135, 39.432255, 17.638947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614197, 38.888813, 18.221226>,  <41.363991, 39.366245, 17.606857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614197, 38.888813, 18.221226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905617, 39.152271, 18.145969>,  <42.080471, 39.310345, 18.100815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905617, 39.152271, 18.145969>,  <41.614197, 38.888813, 18.221226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905617, 39.152271, 18.145969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001340, 0.276033, 0.961147,
		0.684988, -0.699995, 0.201987,
		0.728553, 0.658645, -0.188141,
		42.124184, 39.349865, 18.089527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976620, 38.813507, 18.825182>,  <41.614197, 38.888813, 18.221226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976620, 38.813507, 18.825182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105007, 39.150211, 18.651552>,  <42.182037, 39.352234, 18.547375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105007, 39.150211, 18.651552>,  <41.976620, 38.813507, 18.825182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105007, 39.150211, 18.651552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067857, 0.436707, 0.897041,
		0.944657, -0.317375, 0.083049,
		0.320966, 0.841760, -0.434075,
		42.201298, 39.402740, 18.521330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552261, 39.029346, 19.251362>,  <41.976620, 38.813507, 18.825182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552261, 39.029346, 19.251362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.409210, 39.354889, 19.068171>,  <42.323380, 39.550213, 18.958256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.409210, 39.354889, 19.068171>,  <42.552261, 39.029346, 19.251362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409210, 39.354889, 19.068171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052128, 0.507044, 0.860342,
		0.932407, 0.283812, -0.223760,
		-0.357631, 0.813853, -0.457977,
		42.301922, 39.599045, 18.930777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983875, 39.632858, 19.496946>,  <42.552261, 39.029346, 19.251362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983875, 39.632858, 19.496946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648502, 39.803940, 19.361835>,  <42.447277, 39.906590, 19.280769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648502, 39.803940, 19.361835>,  <42.983875, 39.632858, 19.496946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648502, 39.803940, 19.361835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163260, 0.394207, 0.904404,
		0.519974, 0.813430, -0.260689,
		-0.838435, 0.427706, -0.337778,
		42.396973, 39.932251, 19.260502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093586, 40.385689, 19.639090>,  <42.983875, 39.632858, 19.496946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093586, 40.385689, 19.639090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.704777, 40.303558, 19.593462>,  <42.471493, 40.254280, 19.566086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.704777, 40.303558, 19.593462>,  <43.093586, 40.385689, 19.639090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704777, 40.303558, 19.593462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183032, 0.357777, 0.915694,
		-0.147205, 0.910954, -0.385349,
		-0.972024, -0.205326, -0.114067,
		42.413170, 40.241959, 19.559242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800423, 40.797623, 20.055910>,  <43.093586, 40.385689, 19.639090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800423, 40.797623, 20.055910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.485188, 40.556744, 20.004889>,  <42.296047, 40.412216, 19.974276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.485188, 40.556744, 20.004889>,  <42.800423, 40.797623, 20.055910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485188, 40.556744, 20.004889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326448, 0.233199, 0.915997,
		-0.521865, 0.763529, -0.380368,
		-0.788092, -0.602197, -0.127554,
		42.248760, 40.376083, 19.966621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276890, 41.100658, 20.408548>,  <42.800423, 40.797623, 20.055910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276890, 41.100658, 20.408548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158253, 40.719246, 20.387377>,  <42.087070, 40.490398, 20.374674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158253, 40.719246, 20.387377>,  <42.276890, 41.100658, 20.408548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158253, 40.719246, 20.387377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228030, 0.016889, 0.973508,
		-0.927381, 0.300806, -0.222444,
		-0.296594, -0.953536, -0.052930,
		42.069275, 40.433186, 20.371498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696236, 41.102905, 20.741095>,  <42.276890, 41.100658, 20.408548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696236, 41.102905, 20.741095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.822289, 40.723862, 20.762003>,  <41.897923, 40.496437, 20.774548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.822289, 40.723862, 20.762003>,  <41.696236, 41.102905, 20.741095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822289, 40.723862, 20.762003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289049, -0.043373, 0.956331,
		-0.903958, -0.316484, -0.287573,
		0.315136, -0.947606, 0.052272,
		41.916828, 40.439579, 20.777685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165001, 40.696663, 21.057665>,  <41.696236, 41.102905, 20.741095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165001, 40.696663, 21.057665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494282, 40.472397, 21.093424>,  <41.691853, 40.337837, 21.114880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494282, 40.472397, 21.093424>,  <41.165001, 40.696663, 21.057665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494282, 40.472397, 21.093424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139221, -0.046697, 0.989160,
		-0.550410, -0.826727, -0.116497,
		0.823205, -0.560662, 0.089395,
		41.741245, 40.304199, 21.120243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659481, 40.314045, 20.625458>,  <41.165001, 40.696663, 21.057665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659481, 40.314045, 20.625458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.260460, 40.301861, 20.600264>,  <40.021049, 40.294548, 20.585148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.260460, 40.301861, 20.600264>,  <40.659481, 40.314045, 20.625458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260460, 40.301861, 20.600264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052469, 0.269783, -0.961491,
		0.046280, -0.962439, -0.267524,
		-0.997550, -0.030461, -0.062984,
		39.961197, 40.292721, 20.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436138, 39.963501, 19.993210>,  <40.659481, 40.314045, 20.625458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436138, 39.963501, 19.993210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118885, 40.185135, 20.094347>,  <39.928532, 40.318115, 20.155029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118885, 40.185135, 20.094347>,  <40.436138, 39.963501, 19.993210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118885, 40.185135, 20.094347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040492, 0.366255, -0.929633,
		-0.607699, -0.747562, -0.268054,
		-0.793135, 0.554083, 0.252843,
		39.880943, 40.351360, 20.170200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993015, 39.925846, 19.397032>,  <40.436138, 39.963501, 19.993210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993015, 39.925846, 19.397032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845081, 40.244068, 19.588995>,  <39.756321, 40.435001, 19.704172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845081, 40.244068, 19.588995>,  <39.993015, 39.925846, 19.397032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845081, 40.244068, 19.588995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192209, 0.439844, -0.877265,
		-0.908998, -0.416686, -0.009757,
		-0.369835, 0.795557, 0.479908,
		39.734131, 40.482735, 19.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362576, 40.080387, 19.127199>,  <39.993015, 39.925846, 19.397032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362576, 40.080387, 19.127199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506275, 40.416843, 19.288904>,  <39.592495, 40.618717, 19.385927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506275, 40.416843, 19.288904>,  <39.362576, 40.080387, 19.127199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506275, 40.416843, 19.288904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292287, 0.512799, -0.807221,
		-0.886288, 0.171834, 0.430077,
		0.359251, 0.841136, 0.404263,
		39.614052, 40.669186, 19.410183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851151, 40.581772, 18.979282>,  <39.362576, 40.080387, 19.127199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851151, 40.581772, 18.979282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.178146, 40.788292, 19.081373>,  <39.374344, 40.912205, 19.142628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.178146, 40.788292, 19.081373>,  <38.851151, 40.581772, 18.979282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178146, 40.788292, 19.081373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036021, 0.488119, -0.872033,
		-0.574811, 0.703687, 0.417631,
		0.817493, 0.516298, 0.255229,
		39.423393, 40.943180, 19.157942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677227, 41.282166, 18.739677>,  <38.851151, 40.581772, 18.979282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677227, 41.282166, 18.739677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.075123, 41.242268, 18.748970>,  <39.313862, 41.218330, 18.754545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.075123, 41.242268, 18.748970>,  <38.677227, 41.282166, 18.739677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075123, 41.242268, 18.748970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074383, 0.547724, -0.833346,
		0.070397, 0.830692, 0.552264,
		0.994742, -0.099744, 0.023231,
		39.373547, 41.212345, 18.755939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814106, 41.913338, 18.497921>,  <38.677227, 41.282166, 18.739677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814106, 41.913338, 18.497921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140354, 41.691616, 18.431581>,  <39.336102, 41.558582, 18.391777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140354, 41.691616, 18.431581>,  <38.814106, 41.913338, 18.497921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140354, 41.691616, 18.431581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109823, 0.429753, -0.896243,
		0.568067, 0.712781, 0.411392,
		0.815622, -0.554306, -0.165849,
		39.385040, 41.525326, 18.381826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361153, 42.374508, 18.178762>,  <38.814106, 41.913338, 18.497921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361153, 42.374508, 18.178762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457645, 41.991814, 18.113697>,  <39.515541, 41.762196, 18.074657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457645, 41.991814, 18.113697>,  <39.361153, 42.374508, 18.178762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457645, 41.991814, 18.113697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153361, 0.203088, -0.967076,
		0.958272, 0.208346, 0.195719,
		0.241235, -0.956738, -0.162662,
		39.530014, 41.704792, 18.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000278, 42.412727, 17.881079>,  <39.361153, 42.374508, 18.178762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000278, 42.412727, 17.881079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848877, 42.061813, 17.763018>,  <39.758038, 41.851265, 17.692181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848877, 42.061813, 17.763018>,  <40.000278, 42.412727, 17.881079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848877, 42.061813, 17.763018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411756, 0.126002, -0.902541,
		0.828973, -0.463142, 0.313534,
		-0.378499, -0.877281, -0.295154,
		39.735329, 41.798630, 17.674471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599205, 41.981312, 17.646803>,  <40.000278, 42.412727, 17.881079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599205, 41.981312, 17.646803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.297607, 41.779423, 17.478634>,  <40.116650, 41.658291, 17.377733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.297607, 41.779423, 17.478634>,  <40.599205, 41.981312, 17.646803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297607, 41.779423, 17.478634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472800, 0.027333, -0.880746,
		0.456021, -0.862851, 0.218023,
		-0.753993, -0.504719, -0.420420,
		40.071411, 41.628006, 17.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946712, 41.429726, 17.216654>,  <40.599205, 41.981312, 17.646803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946712, 41.429726, 17.216654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577492, 41.424004, 17.062893>,  <40.355957, 41.420570, 16.970636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577492, 41.424004, 17.062893>,  <40.946712, 41.429726, 17.216654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577492, 41.424004, 17.062893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380674, -0.177584, -0.907497,
		-0.055285, -0.984002, 0.169364,
		-0.923055, -0.014301, -0.384401,
		40.300575, 41.419712, 16.947573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927544, 40.903549, 16.791052>,  <40.946712, 41.429726, 17.216654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927544, 40.903549, 16.791052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639202, 41.138912, 16.644548>,  <40.466198, 41.280128, 16.556646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639202, 41.138912, 16.644548>,  <40.927544, 40.903549, 16.791052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639202, 41.138912, 16.644548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257577, -0.263160, -0.929732,
		-0.643443, -0.764543, 0.038141,
		-0.720858, 0.588405, -0.366257,
		40.422943, 41.315434, 16.534672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535969, 40.525230, 16.358250>,  <40.927544, 40.903549, 16.791052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535969, 40.525230, 16.358250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.428947, 40.893631, 16.244997>,  <40.364735, 41.114674, 16.177046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.428947, 40.893631, 16.244997>,  <40.535969, 40.525230, 16.358250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428947, 40.893631, 16.244997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291357, -0.202755, -0.934880,
		-0.918437, -0.332622, -0.214094,
		-0.267554, 0.921006, -0.283130,
		40.348682, 41.169933, 16.160059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532001, 39.731785, 16.192743>,  <40.535969, 40.525230, 16.358250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532001, 39.731785, 16.192743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249081, 39.528164, 15.996545>,  <40.079327, 39.405991, 15.878825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249081, 39.528164, 15.996545>,  <40.532001, 39.731785, 16.192743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249081, 39.528164, 15.996545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308513, -0.402010, 0.862095,
		-0.636033, 0.761089, 0.127296,
		-0.707306, -0.509049, -0.490498,
		40.036888, 39.375450, 15.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869080, 39.915344, 16.504692>,  <40.532001, 39.731785, 16.192743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869080, 39.915344, 16.504692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785511, 39.573376, 16.314762>,  <39.735371, 39.368195, 16.200804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785511, 39.573376, 16.314762>,  <39.869080, 39.915344, 16.504692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785511, 39.573376, 16.314762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450020, -0.347030, 0.822832,
		-0.868237, 0.385586, -0.312232,
		-0.208919, -0.854923, -0.474825,
		39.722836, 39.316898, 16.172314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126686, 39.779320, 16.538239>,  <39.869080, 39.915344, 16.504692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126686, 39.779320, 16.538239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267063, 39.417336, 16.442001>,  <39.351292, 39.200146, 16.384258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.267063, 39.417336, 16.442001>,  <39.126686, 39.779320, 16.538239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267063, 39.417336, 16.442001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672491, -0.422372, 0.607748,
		-0.651608, -0.051489, -0.756806,
		0.350946, -0.904959, -0.240595,
		39.372349, 39.145847, 16.369823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598663, 39.343128, 16.591883>,  <39.126686, 39.779320, 16.538239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598663, 39.343128, 16.591883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896481, 39.077286, 16.566729>,  <39.075169, 38.917778, 16.551636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896481, 39.077286, 16.566729>,  <38.598663, 39.343128, 16.591883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896481, 39.077286, 16.566729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490007, -0.608041, 0.624643,
		-0.453379, -0.434259, -0.778374,
		0.744541, -0.664609, -0.062883,
		39.119843, 38.877903, 16.547863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241814, 38.647224, 16.632332>,  <38.598663, 39.343128, 16.591883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241814, 38.647224, 16.632332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626804, 38.614391, 16.735788>,  <38.857800, 38.594692, 16.797863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.626804, 38.614391, 16.735788>,  <38.241814, 38.647224, 16.632332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626804, 38.614391, 16.735788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263485, -0.510561, 0.818476,
		0.064871, -0.855915, -0.513032,
		0.962480, -0.082080, 0.258641,
		38.915550, 38.589767, 16.813381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346352, 37.928421, 16.841850>,  <38.241814, 38.647224, 16.632332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346352, 37.928421, 16.841850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636280, 38.144218, 17.013239>,  <38.810238, 38.273697, 17.116072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636280, 38.144218, 17.013239>,  <38.346352, 37.928421, 16.841850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636280, 38.144218, 17.013239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174583, -0.457801, 0.871745,
		0.666453, -0.706661, -0.237637,
		0.724818, 0.539490, 0.428474,
		38.853725, 38.306065, 17.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860126, 37.418488, 17.166752>,  <38.346352, 37.928421, 16.841850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860126, 37.418488, 17.166752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890869, 37.769535, 17.356018>,  <38.909313, 37.980164, 17.469578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890869, 37.769535, 17.356018>,  <38.860126, 37.418488, 17.166752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890869, 37.769535, 17.356018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193035, -0.452491, 0.870626,
		0.978177, -0.158252, 0.134633,
		0.076858, 0.877615, 0.473164,
		38.913925, 38.032818, 17.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331802, 37.226482, 17.653374>,  <38.860126, 37.418488, 17.166752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331802, 37.226482, 17.653374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.156429, 37.565556, 17.772846>,  <39.051205, 37.769001, 17.844530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.156429, 37.565556, 17.772846>,  <39.331802, 37.226482, 17.653374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156429, 37.565556, 17.772846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168677, -0.404025, 0.899062,
		0.882795, 0.343795, 0.320121,
		-0.438430, 0.847684, 0.298681,
		39.024902, 37.819862, 17.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924641, 36.854618, 17.851717>,  <39.331802, 37.226482, 17.653374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924641, 36.854618, 17.851717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900711, 36.467407, 17.754278>,  <39.886353, 36.235081, 17.695814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900711, 36.467407, 17.754278>,  <39.924641, 36.854618, 17.851717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900711, 36.467407, 17.754278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109580, 0.236192, -0.965508,
		0.992176, -0.084454, 0.091946,
		-0.059824, -0.968029, -0.243599,
		39.882763, 36.176998, 17.681198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444561, 36.745018, 17.344742>,  <39.924641, 36.854618, 17.851717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444561, 36.745018, 17.344742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228378, 36.409584, 17.317373>,  <40.098667, 36.208324, 17.300951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228378, 36.409584, 17.317373>,  <40.444561, 36.745018, 17.344742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228378, 36.409584, 17.317373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225818, -0.066236, -0.971915,
		0.810500, -0.540732, 0.225164,
		-0.540459, -0.838583, -0.068423,
		40.066242, 36.158009, 17.296846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850189, 36.149281, 17.136354>,  <40.444561, 36.745018, 17.344742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850189, 36.149281, 17.136354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476967, 36.057243, 17.025747>,  <40.253033, 36.002022, 16.959383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476967, 36.057243, 17.025747>,  <40.850189, 36.149281, 17.136354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476967, 36.057243, 17.025747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290602, -0.029063, -0.956402,
		0.212023, -0.972735, 0.093982,
		-0.933058, -0.230091, -0.276517,
		40.197048, 35.988216, 16.942793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951588, 35.605633, 16.622461>,  <40.850189, 36.149281, 17.136354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951588, 35.605633, 16.622461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594131, 35.771526, 16.553881>,  <40.379658, 35.871063, 16.512733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594131, 35.771526, 16.553881>,  <40.951588, 35.605633, 16.622461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594131, 35.771526, 16.553881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161970, -0.058226, -0.985076,
		-0.418528, -0.908077, -0.015141,
		-0.893644, 0.414735, -0.171450,
		40.326038, 35.895947, 16.502445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719082, 35.123653, 16.354633>,  <40.951588, 35.605633, 16.622461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719082, 35.123653, 16.354633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504116, 35.431767, 16.217319>,  <40.375137, 35.616634, 16.134932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504116, 35.431767, 16.217319>,  <40.719082, 35.123653, 16.354633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504116, 35.431767, 16.217319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229428, -0.258164, -0.938464,
		-0.811508, -0.583106, -0.037983,
		-0.537418, 0.770285, -0.343283,
		40.342892, 35.662853, 16.114334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469166, 34.865601, 15.816257>,  <40.719082, 35.123653, 16.354633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469166, 34.865601, 15.816257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420109, 35.254658, 15.737330>,  <40.390675, 35.488091, 15.689975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420109, 35.254658, 15.737330>,  <40.469166, 34.865601, 15.816257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420109, 35.254658, 15.737330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337077, -0.146174, -0.930060,
		-0.933455, -0.180574, -0.309928,
		-0.122641, 0.972639, -0.197315,
		40.383316, 35.546448, 15.678136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278500, 34.905266, 15.066957>,  <40.469166, 34.865601, 15.816257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278500, 34.905266, 15.066957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391884, 35.268978, 15.188848>,  <40.459915, 35.487206, 15.261982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391884, 35.268978, 15.188848>,  <40.278500, 34.905266, 15.066957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391884, 35.268978, 15.188848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509263, 0.126524, -0.851260,
		-0.812589, 0.396486, -0.427198,
		0.283462, 0.909280, 0.304728,
		40.476921, 35.541763, 15.280266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029556, 35.372581, 14.488033>,  <40.278500, 34.905266, 15.066957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029556, 35.372581, 14.488033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.343296, 35.525360, 14.683548>,  <40.531540, 35.617027, 14.800857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.343296, 35.525360, 14.683548>,  <40.029556, 35.372581, 14.488033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343296, 35.525360, 14.683548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420650, 0.251619, -0.871632,
		-0.455906, 0.889271, 0.036690,
		0.784349, 0.381949, 0.488786,
		40.578602, 35.639946, 14.830184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228115, 35.915142, 14.135124>,  <40.029556, 35.372581, 14.488033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228115, 35.915142, 14.135124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545853, 35.831120, 14.363121>,  <40.736496, 35.780704, 14.499919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545853, 35.831120, 14.363121>,  <40.228115, 35.915142, 14.135124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545853, 35.831120, 14.363121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607049, 0.239709, -0.757649,
		0.022518, 0.947847, 0.317928,
		0.794346, -0.210059, 0.569991,
		40.784157, 35.768101, 14.534119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.258507, 35.173977, 30.193007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606686, 35.066490, 30.028028>,  <40.815594, 35.001999, 29.929043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606686, 35.066490, 30.028028>,  <40.258507, 35.173977, 30.193007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606686, 35.066490, 30.028028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351919, 0.246147, -0.903086,
		0.344200, 0.931236, 0.119691,
		0.870448, -0.268721, -0.412443,
		40.867821, 34.985874, 29.904295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474899, 35.623425, 29.671368>,  <40.258507, 35.173977, 30.193007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474899, 35.623425, 29.671368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695545, 35.306633, 29.566690>,  <40.827934, 35.116558, 29.503885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.695545, 35.306633, 29.566690>,  <40.474899, 35.623425, 29.671368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695545, 35.306633, 29.566690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352869, 0.062702, -0.933569,
		0.755780, 0.607315, -0.244878,
		0.551616, -0.791983, -0.261692,
		40.861031, 35.069038, 29.488182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709599, 35.714958, 28.996349>,  <40.474899, 35.623425, 29.671368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709599, 35.714958, 28.996349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765316, 35.321106, 29.038504>,  <40.798748, 35.084797, 29.063795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765316, 35.321106, 29.038504>,  <40.709599, 35.714958, 28.996349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765316, 35.321106, 29.038504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306416, -0.144058, -0.940934,
		0.941650, 0.098779, -0.321773,
		0.139298, -0.984627, 0.105385,
		40.807106, 35.025719, 29.070120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120644, 35.512375, 28.425898>,  <40.709599, 35.714958, 28.996349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120644, 35.512375, 28.425898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955067, 35.179512, 28.573502>,  <40.855721, 34.979794, 28.662064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.955067, 35.179512, 28.573502>,  <41.120644, 35.512375, 28.425898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955067, 35.179512, 28.573502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306041, -0.254558, -0.917355,
		0.857317, -0.492663, -0.149302,
		-0.413941, -0.832156, 0.369011,
		40.830883, 34.929867, 28.684204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244610, 35.057423, 27.889984>,  <41.120644, 35.512375, 28.425898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244610, 35.057423, 27.889984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979691, 34.858887, 28.114483>,  <40.820740, 34.739765, 28.249182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979691, 34.858887, 28.114483>,  <41.244610, 35.057423, 27.889984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979691, 34.858887, 28.114483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366884, -0.438288, -0.820548,
		0.653263, -0.749363, 0.108179,
		-0.662302, -0.496344, 0.561246,
		40.780998, 34.709984, 28.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260075, 34.319160, 27.673651>,  <41.244610, 35.057423, 27.889984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260075, 34.319160, 27.673651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.896385, 34.387932, 27.825312>,  <40.678173, 34.429195, 27.916307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.896385, 34.387932, 27.825312>,  <41.260075, 34.319160, 27.673651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896385, 34.387932, 27.825312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413783, -0.473417, -0.777599,
		0.045810, -0.863897, 0.501580,
		-0.909222, 0.171923, 0.379153,
		40.623619, 34.439510, 27.939058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873196, 33.803356, 27.414637>,  <41.260075, 34.319160, 27.673651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873196, 33.803356, 27.414637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582794, 34.053032, 27.530087>,  <40.408554, 34.202835, 27.599358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582794, 34.053032, 27.530087>,  <40.873196, 33.803356, 27.414637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582794, 34.053032, 27.530087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555099, -0.284168, -0.781738,
		-0.405933, -0.727761, 0.552794,
		-0.726005, 0.624189, 0.288626,
		40.364994, 34.240288, 27.616674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281384, 33.426479, 27.404144>,  <40.873196, 33.803356, 27.414637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281384, 33.426479, 27.404144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.121189, 33.792347, 27.382229>,  <40.025074, 34.011868, 27.369080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.121189, 33.792347, 27.382229>,  <40.281384, 33.426479, 27.404144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121189, 33.792347, 27.382229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558797, -0.291179, -0.776505,
		-0.726196, -0.280361, 0.627724,
		-0.400482, 0.914665, -0.054788,
		40.001045, 34.066746, 27.365793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577095, 33.298401, 27.440310>,  <40.281384, 33.426479, 27.404144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577095, 33.298401, 27.440310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.668766, 33.644142, 27.261259>,  <39.723766, 33.851589, 27.153830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.668766, 33.644142, 27.261259>,  <39.577095, 33.298401, 27.440310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668766, 33.644142, 27.261259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443087, -0.316823, -0.838629,
		-0.866691, 0.390530, 0.310376,
		0.229175, 0.864355, -0.447626,
		39.737518, 33.903450, 27.126972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059067, 33.444717, 27.125868>,  <39.577095, 33.298401, 27.440310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059067, 33.444717, 27.125868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319340, 33.681339, 26.935427>,  <39.475502, 33.823315, 26.821161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.319340, 33.681339, 26.935427>,  <39.059067, 33.444717, 27.125868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319340, 33.681339, 26.935427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374643, -0.295276, -0.878894,
		-0.660499, 0.750247, 0.029493,
		0.650679, 0.591558, -0.476104,
		39.514545, 33.858807, 26.792595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697422, 33.893379, 26.595480>,  <39.059067, 33.444717, 27.125868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697422, 33.893379, 26.595480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078262, 33.920059, 26.476110>,  <39.306767, 33.936069, 26.404490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078262, 33.920059, 26.476110>,  <38.697422, 33.893379, 26.595480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078262, 33.920059, 26.476110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284435, -0.165094, -0.944373,
		-0.112262, 0.984020, -0.138213,
		0.952100, 0.066704, -0.298424,
		39.363892, 33.940071, 26.386583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823254, 34.466007, 26.125418>,  <38.697422, 33.893379, 26.595480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823254, 34.466007, 26.125418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114563, 34.201904, 26.052013>,  <39.289349, 34.043442, 26.007971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114563, 34.201904, 26.052013>,  <38.823254, 34.466007, 26.125418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114563, 34.201904, 26.052013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301683, -0.068453, -0.950948,
		0.615312, 0.747910, -0.249042,
		0.728271, -0.660261, -0.183512,
		39.333046, 34.003826, 25.996960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881336, 35.252972, 26.131905>,  <38.823254, 34.466007, 26.125418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881336, 35.252972, 26.131905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508221, 35.394402, 26.103909>,  <38.284351, 35.479259, 26.087111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508221, 35.394402, 26.103909>,  <38.881336, 35.252972, 26.131905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508221, 35.394402, 26.103909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125740, -0.137229, 0.982526,
		0.337791, 0.925286, 0.172463,
		-0.932784, 0.353574, -0.069990,
		38.228386, 35.500473, 26.082911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877876, 35.634979, 26.750652>,  <38.881336, 35.252972, 26.131905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877876, 35.634979, 26.750652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490734, 35.586494, 26.662497>,  <38.258450, 35.557404, 26.609602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490734, 35.586494, 26.662497>,  <38.877876, 35.634979, 26.750652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490734, 35.586494, 26.662497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220121, -0.015781, 0.975345,
		-0.121699, 0.992501, -0.011408,
		-0.967851, -0.121210, -0.220391,
		38.200378, 35.550133, 26.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623634, 35.938160, 27.385546>,  <38.877876, 35.634979, 26.750652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623634, 35.938160, 27.385546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355461, 35.721619, 27.182587>,  <38.194557, 35.591694, 27.060810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355461, 35.721619, 27.182587>,  <38.623634, 35.938160, 27.385546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355461, 35.721619, 27.182587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423806, -0.281916, 0.860762,
		-0.609021, 0.792124, -0.040423,
		-0.670434, -0.541354, -0.507399,
		38.154331, 35.559212, 27.030367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995369, 36.110901, 27.662449>,  <38.623634, 35.938160, 27.385546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995369, 36.110901, 27.662449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911514, 35.762054, 27.485605>,  <37.861202, 35.552746, 27.379499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911514, 35.762054, 27.485605>,  <37.995369, 36.110901, 27.662449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911514, 35.762054, 27.485605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449210, -0.315713, 0.835785,
		-0.868483, 0.373810, -0.325580,
		-0.209634, -0.872119, -0.442111,
		37.848625, 35.500420, 27.352972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248501, 35.970448, 27.830612>,  <37.995369, 36.110901, 27.662449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248501, 35.970448, 27.830612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372341, 35.602169, 27.735559>,  <37.446644, 35.381203, 27.678528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372341, 35.602169, 27.735559>,  <37.248501, 35.970448, 27.830612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372341, 35.602169, 27.735559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513838, -0.372275, 0.772904,
		-0.800074, -0.117186, -0.588344,
		0.309600, -0.920694, -0.237633,
		37.465221, 35.325962, 27.664270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682758, 35.605026, 27.847992>,  <37.248501, 35.970448, 27.830612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682758, 35.605026, 27.847992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970463, 35.329018, 27.880333>,  <37.143085, 35.163414, 27.899736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970463, 35.329018, 27.880333>,  <36.682758, 35.605026, 27.847992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970463, 35.329018, 27.880333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426559, -0.346755, 0.835350,
		-0.548373, -0.635321, -0.543741,
		0.719260, -0.690020, 0.080851,
		37.186241, 35.122013, 27.904589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289249, 35.084465, 28.155134>,  <36.682758, 35.605026, 27.847992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289249, 35.084465, 28.155134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677345, 35.016788, 28.224422>,  <36.910202, 34.976185, 28.265995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.677345, 35.016788, 28.224422>,  <36.289249, 35.084465, 28.155134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677345, 35.016788, 28.224422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225976, -0.375695, 0.898770,
		-0.086982, -0.911169, -0.402747,
		0.970242, -0.169188, 0.173223,
		36.968418, 34.966030, 28.276390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324902, 34.370113, 28.406162>,  <36.289249, 35.084465, 28.155134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324902, 34.370113, 28.406162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664310, 34.538532, 28.534367>,  <36.867958, 34.639584, 28.611290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664310, 34.538532, 28.534367>,  <36.324902, 34.370113, 28.406162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664310, 34.538532, 28.534367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205945, -0.295179, 0.932982,
		0.487436, -0.857665, -0.163754,
		0.848524, 0.421045, 0.320513,
		36.918869, 34.664845, 28.630520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491688, 33.978477, 28.984850>,  <36.324902, 34.370113, 28.406162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491688, 33.978477, 28.984850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698177, 34.316677, 29.039463>,  <36.822071, 34.519596, 29.072231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698177, 34.316677, 29.039463>,  <36.491688, 33.978477, 28.984850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698177, 34.316677, 29.039463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262074, 0.004172, 0.965039,
		0.815371, -0.533959, 0.223737,
		0.516225, 0.845500, 0.136535,
		36.853046, 34.570328, 29.080423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902481, 33.843719, 29.551395>,  <36.491688, 33.978477, 28.984850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902481, 33.843719, 29.551395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872181, 34.242569, 29.550369>,  <36.854000, 34.481880, 29.549753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872181, 34.242569, 29.550369>,  <36.902481, 33.843719, 29.551395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872181, 34.242569, 29.550369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231086, -0.015051, 0.972817,
		0.969980, 0.074283, 0.231562,
		-0.075749, 0.997124, -0.002566,
		36.849457, 34.541706, 29.549599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474228, 34.081543, 29.940250>,  <36.902481, 33.843719, 29.551395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474228, 34.081543, 29.940250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211544, 34.383160, 29.945179>,  <37.053936, 34.564129, 29.948137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211544, 34.383160, 29.945179>,  <37.474228, 34.081543, 29.940250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211544, 34.383160, 29.945179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044395, -0.054967, 0.997501,
		0.752838, 0.654519, 0.069573,
		-0.656707, 0.754045, 0.012324,
		37.014530, 34.609375, 29.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708515, 34.540428, 30.456446>,  <37.474228, 34.081543, 29.940250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708515, 34.540428, 30.456446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333309, 34.672928, 30.415644>,  <37.108185, 34.752426, 30.391163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333309, 34.672928, 30.415644>,  <37.708515, 34.540428, 30.456446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333309, 34.672928, 30.415644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079569, 0.080642, 0.993562,
		0.337341, 0.940091, -0.049287,
		-0.938014, 0.331247, -0.102006,
		37.051907, 34.772301, 30.385042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657234, 35.092743, 30.920610>,  <37.708515, 34.540428, 30.456446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657234, 35.092743, 30.920610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276058, 34.985191, 30.864588>,  <37.047352, 34.920662, 30.830975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276058, 34.985191, 30.864588>,  <37.657234, 35.092743, 30.920610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276058, 34.985191, 30.864588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138529, -0.024745, 0.990049,
		-0.269669, 0.962856, -0.013667,
		-0.952937, -0.268879, -0.140056,
		36.990177, 34.904530, 30.822571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292717, 35.531506, 31.311184>,  <37.657234, 35.092743, 30.920610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292717, 35.531506, 31.311184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050694, 35.218639, 31.251688>,  <36.905479, 35.030922, 31.215990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050694, 35.218639, 31.251688>,  <37.292717, 35.531506, 31.311184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050694, 35.218639, 31.251688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233610, -0.004184, 0.972322,
		-0.761136, 0.623060, -0.180189,
		-0.605061, -0.782163, -0.148738,
		36.869175, 34.983990, 31.207067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596207, 35.823982, 30.718359>,  <37.292717, 35.531506, 31.311184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596207, 35.823982, 30.718359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491642, 36.197613, 30.815651>,  <37.428902, 36.421791, 30.874027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491642, 36.197613, 30.815651>,  <37.596207, 35.823982, 30.718359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491642, 36.197613, 30.815651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147753, 0.287749, -0.946240,
		-0.953852, -0.211420, -0.213233,
		-0.261412, 0.934078, 0.243232,
		37.413219, 36.477837, 30.888620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109180, 36.115200, 30.252934>,  <37.596207, 35.823982, 30.718359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109180, 36.115200, 30.252934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301216, 36.429241, 30.409460>,  <37.416439, 36.617664, 30.503376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301216, 36.429241, 30.409460>,  <37.109180, 36.115200, 30.252934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301216, 36.429241, 30.409460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265253, 0.295278, -0.917852,
		-0.836155, 0.544449, -0.066491,
		0.480090, 0.785103, 0.391315,
		37.445244, 36.664772, 30.526855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772163, 36.784237, 30.122580>,  <37.109180, 36.115200, 30.252934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772163, 36.784237, 30.122580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159489, 36.871773, 30.170708>,  <37.391884, 36.924294, 30.199585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159489, 36.871773, 30.170708>,  <36.772163, 36.784237, 30.122580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159489, 36.871773, 30.170708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018399, 0.417963, -0.908278,
		-0.249059, 0.881711, 0.400693,
		0.968313, 0.218842, 0.120321,
		37.449982, 36.937424, 30.206804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905212, 37.528656, 30.016909>,  <36.772163, 36.784237, 30.122580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905212, 37.528656, 30.016909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266621, 37.365196, 29.965282>,  <37.483463, 37.267120, 29.934307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266621, 37.365196, 29.965282>,  <36.905212, 37.528656, 30.016909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266621, 37.365196, 29.965282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159528, 0.600241, -0.783748,
		0.397749, 0.687542, 0.607521,
		0.903519, -0.408652, -0.129064,
		37.537678, 37.242599, 29.926563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465046, 38.042892, 29.963402>,  <36.905212, 37.528656, 30.016909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465046, 38.042892, 29.963402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631241, 37.726303, 29.784092>,  <37.730957, 37.536350, 29.676506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631241, 37.726303, 29.784092>,  <37.465046, 38.042892, 29.963402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631241, 37.726303, 29.784092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356555, 0.595097, -0.720229,
		0.836805, 0.139409, 0.529455,
		0.415483, -0.791470, -0.448273,
		37.755886, 37.488861, 29.649611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120544, 38.338802, 29.719826>,  <37.465046, 38.042892, 29.963402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120544, 38.338802, 29.719826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064068, 37.996830, 29.520163>,  <38.030182, 37.791645, 29.400366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064068, 37.996830, 29.520163>,  <38.120544, 38.338802, 29.719826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064068, 37.996830, 29.520163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464050, 0.388227, -0.796202,
		0.874484, -0.344054, 0.341914,
		-0.141196, -0.854931, -0.499157,
		38.021709, 37.740353, 29.370415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611744, 38.445358, 29.252995>,  <38.120544, 38.338802, 29.719826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611744, 38.445358, 29.252995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365269, 38.176434, 29.088896>,  <38.217384, 38.015079, 28.990437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365269, 38.176434, 29.088896>,  <38.611744, 38.445358, 29.252995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365269, 38.176434, 29.088896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121696, 0.433355, -0.892969,
		0.778139, -0.600164, -0.185211,
		-0.616190, -0.672314, -0.410248,
		38.180412, 37.974739, 28.965822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056561, 38.243015, 28.730352>,  <38.611744, 38.445358, 29.252995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056561, 38.243015, 28.730352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680099, 38.172653, 28.614914>,  <38.454224, 38.130436, 28.545650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680099, 38.172653, 28.614914>,  <39.056561, 38.243015, 28.730352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680099, 38.172653, 28.614914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237243, 0.264327, -0.934798,
		0.240719, -0.948255, -0.207040,
		-0.941153, -0.175905, -0.288596,
		38.397755, 38.119881, 28.528336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107883, 38.046665, 28.010033>,  <39.056561, 38.243015, 28.730352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107883, 38.046665, 28.010033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712357, 38.105877, 28.017307>,  <38.475040, 38.141403, 28.021671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712357, 38.105877, 28.017307>,  <39.107883, 38.046665, 28.010033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712357, 38.105877, 28.017307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026848, 0.296624, -0.954617,
		-0.146705, -0.943452, -0.297281,
		-0.988816, 0.148029, 0.018186,
		38.415710, 38.150284, 28.022762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827709, 37.708218, 27.441137>,  <39.107883, 38.046665, 28.010033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827709, 37.708218, 27.441137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527813, 37.958176, 27.528214>,  <38.347874, 38.108150, 27.580460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527813, 37.958176, 27.528214>,  <38.827709, 37.708218, 27.441137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527813, 37.958176, 27.528214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046393, 0.278523, -0.959308,
		-0.660101, -0.729334, -0.179830,
		-0.749743, 0.624898, 0.217690,
		38.302891, 38.145645, 27.593521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240917, 37.578278, 26.918526>,  <38.827709, 37.708218, 27.441137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240917, 37.578278, 26.918526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161942, 37.937366, 27.076067>,  <38.114555, 38.152821, 27.170591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161942, 37.937366, 27.076067>,  <38.240917, 37.578278, 26.918526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161942, 37.937366, 27.076067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087524, 0.416300, -0.905005,
		-0.976400, -0.144213, -0.160766,
		-0.197440, 0.897718, 0.393853,
		38.102711, 38.206680, 27.194223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624405, 37.808369, 26.704006>,  <38.240917, 37.578278, 26.918526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624405, 37.808369, 26.704006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848270, 38.128471, 26.790138>,  <37.982590, 38.320534, 26.841818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848270, 38.128471, 26.790138>,  <37.624405, 37.808369, 26.704006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848270, 38.128471, 26.790138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027256, 0.277467, -0.960348,
		-0.828274, 0.531600, 0.177099,
		0.559660, 0.800258, 0.215329,
		38.016167, 38.368549, 26.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263306, 38.326138, 26.293875>,  <37.624405, 37.808369, 26.704006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263306, 38.326138, 26.293875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623909, 38.459846, 26.403811>,  <37.840271, 38.540073, 26.469772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623909, 38.459846, 26.403811>,  <37.263306, 38.326138, 26.293875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623909, 38.459846, 26.403811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152059, 0.349917, -0.924357,
		-0.405158, 0.875112, 0.264626,
		0.901513, 0.334272, 0.274840,
		37.894363, 38.560127, 26.486263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360222, 39.064461, 26.000525>,  <37.263306, 38.326138, 26.293875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360222, 39.064461, 26.000525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736851, 38.983776, 26.108419>,  <37.962830, 38.935368, 26.173157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736851, 38.983776, 26.108419>,  <37.360222, 39.064461, 26.000525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736851, 38.983776, 26.108419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329094, 0.380455, -0.864263,
		0.071705, 0.902534, 0.424606,
		0.941571, -0.201707, 0.269739,
		38.019321, 38.923264, 26.189341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796989, 39.643700, 25.892328>,  <37.360222, 39.064461, 26.000525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796989, 39.643700, 25.892328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060230, 39.342735, 25.881145>,  <38.218174, 39.162155, 25.874435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060230, 39.342735, 25.881145>,  <37.796989, 39.643700, 25.892328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060230, 39.342735, 25.881145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291456, 0.288807, -0.911945,
		0.694230, 0.592006, 0.409359,
		0.658102, -0.752410, -0.027955,
		38.257660, 39.117012, 25.872759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509808, 39.895214, 25.679012>,  <37.796989, 39.643700, 25.892328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509808, 39.895214, 25.679012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515125, 39.504539, 25.593307>,  <38.518314, 39.270134, 25.541883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515125, 39.504539, 25.593307>,  <38.509808, 39.895214, 25.679012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515125, 39.504539, 25.593307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218574, 0.211939, -0.952527,
		0.975730, -0.034170, 0.216295,
		0.013294, -0.976685, -0.214264,
		38.519112, 39.211533, 25.529028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216255, 39.748947, 25.369703>,  <38.509808, 39.895214, 25.679012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216255, 39.748947, 25.369703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954678, 39.469879, 25.252663>,  <38.797729, 39.302437, 25.182438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954678, 39.469879, 25.252663>,  <39.216255, 39.748947, 25.369703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954678, 39.469879, 25.252663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292420, 0.123611, -0.948267,
		0.697746, -0.705676, 0.123177,
		-0.653943, -0.697669, -0.292603,
		38.758495, 39.260578, 25.164883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474724, 39.527748, 24.786356>,  <39.216255, 39.748947, 25.369703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474724, 39.527748, 24.786356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107983, 39.370888, 24.756424>,  <38.887939, 39.276772, 24.738464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107983, 39.370888, 24.756424>,  <39.474724, 39.527748, 24.786356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107983, 39.370888, 24.756424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080489, 0.002011, -0.996754,
		0.391030, -0.919898, 0.029720,
		-0.916852, -0.392153, -0.074828,
		38.832928, 39.253242, 24.733976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458801, 38.867573, 24.478180>,  <39.474724, 39.527748, 24.786356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458801, 38.867573, 24.478180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083786, 38.992729, 24.417358>,  <38.858776, 39.067825, 24.380865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083786, 38.992729, 24.417358>,  <39.458801, 38.867573, 24.478180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083786, 38.992729, 24.417358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152410, -0.023471, -0.988039,
		-0.312720, -0.949498, -0.025683,
		-0.937538, 0.312894, -0.152053,
		38.802525, 39.086597, 24.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220409, 38.520531, 23.890654>,  <39.458801, 38.867573, 24.478180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220409, 38.520531, 23.890654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973354, 38.834167, 23.915052>,  <38.825119, 39.022350, 23.929691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973354, 38.834167, 23.915052>,  <39.220409, 38.520531, 23.890654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973354, 38.834167, 23.915052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108925, 0.162098, -0.980745,
		-0.778880, -0.599104, -0.185525,
		-0.617642, 0.784091, 0.060997,
		38.788063, 39.069393, 23.933352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869709, 38.556828, 23.166340>,  <39.220409, 38.520531, 23.890654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869709, 38.556828, 23.166340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827034, 38.907478, 23.354017>,  <38.801430, 39.117870, 23.466623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827034, 38.907478, 23.354017>,  <38.869709, 38.556828, 23.166340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827034, 38.907478, 23.354017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087796, 0.461737, -0.882661,
		-0.990409, -0.135362, 0.027703,
		-0.106688, 0.876628, 0.469193,
		38.795029, 39.170467, 23.494776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279278, 38.820312, 22.852369>,  <38.869709, 38.556828, 23.166340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279278, 38.820312, 22.852369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514305, 39.113300, 22.989922>,  <38.655323, 39.289093, 23.072453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.514305, 39.113300, 22.989922>,  <38.279278, 38.820312, 22.852369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514305, 39.113300, 22.989922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024840, 0.408452, -0.912442,
		-0.808791, 0.544666, 0.221800,
		0.587571, 0.732466, 0.343882,
		38.690575, 39.333038, 23.093086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055405, 39.310413, 22.488977>,  <38.279278, 38.820312, 22.852369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055405, 39.310413, 22.488977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371136, 39.507217, 22.635883>,  <38.560574, 39.625301, 22.724026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371136, 39.507217, 22.635883>,  <38.055405, 39.310413, 22.488977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371136, 39.507217, 22.635883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308631, 0.199143, -0.930102,
		-0.530757, 0.847507, 0.005341,
		0.789331, 0.492010, 0.367263,
		38.607937, 39.654819, 22.746063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121853, 39.930626, 22.060102>,  <38.055405, 39.310413, 22.488977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121853, 39.930626, 22.060102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.475269, 39.858818, 22.233133>,  <38.687321, 39.815735, 22.336952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.475269, 39.858818, 22.233133>,  <38.121853, 39.930626, 22.060102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475269, 39.858818, 22.233133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467139, 0.404132, -0.786422,
		-0.033639, 0.896911, 0.440929,
		0.883544, -0.179520, 0.432577,
		38.740334, 39.804962, 22.362906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511330, 40.545826, 21.922432>,  <38.121853, 39.930626, 22.060102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511330, 40.545826, 21.922432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798820, 40.276245, 21.990814>,  <38.971313, 40.114498, 22.031843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798820, 40.276245, 21.990814>,  <38.511330, 40.545826, 21.922432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798820, 40.276245, 21.990814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535816, 0.380178, -0.753900,
		0.443096, 0.633449, 0.634356,
		0.718726, -0.673949, 0.170957,
		39.014439, 40.074059, 22.042101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149307, 40.884903, 21.991135>,  <38.511330, 40.545826, 21.922432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149307, 40.884903, 21.991135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254025, 40.515175, 21.880070>,  <39.316856, 40.293339, 21.813431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.254025, 40.515175, 21.880070>,  <39.149307, 40.884903, 21.991135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254025, 40.515175, 21.880070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576320, 0.380490, -0.723245,
		0.774157, 0.029320, 0.632314,
		0.261794, -0.924320, -0.277661,
		39.332561, 40.237877, 21.796772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904831, 40.882378, 21.794401>,  <39.149307, 40.884903, 21.991135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904831, 40.882378, 21.794401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740269, 40.566723, 21.611967>,  <39.641533, 40.377331, 21.502506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740269, 40.566723, 21.611967>,  <39.904831, 40.882378, 21.794401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740269, 40.566723, 21.611967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437868, 0.267749, -0.858244,
		0.799385, -0.552791, 0.235383,
		-0.411406, -0.789134, -0.456084,
		39.616848, 40.329983, 21.475142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467678, 40.688862, 21.269810>,  <39.904831, 40.882378, 21.794401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467678, 40.688862, 21.269810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125736, 40.507450, 21.168982>,  <39.920570, 40.398602, 21.108484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125736, 40.507450, 21.168982>,  <40.467678, 40.688862, 21.269810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125736, 40.507450, 21.168982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207903, 0.145707, -0.967236,
		0.475400, -0.879249, -0.030267,
		-0.854851, -0.453531, -0.252068,
		39.869282, 40.371391, 21.093361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920902, 40.095272, 21.440380>,  <40.467678, 40.688862, 21.269810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920902, 40.095272, 21.440380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317238, 40.132740, 21.479275>,  <41.555038, 40.155220, 21.502611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.317238, 40.132740, 21.479275>,  <40.920902, 40.095272, 21.440380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317238, 40.132740, 21.479275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082637, -0.148774, 0.985412,
		0.106772, -0.984425, -0.139671,
		0.990843, 0.093673, 0.097235,
		41.614491, 40.160843, 21.508446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110840, 39.638435, 22.080114>,  <40.920902, 40.095272, 21.440380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110840, 39.638435, 22.080114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441917, 39.854820, 22.020397>,  <41.640564, 39.984650, 21.984566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441917, 39.854820, 22.020397>,  <41.110840, 39.638435, 22.080114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441917, 39.854820, 22.020397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193349, -0.025149, 0.980808,
		0.526824, -0.840672, -0.125409,
		0.827692, 0.540961, -0.149294,
		41.690224, 40.017109, 21.975609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669121, 39.221371, 22.328789>,  <41.110840, 39.638435, 22.080114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669121, 39.221371, 22.328789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796120, 39.600674, 22.329550>,  <41.872318, 39.828255, 22.330006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796120, 39.600674, 22.329550>,  <41.669121, 39.221371, 22.328789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796120, 39.600674, 22.329550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097075, -0.034498, 0.994679,
		0.943279, -0.315620, -0.103005,
		0.317494, 0.948259, 0.001903,
		41.891369, 39.885151, 22.330120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253662, 39.192940, 22.670881>,  <41.669121, 39.221371, 22.328789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253662, 39.192940, 22.670881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119961, 39.568829, 22.699732>,  <42.039738, 39.794361, 22.717041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119961, 39.568829, 22.699732>,  <42.253662, 39.192940, 22.670881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119961, 39.568829, 22.699732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176867, -0.012623, 0.984154,
		0.925738, 0.341716, -0.161986,
		-0.334256, 0.939718, 0.072124,
		42.019684, 39.850742, 22.721369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772469, 39.447407, 23.160707>,  <42.253662, 39.192940, 22.670881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772469, 39.447407, 23.160707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.475014, 39.714809, 23.156672>,  <42.296539, 39.875252, 23.154249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.475014, 39.714809, 23.156672>,  <42.772469, 39.447407, 23.160707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475014, 39.714809, 23.156672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117747, 0.145807, 0.982281,
		0.658134, 0.729272, -0.187143,
		-0.743637, 0.668507, -0.010091,
		42.251923, 39.915363, 23.153645>
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
