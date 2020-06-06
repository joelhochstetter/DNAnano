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
	<24.420738, 35.255203, 35.509781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242718, 35.112179, 35.181370>,  <24.135906, 35.026363, 34.984325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242718, 35.112179, 35.181370>,  <24.420738, 35.255203, 35.509781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242718, 35.112179, 35.181370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855531, -0.101102, 0.507784,
		-0.264570, 0.928402, -0.260907,
		-0.445050, -0.357558, -0.821025,
		24.109203, 35.004910, 34.935062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804327, 34.875641, 34.918251>,  <24.420738, 35.255203, 35.509781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804327, 34.875641, 34.918251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051985, 35.117020, 35.119251>,  <25.200579, 35.261848, 35.239853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051985, 35.117020, 35.119251>,  <24.804327, 34.875641, 34.918251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051985, 35.117020, 35.119251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776079, -0.372551, -0.508829,
		-0.119844, 0.705021, -0.698987,
		0.619144, 0.603449, 0.502504,
		25.237728, 35.298054, 35.270004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142162, 35.439144, 34.445160>,  <24.804327, 34.875641, 34.918251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142162, 35.439144, 34.445160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351694, 35.302963, 34.757492>,  <25.477413, 35.221256, 34.944893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351694, 35.302963, 34.757492>,  <25.142162, 35.439144, 34.445160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351694, 35.302963, 34.757492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759008, -0.229548, -0.609274,
		0.386666, 0.911812, 0.138162,
		0.523829, -0.340452, 0.780830,
		25.508842, 35.200829, 34.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834484, 35.606579, 34.462090>,  <25.142162, 35.439144, 34.445160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834484, 35.606579, 34.462090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814150, 35.248905, 34.640015>,  <25.801949, 35.034302, 34.746769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814150, 35.248905, 34.640015>,  <25.834484, 35.606579, 34.462090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814150, 35.248905, 34.640015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731171, -0.336711, -0.593309,
		0.680298, 0.295070, 0.670916,
		-0.050837, -0.894181, 0.444811,
		25.798899, 34.980652, 34.773457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513351, 35.323208, 34.608150>,  <25.834484, 35.606579, 34.462090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513351, 35.323208, 34.608150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233215, 35.044937, 34.544212>,  <26.065134, 34.877975, 34.505848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233215, 35.044937, 34.544212>,  <26.513351, 35.323208, 34.608150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233215, 35.044937, 34.544212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659631, -0.545176, -0.517368,
		0.272780, -0.467773, 0.840702,
		-0.700342, -0.695680, -0.159845,
		26.023113, 34.836231, 34.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831959, 34.894905, 35.153244>,  <26.513351, 35.323208, 34.608150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831959, 34.894905, 35.153244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705355, 35.173336, 35.411018>,  <26.629393, 35.340397, 35.565681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705355, 35.173336, 35.411018>,  <26.831959, 34.894905, 35.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705355, 35.173336, 35.411018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516521, -0.696280, 0.498398,
		0.795630, -0.175113, 0.579921,
		-0.316511, 0.696081, 0.644431,
		26.610401, 35.382160, 35.604347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005800, 34.657066, 35.800648>,  <26.831959, 34.894905, 35.153244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005800, 34.657066, 35.800648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721455, 34.929600, 35.870457>,  <26.550848, 35.093121, 35.912342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721455, 34.929600, 35.870457>,  <27.005800, 34.657066, 35.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721455, 34.929600, 35.870457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429927, -0.617323, 0.658843,
		0.556628, 0.393316, 0.731756,
		-0.710864, 0.681333, 0.174522,
		26.508196, 35.133999, 35.922813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958464, 34.782925, 36.583614>,  <27.005800, 34.657066, 35.800648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958464, 34.782925, 36.583614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603441, 34.901981, 36.442955>,  <26.390429, 34.973415, 36.358559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603441, 34.901981, 36.442955>,  <26.958464, 34.782925, 36.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603441, 34.901981, 36.442955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460689, -0.568117, 0.681915,
		0.003188, 0.767238, 0.641355,
		-0.887556, 0.297639, -0.351647,
		26.337175, 34.991272, 36.337460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532385, 34.882999, 37.222527>,  <26.958464, 34.782925, 36.583614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532385, 34.882999, 37.222527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280020, 34.825909, 36.917480>,  <26.128601, 34.791653, 36.734455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280020, 34.825909, 36.917480>,  <26.532385, 34.882999, 37.222527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280020, 34.825909, 36.917480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585884, -0.556722, 0.588898,
		-0.508615, 0.818346, 0.267621,
		-0.630913, -0.142728, -0.762612,
		26.090746, 34.783089, 36.688698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878662, 34.892452, 37.587688>,  <26.532385, 34.882999, 37.222527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878662, 34.892452, 37.587688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797529, 34.731487, 37.230606>,  <25.748850, 34.634907, 37.016357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797529, 34.731487, 37.230606>,  <25.878662, 34.892452, 37.587688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797529, 34.731487, 37.230606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708663, -0.568818, 0.417424,
		-0.675764, 0.717294, -0.169801,
		-0.202830, -0.402412, -0.892706,
		25.736681, 34.610764, 36.962795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181971, 34.815014, 37.580269>,  <25.878662, 34.892452, 37.587688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181971, 34.815014, 37.580269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289179, 34.594200, 37.264439>,  <25.353504, 34.461712, 37.074940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289179, 34.594200, 37.264439>,  <25.181971, 34.815014, 37.580269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289179, 34.594200, 37.264439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750265, -0.633726, 0.188399,
		-0.604375, 0.541892, -0.584024,
		0.268020, -0.552036, -0.789570,
		25.369585, 34.428589, 37.027569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603167, 34.701939, 37.128376>,  <25.181971, 34.815014, 37.580269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603167, 34.701939, 37.128376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870661, 34.404545, 37.126301>,  <25.031157, 34.226109, 37.125057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870661, 34.404545, 37.126301>,  <24.603167, 34.701939, 37.128376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870661, 34.404545, 37.126301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706672, -0.637762, 0.306388,
		-0.231103, -0.201226, -0.951892,
		0.668734, -0.743483, -0.005188,
		25.071281, 34.181499, 37.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352161, 34.090912, 36.920132>,  <24.603167, 34.701939, 37.128376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352161, 34.090912, 36.920132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664215, 33.920597, 37.103477>,  <24.851446, 33.818409, 37.213486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664215, 33.920597, 37.103477>,  <24.352161, 34.090912, 36.920132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664215, 33.920597, 37.103477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529789, -0.839302, 0.122052,
		0.332742, -0.338055, -0.880341,
		0.780132, -0.425783, 0.458369,
		24.898254, 33.792862, 37.240990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698462, 33.561741, 36.419830>,  <24.352161, 34.090912, 36.920132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698462, 33.561741, 36.419830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726021, 33.490417, 36.812454>,  <24.742558, 33.447624, 37.048027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726021, 33.490417, 36.812454>,  <24.698462, 33.561741, 36.419830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726021, 33.490417, 36.812454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425321, -0.895250, -0.132775,
		0.902416, -0.408329, -0.137522,
		0.068900, -0.178309, 0.981559,
		24.746691, 33.436924, 37.106922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999699, 32.897900, 36.454922>,  <24.698462, 33.561741, 36.419830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999699, 32.897900, 36.454922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813143, 32.945091, 36.805592>,  <24.701210, 32.973408, 37.015995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813143, 32.945091, 36.805592>,  <24.999699, 32.897900, 36.454922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813143, 32.945091, 36.805592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342113, -0.938002, -0.055771,
		0.815744, -0.325933, 0.477838,
		-0.466390, 0.117979, 0.876676,
		24.673225, 32.980484, 37.068596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511061, 33.297211, 36.819115>,  <24.999699, 32.897900, 36.454922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511061, 33.297211, 36.819115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283157, 33.624313, 36.786484>,  <25.146416, 33.820576, 36.766907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283157, 33.624313, 36.786484>,  <25.511061, 33.297211, 36.819115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283157, 33.624313, 36.786484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715990, 0.445216, -0.537718,
		-0.403401, -0.364779, -0.839169,
		-0.569760, 0.817752, -0.081578,
		25.112230, 33.869640, 36.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761187, 33.486568, 36.167103>,  <25.511061, 33.297211, 36.819115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761187, 33.486568, 36.167103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630211, 33.772171, 36.414646>,  <25.551626, 33.943531, 36.563171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630211, 33.772171, 36.414646>,  <25.761187, 33.486568, 36.167103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630211, 33.772171, 36.414646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664632, 0.639583, -0.386263,
		-0.671602, 0.284833, -0.683974,
		-0.327438, 0.714006, 0.618854,
		25.531979, 33.986374, 36.600304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553608, 34.127731, 35.732471>,  <25.761187, 33.486568, 36.167103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553608, 34.127731, 35.732471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604687, 34.267193, 36.103878>,  <25.635334, 34.350868, 36.326721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604687, 34.267193, 36.103878>,  <25.553608, 34.127731, 35.732471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604687, 34.267193, 36.103878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427753, 0.825274, -0.368714,
		-0.894830, 0.444258, -0.043752,
		0.127696, 0.348652, 0.928513,
		25.642996, 34.371788, 36.382431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231625, 34.734550, 35.698704>,  <25.553608, 34.127731, 35.732471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231625, 34.734550, 35.698704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488029, 34.743118, 36.005596>,  <25.641872, 34.748260, 36.189732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488029, 34.743118, 36.005596>,  <25.231625, 34.734550, 35.698704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488029, 34.743118, 36.005596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468905, 0.780448, -0.413556,
		-0.607644, 0.624853, 0.490232,
		0.641012, 0.021423, 0.767232,
		25.680334, 34.749546, 36.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162357, 35.404324, 35.903194>,  <25.231625, 34.734550, 35.698704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162357, 35.404324, 35.903194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515205, 35.251873, 36.013905>,  <25.726913, 35.160404, 36.080330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515205, 35.251873, 36.013905>,  <25.162357, 35.404324, 35.903194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515205, 35.251873, 36.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470928, 0.701757, -0.534569,
		0.009509, 0.601896, 0.798518,
		0.882120, -0.381128, 0.276777,
		25.779842, 35.137535, 36.096939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888966, 35.841984, 36.403481>,  <25.162357, 35.404324, 35.903194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888966, 35.841984, 36.403481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893713, 35.846470, 36.803429>,  <24.896563, 35.849163, 37.043396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893713, 35.846470, 36.803429>,  <24.888966, 35.841984, 36.403481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893713, 35.846470, 36.803429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379898, 0.924909, -0.014886,
		-0.924952, 0.380024, 0.006718,
		0.011871, 0.011217, 0.999867,
		24.897274, 35.849834, 37.103390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558039, 35.960281, 36.098949>,  <24.888966, 35.841984, 36.403481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558039, 35.960281, 36.098949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853615, 35.698483, 36.034954>,  <26.030960, 35.541401, 35.996559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853615, 35.698483, 36.034954>,  <25.558039, 35.960281, 36.098949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853615, 35.698483, 36.034954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531374, 0.712093, -0.458874,
		0.414257, 0.254069, 0.873979,
		0.738940, -0.654502, -0.159984,
		26.075296, 35.502132, 35.986958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132679, 36.321972, 36.368462>,  <25.558039, 35.960281, 36.098949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132679, 36.321972, 36.368462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247433, 36.032864, 36.116974>,  <26.316286, 35.859398, 35.966080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247433, 36.032864, 36.116974>,  <26.132679, 36.321972, 36.368462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247433, 36.032864, 36.116974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516555, 0.669438, -0.533877,
		0.806764, -0.171608, 0.565405,
		0.286886, -0.722775, -0.628723,
		26.333498, 35.816032, 35.928356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810965, 36.545242, 36.295185>,  <26.132679, 36.321972, 36.368462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810965, 36.545242, 36.295185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664858, 36.316952, 36.001015>,  <26.577194, 36.179977, 35.824512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664858, 36.316952, 36.001015>,  <26.810965, 36.545242, 36.295185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664858, 36.316952, 36.001015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395914, 0.619760, -0.677606,
		0.842515, -0.538673, -0.000420,
		-0.365268, -0.570726, -0.735426,
		26.555277, 36.145733, 35.780388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297897, 36.265625, 35.799610>,  <26.810965, 36.545242, 36.295185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297897, 36.265625, 35.799610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960094, 36.274715, 35.585587>,  <26.757412, 36.280170, 35.457172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960094, 36.274715, 35.585587>,  <27.297897, 36.265625, 35.799610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960094, 36.274715, 35.585587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457832, 0.548965, -0.699304,
		0.277837, -0.835536, -0.474010,
		-0.844509, 0.022725, -0.535058,
		26.706741, 36.281532, 35.425068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527308, 36.596111, 35.256504>,  <27.297897, 36.265625, 35.799610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527308, 36.596111, 35.256504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153788, 36.553627, 35.119835>,  <26.929676, 36.528137, 35.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153788, 36.553627, 35.119835>,  <27.527308, 36.596111, 35.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153788, 36.553627, 35.119835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173128, 0.701568, -0.691252,
		0.313125, -0.704643, -0.636735,
		-0.933799, -0.106212, -0.341672,
		26.873648, 36.521763, 35.017334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503340, 36.679485, 34.563477>,  <27.527308, 36.596111, 35.256504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503340, 36.679485, 34.563477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112522, 36.724342, 34.635929>,  <26.878031, 36.751255, 34.679401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112522, 36.724342, 34.635929>,  <27.503340, 36.679485, 34.563477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112522, 36.724342, 34.635929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005619, 0.863512, -0.504298,
		-0.212967, -0.491703, -0.844319,
		-0.977043, 0.112143, 0.181136,
		26.819408, 36.757984, 34.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936838, 36.057514, 34.865948>,  <27.503340, 36.679485, 34.563477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936838, 36.057514, 34.865948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992304, 35.857803, 34.523838>,  <28.025583, 35.737976, 34.318573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992304, 35.857803, 34.523838>,  <27.936838, 36.057514, 34.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992304, 35.857803, 34.523838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971773, 0.235038, 0.020345,
		0.190865, -0.833957, 0.517771,
		0.138663, -0.499273, -0.855277,
		28.033903, 35.708023, 34.267254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420639, 35.580288, 34.981491>,  <27.936838, 36.057514, 34.865948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420639, 35.580288, 34.981491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466105, 35.764641, 34.629429>,  <28.493383, 35.875252, 34.418194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466105, 35.764641, 34.629429>,  <28.420639, 35.580288, 34.981491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466105, 35.764641, 34.629429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970727, 0.137152, 0.197176,
		0.211590, -0.876800, -0.431800,
		0.113662, 0.460880, -0.880154,
		28.500202, 35.902905, 34.365383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892902, 35.212753, 34.599220>,  <28.420639, 35.580288, 34.981491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892902, 35.212753, 34.599220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863564, 35.609699, 34.559570>,  <28.845961, 35.847866, 34.535782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863564, 35.609699, 34.559570>,  <28.892902, 35.212753, 34.599220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863564, 35.609699, 34.559570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975954, 0.091876, 0.197666,
		0.205265, -0.082242, -0.975245,
		-0.073345, 0.992368, -0.099123,
		28.841560, 35.907410, 34.529835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621067, 35.372173, 34.377789>,  <28.892902, 35.212753, 34.599220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621067, 35.372173, 34.377789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472797, 35.710873, 34.530434>,  <29.383835, 35.914093, 34.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472797, 35.710873, 34.530434>,  <29.621067, 35.372173, 34.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472797, 35.710873, 34.530434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921260, 0.283086, 0.266726,
		0.117820, 0.450430, -0.885003,
		-0.370674, 0.846744, 0.381610,
		29.361595, 35.964897, 34.644917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379660, 35.478931, 34.597870>,  <29.621067, 35.372173, 34.377789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379660, 35.478931, 34.597870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243111, 35.835491, 34.478619>,  <30.161182, 36.049427, 34.407070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243111, 35.835491, 34.478619>,  <30.379660, 35.478931, 34.597870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243111, 35.835491, 34.478619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872557, 0.418458, 0.252067,
		0.349443, -0.174081, -0.920644,
		-0.341370, 0.891397, -0.298123,
		30.140699, 36.102909, 34.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664282, 35.866024, 33.901573>,  <30.379660, 35.478931, 34.597870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664282, 35.866024, 33.901573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571968, 36.051304, 34.243843>,  <30.516581, 36.162472, 34.449207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571968, 36.051304, 34.243843>,  <30.664282, 35.866024, 33.901573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571968, 36.051304, 34.243843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963899, 0.228867, 0.136080,
		-0.132804, 0.856193, -0.499296,
		-0.230784, 0.463199, 0.855678,
		30.502733, 36.190262, 34.500546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922110, 36.526180, 33.866680>,  <30.664282, 35.866024, 33.901573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922110, 36.526180, 33.866680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907492, 36.392670, 34.243458>,  <30.898720, 36.312561, 34.469524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907492, 36.392670, 34.243458>,  <30.922110, 36.526180, 33.866680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907492, 36.392670, 34.243458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980476, 0.170262, 0.098375,
		-0.193212, 0.927148, 0.321039,
		-0.036547, -0.333778, 0.941943,
		30.896528, 36.292538, 34.526039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208750, 37.111607, 34.263351>,  <30.922110, 36.526180, 33.866680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208750, 37.111607, 34.263351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266935, 36.758633, 34.442303>,  <31.301846, 36.546848, 34.549675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266935, 36.758633, 34.442303>,  <31.208750, 37.111607, 34.263351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266935, 36.758633, 34.442303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945899, 0.256598, 0.198577,
		-0.290028, 0.394288, 0.872021,
		0.145462, -0.882436, 0.447378,
		31.310574, 36.493900, 34.576515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579243, 37.270336, 34.904369>,  <31.208750, 37.111607, 34.263351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579243, 37.270336, 34.904369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661459, 36.896446, 34.788410>,  <31.710789, 36.672112, 34.718834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661459, 36.896446, 34.788410>,  <31.579243, 37.270336, 34.904369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661459, 36.896446, 34.788410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927091, 0.091091, 0.363599,
		-0.313457, -0.343499, 0.885298,
		0.205538, -0.934725, -0.289902,
		31.723120, 36.616028, 34.701439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853975, 36.913666, 35.510876>,  <31.579243, 37.270336, 34.904369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853975, 36.913666, 35.510876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971313, 36.736130, 35.172184>,  <32.041718, 36.629608, 34.968967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971313, 36.736130, 35.172184>,  <31.853975, 36.913666, 35.510876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971313, 36.736130, 35.172184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955587, 0.109874, 0.273462,
		-0.028340, -0.889344, 0.456359,
		0.293343, -0.443841, -0.846732,
		32.059315, 36.602978, 34.918163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436867, 36.474400, 35.687401>,  <31.853975, 36.913666, 35.510876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436867, 36.474400, 35.687401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486000, 36.529510, 35.294273>,  <32.515480, 36.562576, 35.058395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486000, 36.529510, 35.294273>,  <32.436867, 36.474400, 35.687401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486000, 36.529510, 35.294273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981135, 0.132108, 0.141143,
		0.149283, -0.981614, -0.118945,
		0.122835, 0.137772, -0.982818,
		32.522850, 36.570843, 34.999428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025177, 36.097446, 35.486427>,  <32.436867, 36.474400, 35.687401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025177, 36.097446, 35.486427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996647, 36.390427, 35.215595>,  <32.979530, 36.566216, 35.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996647, 36.390427, 35.215595>,  <33.025177, 36.097446, 35.486427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996647, 36.390427, 35.215595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980724, 0.175295, 0.086322,
		0.181914, -0.657869, -0.730833,
		-0.071323, 0.732448, -0.677076,
		32.975250, 36.610161, 35.012474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690502, 36.187042, 35.147903>,  <33.025177, 36.097446, 35.486427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690502, 36.187042, 35.147903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522263, 36.538177, 35.056259>,  <33.421318, 36.748859, 35.001270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522263, 36.538177, 35.056259>,  <33.690502, 36.187042, 35.147903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522263, 36.538177, 35.056259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903240, 0.428878, -0.014896,
		0.085185, -0.213210, -0.973286,
		-0.420596, 0.877841, -0.229114,
		33.396084, 36.801529, 34.987526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163277, 36.789864, 35.168087>,  <33.690502, 36.187042, 35.147903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163277, 36.789864, 35.168087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161324, 36.995628, 34.825077>,  <34.160152, 37.119087, 34.619270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161324, 36.995628, 34.825077>,  <34.163277, 36.789864, 35.168087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161324, 36.995628, 34.825077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998651, 0.041824, 0.030778,
		0.051698, 0.856520, 0.513518,
		-0.004885, 0.514416, -0.857526,
		34.159859, 37.149952, 34.567818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737045, 37.422066, 35.204510>,  <34.163277, 36.789864, 35.168087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737045, 37.422066, 35.204510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749878, 37.215557, 34.862179>,  <33.757580, 37.091652, 34.656780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749878, 37.215557, 34.862179>,  <33.737045, 37.422066, 35.204510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749878, 37.215557, 34.862179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978506, -0.190744, 0.078381,
		-0.203709, 0.834913, -0.511295,
		0.032085, -0.516272, -0.855823,
		33.759502, 37.060677, 34.605431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242573, 37.720825, 34.770481>,  <33.737045, 37.422066, 35.204510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242573, 37.720825, 34.770481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295113, 37.333790, 34.684200>,  <33.326637, 37.101570, 34.632431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295113, 37.333790, 34.684200>,  <33.242573, 37.720825, 34.770481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295113, 37.333790, 34.684200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990308, -0.137977, 0.015902,
		-0.045148, 0.211522, -0.976330,
		0.131347, -0.967585, -0.215702,
		33.334518, 37.043514, 34.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814312, 37.460678, 34.109299>,  <33.242573, 37.720825, 34.770481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814312, 37.460678, 34.109299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878407, 37.158630, 34.363579>,  <32.916862, 36.977402, 34.516148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878407, 37.158630, 34.363579>,  <32.814312, 37.460678, 34.109299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878407, 37.158630, 34.363579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935951, -0.320817, -0.145165,
		0.313561, -0.571726, -0.758162,
		0.160237, -0.755120, 0.635703,
		32.926479, 36.932095, 34.554291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594242, 36.822308, 33.723881>,  <32.814312, 37.460678, 34.109299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594242, 36.822308, 33.723881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589497, 36.736710, 34.114586>,  <32.586651, 36.685349, 34.349010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589497, 36.736710, 34.114586>,  <32.594242, 36.822308, 33.723881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589497, 36.736710, 34.114586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887287, -0.448161, -0.108964,
		0.461065, -0.867961, -0.184560,
		-0.011864, -0.213997, 0.976762,
		32.585938, 36.672512, 34.407616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549866, 36.091286, 33.790054>,  <32.594242, 36.822308, 33.723881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549866, 36.091286, 33.790054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394150, 36.242546, 34.126022>,  <32.300720, 36.333302, 34.327602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394150, 36.242546, 34.126022>,  <32.549866, 36.091286, 33.790054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394150, 36.242546, 34.126022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901464, -0.343757, -0.263049,
		0.189257, -0.859556, 0.474706,
		-0.389289, 0.378146, 0.839917,
		32.277363, 36.355991, 34.377998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865932, 36.142387, 34.465172>,  <32.549866, 36.091286, 33.790054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865932, 36.142387, 34.465172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823532, 35.908844, 34.787132>,  <32.798092, 35.768719, 34.980309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823532, 35.908844, 34.787132>,  <32.865932, 36.142387, 34.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823532, 35.908844, 34.787132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642392, -0.658080, -0.392763,
		0.759010, 0.475433, 0.444822,
		-0.105996, -0.583861, 0.804904,
		32.791733, 35.733685, 35.028603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470543, 36.192165, 34.098667>,  <32.865932, 36.142387, 34.465172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470543, 36.192165, 34.098667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479988, 35.919006, 34.390720>,  <33.485657, 35.755112, 34.565952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479988, 35.919006, 34.390720>,  <33.470543, 36.192165, 34.098667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479988, 35.919006, 34.390720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917930, -0.274513, -0.286439,
		0.396039, 0.676976, 0.620368,
		0.023613, -0.682895, 0.730135,
		33.487072, 35.714138, 34.609760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108810, 35.910275, 34.432304>,  <33.470543, 36.192165, 34.098667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108810, 35.910275, 34.432304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374557, 35.921413, 34.731060>,  <34.534004, 35.928097, 34.910313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374557, 35.921413, 34.731060>,  <34.108810, 35.910275, 34.432304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374557, 35.921413, 34.731060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484090, -0.777405, -0.401619,
		0.569453, 0.628384, -0.529959,
		0.664364, 0.027845, 0.746890,
		34.573868, 35.929768, 34.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815842, 35.834747, 34.123837>,  <34.108810, 35.910275, 34.432304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815842, 35.834747, 34.123837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818203, 35.721497, 34.507462>,  <34.819618, 35.653545, 34.737637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818203, 35.721497, 34.507462>,  <34.815842, 35.834747, 34.123837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818203, 35.721497, 34.507462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605677, -0.762131, -0.228717,
		0.795689, 0.582234, 0.166982,
		0.005905, -0.283125, 0.959065,
		34.819973, 35.636559, 34.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534878, 35.182503, 34.526001>,  <34.815842, 35.834747, 34.123837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534878, 35.182503, 34.526001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693306, 35.221992, 34.891159>,  <34.788364, 35.245686, 35.110256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693306, 35.221992, 34.891159>,  <34.534878, 35.182503, 34.526001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693306, 35.221992, 34.891159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498143, -0.812079, 0.303942,
		0.771351, -0.575136, -0.272463,
		0.396070, 0.098720, 0.912898,
		34.812126, 35.251610, 35.165028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828201, 34.518379, 34.753769>,  <34.534878, 35.182503, 34.526001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828201, 34.518379, 34.753769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698059, 34.750233, 35.052612>,  <34.619972, 34.889343, 35.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698059, 34.750233, 35.052612>,  <34.828201, 34.518379, 34.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698059, 34.750233, 35.052612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624330, -0.725075, 0.290650,
		0.710179, -0.371876, 0.597791,
		-0.325358, 0.579633, 0.747106,
		34.600452, 34.924122, 35.276745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660641, 34.137764, 35.275425>,  <34.828201, 34.518379, 34.753769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660641, 34.137764, 35.275425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481438, 34.461926, 35.426441>,  <34.373917, 34.656422, 35.517052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481438, 34.461926, 35.426441>,  <34.660641, 34.137764, 35.275425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481438, 34.461926, 35.426441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605430, -0.585729, 0.538866,
		0.657833, 0.012844, 0.753054,
		-0.448007, 0.810405, 0.377536,
		34.347034, 34.705048, 35.539703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606846, 34.017963, 35.930332>,  <34.660641, 34.137764, 35.275425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606846, 34.017963, 35.930332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323349, 34.282887, 35.833145>,  <34.153252, 34.441841, 35.774834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323349, 34.282887, 35.833145>,  <34.606846, 34.017963, 35.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323349, 34.282887, 35.833145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628953, -0.437219, 0.642851,
		0.319531, 0.608434, 0.726435,
		-0.708744, 0.662304, -0.242972,
		34.110725, 34.481579, 35.760254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113327, 33.926682, 36.504570>,  <34.606846, 34.017963, 35.930332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113327, 33.926682, 36.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493900, 33.942062, 36.626747>,  <35.722244, 33.951290, 36.700054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493900, 33.942062, 36.626747>,  <35.113327, 33.926682, 36.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493900, 33.942062, 36.626747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303171, -0.055441, 0.951322,
		0.053518, -0.997721, -0.041090,
		0.951432, 0.038455, 0.305447,
		35.779331, 33.953598, 36.718380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118259, 33.542976, 37.062138>,  <35.113327, 33.926682, 36.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118259, 33.542976, 37.062138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468731, 33.729195, 37.112061>,  <35.679016, 33.840923, 37.142014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468731, 33.729195, 37.112061>,  <35.118259, 33.542976, 37.062138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468731, 33.729195, 37.112061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111736, -0.055703, 0.992176,
		0.468852, -0.883271, 0.003212,
		0.876181, 0.465542, 0.124809,
		35.731586, 33.868858, 37.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546772, 32.987236, 37.403038>,  <35.118259, 33.542976, 37.062138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546772, 32.987236, 37.403038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687546, 33.351547, 37.489418>,  <35.772011, 33.570133, 37.541245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687546, 33.351547, 37.489418>,  <35.546772, 32.987236, 37.403038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687546, 33.351547, 37.489418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106889, -0.190095, 0.975930,
		0.929903, -0.366542, 0.030452,
		0.351930, 0.910775, 0.215949,
		35.793125, 33.624779, 37.554203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046223, 32.952663, 37.978123>,  <35.546772, 32.987236, 37.403038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046223, 32.952663, 37.978123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902618, 33.325680, 37.993481>,  <35.816456, 33.549492, 38.002693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902618, 33.325680, 37.993481>,  <36.046223, 32.952663, 37.978123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902618, 33.325680, 37.993481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090058, -0.075553, 0.993067,
		0.928977, 0.353067, 0.111107,
		-0.359013, 0.932543, 0.038391,
		35.794914, 33.605442, 38.004997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469631, 33.342712, 38.471886>,  <36.046223, 32.952663, 37.978123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469631, 33.342712, 38.471886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077808, 33.421097, 38.453667>,  <35.842716, 33.468128, 38.442734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077808, 33.421097, 38.453667>,  <36.469631, 33.342712, 38.471886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077808, 33.421097, 38.453667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091556, -0.232600, 0.968253,
		0.179141, 0.952627, 0.245786,
		-0.979554, 0.195957, -0.045551,
		35.783943, 33.479885, 38.440002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303165, 33.856033, 39.085159>,  <36.469631, 33.342712, 38.471886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303165, 33.856033, 39.085159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002369, 33.617508, 38.972786>,  <35.821892, 33.474392, 38.905361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002369, 33.617508, 38.972786>,  <36.303165, 33.856033, 39.085159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002369, 33.617508, 38.972786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249492, -0.136998, 0.958637,
		-0.610135, 0.790975, -0.045755,
		-0.751990, -0.596314, -0.280929,
		35.776772, 33.438614, 38.888508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772385, 34.355984, 39.257172>,  <36.303165, 33.856033, 39.085159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772385, 34.355984, 39.257172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801567, 34.375706, 39.655617>,  <35.819077, 34.387539, 39.894684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801567, 34.375706, 39.655617>,  <35.772385, 34.355984, 39.257172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801567, 34.375706, 39.655617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881300, -0.470753, -0.041249,
		0.466891, 0.880887, -0.077794,
		0.072958, 0.049301, 0.996116,
		35.823456, 34.390495, 39.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569145, 34.044422, 38.598507>,  <35.772385, 34.355984, 39.257172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569145, 34.044422, 38.598507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919376, 33.927284, 38.444828>,  <36.129517, 33.857002, 38.352619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919376, 33.927284, 38.444828>,  <35.569145, 34.044422, 38.598507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919376, 33.927284, 38.444828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276981, 0.347267, -0.895928,
		0.395785, 0.890869, 0.222947,
		0.875577, -0.292843, -0.384197,
		36.182049, 33.839432, 38.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763138, 34.603748, 38.219124>,  <35.569145, 34.044422, 38.598507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763138, 34.603748, 38.219124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960342, 34.285492, 38.078323>,  <36.078663, 34.094540, 37.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960342, 34.285492, 38.078323>,  <35.763138, 34.603748, 38.219124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960342, 34.285492, 38.078323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165765, 0.311277, -0.935750,
		0.854087, 0.519682, 0.021573,
		0.493008, -0.795636, -0.352003,
		36.108246, 34.046803, 37.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426758, 34.810207, 37.755424>,  <35.763138, 34.603748, 38.219124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426758, 34.810207, 37.755424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269421, 34.449936, 37.681602>,  <36.175018, 34.233772, 37.637310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269421, 34.449936, 37.681602>,  <36.426758, 34.810207, 37.755424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269421, 34.449936, 37.681602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135895, 0.141576, -0.980555,
		0.909294, -0.410772, 0.066710,
		-0.393340, -0.900679, -0.184556,
		36.151417, 34.179733, 37.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832848, 34.480339, 37.238003>,  <36.426758, 34.810207, 37.755424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832848, 34.480339, 37.238003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495510, 34.267235, 37.209908>,  <36.293106, 34.139374, 37.193050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495510, 34.267235, 37.209908>,  <36.832848, 34.480339, 37.238003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495510, 34.267235, 37.209908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120920, -0.060796, -0.990799,
		0.523590, -0.844079, 0.115693,
		-0.843346, -0.532762, -0.070234,
		36.242508, 34.107407, 37.188839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051159, 33.966610, 36.807941>,  <36.832848, 34.480339, 37.238003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051159, 33.966610, 36.807941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653496, 34.008999, 36.799732>,  <36.414898, 34.034431, 36.794807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653496, 34.008999, 36.799732>,  <37.051159, 33.966610, 36.807941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653496, 34.008999, 36.799732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006143, -0.134307, -0.990921,
		-0.107754, -0.985258, 0.132871,
		-0.994159, 0.105960, -0.020524,
		36.355247, 34.040791, 36.793575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641804, 33.398041, 36.532055>,  <37.051159, 33.966610, 36.807941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641804, 33.398041, 36.532055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454727, 33.742424, 36.452042>,  <36.342480, 33.949055, 36.404034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454727, 33.742424, 36.452042>,  <36.641804, 33.398041, 36.532055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454727, 33.742424, 36.452042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196782, -0.119213, -0.973173,
		-0.861708, -0.494510, -0.113666,
		-0.467693, 0.860958, -0.200037,
		36.314419, 34.000710, 36.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149830, 33.169735, 36.047665>,  <36.641804, 33.398041, 36.532055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149830, 33.169735, 36.047665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219296, 33.561523, 36.006741>,  <36.260975, 33.796597, 35.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219296, 33.561523, 36.006741>,  <36.149830, 33.169735, 36.047665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219296, 33.561523, 36.006741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111394, -0.122759, -0.986165,
		-0.978484, 0.159867, -0.130426,
		0.173667, 0.979476, -0.102309,
		36.271397, 33.855366, 35.976048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664768, 33.480110, 35.464008>,  <36.149830, 33.169735, 36.047665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664768, 33.480110, 35.464008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964775, 33.741158, 35.507011>,  <36.144779, 33.897785, 35.532814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964775, 33.741158, 35.507011>,  <35.664768, 33.480110, 35.464008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964775, 33.741158, 35.507011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093631, 0.056142, -0.994023,
		-0.654754, 0.755603, -0.018998,
		0.750020, 0.652619, 0.107507,
		36.189781, 33.936943, 35.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479012, 33.858673, 34.879551>,  <35.664768, 33.480110, 35.464008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479012, 33.858673, 34.879551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837299, 34.000435, 34.986942>,  <36.052273, 34.085491, 35.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837299, 34.000435, 34.986942>,  <35.479012, 33.858673, 34.879551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837299, 34.000435, 34.986942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131347, 0.365975, -0.921309,
		-0.424775, 0.860499, 0.281260,
		0.895720, 0.354407, 0.268481,
		36.106014, 34.106758, 35.067486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598015, 34.656452, 34.695671>,  <35.479012, 33.858673, 34.879551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598015, 34.656452, 34.695671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937931, 34.446369, 34.713634>,  <36.141880, 34.320320, 34.724411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937931, 34.446369, 34.713634>,  <35.598015, 34.656452, 34.695671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937931, 34.446369, 34.713634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245393, 0.318767, -0.915517,
		0.466522, 0.789015, 0.399766,
		0.849788, -0.525208, 0.044907,
		36.192867, 34.288807, 34.727108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941147, 35.059124, 34.262405>,  <35.598015, 34.656452, 34.695671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941147, 35.059124, 34.262405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177826, 34.740032, 34.308903>,  <36.319836, 34.548576, 34.336800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177826, 34.740032, 34.308903>,  <35.941147, 35.059124, 34.262405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177826, 34.740032, 34.308903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236092, 0.033606, -0.971149,
		0.770811, 0.602075, 0.208223,
		0.591702, -0.797732, 0.116241,
		36.355335, 34.500713, 34.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613823, 35.170120, 33.873432>,  <35.941147, 35.059124, 34.262405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613823, 35.170120, 33.873432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557602, 34.777184, 33.922821>,  <36.523869, 34.541420, 33.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557602, 34.777184, 33.922821>,  <36.613823, 35.170120, 33.873432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557602, 34.777184, 33.922821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244629, -0.155302, -0.957099,
		0.959376, -0.104318, 0.262138,
		-0.140553, -0.982344, 0.123473,
		36.515434, 34.482479, 33.959862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284863, 34.820244, 33.691116>,  <36.613823, 35.170120, 33.873432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284863, 34.820244, 33.691116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989567, 34.554207, 33.646133>,  <36.812389, 34.394585, 33.619144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989567, 34.554207, 33.646133>,  <37.284863, 34.820244, 33.691116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989567, 34.554207, 33.646133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251978, -0.117264, -0.960602,
		0.625704, -0.737494, 0.254158,
		-0.738242, -0.665095, -0.112460,
		36.768093, 34.354679, 33.612396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590900, 34.272892, 33.289207>,  <37.284863, 34.820244, 33.691116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590900, 34.272892, 33.289207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192577, 34.278801, 33.253109>,  <36.953583, 34.282345, 33.231449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192577, 34.278801, 33.253109>,  <37.590900, 34.272892, 33.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192577, 34.278801, 33.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089733, -0.032234, -0.995444,
		-0.017596, -0.999371, 0.030775,
		-0.995811, 0.014754, -0.090244,
		36.893833, 34.283234, 33.226036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463028, 33.773472, 32.810398>,  <37.590900, 34.272892, 33.289207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463028, 33.773472, 32.810398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119560, 33.978424, 32.815289>,  <36.913479, 34.101395, 32.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119560, 33.978424, 32.815289>,  <37.463028, 33.773472, 32.810398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119560, 33.978424, 32.815289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031591, -0.029095, -0.999077,
		-0.511555, -0.858263, 0.041170,
		-0.858670, 0.512384, 0.012229,
		36.861958, 34.132137, 32.818958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012867, 33.408085, 32.377510>,  <37.463028, 33.773472, 32.810398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012867, 33.408085, 32.377510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863121, 33.778763, 32.364315>,  <36.773273, 34.001171, 32.356400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863121, 33.778763, 32.364315>,  <37.012867, 33.408085, 32.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863121, 33.778763, 32.364315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027523, -0.024451, -0.999322,
		-0.926874, -0.375016, -0.016352,
		-0.374362, 0.926696, -0.032984,
		36.750813, 34.056770, 32.354420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806866, 33.449615, 31.716875>,  <37.012867, 33.408085, 32.377510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806866, 33.449615, 31.716875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790424, 33.835709, 31.820137>,  <36.780560, 34.067364, 31.882095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790424, 33.835709, 31.820137>,  <36.806866, 33.449615, 31.716875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790424, 33.835709, 31.820137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196578, 0.261138, -0.945074,
		-0.979626, 0.011901, -0.200476,
		-0.041105, 0.965228, 0.258157,
		36.778091, 34.125278, 31.897585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380489, 33.835716, 31.224047>,  <36.806866, 33.449615, 31.716875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380489, 33.835716, 31.224047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560532, 34.147335, 31.398632>,  <36.668556, 34.334305, 31.503384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560532, 34.147335, 31.398632>,  <36.380489, 33.835716, 31.224047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560532, 34.147335, 31.398632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000796, 0.489123, -0.872215,
		-0.892976, 0.392240, 0.220777,
		0.450104, 0.779042, 0.436462,
		36.695564, 34.381046, 31.529572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960949, 34.457306, 31.037146>,  <36.380489, 33.835716, 31.224047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960949, 34.457306, 31.037146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330910, 34.571686, 31.137375>,  <36.552887, 34.640312, 31.197512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330910, 34.571686, 31.137375>,  <35.960949, 34.457306, 31.037146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330910, 34.571686, 31.137375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072102, 0.515176, -0.854046,
		-0.373302, 0.807977, 0.455871,
		0.924904, 0.285948, 0.250573,
		36.608379, 34.657471, 31.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987144, 35.098114, 30.970015>,  <35.960949, 34.457306, 31.037146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987144, 35.098114, 30.970015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379372, 35.023834, 30.944695>,  <36.614708, 34.979267, 30.929502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379372, 35.023834, 30.944695>,  <35.987144, 35.098114, 30.970015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379372, 35.023834, 30.944695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028594, 0.454469, -0.890304,
		0.194095, 0.871191, 0.450947,
		0.980566, -0.185698, -0.063300,
		36.673542, 34.968124, 30.925705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395058, 35.729336, 30.906672>,  <35.987144, 35.098114, 30.970015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395058, 35.729336, 30.906672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614075, 35.444241, 30.731308>,  <36.745483, 35.273182, 30.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614075, 35.444241, 30.731308>,  <36.395058, 35.729336, 30.906672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614075, 35.444241, 30.731308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149699, 0.598905, -0.786704,
		0.823279, 0.365124, 0.434622,
		0.547541, -0.712739, -0.438407,
		36.778336, 35.230419, 30.599785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105663, 36.063530, 30.598240>,  <36.395058, 35.729336, 30.906672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105663, 36.063530, 30.598240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063869, 35.728802, 30.383276>,  <37.038795, 35.527966, 30.254297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063869, 35.728802, 30.383276>,  <37.105663, 36.063530, 30.598240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063869, 35.728802, 30.383276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162175, 0.518799, -0.839373,
		0.981215, -0.174854, 0.081506,
		-0.104482, -0.836824, -0.537410,
		37.032524, 35.477753, 30.222054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700798, 36.050423, 30.169012>,  <37.105663, 36.063530, 30.598240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700798, 36.050423, 30.169012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464935, 35.792492, 29.974483>,  <37.323418, 35.637733, 29.857765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464935, 35.792492, 29.974483>,  <37.700798, 36.050423, 30.169012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464935, 35.792492, 29.974483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329044, 0.358107, -0.873779,
		0.737590, -0.675248, 0.001017,
		-0.589653, -0.644825, -0.486323,
		37.288040, 35.599045, 29.828587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043480, 35.712292, 29.608900>,  <37.700798, 36.050423, 30.169012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043480, 35.712292, 29.608900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661926, 35.644695, 29.509665>,  <37.432995, 35.604137, 29.450123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661926, 35.644695, 29.509665>,  <38.043480, 35.712292, 29.608900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661926, 35.644695, 29.509665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132696, 0.503945, -0.853482,
		0.269251, -0.847044, -0.458281,
		-0.953885, -0.168989, -0.248087,
		37.375759, 35.593998, 29.435238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056965, 35.391029, 28.889362>,  <38.043480, 35.712292, 29.608900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056965, 35.391029, 28.889362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693840, 35.550030, 28.942831>,  <37.475964, 35.645432, 28.974913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693840, 35.550030, 28.942831>,  <38.056965, 35.391029, 28.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693840, 35.550030, 28.942831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056753, 0.432247, -0.899968,
		-0.415519, -0.809416, -0.414958,
		-0.907812, 0.397504, 0.133669,
		37.421497, 35.669281, 28.982931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579998, 35.244663, 28.251261>,  <38.056965, 35.391029, 28.889362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579998, 35.244663, 28.251261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429592, 35.566975, 28.434271>,  <37.339348, 35.760361, 28.544077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429592, 35.566975, 28.434271>,  <37.579998, 35.244663, 28.251261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429592, 35.566975, 28.434271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028712, 0.503653, -0.863429,
		-0.926168, -0.311526, -0.212517,
		-0.376015, 0.805782, 0.457523,
		37.316788, 35.808708, 28.571527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102123, 35.635857, 27.764322>,  <37.579998, 35.244663, 28.251261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102123, 35.635857, 27.764322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195652, 35.898029, 28.051582>,  <37.251770, 36.055332, 28.223938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195652, 35.898029, 28.051582>,  <37.102123, 35.635857, 27.764322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195652, 35.898029, 28.051582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082810, 0.722514, -0.686378,
		-0.968746, 0.219961, 0.114663,
		0.233822, 0.655431, 0.718148,
		37.265800, 36.094658, 28.267027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670170, 36.173702, 27.586807>,  <37.102123, 35.635857, 27.764322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670170, 36.173702, 27.586807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948963, 36.331127, 27.826580>,  <37.116241, 36.425583, 27.970444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948963, 36.331127, 27.826580>,  <36.670170, 36.173702, 27.586807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948963, 36.331127, 27.826580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020505, 0.824653, -0.565268,
		-0.716791, 0.406276, 0.566702,
		0.696987, 0.393558, 0.599434,
		37.158058, 36.449196, 28.006411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411598, 36.832016, 27.702984>,  <36.670170, 36.173702, 27.586807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411598, 36.832016, 27.702984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797070, 36.822399, 27.809378>,  <37.028351, 36.816628, 27.873215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797070, 36.822399, 27.809378>,  <36.411598, 36.832016, 27.702984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797070, 36.822399, 27.809378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188720, 0.766011, -0.614502,
		-0.188973, 0.642378, 0.742725,
		0.963677, -0.024042, 0.265985,
		37.086174, 36.815186, 27.889174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498524, 37.470833, 27.718567>,  <36.411598, 36.832016, 27.702984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498524, 37.470833, 27.718567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856472, 37.298138, 27.673309>,  <37.071243, 37.194519, 27.646154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856472, 37.298138, 27.673309>,  <36.498524, 37.470833, 27.718567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856472, 37.298138, 27.673309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130170, 0.494947, -0.859118,
		0.426915, 0.754075, 0.499114,
		0.894874, -0.431740, -0.113143,
		37.124935, 37.168617, 27.639366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908028, 37.961422, 27.473782>,  <36.498524, 37.470833, 27.718567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908028, 37.961422, 27.473782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113827, 37.631668, 27.379398>,  <37.237309, 37.433815, 27.322769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113827, 37.631668, 27.379398>,  <36.908028, 37.961422, 27.473782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113827, 37.631668, 27.379398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247320, 0.406143, -0.879705,
		0.821050, 0.394251, 0.412848,
		0.514500, -0.824387, -0.235957,
		37.268177, 37.384354, 27.308611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493557, 38.245056, 27.067284>,  <36.908028, 37.961422, 27.473782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493557, 38.245056, 27.067284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453541, 37.860371, 26.965221>,  <37.429531, 37.629559, 26.903984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453541, 37.860371, 26.965221>,  <37.493557, 38.245056, 27.067284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453541, 37.860371, 26.965221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222453, 0.228331, -0.947829,
		0.969797, -0.151582, 0.191093,
		-0.100042, -0.961711, -0.255155,
		37.423527, 37.571857, 26.888676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066002, 38.032772, 26.627081>,  <37.493557, 38.245056, 27.067284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066002, 38.032772, 26.627081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801987, 37.742535, 26.549248>,  <37.643578, 37.568394, 26.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801987, 37.742535, 26.549248>,  <38.066002, 38.032772, 26.627081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801987, 37.742535, 26.549248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102455, 0.169654, -0.980163,
		0.744213, -0.666881, -0.037637,
		-0.660038, -0.725594, -0.194584,
		37.603977, 37.524857, 26.490873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430744, 37.576385, 26.128359>,  <38.066002, 38.032772, 26.627081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430744, 37.576385, 26.128359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033474, 37.531063, 26.117252>,  <37.795113, 37.503868, 26.110588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033474, 37.531063, 26.117252>,  <38.430744, 37.576385, 26.128359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033474, 37.531063, 26.117252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013018, 0.344161, -0.938821,
		0.115931, -0.932049, -0.343286,
		-0.993172, -0.113307, -0.027765,
		37.735523, 37.497070, 26.108923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300888, 37.329624, 25.484661>,  <38.430744, 37.576385, 26.128359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300888, 37.329624, 25.484661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935452, 37.446228, 25.598055>,  <37.716190, 37.516190, 25.666092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935452, 37.446228, 25.598055>,  <38.300888, 37.329624, 25.484661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935452, 37.446228, 25.598055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146336, 0.414749, -0.898092,
		-0.379381, -0.861977, -0.336254,
		-0.913595, 0.291512, 0.283486,
		37.661373, 37.533680, 25.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918427, 37.148792, 24.995035>,  <38.300888, 37.329624, 25.484661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918427, 37.148792, 24.995035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702675, 37.430771, 25.179262>,  <37.573223, 37.599957, 25.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702675, 37.430771, 25.179262>,  <37.918427, 37.148792, 24.995035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702675, 37.430771, 25.179262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245111, 0.391828, -0.886787,
		-0.805600, -0.591204, -0.038554,
		-0.539379, 0.704946, 0.460567,
		37.540863, 37.642254, 25.317432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318489, 37.258442, 24.627581>,  <37.918427, 37.148792, 24.995035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318489, 37.258442, 24.627581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322041, 37.597660, 24.839518>,  <37.324173, 37.801193, 24.966681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322041, 37.597660, 24.839518>,  <37.318489, 37.258442, 24.627581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322041, 37.597660, 24.839518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082208, 0.528688, -0.844826,
		-0.996576, -0.036055, 0.074411,
		0.008880, 0.848050, 0.529842,
		37.324703, 37.852074, 24.998470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694595, 37.685024, 24.489609>,  <37.318489, 37.258442, 24.627581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694595, 37.685024, 24.489609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005348, 37.909492, 24.603832>,  <37.191799, 38.044174, 24.672367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005348, 37.909492, 24.603832>,  <36.694595, 37.685024, 24.489609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005348, 37.909492, 24.603832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031045, 0.487111, -0.872788,
		-0.628879, 0.669189, 0.395850,
		0.776883, 0.561167, 0.285559,
		37.238415, 38.077843, 24.689499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534462, 38.331669, 24.348370>,  <36.694595, 37.685024, 24.489609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534462, 38.331669, 24.348370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930058, 38.378281, 24.384859>,  <37.167416, 38.406246, 24.406752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930058, 38.378281, 24.384859>,  <36.534462, 38.331669, 24.348370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930058, 38.378281, 24.384859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003426, 0.598214, -0.801329,
		-0.147949, 0.792818, 0.591228,
		0.988989, 0.116531, 0.091221,
		37.226753, 38.413239, 24.412226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622242, 38.911011, 24.073208>,  <36.534462, 38.331669, 24.348370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622242, 38.911011, 24.073208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005882, 38.798065, 24.081158>,  <37.236065, 38.730297, 24.085928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005882, 38.798065, 24.081158>,  <36.622242, 38.911011, 24.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005882, 38.798065, 24.081158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220355, 0.700710, -0.678564,
		0.177675, 0.655191, 0.734273,
		0.959101, -0.282364, 0.019876,
		37.293613, 38.713356, 24.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917461, 39.488907, 24.002789>,  <36.622242, 38.911011, 24.073208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917461, 39.488907, 24.002789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167412, 39.208023, 23.866299>,  <37.317383, 39.039494, 23.784405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167412, 39.208023, 23.866299>,  <36.917461, 39.488907, 24.002789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167412, 39.208023, 23.866299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261001, 0.599805, -0.756382,
		0.735808, 0.383582, 0.558079,
		0.624873, -0.702210, -0.341226,
		37.354874, 38.997360, 23.763931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611740, 39.833164, 23.928782>,  <36.917461, 39.488907, 24.002789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611740, 39.833164, 23.928782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606789, 39.507515, 23.696560>,  <37.603817, 39.312126, 23.557226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606789, 39.507515, 23.696560>,  <37.611740, 39.833164, 23.928782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606789, 39.507515, 23.696560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375383, 0.534351, -0.757336,
		0.926787, -0.227303, 0.298996,
		-0.012376, -0.814127, -0.580555,
		37.603077, 39.263275, 23.522394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260757, 39.783691, 23.603432>,  <37.611740, 39.833164, 23.928782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260757, 39.783691, 23.603432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007969, 39.576950, 23.372442>,  <37.856297, 39.452908, 23.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007969, 39.576950, 23.372442>,  <38.260757, 39.783691, 23.603432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007969, 39.576950, 23.372442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376396, 0.446653, -0.811682,
		0.677449, -0.730319, -0.087732,
		-0.631973, -0.516851, -0.577474,
		37.818378, 39.421894, 23.199200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600040, 39.610172, 22.980759>,  <38.260757, 39.783691, 23.603432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600040, 39.610172, 22.980759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248516, 39.513771, 22.816019>,  <38.037601, 39.455933, 22.717176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248516, 39.513771, 22.816019>,  <38.600040, 39.610172, 22.980759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248516, 39.513771, 22.816019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290642, 0.414182, -0.862543,
		0.378449, -0.877709, -0.293943,
		-0.878808, -0.240997, -0.411846,
		37.984875, 39.441471, 22.692465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763241, 39.392487, 22.327562>,  <38.600040, 39.610172, 22.980759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763241, 39.392487, 22.327562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373146, 39.480728, 22.321224>,  <38.139091, 39.533672, 22.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373146, 39.480728, 22.321224>,  <38.763241, 39.392487, 22.327562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373146, 39.480728, 22.321224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106073, 0.403658, -0.908740,
		-0.194077, -0.887916, -0.417061,
		-0.975235, 0.220604, -0.015843,
		38.080574, 39.546909, 22.316471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655422, 39.456936, 21.651382>,  <38.763241, 39.392487, 22.327562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655422, 39.456936, 21.651382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337486, 39.639584, 21.811249>,  <38.146725, 39.749172, 21.907169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337486, 39.639584, 21.811249>,  <38.655422, 39.456936, 21.651382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337486, 39.639584, 21.811249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026474, 0.631901, -0.774597,
		-0.606244, -0.626260, -0.490170,
		-0.794838, 0.456618, 0.399665,
		38.099033, 39.776569, 21.931149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191498, 39.496231, 21.099413>,  <38.655422, 39.456936, 21.651382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191498, 39.496231, 21.099413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084988, 39.777664, 21.362949>,  <38.021084, 39.946522, 21.521072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084988, 39.777664, 21.362949>,  <38.191498, 39.496231, 21.099413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084988, 39.777664, 21.362949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086421, 0.698192, -0.710675,
		-0.960016, -0.132294, -0.246713,
		-0.266271, 0.703581, 0.658843,
		38.005108, 39.988739, 21.560602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761150, 39.974934, 20.740490>,  <38.191498, 39.496231, 21.099413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761150, 39.974934, 20.740490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919842, 40.178726, 21.045916>,  <38.015057, 40.301003, 21.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919842, 40.178726, 21.045916>,  <37.761150, 39.974934, 20.740490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919842, 40.178726, 21.045916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046656, 0.819562, -0.571087,
		-0.916748, 0.262193, 0.301376,
		0.396731, 0.509482, 0.763565,
		38.038860, 40.331570, 21.274984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401691, 40.653660, 20.674183>,  <37.761150, 39.974934, 20.740490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401691, 40.653660, 20.674183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721863, 40.725685, 20.902882>,  <37.913967, 40.768898, 21.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721863, 40.725685, 20.902882>,  <37.401691, 40.653660, 20.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721863, 40.725685, 20.902882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116184, 0.889127, -0.442668,
		-0.588063, 0.420751, 0.690761,
		0.800427, 0.180061, 0.571747,
		37.961990, 40.779705, 21.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464363, 41.389580, 20.765635>,  <37.401691, 40.653660, 20.674183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464363, 41.389580, 20.765635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837002, 41.248898, 20.802368>,  <38.060585, 41.164490, 20.824408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837002, 41.248898, 20.802368>,  <37.464363, 41.389580, 20.765635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837002, 41.248898, 20.802368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312892, 0.647304, -0.695051,
		0.185007, 0.676241, 0.713071,
		0.931596, -0.351704, 0.091835,
		38.116482, 41.143387, 20.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899109, 41.898163, 21.054356>,  <37.464363, 41.389580, 20.765635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899109, 41.898163, 21.054356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054379, 41.624733, 20.807116>,  <38.147541, 41.460674, 20.658772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054379, 41.624733, 20.807116>,  <37.899109, 41.898163, 21.054356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054379, 41.624733, 20.807116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325203, 0.729147, -0.602152,
		0.862302, 0.032730, 0.505335,
		0.388172, -0.683574, -0.618101,
		38.170830, 41.419662, 20.621685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569206, 42.082165, 20.978445>,  <37.899109, 41.898163, 21.054356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569206, 42.082165, 20.978445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428959, 41.922268, 20.639677>,  <38.344810, 41.826332, 20.436417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428959, 41.922268, 20.639677>,  <38.569206, 42.082165, 20.978445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428959, 41.922268, 20.639677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116348, 0.878730, -0.462922,
		0.929262, -0.260847, -0.261592,
		-0.350620, -0.399740, -0.846920,
		38.323772, 41.802345, 20.385601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948254, 41.968231, 20.371010>,  <38.569206, 42.082165, 20.978445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948254, 41.968231, 20.371010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573288, 42.056419, 20.263205>,  <38.348309, 42.109333, 20.198521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573288, 42.056419, 20.263205>,  <38.948254, 41.968231, 20.371010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573288, 42.056419, 20.263205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312310, 0.874634, -0.370780,
		0.153978, -0.431748, -0.888755,
		-0.937419, 0.220475, -0.269513,
		38.292061, 42.122562, 20.182350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325737, 42.414848, 20.025331>,  <38.948254, 41.968231, 20.371010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325737, 42.414848, 20.025331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165150, 42.747246, 19.871309>,  <39.068798, 42.946686, 19.778896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165150, 42.747246, 19.871309>,  <39.325737, 42.414848, 20.025331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165150, 42.747246, 19.871309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348532, 0.527414, 0.774829,
		0.846962, 0.176868, -0.501371,
		-0.401472, 0.830995, -0.385055,
		39.044708, 42.996544, 19.755793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863804, 42.957439, 20.043165>,  <39.325737, 42.414848, 20.025331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863804, 42.957439, 20.043165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502129, 43.128292, 20.043034>,  <39.285122, 43.230804, 20.042953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502129, 43.128292, 20.043034>,  <39.863804, 42.957439, 20.043165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502129, 43.128292, 20.043034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265687, 0.563028, 0.782567,
		0.334449, 0.707499, -0.622567,
		-0.904187, 0.427136, -0.000331,
		39.230873, 43.256432, 20.042934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389767, 42.822723, 20.703325>,  <39.863804, 42.957439, 20.043165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389767, 42.822723, 20.703325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002232, 42.918625, 20.728201>,  <38.769711, 42.976166, 20.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002232, 42.918625, 20.728201>,  <39.389767, 42.822723, 20.703325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002232, 42.918625, 20.728201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151916, 0.376874, 0.913722,
		0.195635, 0.894697, -0.401553,
		-0.968839, 0.239758, 0.062189,
		38.711578, 42.990551, 20.746859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326191, 43.491043, 20.883131>,  <39.389767, 42.822723, 20.703325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326191, 43.491043, 20.883131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023312, 43.257790, 21.000847>,  <38.841583, 43.117836, 21.071476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023312, 43.257790, 21.000847>,  <39.326191, 43.491043, 20.883131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023312, 43.257790, 21.000847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276260, 0.122356, 0.953263,
		-0.591890, 0.803107, 0.068450,
		-0.757196, -0.583137, 0.294288,
		38.796154, 43.082848, 21.089132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155231, 43.765087, 21.511654>,  <39.326191, 43.491043, 20.883131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155231, 43.765087, 21.511654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973579, 43.408878, 21.522518>,  <38.864590, 43.195152, 21.529037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973579, 43.408878, 21.522518>,  <39.155231, 43.765087, 21.511654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973579, 43.408878, 21.522518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147639, -0.045155, 0.988010,
		-0.878617, 0.452695, 0.151982,
		-0.454130, -0.890521, 0.027162,
		38.837341, 43.141724, 21.530666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476871, 43.688492, 21.931061>,  <39.155231, 43.765087, 21.511654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476871, 43.688492, 21.931061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632702, 43.320343, 21.917549>,  <38.726200, 43.099453, 21.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632702, 43.320343, 21.917549>,  <38.476871, 43.688492, 21.931061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632702, 43.320343, 21.917549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142295, -0.096384, 0.985120,
		-0.909936, -0.378971, -0.168514,
		0.389574, -0.920375, -0.033777,
		38.749573, 43.044231, 21.907415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194256, 43.525368, 22.580215>,  <38.476871, 43.688492, 21.931061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194256, 43.525368, 22.580215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418041, 43.211178, 22.474360>,  <38.552315, 43.022663, 22.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418041, 43.211178, 22.474360>,  <38.194256, 43.525368, 22.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418041, 43.211178, 22.474360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126290, -0.396336, 0.909378,
		-0.819176, -0.475344, -0.320933,
		0.559465, -0.785472, -0.264638,
		38.585880, 42.975536, 22.394968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981525, 43.008835, 22.876865>,  <38.194256, 43.525368, 22.580215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981525, 43.008835, 22.876865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326622, 42.817795, 22.810453>,  <38.533680, 42.703171, 22.770607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326622, 42.817795, 22.810453>,  <37.981525, 43.008835, 22.876865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326622, 42.817795, 22.810453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102005, -0.486001, 0.867985,
		-0.495262, -0.731903, -0.468009,
		0.862734, -0.477620, -0.166040,
		38.585445, 42.674515, 22.760645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837025, 42.319637, 23.072273>,  <37.981525, 43.008835, 22.876865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837025, 42.319637, 23.072273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236042, 42.345268, 23.060997>,  <38.475452, 42.360645, 23.054232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236042, 42.345268, 23.060997>,  <37.837025, 42.319637, 23.072273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236042, 42.345268, 23.060997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062873, -0.643093, 0.763203,
		0.030772, -0.763103, -0.645544,
		0.997547, 0.064073, -0.028189,
		38.535305, 42.364491, 23.052540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079472, 41.642521, 23.085697>,  <37.837025, 42.319637, 23.072273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079472, 41.642521, 23.085697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406376, 41.846153, 23.193714>,  <38.602520, 41.968334, 23.258524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406376, 41.846153, 23.193714>,  <38.079472, 41.642521, 23.085697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406376, 41.846153, 23.193714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171098, -0.661831, 0.729867,
		0.550282, -0.550288, -0.627991,
		0.817260, 0.509081, 0.270041,
		38.651554, 41.998878, 23.274727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601295, 41.161736, 23.214176>,  <38.079472, 41.642521, 23.085697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601295, 41.161736, 23.214176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713589, 41.480015, 23.428858>,  <38.780964, 41.670982, 23.557667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713589, 41.480015, 23.428858>,  <38.601295, 41.161736, 23.214176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713589, 41.480015, 23.428858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204945, -0.595990, 0.776397,
		0.937649, -0.107967, -0.330389,
		0.280734, 0.795700, 0.536703,
		38.797810, 41.718723, 23.589869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163357, 40.942635, 23.513121>,  <38.601295, 41.161736, 23.214176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163357, 40.942635, 23.513121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030148, 41.253731, 23.726368>,  <38.950222, 41.440388, 23.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030148, 41.253731, 23.726368>,  <39.163357, 40.942635, 23.513121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030148, 41.253731, 23.726368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255206, -0.469946, 0.844997,
		0.907726, 0.417457, -0.041983,
		-0.333020, 0.777741, 0.533120,
		38.930241, 41.487053, 23.886305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531456, 40.943516, 24.124672>,  <39.163357, 40.942635, 23.513121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531456, 40.943516, 24.124672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242264, 41.176006, 24.274057>,  <39.068748, 41.315502, 24.363689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242264, 41.176006, 24.274057>,  <39.531456, 40.943516, 24.124672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242264, 41.176006, 24.274057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272459, -0.256885, 0.927241,
		0.634876, 0.772130, 0.027362,
		-0.722979, 0.581228, 0.373464,
		39.025372, 41.350376, 24.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711460, 41.171837, 24.832281>,  <39.531456, 40.943516, 24.124672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711460, 41.171837, 24.832281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321129, 41.258324, 24.819613>,  <39.086929, 41.310215, 24.812012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321129, 41.258324, 24.819613>,  <39.711460, 41.171837, 24.832281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321129, 41.258324, 24.819613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082864, -0.232030, 0.969173,
		0.202201, 0.948374, 0.244339,
		-0.975832, 0.216215, -0.031670,
		39.028378, 41.323189, 24.810112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562550, 41.630524, 25.388985>,  <39.711460, 41.171837, 24.832281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562550, 41.630524, 25.388985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236721, 41.424576, 25.282118>,  <39.041222, 41.301006, 25.217999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236721, 41.424576, 25.282118>,  <39.562550, 41.630524, 25.388985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236721, 41.424576, 25.282118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209636, -0.168146, 0.963213,
		-0.540852, 0.840616, 0.029033,
		-0.814574, -0.514870, -0.267166,
		38.992348, 41.270115, 25.201967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084816, 41.829525, 25.933643>,  <39.562550, 41.630524, 25.388985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084816, 41.829525, 25.933643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929317, 41.498508, 25.771626>,  <38.836018, 41.299900, 25.674416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929317, 41.498508, 25.771626>,  <39.084816, 41.829525, 25.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929317, 41.498508, 25.771626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234548, -0.336251, 0.912098,
		-0.890991, 0.449576, -0.063381,
		-0.388745, -0.827537, -0.405043,
		38.812695, 41.250248, 25.650112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423901, 41.636189, 26.359030>,  <39.084816, 41.829525, 25.933643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423901, 41.636189, 26.359030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548923, 41.300194, 26.181610>,  <38.623936, 41.098598, 26.075159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548923, 41.300194, 26.181610>,  <38.423901, 41.636189, 26.359030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548923, 41.300194, 26.181610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015774, -0.462289, 0.886589,
		-0.949769, -0.284102, -0.131240,
		0.312553, -0.839985, -0.443549,
		38.642689, 41.048199, 26.048546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916973, 41.145706, 26.623106>,  <38.423901, 41.636189, 26.359030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916973, 41.145706, 26.623106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218678, 40.923088, 26.483761>,  <38.399700, 40.789516, 26.400154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218678, 40.923088, 26.483761>,  <37.916973, 41.145706, 26.623106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218678, 40.923088, 26.483761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016272, -0.546257, 0.837460,
		-0.656378, -0.625991, -0.421074,
		0.754257, -0.556542, -0.348365,
		38.444954, 40.756126, 26.379251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563046, 40.505154, 26.819328>,  <37.916973, 41.145706, 26.623106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563046, 40.505154, 26.819328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947380, 40.433296, 26.734932>,  <38.177982, 40.390182, 26.684294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947380, 40.433296, 26.734932>,  <37.563046, 40.505154, 26.819328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947380, 40.433296, 26.734932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054157, -0.624988, 0.778753,
		-0.271760, -0.759684, -0.590785,
		0.960840, -0.179639, -0.210989,
		38.235634, 40.379406, 26.671635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604195, 39.812767, 26.846600>,  <37.563046, 40.505154, 26.819328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604195, 39.812767, 26.846600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978783, 39.943275, 26.898088>,  <38.203537, 40.021580, 26.928982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978783, 39.943275, 26.898088>,  <37.604195, 39.812767, 26.846600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978783, 39.943275, 26.898088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137418, -0.678947, 0.721213,
		0.322709, -0.657705, -0.680649,
		0.936470, 0.326275, 0.128721,
		38.259724, 40.041157, 26.936705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956318, 39.201569, 26.851597>,  <37.604195, 39.812767, 26.846600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956318, 39.201569, 26.851597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165730, 39.489010, 27.034693>,  <38.291378, 39.661476, 27.144550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165730, 39.489010, 27.034693>,  <37.956318, 39.201569, 26.851597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165730, 39.489010, 27.034693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072286, -0.572776, 0.816518,
		0.848935, -0.394384, -0.351811,
		0.523530, 0.718602, 0.457741,
		38.322788, 39.704590, 27.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506546, 38.918629, 27.032965>,  <37.956318, 39.201569, 26.851597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506546, 38.918629, 27.032965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467220, 39.235596, 27.273766>,  <38.443626, 39.425777, 27.418247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467220, 39.235596, 27.273766>,  <38.506546, 38.918629, 27.032965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467220, 39.235596, 27.273766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063045, -0.598759, 0.798444,
		0.993156, 0.116453, 0.008910,
		-0.098316, 0.792418, 0.602003,
		38.437725, 39.473320, 27.454367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922195, 38.775066, 27.609701>,  <38.506546, 38.918629, 27.032965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922195, 38.775066, 27.609701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681503, 39.063164, 27.747787>,  <38.537086, 39.236023, 27.830639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681503, 39.063164, 27.747787>,  <38.922195, 38.775066, 27.609701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681503, 39.063164, 27.747787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016085, -0.421209, 0.906821,
		0.798537, 0.551215, 0.241869,
		-0.601731, 0.720240, 0.345217,
		38.500984, 39.279236, 27.851353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245396, 38.933865, 28.272406>,  <38.922195, 38.775066, 27.609701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245396, 38.933865, 28.272406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868446, 39.067528, 28.278913>,  <38.642277, 39.147724, 28.282818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868446, 39.067528, 28.278913>,  <39.245396, 38.933865, 28.272406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868446, 39.067528, 28.278913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115829, -0.371508, 0.921176,
		0.313861, 0.866211, 0.388806,
		-0.942377, 0.334156, 0.016269,
		38.585732, 39.167774, 28.283794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141018, 39.221695, 28.855576>,  <39.245396, 38.933865, 28.272406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141018, 39.221695, 28.855576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761387, 39.149559, 28.752251>,  <38.533607, 39.106277, 28.690256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761387, 39.149559, 28.752251>,  <39.141018, 39.221695, 28.855576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761387, 39.149559, 28.752251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208438, -0.255353, 0.944112,
		-0.236222, 0.949880, 0.204761,
		-0.949080, -0.180340, -0.258312,
		38.476662, 39.095455, 28.674757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670547, 39.638821, 29.298384>,  <39.141018, 39.221695, 28.855576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670547, 39.638821, 29.298384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448769, 39.339260, 29.153204>,  <38.315701, 39.159523, 29.066097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448769, 39.339260, 29.153204>,  <38.670547, 39.638821, 29.298384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448769, 39.339260, 29.153204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496052, -0.052783, 0.866687,
		-0.668224, 0.660571, -0.342231,
		-0.554445, -0.748906, -0.362948,
		38.282436, 39.114590, 29.044319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076069, 39.733047, 29.642813>,  <38.670547, 39.638821, 29.298384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076069, 39.733047, 29.642813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030743, 39.372299, 29.476057>,  <38.003548, 39.155849, 29.376003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030743, 39.372299, 29.476057>,  <38.076069, 39.733047, 29.642813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030743, 39.372299, 29.476057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517490, -0.304608, 0.799636,
		-0.848153, 0.306349, -0.432189,
		-0.113319, -0.901867, -0.416887,
		37.996746, 39.101738, 29.350990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297848, 39.488617, 29.738853>,  <38.076069, 39.733047, 29.642813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297848, 39.488617, 29.738853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522877, 39.164135, 29.675016>,  <37.657894, 38.969448, 29.636715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522877, 39.164135, 29.675016>,  <37.297848, 39.488617, 29.738853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522877, 39.164135, 29.675016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386389, -0.428631, 0.816688,
		-0.730905, -0.397778, -0.554573,
		0.562568, -0.811202, -0.159591,
		37.691647, 38.920776, 29.627138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822708, 38.939625, 29.752592>,  <37.297848, 39.488617, 29.738853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822708, 38.939625, 29.752592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192081, 38.815235, 29.842539>,  <37.413704, 38.740601, 29.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192081, 38.815235, 29.842539>,  <36.822708, 38.939625, 29.752592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192081, 38.815235, 29.842539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343421, -0.408119, 0.845873,
		-0.171274, -0.858331, -0.483667,
		0.923433, -0.310977, 0.224869,
		37.469112, 38.721943, 29.910000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709156, 38.312939, 29.937799>,  <36.822708, 38.939625, 29.752592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709156, 38.312939, 29.937799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060234, 38.380234, 30.117285>,  <37.270882, 38.420609, 30.224976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060234, 38.380234, 30.117285>,  <36.709156, 38.312939, 29.937799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060234, 38.380234, 30.117285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323097, -0.483778, 0.813368,
		0.353914, -0.858869, -0.370255,
		0.877698, 0.168234, 0.448713,
		37.323544, 38.430702, 30.251898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903748, 37.681538, 30.346500>,  <36.709156, 38.312939, 29.937799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903748, 37.681538, 30.346500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135548, 37.972321, 30.493855>,  <37.274628, 38.146790, 30.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135548, 37.972321, 30.493855>,  <36.903748, 37.681538, 30.346500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135548, 37.972321, 30.493855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232597, -0.285693, 0.929666,
		0.781075, -0.624427, 0.003529,
		0.579501, 0.726959, 0.368387,
		37.309399, 38.190407, 30.604370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118450, 37.344231, 30.941923>,  <36.903748, 37.681538, 30.346500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118450, 37.344231, 30.941923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170292, 37.738663, 30.983570>,  <37.201397, 37.975323, 31.008558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170292, 37.738663, 30.983570>,  <37.118450, 37.344231, 30.941923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170292, 37.738663, 30.983570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206470, -0.075863, 0.975507,
		0.969832, -0.147925, 0.193765,
		0.129603, 0.986085, 0.104117,
		37.209171, 38.034489, 31.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486084, 37.372658, 31.542540>,  <37.118450, 37.344231, 30.941923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486084, 37.372658, 31.542540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379459, 37.757267, 31.515945>,  <37.315487, 37.988033, 31.499989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379459, 37.757267, 31.515945>,  <37.486084, 37.372658, 31.542540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379459, 37.757267, 31.515945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120448, 0.035207, 0.992095,
		0.956263, 0.272460, 0.106429,
		-0.266559, 0.961523, -0.066485,
		37.299492, 38.045723, 31.496000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956017, 37.718594, 32.042992>,  <37.486084, 37.372658, 31.542540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956017, 37.718594, 32.042992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614559, 37.910213, 31.961210>,  <37.409683, 38.025185, 31.912142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614559, 37.910213, 31.961210>,  <37.956017, 37.718594, 32.042992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614559, 37.910213, 31.961210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139943, 0.167144, 0.975950,
		0.501704, 0.861726, -0.075642,
		-0.853644, 0.479053, -0.204449,
		37.358467, 38.053928, 31.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959167, 38.136463, 32.594013>,  <37.956017, 37.718594, 32.042992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959167, 38.136463, 32.594013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586395, 38.181114, 32.456001>,  <37.362732, 38.207905, 32.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586395, 38.181114, 32.456001>,  <37.959167, 38.136463, 32.594013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586395, 38.181114, 32.456001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340110, 0.061050, 0.938402,
		0.125815, 0.991873, -0.018929,
		-0.931931, 0.111627, -0.345027,
		37.306816, 38.214603, 32.352493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692776, 38.571095, 32.982712>,  <37.959167, 38.136463, 32.594013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692776, 38.571095, 32.982712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372040, 38.377544, 32.842476>,  <37.179596, 38.261414, 32.758335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372040, 38.377544, 32.842476>,  <37.692776, 38.571095, 32.982712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372040, 38.377544, 32.842476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448569, 0.099832, 0.888155,
		-0.394758, 0.869423, -0.297102,
		-0.801843, -0.483878, -0.350587,
		37.131489, 38.232380, 32.737301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074596, 38.897766, 33.355137>,  <37.692776, 38.571095, 32.982712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074596, 38.897766, 33.355137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 38.547138, 33.220833>,  <36.853916, 38.336761, 33.140251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 38.547138, 33.220833>,  <37.074596, 38.897766, 33.355137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936672, 38.547138, 33.220833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332744, -0.220328, 0.916917,
		-0.877716, 0.427887, -0.215700,
		-0.344813, -0.876566, -0.335763,
		36.833229, 38.284168, 33.120106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416542, 38.797455, 33.646034>,  <37.074596, 38.897766, 33.355137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416542, 38.797455, 33.646034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544785, 38.430492, 33.551735>,  <36.621731, 38.210316, 33.495155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544785, 38.430492, 33.551735>,  <36.416542, 38.797455, 33.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544785, 38.430492, 33.551735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316567, -0.338349, 0.886174,
		-0.892748, -0.209481, -0.398897,
		0.320603, -0.917408, -0.235746,
		36.640965, 38.155270, 33.481010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977627, 38.309155, 34.022640>,  <36.416542, 38.797455, 33.646034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977627, 38.309155, 34.022640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297421, 38.098446, 33.907169>,  <36.489296, 37.972019, 33.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297421, 38.098446, 33.907169>,  <35.977627, 38.309155, 34.022640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297421, 38.098446, 33.907169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018462, -0.501895, 0.864731,
		-0.600403, -0.686010, -0.410983,
		0.799485, -0.526774, -0.288674,
		36.537266, 37.940414, 33.820568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772007, 37.654266, 34.276054>,  <35.977627, 38.309155, 34.022640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772007, 37.654266, 34.276054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166794, 37.683796, 34.218853>,  <36.403664, 37.701515, 34.184532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166794, 37.683796, 34.218853>,  <35.772007, 37.654266, 34.276054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166794, 37.683796, 34.218853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160818, -0.486533, 0.858733,
		-0.006179, -0.870537, -0.492063,
		0.986965, 0.073826, -0.143004,
		36.462883, 37.705944, 34.175953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053383, 36.971180, 34.541348>,  <35.772007, 37.654266, 34.276054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053383, 36.971180, 34.541348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338871, 37.250214, 34.566563>,  <36.510166, 37.417633, 34.581692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338871, 37.250214, 34.566563>,  <36.053383, 36.971180, 34.541348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338871, 37.250214, 34.566563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342559, -0.426149, 0.837287,
		0.610945, -0.575995, -0.543117,
		0.713722, 0.697586, 0.063041,
		36.552986, 37.459488, 34.585476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672207, 36.621109, 34.774395>,  <36.053383, 36.971180, 34.541348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672207, 36.621109, 34.774395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730778, 37.010807, 34.842995>,  <36.765919, 37.244625, 34.884155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730778, 37.010807, 34.842995>,  <36.672207, 36.621109, 34.774395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730778, 37.010807, 34.842995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353710, -0.213473, 0.910670,
		0.923824, -0.072681, -0.375856,
		0.146423, 0.974242, 0.171503,
		36.774704, 37.303078, 34.894447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380562, 36.674107, 35.046356>,  <36.672207, 36.621109, 34.774395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380562, 36.674107, 35.046356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158867, 36.988876, 35.154850>,  <37.025848, 37.177738, 35.219948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158867, 36.988876, 35.154850>,  <37.380562, 36.674107, 35.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158867, 36.988876, 35.154850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314627, -0.103624, 0.943542,
		0.770604, 0.608285, -0.190156,
		-0.554237, 0.786925, 0.271236,
		36.992596, 37.224953, 35.236221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821732, 37.103241, 35.393970>,  <37.380562, 36.674107, 35.046356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821732, 37.103241, 35.393970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461555, 37.214485, 35.527752>,  <37.245449, 37.281231, 35.608021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461555, 37.214485, 35.527752>,  <37.821732, 37.103241, 35.393970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461555, 37.214485, 35.527752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319991, -0.097300, 0.942411,
		0.294635, 0.955609, -0.001379,
		-0.900442, 0.278108, 0.334454,
		37.191422, 37.297916, 35.628090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958340, 37.526905, 35.949215>,  <37.821732, 37.103241, 35.393970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958340, 37.526905, 35.949215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569931, 37.443073, 35.995171>,  <37.336887, 37.392773, 36.022743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569931, 37.443073, 35.995171>,  <37.958340, 37.526905, 35.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569931, 37.443073, 35.995171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123205, -0.027011, 0.992014,
		-0.204802, 0.977418, 0.052050,
		-0.971018, -0.209580, 0.114891,
		37.278625, 37.380199, 36.029636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325104, 36.866283, 35.970497>,  <37.958340, 37.526905, 35.949215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325104, 36.866283, 35.970497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711716, 36.857517, 36.072746>,  <38.943684, 36.852257, 36.134094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711716, 36.857517, 36.072746>,  <38.325104, 36.866283, 35.970497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711716, 36.857517, 36.072746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246735, 0.352450, -0.902718,
		-0.070308, 0.935574, 0.346061,
		0.966529, -0.021917, 0.255619,
		39.001675, 36.850941, 36.149433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571396, 37.388752, 35.523830>,  <38.325104, 36.866283, 35.970497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571396, 37.388752, 35.523830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906109, 37.201176, 35.636890>,  <39.106937, 37.088631, 35.704727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906109, 37.201176, 35.636890>,  <38.571396, 37.388752, 35.523830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906109, 37.201176, 35.636890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454094, 0.305927, -0.836784,
		0.305927, 0.828557, 0.468936,
		0.836784, -0.468936, 0.282652,
		39.157143, 37.060493, 35.721687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068115, 37.939095, 35.481167>,  <38.571396, 37.388752, 35.523830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068115, 37.939095, 35.481167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232365, 37.575184, 35.456863>,  <39.330914, 37.356838, 35.442280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232365, 37.575184, 35.456863>,  <39.068115, 37.939095, 35.481167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232365, 37.575184, 35.456863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451355, 0.260712, -0.853410,
		0.792256, 0.323001, 0.517687,
		0.410619, -0.909780, -0.060762,
		39.355549, 37.302250, 35.438633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690868, 38.049423, 35.219032>,  <39.068115, 37.939095, 35.481167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690868, 38.049423, 35.219032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671963, 37.655930, 35.149715>,  <39.660618, 37.419834, 35.108124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671963, 37.655930, 35.149715>,  <39.690868, 38.049423, 35.219032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671963, 37.655930, 35.149715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631576, 0.104977, -0.768174,
		0.773872, -0.145758, 0.616342,
		-0.047266, -0.983735, -0.173296,
		39.657784, 37.360809, 35.097725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347561, 37.926342, 35.073803>,  <39.690868, 38.049423, 35.219032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347561, 37.926342, 35.073803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120178, 37.629570, 34.931591>,  <39.983749, 37.451508, 34.846264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120178, 37.629570, 34.931591>,  <40.347561, 37.926342, 35.073803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120178, 37.629570, 34.931591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456893, 0.074688, -0.886381,
		0.684184, -0.666308, 0.296524,
		-0.568455, -0.741927, -0.355531,
		39.949642, 37.406990, 34.824932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789135, 37.421432, 34.653343>,  <40.347561, 37.926342, 35.073803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789135, 37.421432, 34.653343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413002, 37.352879, 34.535763>,  <40.187325, 37.311745, 34.465214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413002, 37.352879, 34.535763>,  <40.789135, 37.421432, 34.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413002, 37.352879, 34.535763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258896, 0.200198, -0.944930,
		0.220808, -0.964647, -0.143877,
		-0.940328, -0.171399, -0.293949,
		40.130901, 37.301460, 34.447578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951893, 36.975689, 34.092083>,  <40.789135, 37.421432, 34.653343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951893, 36.975689, 34.092083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589966, 37.142574, 34.058029>,  <40.372810, 37.242706, 34.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589966, 37.142574, 34.058029>,  <40.951893, 36.975689, 34.092083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589966, 37.142574, 34.058029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236504, 0.326148, -0.915256,
		-0.354087, -0.848271, -0.393775,
		-0.904814, 0.417209, -0.085135,
		40.318523, 37.267738, 34.032490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781357, 36.858086, 33.383568>,  <40.951893, 36.975689, 34.092083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781357, 36.858086, 33.383568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535740, 37.157345, 33.484150>,  <40.388371, 37.336899, 33.544498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535740, 37.157345, 33.484150>,  <40.781357, 36.858086, 33.383568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535740, 37.157345, 33.484150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038106, 0.346316, -0.937344,
		-0.788352, -0.565988, -0.241162,
		-0.614044, 0.748146, 0.251452,
		40.351528, 37.381790, 33.559586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293205, 36.907833, 32.824051>,  <40.781357, 36.858086, 33.383568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293205, 36.907833, 32.824051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290195, 37.268612, 32.996761>,  <40.288391, 37.485081, 33.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290195, 37.268612, 32.996761>,  <40.293205, 36.907833, 32.824051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290195, 37.268612, 32.996761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102602, 0.428816, -0.897546,
		-0.994694, -0.051052, 0.089317,
		-0.007521, 0.901948, 0.431778,
		40.287937, 37.539196, 33.126293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811901, 37.254353, 32.429722>,  <40.293205, 36.907833, 32.824051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811901, 37.254353, 32.429722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021065, 37.540092, 32.615738>,  <40.146564, 37.711536, 32.727348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021065, 37.540092, 32.615738>,  <39.811901, 37.254353, 32.429722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021065, 37.540092, 32.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068787, 0.579158, -0.812308,
		-0.849606, 0.392778, 0.351987,
		0.522913, 0.714354, 0.465038,
		40.177940, 37.754398, 32.755249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440914, 37.933670, 32.378830>,  <39.811901, 37.254353, 32.429722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440914, 37.933670, 32.378830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828716, 38.005535, 32.445492>,  <40.061398, 38.048653, 32.485489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828716, 38.005535, 32.445492>,  <39.440914, 37.933670, 32.378830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828716, 38.005535, 32.445492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018551, 0.731924, -0.681134,
		-0.244350, 0.657274, 0.712941,
		0.969510, 0.179661, 0.166652,
		40.119568, 38.059433, 32.495487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462849, 38.654545, 32.402794>,  <39.440914, 37.933670, 32.378830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462849, 38.654545, 32.402794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832458, 38.523148, 32.324539>,  <40.054222, 38.444309, 32.277588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832458, 38.523148, 32.324539>,  <39.462849, 38.654545, 32.402794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832458, 38.523148, 32.324539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070522, 0.649338, -0.757223,
		0.375777, 0.685895, 0.623169,
		0.924023, -0.328494, -0.195636,
		40.109665, 38.424599, 32.265850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038254, 39.243526, 32.307613>,  <39.462849, 38.654545, 32.402794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038254, 39.243526, 32.307613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193813, 38.935421, 32.105442>,  <40.287148, 38.750557, 31.984140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193813, 38.935421, 32.105442>,  <40.038254, 39.243526, 32.307613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193813, 38.935421, 32.105442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325753, 0.628139, -0.706631,
		0.861769, 0.110161, 0.495196,
		0.388895, -0.770264, -0.505425,
		40.310482, 38.704342, 31.953814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756550, 39.420547, 32.188755>,  <40.038254, 39.243526, 32.307613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756550, 39.420547, 32.188755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671375, 39.128841, 31.928652>,  <40.620270, 38.953819, 31.772591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671375, 39.128841, 31.928652>,  <40.756550, 39.420547, 32.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671375, 39.128841, 31.928652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416714, 0.534169, -0.735535,
		0.883747, -0.427591, 0.190152,
		-0.212934, -0.729266, -0.650253,
		40.607494, 38.910061, 31.733576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313187, 39.479729, 31.621090>,  <40.756550, 39.420547, 32.188755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313187, 39.479729, 31.621090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042385, 39.258167, 31.427246>,  <40.879902, 39.125229, 31.310940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042385, 39.258167, 31.427246>,  <41.313187, 39.479729, 31.621090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042385, 39.258167, 31.427246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269006, 0.426663, -0.863478,
		0.685052, -0.714945, -0.139850,
		-0.677008, -0.553907, -0.484611,
		40.839283, 39.091995, 31.281862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685356, 39.161510, 31.118116>,  <41.313187, 39.479729, 31.621090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685356, 39.161510, 31.118116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301880, 39.160149, 31.004341>,  <41.071796, 39.159332, 30.936075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301880, 39.160149, 31.004341>,  <41.685356, 39.161510, 31.118116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301880, 39.160149, 31.004341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256333, 0.423174, -0.869032,
		0.123330, -0.906042, -0.404818,
		-0.958688, -0.003409, -0.284439,
		41.014275, 39.159126, 30.919010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761059, 39.028709, 30.519203>,  <41.685356, 39.161510, 31.118116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761059, 39.028709, 30.519203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380943, 39.152374, 30.504375>,  <41.152874, 39.226574, 30.495478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380943, 39.152374, 30.504375>,  <41.761059, 39.028709, 30.519203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380943, 39.152374, 30.504375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151345, 0.354552, -0.922707,
		-0.272126, -0.882445, -0.383716,
		-0.950286, 0.309166, -0.037071,
		41.095860, 39.245125, 30.493254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303116, 38.596729, 30.012415>,  <41.761059, 39.028709, 30.519203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303116, 38.596729, 30.012415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131878, 38.953461, 30.070906>,  <41.029137, 39.167500, 30.105999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131878, 38.953461, 30.070906>,  <41.303116, 38.596729, 30.012415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131878, 38.953461, 30.070906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001824, 0.160948, -0.986961,
		-0.903734, -0.422776, -0.067274,
		-0.428091, 0.891828, 0.146225,
		41.003452, 39.221008, 30.114773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854439, 38.561367, 29.543636>,  <41.303116, 38.596729, 30.012415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854439, 38.561367, 29.543636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867172, 38.954586, 29.615856>,  <40.874813, 39.190517, 29.659187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867172, 38.954586, 29.615856>,  <40.854439, 38.561367, 29.543636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867172, 38.954586, 29.615856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013130, 0.180214, -0.983540,
		-0.999407, 0.033678, -0.007171,
		0.031832, 0.983051, 0.180549,
		40.876720, 39.249500, 29.670021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285954, 38.934689, 29.199074>,  <40.854439, 38.561367, 29.543636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285954, 38.934689, 29.199074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568501, 39.208183, 29.272339>,  <40.738029, 39.372280, 29.316298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568501, 39.208183, 29.272339>,  <40.285954, 38.934689, 29.199074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568501, 39.208183, 29.272339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029524, 0.286998, -0.957476,
		-0.707225, 0.670926, 0.222914,
		0.706372, 0.683732, 0.183164,
		40.780411, 39.413303, 29.327288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083717, 39.556831, 28.865801>,  <40.285954, 38.934689, 29.199074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083717, 39.556831, 28.865801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469082, 39.639103, 28.934549>,  <40.700298, 39.688465, 28.975798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469082, 39.639103, 28.934549>,  <40.083717, 39.556831, 28.865801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469082, 39.639103, 28.934549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035795, 0.536746, -0.842984,
		-0.265638, 0.818290, 0.509743,
		0.963408, 0.205682, 0.171871,
		40.758106, 39.700809, 28.986111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124832, 40.322395, 28.754803>,  <40.083717, 39.556831, 28.865801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124832, 40.322395, 28.754803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467316, 40.127998, 28.684702>,  <40.672806, 40.011360, 28.642641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467316, 40.127998, 28.684702>,  <40.124832, 40.322395, 28.754803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467316, 40.127998, 28.684702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053767, 0.421207, -0.905369,
		0.513822, 0.765764, 0.386772,
		0.856210, -0.485994, -0.175253,
		40.724178, 39.982201, 28.632126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365143, 40.769909, 28.270063>,  <40.124832, 40.322395, 28.754803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365143, 40.769909, 28.270063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586338, 40.440517, 28.219332>,  <40.719055, 40.242882, 28.188892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586338, 40.440517, 28.219332>,  <40.365143, 40.769909, 28.270063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586338, 40.440517, 28.219332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374636, 0.381712, -0.844952,
		0.744213, 0.419733, 0.519587,
		0.552987, -0.823481, -0.126828,
		40.752235, 40.193474, 28.181284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048599, 40.926723, 28.066010>,  <40.365143, 40.769909, 28.270063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048599, 40.926723, 28.066010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005589, 40.555172, 27.924234>,  <40.979782, 40.332241, 27.839170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005589, 40.555172, 27.924234>,  <41.048599, 40.926723, 28.066010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005589, 40.555172, 27.924234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317355, 0.305784, -0.897654,
		0.942191, -0.209008, 0.261902,
		-0.107531, -0.928877, -0.354437,
		40.973328, 40.276508, 27.817904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617195, 40.906490, 27.552265>,  <41.048599, 40.926723, 28.066010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617195, 40.906490, 27.552265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392738, 40.586750, 27.466330>,  <41.258064, 40.394905, 27.414768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392738, 40.586750, 27.466330>,  <41.617195, 40.906490, 27.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392738, 40.586750, 27.466330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218253, 0.107476, -0.969956,
		0.798426, -0.591172, 0.114152,
		-0.561142, -0.799352, -0.214837,
		41.224396, 40.346943, 27.401878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014355, 40.447701, 27.159843>,  <41.617195, 40.906490, 27.552265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014355, 40.447701, 27.159843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627861, 40.372852, 27.088980>,  <41.395966, 40.327946, 27.046461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627861, 40.372852, 27.088980>,  <42.014355, 40.447701, 27.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627861, 40.372852, 27.088980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162671, 0.090270, -0.982542,
		0.199845, -0.978181, -0.056783,
		-0.966230, -0.187120, -0.177161,
		41.337994, 40.316715, 27.035831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018433, 40.093357, 26.586540>,  <42.014355, 40.447701, 27.159843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018433, 40.093357, 26.586540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638763, 40.214531, 26.620712>,  <41.410961, 40.287235, 26.641216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638763, 40.214531, 26.620712>,  <42.018433, 40.093357, 26.586540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638763, 40.214531, 26.620712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052870, 0.114118, -0.992059,
		-0.310274, -0.946156, -0.092302,
		-0.949176, 0.302930, 0.085431,
		41.354012, 40.305408, 26.646341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709000, 39.661560, 25.998343>,  <42.018433, 40.093357, 26.586540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709000, 39.661560, 25.998343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497105, 39.986332, 26.096451>,  <41.369968, 40.181194, 26.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497105, 39.986332, 26.096451>,  <41.709000, 39.661560, 25.998343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497105, 39.986332, 26.096451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038957, 0.265579, -0.963302,
		-0.847267, -0.519851, -0.109057,
		-0.529736, 0.811926, 0.245269,
		41.338184, 40.229908, 26.170031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074432, 39.665340, 25.590132>,  <41.709000, 39.661560, 25.998343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074432, 39.665340, 25.590132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141632, 40.039032, 25.715986>,  <41.181953, 40.263245, 25.791500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141632, 40.039032, 25.715986>,  <41.074432, 39.665340, 25.590132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141632, 40.039032, 25.715986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115180, 0.335591, -0.934940,
		-0.979035, 0.120829, 0.163983,
		0.167999, 0.934227, 0.314638,
		41.192032, 40.319302, 25.810377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500210, 40.095612, 25.346107>,  <41.074432, 39.665340, 25.590132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500210, 40.095612, 25.346107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836376, 40.302967, 25.409311>,  <41.038078, 40.427380, 25.447233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836376, 40.302967, 25.409311>,  <40.500210, 40.095612, 25.346107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836376, 40.302967, 25.409311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076571, 0.402224, -0.912334,
		-0.536500, 0.754644, 0.377731,
		0.840420, 0.518390, 0.158009,
		41.088501, 40.458485, 25.456715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288002, 40.641819, 25.008497>,  <40.500210, 40.095612, 25.346107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288002, 40.641819, 25.008497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678692, 40.713909, 25.055019>,  <40.913105, 40.757164, 25.082933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678692, 40.713909, 25.055019>,  <40.288002, 40.641819, 25.008497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678692, 40.713909, 25.055019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019658, 0.464733, -0.885233,
		-0.213597, 0.866915, 0.450373,
		0.976724, 0.180230, 0.116307,
		40.971710, 40.767979, 25.089911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379715, 41.462288, 24.956078>,  <40.288002, 40.641819, 25.008497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379715, 41.462288, 24.956078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714764, 41.258652, 24.876852>,  <40.915791, 41.136471, 24.829317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714764, 41.258652, 24.876852>,  <40.379715, 41.462288, 24.956078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714764, 41.258652, 24.876852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166056, 0.582722, -0.795525,
		0.520407, 0.633456, 0.572635,
		0.837617, -0.509086, -0.198064,
		40.966049, 41.105927, 24.817432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799625, 41.962181, 24.594713>,  <40.379715, 41.462288, 24.956078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799625, 41.962181, 24.594713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998493, 41.628517, 24.499210>,  <41.117813, 41.428318, 24.441908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998493, 41.628517, 24.499210>,  <40.799625, 41.962181, 24.594713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998493, 41.628517, 24.499210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165048, 0.361077, -0.917814,
		0.851810, 0.416904, 0.317193,
		0.497171, -0.834155, -0.238759,
		41.147644, 41.378269, 24.427582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382263, 42.181435, 24.170589>,  <40.799625, 41.962181, 24.594713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382263, 42.181435, 24.170589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334106, 41.786823, 24.126278>,  <41.305214, 41.550056, 24.099691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334106, 41.786823, 24.126278>,  <41.382263, 42.181435, 24.170589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334106, 41.786823, 24.126278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230281, 0.080793, -0.969765,
		0.965648, -0.142261, 0.217452,
		-0.120391, -0.986527, -0.110777,
		41.297989, 41.490864, 24.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971172, 42.008884, 23.804413>,  <41.382263, 42.181435, 24.170589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971172, 42.008884, 23.804413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695099, 41.727997, 23.734510>,  <41.529453, 41.559464, 23.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695099, 41.727997, 23.734510>,  <41.971172, 42.008884, 23.804413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695099, 41.727997, 23.734510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120485, 0.126610, -0.984608,
		0.713533, -0.700616, -0.002777,
		-0.690184, -0.702216, -0.174754,
		41.488045, 41.517334, 23.682085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219486, 41.572044, 23.228333>,  <41.971172, 42.008884, 23.804413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219486, 41.572044, 23.228333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825005, 41.506477, 23.219093>,  <41.588314, 41.467136, 23.213551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825005, 41.506477, 23.219093>,  <42.219486, 41.572044, 23.228333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825005, 41.506477, 23.219093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022133, 0.007713, -0.999725,
		0.164049, -0.986444, -0.003979,
		-0.986204, -0.163916, -0.023099,
		41.529144, 41.457302, 23.212164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114998, 40.909267, 22.807447>,  <42.219486, 41.572044, 23.228333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114998, 40.909267, 22.807447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797905, 41.153095, 22.807526>,  <41.607651, 41.299393, 22.807571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797905, 41.153095, 22.807526>,  <42.114998, 40.909267, 22.807447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797905, 41.153095, 22.807526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020851, -0.026798, -0.999423,
		-0.609216, -0.792277, 0.033953,
		-0.792730, 0.609573, 0.000194,
		41.560085, 41.335968, 22.807585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724846, 40.771667, 22.176052>,  <42.114998, 40.909267, 22.807447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724846, 40.771667, 22.176052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542786, 41.117119, 22.262749>,  <41.433548, 41.324390, 22.314766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542786, 41.117119, 22.262749>,  <41.724846, 40.771667, 22.176052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542786, 41.117119, 22.262749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043016, 0.221803, -0.974142,
		-0.889374, -0.452706, -0.063804,
		-0.455152, 0.863632, 0.216739,
		41.406239, 41.376209, 22.327770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367607, 40.547329, 21.900835>,  <41.724846, 40.771667, 22.176052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367607, 40.547329, 21.900835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668274, 40.310970, 21.783646>,  <42.848675, 40.169155, 21.713333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668274, 40.310970, 21.783646>,  <42.367607, 40.547329, 21.900835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668274, 40.310970, 21.783646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046058, -0.490150, 0.870420,
		-0.657931, -0.640773, -0.395646,
		0.751668, -0.590899, -0.292973,
		42.893776, 40.133701, 21.695753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181988, 39.906063, 21.998516>,  <42.367607, 40.547329, 21.900835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181988, 39.906063, 21.998516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581944, 39.906517, 21.992556>,  <42.821918, 39.906792, 21.988979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581944, 39.906517, 21.992556>,  <42.181988, 39.906063, 21.998516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581944, 39.906517, 21.992556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013264, -0.526991, 0.849767,
		-0.006885, -0.849870, -0.526947,
		0.999888, 0.001139, -0.014901,
		42.881908, 39.906860, 21.988085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418461, 39.209930, 22.159376>,  <42.181988, 39.906063, 21.998516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418461, 39.209930, 22.159376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734325, 39.446396, 22.225052>,  <42.923843, 39.588276, 22.264458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734325, 39.446396, 22.225052>,  <42.418461, 39.209930, 22.159376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734325, 39.446396, 22.225052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147500, -0.442675, 0.884468,
		0.595548, -0.674213, -0.436760,
		0.789662, 0.591165, 0.164188,
		42.971226, 39.623745, 22.274307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870808, 38.731308, 22.394363>,  <42.418461, 39.209930, 22.159376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870808, 38.731308, 22.394363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998882, 39.094456, 22.502628>,  <43.075726, 39.312344, 22.567587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998882, 39.094456, 22.502628>,  <42.870808, 38.731308, 22.394363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998882, 39.094456, 22.502628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126673, -0.324164, 0.937481,
		0.938849, -0.265879, -0.218794,
		0.320182, 0.907869, 0.270662,
		43.094936, 39.366817, 22.583826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487705, 38.573185, 22.656088>,  <42.870808, 38.731308, 22.394363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487705, 38.573185, 22.656088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407951, 38.930973, 22.816172>,  <43.360100, 39.145645, 22.912222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407951, 38.930973, 22.816172>,  <43.487705, 38.573185, 22.656088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407951, 38.930973, 22.816172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357374, -0.313907, 0.879628,
		0.912430, 0.318411, -0.257072,
		-0.199387, 0.894470, 0.400210,
		43.348137, 39.199314, 22.936235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035110, 38.602688, 23.213278>,  <43.487705, 38.573185, 22.656088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035110, 38.602688, 23.213278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730221, 38.848186, 23.295576>,  <43.547287, 38.995487, 23.344955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730221, 38.848186, 23.295576>,  <44.035110, 38.602688, 23.213278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730221, 38.848186, 23.295576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013827, -0.302330, 0.953103,
		0.647170, 0.729319, 0.221955,
		-0.762220, 0.613751, 0.205743,
		43.501556, 39.032310, 23.357300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208576, 38.777489, 23.926331>,  <44.035110, 38.602688, 23.213278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208576, 38.777489, 23.926331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825680, 38.877144, 23.867521>,  <43.595940, 38.936935, 23.832235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825680, 38.877144, 23.867521>,  <44.208576, 38.777489, 23.926331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825680, 38.877144, 23.867521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211726, -0.257054, 0.942918,
		0.197124, 0.933731, 0.298812,
		-0.957243, 0.249139, -0.147023,
		43.538506, 38.951885, 23.823414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025585, 39.244816, 24.357460>,  <44.208576, 38.777489, 23.926331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025585, 39.244816, 24.357460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660553, 39.092789, 24.297125>,  <43.441536, 39.001572, 24.260923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660553, 39.092789, 24.297125>,  <44.025585, 39.244816, 24.357460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660553, 39.092789, 24.297125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160367, -0.006666, 0.987035,
		-0.376143, 0.924936, -0.054866,
		-0.912578, -0.380065, -0.150836,
		43.386780, 38.978767, 24.251875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530895, 39.685658, 24.700872>,  <44.025585, 39.244816, 24.357460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530895, 39.685658, 24.700872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365005, 39.325954, 24.645247>,  <43.265472, 39.110134, 24.611870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365005, 39.325954, 24.645247>,  <43.530895, 39.685658, 24.700872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365005, 39.325954, 24.645247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211310, -0.053475, 0.975955,
		-0.885072, 0.434139, -0.167845,
		-0.414724, -0.899258, -0.139067,
		43.240589, 39.056179, 24.603527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985794, 39.620640, 25.172955>,  <43.530895, 39.685658, 24.700872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985794, 39.620640, 25.172955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004196, 39.227303, 25.102613>,  <43.015236, 38.991302, 25.060410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004196, 39.227303, 25.102613>,  <42.985794, 39.620640, 25.172955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004196, 39.227303, 25.102613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347189, -0.180802, 0.920201,
		-0.936666, 0.018720, -0.349723,
		0.046005, -0.983341, -0.175851,
		43.017998, 38.932301, 25.049858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299511, 39.340748, 25.277796>,  <42.985794, 39.620640, 25.172955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299511, 39.340748, 25.277796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566078, 39.045147, 25.317316>,  <42.726021, 38.867786, 25.341028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566078, 39.045147, 25.317316>,  <42.299511, 39.340748, 25.277796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566078, 39.045147, 25.317316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388175, -0.230764, 0.892227,
		-0.636555, -0.632952, -0.440647,
		0.666422, -0.738999, 0.098802,
		42.766006, 38.823448, 25.346956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997353, 38.834080, 25.656099>,  <42.299511, 39.340748, 25.277796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997353, 38.834080, 25.656099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362591, 38.690300, 25.733103>,  <42.581734, 38.604031, 25.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362591, 38.690300, 25.733103>,  <41.997353, 38.834080, 25.656099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362591, 38.690300, 25.733103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319669, -0.337949, 0.885213,
		-0.253130, -0.869821, -0.423482,
		0.913092, -0.359448, 0.192510,
		42.636517, 38.582466, 25.790855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967194, 38.107384, 25.894136>,  <41.997353, 38.834080, 25.656099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967194, 38.107384, 25.894136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322536, 38.223118, 26.036747>,  <42.535740, 38.292557, 26.122314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322536, 38.223118, 26.036747>,  <41.967194, 38.107384, 25.894136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322536, 38.223118, 26.036747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250700, -0.344883, 0.904547,
		0.384676, -0.892940, -0.233843,
		0.888355, 0.289334, 0.356528,
		42.589043, 38.309917, 26.143705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232414, 37.600063, 26.308207>,  <41.967194, 38.107384, 25.894136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232414, 37.600063, 26.308207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491524, 37.879066, 26.430759>,  <42.646992, 38.046467, 26.504292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491524, 37.879066, 26.430759>,  <42.232414, 37.600063, 26.308207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491524, 37.879066, 26.430759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194964, -0.236995, 0.951747,
		0.736461, -0.676253, -0.017531,
		0.647776, 0.697506, 0.306383,
		42.685856, 38.088318, 26.522675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761086, 37.219898, 26.776844>,  <42.232414, 37.600063, 26.308207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761086, 37.219898, 26.776844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772179, 37.614655, 26.840439>,  <42.778835, 37.851509, 26.878595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772179, 37.614655, 26.840439>,  <42.761086, 37.219898, 26.776844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772179, 37.614655, 26.840439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005701, -0.158888, 0.987280,
		0.999599, -0.028289, 0.001220,
		0.027736, 0.986891, 0.158986,
		42.780499, 37.910721, 26.888134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361450, 37.300770, 27.215118>,  <42.761086, 37.219898, 26.776844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361450, 37.300770, 27.215118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110085, 37.609810, 27.251301>,  <42.959267, 37.795235, 27.273010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110085, 37.609810, 27.251301>,  <43.361450, 37.300770, 27.215118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110085, 37.609810, 27.251301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007241, -0.122093, 0.992492,
		0.777844, 0.623042, 0.082320,
		-0.628415, 0.772601, 0.090457,
		42.921558, 37.841591, 27.278439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537834, 37.567440, 27.850788>,  <43.361450, 37.300770, 27.215118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537834, 37.567440, 27.850788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182575, 37.741428, 27.791462>,  <42.969421, 37.845821, 27.755867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182575, 37.741428, 27.791462>,  <43.537834, 37.567440, 27.850788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182575, 37.741428, 27.791462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177575, -0.027153, 0.983733,
		0.423872, 0.900033, 0.101357,
		-0.888144, 0.434975, -0.148314,
		42.916134, 37.871922, 27.746967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467140, 38.049774, 28.391695>,  <43.537834, 37.567440, 27.850788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467140, 38.049774, 28.391695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100700, 37.978474, 28.248035>,  <42.880836, 37.935692, 28.161840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100700, 37.978474, 28.248035>,  <43.467140, 38.049774, 28.391695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100700, 37.978474, 28.248035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321748, -0.207663, 0.923772,
		-0.239246, 0.961823, 0.132887,
		-0.916100, -0.178252, -0.359147,
		42.825871, 37.924999, 28.140291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096581, 38.355160, 28.784807>,  <43.467140, 38.049774, 28.391695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096581, 38.355160, 28.784807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843498, 38.091515, 28.622204>,  <42.691647, 37.933327, 28.524641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843498, 38.091515, 28.622204>,  <43.096581, 38.355160, 28.784807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843498, 38.091515, 28.622204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355532, -0.219106, 0.908620,
		-0.687950, 0.719420, -0.095705,
		-0.632710, -0.659111, -0.406511,
		42.653687, 37.893780, 28.500250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336071, 38.482227, 28.980196>,  <43.096581, 38.355160, 28.784807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336071, 38.482227, 28.980196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362087, 38.093124, 28.891195>,  <42.377697, 37.859661, 28.837795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362087, 38.093124, 28.891195>,  <42.336071, 38.482227, 28.980196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362087, 38.093124, 28.891195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319881, -0.231532, 0.918732,
		-0.945222, 0.011416, -0.326227,
		0.065043, -0.972760, -0.222501,
		42.381599, 37.801296, 28.824446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656696, 38.172455, 29.251829>,  <42.336071, 38.482227, 28.980196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656696, 38.172455, 29.251829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903851, 37.865517, 29.183237>,  <42.052143, 37.681355, 29.142082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903851, 37.865517, 29.183237>,  <41.656696, 38.172455, 29.251829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903851, 37.865517, 29.183237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349694, -0.463524, 0.814162,
		-0.704228, -0.443090, -0.554738,
		0.617882, -0.767344, -0.171481,
		42.089214, 37.635315, 29.131792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229263, 37.617424, 29.350903>,  <41.656696, 38.172455, 29.251829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229263, 37.617424, 29.350903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603542, 37.478264, 29.374355>,  <41.828110, 37.394768, 29.388426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603542, 37.478264, 29.374355>,  <41.229263, 37.617424, 29.350903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603542, 37.478264, 29.374355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236129, -0.494075, 0.836739,
		-0.262131, -0.796780, -0.544453,
		0.935698, -0.347897, 0.058630,
		41.884251, 37.373894, 29.391945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200314, 36.933743, 29.720541>,  <41.229263, 37.617424, 29.350903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200314, 36.933743, 29.720541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575718, 37.063236, 29.768522>,  <41.800961, 37.140930, 29.797312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575718, 37.063236, 29.768522>,  <41.200314, 36.933743, 29.720541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575718, 37.063236, 29.768522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075155, -0.530692, 0.844226,
		0.336959, -0.783304, -0.522392,
		0.938515, 0.323730, 0.119952,
		41.857273, 37.160355, 29.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564068, 36.296089, 30.045561>,  <41.200314, 36.933743, 29.720541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564068, 36.296089, 30.045561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762611, 36.629368, 30.143053>,  <41.881737, 36.829334, 30.201548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762611, 36.629368, 30.143053>,  <41.564068, 36.296089, 30.045561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762611, 36.629368, 30.143053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139484, -0.353654, 0.924918,
		0.856836, -0.425099, -0.291759,
		0.496363, 0.833199, 0.243729,
		41.911522, 36.879326, 30.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110157, 36.113621, 30.433136>,  <41.564068, 36.296089, 30.045561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110157, 36.113621, 30.433136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080593, 36.499233, 30.535259>,  <42.062855, 36.730602, 30.596535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080593, 36.499233, 30.535259>,  <42.110157, 36.113621, 30.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080593, 36.499233, 30.535259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211016, -0.235097, 0.948790,
		0.974685, 0.123996, -0.186050,
		-0.073906, 0.964030, 0.255311,
		42.058422, 36.788441, 30.611853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631649, 36.128143, 30.836868>,  <42.110157, 36.113621, 30.433136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631649, 36.128143, 30.836868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435589, 36.469727, 30.906736>,  <42.317951, 36.674675, 30.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435589, 36.469727, 30.906736>,  <42.631649, 36.128143, 30.836868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435589, 36.469727, 30.906736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233025, -0.064721, 0.970315,
		0.839911, 0.516305, -0.167269,
		-0.490152, 0.853956, 0.174672,
		42.288544, 36.725914, 30.959137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125427, 36.676006, 31.007986>,  <42.631649, 36.128143, 30.836868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125427, 36.676006, 31.007986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759117, 36.749573, 31.150829>,  <42.539330, 36.793713, 31.236536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759117, 36.749573, 31.150829>,  <43.125427, 36.676006, 31.007986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759117, 36.749573, 31.150829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333232, -0.148580, 0.931064,
		0.224300, 0.971647, 0.074779,
		-0.915776, 0.183919, 0.357110,
		42.484383, 36.804749, 31.257963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208580, 37.160545, 31.469875>,  <43.125427, 36.676006, 31.007986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208580, 37.160545, 31.469875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861084, 37.002083, 31.588772>,  <42.652588, 36.907005, 31.660110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861084, 37.002083, 31.588772>,  <43.208580, 37.160545, 31.469875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861084, 37.002083, 31.588772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404710, -0.221884, 0.887118,
		-0.285482, 0.890971, 0.353087,
		-0.868741, -0.396153, 0.297241,
		42.600460, 36.883236, 31.677944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016109, 37.447594, 32.263847>,  <43.208580, 37.160545, 31.469875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016109, 37.447594, 32.263847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743286, 37.156490, 32.235115>,  <42.579590, 36.981827, 32.217876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743286, 37.156490, 32.235115>,  <43.016109, 37.447594, 32.263847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743286, 37.156490, 32.235115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180954, -0.263125, 0.947640,
		-0.708554, 0.633349, 0.311158,
		-0.682060, -0.727759, -0.071831,
		42.538670, 36.938164, 32.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604000, 37.594540, 32.710785>,  <43.016109, 37.447594, 32.263847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604000, 37.594540, 32.710785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544666, 37.202679, 32.656719>,  <42.509068, 36.967560, 32.624279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544666, 37.202679, 32.656719>,  <42.604000, 37.594540, 32.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544666, 37.202679, 32.656719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032341, -0.141412, 0.989423,
		-0.988409, 0.142389, 0.052658,
		-0.148330, -0.979657, -0.135167,
		42.500168, 36.908783, 32.616169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031338, 37.388054, 33.124592>,  <42.604000, 37.594540, 32.710785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031338, 37.388054, 33.124592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267155, 37.073204, 33.052063>,  <42.408646, 36.884296, 33.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267155, 37.073204, 33.052063>,  <42.031338, 37.388054, 33.124592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267155, 37.073204, 33.052063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066628, -0.176334, 0.982073,
		-0.804984, -0.591056, -0.051512,
		0.589543, -0.787121, -0.181327,
		42.444019, 36.837067, 32.997665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795662, 36.861691, 33.565662>,  <42.031338, 37.388054, 33.124592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795662, 36.861691, 33.565662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170158, 36.753464, 33.475994>,  <42.394855, 36.688530, 33.422195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170158, 36.753464, 33.475994>,  <41.795662, 36.861691, 33.565662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170158, 36.753464, 33.475994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095663, -0.417609, 0.903577,
		-0.338089, -0.867409, -0.365099,
		0.936239, -0.270564, -0.224168,
		42.451031, 36.672295, 33.408745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850109, 36.308685, 33.799252>,  <41.795662, 36.861691, 33.565662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850109, 36.308685, 33.799252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239014, 36.397717, 33.770485>,  <42.472355, 36.451134, 33.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239014, 36.397717, 33.770485>,  <41.850109, 36.308685, 33.799252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239014, 36.397717, 33.770485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166891, -0.444661, 0.880014,
		0.163891, -0.867603, -0.469472,
		0.972259, 0.222577, -0.071919,
		42.530693, 36.464489, 33.748909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182625, 35.668388, 33.995579>,  <41.850109, 36.308685, 33.799252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182625, 35.668388, 33.995579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468128, 35.947102, 34.023987>,  <42.639431, 36.114330, 34.041031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468128, 35.947102, 34.023987>,  <42.182625, 35.668388, 33.995579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468128, 35.947102, 34.023987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281252, -0.378007, 0.882048,
		0.641437, -0.609598, -0.465777,
		0.713762, 0.696779, 0.071017,
		42.682255, 36.156136, 34.045292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714375, 35.276955, 34.022861>,  <42.182625, 35.668388, 33.995579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714375, 35.276955, 34.022861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828060, 35.630466, 34.171535>,  <42.896271, 35.842575, 34.260738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828060, 35.630466, 34.171535>,  <42.714375, 35.276955, 34.022861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828060, 35.630466, 34.171535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362571, -0.457958, 0.811675,
		0.887561, -0.095926, -0.450592,
		0.284213, 0.883783, 0.371685,
		42.913322, 35.895603, 34.283043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418842, 35.227348, 34.300507>,  <42.714375, 35.276955, 34.022861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418842, 35.227348, 34.300507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260380, 35.547188, 34.481037>,  <43.165302, 35.739094, 34.589355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260380, 35.547188, 34.481037>,  <43.418842, 35.227348, 34.300507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260380, 35.547188, 34.481037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437033, -0.268085, 0.858564,
		0.807503, 0.537372, -0.243248,
		-0.396158, 0.799601, 0.451329,
		43.141533, 35.787067, 34.616436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937004, 35.546726, 34.774017>,  <43.418842, 35.227348, 34.300507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937004, 35.546726, 34.774017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577732, 35.668900, 34.900497>,  <43.362167, 35.742203, 34.976387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577732, 35.668900, 34.900497>,  <43.937004, 35.546726, 34.774017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577732, 35.668900, 34.900497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154220, -0.454632, 0.877226,
		0.411689, 0.836672, 0.361238,
		-0.898181, 0.305434, 0.316199,
		43.308277, 35.760529, 34.995358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127048, 35.732510, 35.433010>,  <43.937004, 35.546726, 34.774017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127048, 35.732510, 35.433010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728008, 35.726974, 35.460144>,  <43.488583, 35.723652, 35.476425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728008, 35.726974, 35.460144>,  <44.127048, 35.732510, 35.433010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728008, 35.726974, 35.460144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068006, -0.379313, 0.922766,
		0.012956, 0.925165, 0.379344,
		-0.997601, -0.013842, 0.067831,
		43.428726, 35.722820, 35.480492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978535, 35.862675, 36.114395>,  <44.127048, 35.732510, 35.433010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978535, 35.862675, 36.114395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637501, 35.683479, 36.006763>,  <43.432880, 35.575962, 35.942184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637501, 35.683479, 36.006763>,  <43.978535, 35.862675, 36.114395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637501, 35.683479, 36.006763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063358, -0.422485, 0.904153,
		-0.518727, 0.787919, 0.331823,
		-0.852589, -0.447984, -0.269076,
		43.381725, 35.549084, 35.926041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456821, 35.869484, 36.711170>,  <43.978535, 35.862675, 36.114395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456821, 35.869484, 36.711170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368946, 35.557419, 36.476875>,  <43.316223, 35.370182, 36.336300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368946, 35.557419, 36.476875>,  <43.456821, 35.869484, 36.711170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368946, 35.557419, 36.476875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170654, -0.560416, 0.810439,
		-0.960529, 0.277999, -0.010023,
		-0.219684, -0.780160, -0.585738,
		43.303040, 35.323372, 36.301155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691017, 35.544949, 37.258987>,  <43.456821, 35.869484, 36.711170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691017, 35.544949, 37.258987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927544, 35.858578, 37.183552>,  <44.069462, 36.046757, 37.138290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927544, 35.858578, 37.183552>,  <43.691017, 35.544949, 37.258987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927544, 35.858578, 37.183552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595460, 0.582220, 0.553577,
		0.543845, -0.215046, 0.811165,
		0.591321, 0.784076, -0.188586,
		44.104939, 36.093800, 37.126976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809326, 36.008781, 37.935776>,  <43.691017, 35.544949, 37.258987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809326, 36.008781, 37.935776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880375, 36.245750, 37.621456>,  <43.923004, 36.387932, 37.432865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880375, 36.245750, 37.621456>,  <43.809326, 36.008781, 37.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880375, 36.245750, 37.621456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656915, 0.665926, 0.353560,
		0.732744, 0.453407, 0.507453,
		0.177620, 0.592422, -0.785803,
		43.933662, 36.423477, 37.385715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895248, 36.652878, 38.202953>,  <43.809326, 36.008781, 37.935776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895248, 36.652878, 38.202953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772106, 36.687344, 37.823944>,  <43.698223, 36.708023, 37.596539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772106, 36.687344, 37.823944>,  <43.895248, 36.652878, 38.202953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772106, 36.687344, 37.823944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764884, 0.569869, 0.300336,
		0.565844, 0.817205, -0.109528,
		-0.307853, 0.086167, -0.947524,
		43.679749, 36.713192, 37.539688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676861, 37.396343, 38.085388>,  <43.895248, 36.652878, 38.202953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676861, 37.396343, 38.085388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476910, 37.235134, 37.778744>,  <43.356937, 37.138409, 37.594757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476910, 37.235134, 37.778744>,  <43.676861, 37.396343, 38.085388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476910, 37.235134, 37.778744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826822, 0.485577, 0.283865,
		0.257843, 0.775748, -0.575961,
		-0.499882, -0.403025, -0.766609,
		43.326946, 37.114227, 37.548759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294430, 37.925091, 37.826824>,  <43.676861, 37.396343, 38.085388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294430, 37.925091, 37.826824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139690, 37.601837, 37.649166>,  <43.046844, 37.407887, 37.542572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139690, 37.601837, 37.649166>,  <43.294430, 37.925091, 37.826824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139690, 37.601837, 37.649166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862902, 0.487093, -0.134689,
		0.325186, 0.331147, -0.885774,
		-0.386853, -0.808135, -0.444143,
		43.023636, 37.359398, 37.515923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842896, 38.166214, 37.392536>,  <43.294430, 37.925091, 37.826824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842896, 38.166214, 37.392536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740360, 37.780087, 37.412296>,  <42.678837, 37.548409, 37.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740360, 37.780087, 37.412296>,  <42.842896, 38.166214, 37.392536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740360, 37.780087, 37.412296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963449, 0.251061, -0.093456,
		0.077812, -0.071554, -0.994397,
		-0.256342, -0.965323, 0.049403,
		42.663456, 37.490490, 37.427116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373280, 38.125652, 36.856174>,  <42.842896, 38.166214, 37.392536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373280, 38.125652, 36.856174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314861, 37.799480, 37.080223>,  <42.279812, 37.603775, 37.214653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314861, 37.799480, 37.080223>,  <42.373280, 38.125652, 36.856174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314861, 37.799480, 37.080223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984266, 0.176692, 0.000600,
		-0.099459, -0.551224, -0.828408,
		-0.146042, -0.815434, 0.560124,
		42.271049, 37.554852, 37.248260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837337, 37.718338, 36.575253>,  <42.373280, 38.125652, 36.856174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837337, 37.718338, 36.575253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848553, 37.638355, 36.967014>,  <41.855282, 37.590366, 37.202072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848553, 37.638355, 36.967014>,  <41.837337, 37.718338, 36.575253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848553, 37.638355, 36.967014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955129, 0.283654, 0.085255,
		-0.294859, -0.937847, -0.183036,
		0.028037, -0.199961, 0.979403,
		41.856964, 37.578365, 37.260834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209358, 37.467705, 36.751896>,  <41.837337, 37.718338, 36.575253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209358, 37.467705, 36.751896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354202, 37.568745, 37.110798>,  <41.441109, 37.629368, 37.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354202, 37.568745, 37.110798>,  <41.209358, 37.467705, 36.751896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354202, 37.568745, 37.110798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922520, 0.235010, 0.306149,
		-0.133530, -0.938596, 0.318132,
		0.362114, 0.252603, 0.897254,
		41.462837, 37.644527, 37.379974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971844, 37.072472, 37.422592>,  <41.209358, 37.467705, 36.751896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971844, 37.072472, 37.422592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072891, 37.443760, 37.531834>,  <41.133518, 37.666534, 37.597378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072891, 37.443760, 37.531834>,  <40.971844, 37.072472, 37.422592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072891, 37.443760, 37.531834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915391, 0.137837, 0.378234,
		0.313441, -0.345546, 0.884507,
		0.252615, 0.928223, 0.273106,
		41.148674, 37.722225, 37.613766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333580, 37.392841, 37.728790>,  <40.971844, 37.072472, 37.422592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333580, 37.392841, 37.728790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551292, 37.725025, 37.776283>,  <40.681919, 37.924335, 37.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551292, 37.725025, 37.776283>,  <40.333580, 37.392841, 37.728790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551292, 37.725025, 37.776283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801201, 0.472626, 0.367018,
		0.248676, -0.294891, 0.922605,
		0.544277, 0.830460, 0.118736,
		40.714577, 37.974163, 37.811905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283382, 37.660297, 38.477440>,  <40.333580, 37.392841, 37.728790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283382, 37.660297, 38.477440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394787, 37.980278, 38.264835>,  <40.461628, 38.172268, 38.137272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394787, 37.980278, 38.264835>,  <40.283382, 37.660297, 38.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394787, 37.980278, 38.264835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682497, 0.554215, 0.476492,
		0.675744, 0.230050, 0.700319,
		0.278510, 0.799951, -0.531516,
		40.478340, 38.220264, 38.105381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214779, 38.185734, 38.966896>,  <40.283382, 37.660297, 38.477440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214779, 38.185734, 38.966896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231873, 38.374207, 38.614494>,  <40.242130, 38.487289, 38.403053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231873, 38.374207, 38.614494>,  <40.214779, 38.185734, 38.966896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231873, 38.374207, 38.614494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612997, 0.708686, 0.349285,
		0.788929, 0.525123, 0.319120,
		0.042738, 0.471180, -0.881001,
		40.244694, 38.515560, 38.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615463, 38.829777, 39.030354>,  <40.214779, 38.185734, 38.966896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615463, 38.829777, 39.030354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347218, 38.867409, 38.736027>,  <40.186272, 38.889988, 38.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347218, 38.867409, 38.736027>,  <40.615463, 38.829777, 39.030354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347218, 38.867409, 38.736027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408559, 0.781083, 0.472217,
		0.619160, 0.617300, -0.485368,
		-0.670612, 0.094077, -0.735819,
		40.146034, 38.895630, 38.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582523, 39.510826, 38.781578>,  <40.615463, 38.829777, 39.030354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582523, 39.510826, 38.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217133, 39.379669, 38.685204>,  <39.997898, 39.300976, 38.627380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217133, 39.379669, 38.685204>,  <40.582523, 39.510826, 38.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217133, 39.379669, 38.685204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404441, 0.796554, 0.449364,
		0.044574, 0.507927, -0.860246,
		-0.913477, -0.327889, -0.240932,
		39.943089, 39.281303, 38.612923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225990, 40.031803, 38.529499>,  <40.582523, 39.510826, 38.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225990, 40.031803, 38.529499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972736, 39.774227, 38.701302>,  <39.820786, 39.619682, 38.804382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972736, 39.774227, 38.701302>,  <40.225990, 40.031803, 38.529499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972736, 39.774227, 38.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382429, 0.742669, 0.549719,
		-0.672972, 0.183789, -0.716471,
		-0.633133, -0.643945, 0.429509,
		39.782795, 39.581043, 38.830154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686817, 40.388569, 38.735664>,  <40.225990, 40.031803, 38.529499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686817, 40.388569, 38.735664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584286, 40.062508, 38.943443>,  <39.522766, 39.866871, 39.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584286, 40.062508, 38.943443>,  <39.686817, 40.388569, 38.735664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584286, 40.062508, 38.943443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548352, 0.565187, 0.616339,
		-0.795993, -0.126851, -0.591865,
		-0.256332, -0.815152, 0.519444,
		39.507385, 39.817963, 39.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047688, 40.443932, 38.947762>,  <39.686817, 40.388569, 38.735664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047688, 40.443932, 38.947762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136868, 40.153553, 39.208008>,  <39.190376, 39.979324, 39.364155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136868, 40.153553, 39.208008>,  <39.047688, 40.443932, 38.947762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136868, 40.153553, 39.208008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347216, 0.564504, 0.748850,
		-0.910897, -0.392860, -0.126204,
		0.222951, -0.725946, 0.650612,
		39.203754, 39.935768, 39.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457653, 40.273350, 39.301781>,  <39.047688, 40.443932, 38.947762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457653, 40.273350, 39.301781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762089, 40.165890, 39.537937>,  <38.944752, 40.101414, 39.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762089, 40.165890, 39.537937>,  <38.457653, 40.273350, 39.301781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762089, 40.165890, 39.537937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391504, 0.535448, 0.748345,
		-0.517170, -0.800701, 0.302347,
		0.761091, -0.268651, 0.590395,
		38.990417, 40.085293, 39.715057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200146, 40.064228, 39.969635>,  <38.457653, 40.273350, 39.301781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200146, 40.064228, 39.969635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579178, 40.181435, 40.020584>,  <38.806599, 40.251759, 40.051155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579178, 40.181435, 40.020584>,  <38.200146, 40.064228, 39.969635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579178, 40.181435, 40.020584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246081, 0.415057, 0.875884,
		0.203784, -0.861318, 0.465407,
		0.947584, 0.293018, 0.127372,
		38.863453, 40.269341, 40.058796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636040, 39.746841, 40.559532>,  <38.200146, 40.064228, 39.969635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636040, 39.746841, 40.559532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725304, 40.130878, 40.492104>,  <38.778862, 40.361301, 40.451645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725304, 40.130878, 40.492104>,  <38.636040, 39.746841, 40.559532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725304, 40.130878, 40.492104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268861, 0.226852, 0.936083,
		0.936969, -0.163577, 0.308757,
		0.223164, 0.960094, -0.168574,
		38.792252, 40.418907, 40.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273430, 40.062649, 40.994961>,  <38.636040, 39.746841, 40.559532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273430, 40.062649, 40.994961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978870, 40.315956, 40.899719>,  <38.802135, 40.467941, 40.842575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978870, 40.315956, 40.899719>,  <39.273430, 40.062649, 40.994961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978870, 40.315956, 40.899719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059860, 0.289566, 0.955284,
		0.673896, 0.717722, -0.175328,
		-0.736397, 0.633267, -0.238100,
		38.757950, 40.505936, 40.828289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385777, 40.667252, 41.273708>,  <39.273430, 40.062649, 40.994961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385777, 40.667252, 41.273708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990154, 40.664352, 41.214767>,  <38.752781, 40.662613, 41.179401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990154, 40.664352, 41.214767>,  <39.385777, 40.667252, 41.273708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990154, 40.664352, 41.214767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143784, 0.271156, 0.951735,
		0.033057, 0.962508, -0.269232,
		-0.989057, -0.007250, -0.147357,
		38.693436, 40.662178, 41.170559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744205, 41.121780, 40.784710>,  <39.385777, 40.667252, 41.273708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744205, 41.121780, 40.784710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762089, 40.728592, 40.855995>,  <39.772820, 40.492680, 40.898766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762089, 40.728592, 40.855995>,  <39.744205, 41.121780, 40.784710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762089, 40.728592, 40.855995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934693, -0.021811, -0.354786,
		0.352633, 0.182436, 0.917806,
		0.044707, -0.982976, 0.178213,
		39.775501, 40.433701, 40.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000626, 40.902519, 40.148823>,  <39.744205, 41.121780, 40.784710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000626, 40.902519, 40.148823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651344, 40.708378, 40.131142>,  <39.441776, 40.591892, 40.120533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651344, 40.708378, 40.131142>,  <40.000626, 40.902519, 40.148823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651344, 40.708378, 40.131142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233452, -0.336928, -0.912130,
		0.427814, -0.806790, 0.407512,
		-0.873199, -0.485356, -0.044204,
		39.389385, 40.562771, 40.117882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037415, 40.095509, 40.014561>,  <40.000626, 40.902519, 40.148823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037415, 40.095509, 40.014561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693356, 40.239220, 39.869747>,  <39.486919, 40.325447, 39.782860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693356, 40.239220, 39.869747>,  <40.037415, 40.095509, 40.014561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693356, 40.239220, 39.869747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262641, -0.296476, -0.918217,
		-0.437230, -0.884885, 0.160651,
		-0.860145, 0.359278, -0.362035,
		39.435310, 40.347004, 39.761135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898335, 39.430489, 40.440338>,  <40.037415, 40.095509, 40.014561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898335, 39.430489, 40.440338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609650, 39.621529, 40.239929>,  <39.436440, 39.736153, 40.119682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609650, 39.621529, 40.239929>,  <39.898335, 39.430489, 40.440338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609650, 39.621529, 40.239929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004789, -0.720357, -0.693587,
		-0.692167, -0.502976, 0.517610,
		-0.721722, 0.477599, -0.501016,
		39.393135, 39.764809, 40.089622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353142, 38.924500, 40.224995>,  <39.898335, 39.430489, 40.440338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353142, 38.924500, 40.224995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336147, 39.243187, 39.983852>,  <39.325951, 39.434399, 39.839165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336147, 39.243187, 39.983852>,  <39.353142, 38.924500, 40.224995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336147, 39.243187, 39.983852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004080, -0.603536, -0.797325,
		-0.999089, -0.031413, 0.028891,
		-0.042483, 0.796717, -0.602858,
		39.323402, 39.482201, 39.802994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083172, 38.671364, 39.534126>,  <39.353142, 38.924500, 40.224995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083172, 38.671364, 39.534126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214123, 39.029293, 39.412724>,  <39.292694, 39.244049, 39.339882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214123, 39.029293, 39.412724>,  <39.083172, 38.671364, 39.534126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214123, 39.029293, 39.412724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295153, -0.401977, -0.866775,
		-0.897614, 0.194180, -0.395707,
		0.327375, 0.894823, -0.303508,
		39.312336, 39.297741, 39.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731365, 38.789066, 38.904274>,  <39.083172, 38.671364, 39.534126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731365, 38.789066, 38.904274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029350, 39.054714, 38.879047>,  <39.208141, 39.214104, 38.863911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029350, 39.054714, 38.879047>,  <38.731365, 38.789066, 38.904274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029350, 39.054714, 38.879047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293538, -0.411227, -0.862976,
		-0.599051, 0.624374, -0.501292,
		0.744965, 0.664115, -0.063069,
		39.252838, 39.253948, 38.860126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763077, 38.885353, 38.235180>,  <38.731365, 38.789066, 38.904274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763077, 38.885353, 38.235180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116161, 39.038200, 38.344582>,  <39.328014, 39.129910, 38.410221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116161, 39.038200, 38.344582>,  <38.763077, 38.885353, 38.235180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116161, 39.038200, 38.344582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458944, -0.576032, -0.676431,
		-0.100927, 0.722618, -0.683840,
		0.882714, 0.382114, 0.273504,
		39.380974, 39.152836, 38.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087688, 38.916348, 37.727501>,  <38.763077, 38.885353, 38.235180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087688, 38.916348, 37.727501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418091, 38.934837, 37.952206>,  <39.616333, 38.945930, 38.087029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418091, 38.934837, 37.952206>,  <39.087688, 38.916348, 37.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418091, 38.934837, 37.952206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510926, -0.482311, -0.711569,
		0.238051, 0.874780, -0.422009,
		0.826006, 0.046226, 0.561762,
		39.665894, 38.948704, 38.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521610, 38.725250, 37.216896>,  <39.087688, 38.916348, 37.727501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521610, 38.725250, 37.216896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726597, 38.820797, 37.546822>,  <39.849586, 38.878124, 37.744778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726597, 38.820797, 37.546822>,  <39.521610, 38.725250, 37.216896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726597, 38.820797, 37.546822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821721, -0.415288, -0.390270,
		0.249314, 0.877768, -0.409103,
		0.512462, 0.238869, 0.824818,
		39.880337, 38.892456, 37.794266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184753, 39.082249, 37.185444>,  <39.521610, 38.725250, 37.216896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184753, 39.082249, 37.185444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225163, 38.921619, 37.549538>,  <40.249409, 38.825241, 37.767994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225163, 38.921619, 37.549538>,  <40.184753, 39.082249, 37.185444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225163, 38.921619, 37.549538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802604, -0.507747, -0.313080,
		0.587895, 0.762190, 0.271009,
		0.101022, -0.401571, 0.910239,
		40.255470, 38.801147, 37.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890156, 39.198132, 37.434654>,  <40.184753, 39.082249, 37.185444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890156, 39.198132, 37.434654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733776, 38.892979, 37.640633>,  <40.639950, 38.709885, 37.764217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733776, 38.892979, 37.640633>,  <40.890156, 39.198132, 37.434654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733776, 38.892979, 37.640633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873864, -0.483318, -0.052585,
		0.288998, 0.429431, 0.855611,
		-0.390950, -0.762884, 0.514942,
		40.616489, 38.664112, 37.795116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411133, 39.016502, 37.833515>,  <40.890156, 39.198132, 37.434654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411133, 39.016502, 37.833515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186459, 38.685585, 37.837330>,  <41.051655, 38.487034, 37.839619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186459, 38.685585, 37.837330>,  <41.411133, 39.016502, 37.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186459, 38.685585, 37.837330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826715, -0.560770, 0.045591,
		-0.032371, 0.033490, 0.998915,
		-0.561688, -0.827294, 0.009534,
		41.017952, 38.437397, 37.840191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851803, 38.547287, 38.164696>,  <41.411133, 39.016502, 37.833515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851803, 38.547287, 38.164696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589085, 38.307785, 37.981342>,  <41.431454, 38.164085, 37.871330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589085, 38.307785, 37.981342>,  <41.851803, 38.547287, 38.164696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589085, 38.307785, 37.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702610, -0.706635, -0.083703,
		-0.273795, -0.377043, 0.884802,
		-0.656792, -0.598754, -0.458387,
		41.392048, 38.128159, 37.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883926, 37.934952, 38.534077>,  <41.851803, 38.547287, 38.164696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883926, 37.934952, 38.534077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731258, 37.811298, 38.185650>,  <41.639656, 37.737106, 37.976593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731258, 37.811298, 38.185650>,  <41.883926, 37.934952, 38.534077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731258, 37.811298, 38.185650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793750, -0.592495, -0.137519,
		-0.473592, -0.743898, 0.471515,
		-0.381670, -0.309137, -0.871070,
		41.616756, 37.718559, 37.924328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923828, 37.159218, 38.473946>,  <41.883926, 37.934952, 38.534077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923828, 37.159218, 38.473946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907959, 37.312008, 38.104618>,  <41.898438, 37.403683, 37.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907959, 37.312008, 38.104618>,  <41.923828, 37.159218, 38.473946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907959, 37.312008, 38.104618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802747, -0.538057, -0.257083,
		-0.594999, -0.751392, -0.285284,
		-0.039672, 0.381975, -0.923321,
		41.896057, 37.426601, 37.827621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092075, 36.648052, 38.182690>,  <41.923828, 37.159218, 38.473946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092075, 36.648052, 38.182690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143452, 36.896339, 37.873314>,  <42.174278, 37.045311, 37.687687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143452, 36.896339, 37.873314>,  <42.092075, 36.648052, 38.182690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143452, 36.896339, 37.873314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886513, -0.421440, -0.191003,
		-0.444518, -0.661131, -0.604409,
		0.128444, 0.620721, -0.773439,
		42.181984, 37.082554, 37.641281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308079, 36.277298, 37.511879>,  <42.092075, 36.648052, 38.182690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308079, 36.277298, 37.511879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431126, 36.652214, 37.446335>,  <42.504955, 36.877163, 37.407009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431126, 36.652214, 37.446335>,  <42.308079, 36.277298, 37.511879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431126, 36.652214, 37.446335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894437, -0.343596, -0.286226,
		-0.324581, -0.058517, -0.944046,
		0.307621, 0.937293, -0.163864,
		42.523411, 36.933403, 37.397175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560631, 36.354950, 36.861141>,  <42.308079, 36.277298, 37.511879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560631, 36.354950, 36.861141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733032, 36.642715, 37.079014>,  <42.836475, 36.815376, 37.209736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733032, 36.642715, 37.079014>,  <42.560631, 36.354950, 36.861141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733032, 36.642715, 37.079014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897178, -0.277137, -0.343898,
		-0.096453, 0.636898, -0.764891,
		0.431008, 0.719413, 0.544681,
		42.862335, 36.858540, 37.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201847, 36.542557, 36.459236>,  <42.560631, 36.354950, 36.861141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201847, 36.542557, 36.459236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246277, 36.751518, 36.797409>,  <43.272934, 36.876896, 37.000313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246277, 36.751518, 36.797409>,  <43.201847, 36.542557, 36.459236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246277, 36.751518, 36.797409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991181, -0.120097, -0.056013,
		0.072273, 0.844200, -0.531134,
		0.111074, 0.522402, 0.845434,
		43.279598, 36.908237, 37.051041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662334, 37.138840, 36.298611>,  <43.201847, 36.542557, 36.459236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662334, 37.138840, 36.298611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656731, 37.019566, 36.680374>,  <43.653366, 36.948002, 36.909431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656731, 37.019566, 36.680374>,  <43.662334, 37.138840, 36.298611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656731, 37.019566, 36.680374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917445, -0.383394, -0.106315,
		0.397615, 0.874124, 0.278945,
		-0.014013, -0.298189, 0.954404,
		43.652527, 36.930107, 36.966694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298203, 37.241367, 36.440968>,  <43.662334, 37.138840, 36.298611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298203, 37.241367, 36.440968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180592, 36.993710, 36.732227>,  <44.110023, 36.845116, 36.906982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180592, 36.993710, 36.732227>,  <44.298203, 37.241367, 36.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180592, 36.993710, 36.732227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799933, -0.576363, -0.167069,
		0.523120, 0.533349, 0.664744,
		-0.294028, -0.619148, 0.728151,
		44.092384, 36.807964, 36.950672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813183, 37.150196, 36.924198>,  <44.298203, 37.241367, 36.440968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813183, 37.150196, 36.924198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601051, 36.818607, 36.995251>,  <44.473774, 36.619652, 37.037884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601051, 36.818607, 36.995251>,  <44.813183, 37.150196, 36.924198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601051, 36.818607, 36.995251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825857, -0.552493, -0.112743,
		0.191603, 0.086910, 0.977617,
		-0.530328, -0.828974, 0.177635,
		44.441952, 36.569916, 37.048542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131992, 36.583065, 37.490753>,  <44.813183, 37.150196, 36.924198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131992, 36.583065, 37.490753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907215, 36.368462, 37.238918>,  <44.772350, 36.239700, 37.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907215, 36.368462, 37.238918>,  <45.131992, 36.583065, 37.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907215, 36.368462, 37.238918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723679, -0.687519, -0.060051,
		-0.400636, -0.489365, 0.774604,
		-0.561942, -0.536506, -0.629588,
		44.738632, 36.207508, 37.050041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793797, 35.823315, 37.636089>,  <45.131992, 36.583065, 37.490753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793797, 35.823315, 37.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917652, 35.898335, 37.263222>,  <44.991966, 35.943348, 37.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917652, 35.898335, 37.263222>,  <44.793797, 35.823315, 37.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917652, 35.898335, 37.263222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687737, -0.721159, 0.083351,
		-0.656612, -0.666899, -0.352287,
		0.309642, 0.187552, -0.932173,
		45.010544, 35.954601, 36.983570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090427, 35.177471, 37.471951>,  <44.793797, 35.823315, 37.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090427, 35.177471, 37.471951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192829, 35.413460, 37.165646>,  <45.254272, 35.555054, 36.981861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192829, 35.413460, 37.165646>,  <45.090427, 35.177471, 37.471951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192829, 35.413460, 37.165646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883576, -0.464139, -0.062192,
		-0.392113, -0.660690, -0.640106,
		0.256009, 0.589969, -0.765765,
		45.269630, 35.590450, 36.935917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027054, 34.845573, 36.919815>,  <45.090427, 35.177471, 37.471951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027054, 34.845573, 36.919815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305481, 35.129627, 36.877487>,  <45.472538, 35.300060, 36.852089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305481, 35.129627, 36.877487>,  <45.027054, 34.845573, 36.919815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305481, 35.129627, 36.877487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691971, -0.702837, -0.164909,
		-0.191483, 0.041562, -0.980615,
		0.696067, 0.710135, -0.105822,
		45.514301, 35.342667, 36.845741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264771, 34.762856, 36.190277>,  <45.027054, 34.845573, 36.919815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264771, 34.762856, 36.190277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519287, 34.914406, 36.459080>,  <45.671997, 35.005337, 36.620361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519287, 34.914406, 36.459080>,  <45.264771, 34.762856, 36.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519287, 34.914406, 36.459080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616865, -0.772976, -0.148274,
		0.463267, 0.508882, -0.725551,
		0.636287, 0.378876, 0.672005,
		45.710175, 35.028069, 36.660683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971672, 34.922653, 36.114372>,  <45.264771, 34.762856, 36.190277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971672, 34.922653, 36.114372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949764, 34.802784, 36.495361>,  <45.936619, 34.730862, 36.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949764, 34.802784, 36.495361>,  <45.971672, 34.922653, 36.114372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949764, 34.802784, 36.495361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525947, -0.819499, -0.227597,
		0.848752, 0.488483, 0.202495,
		-0.054767, -0.299675, 0.952468,
		45.933334, 34.712883, 36.781101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636429, 34.690502, 36.209106>,  <45.971672, 34.922653, 36.114372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636429, 34.690502, 36.209106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359913, 34.531944, 36.450764>,  <46.194004, 34.436810, 36.595757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359913, 34.531944, 36.450764>,  <46.636429, 34.690502, 36.209106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359913, 34.531944, 36.450764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150588, -0.896771, -0.416082,
		0.706711, -0.196657, 0.679621,
		-0.691290, -0.396393, 0.604145,
		46.152527, 34.413025, 36.632008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951302, 34.141922, 36.514145>,  <46.636429, 34.690502, 36.209106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951302, 34.141922, 36.514145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555759, 34.083927, 36.527710>,  <46.318436, 34.049129, 36.535851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555759, 34.083927, 36.527710>,  <46.951302, 34.141922, 36.514145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555759, 34.083927, 36.527710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120400, -0.912580, -0.390771,
		0.087608, -0.382331, 0.919863,
		-0.988852, -0.144986, 0.033917,
		46.259102, 34.040432, 36.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819244, 33.468937, 36.733112>,  <46.951302, 34.141922, 36.514145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819244, 33.468937, 36.733112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492817, 33.583069, 36.532066>,  <46.296963, 33.651550, 36.411438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492817, 33.583069, 36.532066>,  <46.819244, 33.468937, 36.733112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492817, 33.583069, 36.532066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008837, -0.875697, -0.482780,
		-0.577892, -0.389538, 0.717147,
		-0.816065, 0.285333, -0.502616,
		46.247997, 33.668671, 36.381283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129284, 33.099365, 36.796722>,  <46.819244, 33.468937, 36.733112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129284, 33.099365, 36.796722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138706, 33.232098, 36.419506>,  <46.144360, 33.311737, 36.193176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138706, 33.232098, 36.419506>,  <46.129284, 33.099365, 36.796722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138706, 33.232098, 36.419506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230486, -0.916090, -0.328109,
		-0.972790, 0.225087, 0.054904,
		0.023556, 0.331836, -0.943043,
		46.145775, 33.331650, 36.136593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480980, 33.054523, 36.427925>,  <46.129284, 33.099365, 36.796722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480980, 33.054523, 36.427925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776268, 33.056454, 36.158108>,  <45.953442, 33.057610, 35.996216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776268, 33.056454, 36.158108>,  <45.480980, 33.054523, 36.427925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776268, 33.056454, 36.158108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261624, -0.919654, -0.292896,
		-0.621758, 0.392699, -0.677646,
		0.738221, 0.004822, -0.674542,
		45.997734, 33.057899, 35.955746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230782, 32.601746, 35.914089>,  <45.480980, 33.054523, 36.427925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230782, 32.601746, 35.914089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629711, 32.596550, 35.885315>,  <45.869068, 32.593433, 35.868050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629711, 32.596550, 35.885315>,  <45.230782, 32.601746, 35.914089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629711, 32.596550, 35.885315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033091, -0.957698, -0.285865,
		-0.065179, 0.287481, -0.955566,
		0.997325, -0.012988, -0.071935,
		45.928909, 32.592655, 35.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586624, 31.952942, 36.141762>,  <45.230782, 32.601746, 35.914089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586624, 31.952942, 36.141762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630585, 31.929771, 35.744862>,  <45.656963, 31.915869, 35.506721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630585, 31.929771, 35.744862>,  <45.586624, 31.952942, 36.141762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630585, 31.929771, 35.744862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516516, 0.856247, 0.007227,
		0.849195, -0.513309, 0.124025,
		0.109906, -0.057924, -0.992253,
		45.663555, 31.912394, 35.447186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283558, 31.944977, 36.005543>,  <45.586624, 31.952942, 36.141762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283558, 31.944977, 36.005543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094131, 32.134315, 35.708443>,  <45.980476, 32.247917, 35.530182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094131, 32.134315, 35.708443>,  <46.283558, 31.944977, 36.005543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094131, 32.134315, 35.708443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489272, 0.842600, 0.225028,
		0.732355, -0.256839, -0.630626,
		-0.473570, 0.473348, -0.742747,
		45.952061, 32.276321, 35.485619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741135, 32.348160, 35.626659>,  <46.283558, 31.944977, 36.005543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741135, 32.348160, 35.626659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384590, 32.521187, 35.572453>,  <46.170666, 32.625004, 35.539928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384590, 32.521187, 35.572453>,  <46.741135, 32.348160, 35.626659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384590, 32.521187, 35.572453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398499, 0.890249, 0.220577,
		0.216059, 0.142609, -0.965910,
		-0.891357, 0.432572, -0.135517,
		46.117184, 32.650959, 35.531799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984028, 32.944084, 35.141090>,  <46.741135, 32.348160, 35.626659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984028, 32.944084, 35.141090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676281, 32.985100, 35.393299>,  <46.491634, 33.009708, 35.544624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676281, 32.985100, 35.393299>,  <46.984028, 32.944084, 35.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676281, 32.985100, 35.393299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384176, 0.862861, 0.328452,
		-0.510374, 0.494932, -0.703250,
		-0.769368, 0.102538, 0.630523,
		46.445469, 33.015862, 35.582455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737064, 33.681107, 35.106094>,  <46.984028, 32.944084, 35.141090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737064, 33.681107, 35.106094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661507, 33.521790, 35.465134>,  <46.616173, 33.426201, 35.680557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661507, 33.521790, 35.465134>,  <46.737064, 33.681107, 35.106094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661507, 33.521790, 35.465134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379172, 0.813586, 0.440803,
		-0.905841, 0.423609, -0.002662,
		-0.188894, -0.398288, 0.897600,
		46.604839, 33.402302, 35.734413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305698, 33.639217, 34.671261>,  <46.737064, 33.681107, 35.106094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305698, 33.639217, 34.671261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983727, 33.482090, 34.493374>,  <46.790543, 33.387814, 34.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983727, 33.482090, 34.493374>,  <47.305698, 33.639217, 34.671261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983727, 33.482090, 34.493374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581284, -0.371565, -0.723912,
		0.119128, -0.841208, 0.527426,
		-0.804934, -0.392823, -0.444717,
		46.742245, 33.364243, 34.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877705, 34.193314, 34.381432>,  <47.305698, 33.639217, 34.671261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877705, 34.193314, 34.381432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756390, 34.469624, 34.643986>,  <46.683601, 34.635410, 34.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756390, 34.469624, 34.643986>,  <46.877705, 34.193314, 34.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756390, 34.469624, 34.643986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645979, -0.357343, 0.674550,
		0.700519, 0.628594, -0.337851,
		-0.303289, 0.690779, 0.656384,
		46.665401, 34.676857, 34.840900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.415905, 34.650978, 34.475559>,  <46.877705, 34.193314, 34.381432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.415905, 34.650978, 34.475559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180279, 34.613628, 34.796627>,  <47.038902, 34.591221, 34.989269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180279, 34.613628, 34.796627>,  <47.415905, 34.650978, 34.475559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180279, 34.613628, 34.796627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757604, -0.409382, 0.508372,
		0.281132, 0.907573, 0.311892,
		-0.589068, -0.093371, 0.802671,
		47.003559, 34.585617, 35.037430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706432, 35.089272, 34.823322>,  <47.415905, 34.650978, 34.475559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706432, 35.089272, 34.823322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544559, 34.768227, 34.998619>,  <47.447437, 34.575600, 35.103798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544559, 34.768227, 34.998619>,  <47.706432, 35.089272, 34.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544559, 34.768227, 34.998619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880361, -0.212290, 0.424143,
		-0.247386, 0.557451, 0.792495,
		-0.404678, -0.802609, 0.438241,
		47.423157, 34.527443, 35.130093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.076439, 34.455666, 26.475634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682232, 34.495438, 26.420679>,  <39.445709, 34.519302, 26.387707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682232, 34.495438, 26.420679>,  <40.076439, 34.455666, 26.475634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682232, 34.495438, 26.420679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161305, -0.299448, 0.940378,
		0.052365, 0.948917, 0.311150,
		-0.985515, 0.099433, -0.137384,
		39.386578, 34.525269, 26.379463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800407, 35.025944, 26.946383>,  <40.076439, 34.455666, 26.475634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800407, 35.025944, 26.946383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475845, 34.803791, 26.873526>,  <39.281109, 34.670498, 26.829811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475845, 34.803791, 26.873526>,  <39.800407, 35.025944, 26.946383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475845, 34.803791, 26.873526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146954, -0.107765, 0.983255,
		-0.565711, 0.824583, 0.005825,
		-0.811404, -0.555382, -0.182140,
		39.232426, 34.637177, 26.818884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286182, 35.323978, 27.373831>,  <39.800407, 35.025944, 26.946383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286182, 35.323978, 27.373831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166855, 34.956776, 27.269316>,  <39.095257, 34.736454, 27.206606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166855, 34.956776, 27.269316>,  <39.286182, 35.323978, 27.373831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166855, 34.956776, 27.269316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247997, -0.189801, 0.949986,
		-0.921684, 0.348200, -0.171040,
		-0.298322, -0.918004, -0.261289,
		39.077358, 34.681374, 27.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669525, 35.249420, 27.651926>,  <39.286182, 35.323978, 27.373831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669525, 35.249420, 27.651926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792297, 34.871304, 27.607693>,  <38.865959, 34.644436, 27.581152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792297, 34.871304, 27.607693>,  <38.669525, 35.249420, 27.651926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792297, 34.871304, 27.607693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284321, -0.201956, 0.937217,
		-0.908272, -0.256215, -0.330750,
		0.306926, -0.945287, -0.110584,
		38.884377, 34.587719, 27.574518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235428, 34.868134, 28.067791>,  <38.669525, 35.249420, 27.651926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235428, 34.868134, 28.067791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513744, 34.586906, 28.009037>,  <38.680733, 34.418171, 27.973783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513744, 34.586906, 28.009037>,  <38.235428, 34.868134, 28.067791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513744, 34.586906, 28.009037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168880, -0.358916, 0.917964,
		-0.698108, -0.613905, -0.368464,
		0.695791, -0.703064, -0.146886,
		38.722481, 34.375988, 27.964972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932171, 34.197498, 28.117752>,  <38.235428, 34.868134, 28.067791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932171, 34.197498, 28.117752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319977, 34.126186, 28.184999>,  <38.552658, 34.083397, 28.225348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319977, 34.126186, 28.184999>,  <37.932171, 34.197498, 28.117752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319977, 34.126186, 28.184999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221305, -0.342412, 0.913114,
		-0.105225, -0.922480, -0.371427,
		0.969511, -0.178281, 0.168120,
		38.610828, 34.072701, 28.235435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010330, 33.538696, 28.502806>,  <37.932171, 34.197498, 28.117752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010330, 33.538696, 28.502806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360893, 33.716766, 28.576273>,  <38.571232, 33.823608, 28.620354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360893, 33.716766, 28.576273>,  <38.010330, 33.538696, 28.502806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360893, 33.716766, 28.576273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043155, -0.307254, 0.950649,
		0.479641, -0.841078, -0.250067,
		0.876403, 0.445178, 0.183668,
		38.623814, 33.850319, 28.631374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278076, 33.109581, 28.969852>,  <38.010330, 33.538696, 28.502806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278076, 33.109581, 28.969852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493603, 33.445591, 28.995228>,  <38.622921, 33.647198, 29.010452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493603, 33.445591, 28.995228>,  <38.278076, 33.109581, 28.969852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493603, 33.445591, 28.995228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279833, -0.249502, 0.927061,
		0.794585, -0.481768, -0.369505,
		0.538821, 0.840029, 0.063436,
		38.655251, 33.697601, 29.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946270, 32.944607, 29.041286>,  <38.278076, 33.109581, 28.969852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946270, 32.944607, 29.041286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889618, 33.295563, 29.224642>,  <38.855629, 33.506138, 29.334656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889618, 33.295563, 29.224642>,  <38.946270, 32.944607, 29.041286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889618, 33.295563, 29.224642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264305, -0.412732, 0.871662,
		0.953983, 0.244606, -0.173446,
		-0.141627, 0.877394, 0.458390,
		38.847130, 33.558781, 29.362158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423954, 32.993683, 29.634890>,  <38.946270, 32.944607, 29.041286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423954, 32.993683, 29.634890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165573, 33.282864, 29.732946>,  <39.010544, 33.456371, 29.791780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165573, 33.282864, 29.732946>,  <39.423954, 32.993683, 29.634890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165573, 33.282864, 29.732946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330217, -0.024910, 0.943576,
		0.688263, 0.690454, -0.222638,
		-0.645950, 0.722947, 0.245144,
		38.971786, 33.499748, 29.806490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814312, 33.518776, 29.988335>,  <39.423954, 32.993683, 29.634890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814312, 33.518776, 29.988335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440552, 33.599388, 30.105829>,  <39.216297, 33.647755, 30.176325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440552, 33.599388, 30.105829>,  <39.814312, 33.518776, 29.988335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440552, 33.599388, 30.105829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330286, 0.181262, 0.926313,
		0.133435, 0.962565, -0.235933,
		-0.934402, 0.201528, 0.293735,
		39.160233, 33.659847, 30.193949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927032, 34.081425, 30.466772>,  <39.814312, 33.518776, 29.988335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927032, 34.081425, 30.466772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558495, 33.950188, 30.550180>,  <39.337372, 33.871445, 30.600225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558495, 33.950188, 30.550180>,  <39.927032, 34.081425, 30.466772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558495, 33.950188, 30.550180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177248, 0.122858, 0.976468,
		-0.345993, 0.936621, -0.055040,
		-0.921343, -0.328095, 0.208522,
		39.282093, 33.851761, 30.612738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739685, 34.575333, 30.844852>,  <39.927032, 34.081425, 30.466772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739685, 34.575333, 30.844852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511143, 34.255856, 30.920368>,  <39.374020, 34.064167, 30.965677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511143, 34.255856, 30.920368>,  <39.739685, 34.575333, 30.844852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511143, 34.255856, 30.920368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134595, 0.135727, 0.981561,
		-0.809592, 0.586228, 0.029953,
		-0.571353, -0.798696, 0.188787,
		39.339737, 34.016247, 30.977005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199791, 34.777794, 31.405281>,  <39.739685, 34.575333, 30.844852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199791, 34.777794, 31.405281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218651, 34.378242, 31.404062>,  <39.229969, 34.138512, 31.403332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218651, 34.378242, 31.404062>,  <39.199791, 34.777794, 31.405281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218651, 34.378242, 31.404062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034661, -0.001412, 0.999398,
		-0.998286, -0.047229, 0.034555,
		0.047152, -0.998883, -0.003046,
		39.232796, 34.078579, 31.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670258, 34.507816, 31.765926>,  <39.199791, 34.777794, 31.405281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670258, 34.507816, 31.765926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966743, 34.239330, 31.769243>,  <39.144634, 34.078239, 31.771235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966743, 34.239330, 31.769243>,  <38.670258, 34.507816, 31.765926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966743, 34.239330, 31.769243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092948, -0.090388, 0.991560,
		-0.664805, -0.735727, -0.129385,
		0.741212, -0.671219, 0.008294,
		39.189106, 34.037964, 31.771730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426010, 34.075603, 32.233994>,  <38.670258, 34.507816, 31.765926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426010, 34.075603, 32.233994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806976, 33.964462, 32.183872>,  <39.035557, 33.897778, 32.153797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806976, 33.964462, 32.183872>,  <38.426010, 34.075603, 32.233994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806976, 33.964462, 32.183872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096926, -0.113678, 0.988778,
		-0.288979, -0.953874, -0.081338,
		0.952416, -0.277852, -0.125305,
		39.092701, 33.881107, 32.146282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571449, 33.492367, 32.725872>,  <38.426010, 34.075603, 32.233994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571449, 33.492367, 32.725872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943367, 33.604149, 32.630043>,  <39.166515, 33.671219, 32.572544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943367, 33.604149, 32.630043>,  <38.571449, 33.492367, 32.725872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943367, 33.604149, 32.630043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275859, -0.098098, 0.956179,
		0.243705, -0.955135, -0.168300,
		0.929790, 0.279452, -0.239576,
		39.222305, 33.687984, 32.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930107, 33.116364, 33.111401>,  <38.571449, 33.492367, 32.725872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930107, 33.116364, 33.111401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189190, 33.407547, 33.021469>,  <39.344639, 33.582256, 32.967510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189190, 33.407547, 33.021469>,  <38.930107, 33.116364, 33.111401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189190, 33.407547, 33.021469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275577, 0.051272, 0.959911,
		0.710307, -0.683697, -0.167400,
		0.647705, 0.727963, -0.224830,
		39.383503, 33.625935, 32.954021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640766, 32.914558, 33.306438>,  <38.930107, 33.116364, 33.111401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640766, 32.914558, 33.306438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.654980, 33.314297, 33.309158>,  <39.663509, 33.554138, 33.310791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.654980, 33.314297, 33.309158>,  <39.640766, 32.914558, 33.306438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654980, 33.314297, 33.309158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493902, -0.023476, 0.869200,
		0.868791, -0.027527, -0.494413,
		0.035533, 0.999345, 0.006800,
		39.665638, 33.614101, 33.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350792, 33.124428, 33.621990>,  <39.640766, 32.914558, 33.306438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350792, 33.124428, 33.621990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138748, 33.462990, 33.642300>,  <40.011520, 33.666126, 33.654484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138748, 33.462990, 33.642300>,  <40.350792, 33.124428, 33.621990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138748, 33.462990, 33.642300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213317, 0.075175, 0.974087,
		0.820656, 0.527206, -0.220404,
		-0.530114, 0.846405, 0.050769,
		39.979713, 33.716911, 33.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794601, 33.532120, 34.078732>,  <40.350792, 33.124428, 33.621990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794601, 33.532120, 34.078732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432690, 33.699745, 34.109112>,  <40.215542, 33.800320, 34.127342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432690, 33.699745, 34.109112>,  <40.794601, 33.532120, 34.078732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432690, 33.699745, 34.109112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206172, 0.274925, 0.939100,
		0.372657, 0.865335, -0.335145,
		-0.904776, 0.419060, 0.075955,
		40.161259, 33.825462, 34.131897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242390, 33.608192, 34.633999>,  <40.794601, 33.532120, 34.078732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242390, 33.608192, 34.633999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634731, 33.533310, 34.655457>,  <41.870136, 33.488380, 34.668331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.634731, 33.533310, 34.655457>,  <41.242390, 33.608192, 34.633999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634731, 33.533310, 34.655457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098401, 0.238762, -0.966080,
		0.168046, 0.952863, 0.252612,
		0.980856, -0.187204, 0.053640,
		41.928989, 33.477150, 34.671547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565159, 34.017723, 34.274849>,  <41.242390, 33.608192, 34.633999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565159, 34.017723, 34.274849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912079, 33.820614, 34.303047>,  <42.120232, 33.702347, 34.319965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912079, 33.820614, 34.303047>,  <41.565159, 34.017723, 34.274849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912079, 33.820614, 34.303047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264006, 0.335282, -0.904371,
		0.422015, 0.802970, 0.420884,
		0.867297, -0.492774, 0.070495,
		42.172268, 33.672783, 34.324196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090313, 34.489128, 34.019619>,  <41.565159, 34.017723, 34.274849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090313, 34.489128, 34.019619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275707, 34.136269, 33.986176>,  <42.386944, 33.924553, 33.966110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.275707, 34.136269, 33.986176>,  <42.090313, 34.489128, 34.019619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275707, 34.136269, 33.986176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164066, 0.178154, -0.970229,
		0.870784, 0.435968, 0.227303,
		0.463483, -0.882152, -0.083607,
		42.414753, 33.871624, 33.961094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800846, 34.602055, 33.675228>,  <42.090313, 34.489128, 34.019619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800846, 34.602055, 33.675228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.676727, 34.224174, 33.632778>,  <42.602257, 33.997448, 33.607307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.676727, 34.224174, 33.632778>,  <42.800846, 34.602055, 33.675228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676727, 34.224174, 33.632778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223795, 0.035907, -0.973975,
		0.923922, -0.325971, 0.200277,
		-0.310296, -0.944698, -0.106126,
		42.583637, 33.940765, 33.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300377, 34.421146, 33.274818>,  <42.800846, 34.602055, 33.675228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300377, 34.421146, 33.274818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.018364, 34.142128, 33.223656>,  <42.849155, 33.974716, 33.192959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.018364, 34.142128, 33.223656>,  <43.300377, 34.421146, 33.274818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018364, 34.142128, 33.223656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164438, 0.014655, -0.986279,
		0.689852, -0.716388, 0.104372,
		-0.705028, -0.697549, -0.127911,
		42.806854, 33.932865, 33.185284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661152, 33.930008, 32.831413>,  <43.300377, 34.421146, 33.274818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661152, 33.930008, 32.831413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.266438, 33.867058, 32.815956>,  <43.029610, 33.829288, 32.806683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.266438, 33.867058, 32.815956>,  <43.661152, 33.930008, 32.831413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266438, 33.867058, 32.815956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036195, 0.018409, -0.999175,
		0.157961, -0.987367, -0.012469,
		-0.986782, -0.157380, -0.038646,
		42.970402, 33.819843, 32.804363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535103, 33.425617, 32.377422>,  <43.661152, 33.930008, 32.831413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535103, 33.425617, 32.377422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.179909, 33.609520, 32.381554>,  <42.966793, 33.719864, 32.384033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.179909, 33.609520, 32.381554>,  <43.535103, 33.425617, 32.377422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179909, 33.609520, 32.381554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041105, -0.056987, -0.997528,
		-0.458035, -0.886213, 0.069502,
		-0.887983, 0.459760, 0.010326,
		42.913513, 33.747448, 32.384651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080521, 33.060455, 31.847300>,  <43.535103, 33.425617, 32.377422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080521, 33.060455, 31.847300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901226, 33.412258, 31.911249>,  <42.793648, 33.623341, 31.949619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901226, 33.412258, 31.911249>,  <43.080521, 33.060455, 31.847300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901226, 33.412258, 31.911249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340451, -0.002593, -0.940259,
		-0.826546, -0.475886, 0.300590,
		-0.448235, 0.879503, 0.159872,
		42.766754, 33.676109, 31.959211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493385, 32.981171, 31.628084>,  <43.080521, 33.060455, 31.847300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493385, 32.981171, 31.628084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.537933, 33.378441, 31.614286>,  <42.564663, 33.616802, 31.606009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.537933, 33.378441, 31.614286>,  <42.493385, 32.981171, 31.628084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537933, 33.378441, 31.614286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378260, 0.010269, -0.925642,
		-0.918975, 0.116141, 0.376824,
		0.111375, 0.993180, -0.034495,
		42.571346, 33.676395, 31.603937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995415, 33.160744, 31.087296>,  <42.493385, 32.981171, 31.628084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995415, 33.160744, 31.087296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.217361, 33.489868, 31.136459>,  <42.350529, 33.687344, 31.165958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.217361, 33.489868, 31.136459>,  <41.995415, 33.160744, 31.087296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217361, 33.489868, 31.136459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067248, 0.191616, -0.979164,
		-0.829218, 0.535038, 0.161653,
		0.554865, 0.822811, 0.122911,
		42.383820, 33.736710, 31.173332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531231, 33.798916, 31.027840>,  <41.995415, 33.160744, 31.087296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531231, 33.798916, 31.027840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.919018, 33.859711, 30.950861>,  <42.151691, 33.896187, 30.904675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.919018, 33.859711, 30.950861>,  <41.531231, 33.798916, 31.027840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919018, 33.859711, 30.950861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224100, 0.230454, -0.946926,
		-0.099567, 0.961141, 0.257477,
		0.969467, 0.151984, -0.192446,
		42.209858, 33.905304, 30.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526169, 34.485741, 30.812029>,  <41.531231, 33.798916, 31.027840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526169, 34.485741, 30.812029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.863586, 34.320797, 30.674397>,  <42.066036, 34.221832, 30.591816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.863586, 34.320797, 30.674397>,  <41.526169, 34.485741, 30.812029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863586, 34.320797, 30.674397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233277, 0.295756, -0.926342,
		0.483751, 0.861677, 0.153288,
		0.843544, -0.412361, -0.344082,
		42.116650, 34.197090, 30.571173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776054, 34.956081, 30.374352>,  <41.526169, 34.485741, 30.812029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776054, 34.956081, 30.374352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.953812, 34.622658, 30.243090>,  <42.060467, 34.422604, 30.164331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.953812, 34.622658, 30.243090>,  <41.776054, 34.956081, 30.374352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953812, 34.622658, 30.243090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151405, 0.291158, -0.944618,
		0.882944, 0.469468, 0.003183,
		0.444395, -0.833563, -0.328156,
		42.087132, 34.372589, 30.144642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200676, 35.095600, 29.741373>,  <41.776054, 34.956081, 30.374352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200676, 35.095600, 29.741373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.118996, 34.704433, 29.759176>,  <42.069988, 34.469734, 29.769859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.118996, 34.704433, 29.759176>,  <42.200676, 35.095600, 29.741373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118996, 34.704433, 29.759176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, -0.019045, -0.991973,
		0.970914, -0.208125, -0.118360,
		-0.204200, -0.977917, 0.044509,
		42.057735, 34.411057, 29.772530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645615, 34.718594, 29.328169>,  <42.200676, 35.095600, 29.741373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645615, 34.718594, 29.328169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329815, 34.475468, 29.362223>,  <42.140335, 34.329590, 29.382654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.329815, 34.475468, 29.362223>,  <42.645615, 34.718594, 29.328169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329815, 34.475468, 29.362223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145224, -0.319773, -0.936299,
		0.596323, -0.726844, 0.340730,
		-0.789499, -0.607819, 0.085133,
		42.092964, 34.293121, 29.387762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923065, 34.148834, 28.923025>,  <42.645615, 34.718594, 29.328169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923065, 34.148834, 28.923025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.528439, 34.085983, 28.940943>,  <42.291664, 34.048275, 28.951693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.528439, 34.085983, 28.940943>,  <42.923065, 34.148834, 28.923025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528439, 34.085983, 28.940943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007443, -0.230652, -0.973008,
		0.163216, -0.960266, 0.226383,
		-0.986562, -0.157125, 0.044793,
		42.232471, 34.038845, 28.954380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662033, 33.474979, 28.575672>,  <42.923065, 34.148834, 28.923025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662033, 33.474979, 28.575672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.354740, 33.730923, 28.567654>,  <42.170364, 33.884491, 28.562843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.354740, 33.730923, 28.567654>,  <42.662033, 33.474979, 28.575672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354740, 33.730923, 28.567654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171943, -0.236395, -0.956322,
		-0.616652, -0.731228, 0.291625,
		-0.768229, 0.639861, -0.020044,
		42.124271, 33.922882, 28.561640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246796, 33.332561, 28.019882>,  <42.662033, 33.474979, 28.575672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246796, 33.332561, 28.019882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.042469, 33.673801, 28.062372>,  <41.919872, 33.878548, 28.087866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.042469, 33.673801, 28.062372>,  <42.246796, 33.332561, 28.019882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042469, 33.673801, 28.062372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381780, -0.114396, -0.917146,
		-0.770269, -0.509045, 0.384133,
		-0.510812, 0.853104, 0.106227,
		41.889225, 33.929733, 28.094240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600342, 33.294151, 27.704840>,  <42.246796, 33.332561, 28.019882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600342, 33.294151, 27.704840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.644535, 33.691635, 27.712227>,  <41.671051, 33.930126, 27.716660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.644535, 33.691635, 27.712227>,  <41.600342, 33.294151, 27.704840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644535, 33.691635, 27.712227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337213, 0.054959, -0.939823,
		-0.934923, 0.097608, 0.341163,
		0.110484, 0.993706, 0.018467,
		41.677681, 33.989746, 27.717768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.924755, 33.719875, 27.348459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209846, 33.999424, 27.372465>,  <41.380901, 34.167152, 27.386869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209846, 33.999424, 27.372465>,  <40.924755, 33.719875, 27.348459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209846, 33.999424, 27.372465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200365, 0.284839, -0.937401,
		-0.672217, 0.656085, 0.343041,
		0.712726, 0.698870, 0.060017,
		41.423664, 34.209084, 27.390471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617592, 34.362614, 27.146975>,  <40.924755, 33.719875, 27.348459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617592, 34.362614, 27.146975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.010136, 34.370525, 27.070513>,  <41.245663, 34.375275, 27.024635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.010136, 34.370525, 27.070513>,  <40.617592, 34.362614, 27.146975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010136, 34.370525, 27.070513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184631, 0.373051, -0.909255,
		0.053323, 0.927600, 0.369750,
		0.981360, 0.019783, -0.191156,
		41.304543, 34.376461, 27.013166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619110, 34.937172, 26.817177>,  <40.617592, 34.362614, 27.146975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619110, 34.937172, 26.817177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976803, 34.775116, 26.741060>,  <41.191418, 34.677883, 26.695391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976803, 34.775116, 26.741060>,  <40.619110, 34.937172, 26.817177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976803, 34.775116, 26.741060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005317, 0.434716, -0.900552,
		0.447569, 0.804292, 0.390891,
		0.894233, -0.405138, -0.190289,
		41.245071, 34.653576, 26.683973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144844, 35.441143, 26.641001>,  <40.619110, 34.937172, 26.817177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144844, 35.441143, 26.641001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282291, 35.113575, 26.457134>,  <41.364761, 34.917034, 26.346815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282291, 35.113575, 26.457134>,  <41.144844, 35.441143, 26.641001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282291, 35.113575, 26.457134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071988, 0.511000, -0.856561,
		0.936345, 0.261242, 0.234542,
		0.343621, -0.818921, -0.459666,
		41.385376, 34.867897, 26.319235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568394, 35.638866, 26.133635>,  <41.144844, 35.441143, 26.641001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568394, 35.638866, 26.133635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541851, 35.265362, 25.992954>,  <41.525925, 35.041260, 25.908546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541851, 35.265362, 25.992954>,  <41.568394, 35.638866, 26.133635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541851, 35.265362, 25.992954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044241, 0.349377, -0.935937,
		0.996815, -0.077665, 0.018127,
		-0.066356, -0.933758, -0.351700,
		41.521946, 34.985233, 25.887444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979904, 35.646099, 25.641359>,  <41.568394, 35.638866, 26.133635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979904, 35.646099, 25.641359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732300, 35.346264, 25.547592>,  <41.583736, 35.166363, 25.491331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732300, 35.346264, 25.547592>,  <41.979904, 35.646099, 25.641359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732300, 35.346264, 25.547592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038216, 0.326870, -0.944296,
		0.784454, -0.575569, -0.230982,
		-0.619008, -0.749584, -0.234418,
		41.546597, 35.121387, 25.477266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302471, 35.285084, 25.094673>,  <41.979904, 35.646099, 25.641359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302471, 35.285084, 25.094673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.921165, 35.169319, 25.059965>,  <41.692383, 35.099861, 25.039141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.921165, 35.169319, 25.059965>,  <42.302471, 35.285084, 25.094673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921165, 35.169319, 25.059965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044387, 0.149922, -0.987701,
		0.298862, -0.945391, -0.130069,
		-0.953264, -0.289413, -0.086768,
		41.635185, 35.082497, 25.033936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330185, 34.974815, 24.528585>,  <42.302471, 35.285084, 25.094673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330185, 34.974815, 24.528585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944805, 35.062317, 24.590437>,  <41.713577, 35.114819, 24.627548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944805, 35.062317, 24.590437>,  <42.330185, 34.974815, 24.528585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944805, 35.062317, 24.590437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079105, 0.319158, -0.944394,
		-0.255943, -0.922108, -0.290188,
		-0.963450, 0.218756, 0.154630,
		41.655769, 35.127945, 24.636826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931713, 34.654491, 23.922913>,  <42.330185, 34.974815, 24.528585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931713, 34.654491, 23.922913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.714638, 34.949665, 24.083384>,  <41.584393, 35.126770, 24.179667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.714638, 34.949665, 24.083384>,  <41.931713, 34.654491, 23.922913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714638, 34.949665, 24.083384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128759, 0.398897, -0.907911,
		-0.830005, -0.544369, -0.121462,
		-0.542690, 0.737932, 0.401179,
		41.551830, 35.171043, 24.203737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396049, 34.870304, 23.438232>,  <41.931713, 34.654491, 23.922913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396049, 34.870304, 23.438232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.355907, 35.196541, 23.666178>,  <41.331821, 35.392281, 23.802946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.355907, 35.196541, 23.666178>,  <41.396049, 34.870304, 23.438232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355907, 35.196541, 23.666178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216768, 0.541075, -0.812557,
		-0.971052, -0.205070, 0.122495,
		-0.100352, 0.815588, 0.569865,
		41.325802, 35.441216, 23.837137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859478, 35.214626, 23.223410>,  <41.396049, 34.870304, 23.438232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859478, 35.214626, 23.223410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.039032, 35.511826, 23.421988>,  <41.146767, 35.690144, 23.541134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.039032, 35.511826, 23.421988>,  <40.859478, 35.214626, 23.223410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039032, 35.511826, 23.421988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269011, 0.642152, -0.717826,
		-0.852135, 0.188674, 0.488127,
		0.448887, 0.742996, 0.496444,
		41.173698, 35.734726, 23.570921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422562, 35.781906, 23.265713>,  <40.859478, 35.214626, 23.223410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422562, 35.781906, 23.265713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778568, 35.957703, 23.314222>,  <40.992172, 36.063183, 23.343328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778568, 35.957703, 23.314222>,  <40.422562, 35.781906, 23.265713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778568, 35.957703, 23.314222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199323, 0.614320, -0.763466,
		-0.410040, 0.655329, 0.634359,
		0.890021, 0.439494, 0.121274,
		41.045574, 36.089550, 23.350605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300472, 36.417301, 23.108185>,  <40.422562, 35.781906, 23.265713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300472, 36.417301, 23.108185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700428, 36.420258, 23.113224>,  <40.940403, 36.422031, 23.116247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700428, 36.420258, 23.113224>,  <40.300472, 36.417301, 23.108185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700428, 36.420258, 23.113224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004890, 0.643290, -0.765607,
		-0.013766, 0.765587, 0.643185,
		0.999893, 0.007394, 0.012600,
		41.000397, 36.422478, 23.117004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411636, 37.091782, 23.042564>,  <40.300472, 36.417301, 23.108185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411636, 37.091782, 23.042564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771469, 36.939297, 22.957306>,  <40.987370, 36.847805, 22.906151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771469, 36.939297, 22.957306>,  <40.411636, 37.091782, 23.042564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771469, 36.939297, 22.957306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161133, 0.743279, -0.649287,
		0.405940, 0.549743, 0.730066,
		0.899583, -0.381209, -0.213145,
		41.041344, 36.824936, 22.893362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912708, 37.618137, 23.183914>,  <40.411636, 37.091782, 23.042564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912708, 37.618137, 23.183914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062420, 37.379616, 22.899847>,  <41.152245, 37.236504, 22.729406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062420, 37.379616, 22.899847>,  <40.912708, 37.618137, 23.183914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062420, 37.379616, 22.899847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031915, 0.773659, -0.632798,
		0.926767, 0.214176, 0.308594,
		0.374277, -0.596305, -0.710167,
		41.174702, 37.200726, 22.686796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472900, 37.950016, 22.879227>,  <40.912708, 37.618137, 23.183914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472900, 37.950016, 22.879227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.383873, 37.675697, 22.602055>,  <41.330456, 37.511108, 22.435751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.383873, 37.675697, 22.602055>,  <41.472900, 37.950016, 22.879227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383873, 37.675697, 22.602055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053144, 0.701166, -0.711014,
		0.973467, -0.195075, -0.119612,
		-0.222569, -0.685793, -0.692930,
		41.317101, 37.469959, 22.394176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003757, 38.019398, 22.392086>,  <41.472900, 37.950016, 22.879227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003757, 38.019398, 22.392086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.679852, 37.860661, 22.219206>,  <41.485508, 37.765419, 22.115479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.679852, 37.860661, 22.219206>,  <42.003757, 38.019398, 22.392086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679852, 37.860661, 22.219206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105100, 0.626581, -0.772237,
		0.577260, -0.670757, -0.465678,
		-0.809768, -0.396839, -0.432197,
		41.436920, 37.741608, 22.089546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209164, 37.906734, 21.757545>,  <42.003757, 38.019398, 22.392086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209164, 37.906734, 21.757545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.811039, 37.927517, 21.724897>,  <41.572166, 37.939987, 21.705309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.811039, 37.927517, 21.724897>,  <42.209164, 37.906734, 21.757545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811039, 37.927517, 21.724897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096147, 0.436846, -0.894383,
		-0.010811, -0.898035, -0.439792,
		-0.995308, 0.051954, -0.081620,
		41.512447, 37.943104, 21.700411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103840, 37.807251, 21.060617>,  <42.209164, 37.906734, 21.757545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103840, 37.807251, 21.060617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752476, 37.954155, 21.182936>,  <41.541656, 38.042297, 21.256327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752476, 37.954155, 21.182936>,  <42.103840, 37.807251, 21.060617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752476, 37.954155, 21.182936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057405, 0.554152, -0.830434,
		-0.474446, -0.747016, -0.465690,
		-0.878411, 0.367263, 0.305797,
		41.488953, 38.064335, 21.274675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681084, 37.723503, 20.501638>,  <42.103840, 37.807251, 21.060617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681084, 37.723503, 20.501638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516209, 38.005505, 20.732487>,  <41.417282, 38.174706, 20.870995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516209, 38.005505, 20.732487>,  <41.681084, 37.723503, 20.501638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516209, 38.005505, 20.732487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121563, 0.585212, -0.801716,
		-0.902952, -0.400615, -0.155515,
		-0.412189, 0.705007, 0.577119,
		41.392551, 38.217007, 20.905622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122879, 37.958382, 20.041296>,  <41.681084, 37.723503, 20.501638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122879, 37.958382, 20.041296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208225, 38.235722, 20.316610>,  <41.259434, 38.402126, 20.481798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.208225, 38.235722, 20.316610>,  <41.122879, 37.958382, 20.041296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208225, 38.235722, 20.316610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124426, 0.679487, -0.723060,
		-0.969016, 0.239919, 0.058710,
		0.213369, 0.693352, 0.688286,
		41.272236, 38.443726, 20.523096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729954, 38.653965, 20.171030>,  <41.122879, 37.958382, 20.041296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729954, 38.653965, 20.171030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103992, 38.705807, 20.302969>,  <41.328415, 38.736912, 20.382132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103992, 38.705807, 20.302969>,  <40.729954, 38.653965, 20.171030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103992, 38.705807, 20.302969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060706, 0.858395, -0.509385,
		-0.349159, 0.496347, 0.794813,
		0.935095, 0.129607, 0.329847,
		41.384521, 38.744690, 20.401924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818409, 39.081104, 19.594889>,  <40.729954, 38.653965, 20.171030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818409, 39.081104, 19.594889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771614, 39.271908, 19.246456>,  <40.743538, 39.386391, 19.037397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.771614, 39.271908, 19.246456>,  <40.818409, 39.081104, 19.594889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771614, 39.271908, 19.246456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649611, -0.626693, -0.430421,
		-0.751212, -0.616216, -0.236555,
		-0.116985, 0.477006, -0.871080,
		40.736519, 39.415009, 18.985132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574455, 38.514030, 19.111906>,  <40.818409, 39.081104, 19.594889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574455, 38.514030, 19.111906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779652, 38.798168, 18.919136>,  <40.902771, 38.968651, 18.803474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779652, 38.798168, 18.919136>,  <40.574455, 38.514030, 19.111906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779652, 38.798168, 18.919136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618684, -0.695146, -0.366065,
		-0.595039, -0.110370, -0.796082,
		0.512990, 0.710346, -0.481923,
		40.933548, 39.011272, 18.774559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014282, 37.893085, 19.213593>,  <40.574455, 38.514030, 19.111906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014282, 37.893085, 19.213593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631989, 37.775810, 19.223553>,  <39.402615, 37.705444, 19.229528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631989, 37.775810, 19.223553>,  <40.014282, 37.893085, 19.213593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631989, 37.775810, 19.223553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081900, -0.183785, 0.979549,
		-0.282613, 0.938224, 0.199661,
		-0.955731, -0.293186, 0.024901,
		39.345268, 37.687855, 19.231024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778629, 38.225468, 19.864485>,  <40.014282, 37.893085, 19.213593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778629, 38.225468, 19.864485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518250, 37.938972, 19.763880>,  <39.362022, 37.767075, 19.703516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518250, 37.938972, 19.763880>,  <39.778629, 38.225468, 19.864485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518250, 37.938972, 19.763880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119922, -0.230134, 0.965742,
		-0.749587, 0.658813, 0.063913,
		-0.650952, -0.716242, -0.251512,
		39.322964, 37.724098, 19.688427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158997, 38.375397, 20.171404>,  <39.778629, 38.225468, 19.864485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158997, 38.375397, 20.171404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152466, 37.981377, 20.102802>,  <39.148548, 37.744965, 20.061642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152466, 37.981377, 20.102802>,  <39.158997, 38.375397, 20.171404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152466, 37.981377, 20.102802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188245, -0.165429, 0.968089,
		-0.981986, 0.048095, -0.182729,
		-0.016331, -0.985048, -0.171503,
		39.147568, 37.685863, 20.051352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512020, 38.129620, 20.412697>,  <39.158997, 38.375397, 20.171404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512020, 38.129620, 20.412697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737316, 37.799114, 20.415419>,  <38.872494, 37.600811, 20.417051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737316, 37.799114, 20.415419>,  <38.512020, 38.129620, 20.412697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737316, 37.799114, 20.415419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399978, -0.265428, 0.877249,
		-0.723035, -0.496823, -0.479987,
		0.563239, -0.826266, 0.006805,
		38.906288, 37.551235, 20.417459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041096, 37.640137, 20.539988>,  <38.512020, 38.129620, 20.412697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041096, 37.640137, 20.539988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382980, 37.480431, 20.672688>,  <38.588112, 37.384609, 20.752308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382980, 37.480431, 20.672688>,  <38.041096, 37.640137, 20.539988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382980, 37.480431, 20.672688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439267, -0.215739, 0.872067,
		-0.276615, -0.891091, -0.359778,
		0.854710, -0.399265, 0.331750,
		38.639393, 37.360653, 20.772213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814884, 37.045448, 20.953249>,  <38.041096, 37.640137, 20.539988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814884, 37.045448, 20.953249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195667, 37.094711, 21.065397>,  <38.424137, 37.124268, 21.132687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195667, 37.094711, 21.065397>,  <37.814884, 37.045448, 20.953249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195667, 37.094711, 21.065397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247492, -0.229775, 0.941250,
		0.180340, -0.965421, -0.188257,
		0.951959, 0.123153, 0.280371,
		38.481255, 37.131657, 21.149509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916897, 36.545929, 21.363413>,  <37.814884, 37.045448, 20.953249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916897, 36.545929, 21.363413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247162, 36.747253, 21.465364>,  <38.445320, 36.868046, 21.526535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247162, 36.747253, 21.465364>,  <37.916897, 36.545929, 21.363413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247162, 36.747253, 21.465364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134250, -0.263524, 0.955266,
		0.547960, -0.822944, -0.150013,
		0.825661, 0.503308, 0.254880,
		38.494862, 36.898247, 21.541828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400677, 36.196434, 21.704882>,  <37.916897, 36.545929, 21.363413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400677, 36.196434, 21.704882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468822, 36.560577, 21.855734>,  <38.509712, 36.779064, 21.946245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468822, 36.560577, 21.855734>,  <38.400677, 36.196434, 21.704882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468822, 36.560577, 21.855734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013520, -0.380529, 0.924670,
		0.985288, -0.162634, -0.052522,
		0.170369, 0.910356, 0.377129,
		38.519932, 36.833683, 21.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950054, 36.059063, 22.184921>,  <38.400677, 36.196434, 21.704882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950054, 36.059063, 22.184921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819458, 36.427277, 22.270737>,  <38.741100, 36.648205, 22.322226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819458, 36.427277, 22.270737>,  <38.950054, 36.059063, 22.184921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819458, 36.427277, 22.270737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122820, -0.183734, 0.975273,
		0.937186, 0.344769, -0.053071,
		-0.326493, 0.920530, 0.214538,
		38.721512, 36.703434, 22.335098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493824, 36.371792, 22.590813>,  <38.950054, 36.059063, 22.184921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493824, 36.371792, 22.590813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149853, 36.560116, 22.669674>,  <38.943470, 36.673111, 22.716990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149853, 36.560116, 22.669674>,  <39.493824, 36.371792, 22.590813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149853, 36.560116, 22.669674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075988, -0.263864, 0.961562,
		0.504733, 0.841852, 0.191127,
		-0.859925, 0.470808, 0.197151,
		38.891876, 36.701359, 22.728819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582600, 37.004440, 23.144581>,  <39.493824, 36.371792, 22.590813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582600, 37.004440, 23.144581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205471, 36.871361, 23.152504>,  <38.979195, 36.791512, 23.157257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205471, 36.871361, 23.152504>,  <39.582600, 37.004440, 23.144581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205471, 36.871361, 23.152504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112194, -0.260861, 0.958835,
		-0.313836, 0.906236, 0.283274,
		-0.942825, -0.332699, 0.019806,
		38.922623, 36.771553, 23.158445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393200, 37.184269, 23.854895>,  <39.582600, 37.004440, 23.144581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393200, 37.184269, 23.854895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146122, 36.897842, 23.724852>,  <38.997875, 36.725986, 23.646826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146122, 36.897842, 23.724852>,  <39.393200, 37.184269, 23.854895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146122, 36.897842, 23.724852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013404, -0.422933, 0.906062,
		-0.786303, 0.555313, 0.270842,
		-0.617696, -0.716069, -0.325110,
		38.960812, 36.683022, 23.627319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976959, 37.099533, 24.378298>,  <39.393200, 37.184269, 23.854895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976959, 37.099533, 24.378298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910927, 36.777431, 24.150501>,  <38.871307, 36.584171, 24.013823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910927, 36.777431, 24.150501>,  <38.976959, 37.099533, 24.378298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910927, 36.777431, 24.150501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119678, -0.556792, 0.821985,
		-0.978992, 0.203848, -0.004456,
		-0.165079, -0.805251, -0.569491,
		38.861404, 36.535854, 23.979654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487160, 36.639458, 24.661657>,  <38.976959, 37.099533, 24.378298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487160, 36.639458, 24.661657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655468, 36.379147, 24.408852>,  <38.756454, 36.222961, 24.257168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655468, 36.379147, 24.408852>,  <38.487160, 36.639458, 24.661657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655468, 36.379147, 24.408852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048615, -0.679513, 0.732051,
		-0.905862, -0.338754, -0.254284,
		0.420774, -0.650775, -0.632013,
		38.781700, 36.183914, 24.219248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214264, 36.013287, 24.847773>,  <38.487160, 36.639458, 24.661657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214264, 36.013287, 24.847773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501549, 35.911114, 24.588873>,  <38.673920, 35.849808, 24.433533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501549, 35.911114, 24.588873>,  <38.214264, 36.013287, 24.847773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501549, 35.911114, 24.588873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188097, -0.824282, 0.534021,
		-0.669922, -0.505284, -0.543960,
		0.718208, -0.255436, -0.647247,
		38.717010, 35.834484, 24.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047073, 35.387459, 24.587063>,  <38.214264, 36.013287, 24.847773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047073, 35.387459, 24.587063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442310, 35.448303, 24.577726>,  <38.679451, 35.484810, 24.572124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442310, 35.448303, 24.577726>,  <38.047073, 35.387459, 24.587063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442310, 35.448303, 24.577726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122883, -0.688571, 0.714681,
		0.092640, -0.709036, -0.699061,
		0.988088, 0.152110, -0.023339,
		38.738735, 35.493935, 24.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361454, 34.730137, 24.488461>,  <38.047073, 35.387459, 24.587063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361454, 34.730137, 24.488461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664692, 34.940212, 24.643101>,  <38.846634, 35.066257, 24.735886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664692, 34.940212, 24.643101>,  <38.361454, 34.730137, 24.488461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664692, 34.940212, 24.643101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038680, -0.627987, 0.777262,
		0.650993, -0.574287, -0.496390,
		0.758098, 0.525192, 0.386601,
		38.892120, 35.097771, 24.759081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737862, 34.292526, 24.931622>,  <38.361454, 34.730137, 24.488461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737862, 34.292526, 24.931622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901783, 34.637379, 25.050814>,  <39.000137, 34.844288, 25.122330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901783, 34.637379, 25.050814>,  <38.737862, 34.292526, 24.931622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901783, 34.637379, 25.050814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397096, -0.462706, 0.792602,
		0.821203, -0.206485, -0.531967,
		0.409805, 0.862129, 0.297981,
		39.024723, 34.896019, 25.140207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353878, 34.041466, 25.223080>,  <38.737862, 34.292526, 24.931622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353878, 34.041466, 25.223080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276005, 34.399033, 25.384579>,  <39.229279, 34.613571, 25.481478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276005, 34.399033, 25.384579>,  <39.353878, 34.041466, 25.223080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276005, 34.399033, 25.384579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260695, -0.349662, 0.899875,
		0.945587, 0.280449, -0.164965,
		-0.194687, 0.893916, 0.403747,
		39.217598, 34.667206, 25.505703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871693, 34.098503, 25.747843>,  <39.353878, 34.041466, 25.223080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871693, 34.098503, 25.747843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580204, 34.353958, 25.846720>,  <39.405312, 34.507233, 25.906046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580204, 34.353958, 25.846720>,  <39.871693, 34.098503, 25.747843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580204, 34.353958, 25.846720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063819, -0.296060, 0.953035,
		0.681828, 0.710274, 0.174988,
		-0.728723, 0.638639, 0.247191,
		39.361588, 34.545551, 25.920877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.567520, 33.203560, 29.857862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491989, 33.591457, 29.919758>,  <42.446671, 33.824196, 29.956896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491989, 33.591457, 29.919758>,  <42.567520, 33.203560, 29.857862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491989, 33.591457, 29.919758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402848, -0.067209, 0.912796,
		0.895576, 0.234702, -0.377967,
		-0.188832, 0.969741, 0.154740,
		42.435341, 33.882381, 29.966181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169716, 33.606812, 30.095352>,  <42.567520, 33.203560, 29.857862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169716, 33.606812, 30.095352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854557, 33.798126, 30.250513>,  <42.665462, 33.912914, 30.343611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854557, 33.798126, 30.250513>,  <43.169716, 33.606812, 30.095352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854557, 33.798126, 30.250513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373237, -0.130138, 0.918563,
		0.489816, 0.868509, -0.075979,
		-0.787892, 0.478285, 0.387903,
		42.618191, 33.941612, 30.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443008, 33.987965, 30.662447>,  <43.169716, 33.606812, 30.095352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443008, 33.987965, 30.662447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048817, 34.006893, 30.727667>,  <42.812302, 34.018250, 30.766800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048817, 34.006893, 30.727667>,  <43.443008, 33.987965, 30.662447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048817, 34.006893, 30.727667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167770, 0.124100, 0.977984,
		0.026049, 0.991141, -0.130238,
		-0.985482, 0.047326, 0.163051,
		42.753174, 34.021091, 30.776583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341106, 34.619595, 31.203806>,  <43.443008, 33.987965, 30.662447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341106, 34.619595, 31.203806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013847, 34.390686, 31.181387>,  <42.817490, 34.253342, 31.167936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013847, 34.390686, 31.181387>,  <43.341106, 34.619595, 31.203806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013847, 34.390686, 31.181387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119600, 0.074024, 0.990059,
		-0.562429, 0.816720, -0.129006,
		-0.818150, -0.572267, -0.056046,
		42.768402, 34.219006, 31.164574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674328, 34.946163, 31.556744>,  <43.341106, 34.619595, 31.203806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674328, 34.946163, 31.556744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663048, 34.546326, 31.558096>,  <42.656281, 34.306423, 31.558907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663048, 34.546326, 31.558096>,  <42.674328, 34.946163, 31.556744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663048, 34.546326, 31.558096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074374, 0.005469, 0.997215,
		-0.996832, 0.027867, -0.074498,
		-0.028197, -0.999597, 0.003379,
		42.654587, 34.246449, 31.559111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164745, 34.839325, 32.171566>,  <42.674328, 34.946163, 31.556744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164745, 34.839325, 32.171566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336597, 34.485249, 32.100182>,  <42.439709, 34.272800, 32.057350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336597, 34.485249, 32.100182>,  <42.164745, 34.839325, 32.171566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336597, 34.485249, 32.100182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184538, -0.279530, 0.942236,
		-0.883950, -0.371875, -0.283445,
		0.429626, -0.885196, -0.178466,
		42.465485, 34.219688, 32.046642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747749, 34.285046, 32.496788>,  <42.164745, 34.839325, 32.171566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747749, 34.285046, 32.496788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100525, 34.103672, 32.445267>,  <42.312191, 33.994850, 32.414356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100525, 34.103672, 32.445267>,  <41.747749, 34.285046, 32.496788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100525, 34.103672, 32.445267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089005, -0.428524, 0.899136,
		-0.462889, -0.781516, -0.418288,
		0.881936, -0.453430, -0.128800,
		42.365105, 33.967644, 32.406628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668362, 33.585407, 32.766235>,  <41.747749, 34.285046, 32.496788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668362, 33.585407, 32.766235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061024, 33.661648, 32.764141>,  <42.296619, 33.707394, 32.762886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061024, 33.661648, 32.764141>,  <41.668362, 33.585407, 32.766235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061024, 33.661648, 32.764141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071474, -0.342372, 0.936842,
		0.176774, -0.920028, -0.349714,
		0.981653, 0.190605, -0.005235,
		42.355518, 33.718830, 32.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960026, 32.992008, 32.936489>,  <41.668362, 33.585407, 32.766235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960026, 32.992008, 32.936489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213589, 33.286949, 33.029850>,  <42.365726, 33.463913, 33.085865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213589, 33.286949, 33.029850>,  <41.960026, 32.992008, 32.936489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213589, 33.286949, 33.029850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056661, -0.345247, 0.936800,
		0.771330, -0.580620, -0.260633,
		0.633907, 0.737350, 0.233401,
		42.403763, 33.508156, 33.099869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446289, 32.639244, 33.346916>,  <41.960026, 32.992008, 32.936489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446289, 32.639244, 33.346916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500629, 33.027092, 33.428295>,  <42.533234, 33.259800, 33.477123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500629, 33.027092, 33.428295>,  <42.446289, 32.639244, 33.346916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500629, 33.027092, 33.428295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007184, -0.204378, 0.978866,
		0.990703, -0.134440, -0.020799,
		0.135850, 0.969616, 0.203444,
		42.541386, 33.317978, 33.489326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960175, 32.696213, 33.894413>,  <42.446289, 32.639244, 33.346916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960175, 32.696213, 33.894413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792656, 33.058514, 33.920406>,  <42.692142, 33.275894, 33.936001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792656, 33.058514, 33.920406>,  <42.960175, 32.696213, 33.894413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792656, 33.058514, 33.920406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035952, -0.088043, 0.995468,
		0.907366, 0.414566, 0.069436,
		-0.418801, 0.905750, 0.064983,
		42.667015, 33.330238, 33.939899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237953, 33.003681, 34.433418>,  <42.960175, 32.696213, 33.894413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237953, 33.003681, 34.433418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895672, 33.205929, 34.389397>,  <42.690304, 33.327278, 34.362984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895672, 33.205929, 34.389397>,  <43.237953, 33.003681, 34.433418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895672, 33.205929, 34.389397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153846, -0.045520, 0.987046,
		0.494063, 0.861553, 0.116740,
		-0.855706, 0.505622, -0.110057,
		42.638962, 33.357616, 34.356380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208233, 33.513878, 34.982166>,  <43.237953, 33.003681, 34.433418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208233, 33.513878, 34.982166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822521, 33.481411, 34.881313>,  <42.591095, 33.461933, 34.820801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.822521, 33.481411, 34.881313>,  <43.208233, 33.513878, 34.982166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822521, 33.481411, 34.881313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244158, -0.096709, 0.964901,
		-0.102698, 0.991998, 0.073438,
		-0.964282, -0.081163, -0.252136,
		42.533237, 33.457062, 34.805672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759926, 33.907341, 35.321159>,  <43.208233, 33.513878, 34.982166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759926, 33.907341, 35.321159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529259, 33.593925, 35.228622>,  <42.390858, 33.405876, 35.173100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529259, 33.593925, 35.228622>,  <42.759926, 33.907341, 35.321159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529259, 33.593925, 35.228622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103222, -0.211026, 0.972015,
		-0.810432, 0.584409, 0.040813,
		-0.576667, -0.783539, -0.231346,
		42.356258, 33.358864, 35.159218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996040, 34.520699, 35.331009>,  <42.759926, 33.907341, 35.321159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996040, 34.520699, 35.331009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097786, 34.756702, 35.637524>,  <43.158833, 34.898304, 35.821430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097786, 34.756702, 35.637524>,  <42.996040, 34.520699, 35.331009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097786, 34.756702, 35.637524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227718, 0.806605, -0.545466,
		-0.939917, -0.035750, 0.339525,
		0.254362, 0.590009, 0.766283,
		43.174095, 34.933704, 35.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372585, 34.910221, 35.564014>,  <42.996040, 34.520699, 35.331009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372585, 34.910221, 35.564014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693382, 35.121613, 35.675385>,  <42.885860, 35.248447, 35.742207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693382, 35.121613, 35.675385>,  <42.372585, 34.910221, 35.564014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693382, 35.121613, 35.675385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172988, 0.651618, -0.738559,
		-0.571738, 0.544155, 0.614013,
		0.801992, 0.528479, 0.278422,
		42.933979, 35.280155, 35.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165741, 35.582954, 35.581093>,  <42.372585, 34.910221, 35.564014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165741, 35.582954, 35.581093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561241, 35.610058, 35.527748>,  <42.798542, 35.626320, 35.495739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561241, 35.610058, 35.527748>,  <42.165741, 35.582954, 35.581093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561241, 35.610058, 35.527748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145899, 0.633580, -0.759796,
		0.033017, 0.770704, 0.636337,
		0.988748, 0.067754, -0.133364,
		42.857864, 35.630383, 35.487740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301590, 36.342529, 35.367710>,  <42.165741, 35.582954, 35.581093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301590, 36.342529, 35.367710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602749, 36.104118, 35.256077>,  <42.783447, 35.961071, 35.189095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602749, 36.104118, 35.256077>,  <42.301590, 36.342529, 35.367710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602749, 36.104118, 35.256077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090187, 0.513493, -0.853341,
		0.651924, 0.617312, 0.440364,
		0.752902, -0.596028, -0.279085,
		42.828621, 35.925308, 35.172352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685192, 36.838879, 35.181171>,  <42.301590, 36.342529, 35.367710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685192, 36.838879, 35.181171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830502, 36.502560, 35.020622>,  <42.917686, 36.300770, 34.924294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830502, 36.502560, 35.020622>,  <42.685192, 36.838879, 35.181171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830502, 36.502560, 35.020622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026469, 0.439942, -0.897636,
		0.931307, 0.315462, 0.182073,
		0.363271, -0.840794, -0.401371,
		42.939484, 36.250320, 34.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321453, 37.017719, 34.856007>,  <42.685192, 36.838879, 35.181171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321453, 37.017719, 34.856007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165257, 36.697758, 34.673725>,  <43.071537, 36.505779, 34.564354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165257, 36.697758, 34.673725>,  <43.321453, 37.017719, 34.856007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165257, 36.697758, 34.673725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044402, 0.478066, -0.877201,
		0.919533, -0.362777, -0.151166,
		-0.390496, -0.799903, -0.455705,
		43.048107, 36.457787, 34.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579700, 37.081371, 34.188770>,  <43.321453, 37.017719, 34.856007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579700, 37.081371, 34.188770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294788, 36.803402, 34.149277>,  <43.123840, 36.636620, 34.125580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294788, 36.803402, 34.149277>,  <43.579700, 37.081371, 34.188770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294788, 36.803402, 34.149277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116976, 0.256221, -0.959514,
		0.692083, -0.671890, -0.263789,
		-0.712276, -0.694921, -0.098731,
		43.081104, 36.594925, 34.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691769, 36.902985, 33.529404>,  <43.579700, 37.081371, 34.188770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691769, 36.902985, 33.529404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342167, 36.722656, 33.601921>,  <43.132404, 36.614460, 33.645432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342167, 36.722656, 33.601921>,  <43.691769, 36.902985, 33.529404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342167, 36.722656, 33.601921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179060, -0.048018, -0.982666,
		0.451714, -0.891321, -0.038757,
		-0.874009, -0.450824, 0.181290,
		43.079964, 36.587410, 33.656307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649635, 36.312565, 33.043869>,  <43.691769, 36.902985, 33.529404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649635, 36.312565, 33.043869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280308, 36.403339, 33.167797>,  <43.058712, 36.457806, 33.242153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280308, 36.403339, 33.167797>,  <43.649635, 36.312565, 33.043869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280308, 36.403339, 33.167797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336570, -0.089636, -0.937382,
		-0.184958, -0.969775, 0.159143,
		-0.923315, 0.226939, 0.309819,
		43.003311, 36.471420, 33.260742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188179, 35.780727, 32.777885>,  <43.649635, 36.312565, 33.043869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188179, 35.780727, 32.777885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969002, 36.106628, 32.853718>,  <42.837498, 36.302170, 32.899220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.969002, 36.106628, 32.853718>,  <43.188179, 35.780727, 32.777885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969002, 36.106628, 32.853718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169382, 0.113879, -0.978949,
		-0.819189, -0.568518, 0.075605,
		-0.547941, 0.814751, 0.189585,
		42.804619, 36.351055, 32.910595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430073, 35.688454, 32.501038>,  <43.188179, 35.780727, 32.777885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430073, 35.688454, 32.501038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511223, 36.079922, 32.513931>,  <42.559914, 36.314804, 32.521667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511223, 36.079922, 32.513931>,  <42.430073, 35.688454, 32.501038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511223, 36.079922, 32.513931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493237, 0.130574, -0.860039,
		-0.845906, 0.158586, 0.509209,
		0.202879, 0.978673, 0.032233,
		42.572086, 36.373524, 32.523602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859383, 35.851528, 32.069592>,  <42.430073, 35.688454, 32.501038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859383, 35.851528, 32.069592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071545, 36.188576, 32.106812>,  <42.198841, 36.390804, 32.129143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071545, 36.188576, 32.106812>,  <41.859383, 35.851528, 32.069592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071545, 36.188576, 32.106812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253650, 0.262470, -0.931006,
		-0.808907, 0.470210, 0.352946,
		0.530406, 0.842622, 0.093045,
		42.230667, 36.441364, 32.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398567, 36.477364, 31.983513>,  <41.859383, 35.851528, 32.069592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398567, 36.477364, 31.983513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774014, 36.579094, 31.890291>,  <41.999283, 36.640133, 31.834358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774014, 36.579094, 31.890291>,  <41.398567, 36.477364, 31.983513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774014, 36.579094, 31.890291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298729, 0.261439, -0.917829,
		-0.172496, 0.931112, 0.321365,
		0.938619, 0.254323, -0.233053,
		42.055599, 36.655392, 31.820375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292397, 37.122177, 31.709206>,  <41.398567, 36.477364, 31.983513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292397, 37.122177, 31.709206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651264, 37.002838, 31.578924>,  <41.866585, 36.931232, 31.500755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651264, 37.002838, 31.578924>,  <41.292397, 37.122177, 31.709206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651264, 37.002838, 31.578924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203632, 0.374970, -0.904396,
		0.391955, 0.877715, 0.275657,
		0.897165, -0.298350, -0.325702,
		41.920414, 36.913334, 31.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196671, 37.810200, 32.064121>,  <41.292397, 37.122177, 31.709206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196671, 37.810200, 32.064121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869343, 38.031658, 32.125877>,  <40.672947, 38.164532, 32.162930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869343, 38.031658, 32.125877>,  <41.196671, 37.810200, 32.064121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869343, 38.031658, 32.125877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062478, -0.181340, 0.981434,
		0.571362, 0.812770, 0.113802,
		-0.818317, 0.553644, 0.154391,
		40.623848, 38.197750, 32.172195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358971, 38.315483, 32.607681>,  <41.196671, 37.810200, 32.064121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358971, 38.315483, 32.607681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967766, 38.238247, 32.576145>,  <40.733044, 38.191906, 32.557224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967766, 38.238247, 32.576145>,  <41.358971, 38.315483, 32.607681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967766, 38.238247, 32.576145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054486, -0.128356, 0.990230,
		-0.201325, 0.972749, 0.115013,
		-0.978008, -0.193091, -0.078842,
		40.674362, 38.180321, 32.552494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060051, 38.649895, 33.220165>,  <41.358971, 38.315483, 32.607681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060051, 38.649895, 33.220165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802402, 38.378357, 33.079159>,  <40.647812, 38.215435, 32.994553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802402, 38.378357, 33.079159>,  <41.060051, 38.649895, 33.220165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802402, 38.378357, 33.079159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182636, -0.311039, 0.932684,
		-0.742798, 0.665147, 0.076366,
		-0.644124, -0.678848, -0.352518,
		40.609165, 38.174702, 32.973404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319489, 38.723644, 33.646660>,  <41.060051, 38.649895, 33.220165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319489, 38.723644, 33.646660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345425, 38.356499, 33.490036>,  <40.360985, 38.136211, 33.396061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345425, 38.356499, 33.490036>,  <40.319489, 38.723644, 33.646660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345425, 38.356499, 33.490036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321196, -0.390701, 0.862662,
		-0.944790, 0.069834, -0.320147,
		0.064839, -0.917865, -0.391561,
		40.364876, 38.081139, 33.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570099, 38.380959, 33.685738>,  <40.319489, 38.723644, 33.646660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570099, 38.380959, 33.685738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820114, 38.069874, 33.658958>,  <39.970123, 37.883221, 33.642891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820114, 38.069874, 33.658958>,  <39.570099, 38.380959, 33.685738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820114, 38.069874, 33.658958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392424, -0.387211, 0.834309,
		-0.674780, -0.495203, -0.547217,
		0.625041, -0.777716, -0.066953,
		40.007626, 37.836559, 33.638874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159870, 37.824364, 33.784073>,  <39.570099, 38.380959, 33.685738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159870, 37.824364, 33.784073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506939, 37.647640, 33.875240>,  <39.715179, 37.541607, 33.929939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506939, 37.647640, 33.875240>,  <39.159870, 37.824364, 33.784073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506939, 37.647640, 33.875240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388558, -0.316721, 0.865281,
		-0.310060, -0.839363, -0.446468,
		0.867689, -0.441767, 0.227939,
		39.767242, 37.515099, 33.943615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937328, 37.186684, 34.010399>,  <39.159870, 37.824364, 33.784073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937328, 37.186684, 34.010399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312756, 37.230434, 34.141319>,  <39.538013, 37.256683, 34.219872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312756, 37.230434, 34.141319>,  <38.937328, 37.186684, 34.010399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312756, 37.230434, 34.141319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289105, -0.268669, 0.918823,
		0.188435, -0.957002, -0.220542,
		0.938569, 0.109379, 0.327301,
		39.594326, 37.263248, 34.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203156, 36.473141, 34.261314>,  <38.937328, 37.186684, 34.010399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203156, 36.473141, 34.261314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414841, 36.766571, 34.431866>,  <39.541851, 36.942631, 34.534199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414841, 36.766571, 34.431866>,  <39.203156, 36.473141, 34.261314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414841, 36.766571, 34.431866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015710, -0.493959, 0.869343,
		0.848346, -0.466763, -0.249883,
		0.529209, 0.733578, 0.426381,
		39.573605, 36.986645, 34.559780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478748, 36.106110, 34.731804>,  <39.203156, 36.473141, 34.261314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478748, 36.106110, 34.731804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528614, 36.482563, 34.857487>,  <39.558533, 36.708435, 34.932896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528614, 36.482563, 34.857487>,  <39.478748, 36.106110, 34.731804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528614, 36.482563, 34.857487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086862, -0.305114, 0.948346,
		0.988390, -0.145518, 0.043712,
		0.124664, 0.941132, 0.314212,
		39.566013, 36.764904, 34.951752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892796, 36.131775, 35.415691>,  <39.478748, 36.106110, 34.731804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892796, 36.131775, 35.415691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.740173, 36.500893, 35.437103>,  <39.648602, 36.722363, 35.449951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.740173, 36.500893, 35.437103>,  <39.892796, 36.131775, 35.415691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740173, 36.500893, 35.437103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160126, -0.123027, 0.979400,
		0.910370, 0.365124, 0.194705,
		-0.381556, 0.922794, 0.053534,
		39.625706, 36.777729, 35.453163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293961, 36.468941, 35.938156>,  <39.892796, 36.131775, 35.415691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293961, 36.468941, 35.938156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932022, 36.635303, 35.901768>,  <39.714859, 36.735119, 35.879932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932022, 36.635303, 35.901768>,  <40.293961, 36.468941, 35.938156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932022, 36.635303, 35.901768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156337, -0.125842, 0.979654,
		0.395994, 0.900659, 0.178889,
		-0.904847, 0.415904, -0.090974,
		39.660568, 36.760075, 35.874477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284130, 36.939739, 36.478531>,  <40.293961, 36.468941, 35.938156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284130, 36.939739, 36.478531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902523, 36.877850, 36.375835>,  <39.673561, 36.840714, 36.314220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.902523, 36.877850, 36.375835>,  <40.284130, 36.939739, 36.478531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902523, 36.877850, 36.375835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236203, -0.139292, 0.961668,
		-0.184558, 0.978088, 0.096339,
		-0.954016, -0.154728, -0.256735,
		39.616318, 36.831432, 36.298817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.994652, 39.771935, 29.280798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616791, 39.732502, 29.155636>,  <41.390072, 39.708843, 29.080538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616791, 39.732502, 29.155636>,  <41.994652, 39.771935, 29.280798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616791, 39.732502, 29.155636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285750, -0.221317, 0.932398,
		-0.161168, 0.970206, 0.180899,
		-0.944654, -0.098581, -0.312906,
		41.333393, 39.702927, 29.061764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641491, 40.300545, 29.679052>,  <41.994652, 39.771935, 29.280798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641491, 40.300545, 29.679052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384560, 40.017456, 29.561377>,  <41.230400, 39.847603, 29.490770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384560, 40.017456, 29.561377>,  <41.641491, 40.300545, 29.679052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384560, 40.017456, 29.561377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400167, -0.017689, 0.916271,
		-0.653665, 0.706274, -0.271843,
		-0.642330, -0.707717, -0.294191,
		41.191860, 39.805141, 29.473120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004574, 40.540215, 29.987501>,  <41.641491, 40.300545, 29.679052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004574, 40.540215, 29.987501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964180, 40.151798, 29.900894>,  <40.939945, 39.918747, 29.848930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964180, 40.151798, 29.900894>,  <41.004574, 40.540215, 29.987501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964180, 40.151798, 29.900894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494336, -0.139890, 0.857941,
		-0.863386, 0.193668, -0.465895,
		-0.100982, -0.971042, -0.216516,
		40.933884, 39.860485, 29.835939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322044, 40.316677, 30.060293>,  <41.004574, 40.540215, 29.987501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322044, 40.316677, 30.060293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541214, 39.985008, 30.104548>,  <40.672718, 39.786007, 30.131100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541214, 39.985008, 30.104548>,  <40.322044, 40.316677, 30.060293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541214, 39.985008, 30.104548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587121, -0.286980, 0.756923,
		-0.595872, -0.479697, -0.644071,
		0.547929, -0.829177, 0.110637,
		40.705593, 39.736256, 30.137739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921120, 39.783363, 30.429075>,  <40.322044, 40.316677, 30.060293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921120, 39.783363, 30.429075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273396, 39.593903, 30.431889>,  <40.484760, 39.480228, 30.433577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273396, 39.593903, 30.431889>,  <39.921120, 39.783363, 30.429075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273396, 39.593903, 30.431889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301344, -0.548728, 0.779801,
		-0.365491, -0.688880, -0.625988,
		0.880686, -0.473648, 0.007034,
		40.537601, 39.451809, 30.433998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784534, 39.113438, 30.508020>,  <39.921120, 39.783363, 30.429075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784534, 39.113438, 30.508020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160049, 39.138908, 30.643438>,  <40.385361, 39.154190, 30.724689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160049, 39.138908, 30.643438>,  <39.784534, 39.113438, 30.508020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160049, 39.138908, 30.643438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238113, -0.590239, 0.771310,
		0.248941, -0.804713, -0.538949,
		0.938792, 0.063680, 0.338547,
		40.441689, 39.158012, 30.745003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920017, 38.433872, 30.700699>,  <39.784534, 39.113438, 30.508020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920017, 38.433872, 30.700699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216743, 38.632954, 30.880474>,  <40.394779, 38.752403, 30.988338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216743, 38.632954, 30.880474>,  <39.920017, 38.433872, 30.700699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216743, 38.632954, 30.880474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011174, -0.679282, 0.733792,
		0.670510, -0.539318, -0.509464,
		0.741817, 0.497708, 0.449439,
		40.439289, 38.782265, 31.015306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354782, 37.922031, 30.902029>,  <39.920017, 38.433872, 30.700699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354782, 37.922031, 30.902029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421955, 38.235718, 31.140963>,  <40.462257, 38.423927, 31.284323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421955, 38.235718, 31.140963>,  <40.354782, 37.922031, 30.902029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421955, 38.235718, 31.140963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094945, -0.590256, 0.801613,
		0.981215, -0.191332, -0.024667,
		0.167934, 0.784213, 0.597334,
		40.472336, 38.470982, 31.320164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860931, 37.722408, 31.384659>,  <40.354782, 37.922031, 30.902029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860931, 37.722408, 31.384659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675396, 38.032082, 31.556931>,  <40.564075, 38.217888, 31.660294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675396, 38.032082, 31.556931>,  <40.860931, 37.722408, 31.384659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675396, 38.032082, 31.556931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052159, -0.509161, 0.859089,
		0.884381, 0.376018, 0.276551,
		-0.463842, 0.774187, 0.430680,
		40.536243, 38.264339, 31.686134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592182, 37.749241, 31.422682>,  <40.860931, 37.722408, 31.384659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592182, 37.749241, 31.422682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796032, 37.441322, 31.268959>,  <41.918343, 37.256573, 31.176725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796032, 37.441322, 31.268959>,  <41.592182, 37.749241, 31.422682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796032, 37.441322, 31.268959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156905, 0.356022, -0.921211,
		0.845967, 0.529774, 0.060654,
		0.509628, -0.769797, -0.384307,
		41.948921, 37.210384, 31.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847816, 38.066399, 30.799492>,  <41.592182, 37.749241, 31.422682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847816, 38.066399, 30.799492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925541, 37.676571, 30.754829>,  <41.972176, 37.442677, 30.728031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925541, 37.676571, 30.754829>,  <41.847816, 38.066399, 30.799492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925541, 37.676571, 30.754829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125855, 0.137655, -0.982452,
		0.972834, 0.176844, 0.149401,
		0.194307, -0.974565, -0.111658,
		41.983833, 37.384201, 30.721333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553547, 37.981079, 30.495831>,  <41.847816, 38.066399, 30.799492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553547, 37.981079, 30.495831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326298, 37.662788, 30.411873>,  <42.189949, 37.471813, 30.361498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326298, 37.662788, 30.411873>,  <42.553547, 37.981079, 30.495831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326298, 37.662788, 30.411873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239950, 0.083798, -0.967162,
		0.787183, -0.599835, 0.143325,
		-0.568126, -0.795724, -0.209895,
		42.155861, 37.424072, 30.348904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992035, 37.701878, 30.019527>,  <42.553547, 37.981079, 30.495831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992035, 37.701878, 30.019527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648090, 37.510773, 29.947550>,  <42.441723, 37.396111, 29.904364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648090, 37.510773, 29.947550>,  <42.992035, 37.701878, 30.019527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648090, 37.510773, 29.947550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069258, 0.240049, -0.968287,
		0.505808, -0.845056, -0.173320,
		-0.859862, -0.477763, -0.179945,
		42.390133, 37.367443, 29.893566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166695, 37.079109, 29.504772>,  <42.992035, 37.701878, 30.019527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166695, 37.079109, 29.504772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778278, 37.172050, 29.482553>,  <42.545227, 37.227818, 29.469223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778278, 37.172050, 29.482553>,  <43.166695, 37.079109, 29.504772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778278, 37.172050, 29.482553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057117, 0.000029, -0.998367,
		-0.231975, -0.972631, -0.013299,
		-0.971043, 0.232356, -0.055547,
		42.486965, 37.241756, 29.465889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895802, 36.651146, 29.049833>,  <43.166695, 37.079109, 29.504772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895802, 36.651146, 29.049833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633862, 36.953442, 29.047831>,  <42.476696, 37.134819, 29.046629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633862, 36.953442, 29.047831>,  <42.895802, 36.651146, 29.049833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633862, 36.953442, 29.047831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214596, 0.179591, -0.960050,
		-0.724649, -0.629765, -0.279785,
		-0.654853, 0.755740, -0.005005,
		42.437405, 37.180164, 29.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320702, 36.534786, 28.466808>,  <42.895802, 36.651146, 29.049833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320702, 36.534786, 28.466808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331367, 36.923256, 28.561565>,  <42.337769, 37.156338, 28.618420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331367, 36.923256, 28.561565>,  <42.320702, 36.534786, 28.466808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331367, 36.923256, 28.561565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024388, 0.236274, -0.971380,
		-0.999347, 0.031678, -0.017384,
		0.026664, 0.971170, 0.236893,
		42.339367, 37.214607, 28.632633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006977, 36.865585, 27.918274>,  <42.320702, 36.534786, 28.466808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006977, 36.865585, 27.918274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166252, 37.189213, 28.091181>,  <42.261818, 37.383389, 28.194925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166252, 37.189213, 28.091181>,  <42.006977, 36.865585, 27.918274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166252, 37.189213, 28.091181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065154, 0.445100, -0.893108,
		-0.914989, 0.383784, 0.124517,
		0.398183, 0.809071, 0.432266,
		42.285706, 37.431934, 28.220861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637535, 37.434727, 27.793941>,  <42.006977, 36.865585, 27.918274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637535, 37.434727, 27.793941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001995, 37.573627, 27.882689>,  <42.220669, 37.656967, 27.935938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001995, 37.573627, 27.882689>,  <41.637535, 37.434727, 27.793941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001995, 37.573627, 27.882689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040934, 0.459476, -0.887246,
		-0.410044, 0.817494, 0.404435,
		0.911147, 0.347255, 0.221868,
		42.275341, 37.677803, 27.949249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623718, 38.117271, 27.530737>,  <41.637535, 37.434727, 27.793941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623718, 38.117271, 27.530737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011372, 38.047600, 27.600533>,  <42.243961, 38.005798, 27.642410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011372, 38.047600, 27.600533>,  <41.623718, 38.117271, 27.530737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011372, 38.047600, 27.600533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243313, 0.561482, -0.790909,
		0.039788, 0.808950, 0.586530,
		0.969131, -0.174179, 0.174488,
		42.302113, 37.995346, 27.652880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060471, 38.820911, 27.439232>,  <41.623718, 38.117271, 27.530737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060471, 38.820911, 27.439232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309582, 38.515728, 27.369904>,  <42.459049, 38.332619, 27.328306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309582, 38.515728, 27.369904>,  <42.060471, 38.820911, 27.439232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309582, 38.515728, 27.369904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395004, 0.497826, -0.772102,
		0.675366, 0.412386, 0.611407,
		0.622778, -0.762959, -0.173321,
		42.496414, 38.286839, 27.317907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630554, 39.158054, 27.245319>,  <42.060471, 38.820911, 27.439232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630554, 39.158054, 27.245319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679890, 38.779221, 27.126789>,  <42.709492, 38.551918, 27.055670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679890, 38.779221, 27.126789>,  <42.630554, 39.158054, 27.245319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679890, 38.779221, 27.126789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397571, 0.320755, -0.859682,
		0.909244, -0.011777, 0.416097,
		0.123341, -0.947089, -0.296327,
		42.716892, 38.495094, 27.037891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322666, 39.200603, 26.924129>,  <42.630554, 39.158054, 27.245319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322666, 39.200603, 26.924129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116997, 38.874916, 26.816292>,  <42.993595, 38.679504, 26.751589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116997, 38.874916, 26.816292>,  <43.322666, 39.200603, 26.924129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116997, 38.874916, 26.816292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287356, 0.132628, -0.948597,
		0.808117, -0.565212, 0.165776,
		-0.514172, -0.814215, -0.269596,
		42.962746, 38.630653, 26.735413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682411, 38.920231, 26.439190>,  <43.322666, 39.200603, 26.924129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682411, 38.920231, 26.439190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352413, 38.715603, 26.343122>,  <43.154415, 38.592827, 26.285482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352413, 38.715603, 26.343122>,  <43.682411, 38.920231, 26.439190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352413, 38.715603, 26.343122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295383, -0.028024, -0.954968,
		0.481804, -0.858784, 0.174229,
		-0.824993, -0.511571, -0.240168,
		43.104916, 38.562130, 26.271072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.466999, 37.186935, 26.041943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846901, 37.309540, 26.067305>,  <37.074841, 37.383102, 26.082521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846901, 37.309540, 26.067305>,  <36.466999, 37.186935, 26.041943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846901, 37.309540, 26.067305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148525, -0.619646, 0.770700,
		0.275517, -0.722557, -0.634036,
		0.949753, 0.306511, 0.063405,
		37.131828, 37.401493, 26.086327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786129, 36.621246, 26.154488>,  <36.466999, 37.186935, 26.041943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786129, 36.621246, 26.154488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034916, 36.908478, 26.279404>,  <37.184189, 37.080818, 26.354353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034916, 36.908478, 26.279404>,  <36.786129, 36.621246, 26.154488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034916, 36.908478, 26.279404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055230, -0.438049, 0.897253,
		0.781095, -0.540812, -0.312110,
		0.621965, 0.718077, 0.312289,
		37.221504, 37.123901, 26.373091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358421, 36.369743, 26.453590>,  <36.786129, 36.621246, 26.154488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358421, 36.369743, 26.453590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383583, 36.742626, 26.596157>,  <37.398678, 36.966354, 26.681698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383583, 36.742626, 26.596157>,  <37.358421, 36.369743, 26.453590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383583, 36.742626, 26.596157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285791, -0.358994, 0.888508,
		0.956226, 0.045974, -0.288997,
		0.062900, 0.932207, 0.356419,
		37.402454, 37.022289, 26.703083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940849, 36.347950, 26.959265>,  <37.358421, 36.369743, 26.453590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940849, 36.347950, 26.959265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711060, 36.662579, 27.049856>,  <37.573185, 36.851357, 27.104212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711060, 36.662579, 27.049856>,  <37.940849, 36.347950, 26.959265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711060, 36.662579, 27.049856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196321, -0.136208, 0.971033,
		0.794632, 0.602294, -0.076172,
		-0.574472, 0.786568, 0.226478,
		37.538719, 36.898548, 27.117800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190903, 36.481182, 27.582653>,  <37.940849, 36.347950, 26.959265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190903, 36.481182, 27.582653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879986, 36.732574, 27.594126>,  <37.693436, 36.883411, 27.601009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879986, 36.732574, 27.594126>,  <38.190903, 36.481182, 27.582653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879986, 36.732574, 27.594126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064990, -0.125559, 0.989955,
		0.625769, 0.767624, 0.138442,
		-0.777296, 0.628481, 0.028683,
		37.646797, 36.921120, 27.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372314, 36.896553, 28.234613>,  <38.190903, 36.481182, 27.582653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372314, 36.896553, 28.234613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983524, 36.885544, 28.141233>,  <37.750248, 36.878937, 28.085205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983524, 36.885544, 28.141233>,  <38.372314, 36.896553, 28.234613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983524, 36.885544, 28.141233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183619, -0.531165, 0.827133,
		-0.146768, 0.846821, 0.511227,
		-0.971979, -0.027526, -0.233451,
		37.691929, 36.877285, 28.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990124, 36.976460, 28.862823>,  <38.372314, 36.896553, 28.234613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990124, 36.976460, 28.862823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726608, 36.814594, 28.609133>,  <37.568501, 36.717476, 28.456919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726608, 36.814594, 28.609133>,  <37.990124, 36.976460, 28.862823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726608, 36.814594, 28.609133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350054, -0.581326, 0.734522,
		-0.665928, 0.705909, 0.241316,
		-0.658789, -0.404665, -0.634227,
		37.528973, 36.693195, 28.418865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403515, 36.958263, 29.303160>,  <37.990124, 36.976460, 28.862823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403515, 36.958263, 29.303160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368057, 36.713406, 28.988855>,  <37.346783, 36.566490, 28.800272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368057, 36.713406, 28.988855>,  <37.403515, 36.958263, 29.303160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368057, 36.713406, 28.988855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351022, -0.719061, 0.599779,
		-0.932162, 0.328985, -0.151137,
		-0.088642, -0.612143, -0.785763,
		37.341465, 36.529762, 28.753126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814533, 36.677513, 29.421543>,  <37.403515, 36.958263, 29.303160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814533, 36.677513, 29.421543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964912, 36.434605, 29.141575>,  <37.055141, 36.288860, 28.973595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964912, 36.434605, 29.141575>,  <36.814533, 36.677513, 29.421543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964912, 36.434605, 29.141575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480149, -0.773685, 0.413363,
		-0.792538, 0.180660, -0.582448,
		0.375953, -0.607267, -0.699919,
		37.077698, 36.252426, 28.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269737, 36.202114, 29.012165>,  <36.814533, 36.677513, 29.421543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269737, 36.202114, 29.012165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629547, 36.027637, 29.021875>,  <36.845432, 35.922951, 29.027700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629547, 36.027637, 29.021875>,  <36.269737, 36.202114, 29.012165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629547, 36.027637, 29.021875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332828, -0.648255, 0.684830,
		-0.282982, -0.624101, -0.728299,
		0.899526, -0.436192, 0.024274,
		36.899406, 35.896778, 29.029158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117794, 35.518490, 29.091768>,  <36.269737, 36.202114, 29.012165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117794, 35.518490, 29.091768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505142, 35.524895, 29.191376>,  <36.737549, 35.528740, 29.251141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505142, 35.524895, 29.191376>,  <36.117794, 35.518490, 29.091768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505142, 35.524895, 29.191376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192361, -0.587747, 0.785844,
		0.158946, -0.808886, -0.566074,
		0.968367, 0.016016, 0.249018,
		36.795650, 35.529701, 29.266081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395741, 34.792145, 29.263100>,  <36.117794, 35.518490, 29.091768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395741, 34.792145, 29.263100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661129, 35.031784, 29.442379>,  <36.820362, 35.175568, 29.549948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661129, 35.031784, 29.442379>,  <36.395741, 34.792145, 29.263100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661129, 35.031784, 29.442379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026126, -0.617222, 0.786355,
		0.747744, -0.510016, -0.425162,
		0.663473, 0.599100, 0.448199,
		36.860172, 35.211514, 29.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880516, 34.418137, 29.544317>,  <36.395741, 34.792145, 29.263100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880516, 34.418137, 29.544317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902962, 34.743080, 29.776497>,  <36.916431, 34.938046, 29.915804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902962, 34.743080, 29.776497>,  <36.880516, 34.418137, 29.544317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902962, 34.743080, 29.776497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033529, -0.579502, 0.814281,
		0.997861, -0.065158, -0.005283,
		0.056119, 0.812362, 0.580448,
		36.919796, 34.986790, 29.950630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399933, 34.254025, 29.994963>,  <36.880516, 34.418137, 29.544317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399933, 34.254025, 29.994963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190819, 34.545479, 30.171949>,  <37.065350, 34.720352, 30.278141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190819, 34.545479, 30.171949>,  <37.399933, 34.254025, 29.994963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190819, 34.545479, 30.171949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032621, -0.535767, 0.843735,
		0.851838, 0.426661, 0.303862,
		-0.522788, 0.728639, 0.442469,
		37.033981, 34.764069, 30.304689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103210, 34.425644, 30.163670>,  <37.399933, 34.254025, 29.994963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103210, 34.425644, 30.163670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343384, 34.127029, 30.049017>,  <38.487488, 33.947861, 29.980225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343384, 34.127029, 30.049017>,  <38.103210, 34.425644, 30.163670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343384, 34.127029, 30.049017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034664, 0.382399, -0.923347,
		0.798922, 0.544473, 0.255484,
		0.600434, -0.746538, -0.286634,
		38.523514, 33.903069, 29.963026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653103, 34.745152, 29.753780>,  <38.103210, 34.425644, 30.163670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653103, 34.745152, 29.753780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679203, 34.362270, 29.640989>,  <38.694862, 34.132542, 29.573315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679203, 34.362270, 29.640989>,  <38.653103, 34.745152, 29.753780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679203, 34.362270, 29.640989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246434, 0.289281, -0.924980,
		0.966961, -0.009137, 0.254761,
		0.065246, -0.957201, -0.281975,
		38.698776, 34.075111, 29.556396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336086, 34.677582, 29.391626>,  <38.653103, 34.745152, 29.753780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336086, 34.677582, 29.391626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127197, 34.366173, 29.252375>,  <39.001865, 34.179329, 29.168823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127197, 34.366173, 29.252375>,  <39.336086, 34.677582, 29.391626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127197, 34.366173, 29.252375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372582, 0.158915, -0.914292,
		0.767115, -0.607170, 0.207072,
		-0.522224, -0.778518, -0.348127,
		38.970531, 34.132618, 29.147936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744900, 34.429947, 28.905565>,  <39.336086, 34.677582, 29.391626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744900, 34.429947, 28.905565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401703, 34.242077, 28.822371>,  <39.195786, 34.129356, 28.772453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401703, 34.242077, 28.822371>,  <39.744900, 34.429947, 28.905565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401703, 34.242077, 28.822371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108556, 0.229968, -0.967125,
		0.502066, -0.852361, -0.146324,
		-0.857989, -0.469676, -0.207988,
		39.144306, 34.101173, 28.759974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919113, 33.970856, 28.460896>,  <39.744900, 34.429947, 28.905565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919113, 33.970856, 28.460896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529423, 34.010799, 28.379988>,  <39.295609, 34.034763, 28.331444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529423, 34.010799, 28.379988>,  <39.919113, 33.970856, 28.460896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529423, 34.010799, 28.379988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200246, -0.029986, -0.979287,
		-0.103852, -0.994550, 0.009217,
		-0.974226, 0.099855, -0.202269,
		39.237156, 34.040756, 28.319307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710526, 33.479382, 27.808401>,  <39.919113, 33.970856, 28.460896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710526, 33.479382, 27.808401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422421, 33.753483, 27.851562>,  <39.249557, 33.917946, 27.877459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422421, 33.753483, 27.851562>,  <39.710526, 33.479382, 27.808401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422421, 33.753483, 27.851562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008046, 0.163789, -0.986463,
		-0.693652, -0.709647, -0.123485,
		-0.720266, 0.685255, 0.107902,
		39.206341, 33.959061, 27.883934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249462, 33.410206, 27.245010>,  <39.710526, 33.479382, 27.808401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249462, 33.410206, 27.245010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125847, 33.774220, 27.355526>,  <39.051678, 33.992626, 27.421835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125847, 33.774220, 27.355526>,  <39.249462, 33.410206, 27.245010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125847, 33.774220, 27.355526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190784, 0.225285, -0.955431,
		-0.931717, -0.347976, 0.103998,
		-0.309038, 0.910033, 0.276290,
		39.033134, 34.047230, 27.438414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619076, 33.495659, 26.856567>,  <39.249462, 33.410206, 27.245010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619076, 33.495659, 26.856567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734840, 33.866070, 26.953493>,  <38.804298, 34.088314, 27.011648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734840, 33.866070, 26.953493>,  <38.619076, 33.495659, 26.856567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734840, 33.866070, 26.953493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155526, 0.295277, -0.942668,
		-0.944485, 0.235135, 0.229478,
		0.289414, 0.926025, 0.242315,
		38.821663, 34.143879, 27.026188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179741, 33.999100, 26.516340>,  <38.619076, 33.495659, 26.856567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179741, 33.999100, 26.516340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522606, 34.180641, 26.613731>,  <38.728325, 34.289566, 26.672165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.522606, 34.180641, 26.613731>,  <38.179741, 33.999100, 26.516340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522606, 34.180641, 26.613731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007245, 0.483312, -0.875418,
		-0.514989, 0.748615, 0.417567,
		0.857166, 0.453856, 0.243477,
		38.779755, 34.316799, 26.686775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106083, 34.676697, 26.340309>,  <38.179741, 33.999100, 26.516340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106083, 34.676697, 26.340309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503628, 34.633591, 26.350367>,  <38.742153, 34.607727, 26.356401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503628, 34.633591, 26.350367>,  <38.106083, 34.676697, 26.340309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503628, 34.633591, 26.350367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081152, 0.555352, -0.827646,
		0.075226, 0.824604, 0.560687,
		0.993859, -0.107761, 0.025141,
		38.801785, 34.601261, 26.357908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469131, 35.375114, 26.319548>,  <38.106083, 34.676697, 26.340309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469131, 35.375114, 26.319548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748852, 35.122849, 26.184946>,  <38.916683, 34.971489, 26.104185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748852, 35.122849, 26.184946>,  <38.469131, 35.375114, 26.319548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748852, 35.122849, 26.184946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144238, 0.585559, -0.797694,
		0.700121, 0.509294, 0.500450,
		0.699304, -0.630666, -0.336502,
		38.958641, 34.933647, 26.083996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981750, 35.851429, 26.040369>,  <38.469131, 35.375114, 26.319548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981750, 35.851429, 26.040369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088326, 35.501251, 25.879068>,  <39.152271, 35.291145, 25.782288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088326, 35.501251, 25.879068>,  <38.981750, 35.851429, 26.040369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088326, 35.501251, 25.879068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169594, 0.454430, -0.874489,
		0.948813, 0.164611, 0.269549,
		0.266441, -0.875441, -0.403252,
		39.168259, 35.238621, 25.758093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433296, 36.065620, 25.620485>,  <38.981750, 35.851429, 26.040369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433296, 36.065620, 25.620485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349663, 35.703728, 25.472029>,  <39.299484, 35.486591, 25.382956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349663, 35.703728, 25.472029>,  <39.433296, 36.065620, 25.620485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349663, 35.703728, 25.472029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044282, 0.370382, -0.927823,
		0.976895, -0.210424, -0.037377,
		-0.209080, -0.904732, -0.371142,
		39.286938, 35.432308, 25.360685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924366, 35.865208, 25.043657>,  <39.433296, 36.065620, 25.620485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924366, 35.865208, 25.043657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589001, 35.656631, 24.980213>,  <39.387779, 35.531487, 24.942146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589001, 35.656631, 24.980213>,  <39.924366, 35.865208, 25.043657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589001, 35.656631, 24.980213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030955, 0.336097, -0.941318,
		0.544150, -0.784307, -0.297931,
		-0.838416, -0.521441, -0.158609,
		39.337475, 35.500198, 24.932631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390945, 35.296459, 24.856747>,  <39.924366, 35.865208, 25.043657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390945, 35.296459, 24.856747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.783405, 35.242523, 24.801380>,  <41.018883, 35.210163, 24.768160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.783405, 35.242523, 24.801380>,  <40.390945, 35.296459, 24.856747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783405, 35.242523, 24.801380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034876, -0.580983, 0.813168,
		-0.190062, -0.802669, -0.565330,
		0.981152, -0.134835, -0.138417,
		41.077751, 35.202072, 24.759855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446983, 34.544769, 24.928860>,  <40.390945, 35.296459, 24.856747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446983, 34.544769, 24.928860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795650, 34.734047, 24.979885>,  <41.004852, 34.847614, 25.010500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795650, 34.734047, 24.979885>,  <40.446983, 34.544769, 24.928860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795650, 34.734047, 24.979885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141423, -0.492076, 0.858988,
		0.469241, -0.730716, -0.495850,
		0.871673, 0.473197, 0.127562,
		41.057152, 34.876007, 25.018154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810673, 34.086601, 25.178942>,  <40.446983, 34.544769, 24.928860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810673, 34.086601, 25.178942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019402, 34.415043, 25.271452>,  <41.144638, 34.612110, 25.326958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.019402, 34.415043, 25.271452>,  <40.810673, 34.086601, 25.178942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019402, 34.415043, 25.271452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040312, -0.294547, 0.954787,
		0.852104, -0.488901, -0.186800,
		0.521818, 0.821108, 0.231276,
		41.175945, 34.661377, 25.340836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360325, 33.739388, 25.513012>,  <40.810673, 34.086601, 25.178942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360325, 33.739388, 25.513012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396420, 34.123859, 25.617308>,  <41.418076, 34.354542, 25.679886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396420, 34.123859, 25.617308>,  <41.360325, 33.739388, 25.513012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396420, 34.123859, 25.617308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262333, -0.275501, 0.924814,
		0.960749, -0.015051, -0.277010,
		0.090236, 0.961183, 0.260739,
		41.423489, 34.412216, 25.695530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914047, 33.783264, 25.897316>,  <41.360325, 33.739388, 25.513012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914047, 33.783264, 25.897316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748543, 34.125397, 26.022034>,  <41.649239, 34.330677, 26.096865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748543, 34.125397, 26.022034>,  <41.914047, 33.783264, 25.897316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748543, 34.125397, 26.022034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376703, -0.150935, 0.913955,
		0.828791, 0.495614, -0.259753,
		-0.413763, 0.855327, 0.311793,
		41.624413, 34.381996, 26.115572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419128, 34.102715, 26.349337>,  <41.914047, 33.783264, 25.897316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419128, 34.102715, 26.349337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066570, 34.268337, 26.440283>,  <41.855034, 34.367710, 26.494850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066570, 34.268337, 26.440283>,  <42.419128, 34.102715, 26.349337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066570, 34.268337, 26.440283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273241, 0.054267, 0.960414,
		0.385331, 0.908630, -0.160969,
		-0.881396, 0.414060, 0.227365,
		41.802151, 34.392555, 26.508492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656651, 34.528358, 26.884504>,  <42.419128, 34.102715, 26.349337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656651, 34.528358, 26.884504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.257423, 34.506203, 26.895708>,  <42.017887, 34.492908, 26.902431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.257423, 34.506203, 26.895708>,  <42.656651, 34.528358, 26.884504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257423, 34.506203, 26.895708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030995, -0.053778, 0.998072,
		-0.053778, 0.997016, 0.055391,
		-0.998072, -0.055391, 0.028010,
		41.958000, 34.489586, 26.904112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376919, 35.022667, 27.283701>,  <42.656651, 34.528358, 26.884504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376919, 35.022667, 27.283701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097820, 34.737183, 27.308273>,  <41.930363, 34.565891, 27.323017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.097820, 34.737183, 27.308273>,  <42.376919, 35.022667, 27.283701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097820, 34.737183, 27.308273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006816, 0.079141, 0.996840,
		-0.716316, 0.695957, -0.050355,
		-0.697743, -0.713709, 0.061433,
		41.888496, 34.523071, 27.326704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796165, 35.230598, 27.725264>,  <42.376919, 35.022667, 27.283701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796165, 35.230598, 27.725264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762405, 34.832130, 27.734444>,  <41.742149, 34.593052, 27.739952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762405, 34.832130, 27.734444>,  <41.796165, 35.230598, 27.725264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762405, 34.832130, 27.734444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039213, 0.026335, 0.998884,
		-0.995660, 0.083403, -0.041285,
		-0.084397, -0.996168, 0.022950,
		41.737087, 34.533279, 27.741329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373856, 35.093967, 28.345482>,  <41.796165, 35.230598, 27.725264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373856, 35.093967, 28.345482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546406, 34.746323, 28.248690>,  <41.649937, 34.537735, 28.190615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546406, 34.746323, 28.248690>,  <41.373856, 35.093967, 28.345482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546406, 34.746323, 28.248690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092420, -0.224237, 0.970142,
		-0.897426, -0.440859, -0.016407,
		0.431375, -0.869115, -0.241980,
		41.675819, 34.485588, 28.176096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064556, 34.632168, 28.623030>,  <41.373856, 35.093967, 28.345482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064556, 34.632168, 28.623030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.395664, 34.411297, 28.583250>,  <41.594330, 34.278774, 28.559383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.395664, 34.411297, 28.583250>,  <41.064556, 34.632168, 28.623030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395664, 34.411297, 28.583250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094062, -0.311318, 0.945639,
		-0.553122, -0.773420, -0.309640,
		0.827773, -0.552179, -0.099448,
		41.643997, 34.245644, 28.553415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944286, 34.072708, 29.016190>,  <41.064556, 34.632168, 28.623030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944286, 34.072708, 29.016190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341343, 34.047321, 28.974924>,  <41.579575, 34.032089, 28.950165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341343, 34.047321, 28.974924>,  <40.944286, 34.072708, 29.016190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341343, 34.047321, 28.974924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084464, -0.247753, 0.965134,
		-0.086809, -0.966742, -0.240568,
		0.992638, -0.063464, -0.103162,
		41.639133, 34.028282, 28.943975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146019, 33.447891, 29.353415>,  <40.944286, 34.072708, 29.016190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146019, 33.447891, 29.353415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455051, 33.700600, 29.378681>,  <41.640469, 33.852226, 29.393841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455051, 33.700600, 29.378681>,  <41.146019, 33.447891, 29.353415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455051, 33.700600, 29.378681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111003, -0.232352, 0.966277,
		0.625141, -0.739513, -0.249638,
		0.772578, 0.631770, 0.063164,
		41.686825, 33.890129, 29.397631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633247, 33.167816, 29.944433>,  <41.146019, 33.447891, 29.353415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633247, 33.167816, 29.944433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671959, 33.560505, 29.878872>,  <41.695187, 33.796116, 29.839535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671959, 33.560505, 29.878872>,  <41.633247, 33.167816, 29.944433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671959, 33.560505, 29.878872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014009, 0.166005, 0.986025,
		0.995208, -0.093127, 0.029818,
		0.096775, 0.981718, -0.163905,
		41.700993, 33.855019, 29.829700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.864487, 38.341579, 25.886124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.468082, 38.387569, 25.858774>,  <43.230240, 38.415165, 25.842365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.468082, 38.387569, 25.858774>,  <43.864487, 38.341579, 25.886124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468082, 38.387569, 25.858774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088448, 0.179736, -0.979730,
		-0.100358, -0.976972, -0.188291,
		-0.991012, 0.114978, -0.068373,
		43.170780, 38.422062, 25.838263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616158, 37.855217, 25.408876>,  <43.864487, 38.341579, 25.886124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616158, 37.855217, 25.408876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.349442, 38.153229, 25.401758>,  <43.189411, 38.332035, 25.397488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.349442, 38.153229, 25.401758>,  <43.616158, 37.855217, 25.408876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349442, 38.153229, 25.401758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043040, 0.014657, -0.998966,
		-0.744000, -0.666869, -0.041839,
		-0.666792, 0.745031, -0.017797,
		43.149403, 38.376740, 25.396420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175774, 37.679817, 24.740566>,  <43.616158, 37.855217, 25.408876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175774, 37.679817, 24.740566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131927, 38.056675, 24.867281>,  <43.105621, 38.282787, 24.943310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131927, 38.056675, 24.867281>,  <43.175774, 37.679817, 24.740566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131927, 38.056675, 24.867281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115294, 0.304507, -0.945507,
		-0.987265, -0.140162, 0.075246,
		-0.109611, 0.942141, 0.316789,
		43.099045, 38.339317, 24.962318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674362, 37.933556, 24.251751>,  <43.175774, 37.679817, 24.740566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674362, 37.933556, 24.251751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833607, 38.281780, 24.367430>,  <42.929153, 38.490715, 24.436838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833607, 38.281780, 24.367430>,  <42.674362, 37.933556, 24.251751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833607, 38.281780, 24.367430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054727, 0.337237, -0.939828,
		-0.915703, 0.358330, 0.181901,
		0.398112, 0.870558, 0.289198,
		42.953041, 38.542946, 24.454189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286575, 38.496361, 23.849453>,  <42.674362, 37.933556, 24.251751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286575, 38.496361, 23.849453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.614635, 38.670773, 23.997631>,  <42.811470, 38.775421, 24.086536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.614635, 38.670773, 23.997631>,  <42.286575, 38.496361, 23.849453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614635, 38.670773, 23.997631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097767, 0.531135, -0.841628,
		-0.563731, 0.726480, 0.392982,
		0.820152, 0.436031, 0.370443,
		42.860680, 38.801582, 24.108765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265259, 39.252460, 23.888588>,  <42.286575, 38.496361, 23.849453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265259, 39.252460, 23.888588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653011, 39.170860, 23.833904>,  <42.885662, 39.121902, 23.801094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653011, 39.170860, 23.833904>,  <42.265259, 39.252460, 23.888588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653011, 39.170860, 23.833904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040280, 0.681254, -0.730938,
		0.242245, 0.703049, 0.668610,
		0.969378, -0.203998, -0.136711,
		42.943825, 39.109661, 23.792891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506329, 39.822521, 23.596472>,  <42.265259, 39.252460, 23.888588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506329, 39.822521, 23.596472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845131, 39.617043, 23.541779>,  <43.048412, 39.493755, 23.508963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845131, 39.617043, 23.541779>,  <42.506329, 39.822521, 23.596472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845131, 39.617043, 23.541779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253736, 0.616717, -0.745170,
		0.467115, 0.596470, 0.652707,
		0.847007, -0.513696, -0.136732,
		43.099232, 39.462933, 23.500759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076817, 40.333164, 23.507751>,  <42.506329, 39.822521, 23.596472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076817, 40.333164, 23.507751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.134926, 39.984905, 23.319761>,  <43.169792, 39.775951, 23.206968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.134926, 39.984905, 23.319761>,  <43.076817, 40.333164, 23.507751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134926, 39.984905, 23.319761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018317, 0.477298, -0.878550,
		0.989222, 0.119021, 0.085286,
		0.145273, -0.870644, -0.469974,
		43.178509, 39.723713, 23.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508751, 40.532608, 22.976171>,  <43.076817, 40.333164, 23.507751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508751, 40.532608, 22.976171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384918, 40.170097, 22.861057>,  <43.310619, 39.952591, 22.791988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384918, 40.170097, 22.861057>,  <43.508751, 40.532608, 22.976171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384918, 40.170097, 22.861057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054427, 0.285271, -0.956900,
		0.949313, -0.311904, -0.038989,
		-0.309583, -0.906276, -0.287787,
		43.292042, 39.898216, 22.774721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932922, 40.440292, 22.461363>,  <43.508751, 40.532608, 22.976171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932922, 40.440292, 22.461363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.640522, 40.170746, 22.418377>,  <43.465084, 40.009018, 22.392586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.640522, 40.170746, 22.418377>,  <43.932922, 40.440292, 22.461363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640522, 40.170746, 22.418377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037097, 0.118006, -0.992320,
		0.681371, -0.729369, -0.061264,
		-0.730997, -0.673865, -0.107463,
		43.421223, 39.968586, 22.386139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199665, 39.986069, 21.985920>,  <43.932922, 40.440292, 22.461363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199665, 39.986069, 21.985920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803402, 39.932560, 21.975378>,  <43.565643, 39.900455, 21.969053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.803402, 39.932560, 21.975378>,  <44.199665, 39.986069, 21.985920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803402, 39.932560, 21.975378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003955, 0.165026, -0.986281,
		0.136279, -0.977176, -0.162957,
		-0.990663, -0.133764, -0.026354,
		43.506203, 39.892429, 21.967472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036697, 39.732880, 21.270758>,  <44.199665, 39.986069, 21.985920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036697, 39.732880, 21.270758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676193, 39.837307, 21.409077>,  <43.459892, 39.899963, 21.492069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676193, 39.837307, 21.409077>,  <44.036697, 39.732880, 21.270758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676193, 39.837307, 21.409077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258272, 0.317112, -0.912544,
		-0.347892, -0.911748, -0.218373,
		-0.901259, 0.261067, 0.345800,
		43.405815, 39.915627, 21.512817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455204, 39.314522, 20.987858>,  <44.036697, 39.732880, 21.270758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455204, 39.314522, 20.987858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.348953, 39.692467, 21.064459>,  <43.285202, 39.919235, 21.110420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.348953, 39.692467, 21.064459>,  <43.455204, 39.314522, 20.987858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348953, 39.692467, 21.064459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383065, 0.078846, -0.920350,
		-0.884706, -0.317824, 0.341002,
		-0.265623, 0.944866, 0.191503,
		43.269268, 39.975925, 21.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713219, 39.548744, 20.850101>,  <43.455204, 39.314522, 20.987858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713219, 39.548744, 20.850101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961620, 39.853928, 20.778269>,  <43.110661, 40.037037, 20.735168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961620, 39.853928, 20.778269>,  <42.713219, 39.548744, 20.850101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961620, 39.853928, 20.778269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533957, 0.244069, -0.809519,
		-0.573797, 0.598605, 0.558954,
		0.621005, 0.762957, -0.179583,
		43.147923, 40.082813, 20.724394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866100, 39.553020, 20.939716>,  <42.713219, 39.548744, 20.850101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866100, 39.553020, 20.939716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.578014, 39.325912, 20.780256>,  <41.405163, 39.189648, 20.684580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.578014, 39.325912, 20.780256>,  <41.866100, 39.553020, 20.939716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578014, 39.325912, 20.780256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141672, -0.682892, 0.716651,
		-0.679132, 0.459665, 0.572266,
		-0.720215, -0.567774, -0.398652,
		41.361950, 39.155579, 20.660662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443504, 39.329109, 21.451162>,  <41.866100, 39.553020, 20.939716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443504, 39.329109, 21.451162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.387997, 39.051685, 21.168398>,  <41.354694, 38.885231, 20.998739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.387997, 39.051685, 21.168398>,  <41.443504, 39.329109, 21.451162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387997, 39.051685, 21.168398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012247, -0.712560, 0.701504,
		-0.990250, 0.106002, 0.090385,
		-0.138766, -0.693558, -0.706910,
		41.346367, 38.843616, 20.956326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732067, 39.140583, 21.517744>,  <41.443504, 39.329109, 21.451162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732067, 39.140583, 21.517744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931995, 38.844818, 21.337324>,  <41.051952, 38.667358, 21.229073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931995, 38.844818, 21.337324>,  <40.732067, 39.140583, 21.517744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931995, 38.844818, 21.337324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111766, -0.571471, 0.812975,
		-0.858888, -0.355929, -0.368274,
		0.499820, -0.739415, -0.451049,
		41.081940, 38.622993, 21.202009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264591, 38.604729, 21.562897>,  <40.732067, 39.140583, 21.517744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264591, 38.604729, 21.562897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619576, 38.442829, 21.474714>,  <40.832565, 38.345692, 21.421804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.619576, 38.442829, 21.474714>,  <40.264591, 38.604729, 21.562897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619576, 38.442829, 21.474714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181116, -0.746106, 0.640720,
		-0.423811, -0.528684, -0.735443,
		0.887458, -0.404745, -0.220455,
		40.885811, 38.321407, 21.408577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247963, 37.838982, 21.478453>,  <40.264591, 38.604729, 21.562897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247963, 37.838982, 21.478453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.639275, 37.851936, 21.560350>,  <40.874062, 37.859707, 21.609489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.639275, 37.851936, 21.560350>,  <40.247963, 37.838982, 21.478453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639275, 37.851936, 21.560350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106727, -0.768053, 0.631431,
		0.177701, -0.639568, -0.747914,
		0.978280, 0.032383, 0.204743,
		40.932758, 37.861652, 21.621773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464153, 37.131977, 21.494606>,  <40.247963, 37.838982, 21.478453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464153, 37.131977, 21.494606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759029, 37.325638, 21.683138>,  <40.935955, 37.441833, 21.796257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759029, 37.325638, 21.683138>,  <40.464153, 37.131977, 21.494606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759029, 37.325638, 21.683138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035201, -0.724127, 0.688767,
		0.674770, -0.491160, -0.550861,
		0.737189, 0.484150, 0.471330,
		40.980186, 37.470882, 21.824537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047512, 36.510593, 21.574045>,  <40.464153, 37.131977, 21.494606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047512, 36.510593, 21.574045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.170883, 36.797203, 21.824314>,  <41.244907, 36.969170, 21.974476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.170883, 36.797203, 21.824314>,  <41.047512, 36.510593, 21.574045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170883, 36.797203, 21.824314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255827, -0.695985, 0.670938,
		0.916201, -0.046874, -0.397969,
		0.308430, 0.716525, 0.625670,
		41.263412, 37.012161, 22.012014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769257, 36.351078, 21.822870>,  <41.047512, 36.510593, 21.574045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769257, 36.351078, 21.822870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.559845, 36.588001, 22.067848>,  <41.434196, 36.730156, 22.214836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.559845, 36.588001, 22.067848>,  <41.769257, 36.351078, 21.822870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559845, 36.588001, 22.067848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137411, -0.650720, 0.746781,
		0.840851, 0.475122, 0.259284,
		-0.523533, 0.592303, 0.612446,
		41.402786, 36.765694, 22.251581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152542, 36.346272, 22.389452>,  <41.769257, 36.351078, 21.822870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152542, 36.346272, 22.389452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809364, 36.465801, 22.556612>,  <41.603458, 36.537518, 22.656908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809364, 36.465801, 22.556612>,  <42.152542, 36.346272, 22.389452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809364, 36.465801, 22.556612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216664, -0.527104, 0.821717,
		0.465827, 0.795528, 0.387479,
		-0.857940, 0.298825, 0.417902,
		41.551983, 36.555450, 22.681982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350281, 36.324265, 23.043154>,  <42.152542, 36.346272, 22.389452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350281, 36.324265, 23.043154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957260, 36.360718, 23.108007>,  <41.721447, 36.382591, 23.146919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957260, 36.360718, 23.108007>,  <42.350281, 36.324265, 23.043154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957260, 36.360718, 23.108007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102852, -0.460065, 0.881908,
		0.154965, 0.883196, 0.442664,
		-0.982551, 0.091136, 0.162133,
		41.662495, 36.388058, 23.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167156, 36.825661, 23.629185>,  <42.350281, 36.324265, 23.043154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167156, 36.825661, 23.629185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861603, 36.572662, 23.577915>,  <41.678272, 36.420864, 23.547153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861603, 36.572662, 23.577915>,  <42.167156, 36.825661, 23.629185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861603, 36.572662, 23.577915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094880, -0.306523, 0.947123,
		-0.638341, 0.711330, 0.294159,
		-0.763883, -0.632498, -0.128175,
		41.632439, 36.382912, 23.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798103, 36.648708, 24.303787>,  <42.167156, 36.825661, 23.629185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798103, 36.648708, 24.303787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613800, 36.361549, 24.095047>,  <41.503220, 36.189255, 23.969803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613800, 36.361549, 24.095047>,  <41.798103, 36.648708, 24.303787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613800, 36.361549, 24.095047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277040, -0.442268, 0.853023,
		-0.843182, 0.537607, 0.004890,
		-0.460754, -0.717899, -0.521850,
		41.475574, 36.146179, 23.938492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205982, 36.430569, 24.599709>,  <41.798103, 36.648708, 24.303787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205982, 36.430569, 24.599709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309170, 36.111645, 24.381441>,  <41.371082, 35.920292, 24.250481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.309170, 36.111645, 24.381441>,  <41.205982, 36.430569, 24.599709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309170, 36.111645, 24.381441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169355, -0.593357, 0.786922,
		-0.951194, -0.110592, -0.288097,
		0.257972, -0.797305, -0.545669,
		41.386562, 35.872452, 24.217741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657169, 35.947113, 24.741505>,  <41.205982, 36.430569, 24.599709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657169, 35.947113, 24.741505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951290, 35.726528, 24.583910>,  <41.127762, 35.594177, 24.489353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951290, 35.726528, 24.583910>,  <40.657169, 35.947113, 24.741505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951290, 35.726528, 24.583910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097651, -0.661459, 0.743597,
		-0.670683, -0.508284, -0.540214,
		0.735288, -0.551470, -0.393995,
		41.171879, 35.561089, 24.465714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001408, 35.749950, 24.284605>,  <40.657169, 35.947113, 24.741505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001408, 35.749950, 24.284605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621006, 35.656384, 24.365482>,  <39.392765, 35.600243, 24.414009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621006, 35.656384, 24.365482>,  <40.001408, 35.749950, 24.284605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621006, 35.656384, 24.365482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297208, 0.511297, -0.806377,
		0.085243, -0.826958, -0.555765,
		-0.951000, -0.233916, 0.202194,
		39.335705, 35.586208, 24.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678043, 35.374638, 23.665981>,  <40.001408, 35.749950, 24.284605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678043, 35.374638, 23.665981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411903, 35.565536, 23.895603>,  <39.252220, 35.680077, 24.033377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411903, 35.565536, 23.895603>,  <39.678043, 35.374638, 23.665981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411903, 35.565536, 23.895603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289560, 0.543779, -0.787692,
		-0.688084, -0.690317, -0.223613,
		-0.665353, 0.477250, 0.574054,
		39.212296, 35.708710, 24.067820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134327, 35.349514, 23.388885>,  <39.678043, 35.374638, 23.665981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134327, 35.349514, 23.388885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978718, 35.605549, 23.653898>,  <38.885353, 35.759171, 23.812906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978718, 35.605549, 23.653898>,  <39.134327, 35.349514, 23.388885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978718, 35.605549, 23.653898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266412, 0.610282, -0.746043,
		-0.881866, -0.466733, -0.066885,
		-0.389022, 0.640090, 0.662530,
		38.862011, 35.797577, 23.852657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491398, 35.541679, 23.224342>,  <39.134327, 35.349514, 23.388885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491398, 35.541679, 23.224342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609169, 35.845882, 23.455839>,  <38.679832, 36.028404, 23.594738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609169, 35.845882, 23.455839>,  <38.491398, 35.541679, 23.224342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609169, 35.845882, 23.455839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382216, 0.648749, -0.658054,
		-0.875913, -0.027456, 0.481687,
		0.294427, 0.760507, 0.578742,
		38.697498, 36.074036, 23.629461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918941, 35.971371, 23.147371>,  <38.491398, 35.541679, 23.224342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918941, 35.971371, 23.147371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228958, 36.187962, 23.277672>,  <38.414967, 36.317917, 23.355852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228958, 36.187962, 23.277672>,  <37.918941, 35.971371, 23.147371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228958, 36.187962, 23.277672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194439, 0.694844, -0.692376,
		-0.601252, 0.473281, 0.643817,
		0.775041, 0.541476, 0.325752,
		38.461472, 36.350403, 23.375397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647938, 36.583900, 23.217295>,  <37.918941, 35.971371, 23.147371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647938, 36.583900, 23.217295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044403, 36.626755, 23.185991>,  <38.282280, 36.652466, 23.167210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044403, 36.626755, 23.185991>,  <37.647938, 36.583900, 23.217295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044403, 36.626755, 23.185991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131854, 0.730103, -0.670496,
		-0.014696, 0.674887, 0.737775,
		0.991160, 0.107132, -0.078256,
		38.341751, 36.658894, 23.162514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825230, 37.323662, 23.087765>,  <37.647938, 36.583900, 23.217295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825230, 37.323662, 23.087765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152531, 37.130363, 22.963223>,  <38.348911, 37.014385, 22.888496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152531, 37.130363, 22.963223>,  <37.825230, 37.323662, 23.087765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152531, 37.130363, 22.963223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031978, 0.579040, -0.814672,
		0.573974, 0.656648, 0.489252,
		0.818249, -0.483246, -0.311356,
		38.398006, 36.985390, 22.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036823, 37.906975, 23.572809>,  <37.825230, 37.323662, 23.087765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036823, 37.906975, 23.572809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847195, 38.254330, 23.630999>,  <37.733418, 38.462742, 23.665913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847195, 38.254330, 23.630999>,  <38.036823, 37.906975, 23.572809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847195, 38.254330, 23.630999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159787, -0.247325, 0.955666,
		0.865865, 0.429811, 0.256007,
		-0.474073, 0.868385, 0.145472,
		37.704971, 38.514847, 23.674641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474548, 38.233097, 24.036488>,  <38.036823, 37.906975, 23.572809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474548, 38.233097, 24.036488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.106068, 38.388721, 24.038498>,  <37.884979, 38.482098, 24.039705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.106068, 38.388721, 24.038498>,  <38.474548, 38.233097, 24.036488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106068, 38.388721, 24.038498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100635, -0.250719, 0.962815,
		0.375853, 0.886438, 0.270115,
		-0.921199, 0.389060, 0.005027,
		37.829708, 38.505440, 24.040007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483101, 38.718307, 24.548584>,  <38.474548, 38.233097, 24.036488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483101, 38.718307, 24.548584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102482, 38.603268, 24.505064>,  <37.874111, 38.534245, 24.478952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102482, 38.603268, 24.505064>,  <38.483101, 38.718307, 24.548584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102482, 38.603268, 24.505064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015984, -0.307078, 0.951550,
		-0.307078, 0.907186, 0.287603,
		-0.951550, -0.287603, -0.108798,
		37.817017, 38.516987, 24.472425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091461, 38.928074, 25.120451>,  <38.483101, 38.718307, 24.548584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091461, 38.928074, 25.120451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844849, 38.650288, 24.972073>,  <37.696880, 38.483616, 24.883045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844849, 38.650288, 24.972073>,  <38.091461, 38.928074, 25.120451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844849, 38.650288, 24.972073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149575, -0.359254, 0.921175,
		-0.772989, 0.623421, 0.117618,
		-0.616534, -0.694466, -0.370948,
		37.659889, 38.441948, 24.860788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675106, 38.775715, 25.788006>,  <38.091461, 38.928074, 25.120451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675106, 38.775715, 25.788006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538044, 38.508518, 25.523771>,  <37.455807, 38.348198, 25.365231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.538044, 38.508518, 25.523771>,  <37.675106, 38.775715, 25.788006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538044, 38.508518, 25.523771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191540, -0.638708, 0.745228,
		-0.919729, 0.381882, 0.090906,
		-0.342652, -0.667996, -0.660584,
		37.435249, 38.308121, 25.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927620, 38.553055, 25.997150>,  <37.675106, 38.775715, 25.788006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927620, 38.553055, 25.997150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121918, 38.267040, 25.796041>,  <37.238495, 38.095432, 25.675375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121918, 38.267040, 25.796041>,  <36.927620, 38.553055, 25.997150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121918, 38.267040, 25.796041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263079, -0.668108, 0.696004,
		-0.833574, -0.205808, -0.512638,
		0.485740, -0.715035, -0.502774,
		37.267639, 38.052528, 25.645210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416302, 37.941765, 25.955585>,  <36.927620, 38.553055, 25.997150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416302, 37.941765, 25.955585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794697, 37.818672, 25.914793>,  <37.021736, 37.744816, 25.890318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794697, 37.818672, 25.914793>,  <36.416302, 37.941765, 25.955585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794697, 37.818672, 25.914793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151486, -0.697703, 0.700187,
		-0.286624, -0.646922, -0.706639,
		0.945991, -0.307736, -0.101979,
		37.078495, 37.726353, 25.884199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.791039, 42.498028, 22.824247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944389, 42.169971, 22.654360>,  <41.036400, 41.973137, 22.552427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944389, 42.169971, 22.654360>,  <40.791039, 42.498028, 22.824247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944389, 42.169971, 22.654360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017300, -0.466151, 0.884536,
		-0.923429, -0.331766, -0.192901,
		0.383380, -0.820143, -0.424717,
		41.059402, 41.923927, 22.526945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408184, 41.933720, 22.805605>,  <40.791039, 42.498028, 22.824247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408184, 41.933720, 22.805605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773304, 41.770386, 22.808403>,  <40.992378, 41.672386, 22.810081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773304, 41.770386, 22.808403>,  <40.408184, 41.933720, 22.805605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773304, 41.770386, 22.808403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166821, -0.357170, 0.919022,
		-0.372790, -0.840046, -0.394146,
		0.912797, -0.408354, 0.006988,
		41.047146, 41.647884, 22.810501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265469, 41.301292, 23.149405>,  <40.408184, 41.933720, 22.805605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265469, 41.301292, 23.149405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.663651, 41.338840, 23.155857>,  <40.902561, 41.361370, 23.159729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.663651, 41.338840, 23.155857>,  <40.265469, 41.301292, 23.149405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663651, 41.338840, 23.155857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023194, -0.403180, 0.914827,
		0.092379, -0.910294, -0.403524,
		0.995454, 0.093870, 0.016132,
		40.962288, 41.367001, 23.160696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599716, 40.609032, 23.335756>,  <40.265469, 41.301292, 23.149405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599716, 40.609032, 23.335756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848137, 40.900036, 23.452393>,  <40.997189, 41.074638, 23.522373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.848137, 40.900036, 23.452393>,  <40.599716, 40.609032, 23.335756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848137, 40.900036, 23.452393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004202, -0.375121, 0.926966,
		0.783755, -0.574473, -0.236028,
		0.621056, 0.727507, 0.291590,
		41.034454, 41.118286, 23.539869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168392, 40.273148, 23.620975>,  <40.599716, 40.609032, 23.335756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168392, 40.273148, 23.620975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177231, 40.639446, 23.781437>,  <41.182533, 40.859226, 23.877714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177231, 40.639446, 23.781437>,  <41.168392, 40.273148, 23.620975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177231, 40.639446, 23.781437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164262, -0.399125, 0.902063,
		0.986169, 0.045966, -0.159240,
		0.022093, 0.915744, 0.401155,
		41.183857, 40.914169, 23.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572536, 40.155636, 24.229715>,  <41.168392, 40.273148, 23.620975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572536, 40.155636, 24.229715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476929, 40.541843, 24.270973>,  <41.419563, 40.773567, 24.295727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476929, 40.541843, 24.270973>,  <41.572536, 40.155636, 24.229715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476929, 40.541843, 24.270973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012973, -0.109387, 0.993915,
		0.970929, 0.236225, 0.038671,
		-0.239017, 0.965522, 0.103143,
		41.405224, 40.831501, 24.301916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998405, 40.355175, 24.701792>,  <41.572536, 40.155636, 24.229715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998405, 40.355175, 24.701792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706280, 40.627705, 24.721556>,  <41.531006, 40.791222, 24.733414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706280, 40.627705, 24.721556>,  <41.998405, 40.355175, 24.701792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706280, 40.627705, 24.721556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050142, -0.125604, 0.990813,
		0.681268, 0.721127, 0.125893,
		-0.730315, 0.681322, 0.049412,
		41.487186, 40.832100, 24.736380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238075, 40.937500, 25.207165>,  <41.998405, 40.355175, 24.701792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238075, 40.937500, 25.207165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.839806, 40.915916, 25.176891>,  <41.600845, 40.902966, 25.158728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.839806, 40.915916, 25.176891>,  <42.238075, 40.937500, 25.207165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839806, 40.915916, 25.176891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059972, -0.249125, 0.966613,
		-0.071011, 0.966967, 0.244810,
		-0.995671, -0.053959, -0.075682,
		41.541103, 40.899731, 25.154186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986031, 41.305336, 25.810955>,  <42.238075, 40.937500, 25.207165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986031, 41.305336, 25.810955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707371, 41.042782, 25.695137>,  <41.540176, 40.885250, 25.625647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707371, 41.042782, 25.695137>,  <41.986031, 41.305336, 25.810955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707371, 41.042782, 25.695137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072446, -0.337167, 0.938653,
		-0.713745, 0.674888, 0.187334,
		-0.696649, -0.656388, -0.289544,
		41.498375, 40.845867, 25.608274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411819, 41.496552, 26.200125>,  <41.986031, 41.305336, 25.810955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411819, 41.496552, 26.200125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332844, 41.125294, 26.073910>,  <41.285458, 40.902538, 25.998180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332844, 41.125294, 26.073910>,  <41.411819, 41.496552, 26.200125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332844, 41.125294, 26.073910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439025, -0.204074, 0.874992,
		-0.876512, 0.311290, -0.367186,
		-0.197444, -0.928144, -0.315537,
		41.273609, 40.846851, 25.979248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757099, 41.326622, 26.543217>,  <41.411819, 41.496552, 26.200125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757099, 41.326622, 26.543217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.914566, 40.984188, 26.409266>,  <41.009048, 40.778728, 26.328896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.914566, 40.984188, 26.409266>,  <40.757099, 41.326622, 26.543217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914566, 40.984188, 26.409266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358324, -0.478388, 0.801717,
		-0.846538, -0.195618, -0.495082,
		0.393671, -0.856084, -0.334879,
		41.032669, 40.727364, 26.308802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221203, 40.841228, 26.638498>,  <40.757099, 41.326622, 26.543217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221203, 40.841228, 26.638498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.573441, 40.651691, 26.636389>,  <40.784782, 40.537968, 26.635124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.573441, 40.651691, 26.636389>,  <40.221203, 40.841228, 26.638498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573441, 40.651691, 26.636389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137011, -0.265244, 0.954397,
		-0.453633, -0.839714, -0.298494,
		0.880594, -0.473843, -0.005273,
		40.837620, 40.509541, 26.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541595, 40.465408, 26.539478>,  <40.221203, 40.841228, 26.638498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541595, 40.465408, 26.539478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147263, 40.407047, 26.572567>,  <38.910664, 40.372028, 26.592421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147263, 40.407047, 26.572567>,  <39.541595, 40.465408, 26.539478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147263, 40.407047, 26.572567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132052, 0.371114, -0.919150,
		0.103410, -0.917053, -0.385124,
		-0.985835, -0.145905, 0.082722,
		38.851513, 40.363274, 26.597383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431408, 40.031509, 25.950197>,  <39.541595, 40.465408, 26.539478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431408, 40.031509, 25.950197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120457, 40.248047, 26.078339>,  <38.933884, 40.377968, 26.155224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120457, 40.248047, 26.078339>,  <39.431408, 40.031509, 25.950197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120457, 40.248047, 26.078339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107999, 0.386858, -0.915793,
		-0.619689, -0.746519, -0.242272,
		-0.777381, 0.541341, 0.320355,
		38.887241, 40.410450, 26.174444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918167, 39.922596, 25.468828>,  <39.431408, 40.031509, 25.950197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918167, 39.922596, 25.468828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831985, 40.272125, 25.643188>,  <38.780277, 40.481842, 25.747805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831985, 40.272125, 25.643188>,  <38.918167, 39.922596, 25.468828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831985, 40.272125, 25.643188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184613, 0.401887, -0.896886,
		-0.958904, -0.273711, 0.074731,
		-0.215454, 0.873824, 0.435902,
		38.767349, 40.534271, 25.773958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377495, 40.157017, 25.135002>,  <38.918167, 39.922596, 25.468828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377495, 40.157017, 25.135002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521435, 40.489708, 25.304111>,  <38.607800, 40.689323, 25.405577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521435, 40.489708, 25.304111>,  <38.377495, 40.157017, 25.135002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521435, 40.489708, 25.304111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078894, 0.478629, -0.874466,
		-0.929670, 0.281318, 0.237851,
		0.359845, 0.831730, 0.422773,
		38.629387, 40.739227, 25.430943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910126, 40.679150, 24.875969>,  <38.377495, 40.157017, 25.135002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910126, 40.679150, 24.875969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243671, 40.868931, 24.988794>,  <38.443798, 40.982800, 25.056490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243671, 40.868931, 24.988794>,  <37.910126, 40.679150, 24.875969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243671, 40.868931, 24.988794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010615, 0.524705, -0.851218,
		-0.551866, 0.706807, 0.442570,
		0.833865, 0.474456, 0.282065,
		38.493832, 41.011269, 25.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796272, 41.379604, 24.801088>,  <37.910126, 40.679150, 24.875969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796272, 41.379604, 24.801088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.195354, 41.359829, 24.782585>,  <38.434803, 41.347961, 24.771484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.195354, 41.359829, 24.782585>,  <37.796272, 41.379604, 24.801088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195354, 41.359829, 24.782585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013586, 0.523103, -0.852161,
		0.066330, 0.850834, 0.521231,
		0.997705, -0.049442, -0.046257,
		38.494667, 41.344997, 24.768707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018978, 42.094372, 24.690508>,  <37.796272, 41.379604, 24.801088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018978, 42.094372, 24.690508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347843, 41.885189, 24.600554>,  <38.545162, 41.759682, 24.546581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347843, 41.885189, 24.600554>,  <38.018978, 42.094372, 24.690508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347843, 41.885189, 24.600554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169355, 0.601861, -0.780437,
		0.543480, 0.603559, 0.583391,
		0.822161, -0.522952, -0.224884,
		38.594490, 41.728302, 24.533089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690018, 42.561161, 24.685297>,  <38.018978, 42.094372, 24.690508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690018, 42.561161, 24.685297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753551, 42.246365, 24.446831>,  <38.791672, 42.057487, 24.303751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.753551, 42.246365, 24.446831>,  <38.690018, 42.561161, 24.685297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753551, 42.246365, 24.446831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058644, 0.610286, -0.790007,
		0.985563, 0.090517, 0.143085,
		0.158831, -0.786993, -0.596167,
		38.801201, 42.010265, 24.267981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083008, 42.827602, 24.187763>,  <38.690018, 42.561161, 24.685297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083008, 42.827602, 24.187763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998959, 42.477776, 24.012955>,  <38.948528, 42.267879, 23.908070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998959, 42.477776, 24.012955>,  <39.083008, 42.827602, 24.187763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998959, 42.477776, 24.012955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247188, 0.384955, -0.889217,
		0.945911, -0.294870, 0.135294,
		-0.210121, -0.874564, -0.437022,
		38.935921, 42.215408, 23.881847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615959, 42.652332, 23.782593>,  <39.083008, 42.827602, 24.187763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615959, 42.652332, 23.782593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321056, 42.449909, 23.603550>,  <39.144115, 42.328453, 23.496124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321056, 42.449909, 23.603550>,  <39.615959, 42.652332, 23.782593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321056, 42.449909, 23.603550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273907, 0.381744, -0.882749,
		0.617598, -0.773416, -0.142829,
		-0.737257, -0.506062, -0.447609,
		39.099880, 42.298092, 23.469267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832798, 42.452671, 23.054625>,  <39.615959, 42.652332, 23.782593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832798, 42.452671, 23.054625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433552, 42.428104, 23.054344>,  <39.194004, 42.413364, 23.054176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433552, 42.428104, 23.054344>,  <39.832798, 42.452671, 23.054625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433552, 42.428104, 23.054344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009324, 0.162798, -0.986615,
		0.060705, -0.984746, -0.163064,
		-0.998112, -0.061413, -0.000701,
		39.134117, 42.409679, 23.054134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678787, 42.022640, 22.536318>,  <39.832798, 42.452671, 23.054625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678787, 42.022640, 22.536318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339706, 42.225075, 22.599920>,  <39.136257, 42.346535, 22.638081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339706, 42.225075, 22.599920>,  <39.678787, 42.022640, 22.536318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339706, 42.225075, 22.599920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132202, 0.088736, -0.987243,
		-0.513738, -0.857907, -0.008316,
		-0.847700, 0.506085, 0.159005,
		39.085396, 42.376900, 22.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140385, 41.858711, 21.945555>,  <39.678787, 42.022640, 22.536318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140385, 41.858711, 21.945555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978878, 42.195446, 22.088821>,  <38.881973, 42.397488, 22.174782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978878, 42.195446, 22.088821>,  <39.140385, 41.858711, 21.945555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978878, 42.195446, 22.088821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234654, 0.283105, -0.929940,
		-0.884257, -0.459523, 0.083232,
		-0.403766, 0.841837, 0.358167,
		38.857750, 42.447998, 22.196272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988701, 41.046658, 21.775578>,  <39.140385, 41.858711, 21.945555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988701, 41.046658, 21.775578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.660454, 40.978134, 21.557495>,  <38.463505, 40.937019, 21.426645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.660454, 40.978134, 21.557495>,  <38.988701, 41.046658, 21.775578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660454, 40.978134, 21.557495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426270, -0.451947, 0.783605,
		-0.380641, 0.875441, 0.297851,
		-0.820613, -0.171307, -0.545204,
		38.414268, 40.926743, 21.393934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414677, 41.075195, 22.252209>,  <38.988701, 41.046658, 21.775578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414677, 41.075195, 22.252209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285183, 40.850803, 21.947447>,  <38.207485, 40.716167, 21.764589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285183, 40.850803, 21.947447>,  <38.414677, 41.075195, 22.252209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285183, 40.850803, 21.947447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342189, -0.681342, 0.647055,
		-0.882102, 0.470189, 0.028613,
		-0.323734, -0.560977, -0.761906,
		38.188065, 40.682510, 21.718876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745056, 40.958035, 22.396032>,  <38.414677, 41.075195, 22.252209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745056, 40.958035, 22.396032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821529, 40.657154, 22.143795>,  <37.867413, 40.476627, 21.992453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821529, 40.657154, 22.143795>,  <37.745056, 40.958035, 22.396032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821529, 40.657154, 22.143795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237941, -0.658798, 0.713700,
		-0.952277, 0.013596, -0.304931,
		0.191185, -0.752197, -0.630594,
		37.878883, 40.431496, 21.954617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134174, 40.481667, 22.520409>,  <37.745056, 40.958035, 22.396032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134174, 40.481667, 22.520409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.440834, 40.291584, 22.347702>,  <37.624832, 40.177532, 22.244078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.440834, 40.291584, 22.347702>,  <37.134174, 40.481667, 22.520409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440834, 40.291584, 22.347702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235388, -0.833668, 0.499591,
		-0.597357, -0.281381, -0.750992,
		0.766653, -0.475209, -0.431764,
		37.670830, 40.149021, 22.218172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843632, 39.902538, 22.315351>,  <37.134174, 40.481667, 22.520409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843632, 39.902538, 22.315351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215210, 39.760193, 22.274515>,  <37.438156, 39.674786, 22.250013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215210, 39.760193, 22.274515>,  <36.843632, 39.902538, 22.315351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215210, 39.760193, 22.274515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174613, -0.664302, 0.726783,
		-0.326456, -0.657315, -0.679238,
		0.928944, -0.355866, -0.102090,
		37.493893, 39.653435, 22.243889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811234, 39.166580, 22.263552>,  <36.843632, 39.902538, 22.315351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811234, 39.166580, 22.263552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175472, 39.262707, 22.398046>,  <37.394016, 39.320381, 22.478745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175472, 39.262707, 22.398046>,  <36.811234, 39.166580, 22.263552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175472, 39.262707, 22.398046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097363, -0.665934, 0.739630,
		0.401657, -0.706244, -0.583002,
		0.910600, 0.240314, 0.336239,
		37.448654, 39.334801, 22.498919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071198, 38.482468, 22.559999>,  <36.811234, 39.166580, 22.263552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071198, 38.482468, 22.559999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282436, 38.778454, 22.726645>,  <37.409180, 38.956043, 22.826632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282436, 38.778454, 22.726645>,  <37.071198, 38.482468, 22.559999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282436, 38.778454, 22.726645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000246, -0.490473, 0.871456,
		0.849183, -0.460317, -0.258836,
		0.528098, 0.739962, 0.416615,
		37.440865, 39.000443, 22.851629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757435, 38.152596, 22.858480>,  <37.071198, 38.482468, 22.559999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757435, 38.152596, 22.858480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714699, 38.490322, 23.068518>,  <37.689056, 38.692959, 23.194540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714699, 38.490322, 23.068518>,  <37.757435, 38.152596, 22.858480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714699, 38.490322, 23.068518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206716, -0.535437, 0.818887,
		0.972550, -0.021052, 0.231741,
		-0.106844, 0.844313, 0.525091,
		37.682644, 38.743614, 23.226046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273796, 37.893208, 22.569399>,  <37.757435, 38.152596, 22.858480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273796, 37.893208, 22.569399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428951, 37.529205, 22.510843>,  <38.522045, 37.310802, 22.475710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428951, 37.529205, 22.510843>,  <38.273796, 37.893208, 22.569399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428951, 37.529205, 22.510843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264229, 0.261943, -0.928207,
		0.883019, 0.321364, 0.342056,
		0.387892, -0.910006, -0.146387,
		38.545319, 37.256203, 22.466927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976608, 37.969830, 22.300236>,  <38.273796, 37.893208, 22.569399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976608, 37.969830, 22.300236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.846092, 37.603710, 22.205778>,  <38.767784, 37.384037, 22.149103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.846092, 37.603710, 22.205778>,  <38.976608, 37.969830, 22.300236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846092, 37.603710, 22.205778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506569, 0.041604, -0.861195,
		0.798075, -0.400621, 0.450087,
		-0.326288, -0.915299, -0.236145,
		38.748207, 37.329121, 22.134935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435734, 37.729134, 21.867596>,  <38.976608, 37.969830, 22.300236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435734, 37.729134, 21.867596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151550, 37.463367, 21.774822>,  <38.981041, 37.303905, 21.719158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151550, 37.463367, 21.774822>,  <39.435734, 37.729134, 21.867596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151550, 37.463367, 21.774822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456493, -0.184282, -0.870433,
		0.535591, -0.724285, 0.434228,
		-0.710462, -0.664418, -0.231931,
		38.938412, 37.264042, 21.705242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767422, 37.275185, 21.434284>,  <39.435734, 37.729134, 21.867596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767422, 37.275185, 21.434284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377884, 37.238201, 21.351271>,  <39.144161, 37.216011, 21.301462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377884, 37.238201, 21.351271>,  <39.767422, 37.275185, 21.434284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377884, 37.238201, 21.351271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217679, -0.118094, -0.968850,
		0.065068, -0.988689, 0.135131,
		-0.973849, -0.092457, -0.207533,
		39.085728, 37.210464, 21.289011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710892, 36.749035, 20.867369>,  <39.767422, 37.275185, 21.434284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710892, 36.749035, 20.867369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.372272, 36.961956, 20.867823>,  <39.169102, 37.089710, 20.868095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.372272, 36.961956, 20.867823>,  <39.710892, 36.749035, 20.867369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372272, 36.961956, 20.867823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121826, 0.195826, -0.973042,
		-0.518177, -0.823593, -0.230625,
		-0.846552, 0.532304, 0.001137,
		39.118305, 37.121647, 20.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597874, 36.479233, 20.254089>,  <39.710892, 36.749035, 20.867369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597874, 36.479233, 20.254089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389114, 36.817402, 20.299494>,  <39.263859, 37.020302, 20.326736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389114, 36.817402, 20.299494>,  <39.597874, 36.479233, 20.254089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389114, 36.817402, 20.299494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002868, 0.131332, -0.991334,
		-0.853003, -0.517700, -0.066117,
		-0.521897, 0.845422, 0.113511,
		39.232544, 37.071030, 20.333548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983200, 36.425095, 19.934467>,  <39.597874, 36.479233, 20.254089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983200, 36.425095, 19.934467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052628, 36.818123, 19.961098>,  <39.094284, 37.053940, 19.977076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052628, 36.818123, 19.961098>,  <38.983200, 36.425095, 19.934467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052628, 36.818123, 19.961098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247219, 0.108911, -0.962820,
		-0.953287, 0.150661, 0.261813,
		0.173573, 0.982568, 0.066578,
		39.104698, 37.112892, 19.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559372, 36.741673, 19.535141>,  <38.983200, 36.425095, 19.934467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559372, 36.741673, 19.535141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.816830, 37.045525, 19.572430>,  <38.971302, 37.227837, 19.594803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.816830, 37.045525, 19.572430>,  <38.559372, 36.741673, 19.535141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816830, 37.045525, 19.572430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282731, 0.349198, -0.893378,
		-0.711188, 0.548658, 0.439529,
		0.643642, 0.759628, 0.093223,
		39.009922, 37.273415, 19.600397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123844, 37.347866, 19.372854>,  <38.559372, 36.741673, 19.535141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123844, 37.347866, 19.372854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501972, 37.472996, 19.335938>,  <38.728848, 37.548073, 19.313787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501972, 37.472996, 19.335938>,  <38.123844, 37.347866, 19.372854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501972, 37.472996, 19.335938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247361, 0.503216, -0.828001,
		-0.212573, 0.805553, 0.553079,
		0.945317, 0.312821, -0.092292,
		38.785568, 37.566841, 19.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.948551, 33.824360, 34.524960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323643, 33.963226, 34.529697>,  <39.548698, 34.046547, 34.532539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323643, 33.963226, 34.529697>,  <38.948551, 33.824360, 34.524960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323643, 33.963226, 34.529697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030832, -0.049211, -0.998312,
		-0.345993, 0.936513, -0.056850,
		0.937731, 0.347162, 0.011847,
		39.604961, 34.067375, 34.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991833, 34.364841, 34.093990>,  <38.948551, 33.824360, 34.524960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991833, 34.364841, 34.093990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358650, 34.205685, 34.104706>,  <39.578739, 34.110191, 34.111134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358650, 34.205685, 34.104706>,  <38.991833, 34.364841, 34.093990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358650, 34.205685, 34.104706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024272, -0.011359, -0.999641,
		0.398056, 0.917361, -0.000759,
		0.917040, -0.397895, 0.026788,
		39.633762, 34.086315, 34.112743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511158, 34.850380, 33.821194>,  <38.991833, 34.364841, 34.093990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511158, 34.850380, 33.821194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638767, 34.474209, 33.774170>,  <39.715332, 34.248505, 33.745956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638767, 34.474209, 33.774170>,  <39.511158, 34.850380, 33.821194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638767, 34.474209, 33.774170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020321, 0.117221, -0.992898,
		0.947528, 0.319150, 0.018287,
		0.319027, -0.940427, -0.117556,
		39.734474, 34.192081, 33.738903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754360, 34.901531, 33.227711>,  <39.511158, 34.850380, 33.821194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754360, 34.901531, 33.227711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732761, 34.502201, 33.236095>,  <39.719803, 34.262604, 33.241127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732761, 34.502201, 33.236095>,  <39.754360, 34.901531, 33.227711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732761, 34.502201, 33.236095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100842, -0.015429, -0.994783,
		0.993436, -0.055824, -0.099840,
		-0.053993, -0.998321, 0.020957,
		39.716564, 34.202705, 33.242382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045185, 34.656799, 32.645824>,  <39.754360, 34.901531, 33.227711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045185, 34.656799, 32.645824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868748, 34.312317, 32.746830>,  <39.762886, 34.105629, 32.807434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868748, 34.312317, 32.746830>,  <40.045185, 34.656799, 32.645824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868748, 34.312317, 32.746830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183755, -0.188735, -0.964683,
		0.878448, -0.471915, -0.075001,
		-0.441093, -0.861206, 0.252511,
		39.736420, 34.053955, 32.822582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377518, 34.224850, 32.342152>,  <40.045185, 34.656799, 32.645824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377518, 34.224850, 32.342152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018589, 34.061653, 32.409512>,  <39.803230, 33.963734, 32.449928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018589, 34.061653, 32.409512>,  <40.377518, 34.224850, 32.342152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018589, 34.061653, 32.409512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111618, -0.159372, -0.980888,
		0.427031, -0.898968, 0.097469,
		-0.897321, -0.407991, 0.168398,
		39.749393, 33.939255, 32.460030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414150, 33.575211, 31.984169>,  <40.377518, 34.224850, 32.342152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414150, 33.575211, 31.984169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028164, 33.660042, 32.045971>,  <39.796574, 33.710941, 32.083054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028164, 33.660042, 32.045971>,  <40.414150, 33.575211, 31.984169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028164, 33.660042, 32.045971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206142, -0.248437, -0.946459,
		-0.162336, -0.945147, 0.283450,
		-0.964963, 0.212075, 0.154504,
		39.738674, 33.723663, 32.092323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087315, 33.065571, 31.605871>,  <40.414150, 33.575211, 31.984169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087315, 33.065571, 31.605871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805378, 33.339882, 31.678442>,  <39.636215, 33.504467, 31.721985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805378, 33.339882, 31.678442>,  <40.087315, 33.065571, 31.605871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805378, 33.339882, 31.678442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320327, -0.079501, -0.943965,
		-0.632926, -0.723456, 0.275709,
		-0.704837, 0.685777, 0.181425,
		39.593925, 33.545616, 31.732870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402473, 32.735374, 31.363489>,  <40.087315, 33.065571, 31.605871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402473, 32.735374, 31.363489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350048, 33.131401, 31.383816>,  <39.318592, 33.369019, 31.396011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350048, 33.131401, 31.383816>,  <39.402473, 32.735374, 31.363489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350048, 33.131401, 31.383816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398612, -0.005695, -0.917102,
		-0.907707, -0.140453, 0.395400,
		-0.131062, 0.990071, 0.050817,
		39.310730, 33.428421, 31.399061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668053, 32.911755, 31.233398>,  <39.402473, 32.735374, 31.363489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668053, 32.911755, 31.233398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857067, 33.257793, 31.166084>,  <38.970474, 33.465416, 31.125696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857067, 33.257793, 31.166084>,  <38.668053, 32.911755, 31.233398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857067, 33.257793, 31.166084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545752, 0.137299, -0.826622,
		-0.692001, 0.482451, 0.537007,
		0.472535, 0.865095, -0.168287,
		38.998829, 33.517323, 31.115599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214130, 33.255775, 30.967955>,  <38.668053, 32.911755, 31.233398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214130, 33.255775, 30.967955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552750, 33.442249, 30.865177>,  <38.755920, 33.554134, 30.803511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552750, 33.442249, 30.865177>,  <38.214130, 33.255775, 30.967955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552750, 33.442249, 30.865177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375185, 0.180145, -0.909277,
		-0.377606, 0.866151, 0.327409,
		0.846552, 0.466187, -0.256942,
		38.806717, 33.582104, 30.788094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912933, 33.878288, 30.629885>,  <38.214130, 33.255775, 30.967955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912933, 33.878288, 30.629885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282970, 33.797565, 30.501219>,  <38.504993, 33.749130, 30.424019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282970, 33.797565, 30.501219>,  <37.912933, 33.878288, 30.629885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282970, 33.797565, 30.501219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251293, 0.309710, -0.917023,
		0.284686, 0.929168, 0.235799,
		0.925097, -0.201809, -0.321664,
		38.560501, 33.737022, 30.404720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874168, 34.610958, 30.968159>,  <37.912933, 33.878288, 30.629885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874168, 34.610958, 30.968159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503635, 34.761158, 30.956146>,  <37.281315, 34.851280, 30.948938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503635, 34.761158, 30.956146>,  <37.874168, 34.610958, 30.968159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503635, 34.761158, 30.956146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110027, -0.193458, 0.974919,
		0.360276, 0.906405, 0.220522,
		-0.926334, 0.375504, -0.030031,
		37.225735, 34.873810, 30.947138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825153, 35.035076, 31.546001>,  <37.874168, 34.610958, 30.968159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825153, 35.035076, 31.546001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455509, 34.915199, 31.451168>,  <37.233723, 34.843273, 31.394268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455509, 34.915199, 31.451168>,  <37.825153, 35.035076, 31.546001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455509, 34.915199, 31.451168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135317, -0.323581, 0.936474,
		-0.357373, 0.897484, 0.258470,
		-0.924107, -0.299695, -0.237084,
		37.178276, 34.825291, 31.380043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338951, 35.394115, 31.938616>,  <37.825153, 35.035076, 31.546001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338951, 35.394115, 31.938616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170776, 35.048378, 31.828241>,  <37.069870, 34.840935, 31.762016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170776, 35.048378, 31.828241>,  <37.338951, 35.394115, 31.938616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170776, 35.048378, 31.828241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314417, -0.146483, 0.937915,
		-0.851102, 0.481094, -0.210177,
		-0.420438, -0.864344, -0.275936,
		37.044643, 34.789074, 31.745461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680233, 35.371742, 32.275661>,  <37.338951, 35.394115, 31.938616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680233, 35.371742, 32.275661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704819, 34.988617, 32.163364>,  <36.719570, 34.758743, 32.095985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704819, 34.988617, 32.163364>,  <36.680233, 35.371742, 32.275661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704819, 34.988617, 32.163364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488464, -0.274157, 0.828397,
		-0.870417, 0.086219, -0.484707,
		0.061462, -0.957812, -0.280746,
		36.723259, 34.701275, 32.079140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015362, 35.076473, 32.500397>,  <36.680233, 35.371742, 32.275661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015362, 35.076473, 32.500397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271793, 34.774357, 32.445919>,  <36.425652, 34.593086, 32.413231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271793, 34.774357, 32.445919>,  <36.015362, 35.076473, 32.500397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271793, 34.774357, 32.445919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076640, -0.239576, 0.967848,
		-0.763635, -0.610033, -0.211473,
		0.641083, -0.755290, -0.136196,
		36.464119, 34.547771, 32.405060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666702, 34.612103, 32.883949>,  <36.015362, 35.076473, 32.500397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666702, 34.612103, 32.883949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047470, 34.498615, 32.837723>,  <36.275932, 34.430523, 32.809986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047470, 34.498615, 32.837723>,  <35.666702, 34.612103, 32.883949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047470, 34.498615, 32.837723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041234, -0.255148, 0.966023,
		-0.303568, -0.924339, -0.231181,
		0.951917, -0.283721, -0.115568,
		36.333046, 34.413502, 32.803051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626373, 33.963703, 33.056179>,  <35.666702, 34.612103, 32.883949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626373, 33.963703, 33.056179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004292, 34.078285, 33.119804>,  <36.231045, 34.147034, 33.157978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004292, 34.078285, 33.119804>,  <35.626373, 33.963703, 33.056179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004292, 34.078285, 33.119804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129509, -0.119429, 0.984360,
		0.300971, -0.950621, -0.075738,
		0.944798, 0.286455, 0.159059,
		36.287731, 34.164223, 33.167522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950005, 33.403027, 33.547848>,  <35.626373, 33.963703, 33.056179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950005, 33.403027, 33.547848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186966, 33.724453, 33.570992>,  <36.329144, 33.917309, 33.584877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186966, 33.724453, 33.570992>,  <35.950005, 33.403027, 33.547848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186966, 33.724453, 33.570992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049985, -0.108333, 0.992857,
		0.804093, -0.585276, -0.104342,
		0.592399, 0.803565, 0.057855,
		36.364685, 33.965523, 33.588348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368122, 33.211456, 34.049942>,  <35.950005, 33.403027, 33.547848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368122, 33.211456, 34.049942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416077, 33.608295, 34.035160>,  <36.444851, 33.846397, 34.026291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416077, 33.608295, 34.035160>,  <36.368122, 33.211456, 34.049942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416077, 33.608295, 34.035160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138321, 0.020165, 0.990182,
		0.983104, -0.123824, -0.134811,
		0.119890, 0.992099, -0.036951,
		36.452045, 33.905926, 34.024075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040108, 33.427467, 34.419704>,  <36.368122, 33.211456, 34.049942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040108, 33.427467, 34.419704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815491, 33.758446, 34.419312>,  <36.680721, 33.957035, 34.419075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815491, 33.758446, 34.419312>,  <37.040108, 33.427467, 34.419704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815491, 33.758446, 34.419312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114033, 0.078566, 0.990365,
		0.819553, 0.556019, -0.138475,
		-0.561542, 0.827448, -0.000985,
		36.647030, 34.006680, 34.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387547, 33.830494, 34.768993>,  <37.040108, 33.427467, 34.419704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387547, 33.830494, 34.768993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015072, 33.976070, 34.760639>,  <36.791588, 34.063416, 34.755627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015072, 33.976070, 34.760639>,  <37.387547, 33.830494, 34.768993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015072, 33.976070, 34.760639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114393, 0.346126, 0.931188,
		0.346126, 0.864722, -0.363941,
		-0.931188, 0.363941, -0.020885,
		36.735714, 34.085251, 34.754375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400898, 34.307129, 35.292339>,  <37.387547, 33.830494, 34.768993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400898, 34.307129, 35.292339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005077, 34.282124, 35.240356>,  <36.767586, 34.267120, 35.209167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005077, 34.282124, 35.240356>,  <37.400898, 34.307129, 35.292339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005077, 34.282124, 35.240356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136275, 0.110600, 0.984478,
		-0.047170, 0.991897, -0.117963,
		-0.989547, -0.062514, -0.129954,
		36.708214, 34.263371, 35.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135975, 34.830193, 35.734882>,  <37.400898, 34.307129, 35.292339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135975, 34.830193, 35.734882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833801, 34.577232, 35.666306>,  <36.652496, 34.425457, 35.625160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833801, 34.577232, 35.666306>,  <37.135975, 34.830193, 35.734882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833801, 34.577232, 35.666306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295181, 0.094867, 0.950720,
		-0.584971, 0.768811, -0.258338,
		-0.755432, -0.632400, -0.171444,
		36.607170, 34.387512, 35.614872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511261, 35.142303, 35.924194>,  <37.135975, 34.830193, 35.734882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511261, 35.142303, 35.924194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456860, 34.746429, 35.942158>,  <36.424217, 34.508904, 35.952934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456860, 34.746429, 35.942158>,  <36.511261, 35.142303, 35.924194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456860, 34.746429, 35.942158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420801, 0.098747, 0.901763,
		-0.896900, 0.103746, -0.429892,
		-0.136004, -0.989690, 0.044910,
		36.416058, 34.449524, 35.955631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437855, 35.897697, 36.298302>,  <36.511261, 35.142303, 35.924194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437855, 35.897697, 36.298302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803890, 35.984932, 36.433975>,  <37.023514, 36.037273, 36.515381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803890, 35.984932, 36.433975>,  <36.437855, 35.897697, 36.298302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803890, 35.984932, 36.433975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397923, 0.624587, 0.671973,
		-0.065307, -0.749887, 0.658334,
		0.915091, 0.218082, 0.339188,
		37.078419, 36.050358, 36.535732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351284, 36.605656, 36.460514>,  <36.437855, 35.897697, 36.298302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351284, 36.605656, 36.460514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640877, 36.881126, 36.444641>,  <36.814632, 37.046410, 36.435116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640877, 36.881126, 36.444641>,  <36.351284, 36.605656, 36.460514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640877, 36.881126, 36.444641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437001, 0.413370, -0.798846,
		-0.533746, 0.595689, 0.600225,
		0.723979, 0.688679, -0.039682,
		36.858070, 37.087730, 36.432735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003155, 37.018818, 36.080494>,  <36.351284, 36.605656, 36.460514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003155, 37.018818, 36.080494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383701, 37.142002, 36.077572>,  <36.612030, 37.215912, 36.075817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383701, 37.142002, 36.077572>,  <36.003155, 37.018818, 36.080494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383701, 37.142002, 36.077572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169539, 0.503656, -0.847105,
		-0.257197, 0.807149, 0.531375,
		0.951371, 0.307961, -0.007305,
		36.669113, 37.234390, 36.075382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054615, 37.755711, 35.987823>,  <36.003155, 37.018818, 36.080494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054615, 37.755711, 35.987823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408386, 37.611965, 35.868736>,  <36.620651, 37.525719, 35.797283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408386, 37.611965, 35.868736>,  <36.054615, 37.755711, 35.987823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408386, 37.611965, 35.868736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160102, 0.365590, -0.916903,
		0.438349, 0.858603, 0.265803,
		0.884430, -0.359368, -0.297720,
		36.673714, 37.504154, 35.779419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322628, 38.311581, 35.533978>,  <36.054615, 37.755711, 35.987823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322628, 38.311581, 35.533978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546410, 37.991959, 35.445869>,  <36.680679, 37.800186, 35.393005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546410, 37.991959, 35.445869>,  <36.322628, 38.311581, 35.533978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546410, 37.991959, 35.445869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044499, 0.236412, -0.970633,
		0.827664, 0.552829, 0.096706,
		0.559456, -0.799055, -0.220270,
		36.714245, 37.752243, 35.379787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934017, 38.571121, 35.102924>,  <36.322628, 38.311581, 35.533978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934017, 38.571121, 35.102924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903778, 38.178631, 35.031956>,  <36.885635, 37.943138, 34.989372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903778, 38.178631, 35.031956>,  <36.934017, 38.571121, 35.102924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903778, 38.178631, 35.031956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024559, 0.176048, -0.984075,
		0.996836, -0.078749, 0.010790,
		-0.075595, -0.981227, -0.177425,
		36.881100, 37.884262, 34.978729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439056, 38.357944, 34.689640>,  <36.934017, 38.571121, 35.102924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439056, 38.357944, 34.689640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167873, 38.069672, 34.631680>,  <37.005165, 37.896709, 34.596901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167873, 38.069672, 34.631680>,  <37.439056, 38.357944, 34.689640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167873, 38.069672, 34.631680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061912, 0.140442, -0.988151,
		0.732490, -0.678894, -0.050595,
		-0.677956, -0.720679, -0.144904,
		36.964485, 37.853466, 34.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745773, 37.849354, 34.226273>,  <37.439056, 38.357944, 34.689640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745773, 37.849354, 34.226273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351269, 37.800896, 34.181366>,  <37.114567, 37.771820, 34.154423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351269, 37.800896, 34.181366>,  <37.745773, 37.849354, 34.226273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351269, 37.800896, 34.181366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100029, 0.102771, -0.989663,
		0.131439, -0.987299, -0.089240,
		-0.986265, -0.121153, -0.112267,
		37.055389, 37.764553, 34.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638435, 37.384346, 33.565548>,  <37.745773, 37.849354, 34.226273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638435, 37.384346, 33.565548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283772, 37.551922, 33.643864>,  <37.070972, 37.652466, 33.690853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283772, 37.551922, 33.643864>,  <37.638435, 37.384346, 33.565548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283772, 37.551922, 33.643864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143967, 0.152267, -0.977798,
		-0.439451, -0.895156, -0.074695,
		-0.886655, 0.418941, 0.195787,
		37.017776, 37.677605, 33.702599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105453, 36.999065, 33.190449>,  <37.638435, 37.384346, 33.565548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105453, 36.999065, 33.190449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964787, 37.361923, 33.282898>,  <36.880386, 37.579639, 33.338367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964787, 37.361923, 33.282898>,  <37.105453, 36.999065, 33.190449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964787, 37.361923, 33.282898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017951, 0.240315, -0.970529,
		-0.935952, -0.345455, -0.068228,
		-0.351671, 0.907143, 0.231124,
		36.859283, 37.634068, 33.352234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544216, 37.156647, 32.649986>,  <37.105453, 36.999065, 33.190449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544216, 37.156647, 32.649986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690659, 37.501389, 32.790367>,  <36.778526, 37.708233, 32.874596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690659, 37.501389, 32.790367>,  <36.544216, 37.156647, 32.649986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690659, 37.501389, 32.790367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189273, 0.438221, -0.878714,
		-0.911120, 0.255279, 0.323562,
		0.366109, 0.861856, 0.350955,
		36.800491, 37.759945, 32.895653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169388, 37.581932, 32.230843>,  <36.544216, 37.156647, 32.649986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169388, 37.581932, 32.230843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449966, 37.818851, 32.389416>,  <36.618313, 37.961002, 32.484558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449966, 37.818851, 32.389416>,  <36.169388, 37.581932, 32.230843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449966, 37.818851, 32.389416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147547, 0.423496, -0.893802,
		-0.697282, 0.685446, 0.209668,
		0.701447, 0.592296, 0.396431,
		36.660400, 37.996540, 32.508347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092880, 38.236523, 31.952902>,  <36.169388, 37.581932, 32.230843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092880, 38.236523, 31.952902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473606, 38.225933, 32.075111>,  <36.702042, 38.219582, 32.148438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473606, 38.225933, 32.075111>,  <36.092880, 38.236523, 31.952902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473606, 38.225933, 32.075111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295808, 0.342038, -0.891912,
		-0.080890, 0.939313, 0.333388,
		0.951816, -0.026472, 0.305523,
		36.759151, 38.217991, 32.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376945, 38.903976, 31.819490>,  <36.092880, 38.236523, 31.952902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376945, 38.903976, 31.819490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690445, 38.656647, 31.842854>,  <36.878544, 38.508247, 31.856871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690445, 38.656647, 31.842854>,  <36.376945, 38.903976, 31.819490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690445, 38.656647, 31.842854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204311, 0.167875, -0.964404,
		0.586508, 0.767786, 0.257902,
		0.783751, -0.618323, 0.058407,
		36.925571, 38.471149, 31.860376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879574, 39.291508, 31.464056>,  <36.376945, 38.903976, 31.819490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879574, 39.291508, 31.464056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998264, 38.909523, 31.463293>,  <37.069481, 38.680332, 31.462835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998264, 38.909523, 31.463293>,  <36.879574, 39.291508, 31.464056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998264, 38.909523, 31.463293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249730, 0.079525, -0.965044,
		0.921730, 0.285882, 0.262080,
		0.296730, -0.954959, -0.001907,
		37.087284, 38.623035, 31.462721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567539, 39.256165, 31.183418>,  <36.879574, 39.291508, 31.464056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567539, 39.256165, 31.183418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448895, 38.877655, 31.131910>,  <37.377708, 38.650547, 31.101006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448895, 38.877655, 31.131910>,  <37.567539, 39.256165, 31.183418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448895, 38.877655, 31.131910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510780, -0.043259, -0.858622,
		0.806925, -0.320448, 0.496171,
		-0.296608, -0.946278, -0.128772,
		37.359913, 38.593773, 31.093279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237732, 38.975235, 31.015549>,  <37.567539, 39.256165, 31.183418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237732, 38.975235, 31.015549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934006, 38.747482, 30.889534>,  <37.751770, 38.610832, 30.813925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934006, 38.747482, 30.889534>,  <38.237732, 38.975235, 31.015549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934006, 38.747482, 30.889534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375784, 0.011570, -0.926635,
		0.531252, -0.821993, 0.205178,
		-0.759314, -0.569379, -0.315038,
		37.706211, 38.576668, 30.795023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562153, 38.575459, 30.597855>,  <38.237732, 38.975235, 31.015549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562153, 38.575459, 30.597855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175770, 38.546154, 30.498613>,  <37.943939, 38.528572, 30.439068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175770, 38.546154, 30.498613>,  <38.562153, 38.575459, 30.597855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175770, 38.546154, 30.498613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240967, 0.094113, -0.965959,
		0.094113, -0.992863, -0.073257,
		0.965959, 0.073257, 0.248104,
		37.885983, 38.524178, 30.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687977, 38.246895, 30.079124>,  <38.562153, 38.575459, 30.597855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687977, 38.246895, 30.079124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.307186, 38.359314, 30.030535>,  <38.078712, 38.426765, 30.001381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.307186, 38.359314, 30.030535>,  <38.687977, 38.246895, 30.079124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307186, 38.359314, 30.030535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181246, 0.197538, -0.963394,
		-0.246760, -0.939145, -0.238990,
		-0.951976, 0.281043, -0.121472,
		38.021595, 38.443626, 29.994093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488346, 37.927410, 29.489296>,  <38.687977, 38.246895, 30.079124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488346, 37.927410, 29.489296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249542, 38.242100, 29.552097>,  <38.106258, 38.430912, 29.589777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249542, 38.242100, 29.552097>,  <38.488346, 37.927410, 29.489296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249542, 38.242100, 29.552097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192136, 0.330230, -0.924138,
		-0.778885, -0.521555, -0.348308,
		-0.597011, 0.786720, 0.157002,
		38.070438, 38.478115, 29.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024265, 37.849449, 28.911707>,  <38.488346, 37.927410, 29.489296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024265, 37.849449, 28.911707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017353, 38.227409, 29.042465>,  <38.013206, 38.454185, 29.120920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017353, 38.227409, 29.042465>,  <38.024265, 37.849449, 28.911707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017353, 38.227409, 29.042465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024628, 0.326441, -0.944897,
		-0.999547, -0.024376, 0.017631,
		-0.017278, 0.944903, 0.326894,
		38.012169, 38.510880, 29.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466366, 38.279564, 28.471046>,  <38.024265, 37.849449, 28.911707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466366, 38.279564, 28.471046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742371, 38.514194, 28.640663>,  <37.907974, 38.654972, 28.742434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742371, 38.514194, 28.640663>,  <37.466366, 38.279564, 28.471046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742371, 38.514194, 28.640663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046138, 0.549021, -0.834534,
		-0.722327, 0.595403, 0.351767,
		0.690011, 0.586576, 0.424044,
		37.949375, 38.690166, 28.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198238, 38.948437, 28.453821>,  <37.466366, 38.279564, 28.471046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198238, 38.948437, 28.453821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590908, 39.009449, 28.499517>,  <37.826511, 39.046059, 28.526936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590908, 39.009449, 28.499517>,  <37.198238, 38.948437, 28.453821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590908, 39.009449, 28.499517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004868, 0.619333, -0.785113,
		-0.190509, 0.770169, 0.608725,
		0.981673, 0.152535, 0.114239,
		37.885410, 39.055210, 28.533789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386139, 39.595413, 28.312603>,  <37.198238, 38.948437, 28.453821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386139, 39.595413, 28.312603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762646, 39.461521, 28.294815>,  <37.988548, 39.381187, 28.284142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762646, 39.461521, 28.294815>,  <37.386139, 39.595413, 28.312603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762646, 39.461521, 28.294815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204558, 0.670030, -0.713594,
		0.268654, 0.662585, 0.699147,
		0.941266, -0.334726, -0.044470,
		38.045025, 39.361103, 28.281475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735859, 40.204014, 28.241085>,  <37.386139, 39.595413, 28.312603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735859, 40.204014, 28.241085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977104, 39.910240, 28.116598>,  <38.121853, 39.733974, 28.041906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977104, 39.910240, 28.116598>,  <37.735859, 40.204014, 28.241085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977104, 39.910240, 28.116598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379014, 0.607171, -0.698349,
		0.701853, 0.303232, 0.644557,
		0.603118, -0.734435, -0.311215,
		38.158039, 39.689911, 28.023233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448368, 40.476051, 28.267805>,  <37.735859, 40.204014, 28.241085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448368, 40.476051, 28.267805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462608, 40.158257, 28.025309>,  <38.471153, 39.967579, 27.879810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462608, 40.158257, 28.025309>,  <38.448368, 40.476051, 28.267805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462608, 40.158257, 28.025309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477217, 0.546508, -0.688181,
		0.878064, -0.264807, 0.398598,
		0.035602, -0.794485, -0.606240,
		38.473289, 39.919910, 27.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073097, 40.548386, 27.857056>,  <38.448368, 40.476051, 28.267805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073097, 40.548386, 27.857056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827522, 40.316418, 27.642851>,  <38.680180, 40.177235, 27.514328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827522, 40.316418, 27.642851>,  <39.073097, 40.548386, 27.857056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827522, 40.316418, 27.642851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279884, 0.474412, -0.834625,
		0.738072, -0.662286, -0.128947,
		-0.613935, -0.579923, -0.535513,
		38.643341, 40.142441, 27.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504986, 40.285526, 27.242714>,  <39.073097, 40.548386, 27.857056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504986, 40.285526, 27.242714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117882, 40.252033, 27.147699>,  <38.885620, 40.231937, 27.090691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117882, 40.252033, 27.147699>,  <39.504986, 40.285526, 27.242714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117882, 40.252033, 27.147699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202225, 0.303852, -0.931010,
		0.150129, -0.949033, -0.277124,
		-0.967764, -0.083730, -0.237535,
		38.827553, 40.226913, 27.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100780, 39.933804, 26.844322>,  <39.504986, 40.285526, 27.242714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100780, 39.933804, 26.844322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.488190, 40.014015, 26.903311>,  <40.720634, 40.062141, 26.938704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.488190, 40.014015, 26.903311>,  <40.100780, 39.933804, 26.844322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488190, 40.014015, 26.903311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071272, -0.344235, 0.936175,
		0.238497, -0.917219, -0.319107,
		0.968525, 0.200531, 0.147471,
		40.778748, 40.074173, 26.947552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369694, 39.343334, 27.187704>,  <40.100780, 39.933804, 26.844322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369694, 39.343334, 27.187704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642902, 39.631271, 27.237175>,  <40.806828, 39.804035, 27.266857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642902, 39.631271, 27.237175>,  <40.369694, 39.343334, 27.187704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642902, 39.631271, 27.237175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091538, -0.252361, 0.963294,
		0.724635, -0.646633, -0.238263,
		0.683026, 0.719847, 0.123678,
		40.847809, 39.847225, 27.274279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009460, 39.016670, 27.476233>,  <40.369694, 39.343334, 27.187704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009460, 39.016670, 27.476233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.996822, 39.406048, 27.566923>,  <40.989239, 39.639675, 27.621338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.996822, 39.406048, 27.566923>,  <41.009460, 39.016670, 27.476233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996822, 39.406048, 27.566923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006209, -0.226646, 0.973957,
		0.999482, 0.032181, 0.001117,
		-0.031596, 0.973446, 0.226728,
		40.987343, 39.698082, 27.634941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458099, 39.057972, 27.989016>,  <41.009460, 39.016670, 27.476233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458099, 39.057972, 27.989016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256138, 39.400246, 28.034407>,  <41.134960, 39.605610, 28.061642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256138, 39.400246, 28.034407>,  <41.458099, 39.057972, 27.989016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256138, 39.400246, 28.034407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048412, -0.103184, 0.993483,
		0.861817, 0.507107, 0.010673,
		-0.504904, 0.855684, 0.113476,
		41.104668, 39.656952, 28.068449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894970, 39.409031, 28.446987>,  <41.458099, 39.057972, 27.989016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894970, 39.409031, 28.446987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530571, 39.567513, 28.492792>,  <41.311932, 39.662601, 28.520275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530571, 39.567513, 28.492792>,  <41.894970, 39.409031, 28.446987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530571, 39.567513, 28.492792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007052, -0.262660, 0.964863,
		0.412359, 0.879792, 0.236488,
		-0.910994, 0.396202, 0.114514,
		41.257275, 39.686375, 28.527147>
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
