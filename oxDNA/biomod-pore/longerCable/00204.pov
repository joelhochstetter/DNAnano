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
	<24.470400, 35.191906, 35.397720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345640, 34.920006, 35.132195>,  <24.270784, 34.756866, 34.972878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345640, 34.920006, 35.132195>,  <24.470400, 35.191906, 35.397720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345640, 34.920006, 35.132195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667869, 0.340075, -0.662042,
		0.675774, -0.649833, 0.347918,
		-0.311899, -0.679754, -0.663817,
		24.252071, 34.716080, 34.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047321, 34.814526, 35.070118>,  <24.470400, 35.191906, 35.397720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047321, 34.814526, 35.070118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724312, 34.902927, 34.851372>,  <24.530506, 34.955971, 34.720123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724312, 34.902927, 34.851372>,  <25.047321, 34.814526, 35.070118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724312, 34.902927, 34.851372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589532, 0.272583, -0.760362,
		-0.018981, -0.936405, -0.350409,
		-0.807522, 0.221009, -0.546867,
		24.482056, 34.969231, 34.687313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216833, 34.512821, 34.355110>,  <25.047321, 34.814526, 35.070118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216833, 34.512821, 34.355110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980267, 34.835163, 34.343643>,  <24.838327, 35.028568, 34.336765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980267, 34.835163, 34.343643>,  <25.216833, 34.512821, 34.355110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980267, 34.835163, 34.343643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628480, 0.438386, -0.642519,
		-0.505213, -0.398011, -0.765733,
		-0.591416, 0.805857, -0.028663,
		24.802841, 35.076920, 34.335045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246159, 34.626278, 33.637539>,  <25.216833, 34.512821, 34.355110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246159, 34.626278, 33.637539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190760, 34.971169, 33.832428>,  <25.157520, 35.178101, 33.949364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190760, 34.971169, 33.832428>,  <25.246159, 34.626278, 33.637539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190760, 34.971169, 33.832428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502865, 0.485055, -0.715436,
		-0.853197, 0.145923, -0.500761,
		-0.138498, 0.862223, 0.487227,
		25.149210, 35.229836, 33.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051878, 35.162334, 33.219070>,  <25.246159, 34.626278, 33.637539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051878, 35.162334, 33.219070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337627, 35.254230, 33.483459>,  <25.509077, 35.309368, 33.642094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337627, 35.254230, 33.483459>,  <25.051878, 35.162334, 33.219070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337627, 35.254230, 33.483459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673599, 0.030119, -0.738483,
		-0.189568, 0.972786, -0.133238,
		0.714372, 0.229742, 0.660977,
		25.551939, 35.323154, 33.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394997, 35.812359, 33.090252>,  <25.051878, 35.162334, 33.219070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394997, 35.812359, 33.090252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634466, 35.564209, 33.292923>,  <25.778149, 35.415321, 33.414528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634466, 35.564209, 33.292923>,  <25.394997, 35.812359, 33.090252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634466, 35.564209, 33.292923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690746, 0.079597, -0.718703,
		0.405532, 0.780259, 0.476171,
		0.598676, -0.620371, 0.506682,
		25.814070, 35.378098, 33.444927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151308, 36.109585, 33.170494>,  <25.394997, 35.812359, 33.090252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151308, 36.109585, 33.170494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137028, 35.709843, 33.171448>,  <26.128460, 35.469997, 33.172020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137028, 35.709843, 33.171448>,  <26.151308, 36.109585, 33.170494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137028, 35.709843, 33.171448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769608, -0.029017, -0.637857,
		0.637517, -0.020937, 0.770151,
		-0.035702, -0.999360, 0.002386,
		26.126318, 35.410034, 33.172165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796555, 35.803551, 33.305046>,  <26.151308, 36.109585, 33.170494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796555, 35.803551, 33.305046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592157, 35.531502, 33.094780>,  <26.469519, 35.368271, 32.968620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592157, 35.531502, 33.094780>,  <26.796555, 35.803551, 33.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592157, 35.531502, 33.094780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767275, -0.085194, -0.635634,
		0.387526, -0.728131, 0.565375,
		-0.510991, -0.680123, -0.525662,
		26.438860, 35.327465, 32.937080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280569, 35.184299, 33.086128>,  <26.796555, 35.803551, 33.305046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280569, 35.184299, 33.086128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968990, 35.242920, 32.842239>,  <26.782043, 35.278091, 32.695904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968990, 35.242920, 32.842239>,  <27.280569, 35.184299, 33.086128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968990, 35.242920, 32.842239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605973, -0.074289, -0.792009,
		-0.161369, -0.986409, -0.030942,
		-0.778946, 0.146556, -0.609725,
		26.735306, 35.286884, 32.659321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560917, 35.024609, 32.518246>,  <27.280569, 35.184299, 33.086128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560917, 35.024609, 32.518246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224657, 35.172749, 32.360184>,  <27.022902, 35.261631, 32.265347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224657, 35.172749, 32.360184>,  <27.560917, 35.024609, 32.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224657, 35.172749, 32.360184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462513, 0.111331, -0.879595,
		-0.281766, -0.922196, -0.264882,
		-0.840648, 0.370351, -0.395159,
		26.972462, 35.283855, 32.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385515, 34.692619, 31.909235>,  <27.560917, 35.024609, 32.518246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385515, 34.692619, 31.909235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203884, 35.047089, 31.872347>,  <27.094906, 35.259769, 31.850214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203884, 35.047089, 31.872347>,  <27.385515, 34.692619, 31.909235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203884, 35.047089, 31.872347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390878, 0.105124, -0.914420,
		-0.800643, -0.451265, -0.394121,
		-0.454077, 0.886177, -0.092222,
		27.067661, 35.312943, 31.844681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089989, 34.716118, 31.265116>,  <27.385515, 34.692619, 31.909235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089989, 34.716118, 31.265116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169125, 35.091415, 31.378647>,  <27.216606, 35.316593, 31.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169125, 35.091415, 31.378647>,  <27.089989, 34.716118, 31.265116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169125, 35.091415, 31.378647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354798, 0.201378, -0.912998,
		-0.913771, 0.281329, -0.293047,
		0.197840, 0.938244, 0.283828,
		27.228476, 35.372887, 31.463795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695951, 35.203197, 31.099102>,  <27.089989, 34.716118, 31.265116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695951, 35.203197, 31.099102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598728, 35.366077, 30.746941>,  <27.540394, 35.463806, 30.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598728, 35.366077, 30.746941>,  <27.695951, 35.203197, 31.099102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598728, 35.366077, 30.746941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665249, -0.730520, -0.154219,
		-0.705951, 0.548203, 0.448449,
		-0.243058, 0.407202, -0.880403,
		27.525810, 35.488239, 30.482819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007160, 35.895000, 31.002201>,  <27.695951, 35.203197, 31.099102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007160, 35.895000, 31.002201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635815, 36.017929, 30.918592>,  <27.413006, 36.091686, 30.868427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635815, 36.017929, 30.918592>,  <28.007160, 35.895000, 31.002201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635815, 36.017929, 30.918592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282748, -0.218969, 0.933866,
		0.241226, 0.926071, 0.290178,
		-0.928366, 0.307320, -0.209023,
		27.357306, 36.110126, 30.855885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683571, 36.111889, 31.630829>,  <28.007160, 35.895000, 31.002201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683571, 36.111889, 31.630829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362772, 36.069786, 31.395636>,  <27.170294, 36.044525, 31.254520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362772, 36.069786, 31.395636>,  <27.683571, 36.111889, 31.630829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362772, 36.069786, 31.395636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559377, -0.212938, 0.801096,
		-0.209524, 0.971380, 0.111898,
		-0.801995, -0.105256, -0.587983,
		27.122173, 36.038208, 31.219240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230902, 36.589443, 31.896679>,  <27.683571, 36.111889, 31.630829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230902, 36.589443, 31.896679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107992, 36.250187, 31.724054>,  <27.034246, 36.046635, 31.620480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107992, 36.250187, 31.724054>,  <27.230902, 36.589443, 31.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107992, 36.250187, 31.724054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470849, -0.258598, 0.843462,
		-0.826972, 0.462375, -0.319884,
		-0.307275, -0.848137, -0.431562,
		27.015810, 35.995747, 31.594585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508591, 36.461288, 31.934536>,  <27.230902, 36.589443, 31.896679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508591, 36.461288, 31.934536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664392, 36.098915, 31.868114>,  <26.757874, 35.881493, 31.828260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664392, 36.098915, 31.868114>,  <26.508591, 36.461288, 31.934536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664392, 36.098915, 31.868114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627591, -0.393020, 0.672061,
		-0.674104, -0.157555, -0.721637,
		0.389504, -0.905931, -0.166056,
		26.781244, 35.827137, 31.818298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978336, 35.950329, 31.744637>,  <26.508591, 36.461288, 31.934536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978336, 35.950329, 31.744637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275562, 35.735764, 31.904697>,  <26.453897, 35.607025, 32.000732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275562, 35.735764, 31.904697>,  <25.978336, 35.950329, 31.744637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275562, 35.735764, 31.904697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615766, -0.313852, 0.722723,
		-0.262083, -0.783432, -0.563512,
		0.743064, -0.536405, 0.400156,
		26.498482, 35.574841, 32.024742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669760, 35.295666, 31.907429>,  <25.978336, 35.950329, 31.744637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669760, 35.295666, 31.907429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004486, 35.281471, 32.125961>,  <26.205322, 35.272953, 32.257080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004486, 35.281471, 32.125961>,  <25.669760, 35.295666, 31.907429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004486, 35.281471, 32.125961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525970, -0.329104, 0.784249,
		0.151972, -0.943627, -0.294063,
		0.836815, -0.035484, 0.546334,
		26.255531, 35.270824, 32.289860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733437, 34.628365, 32.083038>,  <25.669760, 35.295666, 31.907429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733437, 34.628365, 32.083038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938452, 34.848164, 32.346966>,  <26.061460, 34.980042, 32.505322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938452, 34.848164, 32.346966>,  <25.733437, 34.628365, 32.083038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938452, 34.848164, 32.346966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470919, -0.462668, 0.751115,
		0.718012, -0.695694, 0.021635,
		0.512536, 0.549498, 0.659817,
		26.092213, 35.013012, 32.544910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095060, 34.279659, 32.562206>,  <25.733437, 34.628365, 32.083038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095060, 34.279659, 32.562206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015234, 34.622635, 32.751930>,  <25.967339, 34.828419, 32.865765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015234, 34.622635, 32.751930>,  <26.095060, 34.279659, 32.562206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015234, 34.622635, 32.751930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476682, -0.507865, 0.717529,
		0.856124, -0.082903, 0.510077,
		-0.199565, 0.857438, 0.474314,
		25.955364, 34.879868, 32.894226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115393, 33.670174, 33.001366>,  <26.095060, 34.279659, 32.562206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115393, 33.670174, 33.001366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512312, 33.628559, 32.974483>,  <26.750463, 33.603588, 32.958355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512312, 33.628559, 32.974483>,  <26.115393, 33.670174, 33.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512312, 33.628559, 32.974483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021618, -0.679748, 0.733126,
		-0.121957, -0.726028, -0.676763,
		0.992299, -0.104040, -0.067204,
		26.810001, 33.597347, 32.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269499, 32.998688, 32.883778>,  <26.115393, 33.670174, 33.001366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269499, 32.998688, 32.883778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581362, 33.174793, 33.061901>,  <26.768480, 33.280457, 33.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581362, 33.174793, 33.061901>,  <26.269499, 32.998688, 32.883778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581362, 33.174793, 33.061901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, -0.657905, 0.750912,
		0.623570, -0.611006, -0.487681,
		0.779659, 0.440265, 0.445306,
		26.815260, 33.306873, 33.195492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852373, 32.495071, 33.003582>,  <26.269499, 32.998688, 32.883778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852373, 32.495071, 33.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886566, 32.777252, 33.285015>,  <26.907082, 32.946560, 33.453876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886566, 32.777252, 33.285015>,  <26.852373, 32.495071, 33.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886566, 32.777252, 33.285015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106340, -0.708596, 0.697555,
		0.990649, 0.015192, -0.135589,
		0.085481, 0.705451, 0.703586,
		26.912210, 32.988888, 33.496090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527939, 32.347717, 33.439766>,  <26.852373, 32.495071, 33.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527939, 32.347717, 33.439766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260330, 32.559540, 33.648376>,  <27.099766, 32.686634, 33.773540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260330, 32.559540, 33.648376>,  <27.527939, 32.347717, 33.439766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260330, 32.559540, 33.648376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017115, -0.690522, 0.723108,
		0.743048, 0.492700, 0.452910,
		-0.669020, 0.529553, 0.521524,
		27.059624, 32.718407, 33.804832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691746, 32.367321, 34.265198>,  <27.527939, 32.347717, 33.439766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691746, 32.367321, 34.265198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310389, 32.446125, 34.173786>,  <27.081573, 32.493408, 34.118938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310389, 32.446125, 34.173786>,  <27.691746, 32.367321, 34.265198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310389, 32.446125, 34.173786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292253, -0.791253, 0.537129,
		-0.075005, 0.578884, 0.811953,
		-0.953395, 0.197009, -0.228529,
		27.024370, 32.505226, 34.105228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271013, 32.402481, 34.899151>,  <27.691746, 32.367321, 34.265198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271013, 32.402481, 34.899151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055574, 32.271210, 34.588741>,  <26.926311, 32.192448, 34.402496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055574, 32.271210, 34.588741>,  <27.271013, 32.402481, 34.899151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055574, 32.271210, 34.588741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159312, -0.864747, 0.476268,
		-0.827364, 0.380147, 0.413470,
		-0.538599, -0.328176, -0.776023,
		26.893995, 32.172756, 34.355934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516396, 31.999578, 34.984962>,  <27.271013, 32.402481, 34.899151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516396, 31.999578, 34.984962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668983, 31.864288, 34.640850>,  <26.760536, 31.783113, 34.434383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668983, 31.864288, 34.640850>,  <26.516396, 31.999578, 34.984962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668983, 31.864288, 34.640850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215577, -0.937545, 0.273012,
		-0.898893, 0.081311, -0.430558,
		0.381469, -0.338227, -0.860281,
		26.783424, 31.762821, 34.382767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043903, 31.548706, 34.558159>,  <26.516396, 31.999578, 34.984962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043903, 31.548706, 34.558159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409126, 31.412163, 34.468895>,  <26.628260, 31.330236, 34.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409126, 31.412163, 34.468895>,  <26.043903, 31.548706, 34.558159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409126, 31.412163, 34.468895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319803, -0.938846, 0.127651,
		-0.253086, -0.045186, -0.966388,
		0.913057, -0.341360, -0.223158,
		26.683044, 31.309755, 34.401947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001505, 31.162931, 34.005714>,  <26.043903, 31.548706, 34.558159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001505, 31.162931, 34.005714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314243, 31.056049, 34.231041>,  <26.501886, 30.991920, 34.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314243, 31.056049, 34.231041>,  <26.001505, 31.162931, 34.005714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314243, 31.056049, 34.231041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397529, -0.909677, 0.120243,
		0.480302, -0.317944, -0.817448,
		0.781844, -0.267206, 0.563312,
		26.548796, 30.975887, 34.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185909, 30.538177, 33.783455>,  <26.001505, 31.162931, 34.005714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185909, 30.538177, 33.783455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313940, 30.557520, 34.161919>,  <26.390759, 30.569126, 34.388996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313940, 30.557520, 34.161919>,  <26.185909, 30.538177, 33.783455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313940, 30.557520, 34.161919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471588, -0.858043, 0.203388,
		0.821678, -0.511296, -0.251837,
		0.320079, 0.048356, 0.946156,
		26.409964, 30.572027, 34.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622944, 29.994411, 33.895206>,  <26.185909, 30.538177, 33.783455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622944, 29.994411, 33.895206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505028, 30.098228, 34.263062>,  <26.434278, 30.160519, 34.483776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505028, 30.098228, 34.263062>,  <26.622944, 29.994411, 33.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505028, 30.098228, 34.263062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437273, -0.892368, 0.111676,
		0.849642, -0.369213, 0.376551,
		-0.294790, 0.259540, 0.919640,
		26.416592, 30.176090, 34.538952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855698, 29.497017, 34.350437>,  <26.622944, 29.994411, 33.895206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855698, 29.497017, 34.350437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540384, 29.685530, 34.508682>,  <26.351196, 29.798637, 34.603630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540384, 29.685530, 34.508682>,  <26.855698, 29.497017, 34.350437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540384, 29.685530, 34.508682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412529, -0.881821, 0.228499,
		0.456543, 0.016921, 0.889540,
		-0.788282, 0.471281, 0.395609,
		26.303900, 29.826914, 34.627365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845205, 29.334532, 35.056549>,  <26.855698, 29.497017, 34.350437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845205, 29.334532, 35.056549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476786, 29.427137, 34.931286>,  <26.255733, 29.482700, 34.856129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476786, 29.427137, 34.931286>,  <26.845205, 29.334532, 35.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476786, 29.427137, 34.931286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337456, -0.875833, 0.345022,
		-0.194396, 0.423459, 0.884812,
		-0.921050, 0.231514, -0.313158,
		26.200470, 29.496592, 34.837337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297682, 29.061941, 35.489559>,  <26.845205, 29.334532, 35.056549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297682, 29.061941, 35.489559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143578, 29.109356, 35.123493>,  <26.051115, 29.137804, 34.903854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143578, 29.109356, 35.123493>,  <26.297682, 29.061941, 35.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143578, 29.109356, 35.123493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331407, -0.943329, 0.017332,
		-0.861245, 0.309968, 0.402712,
		-0.385262, 0.118535, -0.915162,
		26.027998, 29.144917, 34.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872427, 28.703983, 35.026001>,  <26.297682, 29.061941, 35.489559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872427, 28.703983, 35.026001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655565, 28.885557, 35.308846>,  <25.525448, 28.994501, 35.478554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655565, 28.885557, 35.308846>,  <25.872427, 28.703983, 35.026001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655565, 28.885557, 35.308846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443392, 0.869377, -0.218144,
		-0.713772, 0.195261, -0.672608,
		-0.542155, 0.453934, 0.707115,
		25.492918, 29.021738, 35.520981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481127, 29.306662, 34.747768>,  <25.872427, 28.703983, 35.026001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481127, 29.306662, 34.747768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601879, 29.321815, 35.128807>,  <25.674330, 29.330908, 35.357430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601879, 29.321815, 35.128807>,  <25.481127, 29.306662, 34.747768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601879, 29.321815, 35.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421170, 0.891115, -0.168910,
		-0.855268, 0.452194, 0.253055,
		0.301881, 0.037884, 0.952593,
		25.692444, 29.333181, 35.414585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217712, 29.923372, 35.093834>,  <25.481127, 29.306662, 34.747768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217712, 29.923372, 35.093834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567072, 29.779007, 35.224625>,  <25.776688, 29.692387, 35.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567072, 29.779007, 35.224625>,  <25.217712, 29.923372, 35.093834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567072, 29.779007, 35.224625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476598, 0.771480, -0.421512,
		-0.100123, 0.523983, 0.845823,
		0.873401, -0.360915, 0.326973,
		25.829092, 29.670732, 35.322716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645168, 30.423176, 35.449528>,  <25.217712, 29.923372, 35.093834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645168, 30.423176, 35.449528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924921, 30.154936, 35.350605>,  <26.092773, 29.993992, 35.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924921, 30.154936, 35.350605>,  <25.645168, 30.423176, 35.449528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924921, 30.154936, 35.350605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592977, 0.737571, -0.323060,
		0.399053, 0.079293, 0.913493,
		0.699382, -0.670599, -0.247310,
		26.134735, 29.953756, 35.276413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257591, 30.618534, 35.727776>,  <25.645168, 30.423176, 35.449528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257591, 30.618534, 35.727776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350058, 30.428993, 35.387886>,  <26.405537, 30.315268, 35.183952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350058, 30.428993, 35.387886>,  <26.257591, 30.618534, 35.727776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350058, 30.428993, 35.387886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663154, 0.715800, -0.218762,
		0.711892, -0.512926, 0.479705,
		0.231164, -0.473854, -0.849721,
		26.419407, 30.286837, 35.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997473, 30.573477, 35.581223>,  <26.257591, 30.618534, 35.727776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997473, 30.573477, 35.581223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833752, 30.567364, 35.216312>,  <26.735519, 30.563696, 34.997368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833752, 30.567364, 35.216312>,  <26.997473, 30.573477, 35.581223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833752, 30.567364, 35.216312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585448, 0.762485, -0.275440,
		0.699802, -0.646826, -0.303141,
		-0.409302, -0.015281, -0.912271,
		26.710960, 30.562780, 34.942631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523653, 30.549290, 35.084541>,  <26.997473, 30.573477, 35.581223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523653, 30.549290, 35.084541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216320, 30.708858, 34.884331>,  <27.031921, 30.804600, 34.764202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216320, 30.708858, 34.884331>,  <27.523653, 30.549290, 35.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216320, 30.708858, 34.884331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578090, 0.768184, -0.275146,
		0.274737, -0.500754, -0.820832,
		-0.768331, 0.398922, -0.500529,
		26.985821, 30.828535, 34.734173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407343, 30.660929, 34.355797>,  <27.523653, 30.549290, 35.084541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407343, 30.660929, 34.355797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517717, 30.995388, 34.166180>,  <27.583942, 31.196064, 34.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517717, 30.995388, 34.166180>,  <27.407343, 30.660929, 34.355797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517717, 30.995388, 34.166180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759667, -0.491871, -0.425404,
		-0.588869, -0.242730, -0.770918,
		0.275934, 0.836149, -0.474042,
		27.600498, 31.246233, 34.023968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547806, 30.463945, 33.703182>,  <27.407343, 30.660929, 34.355797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547806, 30.463945, 33.703182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753958, 30.794546, 33.793762>,  <27.877649, 30.992907, 33.848110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753958, 30.794546, 33.793762>,  <27.547806, 30.463945, 33.703182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753958, 30.794546, 33.793762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856686, -0.503602, -0.111688,
		0.021731, 0.251559, -0.967598,
		0.515380, 0.826501, 0.226451,
		27.908571, 31.042496, 33.861698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183702, 30.531548, 33.208179>,  <27.547806, 30.463945, 33.703182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183702, 30.531548, 33.208179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267488, 30.716515, 33.552807>,  <28.317760, 30.827494, 33.759583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267488, 30.716515, 33.552807>,  <28.183702, 30.531548, 33.208179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267488, 30.716515, 33.552807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917211, -0.398295, -0.009221,
		0.338893, 0.792170, -0.507562,
		0.209464, 0.462416, 0.861566,
		28.330328, 30.855240, 33.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648548, 31.115261, 33.062485>,  <28.183702, 30.531548, 33.208179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648548, 31.115261, 33.062485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643669, 30.919249, 33.411133>,  <28.640741, 30.801641, 33.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643669, 30.919249, 33.411133>,  <28.648548, 31.115261, 33.062485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643669, 30.919249, 33.411133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973531, -0.204779, -0.101504,
		0.228229, 0.847311, 0.479557,
		-0.012198, -0.490030, 0.871620,
		28.640009, 30.772240, 33.672619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321993, 31.302603, 33.370037>,  <28.648548, 31.115261, 33.062485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321993, 31.302603, 33.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579910, 31.563332, 33.529720>,  <29.734661, 31.719769, 33.625530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579910, 31.563332, 33.529720>,  <29.321993, 31.302603, 33.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579910, 31.563332, 33.529720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721851, -0.691025, -0.037620,
		0.251341, 0.312425, -0.916088,
		0.644793, 0.651824, 0.399207,
		29.773348, 31.758879, 33.649483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040230, 31.334724, 33.022827>,  <29.321993, 31.302603, 33.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040230, 31.334724, 33.022827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099611, 31.496624, 33.383747>,  <30.135241, 31.593763, 33.600300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099611, 31.496624, 33.383747>,  <30.040230, 31.334724, 33.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099611, 31.496624, 33.383747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875241, -0.478501, 0.070644,
		0.460343, 0.779240, -0.425289,
		0.148452, 0.404750, 0.902296,
		30.144148, 31.618050, 33.654434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777842, 31.568213, 33.111324>,  <30.040230, 31.334724, 33.022827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777842, 31.568213, 33.111324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661484, 31.420353, 33.464310>,  <30.591669, 31.331636, 33.676102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661484, 31.420353, 33.464310>,  <30.777842, 31.568213, 33.111324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661484, 31.420353, 33.464310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862203, -0.501081, 0.074323,
		0.414712, 0.782482, 0.464474,
		-0.290896, -0.369648, 0.882462,
		30.574215, 31.309458, 33.729050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429152, 31.469427, 33.514931>,  <30.777842, 31.568213, 33.111324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429152, 31.469427, 33.514931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160652, 31.287586, 33.749115>,  <30.999552, 31.178482, 33.889626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160652, 31.287586, 33.749115>,  <31.429152, 31.469427, 33.514931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160652, 31.287586, 33.749115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735650, -0.311833, 0.601315,
		-0.090795, 0.834324, 0.543746,
		-0.671249, -0.454603, 0.585457,
		30.959278, 31.151205, 33.924751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368322, 30.860405, 33.113197>,  <31.429152, 31.469427, 33.514931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368322, 30.860405, 33.113197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019516, 30.701382, 33.227417>,  <30.810232, 30.605967, 33.295948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019516, 30.701382, 33.227417>,  <31.368322, 30.860405, 33.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019516, 30.701382, 33.227417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433152, -0.898449, 0.071891,
		0.227969, 0.186376, 0.955664,
		-0.872014, -0.397559, 0.285548,
		30.757912, 30.582113, 33.313080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409519, 30.401794, 33.819817>,  <31.368322, 30.860405, 33.113197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409519, 30.401794, 33.819817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105368, 30.293568, 33.583641>,  <30.922876, 30.228632, 33.441936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105368, 30.293568, 33.583641>,  <31.409519, 30.401794, 33.819817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105368, 30.293568, 33.583641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295901, -0.953581, 0.055911,
		-0.578157, -0.132197, 0.805145,
		-0.760380, -0.270568, -0.590436,
		30.877254, 30.212397, 33.406509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067089, 29.812889, 34.163948>,  <31.409519, 30.401794, 33.819817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067089, 29.812889, 34.163948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979193, 29.774202, 33.775646>,  <30.926455, 29.750990, 33.542667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979193, 29.774202, 33.775646>,  <31.067089, 29.812889, 34.163948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979193, 29.774202, 33.775646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228220, -0.972558, 0.045239,
		-0.948489, -0.211604, 0.235782,
		-0.219739, -0.096719, -0.970752,
		30.913271, 29.745186, 33.484421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674278, 29.182650, 34.020473>,  <31.067089, 29.812889, 34.163948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674278, 29.182650, 34.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918514, 29.245579, 33.710007>,  <31.065056, 29.283337, 33.523727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918514, 29.245579, 33.710007>,  <30.674278, 29.182650, 34.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918514, 29.245579, 33.710007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367994, -0.924199, 0.102161,
		-0.701259, -0.348002, -0.622199,
		0.610588, 0.157324, -0.776165,
		31.101690, 29.292776, 33.477158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522305, 28.650175, 33.391823>,  <30.674278, 29.182650, 34.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522305, 28.650175, 33.391823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906151, 28.756241, 33.429398>,  <31.136459, 28.819880, 33.451942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906151, 28.756241, 33.429398>,  <30.522305, 28.650175, 33.391823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906151, 28.756241, 33.429398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266500, -0.963833, -0.001735,
		0.090077, 0.026698, -0.995577,
		0.959617, 0.265165, 0.093934,
		31.194036, 28.835791, 33.457577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876854, 28.143679, 33.037796>,  <30.522305, 28.650175, 33.391823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876854, 28.143679, 33.037796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161186, 28.302685, 33.269901>,  <31.331785, 28.398088, 33.409164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161186, 28.302685, 33.269901>,  <30.876854, 28.143679, 33.037796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161186, 28.302685, 33.269901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411503, -0.904091, 0.115258,
		0.570424, 0.156849, -0.806235,
		0.710832, 0.397514, 0.580259,
		31.374435, 28.421940, 33.443977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586653, 27.892513, 32.814777>,  <30.876854, 28.143679, 33.037796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586653, 27.892513, 32.814777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637749, 28.002949, 33.195820>,  <31.668406, 28.069210, 33.424446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637749, 28.002949, 33.195820>,  <31.586653, 27.892513, 32.814777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637749, 28.002949, 33.195820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421317, -0.884612, 0.199885,
		0.897872, 0.375816, -0.229321,
		0.127740, 0.276088, 0.952606,
		31.676071, 28.085775, 33.481602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215427, 27.820259, 32.879631>,  <31.586653, 27.892513, 32.814777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215427, 27.820259, 32.879631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062607, 27.811378, 33.249180>,  <31.970915, 27.806049, 33.470909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062607, 27.811378, 33.249180>,  <32.215427, 27.820259, 32.879631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062607, 27.811378, 33.249180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560061, -0.800773, 0.212356,
		0.735099, 0.598557, 0.318370,
		-0.382048, -0.022204, 0.923876,
		31.947992, 27.804718, 33.526344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760010, 27.780041, 33.453693>,  <32.215427, 27.820259, 32.879631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760010, 27.780041, 33.453693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412895, 27.622524, 33.574936>,  <32.204628, 27.528015, 33.647682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412895, 27.622524, 33.574936>,  <32.760010, 27.780041, 33.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412895, 27.622524, 33.574936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471908, -0.844166, 0.254336,
		0.155717, 0.363748, 0.918390,
		-0.867788, -0.393791, 0.303106,
		32.152557, 27.504387, 33.665867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748814, 27.620588, 34.245686>,  <32.760010, 27.780041, 33.453693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748814, 27.620588, 34.245686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484821, 27.388624, 34.054634>,  <32.326427, 27.249445, 33.940002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484821, 27.388624, 34.054634>,  <32.748814, 27.620588, 34.245686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484821, 27.388624, 34.054634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462910, -0.814624, 0.349432,
		-0.591727, 0.009520, 0.806083,
		-0.659981, -0.579912, -0.477627,
		32.286827, 27.214651, 33.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259857, 27.154650, 34.679081>,  <32.748814, 27.620588, 34.245686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259857, 27.154650, 34.679081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398712, 27.048502, 34.319286>,  <32.482025, 26.984814, 34.103409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398712, 27.048502, 34.319286>,  <32.259857, 27.154650, 34.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398712, 27.048502, 34.319286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566846, -0.704724, 0.426672,
		-0.747115, -0.657984, -0.094213,
		0.347137, -0.265369, -0.899486,
		32.502853, 26.968891, 34.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449219, 27.328264, 34.557400>,  <32.259857, 27.154650, 34.679081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449219, 27.328264, 34.557400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767937, 27.470139, 34.361721>,  <31.959167, 27.555264, 34.244312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767937, 27.470139, 34.361721>,  <31.449219, 27.328264, 34.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767937, 27.470139, 34.361721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506870, 0.833056, -0.221586,
		0.328934, 0.424518, 0.843556,
		0.796797, 0.354686, -0.489196,
		32.006977, 27.576544, 34.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574286, 28.035858, 34.754547>,  <31.449219, 27.328264, 34.557400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574286, 28.035858, 34.754547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719345, 27.974054, 34.386936>,  <31.806381, 27.936972, 34.166370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719345, 27.974054, 34.386936>,  <31.574286, 28.035858, 34.754547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719345, 27.974054, 34.386936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334682, 0.898778, -0.283170,
		0.869755, 0.410274, 0.274229,
		0.362648, -0.154509, -0.919028,
		31.828140, 27.927702, 34.111229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960453, 28.575293, 34.626316>,  <31.574286, 28.035858, 34.754547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960453, 28.575293, 34.626316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883213, 28.421917, 34.265053>,  <31.836870, 28.329891, 34.048294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883213, 28.421917, 34.265053>,  <31.960453, 28.575293, 34.626316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883213, 28.421917, 34.265053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250751, 0.909198, -0.332391,
		0.948597, 0.162283, -0.271712,
		-0.193098, -0.383438, -0.903155,
		31.825283, 28.306885, 33.994106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343548, 28.941769, 34.148273>,  <31.960453, 28.575293, 34.626316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343548, 28.941769, 34.148273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037067, 28.779461, 33.948959>,  <31.853178, 28.682077, 33.829372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037067, 28.779461, 33.948959>,  <32.343548, 28.941769, 34.148273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037067, 28.779461, 33.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248626, 0.902220, -0.352399,
		0.592551, -0.146124, -0.792169,
		-0.766204, -0.405768, -0.498281,
		31.807207, 28.657730, 33.799477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413166, 29.194199, 33.548019>,  <32.343548, 28.941769, 34.148273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413166, 29.194199, 33.548019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026123, 29.093212, 33.547596>,  <31.793898, 29.032619, 33.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026123, 29.093212, 33.547596>,  <32.413166, 29.194199, 33.548019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026123, 29.093212, 33.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252288, 0.967061, -0.033815,
		0.009565, -0.032451, -0.999428,
		-0.967605, -0.252467, -0.001062,
		31.735842, 29.017471, 33.547276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714699, 28.941105, 32.979561>,  <32.413166, 29.194199, 33.548019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714699, 28.941105, 32.979561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555138, 29.176075, 32.697906>,  <32.459400, 29.317057, 32.528912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555138, 29.176075, 32.697906>,  <32.714699, 28.941105, 32.979561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555138, 29.176075, 32.697906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608401, -0.404985, -0.682522,
		-0.686096, -0.700655, -0.195843,
		-0.398899, 0.587427, -0.704137,
		32.435467, 29.352303, 32.486664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721851, 28.576378, 32.355080>,  <32.714699, 28.941105, 32.979561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721851, 28.576378, 32.355080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657963, 28.947777, 32.220985>,  <32.619629, 29.170616, 32.140530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657963, 28.947777, 32.220985>,  <32.721851, 28.576378, 32.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657963, 28.947777, 32.220985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591115, -0.182026, -0.785780,
		-0.790615, -0.323671, -0.519773,
		-0.159722, 0.928495, -0.335240,
		32.610046, 29.226326, 32.120415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420364, 28.501026, 31.675016>,  <32.721851, 28.576378, 32.355080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420364, 28.501026, 31.675016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599564, 28.858616, 31.679117>,  <32.707085, 29.073170, 31.681578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599564, 28.858616, 31.679117>,  <32.420364, 28.501026, 31.675016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599564, 28.858616, 31.679117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530932, -0.256805, -0.807566,
		-0.719312, 0.367230, -0.589688,
		0.447997, 0.893976, 0.010251,
		32.733963, 29.126808, 31.682192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330715, 28.625019, 31.047461>,  <32.420364, 28.501026, 31.675016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330715, 28.625019, 31.047461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619991, 28.871853, 31.171530>,  <32.793556, 29.019953, 31.245972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619991, 28.871853, 31.171530>,  <32.330715, 28.625019, 31.047461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619991, 28.871853, 31.171530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538113, -0.221919, -0.813134,
		-0.432937, 0.754957, -0.492550,
		0.723187, 0.617083, 0.310175,
		32.836948, 29.056978, 31.264582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632465, 28.875288, 30.456848>,  <32.330715, 28.625019, 31.047461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632465, 28.875288, 30.456848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905819, 28.947084, 30.739908>,  <33.069832, 28.990162, 30.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905819, 28.947084, 30.739908>,  <32.632465, 28.875288, 30.456848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905819, 28.947084, 30.739908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722097, -0.308939, -0.618978,
		0.107519, 0.933991, -0.340734,
		0.683386, 0.179491, 0.707649,
		33.110836, 29.000933, 30.952204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237576, 29.119410, 30.140339>,  <32.632465, 28.875288, 30.456848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237576, 29.119410, 30.140339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356888, 28.959190, 30.486885>,  <33.428474, 28.863058, 30.694813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356888, 28.959190, 30.486885>,  <33.237576, 29.119410, 30.140339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356888, 28.959190, 30.486885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768970, -0.436864, -0.466729,
		0.565431, 0.805426, 0.177699,
		0.298285, -0.400548, 0.866364,
		33.446373, 28.839025, 30.746794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006756, 29.270926, 30.186687>,  <33.237576, 29.119410, 30.140339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006756, 29.270926, 30.186687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923779, 28.977680, 30.445766>,  <33.873993, 28.801733, 30.601213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923779, 28.977680, 30.445766>,  <34.006756, 29.270926, 30.186687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923779, 28.977680, 30.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819549, -0.491759, -0.294129,
		0.534140, 0.469803, 0.702837,
		-0.207444, -0.733115, 0.647695,
		33.861546, 28.757746, 30.640076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618366, 29.080788, 30.429111>,  <34.006756, 29.270926, 30.186687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618366, 29.080788, 30.429111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404488, 28.754013, 30.515568>,  <34.276161, 28.557949, 30.567442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404488, 28.754013, 30.515568>,  <34.618366, 29.080788, 30.429111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404488, 28.754013, 30.515568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652143, -0.561574, -0.509259,
		0.537412, -0.131343, 0.833029,
		-0.534695, -0.816936, 0.216142,
		34.244080, 28.508932, 30.580410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077946, 28.569147, 30.768715>,  <34.618366, 29.080788, 30.429111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077946, 28.569147, 30.768715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786629, 28.323992, 30.646105>,  <34.611839, 28.176899, 30.572538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786629, 28.323992, 30.646105>,  <35.077946, 28.569147, 30.768715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786629, 28.323992, 30.646105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684406, -0.672953, -0.280574,
		-0.034318, -0.414129, 0.909571,
		-0.728293, -0.612888, -0.306527,
		34.568142, 28.140125, 30.554146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244598, 28.006315, 30.956570>,  <35.077946, 28.569147, 30.768715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244598, 28.006315, 30.956570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983833, 27.889662, 30.676582>,  <34.827374, 27.819670, 30.508589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983833, 27.889662, 30.676582>,  <35.244598, 28.006315, 30.956570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983833, 27.889662, 30.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634783, -0.714827, -0.293382,
		-0.414797, -0.635589, 0.651129,
		-0.651915, -0.291632, -0.699969,
		34.788258, 27.802172, 30.466591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317032, 27.199633, 30.870914>,  <35.244598, 28.006315, 30.956570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317032, 27.199633, 30.870914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143578, 27.320107, 30.531210>,  <35.039505, 27.392391, 30.327387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143578, 27.320107, 30.531210>,  <35.317032, 27.199633, 30.870914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143578, 27.320107, 30.531210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598115, -0.608713, -0.521274,
		-0.673957, -0.734000, 0.083818,
		-0.433636, 0.301183, -0.849263,
		35.013485, 27.410461, 30.276430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343777, 26.600428, 30.452492>,  <35.317032, 27.199633, 30.870914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343777, 26.600428, 30.452492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291073, 26.910730, 30.205643>,  <35.259449, 27.096912, 30.057533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291073, 26.910730, 30.205643>,  <35.343777, 26.600428, 30.452492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291073, 26.910730, 30.205643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536268, -0.467800, -0.702552,
		-0.833699, -0.423513, -0.354375,
		-0.131763, 0.775757, -0.617121,
		35.251545, 27.143457, 30.020506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487164, 26.295652, 29.809502>,  <35.343777, 26.600428, 30.452492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487164, 26.295652, 29.809502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519508, 26.686571, 29.731167>,  <35.538914, 26.921122, 29.684166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519508, 26.686571, 29.731167>,  <35.487164, 26.295652, 29.809502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519508, 26.686571, 29.731167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695765, -0.196034, -0.691000,
		-0.713703, -0.080384, -0.695820,
		0.080859, 0.977297, -0.195838,
		35.543766, 26.979761, 29.672415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510063, 26.381311, 29.092894>,  <35.487164, 26.295652, 29.809502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510063, 26.381311, 29.092894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665104, 26.728422, 29.217300>,  <35.758129, 26.936689, 29.291945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665104, 26.728422, 29.217300>,  <35.510063, 26.381311, 29.092894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665104, 26.728422, 29.217300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656452, -0.022966, -0.754018,
		-0.647177, 0.496423, -0.578555,
		0.387599, 0.867777, 0.311015,
		35.781384, 26.988754, 29.310604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267639, 26.854939, 28.646755>,  <35.510063, 26.381311, 29.092894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267639, 26.854939, 28.646755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603901, 26.997889, 28.809526>,  <35.805656, 27.083658, 28.907188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603901, 26.997889, 28.809526>,  <35.267639, 26.854939, 28.646755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603901, 26.997889, 28.809526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397488, 0.103201, -0.911785,
		-0.367844, 0.928242, -0.055296,
		0.840651, 0.357374, 0.406927,
		35.856094, 27.105101, 28.931604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584965, 27.402514, 28.251259>,  <35.267639, 26.854939, 28.646755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584965, 27.402514, 28.251259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916946, 27.292364, 28.445309>,  <36.116135, 27.226274, 28.561739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916946, 27.292364, 28.445309>,  <35.584965, 27.402514, 28.251259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916946, 27.292364, 28.445309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508407, 0.015516, -0.860977,
		0.229563, 0.961212, 0.152879,
		0.829954, -0.275373, 0.485125,
		36.165932, 27.209753, 28.590847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105984, 27.962543, 28.067215>,  <35.584965, 27.402514, 28.251259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105984, 27.962543, 28.067215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274872, 27.622921, 28.194233>,  <36.376205, 27.419147, 28.270445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274872, 27.622921, 28.194233>,  <36.105984, 27.962543, 28.067215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274872, 27.622921, 28.194233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504602, -0.070874, -0.860438,
		0.753066, 0.523527, 0.398511,
		0.422219, -0.849056, 0.317546,
		36.401539, 27.368204, 28.289497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840935, 28.076187, 28.121828>,  <36.105984, 27.962543, 28.067215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840935, 28.076187, 28.121828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759579, 27.685549, 28.093851>,  <36.710766, 27.451166, 28.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759579, 27.685549, 28.093851>,  <36.840935, 28.076187, 28.121828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759579, 27.685549, 28.093851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626750, -0.074978, -0.775605,
		0.752209, -0.201585, 0.627332,
		-0.203386, -0.976597, -0.069945,
		36.698563, 27.392570, 28.072868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489998, 27.821066, 27.841173>,  <36.840935, 28.076187, 28.121828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489998, 27.821066, 27.841173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223404, 27.530689, 27.773287>,  <37.063446, 27.356464, 27.732555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223404, 27.530689, 27.773287>,  <37.489998, 27.821066, 27.841173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223404, 27.530689, 27.773287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501997, -0.268697, -0.822071,
		0.551172, -0.633098, 0.543504,
		-0.666490, -0.725940, -0.169715,
		37.023457, 27.312908, 27.722372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902061, 27.266266, 27.611820>,  <37.489998, 27.821066, 27.841173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902061, 27.266266, 27.611820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528999, 27.175257, 27.499823>,  <37.305164, 27.120651, 27.432625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528999, 27.175257, 27.499823>,  <37.902061, 27.266266, 27.611820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528999, 27.175257, 27.499823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346870, -0.352072, -0.869325,
		0.099213, -0.907898, 0.407281,
		-0.932651, -0.227522, -0.279993,
		37.249203, 27.107000, 27.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894650, 26.552588, 27.251032>,  <37.902061, 27.266266, 27.611820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894650, 26.552588, 27.251032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545830, 26.707859, 27.131807>,  <37.336536, 26.801022, 27.060272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545830, 26.707859, 27.131807>,  <37.894650, 26.552588, 27.251032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545830, 26.707859, 27.131807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083396, -0.482252, -0.872054,
		-0.482252, -0.785335, 0.388178,
		0.872054, -0.388178, 0.298061,
		37.284214, 26.824312, 27.042389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581345, 26.031334, 27.019312>,  <37.894650, 26.552588, 27.251032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581345, 26.031334, 27.019312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423252, 26.357510, 26.850147>,  <37.328396, 26.553215, 26.748648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423252, 26.357510, 26.850147>,  <37.581345, 26.031334, 27.019312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423252, 26.357510, 26.850147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064067, -0.434805, -0.898243,
		-0.916346, -0.382106, 0.119605,
		-0.395229, 0.815438, -0.422912,
		37.304684, 26.602140, 26.723274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318020, 25.848902, 26.335693>,  <37.581345, 26.031334, 27.019312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318020, 25.848902, 26.335693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331894, 26.246674, 26.295872>,  <37.340218, 26.485336, 26.271978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331894, 26.246674, 26.295872>,  <37.318020, 25.848902, 26.335693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331894, 26.246674, 26.295872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393798, -0.105152, -0.913163,
		-0.918543, -0.007533, -0.395251,
		0.034683, 0.994428, -0.099553,
		37.342300, 26.545002, 26.266006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956406, 26.035473, 25.634619>,  <37.318020, 25.848902, 26.335693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956406, 26.035473, 25.634619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201782, 26.341276, 25.713839>,  <37.349007, 26.524757, 25.761370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201782, 26.341276, 25.713839>,  <36.956406, 26.035473, 25.634619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201782, 26.341276, 25.713839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395370, -0.080208, -0.915013,
		-0.683648, 0.639607, -0.351466,
		0.613439, 0.764506, 0.198048,
		37.385815, 26.570627, 25.773252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996811, 26.353249, 24.999672>,  <36.956406, 26.035473, 25.634619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996811, 26.353249, 24.999672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301575, 26.503895, 25.210443>,  <37.484432, 26.594282, 25.336906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301575, 26.503895, 25.210443>,  <36.996811, 26.353249, 24.999672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301575, 26.503895, 25.210443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591087, -0.071722, -0.803412,
		-0.264785, 0.923589, -0.277259,
		0.761909, 0.376616, 0.526931,
		37.530148, 26.616880, 25.368523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278393, 26.862385, 24.552696>,  <36.996811, 26.353249, 24.999672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278393, 26.862385, 24.552696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573383, 26.783979, 24.811216>,  <37.750378, 26.736937, 24.966330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573383, 26.783979, 24.811216>,  <37.278393, 26.862385, 24.552696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573383, 26.783979, 24.811216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666243, 0.054328, -0.743753,
		0.110673, 0.979095, 0.170658,
		0.737477, -0.196013, 0.646302,
		37.794628, 26.725176, 25.005108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706322, 27.292215, 24.805092>,  <37.278393, 26.862385, 24.552696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706322, 27.292215, 24.805092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968380, 26.993975, 24.853840>,  <38.125614, 26.815029, 24.883089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968380, 26.993975, 24.853840>,  <37.706322, 27.292215, 24.805092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968380, 26.993975, 24.853840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621135, 0.439748, -0.648701,
		0.430080, 0.500696, 0.751222,
		0.655150, -0.745604, 0.121872,
		38.164925, 26.770294, 24.890402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406731, 27.567099, 24.757359>,  <37.706322, 27.292215, 24.805092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406731, 27.567099, 24.757359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474659, 27.179081, 24.687878>,  <38.515415, 26.946270, 24.646189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474659, 27.179081, 24.687878>,  <38.406731, 27.567099, 24.757359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474659, 27.179081, 24.687878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673821, 0.242921, -0.697822,
		0.719114, 0.001464, 0.694890,
		0.169825, -0.970045, -0.173702,
		38.525608, 26.888067, 24.635767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136642, 27.423971, 24.771044>,  <38.406731, 27.567099, 24.757359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136642, 27.423971, 24.771044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041142, 27.084389, 24.582460>,  <38.983841, 26.880640, 24.469311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041142, 27.084389, 24.582460>,  <39.136642, 27.423971, 24.771044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041142, 27.084389, 24.582460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696513, 0.188592, -0.692317,
		0.676660, -0.493669, 0.546281,
		-0.238751, -0.848955, -0.471459,
		38.969517, 26.829702, 24.441023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766056, 27.075788, 24.576931>,  <39.136642, 27.423971, 24.771044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766056, 27.075788, 24.576931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479027, 26.952625, 24.327040>,  <39.306808, 26.878727, 24.177105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479027, 26.952625, 24.327040>,  <39.766056, 27.075788, 24.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479027, 26.952625, 24.327040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602248, 0.176243, -0.778612,
		0.349844, -0.934950, 0.058970,
		-0.717570, -0.307907, -0.624729,
		39.263756, 26.860252, 24.139622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106155, 26.677771, 24.089338>,  <39.766056, 27.075788, 24.576931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106155, 26.677771, 24.089338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749409, 26.761557, 23.928993>,  <39.535358, 26.811829, 23.832787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749409, 26.761557, 23.928993>,  <40.106155, 26.677771, 24.089338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749409, 26.761557, 23.928993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452138, 0.389973, -0.802179,
		-0.011704, -0.896686, -0.442514,
		-0.891871, 0.209466, -0.400862,
		39.481846, 26.824396, 23.808735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085938, 26.367214, 23.479029>,  <40.106155, 26.677771, 24.089338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085938, 26.367214, 23.479029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813152, 26.655460, 23.429008>,  <39.649483, 26.828407, 23.398996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813152, 26.655460, 23.429008>,  <40.085938, 26.367214, 23.479029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813152, 26.655460, 23.429008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443623, 0.271622, -0.854061,
		-0.581484, -0.637913, -0.504918,
		-0.681964, 0.720616, -0.125049,
		39.608562, 26.871645, 23.391495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735611, 26.287554, 22.760841>,  <40.085938, 26.367214, 23.479029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735611, 26.287554, 22.760841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681419, 26.669575, 22.866304>,  <39.648903, 26.898788, 22.929583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681419, 26.669575, 22.866304>,  <39.735611, 26.287554, 22.760841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681419, 26.669575, 22.866304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452707, 0.296380, -0.840961,
		-0.881307, 0.005426, -0.472514,
		-0.135481, 0.955055, 0.263658,
		39.640774, 26.956091, 22.945402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678894, 26.604769, 22.160204>,  <39.735611, 26.287554, 22.760841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678894, 26.604769, 22.160204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754719, 26.915174, 22.400826>,  <39.800213, 27.101418, 22.545198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754719, 26.915174, 22.400826>,  <39.678894, 26.604769, 22.160204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754719, 26.915174, 22.400826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577363, 0.407448, -0.707558,
		-0.794177, 0.481441, -0.370806,
		0.189563, 0.776016, 0.601552,
		39.811588, 27.147980, 22.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541466, 27.285332, 21.781853>,  <39.678894, 26.604769, 22.160204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541466, 27.285332, 21.781853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784100, 27.394314, 22.080605>,  <39.929680, 27.459703, 22.259855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784100, 27.394314, 22.080605>,  <39.541466, 27.285332, 21.781853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784100, 27.394314, 22.080605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548091, 0.537200, -0.641102,
		-0.575895, 0.798238, 0.176525,
		0.606581, 0.272456, 0.746878,
		39.966072, 27.476051, 22.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537807, 27.984169, 21.779305>,  <39.541466, 27.285332, 21.781853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537807, 27.984169, 21.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876350, 27.897705, 21.974018>,  <40.079475, 27.845827, 22.090847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876350, 27.897705, 21.974018>,  <39.537807, 27.984169, 21.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876350, 27.897705, 21.974018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518283, 0.544870, -0.659165,
		-0.122748, 0.810180, 0.573186,
		0.846354, -0.216161, 0.486784,
		40.130257, 27.832857, 22.120054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990501, 28.639265, 21.939955>,  <39.537807, 27.984169, 21.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990501, 28.639265, 21.939955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235027, 28.322721, 21.937319>,  <40.381744, 28.132795, 21.935738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235027, 28.322721, 21.937319>,  <39.990501, 28.639265, 21.939955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235027, 28.322721, 21.937319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642581, 0.501217, -0.579544,
		0.461929, 0.350051, 0.814915,
		0.611319, -0.791357, -0.006590,
		40.418423, 28.085314, 21.935341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481709, 28.884020, 21.498072>,  <39.990501, 28.639265, 21.939955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481709, 28.884020, 21.498072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645901, 28.534529, 21.602459>,  <40.744415, 28.324833, 21.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645901, 28.534529, 21.602459>,  <40.481709, 28.884020, 21.498072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645901, 28.534529, 21.602459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712141, 0.128413, -0.690192,
		0.569529, 0.469156, 0.674929,
		0.410478, -0.873729, 0.260970,
		40.769043, 28.272409, 21.680750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140816, 28.895824, 21.571125>,  <40.481709, 28.884020, 21.498072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140816, 28.895824, 21.571125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021126, 28.527006, 21.472904>,  <40.949310, 28.305716, 21.413971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021126, 28.527006, 21.472904>,  <41.140816, 28.895824, 21.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021126, 28.527006, 21.472904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491570, 0.071603, -0.867889,
		0.817815, -0.380402, 0.431825,
		-0.299228, -0.922045, -0.245552,
		40.931358, 28.250393, 21.399239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749249, 28.493990, 21.445736>,  <41.140816, 28.895824, 21.571125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749249, 28.493990, 21.445736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437172, 28.329090, 21.257545>,  <41.249924, 28.230150, 21.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437172, 28.329090, 21.257545>,  <41.749249, 28.493990, 21.445736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437172, 28.329090, 21.257545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519385, -0.007757, -0.854505,
		0.348621, -0.911037, 0.220169,
		-0.780194, -0.412250, -0.470475,
		41.203114, 28.205416, 21.116404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095257, 28.023943, 21.013287>,  <41.749249, 28.493990, 21.445736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095257, 28.023943, 21.013287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729008, 28.068487, 20.858765>,  <41.509258, 28.095215, 20.766052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729008, 28.068487, 20.858765>,  <42.095257, 28.023943, 21.013287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729008, 28.068487, 20.858765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376346, -0.100547, -0.921007,
		-0.141411, -0.988680, 0.050151,
		-0.915624, 0.111366, -0.386304,
		41.454319, 28.101896, 20.742874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024036, 27.461819, 20.624269>,  <42.095257, 28.023943, 21.013287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024036, 27.461819, 20.624269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791737, 27.755548, 20.483702>,  <41.652355, 27.931786, 20.399361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791737, 27.755548, 20.483702>,  <42.024036, 27.461819, 20.624269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791737, 27.755548, 20.483702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530051, 0.013449, -0.847859,
		-0.617877, -0.678665, -0.397040,
		-0.580752, 0.734325, -0.351418,
		41.617512, 27.975845, 20.378277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049671, 27.256332, 19.977571>,  <42.024036, 27.461819, 20.624269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049671, 27.256332, 19.977571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896702, 27.625898, 19.973001>,  <41.804920, 27.847639, 19.970261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896702, 27.625898, 19.973001>,  <42.049671, 27.256332, 19.977571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896702, 27.625898, 19.973001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324614, 0.122767, -0.937845,
		-0.865089, -0.362362, -0.346865,
		-0.382423, 0.923917, -0.011424,
		41.781975, 27.903074, 19.969574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808178, 27.325075, 19.317650>,  <42.049671, 27.256332, 19.977571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808178, 27.325075, 19.317650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849022, 27.699116, 19.453388>,  <41.873528, 27.923540, 19.534832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849022, 27.699116, 19.453388>,  <41.808178, 27.325075, 19.317650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849022, 27.699116, 19.453388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575670, 0.222660, -0.786782,
		-0.811281, 0.275690, -0.515575,
		0.102110, 0.935103, 0.339346,
		41.879654, 27.979647, 19.555191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648155, 27.727154, 18.754297>,  <41.808178, 27.325075, 19.317650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648155, 27.727154, 18.754297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901741, 27.922724, 18.993979>,  <42.053894, 28.040066, 19.137787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901741, 27.922724, 18.993979>,  <41.648155, 27.727154, 18.754297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901741, 27.922724, 18.993979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601192, 0.175810, -0.779524,
		-0.486473, 0.854427, -0.182479,
		0.633965, 0.488923, 0.599202,
		42.091930, 28.069401, 19.173738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192825, 27.889353, 18.408319>,  <41.648155, 27.727154, 18.754297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192825, 27.889353, 18.408319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318813, 28.104357, 18.721210>,  <42.394405, 28.233358, 18.908945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318813, 28.104357, 18.721210>,  <42.192825, 27.889353, 18.408319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318813, 28.104357, 18.721210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834500, 0.235765, -0.498021,
		-0.452112, 0.809630, -0.374292,
		0.314968, 0.537508, 0.782228,
		42.413303, 28.265610, 18.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397106, 28.479513, 18.070482>,  <42.192825, 27.889353, 18.408319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397106, 28.479513, 18.070482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580933, 28.432060, 18.422556>,  <42.691227, 28.403589, 18.633801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580933, 28.432060, 18.422556>,  <42.397106, 28.479513, 18.070482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580933, 28.432060, 18.422556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852605, 0.336475, -0.399812,
		-0.248730, 0.934190, 0.255778,
		0.459564, -0.118632, 0.880186,
		42.718803, 28.396471, 18.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743389, 29.126698, 18.300518>,  <42.397106, 28.479513, 18.070482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743389, 29.126698, 18.300518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961380, 28.832891, 18.462250>,  <43.092175, 28.656607, 18.559290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961380, 28.832891, 18.462250>,  <42.743389, 29.126698, 18.300518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961380, 28.832891, 18.462250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829038, 0.400012, -0.390752,
		0.125276, 0.548158, 0.826940,
		0.544979, -0.734516, 0.404332,
		43.124874, 28.612537, 18.583549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262840, 29.463703, 18.459797>,  <42.743389, 29.126698, 18.300518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262840, 29.463703, 18.459797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379833, 29.082094, 18.433571>,  <43.450027, 28.853128, 18.417835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379833, 29.082094, 18.433571>,  <43.262840, 29.463703, 18.459797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379833, 29.082094, 18.433571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878013, 0.295079, -0.376858,
		0.378878, 0.052657, 0.923948,
		0.292482, -0.954021, -0.065566,
		43.467579, 28.795887, 18.413900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991673, 30.128138, 18.054991>,  <43.262840, 29.463703, 18.459797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991673, 30.128138, 18.054991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911213, 30.518501, 18.021187>,  <42.862938, 30.752720, 18.000904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911213, 30.518501, 18.021187>,  <42.991673, 30.128138, 18.054991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911213, 30.518501, 18.021187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355187, 0.007737, 0.934763,
		0.912897, 0.218044, 0.345074,
		-0.201149, 0.975908, -0.084510,
		42.850868, 30.811274, 17.995834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131729, 30.501245, 18.761768>,  <42.991673, 30.128138, 18.054991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131729, 30.501245, 18.761768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847775, 30.693825, 18.556143>,  <42.677402, 30.809372, 18.432768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847775, 30.693825, 18.556143>,  <43.131729, 30.501245, 18.761768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847775, 30.693825, 18.556143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452032, 0.248278, 0.856753,
		0.540113, 0.840574, 0.041380,
		-0.709890, 0.481449, -0.514065,
		42.634808, 30.838259, 18.401924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000614, 31.224665, 19.055893>,  <43.131729, 30.501245, 18.761768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000614, 31.224665, 19.055893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657928, 31.089952, 18.899624>,  <42.452316, 31.009125, 18.805862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657928, 31.089952, 18.899624>,  <43.000614, 31.224665, 19.055893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657928, 31.089952, 18.899624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451955, 0.125151, 0.883218,
		-0.248557, 0.933229, -0.259428,
		-0.856712, -0.336780, -0.390671,
		42.400913, 30.988918, 18.782423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641090, 31.397116, 19.659542>,  <43.000614, 31.224665, 19.055893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641090, 31.397116, 19.659542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357315, 31.214687, 19.444622>,  <42.187050, 31.105230, 19.315670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357315, 31.214687, 19.444622>,  <42.641090, 31.397116, 19.659542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357315, 31.214687, 19.444622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598466, -0.012781, 0.801046,
		-0.372202, 0.889851, -0.263876,
		-0.709440, -0.456072, -0.537302,
		42.144482, 31.077866, 19.283432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037445, 31.739748, 19.600254>,  <42.641090, 31.397116, 19.659542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037445, 31.739748, 19.600254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891048, 31.373034, 19.536308>,  <41.803211, 31.153006, 19.497940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891048, 31.373034, 19.536308>,  <42.037445, 31.739748, 19.600254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891048, 31.373034, 19.536308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728944, 0.175621, 0.661663,
		-0.578527, 0.358693, -0.732561,
		-0.365987, -0.916786, -0.159865,
		41.781254, 31.097998, 19.488348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336987, 31.837749, 19.793489>,  <42.037445, 31.739748, 19.600254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336987, 31.837749, 19.793489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381958, 31.440443, 19.804680>,  <41.408943, 31.202059, 19.811394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381958, 31.440443, 19.804680>,  <41.336987, 31.837749, 19.793489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381958, 31.440443, 19.804680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618440, -0.047912, 0.784370,
		-0.777748, -0.105488, -0.619662,
		0.112431, -0.993266, 0.027974,
		41.415688, 31.142464, 19.813072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731865, 31.559109, 19.996744>,  <41.336987, 31.837749, 19.793489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731865, 31.559109, 19.996744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980381, 31.259163, 20.087696>,  <41.129490, 31.079195, 20.142267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980381, 31.259163, 20.087696>,  <40.731865, 31.559109, 19.996744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980381, 31.259163, 20.087696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557019, -0.218555, 0.801226,
		-0.551117, -0.624447, -0.553475,
		0.621288, -0.749866, 0.227380,
		41.166767, 31.034203, 20.155910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301342, 30.970001, 20.185116>,  <40.731865, 31.559109, 19.996744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301342, 30.970001, 20.185116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652332, 30.887922, 20.358522>,  <40.862926, 30.838675, 20.462566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652332, 30.887922, 20.358522>,  <40.301342, 30.970001, 20.185116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652332, 30.887922, 20.358522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478772, -0.428690, 0.766161,
		0.028631, -0.879841, -0.474405,
		0.877473, -0.205196, 0.433517,
		40.915573, 30.826363, 20.488577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239807, 30.310488, 20.418539>,  <40.301342, 30.970001, 20.185116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239807, 30.310488, 20.418539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516544, 30.490641, 20.644289>,  <40.682587, 30.598732, 20.779739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516544, 30.490641, 20.644289>,  <40.239807, 30.310488, 20.418539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516544, 30.490641, 20.644289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358330, -0.464426, 0.809881,
		0.626864, -0.762539, -0.159924,
		0.691839, 0.450380, 0.564373,
		40.724094, 30.625755, 20.813601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349762, 29.770613, 20.946390>,  <40.239807, 30.310488, 20.418539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349762, 29.770613, 20.946390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528717, 30.105463, 21.072287>,  <40.636089, 30.306374, 21.147825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528717, 30.105463, 21.072287>,  <40.349762, 29.770613, 20.946390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528717, 30.105463, 21.072287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336087, -0.168759, 0.926588,
		0.828786, -0.520328, 0.205846,
		0.447391, 0.837126, 0.314741,
		40.662933, 30.356600, 21.166708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697277, 29.572508, 21.493584>,  <40.349762, 29.770613, 20.946390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697277, 29.572508, 21.493584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672806, 29.969324, 21.537611>,  <40.658123, 30.207413, 21.564028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672806, 29.969324, 21.537611>,  <40.697277, 29.572508, 21.493584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672806, 29.969324, 21.537611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231364, -0.121363, 0.965268,
		0.970942, 0.033586, 0.236947,
		-0.061176, 0.992040, 0.110066,
		40.654453, 30.266935, 21.570631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926479, 29.692059, 22.116322>,  <40.697277, 29.572508, 21.493584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926479, 29.692059, 22.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731995, 30.036312, 22.055773>,  <40.615303, 30.242865, 22.019444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731995, 30.036312, 22.055773>,  <40.926479, 29.692059, 22.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731995, 30.036312, 22.055773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217859, 0.048371, 0.974781,
		0.846249, 0.506925, 0.163978,
		-0.486209, 0.860632, -0.151372,
		40.586132, 30.294502, 22.010361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259636, 30.253128, 22.528006>,  <40.926479, 29.692059, 22.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259636, 30.253128, 22.528006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880009, 30.347830, 22.444860>,  <40.652233, 30.404652, 22.394974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880009, 30.347830, 22.444860>,  <41.259636, 30.253128, 22.528006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880009, 30.347830, 22.444860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178469, 0.139703, 0.973977,
		0.259634, 0.961473, -0.090335,
		-0.949073, 0.236756, -0.207865,
		40.595287, 30.418856, 22.382502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182983, 30.822229, 22.871323>,  <41.259636, 30.253128, 22.528006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182983, 30.822229, 22.871323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813671, 30.685328, 22.801567>,  <40.592083, 30.603186, 22.759714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813671, 30.685328, 22.801567>,  <41.182983, 30.822229, 22.871323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813671, 30.685328, 22.801567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218930, 0.095825, 0.971024,
		-0.315627, 0.934708, -0.163403,
		-0.923282, -0.342255, -0.174391,
		40.536686, 30.582651, 22.749250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778549, 31.227175, 23.282936>,  <41.182983, 30.822229, 22.871323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778549, 31.227175, 23.282936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508797, 30.944822, 23.196276>,  <40.346943, 30.775412, 23.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508797, 30.944822, 23.196276>,  <40.778549, 31.227175, 23.282936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508797, 30.944822, 23.196276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434413, 0.142038, 0.889444,
		-0.597067, 0.693945, -0.402432,
		-0.674386, -0.705879, -0.216652,
		40.306480, 30.733059, 23.131281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175495, 31.460947, 23.573679>,  <40.778549, 31.227175, 23.282936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175495, 31.460947, 23.573679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091156, 31.073290, 23.522598>,  <40.040554, 30.840696, 23.491949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091156, 31.073290, 23.522598>,  <40.175495, 31.460947, 23.573679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091156, 31.073290, 23.522598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512113, -0.001764, 0.858916,
		-0.832638, 0.246495, -0.495938,
		-0.210844, -0.969143, -0.127702,
		40.027905, 30.782547, 23.484287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440556, 31.325266, 23.788385>,  <40.175495, 31.460947, 23.573679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440556, 31.325266, 23.788385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599937, 30.959236, 23.813293>,  <39.695564, 30.739618, 23.828239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599937, 30.959236, 23.813293>,  <39.440556, 31.325266, 23.788385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599937, 30.959236, 23.813293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523754, -0.171272, 0.834475,
		-0.752940, -0.365113, -0.547517,
		0.398452, -0.915073, 0.062272,
		39.719475, 30.684713, 23.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884037, 30.858850, 23.917017>,  <39.440556, 31.325266, 23.788385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884037, 30.858850, 23.917017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224304, 30.686159, 24.037003>,  <39.428463, 30.582544, 24.108994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224304, 30.686159, 24.037003>,  <38.884037, 30.858850, 23.917017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224304, 30.686159, 24.037003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402285, -0.167256, 0.900107,
		-0.338430, -0.886361, -0.315957,
		0.850666, -0.431728, 0.299965,
		39.479504, 30.556641, 24.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884140, 30.071461, 24.040890>,  <38.884037, 30.858850, 23.917017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884140, 30.071461, 24.040890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130924, 30.286968, 24.270355>,  <39.278996, 30.416273, 24.408035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130924, 30.286968, 24.270355>,  <38.884140, 30.071461, 24.040890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130924, 30.286968, 24.270355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506007, -0.286727, 0.813477,
		0.602762, -0.792159, 0.095723,
		0.616957, 0.538769, 0.573666,
		39.316010, 30.448599, 24.442455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044403, 29.667019, 24.597799>,  <38.884140, 30.071461, 24.040890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044403, 29.667019, 24.597799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105835, 30.041666, 24.723761>,  <39.142693, 30.266455, 24.799337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105835, 30.041666, 24.723761>,  <39.044403, 29.667019, 24.597799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105835, 30.041666, 24.723761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414438, -0.228243, 0.880992,
		0.897025, -0.265810, 0.353116,
		0.153580, 0.936616, 0.314901,
		39.151909, 30.322651, 24.818232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212757, 29.495394, 25.203285>,  <39.044403, 29.667019, 24.597799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212757, 29.495394, 25.203285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134781, 29.887709, 25.206226>,  <39.087997, 30.123098, 25.207991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134781, 29.887709, 25.206226>,  <39.212757, 29.495394, 25.203285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134781, 29.887709, 25.206226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465639, -0.099142, 0.879404,
		0.863238, 0.168003, 0.476019,
		-0.194936, 0.980788, 0.007354,
		39.076302, 30.181946, 25.208433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436333, 29.800636, 25.899504>,  <39.212757, 29.495394, 25.203285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436333, 29.800636, 25.899504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182159, 30.068750, 25.746168>,  <39.029655, 30.229618, 25.654167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182159, 30.068750, 25.746168>,  <39.436333, 29.800636, 25.899504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182159, 30.068750, 25.746168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475537, 0.051429, 0.878191,
		0.608352, 0.740320, 0.286065,
		-0.635430, 0.670284, -0.383337,
		38.991531, 30.269836, 25.631166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289646, 30.258284, 26.437943>,  <39.436333, 29.800636, 25.899504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289646, 30.258284, 26.437943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974224, 30.342505, 26.206825>,  <38.784969, 30.393036, 26.068155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974224, 30.342505, 26.206825>,  <39.289646, 30.258284, 26.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974224, 30.342505, 26.206825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572122, 0.093350, 0.814839,
		0.225502, 0.973116, 0.046849,
		-0.788559, 0.210551, -0.577791,
		38.737656, 30.405670, 26.033487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904766, 30.677160, 26.837614>,  <39.289646, 30.258284, 26.437943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904766, 30.677160, 26.837614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636723, 30.568674, 26.561237>,  <38.475899, 30.503582, 26.395411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636723, 30.568674, 26.561237>,  <38.904766, 30.677160, 26.837614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636723, 30.568674, 26.561237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716504, -0.006763, 0.697550,
		-0.193860, 0.962495, -0.189796,
		-0.670105, -0.271216, -0.690943,
		38.435692, 30.487309, 26.353954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321545, 31.247986, 26.863983>,  <38.904766, 30.677160, 26.837614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321545, 31.247986, 26.863983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210060, 30.891417, 26.721052>,  <38.143169, 30.677475, 26.635294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210060, 30.891417, 26.721052>,  <38.321545, 31.247986, 26.863983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210060, 30.891417, 26.721052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791940, 0.002850, 0.610592,
		-0.543279, 0.453159, -0.706750,
		-0.278710, -0.891425, -0.357326,
		38.126446, 30.623989, 26.613853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687298, 31.328276, 26.624336>,  <38.321545, 31.247986, 26.863983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687298, 31.328276, 26.624336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712948, 30.929909, 26.649738>,  <37.728340, 30.690887, 26.664980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712948, 30.929909, 26.649738>,  <37.687298, 31.328276, 26.624336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712948, 30.929909, 26.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922976, -0.034992, 0.383265,
		-0.379479, -0.083192, -0.921453,
		0.064128, -0.995919, 0.063505,
		37.732185, 30.631132, 26.668791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020821, 31.019951, 26.379625>,  <37.687298, 31.328276, 26.624336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020821, 31.019951, 26.379625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201973, 30.756561, 26.620062>,  <37.310665, 30.598528, 26.764324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201973, 30.756561, 26.620062>,  <37.020821, 31.019951, 26.379625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201973, 30.756561, 26.620062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864950, -0.160967, 0.475343,
		-0.216246, -0.735186, -0.642448,
		0.452878, -0.658477, 0.601090,
		37.337837, 30.559019, 26.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492809, 30.425594, 26.459715>,  <37.020821, 31.019951, 26.379625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492809, 30.425594, 26.459715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756966, 30.406151, 26.759453>,  <36.915459, 30.394485, 26.939297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756966, 30.406151, 26.759453>,  <36.492809, 30.425594, 26.459715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756966, 30.406151, 26.759453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728976, -0.280979, 0.624215,
		0.180209, -0.958482, -0.220990,
		0.660392, -0.048607, 0.749346,
		36.955082, 30.391569, 26.984257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300728, 29.844679, 26.867699>,  <36.492809, 30.425594, 26.459715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300728, 29.844679, 26.867699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530151, 30.065861, 27.109449>,  <36.667805, 30.198570, 27.254499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530151, 30.065861, 27.109449>,  <36.300728, 29.844679, 26.867699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530151, 30.065861, 27.109449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698692, -0.054916, 0.713312,
		0.427618, -0.831401, 0.354847,
		0.573561, 0.552953, 0.604376,
		36.702221, 30.231747, 27.290762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246529, 29.540064, 27.561686>,  <36.300728, 29.844679, 26.867699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246529, 29.540064, 27.561686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405930, 29.898840, 27.638304>,  <36.501572, 30.114105, 27.684275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405930, 29.898840, 27.638304>,  <36.246529, 29.540064, 27.561686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405930, 29.898840, 27.638304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644079, 0.124994, 0.754678,
		0.652961, -0.424111, 0.627512,
		0.398503, 0.896943, 0.191545,
		36.525482, 30.167923, 27.695766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451477, 29.509029, 28.268173>,  <36.246529, 29.540064, 27.561686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451477, 29.509029, 28.268173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408474, 29.892851, 28.164097>,  <36.382671, 30.123144, 28.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408474, 29.892851, 28.164097>,  <36.451477, 29.509029, 28.268173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408474, 29.892851, 28.164097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663910, 0.125514, 0.737204,
		0.740044, 0.252003, 0.623562,
		-0.107512, 0.959552, -0.260193,
		36.376221, 30.180717, 28.086039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576023, 29.886168, 28.868496>,  <36.451477, 29.509029, 28.268173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576023, 29.886168, 28.868496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376999, 30.139435, 28.631336>,  <36.257584, 30.291395, 28.489040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376999, 30.139435, 28.631336>,  <36.576023, 29.886168, 28.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376999, 30.139435, 28.631336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515120, 0.334260, 0.789254,
		0.697913, 0.698117, 0.159843,
		-0.497563, 0.633169, -0.592898,
		36.227730, 30.329386, 28.453466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684532, 30.543852, 29.212757>,  <36.576023, 29.886168, 28.868496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684532, 30.543852, 29.212757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357571, 30.583263, 28.985727>,  <36.161392, 30.606911, 28.849510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357571, 30.583263, 28.985727>,  <36.684532, 30.543852, 29.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357571, 30.583263, 28.985727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480079, 0.428045, 0.765703,
		0.318391, 0.898371, -0.302585,
		-0.817405, 0.098528, -0.567575,
		36.112350, 30.612822, 28.815454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216377, 31.103973, 29.428209>,  <36.684532, 30.543852, 29.212757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216377, 31.103973, 29.428209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956390, 30.906393, 29.197193>,  <35.800400, 30.787844, 29.058582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956390, 30.906393, 29.197193>,  <36.216377, 31.103973, 29.428209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956390, 30.906393, 29.197193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741189, 0.244149, 0.625324,
		-0.167875, 0.834507, -0.524801,
		-0.649967, -0.493953, -0.577541,
		35.761402, 30.758207, 29.023932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694309, 31.601126, 29.228178>,  <36.216377, 31.103973, 29.428209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694309, 31.601126, 29.228178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547195, 31.229267, 29.219301>,  <35.458927, 31.006153, 29.213974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547195, 31.229267, 29.219301>,  <35.694309, 31.601126, 29.228178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547195, 31.229267, 29.219301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656819, 0.242809, 0.713885,
		-0.658271, 0.277135, -0.699911,
		-0.367787, -0.929645, -0.022193,
		35.436859, 30.950373, 29.212643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134460, 31.730156, 29.467764>,  <35.694309, 31.601126, 29.228178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134460, 31.730156, 29.467764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119427, 31.331085, 29.490475>,  <35.110405, 31.091642, 29.504101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119427, 31.331085, 29.490475>,  <35.134460, 31.730156, 29.467764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119427, 31.331085, 29.490475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632338, 0.067742, 0.771725,
		-0.773780, -0.006896, -0.633417,
		-0.037587, -0.997679, 0.056778,
		35.108150, 31.031782, 29.507507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441296, 31.622232, 29.456291>,  <35.134460, 31.730156, 29.467764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441296, 31.622232, 29.456291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626831, 31.308271, 29.620623>,  <34.738152, 31.119894, 29.719221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626831, 31.308271, 29.620623>,  <34.441296, 31.622232, 29.456291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626831, 31.308271, 29.620623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549029, 0.109266, 0.828630,
		-0.695285, -0.609907, -0.380253,
		0.463839, -0.784904, 0.410828,
		34.765984, 31.072800, 29.743872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860687, 31.131483, 29.635941>,  <34.441296, 31.622232, 29.456291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860687, 31.131483, 29.635941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175957, 31.051647, 29.868814>,  <34.365120, 31.003746, 30.008539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175957, 31.051647, 29.868814>,  <33.860687, 31.131483, 29.635941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175957, 31.051647, 29.868814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548183, 0.202347, 0.811512,
		-0.279773, -0.958760, 0.050073,
		0.788177, -0.199589, 0.582187,
		34.412411, 30.991770, 30.043470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604725, 30.643023, 30.186209>,  <33.860687, 31.131483, 29.635941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604725, 30.643023, 30.186209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931854, 30.815517, 30.338627>,  <34.128132, 30.919014, 30.430079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931854, 30.815517, 30.338627>,  <33.604725, 30.643023, 30.186209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931854, 30.815517, 30.338627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535257, 0.326876, 0.778878,
		0.211323, -0.840946, 0.498149,
		0.817828, 0.431233, 0.381046,
		34.177204, 30.944887, 30.452940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444714, 30.685884, 30.921877>,  <33.604725, 30.643023, 30.186209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444714, 30.685884, 30.921877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766438, 30.921137, 30.887960>,  <33.959473, 31.062288, 30.867611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766438, 30.921137, 30.887960>,  <33.444714, 30.685884, 30.921877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766438, 30.921137, 30.887960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269604, 0.488356, 0.829953,
		0.529532, -0.644677, 0.551351,
		0.804307, 0.588133, -0.084792,
		34.007729, 31.097576, 30.862524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863602, 30.505884, 31.469358>,  <33.444714, 30.685884, 30.921877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863602, 30.505884, 31.469358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898102, 30.883373, 31.341642>,  <33.918800, 31.109867, 31.265013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898102, 30.883373, 31.341642>,  <33.863602, 30.505884, 31.469358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898102, 30.883373, 31.341642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255711, 0.330718, 0.908426,
		0.962898, 0.003295, 0.269845,
		0.086249, 0.943724, -0.319290,
		33.923977, 31.166491, 31.245855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142429, 30.808680, 32.025269>,  <33.863602, 30.505884, 31.469358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142429, 30.808680, 32.025269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016930, 31.129797, 31.822453>,  <33.941631, 31.322468, 31.700764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016930, 31.129797, 31.822453>,  <34.142429, 30.808680, 32.025269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016930, 31.129797, 31.822453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177358, 0.475054, 0.861897,
		0.932795, 0.360346, -0.006666,
		-0.313748, 0.802791, -0.507039,
		33.922806, 31.370634, 31.670341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402927, 31.279047, 32.435764>,  <34.142429, 30.808680, 32.025269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402927, 31.279047, 32.435764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108524, 31.456505, 32.231228>,  <33.931881, 31.562979, 32.108505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108524, 31.456505, 32.231228>,  <34.402927, 31.279047, 32.435764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108524, 31.456505, 32.231228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233409, 0.542725, 0.806827,
		0.635464, 0.713183, -0.295899,
		-0.736007, 0.443644, -0.511345,
		33.887722, 31.589598, 32.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442585, 31.905327, 32.655136>,  <34.402927, 31.279047, 32.435764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442585, 31.905327, 32.655136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070004, 31.884775, 32.511051>,  <33.846455, 31.872444, 32.424599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070004, 31.884775, 32.511051>,  <34.442585, 31.905327, 32.655136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070004, 31.884775, 32.511051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309773, 0.631307, 0.710980,
		0.190874, 0.773829, -0.603950,
		-0.931455, -0.051379, -0.360211,
		33.790565, 31.869362, 32.402988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944363, 32.406654, 32.923290>,  <34.442585, 31.905327, 32.655136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944363, 32.406654, 32.923290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245605, 32.546844, 33.145996>,  <35.426353, 32.630959, 33.279621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245605, 32.546844, 33.145996>,  <34.944363, 32.406654, 32.923290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245605, 32.546844, 33.145996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343566, 0.512201, -0.787154,
		-0.561057, 0.784101, 0.265332,
		0.753112, 0.350480, 0.556765,
		35.471539, 32.651989, 33.313026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098602, 33.046173, 32.664112>,  <34.944363, 32.406654, 32.923290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098602, 33.046173, 32.664112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424427, 32.955688, 32.877769>,  <35.619923, 32.901398, 33.005962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424427, 32.955688, 32.877769>,  <35.098602, 33.046173, 32.664112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424427, 32.955688, 32.877769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563015, 0.529966, -0.634153,
		-0.139627, 0.817291, 0.559052,
		0.814567, -0.226209, 0.534145,
		35.668797, 32.887825, 33.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528164, 33.614006, 32.611633>,  <35.098602, 33.046173, 32.664112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528164, 33.614006, 32.611633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775616, 33.319302, 32.720802>,  <35.924088, 33.142479, 32.786304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775616, 33.319302, 32.720802>,  <35.528164, 33.614006, 32.611633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775616, 33.319302, 32.720802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660351, 0.299342, -0.688716,
		0.425722, 0.606282, 0.671702,
		0.618625, -0.736761, 0.272922,
		35.961205, 33.098274, 32.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179520, 33.956238, 32.552639>,  <35.528164, 33.614006, 32.611633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179520, 33.956238, 32.552639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252331, 33.563980, 32.523796>,  <36.296017, 33.328625, 32.506493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252331, 33.563980, 32.523796>,  <36.179520, 33.956238, 32.552639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252331, 33.563980, 32.523796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677434, 0.178221, -0.713667,
		0.712704, 0.081064, 0.696765,
		0.182031, -0.980646, -0.072104,
		36.306938, 33.269787, 32.502167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929199, 33.958580, 32.454216>,  <36.179520, 33.956238, 32.552639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929199, 33.958580, 32.454216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820786, 33.587803, 32.350437>,  <36.755737, 33.365337, 32.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820786, 33.587803, 32.350437>,  <36.929199, 33.958580, 32.454216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820786, 33.587803, 32.350437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655059, 0.019868, -0.755317,
		0.705292, -0.374668, 0.601819,
		-0.271036, -0.926946, -0.259443,
		36.739475, 33.309719, 32.272606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579601, 33.646175, 32.311188>,  <36.929199, 33.958580, 32.454216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579601, 33.646175, 32.311188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311371, 33.400520, 32.144737>,  <37.150433, 33.253128, 32.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311371, 33.400520, 32.144737>,  <37.579601, 33.646175, 32.311188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311371, 33.400520, 32.144737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582659, -0.088821, -0.807849,
		0.459166, -0.784188, 0.417392,
		-0.670578, -0.614134, -0.416131,
		37.110199, 33.216282, 32.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921852, 33.145073, 31.990711>,  <37.579601, 33.646175, 32.311188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921852, 33.145073, 31.990711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576893, 33.134064, 31.788515>,  <37.369919, 33.127457, 31.667198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576893, 33.134064, 31.788515>,  <37.921852, 33.145073, 31.990711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576893, 33.134064, 31.788515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493977, -0.264183, -0.828368,
		-0.110740, -0.964079, 0.241428,
		-0.862394, -0.027527, -0.505488,
		37.318176, 33.125805, 31.636868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893688, 32.501362, 31.750702>,  <37.921852, 33.145073, 31.990711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893688, 32.501362, 31.750702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670895, 32.733040, 31.512609>,  <37.537220, 32.872047, 31.369753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670895, 32.733040, 31.512609>,  <37.893688, 32.501362, 31.750702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670895, 32.733040, 31.512609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590042, -0.228419, -0.774387,
		-0.584486, -0.782530, -0.214527,
		-0.556979, 0.579199, -0.595233,
		37.503799, 32.906799, 31.334040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969810, 32.135330, 31.169689>,  <37.893688, 32.501362, 31.750702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969810, 32.135330, 31.169689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827000, 32.490250, 31.052912>,  <37.741314, 32.703201, 30.982845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827000, 32.490250, 31.052912>,  <37.969810, 32.135330, 31.169689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827000, 32.490250, 31.052912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409819, -0.132062, -0.902556,
		-0.839393, -0.441882, -0.316482,
		-0.357028, 0.887299, -0.291943,
		37.719891, 32.756439, 30.965328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719383, 32.060898, 30.430222>,  <37.969810, 32.135330, 31.169689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719383, 32.060898, 30.430222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796104, 32.450085, 30.481667>,  <37.842136, 32.683598, 30.512533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796104, 32.450085, 30.481667>,  <37.719383, 32.060898, 30.430222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796104, 32.450085, 30.481667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455040, 0.027946, -0.890033,
		-0.869568, 0.229239, -0.437379,
		0.191807, 0.972969, 0.128614,
		37.853645, 32.741974, 30.520250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628006, 32.256763, 29.870462>,  <37.719383, 32.060898, 30.430222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628006, 32.256763, 29.870462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839611, 32.567406, 30.007298>,  <37.966576, 32.753792, 30.089399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839611, 32.567406, 30.007298>,  <37.628006, 32.256763, 29.870462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839611, 32.567406, 30.007298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475394, 0.062715, -0.877535,
		-0.702953, 0.626858, -0.336016,
		0.529016, 0.776605, 0.342090,
		37.998318, 32.800388, 30.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433792, 32.825542, 29.424229>,  <37.628006, 32.256763, 29.870462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433792, 32.825542, 29.424229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777649, 32.926804, 29.601740>,  <37.983963, 32.987560, 29.708246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777649, 32.926804, 29.601740>,  <37.433792, 32.825542, 29.424229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777649, 32.926804, 29.601740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438012, 0.081957, -0.895225,
		-0.262999, 0.963948, -0.040431,
		0.859638, 0.253153, 0.443776,
		38.035542, 33.002750, 29.734873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649136, 33.432384, 29.149059>,  <37.433792, 32.825542, 29.424229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649136, 33.432384, 29.149059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982113, 33.262077, 29.290909>,  <38.181900, 33.159893, 29.376019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982113, 33.262077, 29.290909>,  <37.649136, 33.432384, 29.149059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982113, 33.262077, 29.290909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397919, 0.013964, -0.917314,
		0.385608, 0.904726, 0.181045,
		0.832446, -0.425765, 0.354623,
		38.231846, 33.134346, 29.397295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211376, 33.786949, 28.759987>,  <37.649136, 33.432384, 29.149059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211376, 33.786949, 28.759987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350666, 33.439857, 28.901850>,  <38.434242, 33.231602, 28.986967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350666, 33.439857, 28.901850>,  <38.211376, 33.786949, 28.759987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350666, 33.439857, 28.901850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494564, -0.151334, -0.855865,
		0.796331, 0.473438, 0.376449,
		0.348229, -0.867730, 0.354658,
		38.455135, 33.179539, 29.008247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996037, 33.772778, 28.573524>,  <38.211376, 33.786949, 28.759987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996037, 33.772778, 28.573524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887314, 33.394253, 28.643524>,  <38.822083, 33.167137, 28.685524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887314, 33.394253, 28.643524>,  <38.996037, 33.772778, 28.573524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887314, 33.394253, 28.643524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585876, -0.306976, -0.750010,
		0.763461, -0.101327, 0.637856,
		-0.271803, -0.946308, 0.174999,
		38.805775, 33.110359, 28.696024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633781, 33.437763, 28.416685>,  <38.996037, 33.772778, 28.573524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633781, 33.437763, 28.416685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362720, 33.143642, 28.412479>,  <39.200085, 32.967171, 28.409956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362720, 33.143642, 28.412479>,  <39.633781, 33.437763, 28.416685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362720, 33.143642, 28.412479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473042, -0.424921, -0.771799,
		0.563038, -0.527988, 0.635780,
		-0.677657, -0.735303, -0.010514,
		39.159424, 32.923050, 28.409325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945225, 32.877396, 28.423838>,  <39.633781, 33.437763, 28.416685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945225, 32.877396, 28.423838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596294, 32.778488, 28.255125>,  <39.386936, 32.719143, 28.153898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596294, 32.778488, 28.255125>,  <39.945225, 32.877396, 28.423838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596294, 32.778488, 28.255125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486441, -0.525663, -0.697893,
		-0.049150, -0.813965, 0.578831,
		-0.872330, -0.247266, -0.421782,
		39.334595, 32.704308, 28.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994453, 32.154400, 28.209593>,  <39.945225, 32.877396, 28.423838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994453, 32.154400, 28.209593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684078, 32.284004, 27.993097>,  <39.497852, 32.361767, 27.863201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684078, 32.284004, 27.993097>,  <39.994453, 32.154400, 28.209593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684078, 32.284004, 27.993097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370006, -0.461131, -0.806507,
		-0.510900, -0.826060, 0.237921,
		-0.775936, 0.324012, -0.541239,
		39.451298, 32.381207, 27.830727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795971, 31.520346, 27.867418>,  <39.994453, 32.154400, 28.209593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795971, 31.520346, 27.867418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666149, 31.843813, 27.671164>,  <39.588257, 32.037891, 27.553411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666149, 31.843813, 27.671164>,  <39.795971, 31.520346, 27.867418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666149, 31.843813, 27.671164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379360, -0.363879, -0.850693,
		-0.866459, -0.462222, -0.188678,
		-0.324553, 0.808667, -0.490635,
		39.568783, 32.086414, 27.523973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450939, 31.320639, 27.245419>,  <39.795971, 31.520346, 27.867418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450939, 31.320639, 27.245419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546352, 31.703587, 27.180244>,  <39.603600, 31.933355, 27.141140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546352, 31.703587, 27.180244>,  <39.450939, 31.320639, 27.245419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546352, 31.703587, 27.180244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334634, -0.238531, -0.911660,
		-0.911659, 0.162936, -0.377265,
		0.238532, 0.957369, -0.162935,
		39.617912, 31.990797, 27.131365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303493, 31.500700, 26.562119>,  <39.450939, 31.320639, 27.245419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303493, 31.500700, 26.562119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555836, 31.791567, 26.670374>,  <39.707241, 31.966087, 26.735327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555836, 31.791567, 26.670374>,  <39.303493, 31.500700, 26.562119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555836, 31.791567, 26.670374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424429, -0.031422, -0.904916,
		-0.649523, 0.685739, -0.328454,
		0.630857, 0.727169, 0.270638,
		39.745094, 32.009716, 26.751566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351269, 31.809320, 25.961721>,  <39.303493, 31.500700, 26.562119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351269, 31.809320, 25.961721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663857, 31.923801, 26.183495>,  <39.851410, 31.992491, 26.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663857, 31.923801, 26.183495>,  <39.351269, 31.809320, 25.961721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663857, 31.923801, 26.183495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591384, -0.056437, -0.804412,
		-0.198934, 0.956506, -0.213360,
		0.781467, 0.286203, 0.554435,
		39.898296, 32.009663, 26.349825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709591, 32.284073, 25.509396>,  <39.351269, 31.809320, 25.961721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709591, 32.284073, 25.509396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993412, 32.208744, 25.781006>,  <40.163704, 32.163548, 25.943972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993412, 32.208744, 25.781006>,  <39.709591, 32.284073, 25.509396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993412, 32.208744, 25.781006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644824, -0.215056, -0.733453,
		0.284151, 0.958273, -0.031161,
		0.709550, -0.188319, 0.679025,
		40.206276, 32.152248, 25.984713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288090, 32.442276, 25.228004>,  <39.709591, 32.284073, 25.509396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288090, 32.442276, 25.228004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408115, 32.187408, 25.511969>,  <40.480129, 32.034489, 25.682348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408115, 32.187408, 25.511969>,  <40.288090, 32.442276, 25.228004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408115, 32.187408, 25.511969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792282, -0.248011, -0.557476,
		0.531275, 0.729727, 0.430402,
		0.300061, -0.637173, 0.709911,
		40.498135, 31.996256, 25.724941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962917, 32.519100, 25.222172>,  <40.288090, 32.442276, 25.228004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962917, 32.519100, 25.222172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905910, 32.161709, 25.392527>,  <40.871708, 31.947273, 25.494740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905910, 32.161709, 25.392527>,  <40.962917, 32.519100, 25.222172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905910, 32.161709, 25.392527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852990, -0.329134, -0.405067,
		0.502093, 0.305549, 0.809038,
		-0.142514, -0.893482, 0.425886,
		40.863155, 31.893663, 25.520292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567806, 32.240013, 25.154692>,  <40.962917, 32.519100, 25.222172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567806, 32.240013, 25.154692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370461, 31.912264, 25.271465>,  <41.252052, 31.715614, 25.341530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370461, 31.912264, 25.271465>,  <41.567806, 32.240013, 25.154692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370461, 31.912264, 25.271465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717104, -0.573100, -0.396633,
		0.492296, 0.013662, 0.870321,
		-0.493362, -0.819372, 0.291932,
		41.222450, 31.666452, 25.359045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012611, 31.839895, 25.458382>,  <41.567806, 32.240013, 25.154692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012611, 31.839895, 25.458382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722679, 31.599257, 25.324097>,  <41.548721, 31.454874, 25.243526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722679, 31.599257, 25.324097>,  <42.012611, 31.839895, 25.458382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722679, 31.599257, 25.324097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680952, -0.551693, -0.481600,
		0.104519, -0.577682, 0.809543,
		-0.724831, -0.601596, -0.335712,
		41.505230, 31.418777, 25.223383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303661, 31.159925, 25.479605>,  <42.012611, 31.839895, 25.458382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303661, 31.159925, 25.479605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994370, 31.138117, 25.226892>,  <41.808796, 31.125032, 25.075264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994370, 31.138117, 25.226892>,  <42.303661, 31.159925, 25.479605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994370, 31.138117, 25.226892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582122, -0.456174, -0.673082,
		-0.251505, -0.888219, 0.384464,
		-0.773227, -0.054521, -0.631782,
		41.762402, 31.121761, 25.037357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145046, 30.475197, 25.366529>,  <42.303661, 31.159925, 25.479605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145046, 30.475197, 25.366529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972008, 30.636564, 25.044010>,  <41.868187, 30.733385, 24.850498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972008, 30.636564, 25.044010>,  <42.145046, 30.475197, 25.366529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972008, 30.636564, 25.044010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655998, -0.472658, -0.588440,
		-0.618492, -0.783484, -0.060175,
		-0.432591, 0.403420, -0.806299,
		41.842232, 30.757589, 24.802120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116493, 29.956059, 24.866783>,  <42.145046, 30.475197, 25.366529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116493, 29.956059, 24.866783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069397, 30.290968, 24.653200>,  <42.041138, 30.491913, 24.525049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069397, 30.290968, 24.653200>,  <42.116493, 29.956059, 24.866783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069397, 30.290968, 24.653200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604015, -0.366415, -0.707747,
		-0.788227, -0.405851, -0.462582,
		-0.117743, 0.837272, -0.533958,
		42.034073, 30.542150, 24.493013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961437, 29.767572, 24.100370>,  <42.116493, 29.956059, 24.866783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961437, 29.767572, 24.100370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119629, 30.134747, 24.112968>,  <42.214546, 30.355051, 24.120527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119629, 30.134747, 24.112968>,  <41.961437, 29.767572, 24.100370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119629, 30.134747, 24.112968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566329, -0.216716, -0.795176,
		-0.723094, 0.332313, -0.605560,
		0.395482, 0.917934, 0.031493,
		42.238274, 30.410126, 24.122416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224567, 29.764175, 23.518541>,  <41.961437, 29.767572, 24.100370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224567, 29.764175, 23.518541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369904, 30.118773, 23.633165>,  <42.457104, 30.331530, 23.701939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369904, 30.118773, 23.633165>,  <42.224567, 29.764175, 23.518541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369904, 30.118773, 23.633165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758980, -0.103269, -0.642873,
		-0.540309, 0.451074, -0.710351,
		0.363341, 0.886492, 0.286559,
		42.478905, 30.384720, 23.719133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383160, 30.209606, 22.854628>,  <42.224567, 29.764175, 23.518541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383160, 30.209606, 22.854628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611652, 30.380569, 23.134916>,  <42.748749, 30.483149, 23.303089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611652, 30.380569, 23.134916>,  <42.383160, 30.209606, 22.854628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611652, 30.380569, 23.134916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810396, -0.158278, -0.564098,
		-0.130192, 0.890095, -0.436785,
		0.571235, 0.427409, 0.700723,
		42.783024, 30.508793, 23.345133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809425, 30.730022, 22.526350>,  <42.383160, 30.209606, 22.854628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809425, 30.730022, 22.526350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019489, 30.632929, 22.852610>,  <43.145527, 30.574673, 23.048365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019489, 30.632929, 22.852610>,  <42.809425, 30.730022, 22.526350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019489, 30.632929, 22.852610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781536, -0.241713, -0.575131,
		0.336756, 0.939498, 0.062766,
		0.525163, -0.242733, 0.815650,
		43.177040, 30.560108, 23.097305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466194, 30.917793, 22.380831>,  <42.809425, 30.730022, 22.526350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466194, 30.917793, 22.380831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486534, 30.650501, 22.677715>,  <43.498737, 30.490126, 22.855846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486534, 30.650501, 22.677715>,  <43.466194, 30.917793, 22.380831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486534, 30.650501, 22.677715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684634, -0.517746, -0.513045,
		0.727111, 0.534233, 0.431167,
		0.050850, -0.668232, 0.742213,
		43.501789, 30.450031, 22.900379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222469, 30.718609, 22.350727>,  <43.466194, 30.917793, 22.380831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222469, 30.718609, 22.350727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029324, 30.446220, 22.570951>,  <43.913437, 30.282787, 22.703087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.029324, 30.446220, 22.570951>,  <44.222469, 30.718609, 22.350727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029324, 30.446220, 22.570951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623753, -0.708744, -0.329568,
		0.614634, 0.184278, 0.766986,
		-0.482864, -0.680973, 0.550562,
		43.884464, 30.241928, 22.736120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710682, 30.326483, 22.746822>,  <44.222469, 30.718609, 22.350727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710682, 30.326483, 22.746822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390495, 30.092924, 22.692680>,  <44.198383, 29.952789, 22.660196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390495, 30.092924, 22.692680>,  <44.710682, 30.326483, 22.746822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390495, 30.092924, 22.692680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581021, -0.700448, -0.414471,
		0.147199, -0.410414, 0.899940,
		-0.800466, -0.583895, -0.135354,
		44.150356, 29.917755, 22.652075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915966, 29.725443, 22.981979>,  <44.710682, 30.326483, 22.746822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915966, 29.725443, 22.981979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609371, 29.671663, 22.730768>,  <44.425415, 29.639395, 22.580042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609371, 29.671663, 22.730768>,  <44.915966, 29.725443, 22.981979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609371, 29.671663, 22.730768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533091, -0.678550, -0.505355,
		-0.358203, -0.722145, 0.591775,
		-0.766489, -0.134450, -0.628028,
		44.379425, 29.631329, 22.542360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347317, 29.219845, 22.676561>,  <44.915966, 29.725443, 22.981979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347317, 29.219845, 22.676561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658409, 29.122383, 22.908344>,  <45.845062, 29.063906, 23.047415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658409, 29.122383, 22.908344>,  <45.347317, 29.219845, 22.676561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658409, 29.122383, 22.908344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480651, 0.363572, 0.797991,
		-0.405110, -0.899137, 0.165646,
		0.777727, -0.243656, 0.579458,
		45.891727, 29.049286, 23.082182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141087, 28.850018, 23.340618>,  <45.347317, 29.219845, 22.676561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141087, 28.850018, 23.340618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512863, 28.961456, 23.437387>,  <45.735928, 29.028320, 23.495449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512863, 28.961456, 23.437387>,  <45.141087, 28.850018, 23.340618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512863, 28.961456, 23.437387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309233, 0.230448, 0.922642,
		0.201285, -0.932353, 0.300337,
		0.929440, 0.278588, 0.241929,
		45.791695, 29.045036, 23.509966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311031, 28.526947, 23.961237>,  <45.141087, 28.850018, 23.340618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311031, 28.526947, 23.961237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564754, 28.836098, 23.954153>,  <45.716988, 29.021587, 23.949903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564754, 28.836098, 23.954153>,  <45.311031, 28.526947, 23.961237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564754, 28.836098, 23.954153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268622, 0.241827, 0.932396,
		0.724909, -0.586670, 0.361005,
		0.634310, 0.772876, -0.017710,
		45.755047, 29.067961, 23.948839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644867, 28.501528, 24.551748>,  <45.311031, 28.526947, 23.961237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644867, 28.501528, 24.551748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652542, 28.879827, 24.422016>,  <45.657146, 29.106808, 24.344177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652542, 28.879827, 24.422016>,  <45.644867, 28.501528, 24.551748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652542, 28.879827, 24.422016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243914, 0.319014, 0.915825,
		0.969607, 0.061540, 0.236801,
		0.019183, 0.945750, -0.324329,
		45.658298, 29.163553, 24.324718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136135, 28.925974, 24.948795>,  <45.644867, 28.501528, 24.551748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136135, 28.925974, 24.948795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855602, 29.183815, 24.827063>,  <45.687283, 29.338520, 24.754023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855602, 29.183815, 24.827063>,  <46.136135, 28.925974, 24.948795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855602, 29.183815, 24.827063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132420, 0.301690, 0.944165,
		0.700424, 0.702476, -0.126227,
		-0.701335, 0.644601, -0.304333,
		45.645203, 29.377195, 24.735764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016388, 29.461430, 25.580643>,  <46.136135, 28.925974, 24.948795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016388, 29.461430, 25.580643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736057, 29.579918, 25.321077>,  <45.567860, 29.651011, 25.165339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736057, 29.579918, 25.321077>,  <46.016388, 29.461430, 25.580643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736057, 29.579918, 25.321077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422637, 0.560406, 0.712266,
		0.574642, 0.773434, -0.267557,
		-0.700831, 0.296219, -0.648914,
		45.525806, 29.668783, 25.126404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994129, 30.151117, 25.573610>,  <46.016388, 29.461430, 25.580643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994129, 30.151117, 25.573610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631386, 30.034729, 25.451670>,  <45.413738, 29.964897, 25.378506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631386, 30.034729, 25.451670>,  <45.994129, 30.151117, 25.573610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631386, 30.034729, 25.451670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421294, 0.607911, 0.673020,
		-0.010505, 0.738770, -0.673876,
		-0.906863, -0.290970, -0.304854,
		45.359325, 29.947437, 25.360214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558514, 30.773163, 25.676756>,  <45.994129, 30.151117, 25.573610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558514, 30.773163, 25.676756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301125, 30.476786, 25.599874>,  <45.146690, 30.298960, 25.553745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301125, 30.476786, 25.599874>,  <45.558514, 30.773163, 25.676756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301125, 30.476786, 25.599874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661663, 0.412140, 0.626372,
		-0.384891, 0.530230, -0.755457,
		-0.643476, -0.740943, -0.192204,
		45.108082, 30.254503, 25.542213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870022, 31.101103, 25.514296>,  <45.558514, 30.773163, 25.676756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870022, 31.101103, 25.514296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814880, 30.734182, 25.663725>,  <44.781796, 30.514030, 25.753384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814880, 30.734182, 25.663725>,  <44.870022, 31.101103, 25.514296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814880, 30.734182, 25.663725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721882, 0.351296, 0.596220,
		-0.678148, -0.187488, -0.710608,
		-0.137849, -0.917300, 0.373575,
		44.773525, 30.458992, 25.775797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141396, 31.042297, 25.516516>,  <44.870022, 31.101103, 25.514296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141396, 31.042297, 25.516516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259789, 30.762623, 25.776833>,  <44.330826, 30.594818, 25.933023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259789, 30.762623, 25.776833>,  <44.141396, 31.042297, 25.516516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259789, 30.762623, 25.776833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486759, 0.475814, 0.732575,
		-0.821863, -0.533611, -0.199501,
		0.295985, -0.699185, 0.650794,
		44.348583, 30.552868, 25.972071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504284, 30.749727, 25.828918>,  <44.141396, 31.042297, 25.516516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504284, 30.749727, 25.828918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795151, 30.648680, 26.084234>,  <43.969669, 30.588051, 26.237423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795151, 30.648680, 26.084234>,  <43.504284, 30.749727, 25.828918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795151, 30.648680, 26.084234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520636, 0.403059, 0.752650,
		-0.447403, -0.879618, 0.161567,
		0.727166, -0.252620, 0.638290,
		44.013302, 30.572893, 26.275721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166538, 30.321127, 26.334234>,  <43.504284, 30.749727, 25.828918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166538, 30.321127, 26.334234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501171, 30.444464, 26.515368>,  <43.701950, 30.518465, 26.624048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501171, 30.444464, 26.515368>,  <43.166538, 30.321127, 26.334234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501171, 30.444464, 26.515368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547205, 0.430348, 0.717891,
		0.026479, -0.848367, 0.528746,
		0.836580, 0.308341, 0.452836,
		43.752144, 30.536966, 26.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264191, 30.084091, 27.012020>,  <43.166538, 30.321127, 26.334234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264191, 30.084091, 27.012020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443916, 30.441349, 27.003920>,  <43.551754, 30.655703, 26.999060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443916, 30.441349, 27.003920>,  <43.264191, 30.084091, 27.012020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443916, 30.441349, 27.003920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541095, 0.290110, 0.789337,
		0.710866, -0.343704, 0.613626,
		0.449318, 0.893142, -0.020253,
		43.578712, 30.709291, 26.997843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196976, 30.239386, 27.691689>,  <43.264191, 30.084091, 27.012020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196976, 30.239386, 27.691689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290279, 30.586533, 27.516239>,  <43.346264, 30.794821, 27.410969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290279, 30.586533, 27.516239>,  <43.196976, 30.239386, 27.691689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290279, 30.586533, 27.516239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516481, 0.492758, 0.700312,
		0.823915, 0.063185, 0.563179,
		0.233262, 0.867870, -0.438625,
		43.360256, 30.846893, 27.384651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530914, 30.672832, 28.182295>,  <43.196976, 30.239386, 27.691689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530914, 30.672832, 28.182295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390488, 30.925968, 27.906246>,  <43.306232, 31.077850, 27.740618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390488, 30.925968, 27.906246>,  <43.530914, 30.672832, 28.182295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390488, 30.925968, 27.906246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397477, 0.566610, 0.721779,
		0.847800, 0.527698, 0.052623,
		-0.351064, 0.632841, -0.690120,
		43.285168, 31.115820, 27.699209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573666, 31.335846, 28.400015>,  <43.530914, 30.672832, 28.182295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573666, 31.335846, 28.400015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302624, 31.421186, 28.118496>,  <43.139999, 31.472391, 27.949585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302624, 31.421186, 28.118496>,  <43.573666, 31.335846, 28.400015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302624, 31.421186, 28.118496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476560, 0.601497, 0.641165,
		0.560125, 0.769859, -0.305904,
		-0.677607, 0.213351, -0.703797,
		43.099342, 31.485191, 27.907356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487473, 32.098690, 28.355434>,  <43.573666, 31.335846, 28.400015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487473, 32.098690, 28.355434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164150, 31.906086, 28.219913>,  <42.970158, 31.790524, 28.138601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164150, 31.906086, 28.219913>,  <43.487473, 32.098690, 28.355434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164150, 31.906086, 28.219913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578826, 0.544660, 0.606882,
		-0.107688, 0.686655, -0.718964,
		-0.808309, -0.481509, -0.338801,
		42.921658, 31.761633, 28.118273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980999, 32.625328, 28.057034>,  <43.487473, 32.098690, 28.355434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980999, 32.625328, 28.057034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773914, 32.296219, 28.150860>,  <42.649662, 32.098755, 28.207155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773914, 32.296219, 28.150860>,  <42.980999, 32.625328, 28.057034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773914, 32.296219, 28.150860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616042, 0.548748, 0.565126,
		-0.593686, 0.148073, -0.790956,
		-0.517715, -0.822770, 0.234565,
		42.618599, 32.049389, 28.221230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272713, 32.910065, 28.162357>,  <42.980999, 32.625328, 28.057034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272713, 32.910065, 28.162357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256096, 32.542294, 28.318777>,  <42.246124, 32.321629, 28.412628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256096, 32.542294, 28.318777>,  <42.272713, 32.910065, 28.162357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256096, 32.542294, 28.318777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729847, 0.295216, 0.616580,
		-0.682347, -0.259792, -0.683309,
		-0.041541, -0.919432, 0.391048,
		42.243633, 32.266464, 28.436092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568527, 32.905422, 28.377148>,  <42.272713, 32.910065, 28.162357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568527, 32.905422, 28.377148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736454, 32.590141, 28.557144>,  <41.837212, 32.400974, 28.665142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736454, 32.590141, 28.557144>,  <41.568527, 32.905422, 28.377148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736454, 32.590141, 28.557144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590850, 0.139008, 0.794716,
		-0.688947, -0.599515, -0.407350,
		0.419819, -0.788200, 0.449992,
		41.862400, 32.353680, 28.692142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975536, 32.670559, 28.761320>,  <41.568527, 32.905422, 28.377148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975536, 32.670559, 28.761320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295181, 32.495377, 28.926062>,  <41.486969, 32.390266, 29.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295181, 32.495377, 28.926062>,  <40.975536, 32.670559, 28.761320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295181, 32.495377, 28.926062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462367, -0.009863, 0.886634,
		-0.384245, -0.898942, -0.210379,
		0.799107, -0.437956, 0.411852,
		41.534912, 32.363991, 29.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804054, 31.960949, 29.050467>,  <40.975536, 32.670559, 28.761320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804054, 31.960949, 29.050467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114277, 32.090572, 29.267168>,  <41.300411, 32.168346, 29.397188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114277, 32.090572, 29.267168>,  <40.804054, 31.960949, 29.050467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114277, 32.090572, 29.267168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543577, -0.093558, 0.834129,
		0.320992, -0.941399, 0.103591,
		0.775557, 0.324058, 0.541754,
		41.346943, 32.187790, 29.429695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752045, 31.616508, 29.637672>,  <40.804054, 31.960949, 29.050467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752045, 31.616508, 29.637672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978004, 31.931534, 29.736168>,  <41.113579, 32.120548, 29.795265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978004, 31.931534, 29.736168>,  <40.752045, 31.616508, 29.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978004, 31.931534, 29.736168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625260, 0.213815, 0.750556,
		0.538462, -0.577949, 0.613216,
		0.564897, 0.787565, 0.246237,
		41.147472, 32.167805, 29.810040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796631, 31.564741, 30.333506>,  <40.752045, 31.616508, 29.637672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796631, 31.564741, 30.333506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915802, 31.935446, 30.241987>,  <40.987305, 32.157867, 30.187077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915802, 31.935446, 30.241987>,  <40.796631, 31.564741, 30.333506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915802, 31.935446, 30.241987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332925, 0.325510, 0.884988,
		0.894651, -0.187489, 0.405521,
		0.297927, 0.926764, -0.228798,
		41.005180, 32.213474, 30.173347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189415, 31.757826, 30.883028>,  <40.796631, 31.564741, 30.333506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189415, 31.757826, 30.883028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048534, 32.080082, 30.692493>,  <40.964005, 32.273434, 30.578173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048534, 32.080082, 30.692493>,  <41.189415, 31.757826, 30.883028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048534, 32.080082, 30.692493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371468, 0.346816, 0.861238,
		0.859049, 0.480273, 0.177120,
		-0.352201, 0.805640, -0.476338,
		40.942875, 32.321774, 30.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197376, 32.224609, 31.424564>,  <41.189415, 31.757826, 30.883028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197376, 32.224609, 31.424564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967911, 32.411770, 31.155649>,  <40.830231, 32.524067, 30.994299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967911, 32.411770, 31.155649>,  <41.197376, 32.224609, 31.424564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967911, 32.411770, 31.155649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378148, 0.576782, 0.724104,
		0.726575, 0.669620, -0.153944,
		-0.573667, 0.467902, -0.672290,
		40.795811, 32.552139, 30.953962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341534, 32.887375, 31.614986>,  <41.197376, 32.224609, 31.424564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341534, 32.887375, 31.614986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998894, 32.879715, 31.408739>,  <40.793308, 32.875118, 31.284990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998894, 32.879715, 31.408739>,  <41.341534, 32.887375, 31.614986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998894, 32.879715, 31.408739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478868, 0.401612, 0.780636,
		0.192131, 0.915610, -0.353192,
		-0.856604, -0.019148, -0.515618,
		40.741913, 32.873970, 31.254053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144321, 33.629162, 31.607794>,  <41.341534, 32.887375, 31.614986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144321, 33.629162, 31.607794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845322, 33.366535, 31.567444>,  <40.665924, 33.208961, 31.543234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845322, 33.366535, 31.567444>,  <41.144321, 33.629162, 31.607794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845322, 33.366535, 31.567444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452801, 0.392513, 0.800565,
		-0.486026, 0.644096, -0.590694,
		-0.747496, -0.656562, -0.100876,
		40.621075, 33.169567, 31.537182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439388, 34.027538, 31.774183>,  <41.144321, 33.629162, 31.607794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439388, 34.027538, 31.774183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313046, 33.648170, 31.785023>,  <40.237240, 33.420551, 31.791527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313046, 33.648170, 31.785023>,  <40.439388, 34.027538, 31.774183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313046, 33.648170, 31.785023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593395, 0.219746, 0.774335,
		-0.740350, 0.228496, -0.632195,
		-0.315855, -0.948420, 0.027100,
		40.218288, 33.363644, 31.793154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684296, 33.995098, 32.078022>,  <40.439388, 34.027538, 31.774183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684296, 33.995098, 32.078022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744915, 33.601791, 32.118469>,  <39.781288, 33.365807, 32.142738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744915, 33.601791, 32.118469>,  <39.684296, 33.995098, 32.078022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744915, 33.601791, 32.118469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662994, -0.025243, 0.748199,
		-0.733125, -0.180428, -0.655724,
		0.151548, -0.983264, 0.101117,
		39.790379, 33.306812, 32.148804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066154, 33.571934, 32.062168>,  <39.684296, 33.995098, 32.078022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066154, 33.571934, 32.062168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317356, 33.331566, 32.259964>,  <39.468075, 33.187347, 32.378639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317356, 33.331566, 32.259964>,  <39.066154, 33.571934, 32.062168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317356, 33.331566, 32.259964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694268, -0.145549, 0.704846,
		-0.351581, -0.785950, -0.508600,
		0.628000, -0.600915, 0.494487,
		39.505756, 33.151291, 32.408310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694534, 32.865505, 32.233532>,  <39.066154, 33.571934, 32.062168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694534, 32.865505, 32.233532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009361, 32.920238, 32.474133>,  <39.198257, 32.953079, 32.618492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009361, 32.920238, 32.474133>,  <38.694534, 32.865505, 32.233532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009361, 32.920238, 32.474133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573662, -0.196134, 0.795263,
		0.226796, -0.970983, -0.075872,
		0.787067, 0.136837, 0.601498,
		39.245483, 32.961288, 32.654583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681915, 32.358425, 32.681034>,  <38.694534, 32.865505, 32.233532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681915, 32.358425, 32.681034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902809, 32.616234, 32.892551>,  <39.035343, 32.770920, 33.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902809, 32.616234, 32.892551>,  <38.681915, 32.358425, 32.681034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902809, 32.616234, 32.892551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556948, -0.186769, 0.809275,
		0.620361, -0.741421, 0.255827,
		0.552233, 0.644525, 0.528797,
		39.068478, 32.809593, 33.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953621, 32.056919, 33.336063>,  <38.681915, 32.358425, 32.681034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953621, 32.056919, 33.336063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998531, 32.442715, 33.431694>,  <39.025478, 32.674191, 33.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998531, 32.442715, 33.431694>,  <38.953621, 32.056919, 33.336063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998531, 32.442715, 33.431694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481367, -0.157692, 0.862218,
		0.869299, -0.211886, 0.446568,
		0.112272, 0.964488, 0.239077,
		39.032211, 32.732059, 33.503418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097527, 32.028324, 34.037109>,  <38.953621, 32.056919, 33.336063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097527, 32.028324, 34.037109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978333, 32.403519, 33.966236>,  <38.906815, 32.628635, 33.923714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978333, 32.403519, 33.966236>,  <39.097527, 32.028324, 34.037109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978333, 32.403519, 33.966236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526169, -0.006530, 0.850355,
		0.796461, 0.346623, 0.495483,
		-0.297988, 0.937982, -0.177181,
		38.888935, 32.684914, 33.913082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261864, 32.363819, 34.620304>,  <39.097527, 32.028324, 34.037109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261864, 32.363819, 34.620304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976009, 32.570076, 34.431240>,  <38.804497, 32.693829, 34.317802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976009, 32.570076, 34.431240>,  <39.261864, 32.363819, 34.620304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976009, 32.570076, 34.431240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471461, 0.144104, 0.870034,
		0.516736, 0.844600, 0.140122,
		-0.714638, 0.515640, -0.472660,
		38.761620, 32.724770, 34.289444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115440, 32.990349, 34.951912>,  <39.261864, 32.363819, 34.620304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115440, 32.990349, 34.951912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769241, 32.923660, 34.762974>,  <38.561520, 32.883648, 34.649612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769241, 32.923660, 34.762974>,  <39.115440, 32.990349, 34.951912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769241, 32.923660, 34.762974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497115, 0.170083, 0.850852,
		-0.061520, 0.971223, -0.230089,
		-0.865501, -0.166725, -0.472346,
		38.509590, 32.873642, 34.621269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663441, 33.357033, 35.201023>,  <39.115440, 32.990349, 34.951912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663441, 33.357033, 35.201023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409275, 33.090641, 35.044701>,  <38.256775, 32.930805, 34.950909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409275, 33.090641, 35.044701>,  <38.663441, 33.357033, 35.201023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409275, 33.090641, 35.044701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606901, 0.117813, 0.785997,
		-0.477412, 0.736612, -0.479042,
		-0.635412, -0.665976, -0.390805,
		38.218651, 32.890850, 34.927460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053875, 33.575497, 35.320656>,  <38.663441, 33.357033, 35.201023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053875, 33.575497, 35.320656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948170, 33.200809, 35.228809>,  <37.884747, 32.975998, 35.173702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948170, 33.200809, 35.228809>,  <38.053875, 33.575497, 35.320656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948170, 33.200809, 35.228809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572157, -0.039400, 0.819197,
		-0.776404, 0.347859, -0.525539,
		-0.264259, -0.936719, -0.229620,
		37.868893, 32.919792, 35.159924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463451, 33.580135, 35.517494>,  <38.053875, 33.575497, 35.320656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463451, 33.580135, 35.517494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581669, 33.198006, 35.517029>,  <37.652599, 32.968727, 35.516750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581669, 33.198006, 35.517029>,  <37.463451, 33.580135, 35.517494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581669, 33.198006, 35.517029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485202, -0.151154, 0.861238,
		-0.822942, -0.253968, -0.508200,
		0.295544, -0.955329, -0.001165,
		37.670334, 32.911407, 35.516678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464016, 34.277363, 35.230988>,  <37.463451, 33.580135, 35.517494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464016, 34.277363, 35.230988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652744, 34.621735, 35.154888>,  <37.765980, 34.828358, 35.109230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652744, 34.621735, 35.154888>,  <37.464016, 34.277363, 35.230988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652744, 34.621735, 35.154888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737385, 0.503594, 0.450175,
		0.483372, -0.072120, 0.872439,
		0.471822, 0.860925, -0.190243,
		37.794289, 34.880013, 35.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537910, 34.743637, 35.867809>,  <37.464016, 34.277363, 35.230988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537910, 34.743637, 35.867809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535675, 34.958965, 35.530720>,  <37.534332, 35.088161, 35.328468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535675, 34.958965, 35.530720>,  <37.537910, 34.743637, 35.867809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535675, 34.958965, 35.530720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771134, 0.534212, 0.346365,
		0.636647, 0.651786, 0.412135,
		-0.005589, 0.538324, -0.842719,
		37.534000, 35.120464, 35.277905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746445, 35.452362, 36.097702>,  <37.537910, 34.743637, 35.867809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746445, 35.452362, 36.097702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548920, 35.436245, 35.750248>,  <37.430405, 35.426575, 35.541775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548920, 35.436245, 35.750248>,  <37.746445, 35.452362, 36.097702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548920, 35.436245, 35.750248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632845, 0.701737, 0.327219,
		0.596369, 0.711295, -0.372025,
		-0.493813, -0.040291, -0.868634,
		37.400776, 35.424156, 35.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608910, 36.169453, 35.846729>,  <37.746445, 35.452362, 36.097702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608910, 36.169453, 35.846729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307789, 35.944252, 35.710300>,  <37.127117, 35.809132, 35.628445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307789, 35.944252, 35.710300>,  <37.608910, 36.169453, 35.846729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307789, 35.944252, 35.710300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657976, 0.628604, 0.414638,
		-0.019042, 0.536554, -0.843651,
		-0.752798, -0.562998, -0.341070,
		37.081951, 35.775352, 35.607979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276314, 36.696796, 35.844109>,  <37.608910, 36.169453, 35.846729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276314, 36.696796, 35.844109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014164, 36.405884, 35.762581>,  <36.856876, 36.231335, 35.713665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014164, 36.405884, 35.762581>,  <37.276314, 36.696796, 35.844109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014164, 36.405884, 35.762581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750982, 0.598609, 0.278735,
		-0.080710, 0.335743, -0.938490,
		-0.655372, -0.727286, -0.203823,
		36.817551, 36.187698, 35.701435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603180, 36.865463, 35.300430>,  <37.276314, 36.696796, 35.844109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603180, 36.865463, 35.300430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477360, 36.575516, 35.545586>,  <36.401867, 36.401546, 35.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477360, 36.575516, 35.545586>,  <36.603180, 36.865463, 35.300430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477360, 36.575516, 35.545586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796686, 0.552634, 0.244717,
		-0.516088, -0.411299, -0.751323,
		-0.314555, -0.724864, 0.612884,
		36.382992, 36.358055, 35.729450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955021, 37.066689, 35.417229>,  <36.603180, 36.865463, 35.300430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955021, 37.066689, 35.417229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936874, 36.740562, 35.648125>,  <35.925987, 36.544888, 35.786663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936874, 36.740562, 35.648125>,  <35.955021, 37.066689, 35.417229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936874, 36.740562, 35.648125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796675, 0.378151, 0.471498,
		-0.602703, -0.438485, -0.666693,
		-0.045366, -0.815311, 0.577242,
		35.923264, 36.495968, 35.821297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235542, 36.849522, 35.374771>,  <35.955021, 37.066689, 35.417229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235542, 36.849522, 35.374771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393642, 36.700138, 35.710461>,  <35.488503, 36.610508, 35.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393642, 36.700138, 35.710461>,  <35.235542, 36.849522, 35.374771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393642, 36.700138, 35.710461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776956, 0.351450, 0.522323,
		-0.490014, -0.858493, -0.151250,
		0.395254, -0.373460, 0.839227,
		35.512218, 36.588100, 35.962227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763748, 36.381542, 35.770443>,  <35.235542, 36.849522, 35.374771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763748, 36.381542, 35.770443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028137, 36.519089, 36.037239>,  <35.186771, 36.601616, 36.197315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028137, 36.519089, 36.037239>,  <34.763748, 36.381542, 35.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028137, 36.519089, 36.037239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748179, 0.370481, 0.550429,
		-0.057835, -0.862845, 0.502149,
		0.660972, 0.343863, 0.666989,
		35.226429, 36.622250, 36.237335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468990, 36.236458, 36.484337>,  <34.763748, 36.381542, 35.770443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468990, 36.236458, 36.484337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703449, 36.559223, 36.513523>,  <34.844124, 36.752880, 36.531036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703449, 36.559223, 36.513523>,  <34.468990, 36.236458, 36.484337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703449, 36.559223, 36.513523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619173, 0.388043, 0.682676,
		0.522544, -0.445330, 0.727069,
		0.586150, 0.806910, 0.072966,
		34.879295, 36.801296, 36.535412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492599, 36.351177, 37.135799>,  <34.468990, 36.236458, 36.484337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492599, 36.351177, 37.135799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630329, 36.692379, 36.978924>,  <34.712967, 36.897102, 36.884796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630329, 36.692379, 36.978924>,  <34.492599, 36.351177, 37.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630329, 36.692379, 36.978924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452453, 0.516794, 0.726781,
		0.822633, -0.072803, 0.563893,
		0.344328, 0.853009, -0.392191,
		34.733627, 36.948280, 36.861267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472664, 36.758667, 37.697502>,  <34.492599, 36.351177, 37.135799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472664, 36.758667, 37.697502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554565, 37.055786, 37.442528>,  <34.603706, 37.234058, 37.289543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554565, 37.055786, 37.442528>,  <34.472664, 36.758667, 37.697502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554565, 37.055786, 37.442528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435153, 0.652415, 0.620481,
		0.876766, 0.150336, 0.456816,
		0.204753, 0.742802, -0.637435,
		34.615990, 37.278625, 37.251297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814873, 37.378262, 38.050915>,  <34.472664, 36.758667, 37.697502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814873, 37.378262, 38.050915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653008, 37.541962, 37.723804>,  <34.555889, 37.640182, 37.527538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653008, 37.541962, 37.723804>,  <34.814873, 37.378262, 38.050915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653008, 37.541962, 37.723804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361850, 0.749622, 0.554194,
		0.839827, 0.520177, -0.155261,
		-0.404666, 0.409246, -0.817779,
		34.531609, 37.664734, 37.478470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939575, 38.024162, 38.136765>,  <34.814873, 37.378262, 38.050915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939575, 38.024162, 38.136765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647499, 38.006741, 37.864021>,  <34.472252, 37.996288, 37.700375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647499, 38.006741, 37.864021>,  <34.939575, 38.024162, 38.136765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647499, 38.006741, 37.864021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520486, 0.681970, 0.513820,
		0.442625, 0.730082, -0.520637,
		-0.730190, -0.043555, -0.681855,
		34.428444, 37.993675, 37.659466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689590, 38.803398, 37.787125>,  <34.939575, 38.024162, 38.136765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689590, 38.803398, 37.787125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427467, 38.503040, 37.819927>,  <34.270191, 38.322826, 37.839607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427467, 38.503040, 37.819927>,  <34.689590, 38.803398, 37.787125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427467, 38.503040, 37.819927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523638, 0.529844, 0.667135,
		-0.544398, 0.394239, -0.740409,
		-0.655312, -0.750893, 0.082007,
		34.230873, 38.277771, 37.844528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044308, 39.146210, 37.885941>,  <34.689590, 38.803398, 37.787125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044308, 39.146210, 37.885941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971100, 38.757568, 37.945923>,  <33.927174, 38.524384, 37.981911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971100, 38.757568, 37.945923>,  <34.044308, 39.146210, 37.885941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971100, 38.757568, 37.945923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694541, 0.235740, 0.679735,
		-0.695785, 0.020255, -0.717965,
		-0.183021, -0.971606, 0.149956,
		33.916195, 38.466087, 37.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459515, 38.838573, 37.484047>,  <34.044308, 39.146210, 37.885941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459515, 38.838573, 37.484047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540939, 38.720490, 37.857445>,  <33.589794, 38.649639, 38.081486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540939, 38.720490, 37.857445>,  <33.459515, 38.838573, 37.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540939, 38.720490, 37.857445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822978, 0.464889, 0.326475,
		-0.530349, -0.834705, -0.148315,
		0.203560, -0.295205, 0.933497,
		33.602009, 38.631927, 38.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934223, 38.380344, 37.695904>,  <33.459515, 38.838573, 37.484047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934223, 38.380344, 37.695904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077103, 38.526134, 38.039894>,  <33.162830, 38.613609, 38.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077103, 38.526134, 38.039894>,  <32.934223, 38.380344, 37.695904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077103, 38.526134, 38.039894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915164, 0.320685, 0.244207,
		-0.186775, -0.874253, 0.448104,
		0.357199, 0.364477, 0.859980,
		33.184261, 38.635479, 38.297890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469101, 38.120045, 38.340992>,  <32.934223, 38.380344, 37.695904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469101, 38.120045, 38.340992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 38.457985, 38.435524>,  <32.776283, 38.660748, 38.492241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 38.457985, 38.435524>,  <32.469101, 38.120045, 38.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661091, 38.457985, 38.435524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851247, 0.383372, 0.358335,
		0.212139, -0.373164, 0.903186,
		0.479974, 0.844852, 0.236327,
		32.805084, 38.711441, 38.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261894, 38.238194, 39.036869>,  <32.469101, 38.120045, 38.340992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261894, 38.238194, 39.036869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379856, 38.595272, 38.900558>,  <32.450634, 38.809517, 38.818771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379856, 38.595272, 38.900558>,  <32.261894, 38.238194, 39.036869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379856, 38.595272, 38.900558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872908, 0.396757, 0.283930,
		0.388668, 0.213734, 0.896245,
		0.294906, 0.892694, -0.340776,
		32.468327, 38.863079, 38.798325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629686, 38.641644, 38.790092>,  <32.261894, 38.238194, 39.036869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629686, 38.641644, 38.790092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439964, 38.941051, 38.604725>,  <31.326132, 39.120697, 38.493504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439964, 38.941051, 38.604725>,  <31.629686, 38.641644, 38.790092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439964, 38.941051, 38.604725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865861, 0.491774, -0.091881,
		0.159125, -0.444839, -0.881361,
		-0.474303, 0.748516, -0.463422,
		31.297674, 39.165607, 38.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004421, 38.803635, 38.055962>,  <31.629686, 38.641644, 38.790092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004421, 38.803635, 38.055962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811787, 39.089279, 38.259182>,  <31.696207, 39.260666, 38.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811787, 39.089279, 38.259182>,  <32.004421, 38.803635, 38.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811787, 39.089279, 38.259182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816835, 0.575804, -0.035063,
		-0.317579, 0.398112, -0.860610,
		-0.481584, 0.714112, 0.508056,
		31.667311, 39.303513, 38.411598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954241, 39.401119, 37.745327>,  <32.004421, 38.803635, 38.055962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954241, 39.401119, 37.745327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993584, 39.436722, 38.141792>,  <32.017189, 39.458084, 38.379673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993584, 39.436722, 38.141792>,  <31.954241, 39.401119, 37.745327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993584, 39.436722, 38.141792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840670, 0.525560, -0.130619,
		-0.532542, 0.846088, -0.023134,
		0.098357, 0.089009, 0.991163,
		32.023090, 39.463425, 38.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237267, 40.115902, 37.940205>,  <31.954241, 39.401119, 37.745327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237267, 40.115902, 37.940205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315754, 39.850342, 38.228855>,  <32.362846, 39.691006, 38.402046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315754, 39.850342, 38.228855>,  <32.237267, 40.115902, 37.940205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315754, 39.850342, 38.228855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892832, 0.425224, 0.148441,
		-0.405401, 0.615162, 0.676185,
		0.196215, -0.663898, 0.721623,
		32.374619, 39.651173, 38.445343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775665, 39.590397, 38.071823>,  <32.237267, 40.115902, 37.940205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775665, 39.590397, 38.071823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672173, 39.613300, 38.457523>,  <32.610077, 39.627041, 38.688942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672173, 39.613300, 38.457523>,  <32.775665, 39.590397, 38.071823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672173, 39.613300, 38.457523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896169, -0.358290, 0.261741,
		0.360468, 0.931853, 0.041389,
		-0.258734, 0.057258, 0.964250,
		32.594551, 39.630478, 38.746799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224777, 39.981583, 38.457439>,  <32.775665, 39.590397, 38.071823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224777, 39.981583, 38.457439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077976, 39.673294, 38.665783>,  <32.989895, 39.488319, 38.790791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077976, 39.673294, 38.665783>,  <33.224777, 39.981583, 38.457439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077976, 39.673294, 38.665783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893125, -0.448496, -0.034337,
		0.260068, 0.452591, 0.852951,
		-0.367005, -0.770722, 0.520860,
		32.967876, 39.442078, 38.822041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608181, 39.617939, 39.075764>,  <33.224777, 39.981583, 38.457439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608181, 39.617939, 39.075764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362114, 39.345039, 38.917721>,  <33.214474, 39.181301, 38.822895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362114, 39.345039, 38.917721>,  <33.608181, 39.617939, 39.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362114, 39.345039, 38.917721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771829, -0.623356, -0.125329,
		-0.160788, -0.382054, 0.910045,
		-0.615165, -0.682247, -0.395109,
		33.177563, 39.140366, 38.799187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781036, 38.991940, 39.386791>,  <33.608181, 39.617939, 39.075764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781036, 38.991940, 39.386791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593487, 38.894859, 39.047085>,  <33.480957, 38.836613, 38.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593487, 38.894859, 39.047085>,  <33.781036, 38.991940, 39.386791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593487, 38.894859, 39.047085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704792, -0.682339, -0.194115,
		-0.532375, -0.689572, 0.490987,
		-0.468876, -0.242702, -0.849265,
		33.452824, 38.822048, 38.792305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918610, 38.198666, 39.351299>,  <33.781036, 38.991940, 39.386791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918610, 38.198666, 39.351299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850300, 38.379612, 39.001167>,  <33.809315, 38.488178, 38.791088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850300, 38.379612, 39.001167>,  <33.918610, 38.198666, 39.351299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850300, 38.379612, 39.001167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713962, -0.555426, -0.426334,
		-0.679039, -0.697760, -0.228116,
		-0.170778, 0.452364, -0.875330,
		33.799065, 38.515320, 38.738567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919113, 37.670593, 38.892754>,  <33.918610, 38.198666, 39.351299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919113, 37.670593, 38.892754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020992, 37.983074, 38.664768>,  <34.082119, 38.170563, 38.527977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020992, 37.983074, 38.664768>,  <33.919113, 37.670593, 38.892754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020992, 37.983074, 38.664768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499458, -0.610968, -0.614215,
		-0.828053, -0.128232, -0.545788,
		0.254697, 0.781201, -0.569960,
		34.097401, 38.217434, 38.493782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842991, 37.583984, 38.061283>,  <33.919113, 37.670593, 38.892754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842991, 37.583984, 38.061283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124489, 37.840611, 38.183361>,  <34.293388, 37.994587, 38.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124489, 37.840611, 38.183361>,  <33.842991, 37.583984, 38.061283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124489, 37.840611, 38.183361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683505, -0.494190, -0.537213,
		-0.193832, 0.586661, -0.786294,
		0.703741, 0.641564, 0.305195,
		34.335609, 38.033081, 38.274921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359444, 37.354214, 37.400875>,  <33.842991, 37.583984, 38.061283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359444, 37.354214, 37.400875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579922, 37.678604, 37.479362>,  <33.712208, 37.873238, 37.526455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579922, 37.678604, 37.479362>,  <33.359444, 37.354214, 37.400875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579922, 37.678604, 37.479362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650859, -0.270756, -0.709277,
		-0.522079, 0.518661, -0.677070,
		0.551195, 0.810976, 0.196219,
		33.745281, 37.921898, 37.538227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404224, 37.877663, 36.830891>,  <33.359444, 37.354214, 37.400875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404224, 37.877663, 36.830891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718620, 37.917572, 37.074947>,  <33.907257, 37.941517, 37.221382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718620, 37.917572, 37.074947>,  <33.404224, 37.877663, 36.830891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718620, 37.917572, 37.074947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598367, -0.370978, -0.710163,
		0.155495, 0.923267, -0.351284,
		0.785989, 0.099770, 0.610137,
		33.954418, 37.947502, 37.257988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969589, 38.079597, 36.430389>,  <33.404224, 37.877663, 36.830891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969589, 38.079597, 36.430389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128517, 37.918659, 36.760300>,  <34.223873, 37.822098, 36.958248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128517, 37.918659, 36.760300>,  <33.969589, 38.079597, 36.430389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128517, 37.918659, 36.760300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743765, -0.385279, -0.546236,
		0.537544, 0.830470, 0.146171,
		0.397316, -0.402343, 0.824779,
		34.247711, 37.797955, 37.007732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607525, 38.115238, 36.343346>,  <33.969589, 38.079597, 36.430389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607525, 38.115238, 36.343346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629219, 37.836079, 36.629002>,  <34.642235, 37.668583, 36.800396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629219, 37.836079, 36.629002>,  <34.607525, 38.115238, 36.343346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629219, 37.836079, 36.629002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582429, -0.558816, -0.590340,
		0.811071, 0.447949, 0.376173,
		0.054231, -0.697901, 0.714138,
		34.645489, 37.626709, 36.843243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282032, 38.026608, 36.454037>,  <34.607525, 38.115238, 36.343346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282032, 38.026608, 36.454037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121487, 37.678318, 36.567696>,  <35.025158, 37.469345, 36.635891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121487, 37.678318, 36.567696>,  <35.282032, 38.026608, 36.454037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121487, 37.678318, 36.567696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739711, -0.491103, -0.460050,
		0.540123, 0.025538, 0.841199,
		-0.401367, -0.870727, 0.284146,
		35.001076, 37.417099, 36.652939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825600, 37.617615, 36.703251>,  <35.282032, 38.026608, 36.454037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825600, 37.617615, 36.703251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530758, 37.369698, 36.595528>,  <35.353851, 37.220947, 36.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530758, 37.369698, 36.595528>,  <35.825600, 37.617615, 36.703251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530758, 37.369698, 36.595528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636970, -0.504121, -0.583207,
		0.225702, -0.601430, 0.766381,
		-0.737107, -0.619793, -0.269312,
		35.309628, 37.183758, 36.514732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988960, 36.924541, 36.879726>,  <35.825600, 37.617615, 36.703251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988960, 36.924541, 36.879726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743637, 36.928551, 36.563812>,  <35.596443, 36.930958, 36.374264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743637, 36.928551, 36.563812>,  <35.988960, 36.924541, 36.879726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743637, 36.928551, 36.563812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624698, -0.605726, -0.492797,
		-0.483332, -0.795611, 0.365232,
		-0.613305, 0.010024, -0.789783,
		35.559647, 36.931557, 36.326878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123650, 36.114719, 36.977398>,  <35.988960, 36.924541, 36.879726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123650, 36.114719, 36.977398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919785, 36.261501, 36.666122>,  <35.797466, 36.349571, 36.479355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919785, 36.261501, 36.666122>,  <36.123650, 36.114719, 36.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919785, 36.261501, 36.666122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504796, -0.604904, -0.615850,
		-0.696722, -0.706707, 0.123060,
		-0.509665, 0.366956, -0.778193,
		35.766884, 36.371590, 36.432663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793327, 35.489754, 36.597710>,  <36.123650, 36.114719, 36.977398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793327, 35.489754, 36.597710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855484, 35.817947, 36.377647>,  <35.892780, 36.014862, 36.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855484, 35.817947, 36.377647>,  <35.793327, 35.489754, 36.597710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855484, 35.817947, 36.377647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590371, -0.523653, -0.614207,
		-0.792033, -0.229349, -0.565759,
		0.155394, 0.820480, -0.550151,
		35.902103, 36.064091, 36.212601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852592, 35.160954, 36.041348>,  <35.793327, 35.489754, 36.597710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852592, 35.160954, 36.041348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013290, 35.515213, 35.948200>,  <36.109711, 35.727768, 35.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013290, 35.515213, 35.948200>,  <35.852592, 35.160954, 36.041348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013290, 35.515213, 35.948200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692441, -0.460200, -0.555645,
		-0.599271, 0.061984, -0.798143,
		0.401747, 0.885649, -0.232865,
		36.133816, 35.780907, 35.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948574, 35.252026, 35.305397>,  <35.852592, 35.160954, 36.041348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948574, 35.252026, 35.305397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220348, 35.499687, 35.462887>,  <36.383411, 35.648285, 35.557381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220348, 35.499687, 35.462887>,  <35.948574, 35.252026, 35.305397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220348, 35.499687, 35.462887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699421, -0.384343, -0.602570,
		-0.221756, 0.684787, -0.694183,
		0.679437, 0.619150, 0.393724,
		36.424179, 35.685432, 35.581005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291103, 35.480824, 34.796474>,  <35.948574, 35.252026, 35.305397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291103, 35.480824, 34.796474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575630, 35.626595, 35.036880>,  <36.746346, 35.714058, 35.181126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575630, 35.626595, 35.036880>,  <36.291103, 35.480824, 34.796474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575630, 35.626595, 35.036880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702239, -0.404649, -0.585764,
		0.029734, 0.838722, -0.543747,
		0.711320, 0.364423, 0.601015,
		36.789028, 35.735920, 35.217186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839573, 35.624172, 34.270641>,  <36.291103, 35.480824, 34.796474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839573, 35.624172, 34.270641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004059, 35.605537, 34.634781>,  <37.102749, 35.594357, 34.853264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004059, 35.605537, 34.634781>,  <36.839573, 35.624172, 34.270641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004059, 35.605537, 34.634781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865821, -0.292345, -0.406064,
		0.285053, 0.955178, -0.079879,
		0.411216, -0.046589, 0.910347,
		37.127422, 35.591560, 34.907887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529129, 35.871075, 34.216042>,  <36.839573, 35.624172, 34.270641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529129, 35.871075, 34.216042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524040, 35.660511, 34.556095>,  <37.520985, 35.534172, 34.760128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524040, 35.660511, 34.556095>,  <37.529129, 35.871075, 34.216042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524040, 35.660511, 34.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827465, -0.482865, -0.286606,
		0.561373, 0.699812, 0.441727,
		-0.012724, -0.526407, 0.850138,
		37.520222, 35.502590, 34.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099915, 36.104496, 34.769169>,  <37.529129, 35.871075, 34.216042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099915, 36.104496, 34.769169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999115, 35.723061, 34.835106>,  <37.938637, 35.494202, 34.874668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999115, 35.723061, 34.835106>,  <38.099915, 36.104496, 34.769169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999115, 35.723061, 34.835106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911651, -0.291067, -0.290126,
		0.324639, 0.077164, 0.942685,
		-0.251997, -0.953586, 0.164838,
		37.923515, 35.436985, 34.884556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674725, 35.737240, 34.906536>,  <38.099915, 36.104496, 34.769169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674725, 35.737240, 34.906536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419876, 35.439552, 34.826321>,  <38.266968, 35.260941, 34.778191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419876, 35.439552, 34.826321>,  <38.674725, 35.737240, 34.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419876, 35.439552, 34.826321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713827, -0.471592, -0.517737,
		0.290734, -0.473014, 0.831704,
		-0.637122, -0.744217, -0.200542,
		38.228741, 35.216286, 34.766159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934013, 35.262653, 35.440651>,  <38.674725, 35.737240, 34.906536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934013, 35.262653, 35.440651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138767, 35.528278, 35.222664>,  <39.261620, 35.687653, 35.091869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138767, 35.528278, 35.222664>,  <38.934013, 35.262653, 35.440651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138767, 35.528278, 35.222664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783607, -0.620916, -0.020562,
		-0.352036, -0.416518, -0.838203,
		0.511889, 0.664060, -0.544971,
		39.292336, 35.727497, 35.059174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304359, 34.814236, 35.099743>,  <38.934013, 35.262653, 35.440651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304359, 34.814236, 35.099743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461277, 35.181255, 35.073769>,  <39.555428, 35.401466, 35.058186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461277, 35.181255, 35.073769>,  <39.304359, 34.814236, 35.099743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461277, 35.181255, 35.073769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911798, -0.397207, -0.104168,
		-0.121371, -0.018341, -0.992438,
		0.392293, 0.917546, -0.064932,
		39.578964, 35.456520, 35.054287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564548, 34.856796, 34.329975>,  <39.304359, 34.814236, 35.099743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564548, 34.856796, 34.329975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730923, 35.036854, 34.646046>,  <39.830746, 35.144890, 34.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730923, 35.036854, 34.646046>,  <39.564548, 34.856796, 34.329975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730923, 35.036854, 34.646046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797357, -0.598334, -0.078856,
		0.437290, 0.662848, -0.607791,
		0.415931, 0.450144, 0.790172,
		39.855701, 35.171898, 34.883099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242199, 35.174862, 34.171883>,  <39.564548, 34.856796, 34.329975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242199, 35.174862, 34.171883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188278, 35.014648, 34.534409>,  <40.155926, 34.918522, 34.751923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188278, 35.014648, 34.534409>,  <40.242199, 35.174862, 34.171883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188278, 35.014648, 34.534409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788318, -0.597498, -0.146804,
		0.600320, 0.694674, 0.396288,
		-0.134800, -0.400530, 0.906314,
		40.147839, 34.894489, 34.806301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896465, 35.176823, 34.407806>,  <40.242199, 35.174862, 34.171883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896465, 35.176823, 34.407806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661617, 34.909012, 34.589809>,  <40.520710, 34.748325, 34.699013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661617, 34.909012, 34.589809>,  <40.896465, 35.176823, 34.407806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661617, 34.909012, 34.589809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762896, -0.645605, 0.034418,
		0.270711, 0.367330, 0.889822,
		-0.587116, -0.669524, 0.455007,
		40.485481, 34.708153, 34.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202442, 34.870506, 35.090443>,  <40.896465, 35.176823, 34.407806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202442, 34.870506, 35.090443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978920, 34.598572, 34.900467>,  <40.844807, 34.435410, 34.786484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978920, 34.598572, 34.900467>,  <41.202442, 34.870506, 35.090443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978920, 34.598572, 34.900467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675161, -0.705497, 0.215483,
		-0.481559, -0.200247, 0.853230,
		-0.558801, -0.679835, -0.474937,
		40.811279, 34.394623, 34.757984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415913, 34.486774, 34.380821>,  <41.202442, 34.870506, 35.090443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415913, 34.486774, 34.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715282, 34.665482, 34.184761>,  <41.894905, 34.772705, 34.067123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715282, 34.665482, 34.184761>,  <41.415913, 34.486774, 34.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715282, 34.665482, 34.184761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330709, 0.389215, 0.859735,
		0.574880, -0.805547, 0.143547,
		0.748428, 0.446772, -0.490154,
		41.939812, 34.799515, 34.037716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089409, 34.410175, 34.769127>,  <41.415913, 34.486774, 34.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089409, 34.410175, 34.769127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151604, 34.723621, 34.528534>,  <42.188919, 34.911690, 34.384178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151604, 34.723621, 34.528534>,  <42.089409, 34.410175, 34.769127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151604, 34.723621, 34.528534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246648, 0.558804, 0.791773,
		0.956551, -0.271461, -0.106392,
		0.155483, 0.783612, -0.601479,
		42.198250, 34.958706, 34.348091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789558, 34.782772, 34.859447>,  <42.089409, 34.410175, 34.769127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789558, 34.782772, 34.859447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493126, 35.027145, 34.748051>,  <42.315266, 35.173771, 34.681213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493126, 35.027145, 34.748051>,  <42.789558, 34.782772, 34.859447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493126, 35.027145, 34.748051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178240, 0.578919, 0.795665,
		0.647324, 0.540013, -0.537919,
		-0.741082, 0.610932, -0.278496,
		42.270802, 35.210426, 34.664501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077950, 35.030102, 34.270142>,  <42.789558, 34.782772, 34.859447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077950, 35.030102, 34.270142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353233, 35.140335, 34.001686>,  <43.518402, 35.206474, 33.840614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353233, 35.140335, 34.001686>,  <43.077950, 35.030102, 34.270142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353233, 35.140335, 34.001686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606890, -0.725574, 0.324388,
		-0.397566, -0.630553, -0.666591,
		0.688205, 0.275582, -0.671140,
		43.559696, 35.223011, 33.800343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176479, 34.406639, 33.956692>,  <43.077950, 35.030102, 34.270142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176479, 34.406639, 33.956692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456722, 34.691986, 33.963058>,  <43.624866, 34.863194, 33.966877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456722, 34.691986, 33.963058>,  <43.176479, 34.406639, 33.956692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456722, 34.691986, 33.963058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660035, -0.656374, 0.365413,
		0.271120, -0.245507, -0.930709,
		0.700605, 0.713372, 0.015913,
		43.666904, 34.905998, 33.967831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708874, 34.059753, 33.925911>,  <43.176479, 34.406639, 33.956692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708874, 34.059753, 33.925911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835007, 34.416729, 34.054974>,  <43.910686, 34.630917, 34.132412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835007, 34.416729, 34.054974>,  <43.708874, 34.059753, 33.925911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835007, 34.416729, 34.054974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601123, -0.450939, 0.659777,
		0.734313, -0.014093, -0.678665,
		0.315334, 0.892443, 0.322659,
		43.929607, 34.684464, 34.151772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371159, 34.073475, 34.034573>,  <43.708874, 34.059753, 33.925911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371159, 34.073475, 34.034573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235336, 34.354118, 34.285152>,  <44.153843, 34.522507, 34.435501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235336, 34.354118, 34.285152>,  <44.371159, 34.073475, 34.034573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235336, 34.354118, 34.285152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398099, -0.496224, 0.771543,
		0.852185, 0.511372, -0.110815,
		-0.339556, 0.701613, 0.626451,
		44.133469, 34.564602, 34.473087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823036, 34.328674, 34.527496>,  <44.371159, 34.073475, 34.034573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823036, 34.328674, 34.527496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483791, 34.337475, 34.739243>,  <44.280247, 34.342754, 34.866291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483791, 34.337475, 34.739243>,  <44.823036, 34.328674, 34.527496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483791, 34.337475, 34.739243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447705, -0.504525, 0.738251,
		0.283323, 0.863117, 0.418040,
		-0.848109, 0.022005, 0.529365,
		44.229359, 34.344078, 34.898052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006916, 34.651905, 35.156055>,  <44.823036, 34.328674, 34.527496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006916, 34.651905, 35.156055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691555, 34.415394, 35.223942>,  <44.502338, 34.273487, 35.264675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691555, 34.415394, 35.223942>,  <45.006916, 34.651905, 35.156055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691555, 34.415394, 35.223942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399077, -0.281659, 0.872586,
		-0.468139, 0.755683, 0.458028,
		-0.788406, -0.591280, 0.169719,
		44.455032, 34.238010, 35.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611950, 34.251431, 34.774422>,  <45.006916, 34.651905, 35.156055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611950, 34.251431, 34.774422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861031, 34.563770, 34.794518>,  <46.010479, 34.751175, 34.806576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861031, 34.563770, 34.794518>,  <45.611950, 34.251431, 34.774422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861031, 34.563770, 34.794518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766667, -0.621706, 0.160323,
		0.156420, -0.061318, -0.985785,
		0.622699, 0.780847, 0.050237,
		46.047840, 34.798023, 34.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205540, 34.240368, 34.217903>,  <45.611950, 34.251431, 34.774422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205540, 34.240368, 34.217903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278461, 34.420891, 34.567322>,  <46.322216, 34.529205, 34.776974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278461, 34.420891, 34.567322>,  <46.205540, 34.240368, 34.217903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278461, 34.420891, 34.567322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830804, -0.545861, 0.108631,
		0.525861, 0.705942, -0.474465,
		0.182304, 0.451312, 0.873546,
		46.333153, 34.556286, 34.829384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832428, 34.729355, 34.298618>,  <46.205540, 34.240368, 34.217903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832428, 34.729355, 34.298618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.737232, 34.533329, 34.634045>,  <46.680115, 34.415714, 34.835300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.737232, 34.533329, 34.634045>,  <46.832428, 34.729355, 34.298618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737232, 34.533329, 34.634045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931748, -0.358969, 0.054653,
		0.274236, 0.794340, 0.542051,
		-0.237992, -0.490067, 0.838567,
		46.665836, 34.386311, 34.885616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179592, 35.116695, 34.825565>,  <46.832428, 34.729355, 34.298618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179592, 35.116695, 34.825565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135899, 34.719105, 34.828964>,  <47.109684, 34.480549, 34.831001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135899, 34.719105, 34.828964>,  <47.179592, 35.116695, 34.825565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135899, 34.719105, 34.828964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987122, -0.109475, -0.116646,
		0.116873, -0.004358, 0.993137,
		-0.109232, -0.993980, 0.008493,
		47.103130, 34.420910, 34.831512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945312, 35.431686, 35.021671>,  <47.179592, 35.116695, 34.825565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945312, 35.431686, 35.021671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012230, 35.094406, 35.226036>,  <48.052380, 34.892040, 35.348656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012230, 35.094406, 35.226036>,  <47.945312, 35.431686, 35.021671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.012230, 35.094406, 35.226036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934715, -0.029164, -0.354199,
		0.313561, 0.536812, 0.783271,
		0.167295, -0.843198, 0.510911,
		48.062420, 34.841446, 35.379311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.103775, 26.528364, 28.276085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.819542, 26.450064, 28.005749>,  <40.649002, 26.403084, 27.843548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.819542, 26.450064, 28.005749>,  <41.103775, 26.528364, 28.276085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819542, 26.450064, 28.005749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702970, 0.156362, 0.693818,
		-0.030141, 0.968108, -0.248715,
		-0.710580, -0.195752, -0.675838,
		40.606369, 26.391338, 27.802998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464985, 27.024843, 28.401146>,  <41.103775, 26.528364, 28.276085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464985, 27.024843, 28.401146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317860, 26.735851, 28.166973>,  <40.229584, 26.562456, 28.026468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.317860, 26.735851, 28.166973>,  <40.464985, 27.024843, 28.401146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317860, 26.735851, 28.166973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766641, -0.120705, 0.630628,
		-0.526282, 0.680773, -0.509486,
		-0.367817, -0.722481, -0.585433,
		40.207516, 26.519108, 27.991343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723492, 27.212854, 28.143206>,  <40.464985, 27.024843, 28.401146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723492, 27.212854, 28.143206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772141, 26.815859, 28.148409>,  <39.801331, 26.577662, 28.151531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772141, 26.815859, 28.148409>,  <39.723492, 27.212854, 28.143206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772141, 26.815859, 28.148409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841414, -0.096142, 0.531771,
		-0.526527, -0.075622, -0.846788,
		0.121625, -0.992491, 0.013009,
		39.808628, 26.518112, 28.152311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996983, 26.884342, 27.978361>,  <39.723492, 27.212854, 28.143206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996983, 26.884342, 27.978361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241562, 26.646944, 28.187702>,  <39.388309, 26.504505, 28.313307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241562, 26.646944, 28.187702>,  <38.996983, 26.884342, 27.978361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241562, 26.646944, 28.187702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731157, -0.170859, 0.660467,
		-0.302566, -0.786491, -0.538410,
		0.611444, -0.593497, 0.523352,
		39.424995, 26.468895, 28.344707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536369, 26.460644, 28.367640>,  <38.996983, 26.884342, 27.978361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536369, 26.460644, 28.367640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886639, 26.371391, 28.538940>,  <39.096802, 26.317839, 28.641722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886639, 26.371391, 28.538940>,  <38.536369, 26.460644, 28.367640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886639, 26.371391, 28.538940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476081, -0.250444, 0.842986,
		-0.080844, -0.942067, -0.325537,
		0.875677, -0.223132, 0.428253,
		39.149342, 26.304451, 28.667416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300945, 25.894306, 28.771339>,  <38.536369, 26.460644, 28.367640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300945, 25.894306, 28.771339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634903, 26.054560, 28.922304>,  <38.835278, 26.150713, 29.012882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634903, 26.054560, 28.922304>,  <38.300945, 25.894306, 28.771339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634903, 26.054560, 28.922304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442676, 0.081281, 0.892990,
		0.327088, -0.912625, 0.245213,
		0.834896, 0.400636, 0.377411,
		38.885372, 26.174749, 29.035528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520069, 25.496662, 29.263552>,  <38.300945, 25.894306, 28.771339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520069, 25.496662, 29.263552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629917, 25.871922, 29.347898>,  <38.695827, 26.097076, 29.398506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629917, 25.871922, 29.347898>,  <38.520069, 25.496662, 29.263552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629917, 25.871922, 29.347898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478277, -0.056975, 0.876359,
		0.834167, -0.341518, 0.433047,
		0.274620, 0.938147, 0.210867,
		38.712303, 26.153366, 29.411158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297901, 25.583902, 29.983191>,  <38.520069, 25.496662, 29.263552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297901, 25.583902, 29.983191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425919, 25.955305, 29.907883>,  <38.502728, 26.178146, 29.862698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425919, 25.955305, 29.907883>,  <38.297901, 25.583902, 29.983191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425919, 25.955305, 29.907883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473565, 0.328901, 0.817044,
		0.820554, -0.172330, 0.544971,
		0.320043, 0.928508, -0.188272,
		38.521931, 26.233858, 29.851400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388447, 25.766006, 30.570131>,  <38.297901, 25.583902, 29.983191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388447, 25.766006, 30.570131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364559, 26.121939, 30.389185>,  <38.350227, 26.335499, 30.280617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364559, 26.121939, 30.389185>,  <38.388447, 25.766006, 30.570131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364559, 26.121939, 30.389185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575873, 0.339447, 0.743738,
		0.815355, 0.304920, 0.492158,
		-0.059719, 0.889831, -0.452365,
		38.346645, 26.388887, 30.253475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386898, 26.290272, 31.171335>,  <38.388447, 25.766006, 30.570131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386898, 26.290272, 31.171335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241909, 26.485826, 30.853945>,  <38.154915, 26.603159, 30.663511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241909, 26.485826, 30.853945>,  <38.386898, 26.290272, 31.171335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241909, 26.485826, 30.853945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652293, 0.475017, 0.590655,
		0.665676, 0.731676, 0.146714,
		-0.362477, 0.488886, -0.793475,
		38.133167, 26.632492, 30.615902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370747, 26.931171, 31.396828>,  <38.386898, 26.290272, 31.171335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370747, 26.931171, 31.396828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110012, 26.936895, 31.093538>,  <37.953571, 26.940331, 30.911566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110012, 26.936895, 31.093538>,  <38.370747, 26.931171, 31.396828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110012, 26.936895, 31.093538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593271, 0.613154, 0.521605,
		0.472372, 0.789833, -0.391187,
		-0.651839, 0.014311, -0.758222,
		37.914459, 26.941189, 30.866072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339478, 27.632940, 31.293304>,  <38.370747, 26.931171, 31.396828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339478, 27.632940, 31.293304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018970, 27.453333, 31.135138>,  <37.826668, 27.345568, 31.040237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018970, 27.453333, 31.135138>,  <38.339478, 27.632940, 31.293304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018970, 27.453333, 31.135138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593769, 0.678035, 0.433252,
		0.073568, 0.581937, -0.809899,
		-0.801265, -0.449020, -0.395418,
		37.778591, 27.318626, 31.016512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053406, 28.137934, 30.831604>,  <38.339478, 27.632940, 31.293304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053406, 28.137934, 30.831604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771267, 27.869574, 30.923143>,  <37.601982, 27.708557, 30.978067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771267, 27.869574, 30.923143>,  <38.053406, 28.137934, 30.831604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771267, 27.869574, 30.923143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546823, 0.720417, 0.426595,
		-0.451069, 0.175760, -0.875011,
		-0.705351, -0.670900, 0.228848,
		37.559662, 27.668303, 30.991798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470127, 28.374603, 30.705175>,  <38.053406, 28.137934, 30.831604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470127, 28.374603, 30.705175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337276, 28.090658, 30.953623>,  <37.257565, 27.920292, 31.102692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337276, 28.090658, 30.953623>,  <37.470127, 28.374603, 30.705175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337276, 28.090658, 30.953623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584637, 0.671678, 0.455025,
		-0.740197, -0.212004, -0.638093,
		-0.332126, -0.709861, 0.621120,
		37.237640, 27.877701, 31.139959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710022, 28.472507, 30.739166>,  <37.470127, 28.374603, 30.705175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710022, 28.472507, 30.739166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821342, 28.272238, 31.067038>,  <36.888134, 28.152075, 31.263760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821342, 28.272238, 31.067038>,  <36.710022, 28.472507, 30.739166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821342, 28.272238, 31.067038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646283, 0.533694, 0.545425,
		-0.710538, -0.681538, -0.175049,
		0.278305, -0.500676, 0.819677,
		36.904835, 28.122034, 31.312941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088688, 28.398335, 31.168692>,  <36.710022, 28.472507, 30.739166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088688, 28.398335, 31.168692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 28.322718, 31.418844>,  <36.573215, 28.277348, 31.568935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 28.322718, 31.418844>,  <36.088688, 28.398335, 31.168692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391518, 28.322718, 31.418844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454547, 0.535158, 0.712034,
		-0.469282, -0.823328, 0.319226,
		0.757074, -0.189042, 0.625382,
		36.618641, 28.266005, 31.606459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718105, 28.353792, 31.797707>,  <36.088688, 28.398335, 31.168692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718105, 28.353792, 31.797707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099014, 28.423002, 31.898300>,  <36.327560, 28.464529, 31.958656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099014, 28.423002, 31.898300>,  <35.718105, 28.353792, 31.797707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099014, 28.423002, 31.898300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303780, 0.618091, 0.725039,
		-0.029990, -0.766829, 0.641151,
		0.952270, 0.173025, 0.251484,
		36.384697, 28.474909, 31.973745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691315, 28.342348, 32.490101>,  <35.718105, 28.353792, 31.797707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691315, 28.342348, 32.490101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035275, 28.537775, 32.430939>,  <36.241650, 28.655031, 32.395443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035275, 28.537775, 32.430939>,  <35.691315, 28.342348, 32.490101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035275, 28.537775, 32.430939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246355, 0.650963, 0.718022,
		0.447079, -0.580992, 0.680125,
		0.859901, 0.488564, -0.147901,
		36.293243, 28.684345, 32.386570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004704, 28.513292, 33.154160>,  <35.691315, 28.342348, 32.490101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004704, 28.513292, 33.154160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116196, 28.761518, 32.860981>,  <36.183090, 28.910454, 32.685074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116196, 28.761518, 32.860981>,  <36.004704, 28.513292, 33.154160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116196, 28.761518, 32.860981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322464, 0.779359, 0.537231,
		0.904615, 0.086607, 0.417339,
		0.278728, 0.620563, -0.732947,
		36.199814, 28.947687, 32.641098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360912, 29.060095, 33.525719>,  <36.004704, 28.513292, 33.154160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360912, 29.060095, 33.525719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275597, 29.229471, 33.173534>,  <36.224407, 29.331097, 32.962223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275597, 29.229471, 33.173534>,  <36.360912, 29.060095, 33.525719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275597, 29.229471, 33.173534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408021, 0.780234, 0.474082,
		0.887709, 0.460360, 0.006361,
		-0.213285, 0.423442, -0.880458,
		36.211613, 29.356504, 32.909397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596054, 29.802217, 33.638622>,  <36.360912, 29.060095, 33.525719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596054, 29.802217, 33.638622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366852, 29.837412, 33.312695>,  <36.229332, 29.858528, 33.117138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366852, 29.837412, 33.312695>,  <36.596054, 29.802217, 33.638622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366852, 29.837412, 33.312695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351130, 0.871993, 0.341081,
		0.740525, 0.481547, -0.468759,
		-0.573001, 0.087984, -0.814818,
		36.194950, 29.863808, 33.068249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287571, 29.807817, 34.372513>,  <36.596054, 29.802217, 33.638622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287571, 29.807817, 34.372513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564102, 30.002228, 34.586372>,  <36.730022, 30.118874, 34.714687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564102, 30.002228, 34.586372>,  <36.287571, 29.807817, 34.372513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564102, 30.002228, 34.586372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368561, 0.399243, -0.839505,
		-0.621474, 0.777422, 0.096878,
		0.691327, 0.486025, 0.534646,
		36.771500, 30.148035, 34.746765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232628, 30.503931, 34.025894>,  <36.287571, 29.807817, 34.372513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232628, 30.503931, 34.025894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578896, 30.477240, 34.224354>,  <36.786655, 30.461224, 34.343430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578896, 30.477240, 34.224354>,  <36.232628, 30.503931, 34.025894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578896, 30.477240, 34.224354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492228, 0.294103, -0.819277,
		-0.091247, 0.953441, 0.287443,
		0.865671, -0.066731, 0.496147,
		36.838596, 30.457220, 34.373199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703968, 31.118347, 33.828762>,  <36.232628, 30.503931, 34.025894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703968, 31.118347, 33.828762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933796, 30.827463, 33.978977>,  <37.071693, 30.652933, 34.069107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933796, 30.827463, 33.978977>,  <36.703968, 31.118347, 33.828762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933796, 30.827463, 33.978977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654087, 0.132181, -0.744781,
		0.491972, 0.673568, 0.551607,
		0.574572, -0.727210, 0.375542,
		37.106167, 30.609301, 34.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410381, 31.416519, 33.856144>,  <36.703968, 31.118347, 33.828762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410381, 31.416519, 33.856144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429462, 31.017014, 33.850536>,  <37.440910, 30.777309, 33.847172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429462, 31.017014, 33.850536>,  <37.410381, 31.416519, 33.856144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429462, 31.017014, 33.850536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787145, 0.046224, -0.615033,
		0.614920, 0.018306, 0.788377,
		0.047700, -0.998763, -0.014014,
		37.443771, 30.717384, 33.846333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152325, 31.272947, 33.873306>,  <37.410381, 31.416519, 33.856144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152325, 31.272947, 33.873306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989578, 30.926613, 33.756832>,  <37.891930, 30.718813, 33.686947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989578, 30.926613, 33.756832>,  <38.152325, 31.272947, 33.873306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989578, 30.926613, 33.756832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805684, -0.189909, -0.561077,
		0.430502, -0.462886, 0.774858,
		-0.406868, -0.865835, -0.291184,
		37.867519, 30.666862, 33.669476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665581, 30.747931, 33.925217>,  <38.152325, 31.272947, 33.873306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665581, 30.747931, 33.925217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412960, 30.585241, 33.661179>,  <38.261387, 30.487627, 33.502758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412960, 30.585241, 33.661179>,  <38.665581, 30.747931, 33.925217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412960, 30.585241, 33.661179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767209, -0.204896, -0.607789,
		0.111952, -0.890277, 0.441444,
		-0.631551, -0.406723, -0.660091,
		38.223495, 30.463224, 33.463150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873631, 30.051275, 33.860451>,  <38.665581, 30.747931, 33.925217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873631, 30.051275, 33.860451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659840, 30.143410, 33.535175>,  <38.531567, 30.198690, 33.340008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659840, 30.143410, 33.535175>,  <38.873631, 30.051275, 33.860451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659840, 30.143410, 33.535175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734000, -0.350514, -0.581708,
		-0.419023, -0.907791, 0.018274,
		-0.534475, 0.230336, -0.813192,
		38.499496, 30.212511, 33.291218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935883, 29.451721, 33.380165>,  <38.873631, 30.051275, 33.860451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935883, 29.451721, 33.380165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839916, 29.759007, 33.142750>,  <38.782337, 29.943378, 33.000301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839916, 29.759007, 33.142750>,  <38.935883, 29.451721, 33.380165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839916, 29.759007, 33.142750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495571, -0.428815, -0.755332,
		-0.834774, -0.475359, -0.277823,
		-0.239920, 0.768213, -0.593538,
		38.767941, 29.989470, 32.964687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717175, 29.139929, 32.748249>,  <38.935883, 29.451721, 33.380165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717175, 29.139929, 32.748249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805641, 29.520929, 32.664509>,  <38.858723, 29.749529, 32.614265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805641, 29.520929, 32.664509>,  <38.717175, 29.139929, 32.748249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805641, 29.520929, 32.664509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513805, -0.296259, -0.805130,
		-0.828909, 0.070504, -0.554922,
		0.221166, 0.952502, -0.209347,
		38.871990, 29.806681, 32.601704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572273, 29.171923, 32.097805>,  <38.717175, 29.139929, 32.748249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572273, 29.171923, 32.097805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807320, 29.491774, 32.147289>,  <38.948345, 29.683685, 32.176979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807320, 29.491774, 32.147289>,  <38.572273, 29.171923, 32.097805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807320, 29.491774, 32.147289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578805, -0.308563, -0.754834,
		-0.565416, 0.515153, -0.644145,
		0.587614, 0.799629, 0.123706,
		38.983604, 29.731663, 32.184402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895535, 29.237507, 31.427547>,  <38.572273, 29.171923, 32.097805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895535, 29.237507, 31.427547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113583, 29.508129, 31.625582>,  <39.244411, 29.670504, 31.744402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113583, 29.508129, 31.625582>,  <38.895535, 29.237507, 31.427547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113583, 29.508129, 31.625582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732852, -0.097760, -0.673328,
		-0.407146, 0.729872, -0.549108,
		0.545124, 0.676558, 0.495085,
		39.277119, 29.711096, 31.774107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070896, 29.708330, 30.922468>,  <38.895535, 29.237507, 31.427547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070896, 29.708330, 30.922468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349072, 29.712084, 31.209879>,  <39.515976, 29.714336, 31.382326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349072, 29.712084, 31.209879>,  <39.070896, 29.708330, 30.922468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349072, 29.712084, 31.209879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693980, -0.268204, -0.668175,
		0.186440, 0.963316, -0.193033,
		0.695436, 0.009386, 0.718526,
		39.557701, 29.714899, 31.425436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715443, 30.044132, 30.711536>,  <39.070896, 29.708330, 30.922468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715443, 30.044132, 30.711536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847565, 29.837431, 31.027477>,  <39.926838, 29.713409, 31.217041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847565, 29.837431, 31.027477>,  <39.715443, 30.044132, 30.711536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847565, 29.837431, 31.027477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827709, -0.243612, -0.505520,
		0.453646, 0.820742, 0.347256,
		0.330306, -0.516755, 0.789850,
		39.946655, 29.682405, 31.264433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498302, 30.185791, 30.824425>,  <39.715443, 30.044132, 30.711536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498302, 30.185791, 30.824425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401463, 29.849548, 31.018236>,  <40.343357, 29.647802, 31.134523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401463, 29.849548, 31.018236>,  <40.498302, 30.185791, 30.824425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401463, 29.849548, 31.018236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829851, -0.438150, -0.345504,
		0.502729, 0.318440, 0.803654,
		-0.242099, -0.840607, 0.484529,
		40.328835, 29.597366, 31.163595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162952, 29.997137, 30.854418>,  <40.498302, 30.185791, 30.824425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162952, 29.997137, 30.854418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937462, 29.680721, 30.949471>,  <40.802170, 29.490871, 31.006502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937462, 29.680721, 30.949471>,  <41.162952, 29.997137, 30.854418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937462, 29.680721, 30.949471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621706, -0.595789, -0.508445,
		0.543780, -0.138885, 0.827656,
		-0.563724, -0.791041, 0.237633,
		40.768345, 29.443409, 31.020760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599541, 29.581474, 31.195086>,  <41.162952, 29.997137, 30.854418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599541, 29.581474, 31.195086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.310463, 29.357321, 31.033253>,  <41.137016, 29.222828, 30.936153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.310463, 29.357321, 31.033253>,  <41.599541, 29.581474, 31.195086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310463, 29.357321, 31.033253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688609, -0.533426, -0.491197,
		0.059445, -0.633582, 0.771388,
		-0.722692, -0.560384, -0.404580,
		41.093655, 29.189205, 30.911879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879322, 28.913998, 31.131468>,  <41.599541, 29.581474, 31.195086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879322, 28.913998, 31.131468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.554379, 28.888439, 30.899611>,  <41.359413, 28.873104, 30.760496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.554379, 28.888439, 30.899611>,  <41.879322, 28.913998, 31.131468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554379, 28.888439, 30.899611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561232, -0.355639, -0.747355,
		-0.158388, -0.932436, 0.324770,
		-0.812362, -0.063899, -0.579642,
		41.310669, 28.869270, 30.725718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859123, 28.211510, 30.934614>,  <41.879322, 28.913998, 31.131468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859123, 28.211510, 30.934614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650494, 28.419699, 30.664185>,  <41.525318, 28.544611, 30.501926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650494, 28.419699, 30.664185>,  <41.859123, 28.211510, 30.934614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650494, 28.419699, 30.664185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625862, -0.305158, -0.717757,
		-0.579881, -0.797489, -0.166581,
		-0.521570, 0.520471, -0.676073,
		41.494022, 28.575840, 30.461363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719982, 27.778473, 30.294874>,  <41.859123, 28.211510, 30.934614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719982, 27.778473, 30.294874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600624, 28.107098, 30.100557>,  <41.529011, 28.304274, 29.983967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600624, 28.107098, 30.100557>,  <41.719982, 27.778473, 30.294874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600624, 28.107098, 30.100557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457449, -0.323608, -0.828262,
		-0.837676, -0.469374, -0.279260,
		-0.298394, 0.821563, -0.485794,
		41.511105, 28.353567, 29.954819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.278751, 27.619652, 29.713701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431396, 27.977221, 29.619658>,  <41.522984, 28.191761, 29.563231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.431396, 27.977221, 29.619658>,  <41.278751, 27.619652, 29.713701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431396, 27.977221, 29.619658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286608, -0.356258, -0.889346,
		-0.878766, 0.271999, -0.392157,
		0.381610, 0.893922, -0.235110,
		41.545879, 28.245398, 29.549124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014610, 27.893841, 28.985624>,  <41.278751, 27.619652, 29.713701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014610, 27.893841, 28.985624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.342548, 28.109863, 29.061718>,  <41.539310, 28.239477, 29.107374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.342548, 28.109863, 29.061718>,  <41.014610, 27.893841, 28.985624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342548, 28.109863, 29.061718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410340, -0.322453, -0.853021,
		-0.399338, 0.777408, -0.485969,
		0.819848, 0.540056, 0.190234,
		41.588501, 28.271879, 29.118788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272137, 27.997206, 28.335873>,  <41.014610, 27.893841, 28.985624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272137, 27.997206, 28.335873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.595024, 28.115051, 28.540461>,  <41.788757, 28.185759, 28.663214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.595024, 28.115051, 28.540461>,  <41.272137, 27.997206, 28.335873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595024, 28.115051, 28.540461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586260, -0.299559, -0.752704,
		-0.068541, 0.907451, -0.414529,
		0.807218, 0.294613, 0.511471,
		41.837189, 28.203436, 28.693901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575378, 28.429781, 27.942598>,  <41.272137, 27.997206, 28.335873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575378, 28.429781, 27.942598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.850636, 28.280622, 28.191565>,  <42.015789, 28.191128, 28.340944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.850636, 28.280622, 28.191565>,  <41.575378, 28.429781, 27.942598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850636, 28.280622, 28.191565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553927, -0.284063, -0.782607,
		0.468635, 0.883322, 0.011079,
		0.688147, -0.372894, 0.622418,
		42.057079, 28.168755, 28.378290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171242, 28.728855, 27.794106>,  <41.575378, 28.429781, 27.942598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171242, 28.728855, 27.794106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.275333, 28.396807, 27.991360>,  <42.337788, 28.197578, 28.109713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.275333, 28.396807, 27.991360>,  <42.171242, 28.728855, 27.794106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275333, 28.396807, 27.991360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598650, -0.262003, -0.756949,
		0.757561, 0.492196, 0.428770,
		0.260228, -0.830119, 0.493137,
		42.353401, 28.147772, 28.139301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921455, 28.597668, 27.816078>,  <42.171242, 28.728855, 27.794106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921455, 28.597668, 27.816078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767651, 28.234749, 27.884146>,  <42.675365, 28.016998, 27.924986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767651, 28.234749, 27.884146>,  <42.921455, 28.597668, 27.816078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767651, 28.234749, 27.884146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593784, -0.384242, -0.706950,
		0.706801, -0.170789, 0.686486,
		-0.384516, -0.907298, 0.170170,
		42.652294, 27.962559, 27.935196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601353, 28.223312, 27.775173>,  <42.921455, 28.597668, 27.816078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601353, 28.223312, 27.775173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329807, 27.932169, 27.736454>,  <43.166882, 27.757483, 27.713223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329807, 27.932169, 27.736454>,  <43.601353, 28.223312, 27.775173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329807, 27.932169, 27.736454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598635, -0.472295, -0.646973,
		0.425188, -0.497150, 0.756344,
		-0.678860, -0.727860, -0.096797,
		43.126148, 27.713812, 27.707415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009125, 27.621233, 27.835354>,  <43.601353, 28.223312, 27.775173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009125, 27.621233, 27.835354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.669827, 27.491058, 27.668226>,  <43.466248, 27.412954, 27.567949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.669827, 27.491058, 27.668226>,  <44.009125, 27.621233, 27.835354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669827, 27.491058, 27.668226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525130, -0.414510, -0.743250,
		0.068690, -0.849867, 0.522502,
		-0.848246, -0.325435, -0.417818,
		43.415352, 27.393429, 27.542881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167194, 26.876080, 27.605459>,  <44.009125, 27.621233, 27.835354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167194, 26.876080, 27.605459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858311, 27.020864, 27.396584>,  <43.672981, 27.107735, 27.271257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858311, 27.020864, 27.396584>,  <44.167194, 26.876080, 27.605459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858311, 27.020864, 27.396584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451198, -0.266251, -0.851781,
		-0.447346, -0.893361, 0.042284,
		-0.772206, 0.361962, -0.522189,
		43.626648, 27.129454, 27.239927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090446, 26.382727, 27.066547>,  <44.167194, 26.876080, 27.605459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090446, 26.382727, 27.066547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.903481, 26.716455, 26.949633>,  <43.791302, 26.916693, 26.879484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.903481, 26.716455, 26.949633>,  <44.090446, 26.382727, 27.066547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903481, 26.716455, 26.949633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390658, -0.101658, -0.914906,
		-0.793038, -0.541824, -0.278418,
		-0.467415, 0.834321, -0.292287,
		43.763256, 26.966751, 26.861946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720306, 26.122604, 26.441031>,  <44.090446, 26.382727, 27.066547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720306, 26.122604, 26.441031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763836, 26.519949, 26.426142>,  <43.789955, 26.758356, 26.417208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763836, 26.519949, 26.426142>,  <43.720306, 26.122604, 26.441031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763836, 26.519949, 26.426142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281869, -0.066746, -0.957129,
		-0.953261, 0.093670, -0.287262,
		0.108828, 0.993363, -0.037224,
		43.796486, 26.817959, 26.414974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378143, 26.294641, 25.857647>,  <43.720306, 26.122604, 26.441031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378143, 26.294641, 25.857647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582939, 26.628260, 25.939844>,  <43.705818, 26.828430, 25.989162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582939, 26.628260, 25.939844>,  <43.378143, 26.294641, 25.857647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582939, 26.628260, 25.939844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304123, 0.047726, -0.951436,
		-0.803351, 0.549624, -0.229218,
		0.511993, 0.834047, 0.205495,
		43.736538, 26.878473, 26.001493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153408, 26.757179, 25.310095>,  <43.378143, 26.294641, 25.857647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153408, 26.757179, 25.310095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.508690, 26.871634, 25.453886>,  <43.721859, 26.940306, 25.540161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.508690, 26.871634, 25.453886>,  <43.153408, 26.757179, 25.310095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508690, 26.871634, 25.453886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372237, 0.010487, -0.928079,
		-0.269327, 0.958132, -0.097196,
		0.888202, 0.286136, 0.359476,
		43.775150, 26.957474, 25.561729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428524, 27.398008, 24.836477>,  <43.153408, 26.757179, 25.310095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428524, 27.398008, 24.836477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.751354, 27.229849, 25.002316>,  <43.945053, 27.128954, 25.101818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.751354, 27.229849, 25.002316>,  <43.428524, 27.398008, 24.836477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751354, 27.229849, 25.002316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435792, -0.049641, -0.898677,
		0.398382, 0.905981, 0.143141,
		0.807079, -0.420397, 0.414596,
		43.993477, 27.103729, 25.126694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067177, 27.766298, 24.504545>,  <43.428524, 27.398008, 24.836477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067177, 27.766298, 24.504545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.174400, 27.407394, 24.644869>,  <44.238735, 27.192053, 24.729063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.174400, 27.407394, 24.644869>,  <44.067177, 27.766298, 24.504545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174400, 27.407394, 24.644869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529599, -0.166941, -0.831659,
		0.804779, 0.408724, 0.430437,
		0.268061, -0.897260, 0.350810,
		44.254818, 27.138216, 24.750113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710430, 27.793242, 24.348684>,  <44.067177, 27.766298, 24.504545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710430, 27.793242, 24.348684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.649467, 27.400072, 24.389927>,  <44.612892, 27.164169, 24.414673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.649467, 27.400072, 24.389927>,  <44.710430, 27.793242, 24.348684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649467, 27.400072, 24.389927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656002, -0.178637, -0.733315,
		0.739212, -0.044122, 0.672026,
		-0.152404, -0.982925, 0.103106,
		44.603745, 27.105194, 24.420858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367203, 27.456491, 24.312134>,  <44.710430, 27.793242, 24.348684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367203, 27.456491, 24.312134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130867, 27.140310, 24.247528>,  <44.989063, 26.950602, 24.208765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130867, 27.140310, 24.247528>,  <45.367203, 27.456491, 24.312134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130867, 27.140310, 24.247528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620034, -0.316794, -0.717773,
		0.516201, -0.524234, 0.677284,
		-0.590842, -0.790455, -0.161514,
		44.953613, 26.903173, 24.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844536, 26.977718, 24.273352>,  <45.367203, 27.456491, 24.312134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844536, 26.977718, 24.273352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.522373, 26.807880, 24.107922>,  <45.329075, 26.705978, 24.008663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.522373, 26.807880, 24.107922>,  <45.844536, 26.977718, 24.273352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522373, 26.807880, 24.107922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556561, -0.301739, -0.774075,
		0.203876, -0.853623, 0.479335,
		-0.805403, -0.424595, -0.413576,
		45.280754, 26.680502, 23.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063503, 26.337406, 24.156620>,  <45.844536, 26.977718, 24.273352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063503, 26.337406, 24.156620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762531, 26.445862, 23.916512>,  <45.581947, 26.510935, 23.772446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762531, 26.445862, 23.916512>,  <46.063503, 26.337406, 24.156620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762531, 26.445862, 23.916512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535217, -0.279495, -0.797136,
		-0.383908, -0.921068, 0.065182,
		-0.752434, 0.271141, -0.600271,
		45.536800, 26.527205, 23.736429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136360, 25.845114, 23.705202>,  <46.063503, 26.337406, 24.156620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136360, 25.845114, 23.705202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.912971, 26.103676, 23.497252>,  <45.778938, 26.258812, 23.372480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.912971, 26.103676, 23.497252>,  <46.136360, 25.845114, 23.705202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912971, 26.103676, 23.497252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531271, -0.202602, -0.822620,
		-0.637074, -0.735604, -0.230269,
		-0.558470, 0.646404, -0.519877,
		45.745430, 26.297598, 23.341288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888306, 25.539387, 23.038618>,  <46.136360, 25.845114, 23.705202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888306, 25.539387, 23.038618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.899513, 25.937637, 23.002974>,  <45.906239, 26.176588, 22.981586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.899513, 25.937637, 23.002974>,  <45.888306, 25.539387, 23.038618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899513, 25.937637, 23.002974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557910, -0.089546, -0.825057,
		-0.829428, -0.026594, -0.557979,
		0.028023, 0.995627, -0.089109,
		45.907921, 26.236326, 22.976240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845852, 25.561720, 22.321291>,  <45.888306, 25.539387, 23.038618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845852, 25.561720, 22.321291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.984032, 25.916325, 22.444426>,  <46.066940, 26.129087, 22.518307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.984032, 25.916325, 22.444426>,  <45.845852, 25.561720, 22.321291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984032, 25.916325, 22.444426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675189, -0.006967, -0.737612,
		-0.651757, 0.462655, -0.600969,
		0.345447, 0.886511, 0.307839,
		46.087666, 26.182278, 22.536777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102409, 25.973492, 21.736706>,  <45.845852, 25.561720, 22.321291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102409, 25.973492, 21.736706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.317074, 26.147972, 22.025627>,  <46.445873, 26.252661, 22.198980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.317074, 26.147972, 22.025627>,  <46.102409, 25.973492, 21.736706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317074, 26.147972, 22.025627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830104, -0.119340, -0.544688,
		-0.151394, 0.891900, -0.426138,
		0.536662, 0.436202, 0.722303,
		46.478073, 26.278833, 22.242317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749470, 26.029350, 21.059580>,  <46.102409, 25.973492, 21.736706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749470, 26.029350, 21.059580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.975193, 26.293907, 20.861946>,  <46.110626, 26.452641, 20.743366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.975193, 26.293907, 20.861946>,  <45.749470, 26.029350, 21.059580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975193, 26.293907, 20.861946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412661, 0.292372, 0.862687,
		0.715031, -0.690709, -0.107944,
		0.564306, 0.661392, -0.494084,
		46.144485, 26.492325, 20.713720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155769, 26.451056, 21.242802>,  <45.749470, 26.029350, 21.059580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155769, 26.451056, 21.242802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.877094, 26.296064, 21.001312>,  <44.709888, 26.203070, 20.856419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.877094, 26.296064, 21.001312>,  <45.155769, 26.451056, 21.242802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877094, 26.296064, 21.001312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717343, 0.368939, 0.591019,
		-0.006272, 0.844833, -0.534993,
		-0.696692, -0.387480, -0.603721,
		44.668087, 26.179821, 20.820196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706074, 27.002550, 21.012104>,  <45.155769, 26.451056, 21.242802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706074, 27.002550, 21.012104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497898, 26.663269, 20.972712>,  <44.372993, 26.459700, 20.949076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497898, 26.663269, 20.972712>,  <44.706074, 27.002550, 21.012104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497898, 26.663269, 20.972712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686156, 0.346758, 0.639491,
		-0.508269, 0.400387, -0.762465,
		-0.520435, -0.848204, -0.098482,
		44.341766, 26.408808, 20.943167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986172, 27.205395, 20.864441>,  <44.706074, 27.002550, 21.012104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986172, 27.205395, 20.864441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.984001, 26.840496, 21.028284>,  <43.982700, 26.621557, 21.126591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.984001, 26.840496, 21.028284>,  <43.986172, 27.205395, 20.864441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984001, 26.840496, 21.028284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831212, 0.231833, 0.505312,
		-0.555929, -0.337732, -0.759526,
		-0.005422, -0.912245, 0.409610,
		43.982376, 26.566822, 21.151167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330814, 26.899811, 20.795044>,  <43.986172, 27.205395, 20.864441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330814, 26.899811, 20.795044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.483452, 26.690691, 21.099955>,  <43.575035, 26.565218, 21.282900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.483452, 26.690691, 21.099955>,  <43.330814, 26.899811, 20.795044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483452, 26.690691, 21.099955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840288, 0.147377, 0.521725,
		-0.385100, -0.839618, -0.383066,
		0.381595, -0.522802, 0.762275,
		43.597931, 26.533850, 21.328638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733257, 26.546162, 21.082476>,  <43.330814, 26.899811, 20.795044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733257, 26.546162, 21.082476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.024281, 26.507858, 21.354206>,  <43.198895, 26.484877, 21.517244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.024281, 26.507858, 21.354206>,  <42.733257, 26.546162, 21.082476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024281, 26.507858, 21.354206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657613, 0.184758, 0.730349,
		-0.195449, -0.978108, 0.071450,
		0.727561, -0.095759, 0.679327,
		43.242550, 26.479130, 21.558004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553516, 26.011156, 21.431793>,  <42.733257, 26.546162, 21.082476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553516, 26.011156, 21.431793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801949, 26.204315, 21.678715>,  <42.951008, 26.320211, 21.826868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801949, 26.204315, 21.678715>,  <42.553516, 26.011156, 21.431793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801949, 26.204315, 21.678715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671669, -0.077924, 0.736742,
		0.403876, -0.872201, 0.275951,
		0.621084, 0.482900, 0.617302,
		42.988274, 26.349186, 21.863905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472340, 25.694199, 22.023325>,  <42.553516, 26.011156, 21.431793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472340, 25.694199, 22.023325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.632660, 26.047228, 22.121647>,  <42.728851, 26.259045, 22.180641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.632660, 26.047228, 22.121647>,  <42.472340, 25.694199, 22.023325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632660, 26.047228, 22.121647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529872, 0.004436, 0.848066,
		0.747389, -0.470155, 0.469429,
		0.400805, 0.882572, 0.245807,
		42.752903, 26.312000, 22.195389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617397, 25.649822, 22.673012>,  <42.472340, 25.694199, 22.023325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617397, 25.649822, 22.673012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617752, 26.047518, 22.630140>,  <42.617966, 26.286135, 22.604418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617752, 26.047518, 22.630140>,  <42.617397, 25.649822, 22.673012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617752, 26.047518, 22.630140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320611, 0.101801, 0.941725,
		0.947211, 0.033527, 0.318854,
		0.000886, 0.994240, -0.107177,
		42.618019, 26.345789, 22.597988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028675, 25.897350, 23.260014>,  <42.617397, 25.649822, 22.673012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028675, 25.897350, 23.260014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787472, 26.195293, 23.145775>,  <42.642750, 26.374060, 23.077232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.787472, 26.195293, 23.145775>,  <43.028675, 25.897350, 23.260014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787472, 26.195293, 23.145775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283871, 0.134218, 0.949422,
		0.745516, 0.653585, 0.130508,
		-0.603012, 0.744857, -0.285595,
		42.606567, 26.418751, 23.060097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119942, 26.436913, 23.839048>,  <43.028675, 25.897350, 23.260014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119942, 26.436913, 23.839048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.794506, 26.538305, 23.629738>,  <42.599243, 26.599140, 23.504152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.794506, 26.538305, 23.629738>,  <43.119942, 26.436913, 23.839048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794506, 26.538305, 23.629738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479854, 0.215504, 0.850469,
		0.328347, 0.943030, -0.053697,
		-0.813590, 0.253483, -0.523277,
		42.550430, 26.614349, 23.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908764, 27.128878, 23.988836>,  <43.119942, 26.436913, 23.839048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908764, 27.128878, 23.988836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.574703, 26.938046, 23.879347>,  <42.374268, 26.823547, 23.813654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.574703, 26.938046, 23.879347>,  <42.908764, 27.128878, 23.988836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574703, 26.938046, 23.879347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445543, 0.294973, 0.845271,
		-0.322519, 0.827881, -0.458905,
		-0.835148, -0.477078, -0.273722,
		42.324158, 26.794922, 23.797230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479977, 27.510792, 24.411989>,  <42.908764, 27.128878, 23.988836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479977, 27.510792, 24.411989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233967, 27.217882, 24.295012>,  <42.086361, 27.042137, 24.224825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.233967, 27.217882, 24.295012>,  <42.479977, 27.510792, 24.411989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233967, 27.217882, 24.295012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451483, 0.022963, 0.891984,
		-0.646462, 0.680623, -0.344731,
		-0.615021, -0.732274, -0.292445,
		42.049461, 26.998199, 24.207277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858109, 27.655499, 24.593719>,  <42.479977, 27.510792, 24.411989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858109, 27.655499, 24.593719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.864334, 27.256605, 24.564636>,  <41.868069, 27.017269, 24.547186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.864334, 27.256605, 24.564636>,  <41.858109, 27.655499, 24.593719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864334, 27.256605, 24.564636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350128, -0.073552, 0.933809,
		-0.936572, 0.010920, -0.350304,
		0.015569, -0.997232, -0.072710,
		41.869003, 26.957436, 24.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242916, 27.489567, 24.948446>,  <41.858109, 27.655499, 24.593719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242916, 27.489567, 24.948446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468433, 27.159271, 24.955240>,  <41.603745, 26.961094, 24.959316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.468433, 27.159271, 24.955240>,  <41.242916, 27.489567, 24.948446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468433, 27.159271, 24.955240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384446, -0.244177, 0.890269,
		-0.730983, -0.508459, -0.455118,
		0.563795, -0.825740, 0.016986,
		41.637573, 26.911549, 24.960337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809570, 26.978498, 25.073042>,  <41.242916, 27.489567, 24.948446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809570, 26.978498, 25.073042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175365, 26.873241, 25.195980>,  <41.394844, 26.810087, 25.269743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175365, 26.873241, 25.195980>,  <40.809570, 26.978498, 25.073042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175365, 26.873241, 25.195980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378955, -0.290886, 0.878509,
		-0.141769, -0.919860, -0.365731,
		0.914491, -0.263141, 0.307347,
		41.449715, 26.794298, 25.288183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623734, 26.362879, 25.389894>,  <40.809570, 26.978498, 25.073042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623734, 26.362879, 25.389894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984978, 26.465508, 25.527628>,  <41.201725, 26.527084, 25.610268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984978, 26.465508, 25.527628>,  <40.623734, 26.362879, 25.389894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984978, 26.465508, 25.527628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244001, -0.353229, 0.903157,
		0.353352, -0.899667, -0.256402,
		0.903109, 0.256570, 0.344334,
		41.255909, 26.542479, 25.630928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780830, 25.836811, 25.759157>,  <40.623734, 26.362879, 25.389894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780830, 25.836811, 25.759157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.026981, 26.112431, 25.912266>,  <41.174671, 26.277803, 26.004131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.026981, 26.112431, 25.912266>,  <40.780830, 25.836811, 25.759157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026981, 26.112431, 25.912266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273919, -0.268400, 0.923542,
		0.739104, -0.673179, 0.023576,
		0.615381, 0.689051, 0.382772,
		41.211597, 26.319145, 26.027098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293262, 25.487219, 26.227152>,  <40.780830, 25.836811, 25.759157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293262, 25.487219, 26.227152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243416, 25.871292, 26.327168>,  <41.213509, 26.101736, 26.387177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243416, 25.871292, 26.327168>,  <41.293262, 25.487219, 26.227152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243416, 25.871292, 26.327168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318852, -0.277390, 0.906305,
		0.939576, 0.033220, 0.340725,
		-0.124621, 0.960183, 0.250037,
		41.206028, 26.159348, 26.402178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565624, 25.566641, 26.991495>,  <41.293262, 25.487219, 26.227152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565624, 25.566641, 26.991495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314659, 25.871408, 26.927202>,  <41.164082, 26.054270, 26.888626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.314659, 25.871408, 26.927202>,  <41.565624, 25.566641, 26.991495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314659, 25.871408, 26.927202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376395, -0.116042, 0.919163,
		0.681678, 0.637190, 0.359589,
		-0.627409, 0.761921, -0.160732,
		41.126438, 26.099985, 26.878983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618614, 26.032646, 27.491257>,  <41.565624, 25.566641, 26.991495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618614, 26.032646, 27.491257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.253452, 26.124290, 27.356138>,  <41.034355, 26.179277, 27.275066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.253452, 26.124290, 27.356138>,  <41.618614, 26.032646, 27.491257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253452, 26.124290, 27.356138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358238, -0.053120, 0.932118,
		0.195616, 0.971950, 0.130570,
		-0.912908, 0.229112, -0.337798,
		40.979580, 26.193024, 27.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.290321, 29.012247, 32.308201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.178532, 29.219254, 31.984701>,  <40.111458, 29.343456, 31.790602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.178532, 29.219254, 31.984701>,  <40.290321, 29.012247, 32.308201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178532, 29.219254, 31.984701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511285, 0.632741, 0.581572,
		0.812699, 0.576036, 0.087761,
		-0.279477, 0.517515, -0.808747,
		40.094688, 29.374508, 31.742077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417458, 29.712399, 32.453121>,  <40.290321, 29.012247, 32.308201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417458, 29.712399, 32.453121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143986, 29.727650, 32.161610>,  <39.979900, 29.736801, 31.986702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143986, 29.727650, 32.161610>,  <40.417458, 29.712399, 32.453121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143986, 29.727650, 32.161610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536050, 0.651402, 0.536959,
		0.495204, 0.757774, -0.424914,
		-0.683684, 0.038129, -0.728782,
		39.938881, 29.739088, 31.942976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099964, 30.359903, 32.538960>,  <40.417458, 29.712399, 32.453121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099964, 30.359903, 32.538960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850605, 30.167688, 32.292236>,  <39.700989, 30.052361, 32.144203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850605, 30.167688, 32.292236>,  <40.099964, 30.359903, 32.538960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850605, 30.167688, 32.292236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781163, 0.348491, 0.518013,
		-0.033970, 0.804761, -0.592627,
		-0.623402, -0.480535, -0.616811,
		39.663586, 30.023527, 32.107193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687168, 30.874346, 32.339222>,  <40.099964, 30.359903, 32.538960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687168, 30.874346, 32.339222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493874, 30.526876, 32.295609>,  <39.377895, 30.318396, 32.269440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493874, 30.526876, 32.295609>,  <39.687168, 30.874346, 32.339222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493874, 30.526876, 32.295609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761170, 0.355334, 0.542547,
		-0.432551, 0.345176, -0.832919,
		-0.483239, -0.868672, -0.109038,
		39.348904, 30.266275, 32.262897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006321, 31.042669, 32.180550>,  <39.687168, 30.874346, 32.339222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006321, 31.042669, 32.180550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991024, 30.667871, 32.319450>,  <38.981846, 30.442993, 32.402790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991024, 30.667871, 32.319450>,  <39.006321, 31.042669, 32.180550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991024, 30.667871, 32.319450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795640, 0.238793, 0.556718,
		-0.604561, -0.254993, -0.754642,
		-0.038244, -0.936993, 0.347248,
		38.979549, 30.386774, 32.423626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265621, 30.832842, 32.150108>,  <39.006321, 31.042669, 32.180550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265621, 30.832842, 32.150108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421806, 30.569502, 32.407516>,  <38.515518, 30.411497, 32.561962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421806, 30.569502, 32.407516>,  <38.265621, 30.832842, 32.150108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421806, 30.569502, 32.407516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898110, -0.118779, 0.423427,
		-0.202328, -0.743279, -0.637652,
		0.390464, -0.658352, 0.643514,
		38.538944, 30.371996, 32.600571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709930, 30.413231, 32.334846>,  <38.265621, 30.832842, 32.150108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709930, 30.413231, 32.334846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970070, 30.340981, 32.629986>,  <38.126152, 30.297630, 32.807068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970070, 30.340981, 32.629986>,  <37.709930, 30.413231, 32.334846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970070, 30.340981, 32.629986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736054, 0.090302, 0.670873,
		-0.187807, -0.979397, -0.074224,
		0.650349, -0.180628, 0.737849,
		38.165173, 30.286793, 32.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403343, 29.963900, 32.658833>,  <37.709930, 30.413231, 32.334846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403343, 29.963900, 32.658833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663956, 30.123722, 32.916782>,  <37.820324, 30.219616, 33.071552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663956, 30.123722, 32.916782>,  <37.403343, 29.963900, 32.658833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663956, 30.123722, 32.916782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735270, 0.123321, 0.666461,
		0.186763, -0.908376, 0.374129,
		0.651535, 0.399556, 0.644870,
		37.859417, 30.243587, 33.110245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286930, 29.521400, 33.270348>,  <37.403343, 29.963900, 32.658833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286930, 29.521400, 33.270348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464809, 29.862917, 33.378632>,  <37.571537, 30.067827, 33.443604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464809, 29.862917, 33.378632>,  <37.286930, 29.521400, 33.270348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464809, 29.862917, 33.378632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646018, 0.096390, 0.757211,
		0.620409, -0.511611, 0.594431,
		0.444695, 0.853794, 0.270709,
		37.598217, 30.119055, 33.459843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475868, 29.429499, 33.912708>,  <37.286930, 29.521400, 33.270348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475868, 29.429499, 33.912708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474419, 29.828331, 33.882206>,  <37.473549, 30.067631, 33.863907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474419, 29.828331, 33.882206>,  <37.475868, 29.429499, 33.912708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474419, 29.828331, 33.882206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542015, 0.062124, 0.838069,
		0.840361, 0.044364, 0.540208,
		-0.003620, 0.997082, -0.076252,
		37.473331, 30.127455, 33.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876472, 29.680634, 34.511234>,  <37.475868, 29.429499, 33.912708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876472, 29.680634, 34.511234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634178, 29.964031, 34.366390>,  <37.488804, 30.134069, 34.279484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634178, 29.964031, 34.366390>,  <37.876472, 29.680634, 34.511234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634178, 29.964031, 34.366390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350161, 0.171298, 0.920893,
		0.714476, 0.684612, 0.144326,
		-0.605732, 0.708493, -0.362113,
		37.452457, 30.176579, 34.257755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036655, 30.208654, 34.917862>,  <37.876472, 29.680634, 34.511234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036655, 30.208654, 34.917862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681404, 30.287394, 34.751743>,  <37.468254, 30.334637, 34.652073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681404, 30.287394, 34.751743>,  <38.036655, 30.208654, 34.917862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681404, 30.287394, 34.751743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378179, 0.200466, 0.903766,
		0.261159, 0.959721, -0.103596,
		-0.888131, 0.196849, -0.415300,
		37.414967, 30.346449, 34.627151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755859, 30.810352, 35.286938>,  <38.036655, 30.208654, 34.917862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755859, 30.810352, 35.286938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460529, 30.595045, 35.124386>,  <37.283329, 30.465860, 35.026855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460529, 30.595045, 35.124386>,  <37.755859, 30.810352, 35.286938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460529, 30.595045, 35.124386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556034, 0.144791, 0.818451,
		-0.381706, 0.830243, -0.406198,
		-0.738327, -0.538267, -0.406376,
		37.239033, 30.433565, 35.002472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240494, 31.361059, 35.301205>,  <37.755859, 30.810352, 35.286938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240494, 31.361059, 35.301205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139217, 30.974735, 35.323483>,  <37.078453, 30.742941, 35.336849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139217, 30.974735, 35.323483>,  <37.240494, 31.361059, 35.301205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139217, 30.974735, 35.323483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724418, 0.227435, 0.650762,
		-0.641180, 0.124423, -0.757236,
		-0.253192, -0.965812, 0.055692,
		37.063259, 30.684992, 35.340191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858562, 31.626835, 35.467510>,  <37.240494, 31.361059, 35.301205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858562, 31.626835, 35.467510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.801273, 32.022644, 35.474762>,  <37.766899, 32.260132, 35.479115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.801273, 32.022644, 35.474762>,  <37.858562, 31.626835, 35.467510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801273, 32.022644, 35.474762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443585, 0.080555, -0.892605,
		-0.884715, -0.119797, -0.450475,
		-0.143219, 0.989525, 0.018128,
		37.758308, 32.319500, 35.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566124, 31.742929, 34.792507>,  <37.858562, 31.626835, 35.467510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566124, 31.742929, 34.792507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.667648, 32.110214, 34.914139>,  <37.728561, 32.330585, 34.987118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.667648, 32.110214, 34.914139>,  <37.566124, 31.742929, 34.792507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667648, 32.110214, 34.914139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487488, 0.150099, -0.860131,
		-0.835426, 0.366544, -0.409522,
		0.253807, 0.918213, 0.304083,
		37.743790, 32.385677, 35.005363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302917, 32.197227, 34.292164>,  <37.566124, 31.742929, 34.792507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302917, 32.197227, 34.292164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600132, 32.388855, 34.479092>,  <37.778461, 32.503834, 34.591248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600132, 32.388855, 34.479092>,  <37.302917, 32.197227, 34.292164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600132, 32.388855, 34.479092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382536, 0.268946, -0.883931,
		-0.549150, 0.835559, 0.016574,
		0.743035, 0.479070, 0.467323,
		37.823044, 32.532578, 34.619289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486832, 32.813847, 33.819954>,  <37.302917, 32.197227, 34.292164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486832, 32.813847, 33.819954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785080, 32.802204, 34.086246>,  <37.964031, 32.795219, 34.246021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785080, 32.802204, 34.086246>,  <37.486832, 32.813847, 33.819954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785080, 32.802204, 34.086246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657015, 0.198897, -0.727166,
		-0.111246, 0.979588, 0.167427,
		0.745624, -0.029108, 0.665731,
		38.008766, 32.793472, 34.285965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861431, 33.491295, 33.686096>,  <37.486832, 32.813847, 33.819954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861431, 33.491295, 33.686096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122864, 33.253429, 33.873371>,  <38.279724, 33.110710, 33.985737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122864, 33.253429, 33.873371>,  <37.861431, 33.491295, 33.686096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122864, 33.253429, 33.873371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693181, 0.221970, -0.685733,
		0.303856, 0.772725, 0.557286,
		0.653584, -0.594664, 0.468192,
		38.318939, 33.075031, 34.013828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465683, 33.915638, 33.677715>,  <37.861431, 33.491295, 33.686096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465683, 33.915638, 33.677715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608273, 33.547905, 33.744354>,  <38.693829, 33.327267, 33.784336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608273, 33.547905, 33.744354>,  <38.465683, 33.915638, 33.677715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608273, 33.547905, 33.744354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794632, 0.204541, -0.571597,
		0.491410, 0.336146, 0.803444,
		0.356477, -0.919331, 0.166599,
		38.715214, 33.272106, 33.794334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189861, 34.029434, 33.685410>,  <38.465683, 33.915638, 33.677715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189861, 34.029434, 33.685410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139500, 33.634815, 33.643684>,  <39.109283, 33.398045, 33.618649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139500, 33.634815, 33.643684>,  <39.189861, 34.029434, 33.685410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139500, 33.634815, 33.643684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740592, -0.023513, -0.671544,
		0.660054, -0.161804, 0.733586,
		-0.125907, -0.986543, -0.104310,
		39.101727, 33.338852, 33.612392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785492, 33.759247, 33.598541>,  <39.189861, 34.029434, 33.685410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785492, 33.759247, 33.598541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566448, 33.458694, 33.451271>,  <39.435020, 33.278362, 33.362907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566448, 33.458694, 33.451271>,  <39.785492, 33.759247, 33.598541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566448, 33.458694, 33.451271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712239, -0.187650, -0.676390,
		0.439136, -0.632627, 0.637920,
		-0.547609, -0.751379, -0.368178,
		39.402164, 33.233280, 33.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292141, 33.249527, 33.442863>,  <39.785492, 33.759247, 33.598541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292141, 33.249527, 33.442863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966141, 33.172298, 33.224323>,  <39.770542, 33.125961, 33.093201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966141, 33.172298, 33.224323>,  <40.292141, 33.249527, 33.442863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966141, 33.172298, 33.224323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576759, -0.179339, -0.796986,
		0.055897, -0.964655, 0.257519,
		-0.814999, -0.193075, -0.546349,
		39.721642, 33.114376, 33.060417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579510, 32.714596, 33.076015>,  <40.292141, 33.249527, 33.442863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579510, 32.714596, 33.076015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.249298, 32.860626, 32.903862>,  <40.051170, 32.948246, 32.800571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.249298, 32.860626, 32.903862>,  <40.579510, 32.714596, 33.076015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249298, 32.860626, 32.903862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381347, -0.201320, -0.902245,
		-0.416031, -0.908951, 0.026974,
		-0.825526, 0.365075, -0.430380,
		40.001640, 32.970150, 32.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381119, 32.253849, 32.519295>,  <40.579510, 32.714596, 33.076015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381119, 32.253849, 32.519295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.199284, 32.599964, 32.434799>,  <40.090183, 32.807632, 32.384102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.199284, 32.599964, 32.434799>,  <40.381119, 32.253849, 32.519295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199284, 32.599964, 32.434799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231270, -0.114362, -0.966144,
		-0.860155, -0.488048, -0.148129,
		-0.454584, 0.865292, -0.211240,
		40.062908, 32.859550, 32.371426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948200, 32.125805, 31.919222>,  <40.381119, 32.253849, 32.519295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948200, 32.125805, 31.919222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032211, 32.515839, 31.890656>,  <40.082619, 32.749859, 31.873516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032211, 32.515839, 31.890656>,  <39.948200, 32.125805, 31.919222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032211, 32.515839, 31.890656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365219, -0.146001, -0.919402,
		-0.906921, 0.167014, -0.386783,
		0.210023, 0.975085, -0.071415,
		40.095219, 32.808365, 31.869230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513866, 32.351967, 31.381414>,  <39.948200, 32.125805, 31.919222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513866, 32.351967, 31.381414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847248, 32.567799, 31.429085>,  <40.047279, 32.697296, 31.457687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847248, 32.567799, 31.429085>,  <39.513866, 32.351967, 31.381414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847248, 32.567799, 31.429085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270399, -0.210161, -0.939530,
		-0.481905, 0.815283, -0.321062,
		0.833458, 0.539579, 0.119174,
		40.097286, 32.729671, 31.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543079, 32.810814, 30.814159>,  <39.513866, 32.351967, 31.381414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543079, 32.810814, 30.814159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922260, 32.807213, 30.941471>,  <40.149769, 32.805050, 31.017859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922260, 32.807213, 30.941471>,  <39.543079, 32.810814, 30.814159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922260, 32.807213, 30.941471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313051, -0.156210, -0.936802,
		0.058155, 0.987683, -0.145261,
		0.947954, -0.009006, 0.318280,
		40.206646, 32.804512, 31.036955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124928, 33.304077, 30.345467>,  <39.543079, 32.810814, 30.814159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124928, 33.304077, 30.345467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793613, 33.225662, 30.135513>,  <38.594826, 33.178612, 30.009541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793613, 33.225662, 30.135513>,  <39.124928, 33.304077, 30.345467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793613, 33.225662, 30.135513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555587, 0.166117, 0.814695,
		-0.072519, 0.966423, -0.246510,
		-0.828290, -0.196039, -0.524885,
		38.545128, 33.166851, 29.978048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620384, 33.784874, 30.631878>,  <39.124928, 33.304077, 30.345467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620384, 33.784874, 30.631878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418560, 33.487000, 30.457123>,  <38.297466, 33.308277, 30.352270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418560, 33.487000, 30.457123>,  <38.620384, 33.784874, 30.631878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418560, 33.487000, 30.457123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669726, 0.018232, 0.742384,
		-0.544875, 0.667171, -0.507931,
		-0.504558, -0.744682, -0.436888,
		38.267193, 33.263596, 30.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942005, 34.002155, 30.576216>,  <38.620384, 33.784874, 30.631878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942005, 34.002155, 30.576216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909752, 33.604168, 30.552462>,  <37.890400, 33.365376, 30.538210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909752, 33.604168, 30.552462>,  <37.942005, 34.002155, 30.576216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909752, 33.604168, 30.552462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798829, 0.028877, 0.600864,
		-0.596129, 0.095888, -0.797142,
		-0.080635, -0.994973, -0.059384,
		37.885563, 33.305676, 30.534647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304779, 33.957100, 30.580023>,  <37.942005, 34.002155, 30.576216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304779, 33.957100, 30.580023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403336, 33.586613, 30.694153>,  <37.462471, 33.364319, 30.762630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.403336, 33.586613, 30.694153>,  <37.304779, 33.957100, 30.580023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403336, 33.586613, 30.694153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792198, -0.022876, 0.609836,
		-0.558314, -0.376292, -0.739385,
		0.246390, -0.926219, 0.285326,
		37.477253, 33.308746, 30.779751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650997, 33.510338, 30.550535>,  <37.304779, 33.957100, 30.580023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650997, 33.510338, 30.550535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904163, 33.325821, 30.799253>,  <37.056061, 33.215111, 30.948484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904163, 33.325821, 30.799253>,  <36.650997, 33.510338, 30.550535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904163, 33.325821, 30.799253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716862, -0.045788, 0.695710,
		-0.292454, -0.886067, -0.359662,
		0.632914, -0.461291, 0.621796,
		37.094036, 33.187435, 30.985792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265148, 33.071095, 30.958160>,  <36.650997, 33.510338, 30.550535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265148, 33.071095, 30.958160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599510, 33.058880, 31.177368>,  <36.800129, 33.051552, 31.308893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599510, 33.058880, 31.177368>,  <36.265148, 33.071095, 30.958160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599510, 33.058880, 31.177368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534306, -0.273751, 0.799736,
		0.125598, -0.961316, -0.245147,
		0.835909, -0.030538, 0.548019,
		36.850285, 33.049717, 31.341774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307472, 32.435078, 31.364853>,  <36.265148, 33.071095, 30.958160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307472, 32.435078, 31.364853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.553490, 32.671345, 31.573786>,  <36.701099, 32.813107, 31.699144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.553490, 32.671345, 31.573786>,  <36.307472, 32.435078, 31.364853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553490, 32.671345, 31.573786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492068, -0.230085, 0.839601,
		0.616105, -0.773417, 0.149136,
		0.615047, 0.590667, 0.522330,
		36.738003, 32.848545, 31.730484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384686, 32.136990, 31.888388>,  <36.307472, 32.435078, 31.364853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384686, 32.136990, 31.888388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502846, 32.499020, 32.010750>,  <36.573742, 32.716236, 32.084167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502846, 32.499020, 32.010750>,  <36.384686, 32.136990, 31.888388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502846, 32.499020, 32.010750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397686, -0.174647, 0.900747,
		0.868668, -0.387736, 0.308344,
		0.295401, 0.905074, 0.305907,
		36.591465, 32.770542, 32.102524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755558, 32.018139, 32.456272>,  <36.384686, 32.136990, 31.888388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755558, 32.018139, 32.456272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.598499, 32.385330, 32.478710>,  <36.504265, 32.605644, 32.492172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.598499, 32.385330, 32.478710>,  <36.755558, 32.018139, 32.456272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598499, 32.385330, 32.478710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267906, -0.172519, 0.947873,
		0.879803, 0.357153, 0.313671,
		-0.392649, 0.917976, 0.056099,
		36.480705, 32.660725, 32.495541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882042, 32.265923, 33.091797>,  <36.755558, 32.018139, 32.456272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882042, 32.265923, 33.091797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597279, 32.531357, 32.999847>,  <36.426418, 32.690617, 32.944679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.597279, 32.531357, 32.999847>,  <36.882042, 32.265923, 33.091797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597279, 32.531357, 32.999847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468365, -0.204745, 0.859484,
		0.523275, 0.719539, 0.456559,
		-0.711911, 0.663583, -0.229870,
		36.383705, 32.730431, 32.930885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757076, 32.525070, 33.705997>,  <36.882042, 32.265923, 33.091797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757076, 32.525070, 33.705997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429714, 32.601303, 33.489147>,  <36.233299, 32.647041, 33.359035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.429714, 32.601303, 33.489147>,  <36.757076, 32.525070, 33.705997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429714, 32.601303, 33.489147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569423, -0.395881, 0.720441,
		-0.077315, 0.898308, 0.432510,
		-0.818401, 0.190580, -0.542125,
		36.184193, 32.658478, 33.326511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259041, 32.923161, 34.219410>,  <36.757076, 32.525070, 33.705997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259041, 32.923161, 34.219410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.090828, 32.736439, 33.908222>,  <35.989899, 32.624405, 33.721508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.090828, 32.736439, 33.908222>,  <36.259041, 32.923161, 34.219410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090828, 32.736439, 33.908222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677563, -0.408669, 0.611472,
		-0.603374, 0.784270, -0.144433,
		-0.420534, -0.466809, -0.777972,
		35.964668, 32.596397, 33.674831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.470440, 33.010265, 27.142714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250336, 32.714344, 26.987844>,  <40.118275, 32.536789, 26.894922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250336, 32.714344, 26.987844>,  <40.470440, 33.010265, 27.142714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250336, 32.714344, 26.987844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764292, 0.259517, 0.590345,
		-0.336264, 0.620755, -0.708230,
		-0.550257, -0.739807, -0.387172,
		40.085258, 32.492401, 26.871693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877785, 33.200809, 26.890696>,  <40.470440, 33.010265, 27.142714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877785, 33.200809, 26.890696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807991, 32.813225, 26.960743>,  <39.766117, 32.580673, 27.002771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807991, 32.813225, 26.960743>,  <39.877785, 33.200809, 26.890696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807991, 32.813225, 26.960743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824382, 0.241009, 0.512161,
		-0.538470, -0.055002, -0.840848,
		-0.174482, -0.968963, 0.175118,
		39.755646, 32.522537, 27.013279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146740, 33.085098, 26.782438>,  <39.877785, 33.200809, 26.890696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146740, 33.085098, 26.782438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260464, 32.781311, 27.016487>,  <39.328697, 32.599037, 27.156918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260464, 32.781311, 27.016487>,  <39.146740, 33.085098, 26.782438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260464, 32.781311, 27.016487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739666, 0.214533, 0.637864,
		-0.609968, -0.614149, -0.500760,
		0.284314, -0.759471, 0.585123,
		39.345757, 32.553471, 27.192024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504372, 32.629280, 27.027824>,  <39.146740, 33.085098, 26.782438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504372, 32.629280, 27.027824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808418, 32.560802, 27.278557>,  <38.990845, 32.519718, 27.428997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808418, 32.560802, 27.278557>,  <38.504372, 32.629280, 27.027824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808418, 32.560802, 27.278557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612926, 0.131404, 0.779137,
		-0.215749, -0.976436, -0.005045,
		0.760114, -0.171190, 0.626833,
		39.036453, 32.509445, 27.466606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189240, 32.241760, 27.673452>,  <38.504372, 32.629280, 27.027824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189240, 32.241760, 27.673452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531132, 32.404793, 27.802019>,  <38.736267, 32.502613, 27.879160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531132, 32.404793, 27.802019>,  <38.189240, 32.241760, 27.673452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531132, 32.404793, 27.802019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421648, 0.184050, 0.887884,
		0.302730, -0.894428, 0.329170,
		0.854732, 0.407583, 0.321416,
		38.787552, 32.527069, 27.898443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295464, 31.962648, 28.325836>,  <38.189240, 32.241760, 27.673452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295464, 31.962648, 28.325836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551788, 32.268803, 28.349670>,  <38.705582, 32.452496, 28.363970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551788, 32.268803, 28.349670>,  <38.295464, 31.962648, 28.325836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551788, 32.268803, 28.349670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362051, 0.232859, 0.902605,
		0.676965, -0.599971, 0.426326,
		0.640810, 0.765384, 0.059583,
		38.744030, 32.498417, 28.367546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629578, 31.851355, 28.904995>,  <38.295464, 31.962648, 28.325836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629578, 31.851355, 28.904995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682922, 32.243736, 28.848503>,  <38.714931, 32.479164, 28.814608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682922, 32.243736, 28.848503>,  <38.629578, 31.851355, 28.904995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682922, 32.243736, 28.848503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209768, 0.167212, 0.963347,
		0.968613, -0.098852, 0.228072,
		0.133365, 0.980953, -0.141228,
		38.722931, 32.538021, 28.806135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031647, 32.130013, 29.453732>,  <38.629578, 31.851355, 28.904995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031647, 32.130013, 29.453732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873138, 32.474049, 29.325222>,  <38.778034, 32.680470, 29.248116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873138, 32.474049, 29.325222>,  <39.031647, 32.130013, 29.453732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873138, 32.474049, 29.325222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313291, 0.202250, 0.927870,
		0.863027, 0.468344, 0.189311,
		-0.396274, 0.860087, -0.321275,
		38.754257, 32.732075, 29.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320045, 32.684601, 29.956697>,  <39.031647, 32.130013, 29.453732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320045, 32.684601, 29.956697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993465, 32.833664, 29.780273>,  <38.797516, 32.923103, 29.674419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993465, 32.833664, 29.780273>,  <39.320045, 32.684601, 29.956697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993465, 32.833664, 29.780273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308463, 0.364229, 0.878742,
		0.488120, 0.853499, -0.182422,
		-0.816449, 0.372662, -0.441060,
		38.748531, 32.945461, 29.647955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932747, 33.175114, 30.235008>,  <39.320045, 32.684601, 29.956697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932747, 33.175114, 30.235008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193726, 32.950958, 30.439075>,  <40.350315, 32.816463, 30.561516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193726, 32.950958, 30.439075>,  <39.932747, 33.175114, 30.235008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193726, 32.950958, 30.439075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471615, -0.226700, -0.852166,
		0.593202, 0.796597, 0.116379,
		0.652450, -0.560393, 0.510166,
		40.389462, 32.782841, 30.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603237, 33.460094, 30.071451>,  <39.932747, 33.175114, 30.235008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603237, 33.460094, 30.071451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677879, 33.081772, 30.177759>,  <40.722664, 32.854778, 30.241545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677879, 33.081772, 30.177759>,  <40.603237, 33.460094, 30.071451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677879, 33.081772, 30.177759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629245, -0.092686, -0.771660,
		0.754472, 0.311232, 0.577847,
		0.186607, -0.945803, 0.265771,
		40.733860, 32.798031, 30.257490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247944, 33.428444, 29.791948>,  <40.603237, 33.460094, 30.071451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247944, 33.428444, 29.791948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179794, 33.055054, 29.918177>,  <41.138905, 32.831020, 29.993914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179794, 33.055054, 29.918177>,  <41.247944, 33.428444, 29.791948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179794, 33.055054, 29.918177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752000, -0.330130, -0.570535,
		0.636763, 0.140104, 0.758224,
		-0.170378, -0.933480, 0.315573,
		41.128681, 32.775009, 30.012848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911369, 33.186104, 30.067835>,  <41.247944, 33.428444, 29.791948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911369, 33.186104, 30.067835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677917, 32.877216, 29.967396>,  <41.537846, 32.691883, 29.907133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677917, 32.877216, 29.967396>,  <41.911369, 33.186104, 30.067835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677917, 32.877216, 29.967396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760058, -0.410670, -0.503649,
		0.285810, -0.484795, 0.826612,
		-0.583631, -0.772220, -0.251098,
		41.502827, 32.645550, 29.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335037, 32.589603, 30.149420>,  <41.911369, 33.186104, 30.067835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335037, 32.589603, 30.149420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032955, 32.486431, 29.908377>,  <41.851707, 32.424526, 29.763750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032955, 32.486431, 29.908377>,  <42.335037, 32.589603, 30.149420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032955, 32.486431, 29.908377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655359, -0.315464, -0.686285,
		-0.013084, -0.913209, 0.407281,
		-0.755204, -0.257936, -0.602608,
		41.806393, 32.409050, 29.727594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532730, 31.974945, 29.804207>,  <42.335037, 32.589603, 30.149420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532730, 31.974945, 29.804207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229443, 32.078773, 29.564966>,  <42.047470, 32.141071, 29.421421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229443, 32.078773, 29.564966>,  <42.532730, 31.974945, 29.804207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229443, 32.078773, 29.564966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475349, -0.407792, -0.779583,
		-0.446257, -0.875402, 0.185810,
		-0.758220, 0.259570, -0.598101,
		42.001976, 32.156643, 29.385536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325783, 31.393396, 29.498405>,  <42.532730, 31.974945, 29.804207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325783, 31.393396, 29.498405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186798, 31.669302, 29.244320>,  <42.103409, 31.834845, 29.091869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186798, 31.669302, 29.244320>,  <42.325783, 31.393396, 29.498405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186798, 31.669302, 29.244320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395472, -0.506430, -0.766245,
		-0.850219, -0.517449, -0.096818,
		-0.347461, 0.689765, -0.635213,
		42.082561, 31.876232, 29.053757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985195, 31.105824, 28.956678>,  <42.325783, 31.393396, 29.498405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985195, 31.105824, 28.956678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078548, 31.461430, 28.799107>,  <42.134560, 31.674793, 28.704563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078548, 31.461430, 28.799107>,  <41.985195, 31.105824, 28.956678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078548, 31.461430, 28.799107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574212, -0.452941, -0.682000,
		-0.784737, -0.067031, -0.616194,
		0.233384, 0.889017, -0.393930,
		42.148563, 31.728134, 28.680927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977535, 30.953897, 28.243359>,  <41.985195, 31.105824, 28.956678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977535, 30.953897, 28.243359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166412, 31.305065, 28.275087>,  <42.279739, 31.515766, 28.294125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166412, 31.305065, 28.275087>,  <41.977535, 30.953897, 28.243359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166412, 31.305065, 28.275087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467596, -0.173178, -0.866813,
		-0.747254, 0.446394, -0.492284,
		0.472193, 0.877919, 0.079324,
		42.308071, 31.568441, 28.298885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874962, 31.217442, 27.639137>,  <41.977535, 30.953897, 28.243359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874962, 31.217442, 27.639137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205807, 31.385178, 27.788822>,  <42.404312, 31.485819, 27.878633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205807, 31.385178, 27.788822>,  <41.874962, 31.217442, 27.639137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205807, 31.385178, 27.788822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494089, -0.225171, -0.839746,
		-0.267879, 0.879460, -0.393434,
		0.827114, 0.419342, 0.374213,
		42.453941, 31.510981, 27.901087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083607, 31.599785, 27.141554>,  <41.874962, 31.217442, 27.639137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083607, 31.599785, 27.141554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395744, 31.549059, 27.386497>,  <42.583027, 31.518623, 27.533463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395744, 31.549059, 27.386497>,  <42.083607, 31.599785, 27.141554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395744, 31.549059, 27.386497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595776, -0.146815, -0.789618,
		0.190039, 0.981001, -0.039012,
		0.780344, -0.126816, 0.612357,
		42.629848, 31.511015, 27.570204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736950, 32.051628, 26.896986>,  <42.083607, 31.599785, 27.141554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736950, 32.051628, 26.896986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882477, 31.740400, 27.101826>,  <42.969795, 31.553663, 27.224730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882477, 31.740400, 27.101826>,  <42.736950, 32.051628, 26.896986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882477, 31.740400, 27.101826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764500, -0.064654, -0.641373,
		0.532141, 0.624844, 0.571311,
		0.363821, -0.778068, 0.512098,
		42.991623, 31.506979, 27.255455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449177, 31.956631, 26.781982>,  <42.736950, 32.051628, 26.896986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449177, 31.956631, 26.781982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449818, 31.614273, 26.988842>,  <43.450203, 31.408859, 27.112957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449818, 31.614273, 26.988842>,  <43.449177, 31.956631, 26.781982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449818, 31.614273, 26.988842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850891, -0.270511, -0.450342,
		0.525339, 0.440759, 0.727839,
		0.001604, -0.855894, 0.517148,
		43.450298, 31.357504, 27.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077278, 31.913574, 26.809193>,  <43.449177, 31.956631, 26.781982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077278, 31.913574, 26.809193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926350, 31.548050, 26.869295>,  <43.835793, 31.328735, 26.905355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926350, 31.548050, 26.869295>,  <44.077278, 31.913574, 26.809193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926350, 31.548050, 26.869295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678552, -0.383224, -0.626663,
		0.630232, -0.134501, 0.764668,
		-0.377326, -0.913810, 0.150254,
		43.813152, 31.273907, 26.914371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.400616, 25.844570, 23.878052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581242, 26.149567, 24.063393>,  <38.689617, 26.332563, 24.174597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581242, 26.149567, 24.063393>,  <38.400616, 25.844570, 23.878052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581242, 26.149567, 24.063393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482745, -0.227948, 0.845575,
		0.750363, -0.605515, 0.265155,
		0.451567, 0.762490, 0.463353,
		38.716713, 26.378313, 24.202398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578381, 25.612038, 24.550739>,  <38.400616, 25.844570, 23.878052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578381, 25.612038, 24.550739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566696, 26.011436, 24.569290>,  <38.559685, 26.251076, 24.580420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566696, 26.011436, 24.569290>,  <38.578381, 25.612038, 24.550739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566696, 26.011436, 24.569290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393811, -0.054139, 0.917596,
		0.918727, 0.008539, 0.394800,
		-0.029209, 0.998497, 0.046376,
		38.557934, 26.310986, 24.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971188, 25.811901, 25.136713>,  <38.578381, 25.612038, 24.550739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971188, 25.811901, 25.136713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714920, 26.107233, 25.052423>,  <38.561157, 26.284433, 25.001850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714920, 26.107233, 25.052423>,  <38.971188, 25.811901, 25.136713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714920, 26.107233, 25.052423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288868, 0.022505, 0.957104,
		0.711402, 0.674062, 0.198862,
		-0.640673, 0.738331, -0.210726,
		38.522717, 26.328732, 24.989206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699806, 26.158257, 25.814516>,  <38.971188, 25.811901, 25.136713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699806, 26.158257, 25.814516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459217, 26.373930, 25.578714>,  <38.314865, 26.503334, 25.437233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459217, 26.373930, 25.578714>,  <38.699806, 26.158257, 25.814516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459217, 26.373930, 25.578714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561648, 0.239375, 0.791992,
		0.568142, 0.807452, 0.158855,
		-0.601470, 0.539185, -0.589503,
		38.278774, 26.535686, 25.401863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580807, 26.877897, 26.096167>,  <38.699806, 26.158257, 25.814516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580807, 26.877897, 26.096167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260811, 26.851273, 25.857643>,  <38.068813, 26.835299, 25.714529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260811, 26.851273, 25.857643>,  <38.580807, 26.877897, 26.096167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260811, 26.851273, 25.857643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570756, 0.390965, 0.722070,
		0.185076, 0.917996, -0.350758,
		-0.799991, -0.066560, -0.596309,
		38.020813, 26.831305, 25.678751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218483, 27.526657, 26.090063>,  <38.580807, 26.877897, 26.096167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218483, 27.526657, 26.090063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964928, 27.232111, 25.995451>,  <37.812794, 27.055384, 25.938683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964928, 27.232111, 25.995451>,  <38.218483, 27.526657, 26.090063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964928, 27.232111, 25.995451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660365, 0.356095, 0.661146,
		-0.402618, 0.575292, -0.711996,
		-0.633891, -0.736366, -0.236532,
		37.774761, 27.011202, 25.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515854, 27.788029, 26.142265>,  <38.218483, 27.526657, 26.090063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515854, 27.788029, 26.142265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422600, 27.399187, 26.152552>,  <37.366646, 27.165882, 26.158724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422600, 27.399187, 26.152552>,  <37.515854, 27.788029, 26.142265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422600, 27.399187, 26.152552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639885, 0.173269, 0.748683,
		-0.732253, 0.158090, -0.662430,
		-0.233138, -0.972104, 0.025717,
		37.352657, 27.107555, 26.160267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759678, 27.732046, 26.309002>,  <37.515854, 27.788029, 26.142265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759678, 27.732046, 26.309002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914158, 27.383345, 26.429598>,  <37.006844, 27.174124, 26.501955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914158, 27.383345, 26.429598>,  <36.759678, 27.732046, 26.309002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914158, 27.383345, 26.429598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508739, 0.071343, 0.857960,
		-0.769439, -0.484723, -0.415942,
		0.386198, -0.871753, 0.301491,
		37.030018, 27.121819, 26.520046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178471, 27.351225, 26.643518>,  <36.759678, 27.732046, 26.309002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178471, 27.351225, 26.643518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525307, 27.190952, 26.761909>,  <36.733410, 27.094790, 26.832943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525307, 27.190952, 26.761909>,  <36.178471, 27.351225, 26.643518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525307, 27.190952, 26.761909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338151, -0.037148, 0.940358,
		-0.365790, -0.915464, -0.167702,
		0.867094, -0.400683, 0.295977,
		36.785435, 27.070747, 26.850702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968815, 26.912794, 27.122917>,  <36.178471, 27.351225, 26.643518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968815, 26.912794, 27.122917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357010, 26.960592, 27.206703>,  <36.589928, 26.989271, 27.256975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357010, 26.960592, 27.206703>,  <35.968815, 26.912794, 27.122917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357010, 26.960592, 27.206703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185738, -0.183608, 0.965292,
		0.153810, -0.975709, -0.155994,
		0.970487, 0.119497, 0.209467,
		36.648155, 26.996441, 27.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130417, 26.358721, 27.570107>,  <35.968815, 26.912794, 27.122917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130417, 26.358721, 27.570107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410179, 26.639429, 27.624300>,  <36.578037, 26.807854, 27.656816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410179, 26.639429, 27.624300>,  <36.130417, 26.358721, 27.570107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410179, 26.639429, 27.624300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156960, -0.034123, 0.987015,
		0.697281, -0.711585, 0.086284,
		0.699401, 0.701771, 0.135484,
		36.619999, 26.849960, 27.664946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747349, 26.076880, 28.052881>,  <36.130417, 26.358721, 27.570107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747349, 26.076880, 28.052881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697086, 26.473633, 28.045115>,  <36.666931, 26.711685, 28.040455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.697086, 26.473633, 28.045115>,  <36.747349, 26.076880, 28.052881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697086, 26.473633, 28.045115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192284, -0.005149, 0.981326,
		0.973262, 0.127040, 0.191371,
		-0.125653, 0.991884, -0.019416,
		36.659389, 26.771198, 28.039289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978996, 26.281509, 28.759346>,  <36.747349, 26.076880, 28.052881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978996, 26.281509, 28.759346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785686, 26.605717, 28.626980>,  <36.669701, 26.800241, 28.547560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785686, 26.605717, 28.626980>,  <36.978996, 26.281509, 28.759346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785686, 26.605717, 28.626980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333611, 0.178969, 0.925567,
		0.809414, 0.557698, 0.183908,
		-0.483273, 0.810520, -0.330914,
		36.640705, 26.848873, 28.527706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097576, 26.803131, 29.330256>,  <36.978996, 26.281509, 28.759346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097576, 26.803131, 29.330256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818851, 26.940126, 29.078175>,  <36.651615, 27.022324, 28.926926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818851, 26.940126, 29.078175>,  <37.097576, 26.803131, 29.330256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818851, 26.940126, 29.078175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427257, 0.507533, 0.748239,
		0.576109, 0.790641, -0.207327,
		-0.696814, 0.342486, -0.630201,
		36.609806, 27.042871, 28.889114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600994, 27.322430, 29.694548>,  <37.097576, 26.803131, 29.330256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600994, 27.322430, 29.694548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762047, 27.096821, 29.982927>,  <37.858677, 26.961456, 30.155954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762047, 27.096821, 29.982927>,  <37.600994, 27.322430, 29.694548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762047, 27.096821, 29.982927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685025, -0.336751, -0.646018,
		0.607149, 0.753975, 0.250783,
		0.402629, -0.564022, 0.720950,
		37.882835, 26.927614, 30.199213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248032, 27.499708, 29.554277>,  <37.600994, 27.322430, 29.694548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248032, 27.499708, 29.554277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270927, 27.164593, 29.771473>,  <38.284664, 26.963524, 29.901791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270927, 27.164593, 29.771473>,  <38.248032, 27.499708, 29.554277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270927, 27.164593, 29.771473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713915, -0.345844, -0.608865,
		0.697889, 0.422499, 0.578313,
		0.057239, -0.837787, 0.542989,
		38.288097, 26.913258, 29.934370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993656, 27.416691, 29.668781>,  <38.248032, 27.499708, 29.554277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993656, 27.416691, 29.668781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875675, 27.037003, 29.712574>,  <38.804886, 26.809189, 29.738850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875675, 27.037003, 29.712574>,  <38.993656, 27.416691, 29.668781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875675, 27.037003, 29.712574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781445, -0.305564, -0.544036,
		0.549863, -0.074910, 0.831889,
		-0.294949, -0.949220, 0.109480,
		38.787189, 26.752237, 29.745419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548649, 27.073666, 29.857410>,  <38.993656, 27.416691, 29.668781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548649, 27.073666, 29.857410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301617, 26.801685, 29.699289>,  <39.153397, 26.638496, 29.604416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301617, 26.801685, 29.699289>,  <39.548649, 27.073666, 29.857410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301617, 26.801685, 29.699289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700947, -0.247848, -0.668764,
		0.356751, -0.690100, 0.629675,
		-0.617578, -0.679951, -0.395303,
		39.116344, 26.597700, 29.580698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015968, 26.735043, 29.333153>,  <39.548649, 27.073666, 29.857410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015968, 26.735043, 29.333153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668106, 26.547783, 29.270496>,  <39.459389, 26.435427, 29.232903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668106, 26.547783, 29.270496>,  <40.015968, 26.735043, 29.333153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668106, 26.547783, 29.270496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363972, -0.393694, -0.844115,
		0.333502, -0.791102, 0.512771,
		-0.869655, -0.468148, -0.156641,
		39.407211, 26.407339, 29.223505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258137, 26.084297, 29.266932>,  <40.015968, 26.735043, 29.333153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258137, 26.084297, 29.266932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.902267, 26.142826, 29.093927>,  <39.688744, 26.177944, 28.990126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.902267, 26.142826, 29.093927>,  <40.258137, 26.084297, 29.266932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902267, 26.142826, 29.093927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356059, -0.370650, -0.857811,
		-0.285825, -0.917175, 0.277661,
		-0.889678, 0.146320, -0.432509,
		39.635365, 26.186724, 28.964174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266685, 25.521074, 28.850080>,  <40.258137, 26.084297, 29.266932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266685, 25.521074, 28.850080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031044, 25.816612, 28.719196>,  <39.889660, 25.993935, 28.640667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031044, 25.816612, 28.719196>,  <40.266685, 25.521074, 28.850080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031044, 25.816612, 28.719196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370705, -0.112697, -0.921888,
		-0.718006, -0.664387, -0.207503,
		-0.589106, 0.738843, -0.327209,
		39.854313, 26.038265, 28.621033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396587, 25.446543, 28.190359>,  <40.266685, 25.521074, 28.850080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396587, 25.446543, 28.190359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136639, 25.748947, 28.159088>,  <39.980667, 25.930389, 28.140326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136639, 25.748947, 28.159088>,  <40.396587, 25.446543, 28.190359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136639, 25.748947, 28.159088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215624, 0.084758, -0.972791,
		-0.728815, -0.649048, -0.218096,
		-0.649873, 0.756011, -0.078177,
		39.941677, 25.975750, 28.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909199, 25.388393, 27.537897>,  <40.396587, 25.446543, 28.190359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909199, 25.388393, 27.537897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977962, 25.766878, 27.647533>,  <40.019222, 25.993969, 27.713316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977962, 25.766878, 27.647533>,  <39.909199, 25.388393, 27.537897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977962, 25.766878, 27.647533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362066, 0.198071, -0.910866,
		-0.916163, 0.255828, -0.308541,
		0.171912, 0.946214, 0.274092,
		40.029537, 26.050743, 27.729761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734276, 25.963409, 26.978209>,  <39.909199, 25.388393, 27.537897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734276, 25.963409, 26.978209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015644, 26.088551, 27.233494>,  <40.184467, 26.163635, 27.386665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015644, 26.088551, 27.233494>,  <39.734276, 25.963409, 26.978209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015644, 26.088551, 27.233494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522608, 0.380934, -0.762739,
		-0.481742, 0.870065, 0.104460,
		0.703425, 0.312852, 0.638215,
		40.226673, 26.182405, 27.424957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869999, 26.679775, 26.748213>,  <39.734276, 25.963409, 26.978209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869999, 26.679775, 26.748213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205036, 26.519556, 26.896803>,  <40.406059, 26.423426, 26.985956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205036, 26.519556, 26.896803>,  <39.869999, 26.679775, 26.748213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205036, 26.519556, 26.896803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490892, 0.253495, -0.833526,
		0.239698, 0.880513, 0.408952,
		0.837598, -0.400546, 0.371474,
		40.456314, 26.399393, 27.008245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406906, 27.167500, 26.761293>,  <39.869999, 26.679775, 26.748213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406906, 27.167500, 26.761293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 26.838562, 26.786472>,  <40.768822, 26.641199, 26.801580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 26.838562, 26.786472>,  <40.406906, 27.167500, 26.761293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633102, 26.838562, 26.786472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568016, 0.332989, -0.752646,
		0.597974, 0.461374, 0.655409,
		0.565495, -0.822346, 0.062949,
		40.802750, 26.591858, 26.805357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104042, 27.425756, 26.729748>,  <40.406906, 27.167500, 26.761293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104042, 27.425756, 26.729748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126686, 27.042971, 26.615898>,  <41.140274, 26.813299, 26.547588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126686, 27.042971, 26.615898>,  <41.104042, 27.425756, 26.729748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126686, 27.042971, 26.615898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583165, 0.263090, -0.768571,
		0.810379, -0.122474, 0.572963,
		0.056610, -0.956966, -0.284625,
		41.143669, 26.755880, 26.530510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821529, 27.360636, 26.537882>,  <41.104042, 27.425756, 26.729748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821529, 27.360636, 26.537882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652824, 27.031469, 26.385607>,  <41.551601, 26.833969, 26.294241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.652824, 27.031469, 26.385607>,  <41.821529, 27.360636, 26.537882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652824, 27.031469, 26.385607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557344, 0.095873, -0.824728,
		0.715179, -0.560016, 0.418211,
		-0.421766, -0.822916, -0.380688,
		41.526295, 26.784595, 26.271400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371647, 26.965389, 26.924812>,  <41.821529, 27.360636, 26.537882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371647, 26.965389, 26.924812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.683712, 27.109348, 27.129488>,  <42.870949, 27.195724, 27.252293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.683712, 27.109348, 27.129488>,  <42.371647, 26.965389, 26.924812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683712, 27.109348, 27.129488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577481, 0.099794, 0.810282,
		0.240559, -0.927637, 0.285693,
		0.780158, 0.359903, 0.511687,
		42.917759, 27.217318, 27.282995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372372, 26.643940, 27.584360>,  <42.371647, 26.965389, 26.924812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372372, 26.643940, 27.584360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573521, 26.987196, 27.625771>,  <42.694210, 27.193150, 27.650618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573521, 26.987196, 27.625771>,  <42.372372, 26.643940, 27.584360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573521, 26.987196, 27.625771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521032, 0.205379, 0.828460,
		0.689671, -0.470551, 0.550397,
		0.502872, 0.858138, 0.103528,
		42.724384, 27.244637, 27.656830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445923, 26.765707, 28.306828>,  <42.372372, 26.643940, 27.584360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445923, 26.765707, 28.306828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.531181, 27.139467, 28.192657>,  <42.582336, 27.363724, 28.124155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.531181, 27.139467, 28.192657>,  <42.445923, 26.765707, 28.306828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531181, 27.139467, 28.192657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431155, 0.352110, 0.830737,
		0.876741, -0.054004, 0.477921,
		0.213144, 0.934399, -0.285425,
		42.595123, 27.419786, 28.107031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603725, 27.108616, 28.966654>,  <42.445923, 26.765707, 28.306828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603725, 27.108616, 28.966654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542435, 27.414560, 28.716372>,  <42.505661, 27.598127, 28.566202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542435, 27.414560, 28.716372>,  <42.603725, 27.108616, 28.966654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542435, 27.414560, 28.716372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207930, 0.594052, 0.777089,
		0.966068, 0.249173, 0.068013,
		-0.153226, 0.764863, -0.625705,
		42.496468, 27.644018, 28.528660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886513, 27.682768, 29.281481>,  <42.603725, 27.108616, 28.966654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886513, 27.682768, 29.281481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.639164, 27.823694, 29.000484>,  <42.490757, 27.908249, 28.831886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.639164, 27.823694, 29.000484>,  <42.886513, 27.682768, 29.281481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639164, 27.823694, 29.000484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382980, 0.645467, 0.660832,
		0.686257, 0.677678, -0.264207,
		-0.618368, 0.352315, -0.702493,
		42.453655, 27.929388, 28.789736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875263, 28.347492, 29.442810>,  <42.886513, 27.682768, 29.281481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875263, 28.347492, 29.442810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542233, 28.295973, 29.227320>,  <42.342415, 28.265060, 29.098026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542233, 28.295973, 29.227320>,  <42.875263, 28.347492, 29.442810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542233, 28.295973, 29.227320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496049, 0.606151, 0.621704,
		0.246475, 0.784851, -0.568559,
		-0.832578, -0.128798, -0.538725,
		42.292458, 28.257334, 29.065702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612125, 28.944700, 29.501986>,  <42.875263, 28.347492, 29.442810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612125, 28.944700, 29.501986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.298275, 28.746786, 29.352558>,  <42.109966, 28.628036, 29.262901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.298275, 28.746786, 29.352558>,  <42.612125, 28.944700, 29.501986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298275, 28.746786, 29.352558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612929, 0.528503, 0.587369,
		-0.093190, 0.689834, -0.717944,
		-0.784623, -0.494786, -0.373568,
		42.062889, 28.598351, 29.240488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080399, 29.424702, 29.439829>,  <42.612125, 28.944700, 29.501986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080399, 29.424702, 29.439829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.883011, 29.076962, 29.450556>,  <41.764580, 28.868317, 29.456993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.883011, 29.076962, 29.450556>,  <42.080399, 29.424702, 29.439829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883011, 29.076962, 29.450556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627468, 0.377180, 0.681190,
		-0.602309, 0.319315, -0.731615,
		-0.493465, -0.869352, 0.026819,
		41.734970, 28.816156, 29.458601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350739, 29.524439, 29.473368>,  <42.080399, 29.424702, 29.439829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350739, 29.524439, 29.473368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.413654, 29.159737, 29.625137>,  <41.451405, 28.940916, 29.716198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.413654, 29.159737, 29.625137>,  <41.350739, 29.524439, 29.473368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413654, 29.159737, 29.625137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695551, 0.170462, 0.697962,
		-0.701048, -0.373691, -0.607360,
		0.157290, -0.911755, 0.379423,
		41.460842, 28.886209, 29.738964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667427, 29.216118, 29.599424>,  <41.350739, 29.524439, 29.473368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667427, 29.216118, 29.599424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938374, 29.062691, 29.850519>,  <41.100941, 28.970634, 30.001177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.938374, 29.062691, 29.850519>,  <40.667427, 29.216118, 29.599424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938374, 29.062691, 29.850519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661359, 0.056168, 0.747964,
		-0.322155, -0.921802, -0.215632,
		0.677363, -0.383570, 0.627737,
		41.141582, 28.947620, 30.038839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333115, 28.579807, 29.963999>,  <40.667427, 29.216118, 29.599424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333115, 28.579807, 29.963999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633888, 28.701591, 30.197887>,  <40.814354, 28.774662, 30.338221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633888, 28.701591, 30.197887>,  <40.333115, 28.579807, 29.963999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633888, 28.701591, 30.197887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636580, 0.104783, 0.764059,
		0.171358, -0.946744, 0.272603,
		0.751933, 0.304462, 0.584722,
		40.859467, 28.792929, 30.373304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173069, 28.225868, 30.600256>,  <40.333115, 28.579807, 29.963999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173069, 28.225868, 30.600256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428333, 28.523182, 30.680540>,  <40.581490, 28.701571, 30.728710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428333, 28.523182, 30.680540>,  <40.173069, 28.225868, 30.600256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428333, 28.523182, 30.680540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587951, 0.302179, 0.750335,
		0.497060, -0.596841, 0.629851,
		0.638158, 0.743283, 0.200712,
		40.619781, 28.746166, 30.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910805, 28.488131, 31.188282>,  <40.173069, 28.225868, 30.600256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910805, 28.488131, 31.188282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.195362, 28.765778, 31.144247>,  <40.366096, 28.932365, 31.117826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.195362, 28.765778, 31.144247>,  <39.910805, 28.488131, 31.188282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195362, 28.765778, 31.144247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357577, 0.492338, 0.793563,
		0.605028, -0.525169, 0.598446,
		0.711393, 0.694118, -0.110090,
		40.408779, 28.974012, 31.111219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194321, 28.521036, 31.792908>,  <39.910805, 28.488131, 31.188282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194321, 28.521036, 31.792908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215733, 28.862509, 31.585691>,  <40.228580, 29.067392, 31.461361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215733, 28.862509, 31.585691>,  <40.194321, 28.521036, 31.792908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215733, 28.862509, 31.585691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470942, 0.479047, 0.740761,
		0.880539, 0.204317, 0.427675,
		0.053526, 0.853679, -0.518041,
		40.231789, 29.118612, 31.430279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.809101, 31.061892, 27.164026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.487415, 30.886055, 27.004025>,  <44.294403, 30.780554, 26.908024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.487415, 30.886055, 27.004025>,  <44.809101, 31.061892, 27.164026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487415, 30.886055, 27.004025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584485, -0.462865, -0.666434,
		0.107809, -0.769751, 0.629175,
		-0.804211, -0.439591, -0.400007,
		44.246151, 30.754177, 26.884022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036785, 30.281607, 27.098490>,  <44.809101, 31.061892, 27.164026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036785, 30.281607, 27.098490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.736721, 30.383633, 26.854456>,  <44.556683, 30.444847, 26.708035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.736721, 30.383633, 26.854456>,  <45.036785, 30.281607, 27.098490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736721, 30.383633, 26.854456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459823, -0.461824, -0.758473,
		-0.475224, -0.849502, 0.229147,
		-0.750150, 0.255078, -0.610090,
		44.511673, 30.460152, 26.671431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845211, 29.687189, 26.737833>,  <45.036785, 30.281607, 27.098490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845211, 29.687189, 26.737833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.673294, 29.960766, 26.502033>,  <44.570145, 30.124912, 26.360554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.673294, 29.960766, 26.502033>,  <44.845211, 29.687189, 26.737833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673294, 29.960766, 26.502033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, -0.475046, -0.806975,
		-0.831962, -0.553676, -0.035818,
		-0.429788, 0.683940, -0.589498,
		44.544357, 30.165947, 26.325184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491325, 29.282984, 26.209328>,  <44.845211, 29.687189, 26.737833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491325, 29.282984, 26.209328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.573513, 29.650063, 26.073322>,  <44.622826, 29.870310, 25.991718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.573513, 29.650063, 26.073322>,  <44.491325, 29.282984, 26.209328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573513, 29.650063, 26.073322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390391, -0.395446, -0.831395,
		-0.897428, 0.038090, -0.439514,
		0.205472, 0.917699, -0.340014,
		44.635155, 29.925373, 25.971317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143848, 29.374372, 25.591194>,  <44.491325, 29.282984, 26.209328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143848, 29.374372, 25.591194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.451267, 29.628248, 25.558926>,  <44.635719, 29.780575, 25.539564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.451267, 29.628248, 25.558926>,  <44.143848, 29.374372, 25.591194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451267, 29.628248, 25.558926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253185, -0.417503, -0.872690,
		-0.587570, 0.650276, -0.481563,
		0.768544, 0.634691, -0.080672,
		44.681831, 29.818655, 25.534723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254353, 29.519821, 24.843250>,  <44.143848, 29.374372, 25.591194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254353, 29.519821, 24.843250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.592808, 29.660242, 25.003658>,  <44.795879, 29.744495, 25.099903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.592808, 29.660242, 25.003658>,  <44.254353, 29.519821, 24.843250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592808, 29.660242, 25.003658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513130, -0.333208, -0.790993,
		-0.144059, 0.875062, -0.462076,
		0.846135, 0.351054, 0.401019,
		44.846649, 29.765558, 25.123964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556484, 29.885809, 24.300314>,  <44.254353, 29.519821, 24.843250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556484, 29.885809, 24.300314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.864529, 29.824114, 24.547909>,  <45.049355, 29.787098, 24.696466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.864529, 29.824114, 24.547909>,  <44.556484, 29.885809, 24.300314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864529, 29.824114, 24.547909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573948, -0.255975, -0.777857,
		0.278418, 0.954300, -0.108605,
		0.770109, -0.154236, 0.618986,
		45.095562, 29.777843, 24.733604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108959, 30.337730, 24.172302>,  <44.556484, 29.885809, 24.300314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108959, 30.337730, 24.172302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.278454, 30.029146, 24.362165>,  <45.380150, 29.843996, 24.476084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.278454, 30.029146, 24.362165>,  <45.108959, 30.337730, 24.172302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278454, 30.029146, 24.362165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611066, -0.143348, -0.778492,
		0.668616, 0.619921, 0.410671,
		0.423735, -0.771459, 0.474658,
		45.405575, 29.797709, 24.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807739, 30.408272, 23.877352>,  <45.108959, 30.337730, 24.172302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807739, 30.408272, 23.877352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.775898, 30.041866, 24.034620>,  <45.756794, 29.822023, 24.128981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.775898, 30.041866, 24.034620>,  <45.807739, 30.408272, 23.877352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775898, 30.041866, 24.034620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456851, -0.384086, -0.802350,
		0.885974, 0.115750, 0.449056,
		-0.079604, -0.916013, 0.393171,
		45.752018, 29.767063, 24.152571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452770, 30.183018, 23.629852>,  <45.807739, 30.408272, 23.877352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452770, 30.183018, 23.629852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.239212, 29.864874, 23.744644>,  <46.111076, 29.673988, 23.813519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.239212, 29.864874, 23.744644>,  <46.452770, 30.183018, 23.629852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239212, 29.864874, 23.744644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409663, -0.540222, -0.735075,
		0.739680, -0.274892, 0.614254,
		-0.533900, -0.795358, 0.286979,
		46.079041, 29.626266, 23.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863201, 29.618694, 23.853683>,  <46.452770, 30.183018, 23.629852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863201, 29.618694, 23.853683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.523445, 29.448248, 23.729130>,  <46.319592, 29.345980, 23.654398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.523445, 29.448248, 23.729130>,  <46.863201, 29.618694, 23.853683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523445, 29.448248, 23.729130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511840, -0.521276, -0.682855,
		0.128659, -0.739390, 0.660870,
		-0.849392, -0.426115, -0.311382,
		46.268627, 29.320414, 23.635715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966858, 28.872896, 23.866261>,  <46.863201, 29.618694, 23.853683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966858, 28.872896, 23.866261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.674847, 28.956381, 23.605953>,  <46.499641, 29.006472, 23.449768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.674847, 28.956381, 23.605953>,  <46.966858, 28.872896, 23.866261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674847, 28.956381, 23.605953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399041, -0.642873, -0.653820,
		-0.554821, -0.736990, 0.386031,
		-0.730027, 0.208711, -0.650769,
		46.455837, 29.018993, 23.410723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732998, 28.265537, 23.738102>,  <46.966858, 28.872896, 23.866261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732998, 28.265537, 23.738102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619572, 28.501741, 23.435873>,  <46.551517, 28.643463, 23.254536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619572, 28.501741, 23.435873>,  <46.732998, 28.265537, 23.738102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619572, 28.501741, 23.435873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253100, -0.713889, -0.652918,
		-0.924949, -0.376381, 0.052976,
		-0.283565, 0.590508, -0.755574,
		46.534504, 28.678894, 23.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304996, 27.982481, 23.274075>,  <46.732998, 28.265537, 23.738102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304996, 27.982481, 23.274075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.522503, 28.244194, 23.063845>,  <46.653008, 28.401222, 22.937706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.522503, 28.244194, 23.063845>,  <46.304996, 27.982481, 23.274075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522503, 28.244194, 23.063845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260778, -0.726986, -0.635206,
		-0.797689, 0.208348, -0.565935,
		0.543771, 0.654281, -0.525576,
		46.685635, 28.440477, 22.906172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458584, 27.407581, 22.942255>,  <46.304996, 27.982481, 23.274075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458584, 27.407581, 22.942255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.363701, 27.036674, 22.826387>,  <46.306770, 26.814131, 22.756866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.363701, 27.036674, 22.826387>,  <46.458584, 27.407581, 22.942255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363701, 27.036674, 22.826387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819833, 0.031109, 0.571757,
		-0.521160, 0.373104, -0.767584,
		-0.237204, -0.927268, -0.289671,
		46.292542, 26.758493, 22.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804573, 27.396893, 22.575226>,  <46.458584, 27.407581, 22.942255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804573, 27.396893, 22.575226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.864021, 27.029560, 22.721968>,  <45.899693, 26.809160, 22.810013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.864021, 27.029560, 22.721968>,  <45.804573, 27.396893, 22.575226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864021, 27.029560, 22.721968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844460, 0.075182, 0.530316,
		-0.514585, -0.388612, -0.764319,
		0.148624, -0.918329, 0.366855,
		45.908607, 26.754061, 22.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108547, 27.170973, 22.627275>,  <45.804573, 27.396893, 22.575226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108547, 27.170973, 22.627275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284866, 26.914484, 22.878523>,  <45.390659, 26.760592, 23.029270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284866, 26.914484, 22.878523>,  <45.108547, 27.170973, 22.627275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284866, 26.914484, 22.878523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722494, 0.161776, 0.672183,
		-0.532632, -0.750110, -0.391967,
		0.440801, -0.641221, 0.628117,
		45.417107, 26.722118, 23.066957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578335, 26.716270, 22.920208>,  <45.108547, 27.170973, 22.627275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578335, 26.716270, 22.920208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.876820, 26.672518, 23.182875>,  <45.055908, 26.646267, 23.340475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.876820, 26.672518, 23.182875>,  <44.578335, 26.716270, 22.920208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876820, 26.672518, 23.182875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661692, -0.013615, 0.749652,
		-0.073061, -0.993906, -0.082540,
		0.746208, -0.109387, 0.656665,
		45.100681, 26.639704, 23.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206547, 26.265182, 23.410706>,  <44.578335, 26.716270, 22.920208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206547, 26.265182, 23.410706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548832, 26.368322, 23.590158>,  <44.754204, 26.430206, 23.697830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548832, 26.368322, 23.590158>,  <44.206547, 26.265182, 23.410706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548832, 26.368322, 23.590158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512991, 0.309146, 0.800793,
		0.067790, -0.915393, 0.396813,
		0.855713, 0.257847, 0.448632,
		44.805546, 26.445677, 23.724749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226990, 25.844837, 23.968243>,  <44.206547, 26.265182, 23.410706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226990, 25.844837, 23.968243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.433907, 26.182470, 24.024719>,  <44.558056, 26.385050, 24.058605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.433907, 26.182470, 24.024719>,  <44.226990, 25.844837, 23.968243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433907, 26.182470, 24.024719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494280, 0.159991, 0.854453,
		0.698640, -0.511789, 0.499975,
		0.517291, 0.844082, 0.141191,
		44.589092, 26.435696, 24.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300846, 25.884819, 24.687445>,  <44.226990, 25.844837, 23.968243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300846, 25.884819, 24.687445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.423439, 26.256962, 24.606943>,  <44.496994, 26.480247, 24.558641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.423439, 26.256962, 24.606943>,  <44.300846, 25.884819, 24.687445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423439, 26.256962, 24.606943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274976, 0.288950, 0.917004,
		0.911293, -0.225706, 0.344385,
		0.306484, 0.930357, -0.201254,
		44.515385, 26.536070, 24.546566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707249, 26.034264, 25.231873>,  <44.300846, 25.884819, 24.687445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707249, 26.034264, 25.231873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.563313, 26.371670, 25.072376>,  <44.476952, 26.574114, 24.976679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.563313, 26.371670, 25.072376>,  <44.707249, 26.034264, 25.231873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563313, 26.371670, 25.072376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198292, 0.348467, 0.916107,
		0.911698, 0.408722, 0.041869,
		-0.359843, 0.843515, -0.398743,
		44.455360, 26.624723, 24.952753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049637, 26.641909, 25.637455>,  <44.707249, 26.034264, 25.231873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049637, 26.641909, 25.637455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.708523, 26.775515, 25.476856>,  <44.503857, 26.855679, 25.380497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.708523, 26.775515, 25.476856>,  <45.049637, 26.641909, 25.637455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708523, 26.775515, 25.476856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362090, 0.175882, 0.915400,
		0.376373, 0.926013, -0.029046,
		-0.852780, 0.334014, -0.401497,
		44.452690, 26.875719, 25.356407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921276, 27.366581, 25.873602>,  <45.049637, 26.641909, 25.637455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921276, 27.366581, 25.873602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547043, 27.250799, 25.792700>,  <44.322502, 27.181330, 25.744158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547043, 27.250799, 25.792700>,  <44.921276, 27.366581, 25.873602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547043, 27.250799, 25.792700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310716, 0.402682, 0.860990,
		-0.167772, 0.868369, -0.466678,
		-0.935579, -0.289454, -0.202257,
		44.266369, 27.163963, 25.732023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538544, 27.889313, 26.141397>,  <44.921276, 27.366581, 25.873602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538544, 27.889313, 26.141397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.272160, 27.591681, 26.120102>,  <44.112328, 27.413101, 26.107325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.272160, 27.591681, 26.120102>,  <44.538544, 27.889313, 26.141397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272160, 27.591681, 26.120102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423979, 0.318813, 0.847703,
		-0.613786, 0.587113, -0.527793,
		-0.665965, -0.744081, -0.053241,
		44.072369, 27.368456, 26.104130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930462, 28.121618, 26.420534>,  <44.538544, 27.889313, 26.141397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930462, 28.121618, 26.420534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.889053, 27.723822, 26.413950>,  <43.864208, 27.485144, 26.410000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.889053, 27.723822, 26.413950>,  <43.930462, 28.121618, 26.420534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889053, 27.723822, 26.413950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596961, 0.048887, 0.800780,
		-0.795563, 0.092727, -0.598733,
		-0.103524, -0.994491, -0.016462,
		43.857998, 27.425474, 26.409012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192158, 28.044678, 26.430231>,  <43.930462, 28.121618, 26.420534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192158, 28.044678, 26.430231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346569, 27.697578, 26.555450>,  <43.439217, 27.489319, 26.630583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346569, 27.697578, 26.555450>,  <43.192158, 28.044678, 26.430231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346569, 27.697578, 26.555450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591280, 0.027733, 0.805989,
		-0.708076, -0.496232, -0.502376,
		0.386025, -0.867747, 0.313049,
		43.462376, 27.437254, 26.649364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567078, 27.561956, 26.567810>,  <43.192158, 28.044678, 26.430231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567078, 27.561956, 26.567810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874813, 27.409456, 26.772852>,  <43.059456, 27.317957, 26.895876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874813, 27.409456, 26.772852>,  <42.567078, 27.561956, 26.567810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874813, 27.409456, 26.772852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576521, -0.068682, 0.814190,
		-0.275204, -0.921917, -0.272639,
		0.769341, -0.381251, 0.512603,
		43.105614, 27.295082, 26.926634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428715, 26.962740, 26.021025>,  <42.567078, 27.561956, 26.567810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428715, 26.962740, 26.021025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.058399, 26.845795, 25.925161>,  <41.836208, 26.775627, 25.867643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.058399, 26.845795, 25.925161>,  <42.428715, 26.962740, 26.021025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058399, 26.845795, 25.925161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284776, -0.122422, -0.950745,
		0.248623, -0.948439, 0.196596,
		-0.925791, -0.292363, -0.239656,
		41.780663, 26.758085, 25.853264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576775, 26.362207, 25.608295>,  <42.428715, 26.962740, 26.021025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576775, 26.362207, 25.608295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225506, 26.531626, 25.519371>,  <42.014744, 26.633278, 25.466017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225506, 26.531626, 25.519371>,  <42.576775, 26.362207, 25.608295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225506, 26.531626, 25.519371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229972, -0.033693, -0.972614,
		-0.419440, -0.905247, -0.067816,
		-0.878171, 0.423549, -0.222313,
		41.962055, 26.658689, 25.452677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396404, 25.919256, 25.044689>,  <42.576775, 26.362207, 25.608295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396404, 25.919256, 25.044689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.146374, 26.229286, 25.007732>,  <41.996353, 26.415304, 24.985558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.146374, 26.229286, 25.007732>,  <42.396404, 25.919256, 25.044689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146374, 26.229286, 25.007732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298014, 0.127574, -0.945998,
		-0.721433, -0.618857, -0.310728,
		-0.625078, 0.775075, -0.092392,
		41.958851, 26.461809, 24.980015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992146, 25.689632, 24.450041>,  <42.396404, 25.919256, 25.044689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992146, 25.689632, 24.450041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938259, 26.084913, 24.479193>,  <41.905926, 26.322081, 24.496683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938259, 26.084913, 24.479193>,  <41.992146, 25.689632, 24.450041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938259, 26.084913, 24.479193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129982, 0.090538, -0.987374,
		-0.982322, -0.123542, -0.140646,
		-0.134716, 0.988200, 0.072880,
		41.897842, 26.381374, 24.501057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555828, 25.827217, 23.877291>,  <41.992146, 25.689632, 24.450041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555828, 25.827217, 23.877291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692978, 26.186304, 23.987955>,  <41.775269, 26.401756, 24.054354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692978, 26.186304, 23.987955>,  <41.555828, 25.827217, 23.877291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692978, 26.186304, 23.987955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261294, 0.191752, -0.946022,
		-0.902310, 0.396655, -0.168821,
		0.342872, 0.897717, 0.276663,
		41.795841, 26.455620, 24.070953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221497, 26.260803, 23.329720>,  <41.555828, 25.827217, 23.877291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221497, 26.260803, 23.329720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557102, 26.413851, 23.484465>,  <41.758465, 26.505678, 23.577311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557102, 26.413851, 23.484465>,  <41.221497, 26.260803, 23.329720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557102, 26.413851, 23.484465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398897, 0.051019, -0.915575,
		-0.370052, 0.922497, -0.109819,
		0.839013, 0.382617, 0.386861,
		41.808807, 26.528635, 23.600523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369152, 26.885437, 22.946447>,  <41.221497, 26.260803, 23.329720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369152, 26.885437, 22.946447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724182, 26.775387, 23.094236>,  <41.937202, 26.709356, 23.182911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724182, 26.775387, 23.094236>,  <41.369152, 26.885437, 22.946447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724182, 26.775387, 23.094236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397092, 0.050396, -0.916394,
		0.233503, 0.960086, 0.153981,
		0.887578, -0.275126, 0.369475,
		41.990456, 26.692848, 23.205078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219440, 27.603504, 22.788588>,  <41.369152, 26.885437, 22.946447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219440, 27.603504, 22.788588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.876923, 27.677608, 22.595737>,  <40.671413, 27.722071, 22.480028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.876923, 27.677608, 22.595737>,  <41.219440, 27.603504, 22.788588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876923, 27.677608, 22.595737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515101, -0.237835, 0.823471,
		0.037890, 0.953474, 0.299084,
		-0.856291, 0.185260, -0.482124,
		40.620037, 27.733187, 22.451099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760117, 27.862497, 23.260803>,  <41.219440, 27.603504, 22.788588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760117, 27.862497, 23.260803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.518398, 27.721289, 22.975088>,  <40.373367, 27.636564, 22.803659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.518398, 27.721289, 22.975088>,  <40.760117, 27.862497, 23.260803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518398, 27.721289, 22.975088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709512, -0.169477, 0.684010,
		-0.362525, 0.920138, -0.148058,
		-0.604291, -0.353020, -0.714289,
		40.337112, 27.615383, 22.760801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043297, 28.088823, 23.398451>,  <40.760117, 27.862497, 23.260803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043297, 28.088823, 23.398451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995605, 27.785147, 23.142509>,  <39.966991, 27.602942, 22.988945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995605, 27.785147, 23.142509>,  <40.043297, 28.088823, 23.398451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995605, 27.785147, 23.142509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893426, -0.199082, 0.402688,
		-0.433100, 0.619675, -0.654544,
		-0.119228, -0.759190, -0.639856,
		39.959839, 27.557390, 22.950552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306751, 28.155001, 23.207771>,  <40.043297, 28.088823, 23.398451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306751, 28.155001, 23.207771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448063, 27.784281, 23.156794>,  <39.532848, 27.561850, 23.126207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448063, 27.784281, 23.156794>,  <39.306751, 28.155001, 23.207771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448063, 27.784281, 23.156794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717724, -0.355881, 0.598516,
		-0.600058, -0.119971, -0.790909,
		0.353275, -0.926799, -0.127443,
		39.554047, 27.506241, 23.118561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683270, 27.741241, 23.298910>,  <39.306751, 28.155001, 23.207771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683270, 27.741241, 23.298910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984840, 27.479538, 23.322721>,  <39.165783, 27.322515, 23.337009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984840, 27.479538, 23.322721>,  <38.683270, 27.741241, 23.298910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984840, 27.479538, 23.322721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551306, -0.580792, 0.598951,
		-0.357294, -0.484383, -0.798570,
		0.753924, -0.654259, 0.059530,
		39.211018, 27.283260, 23.340580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421532, 27.082394, 23.146879>,  <38.683270, 27.741241, 23.298910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421532, 27.082394, 23.146879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740925, 27.050026, 23.385502>,  <38.932560, 27.030605, 23.528675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740925, 27.050026, 23.385502>,  <38.421532, 27.082394, 23.146879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740925, 27.050026, 23.385502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547280, -0.510423, 0.663289,
		0.250826, -0.856108, -0.451847,
		0.798480, -0.080917, 0.596558,
		38.980469, 27.025751, 23.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283653, 26.421961, 23.467884>,  <38.421532, 27.082394, 23.146879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283653, 26.421961, 23.467884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604473, 26.543358, 23.673643>,  <38.796967, 26.616196, 23.797098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604473, 26.543358, 23.673643>,  <38.283653, 26.421961, 23.467884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604473, 26.543358, 23.673643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377653, -0.409526, 0.830462,
		0.462696, -0.860338, -0.213847,
		0.802054, 0.303491, 0.514395,
		38.845089, 26.634405, 23.827961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.301903, 29.339354, 21.864515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638626, 29.425446, 22.062517>,  <43.840660, 29.477100, 22.181318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.638626, 29.425446, 22.062517>,  <43.301903, 29.339354, 21.864515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638626, 29.425446, 22.062517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504223, 0.640857, 0.578844,
		-0.192641, -0.736870, 0.648006,
		0.841812, 0.215231, 0.495003,
		43.891171, 29.490015, 22.211018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109825, 29.144171, 22.688873>,  <43.301903, 29.339354, 21.864515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109825, 29.144171, 22.688873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.408058, 29.407093, 22.644970>,  <43.586998, 29.564846, 22.618628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.408058, 29.407093, 22.644970>,  <43.109825, 29.144171, 22.688873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408058, 29.407093, 22.644970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300406, 0.478529, 0.825086,
		0.594859, -0.582200, 0.554244,
		0.745587, 0.657307, -0.109761,
		43.631733, 29.604284, 22.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417755, 29.239864, 23.440104>,  <43.109825, 29.144171, 22.688873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417755, 29.239864, 23.440104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.557137, 29.550819, 23.230627>,  <43.640766, 29.737392, 23.104940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.557137, 29.550819, 23.230627>,  <43.417755, 29.239864, 23.440104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557137, 29.550819, 23.230627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301019, 0.621922, 0.722911,
		0.887677, -0.094257, 0.450716,
		0.348450, 0.777386, -0.523693,
		43.661671, 29.784035, 23.073519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738106, 29.625225, 23.842636>,  <43.417755, 29.239864, 23.440104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738106, 29.625225, 23.842636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651028, 29.887033, 23.553026>,  <43.598782, 30.044119, 23.379261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651028, 29.887033, 23.553026>,  <43.738106, 29.625225, 23.842636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651028, 29.887033, 23.553026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489689, 0.568446, 0.661115,
		0.844283, 0.498466, 0.196767,
		-0.217692, 0.654523, -0.724023,
		43.585720, 30.083391, 23.335819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751076, 30.180492, 24.139456>,  <43.738106, 29.625225, 23.842636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751076, 30.180492, 24.139456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.548866, 30.301752, 23.816336>,  <43.427540, 30.374508, 23.622463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.548866, 30.301752, 23.816336>,  <43.751076, 30.180492, 24.139456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548866, 30.301752, 23.816336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647449, 0.485566, 0.587397,
		0.570309, 0.819955, -0.049194,
		-0.505526, 0.303147, -0.807803,
		43.397209, 30.392696, 23.573996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577965, 30.892412, 24.342831>,  <43.751076, 30.180492, 24.139456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577965, 30.892412, 24.342831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.349419, 30.765648, 24.040014>,  <43.212292, 30.689589, 23.858324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.349419, 30.765648, 24.040014>,  <43.577965, 30.892412, 24.342831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349419, 30.765648, 24.040014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782964, 0.486969, 0.387077,
		0.245986, 0.813897, -0.526367,
		-0.571365, -0.316912, -0.757040,
		43.178009, 30.670574, 23.812902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157940, 31.450617, 24.174700>,  <43.577965, 30.892412, 24.342831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157940, 31.450617, 24.174700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.952717, 31.136450, 24.036196>,  <42.829582, 30.947950, 23.953093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.952717, 31.136450, 24.036196>,  <43.157940, 31.450617, 24.174700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952717, 31.136450, 24.036196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847387, 0.399177, 0.350135,
		-0.136783, 0.473055, -0.870350,
		-0.513057, -0.785416, -0.346260,
		42.798801, 30.900826, 23.932318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546219, 31.655035, 23.983711>,  <43.157940, 31.450617, 24.174700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546219, 31.655035, 23.983711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435566, 31.270714, 23.991007>,  <42.369175, 31.040121, 23.995384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.435566, 31.270714, 23.991007>,  <42.546219, 31.655035, 23.983711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435566, 31.270714, 23.991007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861127, 0.256267, 0.439076,
		-0.426540, 0.105754, -0.898265,
		-0.276630, -0.960803, 0.018240,
		42.352577, 30.982473, 23.996479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914936, 31.672178, 23.761255>,  <42.546219, 31.655035, 23.983711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914936, 31.672178, 23.761255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.958553, 31.347679, 23.991034>,  <41.984726, 31.152981, 24.128901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.958553, 31.347679, 23.991034>,  <41.914936, 31.672178, 23.761255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958553, 31.347679, 23.991034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878144, 0.192180, 0.438099,
		-0.465803, -0.552220, -0.691434,
		0.109047, -0.811246, 0.574447,
		41.991268, 31.104305, 24.163368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318459, 31.441294, 23.824945>,  <41.914936, 31.672178, 23.761255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318459, 31.441294, 23.824945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.492470, 31.234373, 24.119741>,  <41.596874, 31.110220, 24.296619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.492470, 31.234373, 24.119741>,  <41.318459, 31.441294, 23.824945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492470, 31.234373, 24.119741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839573, 0.062738, 0.539612,
		-0.325379, -0.853501, -0.407020,
		0.435024, -0.517301, 0.736990,
		41.622978, 31.079184, 24.340837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794922, 31.121641, 24.160381>,  <41.318459, 31.441294, 23.824945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794922, 31.121641, 24.160381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082348, 31.106489, 24.438152>,  <41.254803, 31.097399, 24.604815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082348, 31.106489, 24.438152>,  <40.794922, 31.121641, 24.160381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082348, 31.106489, 24.438152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685870, 0.126658, 0.716617,
		-0.115099, -0.991223, 0.065032,
		0.718564, -0.037878, 0.694429,
		41.297916, 31.095125, 24.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565647, 30.687181, 24.726625>,  <40.794922, 31.121641, 24.160381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565647, 30.687181, 24.726625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836105, 30.936499, 24.883764>,  <40.998383, 31.086088, 24.978048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.836105, 30.936499, 24.883764>,  <40.565647, 30.687181, 24.726625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836105, 30.936499, 24.883764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632847, 0.218303, 0.742865,
		0.377261, -0.750901, 0.542053,
		0.676150, 0.623291, 0.392848,
		41.038952, 31.123486, 25.001619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573769, 29.972128, 24.490973>,  <40.565647, 30.687181, 24.726625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573769, 29.972128, 24.490973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217476, 30.113377, 24.376503>,  <40.003700, 30.198126, 24.307821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217476, 30.113377, 24.376503>,  <40.573769, 29.972128, 24.490973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217476, 30.113377, 24.376503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334964, 0.084411, -0.938442,
		-0.307228, -0.931762, -0.193471,
		-0.890736, 0.353122, -0.286173,
		39.950256, 30.219313, 24.290651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267498, 29.533504, 23.994461>,  <40.573769, 29.972128, 24.490973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267498, 29.533504, 23.994461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101746, 29.892986, 23.937016>,  <40.002296, 30.108675, 23.902548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101746, 29.892986, 23.937016>,  <40.267498, 29.533504, 23.994461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101746, 29.892986, 23.937016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365758, 0.019952, -0.930496,
		-0.833374, -0.438105, -0.336975,
		-0.414379, 0.898702, -0.143613,
		39.977432, 30.162598, 23.893932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930767, 29.491734, 23.356272>,  <40.267498, 29.533504, 23.994461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930767, 29.491734, 23.356272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.971634, 29.886387, 23.407045>,  <39.996155, 30.123180, 23.437510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.971634, 29.886387, 23.407045>,  <39.930767, 29.491734, 23.356272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971634, 29.886387, 23.407045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271538, 0.095099, -0.957718,
		-0.956990, 0.132312, -0.258194,
		0.102163, 0.986636, 0.126936,
		40.002281, 30.182377, 23.445126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547810, 29.720976, 22.808996>,  <39.930767, 29.491734, 23.356272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547810, 29.720976, 22.808996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782440, 30.027906, 22.912643>,  <39.923218, 30.212065, 22.974831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782440, 30.027906, 22.912643>,  <39.547810, 29.720976, 22.808996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782440, 30.027906, 22.912643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166444, 0.198895, -0.965783,
		-0.792606, 0.609633, -0.011050,
		0.586576, 0.767325, 0.259116,
		39.958412, 30.258104, 22.990377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368088, 30.270874, 22.336365>,  <39.547810, 29.720976, 22.808996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368088, 30.270874, 22.336365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.722477, 30.400322, 22.469229>,  <39.935108, 30.477991, 22.548946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.722477, 30.400322, 22.469229>,  <39.368088, 30.270874, 22.336365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722477, 30.400322, 22.469229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219311, 0.338717, -0.914972,
		-0.408610, 0.883483, 0.229119,
		0.885969, 0.323619, 0.332160,
		39.988266, 30.497408, 22.568876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495651, 30.928759, 21.915333>,  <39.368088, 30.270874, 22.336365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495651, 30.928759, 21.915333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821602, 30.761154, 22.075535>,  <40.017174, 30.660591, 22.171656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821602, 30.761154, 22.075535>,  <39.495651, 30.928759, 21.915333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821602, 30.761154, 22.075535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460248, 0.047725, -0.886506,
		0.352343, 0.906725, 0.231740,
		0.814878, -0.419012, 0.400503,
		40.066067, 30.635450, 22.195686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972046, 31.406387, 21.773819>,  <39.495651, 30.928759, 21.915333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972046, 31.406387, 21.773819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.164021, 31.062050, 21.841475>,  <40.279205, 30.855448, 21.882069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.164021, 31.062050, 21.841475>,  <39.972046, 31.406387, 21.773819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164021, 31.062050, 21.841475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490321, 0.103327, -0.865395,
		0.727495, 0.498265, 0.471681,
		0.479933, -0.860846, 0.169140,
		40.307999, 30.803797, 21.892216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614578, 31.575216, 21.642937>,  <39.972046, 31.406387, 21.773819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614578, 31.575216, 21.642937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.634655, 31.175865, 21.632206>,  <40.646702, 30.936255, 21.625769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.634655, 31.175865, 21.632206>,  <40.614578, 31.575216, 21.642937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634655, 31.175865, 21.632206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558948, 0.050338, -0.827673,
		0.827682, 0.026549, 0.560569,
		0.050192, -0.998379, -0.026825,
		40.649712, 30.876352, 21.624159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208424, 31.497452, 21.455690>,  <40.614578, 31.575216, 21.642937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208424, 31.497452, 21.455690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.061855, 31.132198, 21.384222>,  <40.973915, 30.913046, 21.341341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.061855, 31.132198, 21.384222>,  <41.208424, 31.497452, 21.455690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061855, 31.132198, 21.384222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567196, -0.066988, -0.820854,
		0.737579, -0.402122, 0.542471,
		-0.366423, -0.913132, -0.178673,
		40.951927, 30.858259, 21.330620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757954, 31.123047, 21.388470>,  <41.208424, 31.497452, 21.455690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757954, 31.123047, 21.388470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.449512, 30.943956, 21.207384>,  <41.264450, 30.836502, 21.098732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.449512, 30.943956, 21.207384>,  <41.757954, 31.123047, 21.388470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449512, 30.943956, 21.207384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530900, -0.059591, -0.845336,
		0.351501, -0.892183, 0.283648,
		-0.771098, -0.447725, -0.452714,
		41.218182, 30.809639, 21.071569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110714, 30.643595, 20.930037>,  <41.757954, 31.123047, 21.388470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110714, 30.643595, 20.930037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738228, 30.688995, 20.791502>,  <41.514736, 30.716236, 20.708382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738228, 30.688995, 20.791502>,  <42.110714, 30.643595, 20.930037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738228, 30.688995, 20.791502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343412, -0.044995, -0.938107,
		-0.122061, -0.992518, 0.002923,
		-0.931220, 0.113502, -0.346335,
		41.458862, 30.723045, 20.687601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047737, 30.129854, 20.438190>,  <42.110714, 30.643595, 20.930037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047737, 30.129854, 20.438190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764889, 30.395716, 20.341673>,  <41.595181, 30.555233, 20.283762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764889, 30.395716, 20.341673>,  <42.047737, 30.129854, 20.438190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764889, 30.395716, 20.341673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239476, -0.095968, -0.966148,
		-0.665309, -0.740964, -0.091307,
		-0.707118, 0.664652, -0.241292,
		41.552753, 30.595112, 20.269285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650402, 29.850616, 19.888868>,  <42.047737, 30.129854, 20.438190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650402, 29.850616, 19.888868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587051, 30.244614, 19.861425>,  <41.549042, 30.481012, 19.844959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.587051, 30.244614, 19.861425>,  <41.650402, 29.850616, 19.888868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587051, 30.244614, 19.861425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102274, -0.052748, -0.993357,
		-0.982068, -0.164340, -0.092385,
		-0.158375, 0.984992, -0.068610,
		41.539539, 30.540112, 19.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984142, 29.191483, 19.913708>,  <41.650402, 29.850616, 19.888868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984142, 29.191483, 19.913708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.944775, 28.812973, 19.790497>,  <41.921154, 28.585867, 19.716570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.944775, 28.812973, 19.790497>,  <41.984142, 29.191483, 19.913708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944775, 28.812973, 19.790497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664534, -0.167907, 0.728149,
		-0.740748, 0.276362, -0.612305,
		-0.098422, -0.946272, -0.308029,
		41.915249, 28.529091, 19.698088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352287, 29.114843, 19.946415>,  <41.984142, 29.191483, 19.913708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352287, 29.114843, 19.946415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485016, 28.737513, 19.944246>,  <41.564655, 28.511114, 19.942945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485016, 28.737513, 19.944246>,  <41.352287, 29.114843, 19.946415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485016, 28.737513, 19.944246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646210, -0.231490, 0.727204,
		-0.687245, -0.237801, -0.686400,
		0.331825, -0.943326, -0.005420,
		41.584564, 28.454515, 19.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732380, 28.817499, 20.053617>,  <41.352287, 29.114843, 19.946415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732380, 28.817499, 20.053617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013073, 28.545124, 20.137423>,  <41.181488, 28.381699, 20.187706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013073, 28.545124, 20.137423>,  <40.732380, 28.817499, 20.053617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013073, 28.545124, 20.137423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551098, -0.332438, 0.765360,
		-0.451513, -0.652539, -0.608546,
		0.701731, -0.680939, 0.209513,
		41.223591, 28.340843, 20.200277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289799, 28.229988, 20.164597>,  <40.732380, 28.817499, 20.053617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289799, 28.229988, 20.164597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644447, 28.167953, 20.338884>,  <40.857235, 28.130732, 20.443457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644447, 28.167953, 20.338884>,  <40.289799, 28.229988, 20.164597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644447, 28.167953, 20.338884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462173, -0.332294, 0.822178,
		0.017278, -0.930338, -0.366296,
		0.886621, -0.155086, 0.435718,
		40.910435, 28.121428, 20.469599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270565, 27.584198, 20.531981>,  <40.289799, 28.229988, 20.164597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270565, 27.584198, 20.531981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.581131, 27.773785, 20.698130>,  <40.767471, 27.887537, 20.797819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.581131, 27.773785, 20.698130>,  <40.270565, 27.584198, 20.531981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581131, 27.773785, 20.698130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269398, -0.346235, 0.898635,
		0.569739, -0.809616, -0.141137,
		0.776416, 0.473966, 0.415373,
		40.814056, 27.915974, 20.822742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580528, 27.094286, 20.999815>,  <40.270565, 27.584198, 20.531981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580528, 27.094286, 20.999815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689781, 27.465000, 21.102938>,  <40.755333, 27.687429, 21.164812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689781, 27.465000, 21.102938>,  <40.580528, 27.094286, 20.999815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689781, 27.465000, 21.102938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250205, -0.190333, 0.949300,
		0.928868, -0.323790, 0.179900,
		0.273133, 0.926787, 0.257808,
		40.771721, 27.743036, 21.180281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102997, 26.951899, 21.575895>,  <40.580528, 27.094286, 20.999815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102997, 26.951899, 21.575895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959354, 27.325130, 21.583942>,  <40.873169, 27.549068, 21.588770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959354, 27.325130, 21.583942>,  <41.102997, 26.951899, 21.575895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959354, 27.325130, 21.583942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357949, -0.157606, 0.920344,
		0.861923, 0.323304, 0.390593,
		-0.359110, 0.933078, 0.020117,
		40.851620, 27.605055, 21.589977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296562, 27.205772, 22.156052>,  <41.102997, 26.951899, 21.575895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296562, 27.205772, 22.156052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018600, 27.482536, 22.077703>,  <40.851822, 27.648596, 22.030695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018600, 27.482536, 22.077703>,  <41.296562, 27.205772, 22.156052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018600, 27.482536, 22.077703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389139, -0.132772, 0.911560,
		0.604713, 0.709669, 0.361514,
		-0.694905, 0.691911, -0.195871,
		40.810127, 27.690109, 22.018942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902786, 27.348024, 22.537533>,  <41.296562, 27.205772, 22.156052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902786, 27.348024, 22.537533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.124172, 27.067108, 22.716625>,  <42.257004, 26.898560, 22.824081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.124172, 27.067108, 22.716625>,  <41.902786, 27.348024, 22.537533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124172, 27.067108, 22.716625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645712, 0.022280, -0.763256,
		0.526051, 0.711543, 0.465808,
		0.553468, -0.702289, 0.447731,
		42.290211, 26.856421, 22.850945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597961, 27.641359, 22.564802>,  <41.902786, 27.348024, 22.537533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597961, 27.641359, 22.564802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598835, 27.241970, 22.586889>,  <42.599358, 27.002337, 22.600142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.598835, 27.241970, 22.586889>,  <42.597961, 27.641359, 22.564802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598835, 27.241970, 22.586889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759812, -0.034241, -0.649240,
		0.650139, 0.043373, 0.758577,
		0.002185, -0.998472, 0.055217,
		42.599491, 26.942429, 22.603455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293293, 27.433664, 22.519361>,  <42.597961, 27.641359, 22.564802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293293, 27.433664, 22.519361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127316, 27.076344, 22.450272>,  <43.027729, 26.861950, 22.408817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127316, 27.076344, 22.450272>,  <43.293293, 27.433664, 22.519361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127316, 27.076344, 22.450272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720414, -0.206623, -0.662050,
		0.555723, -0.399143, 0.729285,
		-0.414940, -0.893304, -0.172723,
		43.002834, 26.808352, 22.398455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852646, 26.868557, 22.671757>,  <43.293293, 27.433664, 22.519361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852646, 26.868557, 22.671757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.593330, 26.717464, 22.407320>,  <43.437740, 26.626810, 22.248657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.593330, 26.717464, 22.407320>,  <43.852646, 26.868557, 22.671757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593330, 26.717464, 22.407320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750010, -0.466403, -0.468992,
		-0.131183, -0.799868, 0.585664,
		-0.648288, -0.377730, -0.661093,
		43.398846, 26.604145, 22.208992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011486, 26.199831, 22.576683>,  <43.852646, 26.868557, 22.671757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011486, 26.199831, 22.576683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.795380, 26.288050, 22.251850>,  <43.665718, 26.340981, 22.056950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.795380, 26.288050, 22.251850>,  <44.011486, 26.199831, 22.576683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795380, 26.288050, 22.251850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717389, -0.383718, -0.581475,
		-0.439852, -0.896727, 0.049092,
		-0.540262, 0.220545, -0.812082,
		43.633301, 26.354214, 22.008226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012871, 25.646250, 22.188089>,  <44.011486, 26.199831, 22.576683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012871, 25.646250, 22.188089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.879642, 25.908020, 21.916563>,  <43.799706, 26.065083, 21.753647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.879642, 25.908020, 21.916563>,  <44.012871, 25.646250, 22.188089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879642, 25.908020, 21.916563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660428, -0.351915, -0.663317,
		-0.672978, -0.669241, -0.314988,
		-0.333070, 0.654425, -0.678817,
		43.779720, 26.104347, 21.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999821, 25.338190, 21.540180>,  <44.012871, 25.646250, 22.188089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999821, 25.338190, 21.540180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.975040, 25.713591, 21.404312>,  <43.960171, 25.938831, 21.322792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.975040, 25.713591, 21.404312>,  <43.999821, 25.338190, 21.540180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975040, 25.713591, 21.404312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579219, -0.243346, -0.778003,
		-0.812815, -0.244939, -0.528524,
		-0.061949, 0.938503, -0.339668,
		43.956455, 25.995142, 21.302412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591549, 25.349932, 20.865097>,  <43.999821, 25.338190, 21.540180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591549, 25.349932, 20.865097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.832340, 25.667505, 20.899240>,  <43.976814, 25.858049, 20.919727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.832340, 25.667505, 20.899240>,  <43.591549, 25.349932, 20.865097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832340, 25.667505, 20.899240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469396, -0.265363, -0.842170,
		-0.645977, 0.547037, -0.532413,
		0.601981, 0.793935, 0.085359,
		44.012936, 25.905685, 20.924849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714638, 25.639078, 20.157381>,  <43.591549, 25.349932, 20.865097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714638, 25.639078, 20.157381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.034477, 25.764463, 20.362272>,  <44.226383, 25.839695, 20.485207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.034477, 25.764463, 20.362272>,  <43.714638, 25.639078, 20.157381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034477, 25.764463, 20.362272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557301, -0.069561, -0.827391,
		-0.223724, 0.947050, -0.230313,
		0.799602, 0.313461, 0.512230,
		44.274357, 25.858501, 20.515942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.035431, 29.681873, 32.519119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333450, 29.925966, 32.626835>,  <35.512264, 30.072422, 32.691463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333450, 29.925966, 32.626835>,  <35.035431, 29.681873, 32.519119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333450, 29.925966, 32.626835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660752, -0.620076, -0.422980,
		-0.091139, 0.493072, -0.865201,
		0.745051, 0.610233, 0.269285,
		35.556965, 30.109035, 32.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457081, 29.929562, 32.008202>,  <35.035431, 29.681873, 32.519119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457081, 29.929562, 32.008202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690498, 29.921482, 32.332935>,  <35.830547, 29.916636, 32.527775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690498, 29.921482, 32.332935>,  <35.457081, 29.929562, 32.008202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690498, 29.921482, 32.332935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513979, -0.764796, -0.388475,
		0.628731, 0.643956, -0.435910,
		0.583543, -0.020198, 0.811831,
		35.865562, 29.915422, 32.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052479, 29.938999, 31.754688>,  <35.457081, 29.929562, 32.008202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052479, 29.938999, 31.754688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121975, 29.779739, 32.114975>,  <36.163673, 29.684183, 32.331146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121975, 29.779739, 32.114975>,  <36.052479, 29.938999, 31.754688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121975, 29.779739, 32.114975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636620, -0.652413, -0.411184,
		0.751352, 0.644853, 0.140120,
		0.173737, -0.398148, 0.900719,
		36.174095, 29.660295, 32.385189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757858, 29.840435, 31.885649>,  <36.052479, 29.938999, 31.754688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757858, 29.840435, 31.885649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596760, 29.549566, 32.108006>,  <36.500099, 29.375046, 32.241421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596760, 29.549566, 32.108006>,  <36.757858, 29.840435, 31.885649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596760, 29.549566, 32.108006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627016, -0.661632, -0.411211,
		0.666816, 0.182937, 0.722420,
		-0.402750, -0.727171, 0.555891,
		36.475933, 29.331415, 32.274773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413315, 29.370295, 32.082237>,  <36.757858, 29.840435, 31.885649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413315, 29.370295, 32.082237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077618, 29.163141, 32.148525>,  <36.876198, 29.038849, 32.188297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077618, 29.163141, 32.148525>,  <37.413315, 29.370295, 32.082237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077618, 29.163141, 32.148525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473334, -0.845807, -0.246100,
		0.267618, -0.128097, 0.954972,
		-0.839247, -0.517882, 0.165721,
		36.825844, 29.007776, 32.198242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611755, 28.824345, 32.380039>,  <37.413315, 29.370295, 32.082237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611755, 28.824345, 32.380039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245968, 28.725668, 32.251736>,  <37.026497, 28.666462, 32.174751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245968, 28.725668, 32.251736>,  <37.611755, 28.824345, 32.380039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245968, 28.725668, 32.251736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380827, -0.792659, -0.476091,
		-0.136805, -0.557525, 0.818810,
		-0.914470, -0.246693, -0.320760,
		36.971626, 28.651661, 32.155506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613773, 28.136820, 32.392151>,  <37.611755, 28.824345, 32.380039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613773, 28.136820, 32.392151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304970, 28.176823, 32.141075>,  <37.119686, 28.200825, 31.990429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.304970, 28.176823, 32.141075>,  <37.613773, 28.136820, 32.392151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304970, 28.176823, 32.141075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305626, -0.807482, -0.504544,
		-0.557309, -0.581352, 0.592820,
		-0.772010, 0.100006, -0.627693,
		37.073368, 28.206825, 31.952766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227970, 27.478840, 32.377571>,  <37.613773, 28.136820, 32.392151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227970, 27.478840, 32.377571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126534, 27.675455, 32.044323>,  <37.065674, 27.793425, 31.844376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126534, 27.675455, 32.044323>,  <37.227970, 27.478840, 32.377571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126534, 27.675455, 32.044323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380738, -0.741028, -0.553098,
		-0.889231, -0.457458, 0.000768,
		-0.253588, 0.491539, -0.833116,
		37.050457, 27.822916, 31.794388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865097, 26.964104, 31.949026>,  <37.227970, 27.478840, 32.377571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865097, 26.964104, 31.949026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983303, 27.249575, 31.694992>,  <37.054226, 27.420856, 31.542572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983303, 27.249575, 31.694992>,  <36.865097, 26.964104, 31.949026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983303, 27.249575, 31.694992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269081, -0.700042, -0.661465,
		-0.916659, 0.024585, -0.398912,
		0.295517, 0.713678, -0.635085,
		37.071957, 27.463678, 31.504467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660892, 26.717188, 31.344694>,  <36.865097, 26.964104, 31.949026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660892, 26.717188, 31.344694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937042, 26.996321, 31.268356>,  <37.102730, 27.163799, 31.222553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937042, 26.996321, 31.268356>,  <36.660892, 26.717188, 31.344694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937042, 26.996321, 31.268356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507203, -0.654969, -0.560143,
		-0.515882, 0.289909, -0.806113,
		0.690370, 0.697831, -0.190844,
		37.144154, 27.205669, 31.211103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639378, 26.852051, 30.619843>,  <36.660892, 26.717188, 31.344694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639378, 26.852051, 30.619843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997608, 26.975349, 30.748173>,  <37.212547, 27.049330, 30.825171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997608, 26.975349, 30.748173>,  <36.639378, 26.852051, 30.619843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997608, 26.975349, 30.748173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433042, -0.438470, -0.787540,
		-0.102084, 0.844232, -0.526167,
		0.895574, 0.308248, 0.320827,
		37.266281, 27.067823, 30.844421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955299, 27.062279, 30.045179>,  <36.639378, 26.852051, 30.619843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955299, 27.062279, 30.045179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266148, 27.007435, 30.290874>,  <37.452656, 26.974529, 30.438292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266148, 27.007435, 30.290874>,  <36.955299, 27.062279, 30.045179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266148, 27.007435, 30.290874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518477, -0.413753, -0.748325,
		0.356744, 0.900005, -0.250447,
		0.777120, -0.137110, 0.614236,
		37.499283, 26.966301, 30.475145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905357, 27.617479, 29.536505>,  <36.955299, 27.062279, 30.045179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905357, 27.617479, 29.536505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584602, 27.464787, 29.352655>,  <36.392147, 27.373171, 29.242346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584602, 27.464787, 29.352655>,  <36.905357, 27.617479, 29.536505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584602, 27.464787, 29.352655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557204, 0.200171, 0.805887,
		-0.215631, 0.902336, -0.373218,
		-0.801889, -0.381733, -0.459623,
		36.344036, 27.350267, 29.214769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339478, 28.080408, 29.761789>,  <36.905357, 27.617479, 29.536505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339478, 28.080408, 29.761789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162823, 27.770828, 29.580256>,  <36.056831, 27.585081, 29.471336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162823, 27.770828, 29.580256>,  <36.339478, 28.080408, 29.761789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162823, 27.770828, 29.580256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798752, 0.108796, 0.591743,
		-0.408603, 0.623833, -0.666240,
		-0.441633, -0.773949, -0.453833,
		36.030334, 27.538643, 29.444105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712692, 28.248224, 29.497742>,  <36.339478, 28.080408, 29.761789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712692, 28.248224, 29.497742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666500, 27.853601, 29.543987>,  <35.638786, 27.616827, 29.571733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666500, 27.853601, 29.543987>,  <35.712692, 28.248224, 29.497742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666500, 27.853601, 29.543987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848871, 0.158459, 0.504291,
		-0.515832, -0.039905, -0.855760,
		-0.115479, -0.986559, 0.115612,
		35.631855, 27.557634, 29.578671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021957, 28.089422, 29.179274>,  <35.712692, 28.248224, 29.497742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021957, 28.089422, 29.179274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093403, 27.795057, 29.440512>,  <35.136272, 27.618439, 29.597254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093403, 27.795057, 29.440512>,  <35.021957, 28.089422, 29.179274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093403, 27.795057, 29.440512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859786, 0.205996, 0.467262,
		-0.478398, -0.644982, -0.595931,
		0.178615, -0.735910, 0.653094,
		35.146988, 27.574284, 29.636440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454674, 27.746555, 29.155458>,  <35.021957, 28.089422, 29.179274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454674, 27.746555, 29.155458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624035, 27.666950, 29.508984>,  <34.725651, 27.619188, 29.721098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.624035, 27.666950, 29.508984>,  <34.454674, 27.746555, 29.155458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624035, 27.666950, 29.508984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845117, 0.264669, 0.464464,
		-0.326352, -0.943580, -0.056127,
		0.423404, -0.199013, 0.883811,
		34.751057, 27.607246, 29.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978828, 27.387892, 29.564198>,  <34.454674, 27.746555, 29.155458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978828, 27.387892, 29.564198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238636, 27.511086, 29.842268>,  <34.394520, 27.585003, 30.009109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238636, 27.511086, 29.842268>,  <33.978828, 27.387892, 29.564198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238636, 27.511086, 29.842268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759874, 0.295117, 0.579222,
		-0.026767, -0.904462, 0.425713,
		0.649520, 0.307984, 0.695176,
		34.433491, 27.603481, 30.050821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708618, 27.285852, 30.155521>,  <33.978828, 27.387892, 29.564198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708618, 27.285852, 30.155521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980568, 27.549421, 30.284266>,  <34.143738, 27.707563, 30.361513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980568, 27.549421, 30.284266>,  <33.708618, 27.285852, 30.155521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980568, 27.549421, 30.284266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693117, 0.434044, 0.575495,
		0.239504, -0.614352, 0.751805,
		0.679873, 0.658922, 0.321862,
		34.184528, 27.747099, 30.380823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576023, 27.450806, 30.798082>,  <33.708618, 27.285852, 30.155521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576023, 27.450806, 30.798082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794121, 27.778866, 30.728729>,  <33.924980, 27.975702, 30.687117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794121, 27.778866, 30.728729>,  <33.576023, 27.450806, 30.798082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794121, 27.778866, 30.728729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613240, 0.531264, 0.584547,
		0.571530, -0.212394, 0.792617,
		0.545243, 0.820151, -0.173385,
		33.957695, 28.024910, 30.676714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628323, 27.829060, 31.483080>,  <33.576023, 27.450806, 30.798082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628323, 27.829060, 31.483080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718353, 28.115520, 31.218819>,  <33.772373, 28.287397, 31.060261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718353, 28.115520, 31.218819>,  <33.628323, 27.829060, 31.483080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718353, 28.115520, 31.218819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504105, 0.665842, 0.550030,
		0.833797, 0.209239, 0.510883,
		0.225079, 0.716152, -0.660656,
		33.785877, 28.330366, 31.020622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976589, 28.499306, 31.891556>,  <33.628323, 27.829060, 31.483080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976589, 28.499306, 31.891556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815960, 28.609339, 31.542141>,  <33.719582, 28.675360, 31.332493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815960, 28.609339, 31.542141>,  <33.976589, 28.499306, 31.891556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815960, 28.609339, 31.542141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422926, 0.790327, 0.443302,
		0.812326, 0.547460, -0.201034,
		-0.401573, 0.275083, -0.873538,
		33.695488, 28.691864, 31.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127155, 29.229412, 31.774250>,  <33.976589, 28.499306, 31.891556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127155, 29.229412, 31.774250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818760, 29.154604, 31.530743>,  <33.633724, 29.109718, 31.384638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818760, 29.154604, 31.530743>,  <34.127155, 29.229412, 31.774250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818760, 29.154604, 31.530743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604539, 0.515534, 0.607254,
		0.200271, 0.836211, -0.510532,
		-0.770989, -0.187021, -0.608768,
		33.587463, 29.098497, 31.348112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710022, 29.865370, 31.742197>,  <34.127155, 29.229412, 31.774250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710022, 29.865370, 31.742197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443344, 29.608864, 31.590252>,  <33.283337, 29.454960, 31.499084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443344, 29.608864, 31.590252>,  <33.710022, 29.865370, 31.742197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443344, 29.608864, 31.590252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703629, 0.373429, 0.604530,
		-0.245812, 0.670320, -0.700177,
		-0.666695, -0.641265, -0.379864,
		33.243336, 29.416485, 31.476294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158852, 30.310709, 31.534668>,  <33.710022, 29.865370, 31.742197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158852, 30.310709, 31.534668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011642, 29.941303, 31.577898>,  <32.923317, 29.719660, 31.603836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011642, 29.941303, 31.577898>,  <33.158852, 30.310709, 31.534668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011642, 29.941303, 31.577898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762615, 0.366298, 0.533146,
		-0.531956, 0.113789, -0.839092,
		-0.368024, -0.923514, 0.108077,
		32.901234, 29.664249, 31.610321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403461, 30.401960, 31.602226>,  <33.158852, 30.310709, 31.534668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403461, 30.401960, 31.602226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485512, 30.046938, 31.767231>,  <32.534740, 29.833923, 31.866234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485512, 30.046938, 31.767231>,  <32.403461, 30.401960, 31.602226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485512, 30.046938, 31.767231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791229, 0.097708, 0.603664,
		-0.576092, -0.450216, -0.682219,
		0.205121, -0.887558, 0.412512,
		32.547047, 29.780670, 31.890985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218708, 30.574381, 32.282024>,  <32.403461, 30.401960, 31.602226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218708, 30.574381, 32.282024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487762, 30.503975, 32.569519>,  <32.649197, 30.461731, 32.742016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487762, 30.503975, 32.569519>,  <32.218708, 30.574381, 32.282024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487762, 30.503975, 32.569519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658002, -0.586616, 0.472139,
		0.338519, -0.790507, -0.510396,
		0.672636, -0.176014, 0.718736,
		32.689552, 30.451170, 32.785141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640606, 31.297421, 32.438698>,  <32.218708, 30.574381, 32.282024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640606, 31.297421, 32.438698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868603, 31.623402, 32.480572>,  <33.005402, 31.818991, 32.505695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868603, 31.623402, 32.480572>,  <32.640606, 31.297421, 32.438698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868603, 31.623402, 32.480572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383675, -0.151331, -0.910984,
		-0.726568, 0.559419, -0.398935,
		0.569993, 0.814953, 0.104683,
		33.039600, 31.867887, 32.511978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594078, 31.838789, 31.909721>,  <32.640606, 31.297421, 32.438698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594078, 31.838789, 31.909721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970539, 31.858480, 32.043468>,  <33.196415, 31.870295, 32.123718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970539, 31.858480, 32.043468>,  <32.594078, 31.838789, 31.909721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970539, 31.858480, 32.043468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337926, -0.153284, -0.928607,
		0.005541, 0.986955, -0.160899,
		0.941156, 0.049227, 0.334367,
		33.252888, 31.873249, 32.143780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923450, 32.147575, 31.334156>,  <32.594078, 31.838789, 31.909721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923450, 32.147575, 31.334156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216953, 31.985149, 31.552044>,  <33.393055, 31.887695, 31.682777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216953, 31.985149, 31.552044>,  <32.923450, 32.147575, 31.334156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216953, 31.985149, 31.552044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533363, -0.152383, -0.832048,
		0.420869, 0.901051, 0.104767,
		0.733753, -0.406062, 0.544721,
		33.437080, 31.863331, 31.715460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543861, 32.376221, 30.996414>,  <32.923450, 32.147575, 31.334156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543861, 32.376221, 30.996414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655529, 32.058018, 31.211535>,  <33.722530, 31.867096, 31.340607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655529, 32.058018, 31.211535>,  <33.543861, 32.376221, 30.996414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655529, 32.058018, 31.211535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516187, -0.347939, -0.782617,
		0.809702, 0.496086, 0.313499,
		0.279167, -0.795510, 0.537800,
		33.739281, 31.819365, 31.372875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246185, 32.340317, 30.751986>,  <33.543861, 32.376221, 30.996414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246185, 32.340317, 30.751986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159763, 31.992586, 30.929794>,  <34.107910, 31.783949, 31.036480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159763, 31.992586, 30.929794>,  <34.246185, 32.340317, 30.751986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159763, 31.992586, 30.929794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575839, -0.481118, -0.661010,
		0.788498, 0.113158, 0.604538,
		-0.216056, -0.869322, 0.444521,
		34.094948, 31.731789, 31.063150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910709, 31.962862, 30.665369>,  <34.246185, 32.340317, 30.751986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910709, 31.962862, 30.665369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646549, 31.680832, 30.768707>,  <34.488052, 31.511614, 30.830711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646549, 31.680832, 30.768707>,  <34.910709, 31.962862, 30.665369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646549, 31.680832, 30.768707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462595, -0.653004, -0.599660,
		0.591507, -0.276504, 0.757407,
		-0.660398, -0.705075, 0.258347,
		34.448429, 31.469309, 30.846212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326736, 31.320667, 30.847748>,  <34.910709, 31.962862, 30.665369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326736, 31.320667, 30.847748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961830, 31.228291, 30.712431>,  <34.742886, 31.172865, 30.631241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961830, 31.228291, 30.712431>,  <35.326736, 31.320667, 30.847748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961830, 31.228291, 30.712431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408409, -0.449839, -0.794259,
		0.031252, -0.862734, 0.504690,
		-0.912264, -0.230942, -0.338290,
		34.688152, 31.159008, 30.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449326, 30.653505, 30.742290>,  <35.326736, 31.320667, 30.847748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449326, 30.653505, 30.742290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136448, 30.768492, 30.521191>,  <34.948719, 30.837484, 30.388531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136448, 30.768492, 30.521191>,  <35.449326, 30.653505, 30.742290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136448, 30.768492, 30.521191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381824, -0.479876, -0.789892,
		-0.492334, -0.828898, 0.265585,
		-0.782188, 0.287484, -0.552753,
		34.901791, 30.854733, 30.355366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373581, 30.077864, 30.333231>,  <35.449326, 30.653505, 30.742290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373581, 30.077864, 30.333231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185837, 30.379444, 30.149380>,  <35.073189, 30.560392, 30.039068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185837, 30.379444, 30.149380>,  <35.373581, 30.077864, 30.333231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185837, 30.379444, 30.149380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377325, -0.299357, -0.876363,
		-0.798326, -0.584762, -0.143977,
		-0.469363, 0.753949, -0.459629,
		35.045029, 30.605629, 30.011492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026779, 29.762333, 29.676401>,  <35.373581, 30.077864, 30.333231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026779, 29.762333, 29.676401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078587, 30.155611, 29.624943>,  <35.109673, 30.391579, 29.594069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078587, 30.155611, 29.624943>,  <35.026779, 29.762333, 29.676401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078587, 30.155611, 29.624943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395410, -0.170188, -0.902600,
		-0.909327, 0.066035, -0.410809,
		0.129518, 0.983196, -0.128646,
		35.117443, 30.450569, 29.586349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722828, 29.838140, 28.992748>,  <35.026779, 29.762333, 29.676401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722828, 29.838140, 28.992748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932518, 30.171804, 29.061296>,  <35.058331, 30.372004, 29.102425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932518, 30.171804, 29.061296>,  <34.722828, 29.838140, 28.992748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932518, 30.171804, 29.061296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544018, -0.173217, -0.820999,
		-0.655161, 0.523614, -0.544603,
		0.524221, 0.834161, 0.171370,
		35.089783, 30.422052, 29.112707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906898, 30.128607, 28.282074>,  <34.722828, 29.838140, 28.992748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906898, 30.128607, 28.282074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170467, 30.332489, 28.503351>,  <35.328609, 30.454819, 28.636118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170467, 30.332489, 28.503351>,  <34.906898, 30.128607, 28.282074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170467, 30.332489, 28.503351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559712, 0.159094, -0.813272,
		-0.502538, 0.845512, -0.180457,
		0.658922, 0.509704, 0.553194,
		35.368145, 30.485401, 28.669310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136459, 30.545048, 27.854876>,  <34.906898, 30.128607, 28.282074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136459, 30.545048, 27.854876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412846, 30.594614, 28.139750>,  <35.578678, 30.624353, 28.310675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412846, 30.594614, 28.139750>,  <35.136459, 30.545048, 27.854876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412846, 30.594614, 28.139750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710933, 0.061927, -0.700528,
		-0.130910, 0.990358, -0.045306,
		0.690968, 0.123916, 0.712185,
		35.620136, 30.631788, 28.353405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578384, 31.108725, 27.637526>,  <35.136459, 30.545048, 27.854876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578384, 31.108725, 27.637526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779045, 30.893143, 27.908192>,  <35.899441, 30.763794, 28.070591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779045, 30.893143, 27.908192>,  <35.578384, 31.108725, 27.637526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779045, 30.893143, 27.908192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794361, -0.022749, -0.607020,
		0.342550, 0.842027, 0.416713,
		0.501647, -0.538955, 0.676666,
		35.929539, 30.731457, 28.111191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215931, 31.419971, 27.752113>,  <35.578384, 31.108725, 27.637526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215931, 31.419971, 27.752113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275581, 31.038904, 27.858080>,  <36.311371, 30.810263, 27.921659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275581, 31.038904, 27.858080>,  <36.215931, 31.419971, 27.752113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275581, 31.038904, 27.858080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780757, -0.050962, -0.622753,
		0.606779, 0.299704, 0.736204,
		0.149123, -0.952670, 0.264918,
		36.320320, 30.753103, 27.937555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871616, 31.325268, 27.993296>,  <36.215931, 31.419971, 27.752113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871616, 31.325268, 27.993296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739697, 30.977495, 27.846153>,  <36.660545, 30.768831, 27.757868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739697, 30.977495, 27.846153>,  <36.871616, 31.325268, 27.993296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739697, 30.977495, 27.846153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861986, -0.118424, -0.492906,
		0.384986, -0.479647, 0.788495,
		-0.329798, -0.869433, -0.367858,
		36.640759, 30.716665, 27.735796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513340, 30.879412, 28.070349>,  <36.871616, 31.325268, 27.993296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513340, 30.879412, 28.070349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265392, 30.679216, 27.828598>,  <37.116623, 30.559099, 27.683548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265392, 30.679216, 27.828598>,  <37.513340, 30.879412, 28.070349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265392, 30.679216, 27.828598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778692, -0.297198, -0.552550,
		0.096925, -0.813134, 0.573950,
		-0.619874, -0.500487, -0.604375,
		37.079430, 30.529070, 27.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821255, 30.206676, 27.939539>,  <37.513340, 30.879412, 28.070349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821255, 30.206676, 27.939539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565121, 30.283146, 27.641968>,  <37.411442, 30.329027, 27.463425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565121, 30.283146, 27.641968>,  <37.821255, 30.206676, 27.939539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565121, 30.283146, 27.641968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681497, -0.305363, -0.665068,
		-0.354312, -0.932848, 0.065248,
		-0.640331, 0.191175, -0.743927,
		37.373020, 30.340498, 27.418789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869003, 29.591103, 27.406925>,  <37.821255, 30.206676, 27.939539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869003, 29.591103, 27.406925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.700275, 29.903475, 27.222658>,  <37.599041, 30.090899, 27.112097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.700275, 29.903475, 27.222658>,  <37.869003, 29.591103, 27.406925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700275, 29.903475, 27.222658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661618, -0.082287, -0.745312,
		-0.619945, -0.619172, -0.481969,
		-0.421817, 0.780932, -0.460669,
		37.573730, 30.137754, 27.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906750, 29.303234, 26.757275>,  <37.869003, 29.591103, 27.406925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906750, 29.303234, 26.757275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.851910, 29.699326, 26.747057>,  <37.819004, 29.936979, 26.740927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.851910, 29.699326, 26.747057>,  <37.906750, 29.303234, 26.757275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851910, 29.699326, 26.747057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702228, 0.078973, -0.707559,
		-0.698627, -0.114947, -0.706193,
		-0.137102, 0.990227, -0.025546,
		37.810780, 29.996393, 26.739393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637459, 29.509747, 26.049257>,  <37.906750, 29.303234, 26.757275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637459, 29.509747, 26.049257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801346, 29.819857, 26.241539>,  <37.899677, 30.005922, 26.356909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801346, 29.819857, 26.241539>,  <37.637459, 29.509747, 26.049257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801346, 29.819857, 26.241539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563677, 0.199154, -0.801627,
		-0.717217, 0.599403, -0.355409,
		0.409717, 0.775276, 0.480706,
		37.924259, 30.052439, 26.385752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540722, 30.074936, 25.536148>,  <37.637459, 29.509747, 26.049257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540722, 30.074936, 25.536148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820221, 30.221556, 25.781878>,  <37.987923, 30.309526, 25.929316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820221, 30.221556, 25.781878>,  <37.540722, 30.074936, 25.536148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820221, 30.221556, 25.781878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587259, 0.196468, -0.785192,
		-0.408505, 0.909419, -0.077977,
		0.698749, 0.366548, 0.614322,
		38.029846, 30.331520, 25.966175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799301, 30.602371, 25.200083>,  <37.540722, 30.074936, 25.536148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799301, 30.602371, 25.200083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099854, 30.555984, 25.459925>,  <38.280186, 30.528152, 25.615829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099854, 30.555984, 25.459925>,  <37.799301, 30.602371, 25.200083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099854, 30.555984, 25.459925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659538, 0.163336, -0.733710,
		-0.021017, 0.979731, 0.199212,
		0.751377, -0.115968, 0.649603,
		38.325268, 30.521194, 25.654806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115746, 31.137877, 25.031647>,  <37.799301, 30.602371, 25.200083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115746, 31.137877, 25.031647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329018, 30.838398, 25.189217>,  <38.456982, 30.658710, 25.283758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329018, 30.838398, 25.189217>,  <38.115746, 31.137877, 25.031647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329018, 30.838398, 25.189217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676665, 0.097924, -0.729751,
		0.507788, 0.655640, 0.558828,
		0.533176, -0.748697, 0.393924,
		38.488972, 30.613789, 25.307394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743923, 31.404799, 25.135752>,  <38.115746, 31.137877, 25.031647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743923, 31.404799, 25.135752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844883, 31.018133, 25.152998>,  <38.905457, 30.786135, 25.163345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844883, 31.018133, 25.152998>,  <38.743923, 31.404799, 25.135752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844883, 31.018133, 25.152998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679894, 0.145465, -0.718737,
		0.688505, 0.210720, 0.693944,
		0.252397, -0.966663, 0.043114,
		38.920601, 30.728134, 25.165932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446629, 31.491621, 25.311325>,  <38.743923, 31.404799, 25.135752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446629, 31.491621, 25.311325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354740, 31.133493, 25.158676>,  <39.299606, 30.918617, 25.067087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354740, 31.133493, 25.158676>,  <39.446629, 31.491621, 25.311325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354740, 31.133493, 25.158676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800096, 0.049529, -0.597824,
		0.554144, -0.442666, 0.704962,
		-0.229720, -0.895317, -0.381622,
		39.285824, 30.864899, 25.044189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096424, 31.258198, 25.145582>,  <39.446629, 31.491621, 25.311325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096424, 31.258198, 25.145582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850010, 31.032038, 24.926191>,  <39.702164, 30.896341, 24.794558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850010, 31.032038, 24.926191>,  <40.096424, 31.258198, 25.145582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850010, 31.032038, 24.926191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625178, 0.072668, -0.777092,
		0.479226, -0.821608, 0.308711,
		-0.616032, -0.565402, -0.548475,
		39.665199, 30.862417, 24.761648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536892, 30.590158, 25.439573>,  <40.096424, 31.258198, 25.145582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536892, 30.590158, 25.439573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740479, 30.934172, 25.425167>,  <40.862633, 31.140579, 25.416523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740479, 30.934172, 25.425167>,  <40.536892, 30.590158, 25.439573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740479, 30.934172, 25.425167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526864, 0.344339, 0.777075,
		0.680710, -0.376532, 0.628377,
		0.508968, 0.860032, -0.036014,
		40.893169, 31.192181, 25.414364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734718, 30.703093, 26.034443>,  <40.536892, 30.590158, 25.439573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734718, 30.703093, 26.034443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.775700, 31.071051, 25.883024>,  <40.800289, 31.291824, 25.792173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.775700, 31.071051, 25.883024>,  <40.734718, 30.703093, 26.034443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775700, 31.071051, 25.883024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482535, 0.378739, 0.789757,
		0.869864, 0.101746, 0.482686,
		0.102457, 0.919894, -0.378547,
		40.806438, 31.347019, 25.769461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984863, 31.110731, 26.534950>,  <40.734718, 30.703093, 26.034443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984863, 31.110731, 26.534950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.822021, 31.392372, 26.302227>,  <40.724316, 31.561357, 26.162594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.822021, 31.392372, 26.302227>,  <40.984863, 31.110731, 26.534950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822021, 31.392372, 26.302227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547587, 0.321670, 0.772449,
		0.731034, 0.633060, 0.254604,
		-0.407108, 0.704104, -0.581807,
		40.699890, 31.603603, 26.127686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838146, 31.638819, 27.007994>,  <40.984863, 31.110731, 26.534950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838146, 31.638819, 27.007994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.652870, 31.780533, 26.683048>,  <40.541706, 31.865562, 26.488081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.652870, 31.780533, 26.683048>,  <40.838146, 31.638819, 27.007994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652870, 31.780533, 26.683048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691302, 0.429148, 0.581321,
		0.554579, 0.830851, 0.046142,
		-0.463189, 0.354287, -0.812365,
		40.513912, 31.886818, 26.439339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952862, 32.363182, 27.009190>,  <40.838146, 31.638819, 27.007994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952862, 32.363182, 27.009190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630630, 32.255360, 26.798141>,  <40.437294, 32.190666, 26.671513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630630, 32.255360, 26.798141>,  <40.952862, 32.363182, 27.009190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630630, 32.255360, 26.798141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589969, 0.447035, 0.672381,
		0.054617, 0.852934, -0.519154,
		-0.805577, -0.269561, -0.527621,
		40.388958, 32.174492, 26.639854>
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
