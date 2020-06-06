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
	<24.599905, 34.701916, 34.820133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356152, 34.995014, 34.698978>,  <24.209900, 35.170872, 34.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356152, 34.995014, 34.698978>,  <24.599905, 34.701916, 34.820133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356152, 34.995014, 34.698978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342493, 0.587800, 0.732933,
		0.715089, 0.342898, -0.609154,
		-0.609381, 0.732743, -0.302889,
		24.173338, 35.214836, 34.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945290, 35.346657, 34.674355>,  <24.599905, 34.701916, 34.820133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945290, 35.346657, 34.674355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590324, 35.396851, 34.851780>,  <24.377344, 35.426968, 34.958237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590324, 35.396851, 34.851780>,  <24.945290, 35.346657, 34.674355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590324, 35.396851, 34.851780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448723, 0.455499, 0.768875,
		-0.105558, 0.881348, -0.460525,
		-0.887415, 0.125488, 0.443563,
		24.324100, 35.434498, 34.984848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723633, 36.109837, 34.978764>,  <24.945290, 35.346657, 34.674355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723633, 36.109837, 34.978764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578382, 35.799080, 35.184513>,  <24.491232, 35.612625, 35.307964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578382, 35.799080, 35.184513>,  <24.723633, 36.109837, 34.978764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578382, 35.799080, 35.184513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515509, 0.292344, 0.805472,
		-0.776138, 0.557652, 0.294336,
		-0.363126, -0.776890, 0.514374,
		24.469444, 35.566013, 35.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966053, 35.976437, 35.571304>,  <24.723633, 36.109837, 34.978764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966053, 35.976437, 35.571304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013433, 35.594345, 35.679752>,  <25.041862, 35.365089, 35.744820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013433, 35.594345, 35.679752>,  <24.966053, 35.976437, 35.571304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013433, 35.594345, 35.679752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966855, 0.173151, 0.187645,
		-0.226189, 0.239908, 0.944078,
		0.118451, -0.955229, 0.271121,
		25.048969, 35.307777, 35.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347652, 36.024845, 36.182747>,  <24.966053, 35.976437, 35.571304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347652, 36.024845, 36.182747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353407, 35.631386, 36.110947>,  <25.356859, 35.395309, 36.067867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353407, 35.631386, 36.110947>,  <25.347652, 36.024845, 36.182747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353407, 35.631386, 36.110947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920601, -0.057035, 0.386317,
		-0.390239, -0.170807, 0.904731,
		0.014384, -0.983652, -0.179503,
		25.357721, 35.336288, 36.057095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498735, 35.559017, 36.798214>,  <25.347652, 36.024845, 36.182747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498735, 35.559017, 36.798214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617840, 35.372765, 36.464859>,  <25.689302, 35.261013, 36.264847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617840, 35.372765, 36.464859>,  <25.498735, 35.559017, 36.798214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617840, 35.372765, 36.464859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921001, -0.089585, 0.379120,
		-0.251188, -0.880434, 0.402169,
		0.297762, -0.465628, -0.833384,
		25.707169, 35.233078, 36.214844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234295, 35.542519, 36.978817>,  <25.498735, 35.559017, 36.798214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234295, 35.542519, 36.978817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031174, 35.410900, 37.297279>,  <25.909300, 35.331928, 37.488358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031174, 35.410900, 37.297279>,  <26.234295, 35.542519, 36.978817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031174, 35.410900, 37.297279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496039, 0.643916, 0.582509,
		-0.704329, 0.690726, -0.163765,
		-0.507805, -0.329044, 0.796156,
		25.878832, 35.312187, 37.536125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548944, 35.408527, 36.305698>,  <26.234295, 35.542519, 36.978817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548944, 35.408527, 36.305698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731520, 35.573334, 36.621143>,  <26.841064, 35.672218, 36.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731520, 35.573334, 36.621143>,  <26.548944, 35.408527, 36.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731520, 35.573334, 36.621143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732217, 0.329602, -0.596004,
		-0.505491, 0.849473, -0.151242,
		0.456440, 0.412016, 0.788610,
		26.868452, 35.696938, 36.857727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664873, 36.066414, 36.138489>,  <26.548944, 35.408527, 36.305698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664873, 36.066414, 36.138489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938438, 36.020210, 36.426632>,  <27.102577, 35.992489, 36.599518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938438, 36.020210, 36.426632>,  <26.664873, 36.066414, 36.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938438, 36.020210, 36.426632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690876, 0.419808, -0.588601,
		-0.234422, 0.900232, 0.366917,
		0.683912, -0.115513, 0.720361,
		27.143612, 35.985558, 36.642742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045000, 36.650368, 36.164146>,  <26.664873, 36.066414, 36.138489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045000, 36.650368, 36.164146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293095, 36.401051, 36.354649>,  <27.441952, 36.251461, 36.468948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293095, 36.401051, 36.354649>,  <27.045000, 36.650368, 36.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293095, 36.401051, 36.354649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770224, 0.368949, -0.520222,
		0.148537, 0.689481, 0.708909,
		0.620235, -0.623291, 0.476253,
		27.479164, 36.214062, 36.497524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655758, 37.109241, 36.513008>,  <27.045000, 36.650368, 36.164146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655758, 37.109241, 36.513008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785625, 36.737530, 36.442535>,  <27.863546, 36.514503, 36.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785625, 36.737530, 36.442535>,  <27.655758, 37.109241, 36.513008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785625, 36.737530, 36.442535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792227, 0.368938, -0.486068,
		0.516690, 0.018236, 0.855979,
		0.324667, -0.929275, -0.176179,
		27.883026, 36.458748, 36.389683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351328, 37.069138, 36.639183>,  <27.655758, 37.109241, 36.513008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351328, 37.069138, 36.639183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286478, 36.769688, 36.382038>,  <28.247568, 36.590019, 36.227749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286478, 36.769688, 36.382038>,  <28.351328, 37.069138, 36.639183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286478, 36.769688, 36.382038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800081, 0.281597, -0.529693,
		0.577570, -0.600220, 0.553307,
		-0.162123, -0.748625, -0.642866,
		28.237841, 36.545101, 36.189178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811268, 37.309864, 36.162766>,  <28.351328, 37.069138, 36.639183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811268, 37.309864, 36.162766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086355, 37.062458, 36.010723>,  <29.251408, 36.914013, 35.919498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086355, 37.062458, 36.010723>,  <28.811268, 37.309864, 36.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086355, 37.062458, 36.010723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699117, -0.705345, -0.117148,
		-0.195648, 0.346304, -0.917494,
		0.687718, -0.618516, -0.380107,
		29.292671, 36.876904, 35.896690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696211, 36.979939, 35.456787>,  <28.811268, 37.309864, 36.162766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696211, 36.979939, 35.456787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920065, 36.742500, 35.688114>,  <29.054379, 36.600037, 35.826912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920065, 36.742500, 35.688114>,  <28.696211, 36.979939, 35.456787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920065, 36.742500, 35.688114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796522, -0.577940, 0.177589,
		0.228820, -0.560031, -0.796245,
		0.559637, -0.593591, 0.578321,
		29.087955, 36.564423, 35.861610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612898, 36.290985, 35.325733>,  <28.696211, 36.979939, 35.456787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612898, 36.290985, 35.325733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714382, 36.273098, 35.712231>,  <28.775272, 36.262363, 35.944130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714382, 36.273098, 35.712231>,  <28.612898, 36.290985, 35.325733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714382, 36.273098, 35.712231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797730, -0.574618, 0.182868,
		0.547045, -0.817199, -0.181461,
		0.253710, -0.044720, 0.966246,
		28.790495, 36.259682, 36.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211964, 35.729401, 35.563263>,  <28.612898, 36.290985, 35.325733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211964, 35.729401, 35.563263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307520, 35.947529, 35.884651>,  <28.364853, 36.078407, 36.077484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307520, 35.947529, 35.884651>,  <28.211964, 35.729401, 35.563263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307520, 35.947529, 35.884651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631474, -0.541331, 0.555159,
		0.737680, -0.639990, 0.215036,
		0.238891, 0.545320, 0.803466,
		28.379187, 36.111126, 36.125690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361332, 35.228298, 36.164356>,  <28.211964, 35.729401, 35.563263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361332, 35.228298, 36.164356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232969, 35.596764, 36.252422>,  <28.155952, 35.817844, 36.305264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232969, 35.596764, 36.252422>,  <28.361332, 35.228298, 36.164356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232969, 35.596764, 36.252422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652657, -0.383535, 0.653406,
		0.686337, 0.065989, 0.724284,
		-0.320906, 0.921166, 0.220166,
		28.136698, 35.873112, 36.318474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344187, 35.289635, 36.909542>,  <28.361332, 35.228298, 36.164356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344187, 35.289635, 36.909542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074221, 35.562584, 36.797211>,  <27.912241, 35.726353, 36.729813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074221, 35.562584, 36.797211>,  <28.344187, 35.289635, 36.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074221, 35.562584, 36.797211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628269, -0.331800, 0.703695,
		0.387001, 0.651368, 0.652648,
		-0.674913, 0.682370, -0.280827,
		27.871746, 35.767296, 36.712963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983036, 35.585781, 37.562004>,  <28.344187, 35.289635, 36.909542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983036, 35.585781, 37.562004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745411, 35.734303, 37.276562>,  <27.602837, 35.823414, 37.105297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745411, 35.734303, 37.276562>,  <27.983036, 35.585781, 37.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745411, 35.734303, 37.276562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790560, -0.105515, 0.603226,
		0.148683, 0.922497, 0.356218,
		-0.594061, 0.371302, -0.713602,
		27.567192, 35.845692, 37.062481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559397, 36.176746, 37.822922>,  <27.983036, 35.585781, 37.562004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559397, 36.176746, 37.822922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370901, 35.984974, 37.526791>,  <27.257803, 35.869911, 37.349113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370901, 35.984974, 37.526791>,  <27.559397, 36.176746, 37.822922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370901, 35.984974, 37.526791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864833, 0.086337, 0.494579,
		-0.173197, 0.873324, -0.455311,
		-0.471238, -0.479428, -0.740326,
		27.229530, 35.841145, 37.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952198, 36.517624, 37.828869>,  <27.559397, 36.176746, 37.822922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952198, 36.517624, 37.828869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876343, 36.166088, 37.653740>,  <26.830830, 35.955166, 37.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876343, 36.166088, 37.653740>,  <26.952198, 36.517624, 37.828869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876343, 36.166088, 37.653740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858326, -0.068144, 0.508559,
		-0.476774, 0.472235, -0.741404,
		-0.189637, -0.878835, -0.437821,
		26.819452, 35.902439, 37.522392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348473, 36.490532, 37.530174>,  <26.952198, 36.517624, 37.828869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348473, 36.490532, 37.530174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393627, 36.093678, 37.551826>,  <26.420721, 35.855564, 37.564816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393627, 36.093678, 37.551826>,  <26.348473, 36.490532, 37.530174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393627, 36.093678, 37.551826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851607, -0.068546, 0.519680,
		-0.511881, -0.104761, -0.852645,
		0.112888, -0.992133, 0.054128,
		26.427494, 35.796040, 37.568066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700331, 36.388588, 37.715565>,  <26.348473, 36.490532, 37.530174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700331, 36.388588, 37.715565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869072, 36.029411, 37.765759>,  <25.970316, 35.813908, 37.795876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869072, 36.029411, 37.765759>,  <25.700331, 36.388588, 37.715565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869072, 36.029411, 37.765759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599435, -0.172383, 0.781640,
		-0.680235, -0.404955, -0.610977,
		0.421851, -0.897939, 0.125483,
		25.995626, 35.760029, 37.803402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128744, 35.867752, 37.713112>,  <25.700331, 36.388588, 37.715565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128744, 35.867752, 37.713112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439970, 35.734180, 37.925945>,  <25.626705, 35.654037, 38.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439970, 35.734180, 37.925945>,  <25.128744, 35.867752, 37.713112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439970, 35.734180, 37.925945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587779, -0.088114, 0.804208,
		-0.221661, -0.938472, -0.264832,
		0.778063, -0.333924, 0.532083,
		25.673389, 35.634003, 38.085571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255911, 35.095894, 37.961502>,  <25.128744, 35.867752, 37.713112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255911, 35.095894, 37.961502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444866, 35.301853, 38.247643>,  <25.558239, 35.425426, 38.419327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444866, 35.301853, 38.247643>,  <25.255911, 35.095894, 37.961502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444866, 35.301853, 38.247643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432707, -0.571601, 0.697164,
		0.767864, -0.638870, -0.047218,
		0.472387, 0.514895, 0.715356,
		25.586582, 35.456322, 38.462250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608706, 34.589043, 38.363743>,  <25.255911, 35.095894, 37.961502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608706, 34.589043, 38.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579533, 34.919365, 38.587429>,  <25.562029, 35.117558, 38.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579533, 34.919365, 38.587429>,  <25.608706, 34.589043, 38.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579533, 34.919365, 38.587429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391696, -0.539376, 0.745417,
		0.917199, -0.164679, 0.362803,
		-0.072933, 0.825805, 0.559220,
		25.557653, 35.167107, 38.755196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085707, 34.673428, 39.024498>,  <25.608706, 34.589043, 38.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085707, 34.673428, 39.024498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724785, 34.845737, 39.031197>,  <25.508232, 34.949123, 39.035217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724785, 34.845737, 39.031197>,  <26.085707, 34.673428, 39.024498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724785, 34.845737, 39.031197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295855, -0.647028, 0.702726,
		0.313554, 0.629118, 0.711263,
		-0.902305, 0.430773, 0.016751,
		25.454094, 34.974968, 39.036221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193676, 34.485886, 39.772114>,  <26.085707, 34.673428, 39.024498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193676, 34.485886, 39.772114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004082, 34.171928, 39.612473>,  <25.890326, 33.983555, 39.516689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004082, 34.171928, 39.612473>,  <26.193676, 34.485886, 39.772114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004082, 34.171928, 39.612473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298470, -0.283204, 0.911434,
		-0.828405, 0.551125, -0.100033,
		-0.473984, -0.784893, -0.399102,
		25.861887, 33.936459, 39.492741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352596, 35.231606, 39.693707>,  <26.193676, 34.485886, 39.772114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352596, 35.231606, 39.693707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055420, 35.498837, 39.677162>,  <25.877115, 35.659176, 39.667236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055420, 35.498837, 39.677162>,  <26.352596, 35.231606, 39.693707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055420, 35.498837, 39.677162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382582, -0.373124, 0.845227,
		0.549246, 0.643777, 0.532804,
		-0.742940, 0.668079, -0.041361,
		25.832539, 35.699261, 39.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307312, 35.646030, 40.211174>,  <26.352596, 35.231606, 39.693707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307312, 35.646030, 40.211174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957779, 35.535549, 40.051109>,  <25.748058, 35.469261, 39.955070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957779, 35.535549, 40.051109>,  <26.307312, 35.646030, 40.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957779, 35.535549, 40.051109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322064, -0.287773, 0.901921,
		-0.364268, 0.917006, 0.162511,
		-0.873833, -0.276202, -0.400160,
		25.695629, 35.452690, 39.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789446, 35.954567, 40.661144>,  <26.307312, 35.646030, 40.211174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789446, 35.954567, 40.661144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601494, 35.670788, 40.451042>,  <25.488722, 35.500519, 40.324982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601494, 35.670788, 40.451042>,  <25.789446, 35.954567, 40.661144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601494, 35.670788, 40.451042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426816, -0.338261, 0.838694,
		-0.772683, 0.618276, -0.143861,
		-0.469882, -0.709447, -0.525259,
		25.460529, 35.457954, 40.293465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126892, 35.819588, 40.974575>,  <25.789446, 35.954567, 40.661144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126892, 35.819588, 40.974575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214293, 35.473614, 40.793846>,  <25.266733, 35.266029, 40.685410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214293, 35.473614, 40.793846>,  <25.126892, 35.819588, 40.974575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214293, 35.473614, 40.793846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369774, -0.501872, 0.781915,
		-0.903064, -0.003775, -0.429489,
		0.218500, -0.864934, -0.451827,
		25.279842, 35.214134, 40.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537193, 35.316380, 40.902138>,  <25.126892, 35.819588, 40.974575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537193, 35.316380, 40.902138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844786, 35.060753, 40.908649>,  <25.029341, 34.907375, 40.912556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844786, 35.060753, 40.908649>,  <24.537193, 35.316380, 40.902138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844786, 35.060753, 40.908649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537743, -0.632866, 0.557058,
		-0.345692, -0.437122, -0.830314,
		0.768980, -0.639065, 0.016282,
		25.075480, 34.869034, 40.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452074, 34.687897, 40.603523>,  <24.537193, 35.316380, 40.902138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452074, 34.687897, 40.603523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733631, 34.588776, 40.869793>,  <24.902565, 34.529301, 41.029556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733631, 34.588776, 40.869793>,  <24.452074, 34.687897, 40.603523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733631, 34.588776, 40.869793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679064, -0.509648, 0.528328,
		0.208337, -0.823924, -0.527016,
		0.703895, -0.247807, 0.665676,
		24.944799, 34.514435, 41.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596273, 33.885754, 40.596584>,  <24.452074, 34.687897, 40.603523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596273, 33.885754, 40.596584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718018, 34.063908, 40.933392>,  <24.791063, 34.170799, 41.135475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718018, 34.063908, 40.933392>,  <24.596273, 33.885754, 40.596584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718018, 34.063908, 40.933392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411968, -0.735463, 0.537938,
		0.858864, -0.510611, -0.040360,
		0.304360, 0.445388, 0.842018,
		24.809326, 34.197525, 41.185997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181164, 34.318043, 40.176731>,  <24.596273, 33.885754, 40.596584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181164, 34.318043, 40.176731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080959, 34.689819, 40.285091>,  <25.020836, 34.912884, 40.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080959, 34.689819, 40.285091>,  <25.181164, 34.318043, 40.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080959, 34.689819, 40.285091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394694, 0.353565, -0.848061,
		-0.884003, -0.105526, -0.455416,
		-0.250512, 0.929438, 0.270902,
		25.005806, 34.968651, 40.366364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850695, 34.585361, 39.601959>,  <25.181164, 34.318043, 40.176731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850695, 34.585361, 39.601959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006168, 34.879738, 39.823704>,  <25.099453, 35.056366, 39.956749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006168, 34.879738, 39.823704>,  <24.850695, 34.585361, 39.601959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006168, 34.879738, 39.823704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373204, 0.424349, -0.825014,
		-0.842404, 0.527557, -0.109720,
		0.388683, 0.735943, 0.554359,
		25.122772, 35.100521, 39.990013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609436, 35.270912, 39.306118>,  <24.850695, 34.585361, 39.601959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609436, 35.270912, 39.306118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938593, 35.338253, 39.523193>,  <25.136087, 35.378658, 39.653439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938593, 35.338253, 39.523193>,  <24.609436, 35.270912, 39.306118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938593, 35.338253, 39.523193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438965, 0.418084, -0.795308,
		-0.360779, 0.892673, 0.270137,
		0.822890, 0.168350, 0.542688,
		25.185459, 35.388760, 39.686001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825787, 35.960476, 39.139099>,  <24.609436, 35.270912, 39.306118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825787, 35.960476, 39.139099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124683, 35.719025, 39.250278>,  <25.304022, 35.574154, 39.316986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.124683, 35.719025, 39.250278>,  <24.825787, 35.960476, 39.139099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.124683, 35.719025, 39.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565153, 0.357182, -0.743656,
		0.349616, 0.712776, 0.608046,
		0.747242, -0.603633, 0.277951,
		25.348856, 35.537933, 39.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476654, 36.273430, 39.472843>,  <24.825787, 35.960476, 39.139099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476654, 36.273430, 39.472843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554127, 35.928493, 39.285717>,  <25.600611, 35.721531, 39.173443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554127, 35.928493, 39.285717>,  <25.476654, 36.273430, 39.472843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554127, 35.928493, 39.285717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509826, 0.495869, -0.702988,
		0.838192, -0.102347, 0.535687,
		0.193682, -0.862345, -0.467812,
		25.612232, 35.669788, 39.145374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072985, 36.380745, 39.195953>,  <25.476654, 36.273430, 39.472843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072985, 36.380745, 39.195953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915325, 36.089466, 38.971680>,  <25.820728, 35.914700, 38.837116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915325, 36.089466, 38.971680>,  <26.072985, 36.380745, 39.195953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915325, 36.089466, 38.971680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671158, 0.188705, -0.716895,
		0.627848, -0.658872, 0.414360,
		-0.394150, -0.728202, -0.560686,
		25.797081, 35.871006, 38.803474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605797, 35.994270, 38.959396>,  <26.072985, 36.380745, 39.195953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605797, 35.994270, 38.959396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312019, 35.965775, 38.689430>,  <26.135752, 35.948677, 38.527451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312019, 35.965775, 38.689430>,  <26.605797, 35.994270, 38.959396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312019, 35.965775, 38.689430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627543, 0.307382, -0.715336,
		0.258416, -0.948916, -0.181051,
		-0.734446, -0.071237, -0.674918,
		26.091686, 35.944405, 38.486954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995295, 36.533497, 38.584881>,  <26.605797, 35.994270, 38.959396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995295, 36.533497, 38.584881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107201, 36.175323, 38.723404>,  <27.174343, 35.960419, 38.806519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107201, 36.175323, 38.723404>,  <26.995295, 36.533497, 38.584881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107201, 36.175323, 38.723404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913015, 0.359682, 0.192440,
		-0.296878, 0.262345, 0.918172,
		0.279764, -0.895435, 0.346306,
		27.191130, 35.906693, 38.827297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188761, 37.057262, 39.082451>,  <26.995295, 36.533497, 38.584881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188761, 37.057262, 39.082451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494987, 36.996796, 38.832314>,  <27.678722, 36.960514, 38.682232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494987, 36.996796, 38.832314>,  <27.188761, 37.057262, 39.082451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494987, 36.996796, 38.832314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643170, 0.156283, 0.749605,
		-0.015585, -0.976076, 0.216871,
		0.765565, -0.151167, -0.625347,
		27.724657, 36.951447, 38.644711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724817, 36.743702, 39.444016>,  <27.188761, 37.057262, 39.082451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724817, 36.743702, 39.444016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921204, 36.939117, 39.155491>,  <28.039036, 37.056366, 38.982376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921204, 36.939117, 39.155491>,  <27.724817, 36.743702, 39.444016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921204, 36.939117, 39.155491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754007, 0.176440, 0.632726,
		0.436377, -0.854519, -0.281733,
		0.490968, 0.488536, -0.721307,
		28.068495, 37.085678, 38.939098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417482, 36.500526, 39.396046>,  <27.724817, 36.743702, 39.444016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417482, 36.500526, 39.396046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410295, 36.868481, 39.239338>,  <28.405983, 37.089252, 39.145313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410295, 36.868481, 39.239338>,  <28.417482, 36.500526, 39.396046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410295, 36.868481, 39.239338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705822, 0.289198, 0.646668,
		0.708161, -0.264904, -0.654472,
		-0.017967, 0.919886, -0.391774,
		28.404905, 37.144447, 39.121807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024866, 36.731907, 39.608307>,  <28.417482, 36.500526, 39.396046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024866, 36.731907, 39.608307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857584, 37.068039, 39.470352>,  <28.757215, 37.269718, 39.387577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857584, 37.068039, 39.470352>,  <29.024866, 36.731907, 39.608307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857584, 37.068039, 39.470352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599297, 0.540577, 0.590440,
		0.682605, 0.040233, -0.729680,
		-0.418203, 0.840332, -0.344889,
		28.732122, 37.320137, 39.366886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527811, 37.102577, 39.041466>,  <29.024866, 36.731907, 39.608307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527811, 37.102577, 39.041466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288239, 37.304634, 39.290016>,  <29.144495, 37.425869, 39.439148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288239, 37.304634, 39.290016>,  <29.527811, 37.102577, 39.041466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288239, 37.304634, 39.290016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798725, 0.432648, 0.418156,
		-0.057610, 0.746758, -0.662597,
		-0.598933, 0.505142, 0.621378,
		29.108559, 37.456177, 39.476429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549936, 37.787003, 38.872036>,  <29.527811, 37.102577, 39.041466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549936, 37.787003, 38.872036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531778, 37.750835, 39.269985>,  <29.520884, 37.729134, 39.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531778, 37.750835, 39.269985>,  <29.549936, 37.787003, 38.872036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531778, 37.750835, 39.269985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796897, 0.597276, 0.090645,
		-0.602407, 0.796923, 0.044939,
		-0.045396, -0.090417, 0.994869,
		29.518160, 37.723709, 39.568447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077660, 38.232948, 39.038036>,  <29.549936, 37.787003, 38.872036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077660, 38.232948, 39.038036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009348, 38.041729, 39.382664>,  <29.968361, 37.926998, 39.589439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009348, 38.041729, 39.382664>,  <30.077660, 38.232948, 39.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009348, 38.041729, 39.382664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854900, 0.362856, 0.370786,
		-0.489879, 0.799880, 0.346714,
		-0.170777, -0.478046, 0.861573,
		29.958115, 37.898315, 39.641136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304646, 38.755413, 39.436619>,  <30.077660, 38.232948, 39.038036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304646, 38.755413, 39.436619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337223, 38.384388, 39.582493>,  <30.356770, 38.161774, 39.670017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337223, 38.384388, 39.582493>,  <30.304646, 38.755413, 39.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337223, 38.384388, 39.582493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876429, 0.240885, 0.416949,
		-0.474593, 0.285665, 0.832560,
		0.081443, -0.927561, 0.364688,
		30.361656, 38.106121, 39.691898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461981, 38.796764, 40.107010>,  <30.304646, 38.755413, 39.436619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461981, 38.796764, 40.107010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622749, 38.484982, 39.914803>,  <30.719212, 38.297913, 39.799477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622749, 38.484982, 39.914803>,  <30.461981, 38.796764, 40.107010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622749, 38.484982, 39.914803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899505, 0.434272, 0.047937,
		0.171313, -0.451500, 0.875671,
		0.401923, -0.779458, -0.480523,
		30.743326, 38.251144, 39.770645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007013, 38.466923, 40.497776>,  <30.461981, 38.796764, 40.107010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007013, 38.466923, 40.497776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076521, 38.424866, 40.106113>,  <31.118225, 38.399632, 39.871117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076521, 38.424866, 40.106113>,  <31.007013, 38.466923, 40.497776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076521, 38.424866, 40.106113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895478, 0.430607, 0.112679,
		0.409786, -0.896394, 0.168977,
		0.173768, -0.105141, -0.979158,
		31.128651, 38.393322, 39.812366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647068, 38.089752, 40.447834>,  <31.007013, 38.466923, 40.497776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647068, 38.089752, 40.447834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536545, 38.341713, 40.157490>,  <31.470230, 38.492889, 39.983284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536545, 38.341713, 40.157490>,  <31.647068, 38.089752, 40.447834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536545, 38.341713, 40.157490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871834, 0.482104, 0.086496,
		0.404425, -0.608931, -0.682381,
		-0.276308, 0.629904, -0.725861,
		31.453651, 38.530685, 39.939732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067867, 38.063129, 39.796730>,  <31.647068, 38.089752, 40.447834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067867, 38.063129, 39.796730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956244, 38.441948, 39.860264>,  <31.889269, 38.669239, 39.898384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956244, 38.441948, 39.860264>,  <32.067867, 38.063129, 39.796730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956244, 38.441948, 39.860264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933305, 0.306411, -0.187230,
		-0.225984, 0.095994, -0.969390,
		-0.279059, 0.947047, 0.158836,
		31.872526, 38.726063, 39.907913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203278, 38.561768, 39.242805>,  <32.067867, 38.063129, 39.796730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203278, 38.561768, 39.242805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227158, 38.787022, 39.572487>,  <32.241486, 38.922176, 39.770294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227158, 38.787022, 39.572487>,  <32.203278, 38.561768, 39.242805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227158, 38.787022, 39.572487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962504, 0.186402, -0.197080,
		-0.264616, 0.805066, -0.530893,
		0.059703, 0.563137, 0.824204,
		32.245068, 38.955963, 39.819748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668407, 38.945469, 39.062424>,  <32.203278, 38.561768, 39.242805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668407, 38.945469, 39.062424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684872, 38.978737, 39.460697>,  <32.694752, 38.998699, 39.699661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684872, 38.978737, 39.460697>,  <32.668407, 38.945469, 39.062424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684872, 38.978737, 39.460697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988236, 0.143516, -0.052842,
		-0.147291, 0.986147, -0.076285,
		0.041162, 0.083170, 0.995685,
		32.697220, 39.003689, 39.759403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091469, 39.557522, 39.312786>,  <32.668407, 38.945469, 39.062424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091469, 39.557522, 39.312786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088276, 39.278233, 39.599121>,  <33.086361, 39.110661, 39.770924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088276, 39.278233, 39.599121>,  <33.091469, 39.557522, 39.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088276, 39.278233, 39.599121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994947, 0.066106, 0.075569,
		-0.100086, 0.712825, 0.694163,
		-0.007979, -0.698219, 0.715840,
		33.085880, 39.068768, 39.813873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440006, 39.900406, 39.739742>,  <33.091469, 39.557522, 39.312786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440006, 39.900406, 39.739742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446751, 39.501274, 39.765217>,  <33.450798, 39.261795, 39.780502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446751, 39.501274, 39.765217>,  <33.440006, 39.900406, 39.739742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446751, 39.501274, 39.765217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974112, 0.002034, -0.226059,
		0.225438, 0.065851, 0.972030,
		0.016863, -0.997827, 0.063688,
		33.451809, 39.201927, 39.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002502, 39.758930, 40.124920>,  <33.440006, 39.900406, 39.739742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002502, 39.758930, 40.124920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927628, 39.456226, 39.874393>,  <33.882702, 39.274605, 39.724075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927628, 39.456226, 39.874393>,  <34.002502, 39.758930, 40.124920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927628, 39.456226, 39.874393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979974, -0.187941, -0.065796,
		-0.067919, -0.626094, 0.776784,
		-0.187184, -0.756760, -0.626320,
		33.871471, 39.229198, 39.686497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361580, 39.032043, 40.339214>,  <34.002502, 39.758930, 40.124920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361580, 39.032043, 40.339214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292213, 39.091473, 39.949783>,  <34.250595, 39.127129, 39.716125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292213, 39.091473, 39.949783>,  <34.361580, 39.032043, 40.339214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292213, 39.091473, 39.949783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954141, -0.219588, -0.203460,
		-0.244014, -0.964214, -0.103677,
		-0.173413, 0.148569, -0.973579,
		34.240189, 39.136044, 39.657711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117493, 38.986042, 40.529926>,  <34.361580, 39.032043, 40.339214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117493, 38.986042, 40.529926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170269, 38.988983, 40.133434>,  <35.201935, 38.990749, 39.895538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170269, 38.988983, 40.133434>,  <35.117493, 38.986042, 40.529926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170269, 38.988983, 40.133434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458396, -0.887079, 0.054437,
		-0.878900, -0.461559, -0.120413,
		0.131941, 0.007352, -0.991230,
		35.209850, 38.991188, 39.836063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891663, 38.425079, 40.197250>,  <35.117493, 38.986042, 40.529926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891663, 38.425079, 40.197250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207520, 38.561459, 39.993198>,  <35.397034, 38.643284, 39.870770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207520, 38.561459, 39.993198>,  <34.891663, 38.425079, 40.197250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207520, 38.561459, 39.993198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453205, -0.884551, 0.110337,
		-0.413615, -0.318318, -0.852993,
		0.789638, 0.340944, -0.510126,
		35.444412, 38.663742, 39.840160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082375, 37.854012, 39.829147>,  <34.891663, 38.425079, 40.197250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082375, 37.854012, 39.829147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376534, 38.119751, 39.882553>,  <35.553028, 38.279194, 39.914597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376534, 38.119751, 39.882553>,  <35.082375, 37.854012, 39.829147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376534, 38.119751, 39.882553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650665, -0.747322, 0.134699,
		0.189266, -0.012184, -0.981850,
		0.735400, 0.664350, 0.133515,
		35.597153, 38.319057, 39.922607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626579, 37.727760, 39.413387>,  <35.082375, 37.854012, 39.829147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626579, 37.727760, 39.413387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739548, 37.903351, 39.754570>,  <35.807327, 38.008705, 39.959282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739548, 37.903351, 39.754570>,  <35.626579, 37.727760, 39.413387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739548, 37.903351, 39.754570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658738, -0.735116, 0.160216,
		0.697355, 0.516629, -0.496780,
		0.282419, 0.438976, 0.852960,
		35.824272, 38.035042, 40.010456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869793, 38.038025, 38.753063>,  <35.626579, 37.727760, 39.413387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869793, 38.038025, 38.753063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492828, 37.946659, 38.655342>,  <35.266647, 37.891838, 38.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492828, 37.946659, 38.655342>,  <35.869793, 38.038025, 38.753063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492828, 37.946659, 38.655342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332559, -0.562469, -0.756989,
		0.035498, -0.794641, 0.606041,
		-0.942414, -0.228416, -0.244299,
		35.210106, 37.878136, 38.582054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791466, 37.235703, 38.658970>,  <35.869793, 38.038025, 38.753063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791466, 37.235703, 38.658970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522465, 37.439236, 38.444000>,  <35.361065, 37.561356, 38.315018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522465, 37.439236, 38.444000>,  <35.791466, 37.235703, 38.658970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522465, 37.439236, 38.444000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277960, -0.499346, -0.820604,
		-0.685912, -0.701243, 0.194377,
		-0.672504, 0.508834, -0.537425,
		35.320713, 37.591885, 38.282772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068890, 36.896679, 38.373451>,  <35.791466, 37.235703, 38.658970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068890, 36.896679, 38.373451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173000, 37.203365, 38.138706>,  <35.235466, 37.387375, 37.997860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173000, 37.203365, 38.138706>,  <35.068890, 36.896679, 38.373451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173000, 37.203365, 38.138706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189301, -0.636538, -0.747653,
		-0.946796, 0.083500, -0.310814,
		0.260273, 0.766712, -0.586865,
		35.251083, 37.433380, 37.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804321, 36.775623, 37.665699>,  <35.068890, 36.896679, 38.373451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804321, 36.775623, 37.665699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076450, 37.054459, 37.575161>,  <35.239727, 37.221760, 37.520840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076450, 37.054459, 37.575161>,  <34.804321, 36.775623, 37.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076450, 37.054459, 37.575161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364661, -0.589838, -0.720495,
		-0.635755, 0.407629, -0.655480,
		0.680321, 0.697087, -0.226346,
		35.280548, 37.263584, 37.507256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698334, 36.807247, 37.025620>,  <34.804321, 36.775623, 37.665699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698334, 36.807247, 37.025620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056744, 36.981560, 37.059616>,  <35.271790, 37.086147, 37.080013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056744, 36.981560, 37.059616>,  <34.698334, 36.807247, 37.025620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056744, 36.981560, 37.059616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352024, -0.580620, -0.734139,
		-0.270576, 0.687730, -0.673658,
		0.896029, 0.435784, 0.084996,
		35.325554, 37.112293, 37.085114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847862, 37.053955, 36.424488>,  <34.698334, 36.807247, 37.025620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847862, 37.053955, 36.424488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209042, 37.030540, 36.594788>,  <35.425751, 37.016491, 36.696968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209042, 37.030540, 36.594788>,  <34.847862, 37.053955, 36.424488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209042, 37.030540, 36.594788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323641, -0.559155, -0.763284,
		0.282741, 0.826994, -0.485942,
		0.902947, -0.058541, 0.425745,
		35.479927, 37.012978, 36.722511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335285, 37.280647, 35.980686>,  <34.847862, 37.053955, 36.424488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335285, 37.280647, 35.980686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546791, 37.028259, 36.207767>,  <35.673695, 36.876827, 36.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546791, 37.028259, 36.207767>,  <35.335285, 37.280647, 35.980686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546791, 37.028259, 36.207767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463741, -0.345428, -0.815858,
		0.710879, 0.694666, 0.109954,
		0.528767, -0.630967, 0.567703,
		35.705421, 36.838970, 36.378078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021004, 37.321735, 35.753487>,  <35.335285, 37.280647, 35.980686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021004, 37.321735, 35.753487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014671, 36.970081, 35.944012>,  <36.010872, 36.759090, 36.058327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014671, 36.970081, 35.944012>,  <36.021004, 37.321735, 35.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014671, 36.970081, 35.944012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630402, -0.378539, -0.677718,
		0.776107, 0.289540, 0.560200,
		-0.015831, -0.879133, 0.476313,
		36.009922, 36.706341, 36.086906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686829, 37.159298, 35.692764>,  <36.021004, 37.321735, 35.753487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686829, 37.159298, 35.692764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514767, 36.813099, 35.795433>,  <36.411530, 36.605381, 35.857033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514767, 36.813099, 35.795433>,  <36.686829, 37.159298, 35.692764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514767, 36.813099, 35.795433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584633, -0.483718, -0.651323,
		0.687874, -0.130113, 0.714073,
		-0.430155, -0.865499, 0.256669,
		36.385719, 36.553448, 35.872433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234184, 36.596722, 35.759090>,  <36.686829, 37.159298, 35.692764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234184, 36.596722, 35.759090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903385, 36.372265, 35.745285>,  <36.704906, 36.237591, 35.737003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903385, 36.372265, 35.745285>,  <37.234184, 36.596722, 35.759090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903385, 36.372265, 35.745285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433143, -0.596810, -0.675429,
		0.358417, -0.573526, 0.736617,
		-0.826997, -0.561146, -0.034512,
		36.655285, 36.203922, 35.734932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413849, 35.952209, 35.702839>,  <37.234184, 36.596722, 35.759090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413849, 35.952209, 35.702839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042923, 35.953217, 35.553135>,  <36.820366, 35.953819, 35.463310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042923, 35.953217, 35.553135>,  <37.413849, 35.952209, 35.702839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042923, 35.953217, 35.553135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316279, -0.529398, -0.787214,
		-0.200116, -0.848370, 0.490125,
		-0.927320, 0.002518, -0.374262,
		36.764729, 35.953972, 35.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312901, 35.230923, 35.560452>,  <37.413849, 35.952209, 35.702839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312901, 35.230923, 35.560452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076157, 35.449692, 35.323616>,  <36.934109, 35.580956, 35.181515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076157, 35.449692, 35.323616>,  <37.312901, 35.230923, 35.560452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076157, 35.449692, 35.323616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296085, -0.535691, -0.790802,
		-0.749688, -0.643355, 0.155118,
		-0.591862, 0.546927, -0.592090,
		36.898598, 35.613770, 35.145988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076572, 34.752335, 35.085064>,  <37.312901, 35.230923, 35.560452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076572, 34.752335, 35.085064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002922, 35.099609, 34.900738>,  <36.958733, 35.307976, 34.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002922, 35.099609, 34.900738>,  <37.076572, 34.752335, 35.085064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002922, 35.099609, 34.900738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224350, -0.419335, -0.879674,
		-0.956956, -0.265353, -0.117568,
		-0.184124, 0.868186, -0.460817,
		36.947685, 35.360065, 34.762493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788551, 34.486160, 34.468834>,  <37.076572, 34.752335, 35.085064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788551, 34.486160, 34.468834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868382, 34.873611, 34.409603>,  <36.916279, 35.106083, 34.374065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868382, 34.873611, 34.409603>,  <36.788551, 34.486160, 34.468834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868382, 34.873611, 34.409603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272951, -0.200089, -0.940990,
		-0.941099, 0.147379, -0.304321,
		0.199574, 0.968630, -0.148076,
		36.928253, 35.164200, 34.365181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590317, 34.604301, 33.830738>,  <36.788551, 34.486160, 34.468834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590317, 34.604301, 33.830738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833576, 34.919060, 33.872589>,  <36.979530, 35.107914, 33.897701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833576, 34.919060, 33.872589>,  <36.590317, 34.604301, 33.830738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833576, 34.919060, 33.872589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229569, -0.048170, -0.972100,
		-0.759903, 0.615201, -0.209942,
		0.608150, 0.786897, 0.104627,
		37.016022, 35.155128, 33.903976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368454, 35.180450, 33.341999>,  <36.590317, 34.604301, 33.830738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368454, 35.180450, 33.341999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753162, 35.218815, 33.444603>,  <36.983986, 35.241833, 33.506165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753162, 35.218815, 33.444603>,  <36.368454, 35.180450, 33.341999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753162, 35.218815, 33.444603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246994, 0.100746, -0.963766,
		-0.118281, 0.990278, 0.073204,
		0.961771, 0.095914, 0.256509,
		37.041695, 35.247589, 33.521557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631104, 35.690365, 32.976273>,  <36.368454, 35.180450, 33.341999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631104, 35.690365, 32.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964996, 35.494881, 33.077766>,  <37.165333, 35.377590, 33.138664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964996, 35.494881, 33.077766>,  <36.631104, 35.690365, 32.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964996, 35.494881, 33.077766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361172, 0.138086, -0.922219,
		0.415656, 0.861452, 0.291772,
		0.834736, -0.488706, 0.253736,
		37.215416, 35.348270, 33.153889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058426, 35.970165, 32.514130>,  <36.631104, 35.690365, 32.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058426, 35.970165, 32.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245155, 35.642719, 32.647964>,  <37.357193, 35.446251, 32.728264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245155, 35.642719, 32.647964>,  <37.058426, 35.970165, 32.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245155, 35.642719, 32.647964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530846, -0.043207, -0.846366,
		0.707302, 0.572719, 0.414387,
		0.466825, -0.818612, 0.334586,
		37.385204, 35.397137, 32.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834076, 36.067051, 32.592716>,  <37.058426, 35.970165, 32.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834076, 36.067051, 32.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737858, 35.687057, 32.513046>,  <37.680126, 35.459061, 32.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737858, 35.687057, 32.513046>,  <37.834076, 36.067051, 32.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737858, 35.687057, 32.513046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524354, 0.045494, -0.850284,
		0.816816, -0.308972, 0.487184,
		-0.240549, -0.949982, -0.199171,
		37.665691, 35.402061, 32.453297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288116, 35.912674, 32.038422>,  <37.834076, 36.067051, 32.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288116, 35.912674, 32.038422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065842, 35.580212, 32.046291>,  <37.932476, 35.380733, 32.051014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065842, 35.580212, 32.046291>,  <38.288116, 35.912674, 32.038422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065842, 35.580212, 32.046291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270692, -0.203253, -0.940964,
		0.786090, -0.517556, 0.337933,
		-0.555688, -0.831158, 0.019677,
		37.899136, 35.330864, 32.052193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742142, 35.425526, 31.952873>,  <38.288116, 35.912674, 32.038422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742142, 35.425526, 31.952873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379082, 35.296127, 31.845905>,  <38.161243, 35.218487, 31.781725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379082, 35.296127, 31.845905>,  <38.742142, 35.425526, 31.952873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379082, 35.296127, 31.845905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377015, -0.348390, -0.858187,
		0.184454, -0.879758, 0.438181,
		-0.907654, -0.323496, -0.267420,
		38.106785, 35.199078, 31.765678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877682, 34.870598, 31.517525>,  <38.742142, 35.425526, 31.952873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877682, 34.870598, 31.517525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490520, 34.926392, 31.433897>,  <38.258224, 34.959869, 31.383720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490520, 34.926392, 31.433897>,  <38.877682, 34.870598, 31.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490520, 34.926392, 31.433897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170816, -0.245106, -0.954329,
		-0.184359, -0.959410, 0.213413,
		-0.967902, 0.139485, -0.209070,
		38.200150, 34.968239, 31.371176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646526, 34.292221, 31.157578>,  <38.877682, 34.870598, 31.517525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646526, 34.292221, 31.157578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375587, 34.558113, 31.031507>,  <38.213024, 34.717648, 30.955866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375587, 34.558113, 31.031507>,  <38.646526, 34.292221, 31.157578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375587, 34.558113, 31.031507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112068, -0.330186, -0.937239,
		-0.727080, -0.670155, 0.149154,
		-0.677344, 0.664733, -0.315175,
		38.172382, 34.757534, 30.936954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357086, 33.931381, 30.650215>,  <38.646526, 34.292221, 31.157578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357086, 33.931381, 30.650215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287487, 34.319851, 30.585041>,  <38.245728, 34.552933, 30.545937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287487, 34.319851, 30.585041>,  <38.357086, 33.931381, 30.650215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287487, 34.319851, 30.585041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020157, -0.161913, -0.986599,
		-0.984539, -0.174953, 0.008597,
		-0.174000, 0.971173, -0.162936,
		38.235287, 34.611202, 30.536160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824310, 33.934711, 30.113962>,  <38.357086, 33.931381, 30.650215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824310, 33.934711, 30.113962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973911, 34.304348, 30.082525>,  <38.063671, 34.526131, 30.063663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973911, 34.304348, 30.082525>,  <37.824310, 33.934711, 30.113962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973911, 34.304348, 30.082525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130957, -0.136513, -0.981944,
		-0.918137, 0.356954, -0.172072,
		0.373999, 0.924093, -0.078592,
		38.086109, 34.581577, 30.058949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710388, 34.147671, 29.438099>,  <37.824310, 33.934711, 30.113962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710388, 34.147671, 29.438099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988636, 34.404194, 29.567616>,  <38.155586, 34.558105, 29.645325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988636, 34.404194, 29.567616>,  <37.710388, 34.147671, 29.438099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988636, 34.404194, 29.567616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378258, 0.056221, -0.923991,
		-0.610765, 0.765222, -0.203471,
		0.695620, 0.641306, 0.323789,
		38.197323, 34.596584, 29.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656963, 34.722855, 29.056293>,  <37.710388, 34.147671, 29.438099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656963, 34.722855, 29.056293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038918, 34.748230, 29.172340>,  <38.268089, 34.763454, 29.241968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038918, 34.748230, 29.172340>,  <37.656963, 34.722855, 29.056293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038918, 34.748230, 29.172340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282087, 0.111674, -0.952867,
		-0.092844, 0.991718, 0.088742,
		0.954886, 0.063435, 0.290119,
		38.325382, 34.767262, 29.259377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896370, 35.215008, 28.648478>,  <37.656963, 34.722855, 29.056293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896370, 35.215008, 28.648478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219540, 35.028587, 28.792727>,  <38.413441, 34.916733, 28.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219540, 35.028587, 28.792727>,  <37.896370, 35.215008, 28.648478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219540, 35.028587, 28.792727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436844, 0.062952, -0.897332,
		0.395504, 0.882514, 0.254453,
		0.807926, -0.466055, 0.360623,
		38.461918, 34.888771, 28.900913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519440, 35.609623, 28.468090>,  <37.896370, 35.215008, 28.648478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519440, 35.609623, 28.468090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611721, 35.224224, 28.522417>,  <38.667091, 34.992985, 28.555014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611721, 35.224224, 28.522417>,  <38.519440, 35.609623, 28.468090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611721, 35.224224, 28.522417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413755, -0.029193, -0.909920,
		0.880671, 0.266118, 0.391918,
		0.230705, -0.963498, 0.135817,
		38.680931, 34.935173, 28.563162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177830, 35.606182, 28.231501>,  <38.519440, 35.609623, 28.468090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177830, 35.606182, 28.231501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092667, 35.215942, 28.252970>,  <39.041569, 34.981800, 28.265850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092667, 35.215942, 28.252970>,  <39.177830, 35.606182, 28.231501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092667, 35.215942, 28.252970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568667, -0.168394, -0.805146,
		0.794537, -0.140899, 0.590643,
		-0.212905, -0.975598, 0.053671,
		39.028793, 34.923264, 28.269072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794983, 35.235901, 28.081343>,  <39.177830, 35.606182, 28.231501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794983, 35.235901, 28.081343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516560, 34.956779, 28.013737>,  <39.349506, 34.789307, 27.973173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516560, 34.956779, 28.013737>,  <39.794983, 35.235901, 28.081343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516560, 34.956779, 28.013737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458578, -0.250950, -0.852485,
		0.552456, -0.670887, 0.494675,
		-0.696059, -0.697807, -0.169016,
		39.307743, 34.747437, 27.963032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116196, 34.629452, 27.792322>,  <39.794983, 35.235901, 28.081343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116196, 34.629452, 27.792322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737778, 34.585392, 27.670424>,  <39.510727, 34.558956, 27.597284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737778, 34.585392, 27.670424>,  <40.116196, 34.629452, 27.792322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737778, 34.585392, 27.670424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316559, -0.113235, -0.941790,
		0.069235, -0.987443, 0.141995,
		-0.946042, -0.110154, -0.304745,
		39.453964, 34.552345, 27.579000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052101, 33.940117, 27.447222>,  <40.116196, 34.629452, 27.792322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052101, 33.940117, 27.447222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776428, 34.199425, 27.317751>,  <39.611023, 34.355011, 27.240068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776428, 34.199425, 27.317751>,  <40.052101, 33.940117, 27.447222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776428, 34.199425, 27.317751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392560, -0.041409, -0.918794,
		-0.609032, -0.760282, -0.225947,
		-0.689186, 0.648273, -0.323675,
		39.569672, 34.393906, 27.220648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775810, 33.613937, 26.827158>,  <40.052101, 33.940117, 27.447222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775810, 33.613937, 26.827158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676792, 34.000809, 26.804199>,  <39.617382, 34.232929, 26.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676792, 34.000809, 26.804199>,  <39.775810, 33.613937, 26.827158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676792, 34.000809, 26.804199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262020, 0.009794, -0.965013,
		-0.932774, -0.253923, -0.255844,
		-0.247544, 0.967175, -0.057397,
		39.602528, 34.290962, 26.786980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510612, 33.672028, 26.192644>,  <39.775810, 33.613937, 26.827158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510612, 33.672028, 26.192644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573139, 34.057369, 26.279840>,  <39.610657, 34.288574, 26.332159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573139, 34.057369, 26.279840>,  <39.510612, 33.672028, 26.192644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573139, 34.057369, 26.279840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183909, 0.188458, -0.964708,
		-0.970434, 0.190893, -0.147710,
		0.156319, 0.963350, 0.217993,
		39.620033, 34.346375, 26.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252880, 34.081837, 25.650778>,  <39.510612, 33.672028, 26.192644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252880, 34.081837, 25.650778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484016, 34.351910, 25.834179>,  <39.622700, 34.513954, 25.944220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484016, 34.351910, 25.834179>,  <39.252880, 34.081837, 25.650778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484016, 34.351910, 25.834179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183361, 0.440028, -0.879064,
		-0.795284, 0.592032, 0.130464,
		0.577842, 0.675184, 0.458503,
		39.657368, 34.554466, 25.971729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980247, 34.648563, 25.429205>,  <39.252880, 34.081837, 25.650778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980247, 34.648563, 25.429205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346943, 34.749180, 25.553349>,  <39.566959, 34.809551, 25.627834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346943, 34.749180, 25.553349>,  <38.980247, 34.648563, 25.429205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346943, 34.749180, 25.553349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189614, 0.409820, -0.892241,
		-0.351628, 0.876797, 0.328000,
		0.916736, 0.251544, 0.310357,
		39.621964, 34.824642, 25.646456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100040, 35.405239, 25.312302>,  <38.980247, 34.648563, 25.429205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100040, 35.405239, 25.312302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454739, 35.221260, 25.330765>,  <39.667557, 35.110874, 25.341843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454739, 35.221260, 25.330765>,  <39.100040, 35.405239, 25.312302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454739, 35.221260, 25.330765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274869, 0.444358, -0.852639,
		0.371657, 0.768762, 0.520458,
		0.886746, -0.459947, 0.046160,
		39.720764, 35.083275, 25.344612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489506, 35.893192, 25.235050>,  <39.100040, 35.405239, 25.312302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489506, 35.893192, 25.235050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687702, 35.571873, 25.102867>,  <39.806618, 35.379082, 25.023558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687702, 35.571873, 25.102867>,  <39.489506, 35.893192, 25.235050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687702, 35.571873, 25.102867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065564, 0.413943, -0.907939,
		0.866137, 0.428207, 0.257771,
		0.495489, -0.803299, -0.330456,
		39.836349, 35.330883, 25.003731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122402, 36.156597, 24.999861>,  <39.489506, 35.893192, 25.235050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122402, 36.156597, 24.999861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090172, 35.787685, 24.848648>,  <40.070831, 35.566338, 24.757919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090172, 35.787685, 24.848648>,  <40.122402, 36.156597, 24.999861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090172, 35.787685, 24.848648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341193, 0.330834, -0.879850,
		0.936533, -0.199879, 0.288017,
		-0.080578, -0.922278, -0.378034,
		40.065998, 35.511002, 24.735237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779621, 36.172951, 24.496563>,  <40.122402, 36.156597, 24.999861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779621, 36.172951, 24.496563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548134, 35.860859, 24.401634>,  <40.409241, 35.673603, 24.344677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548134, 35.860859, 24.401634>,  <40.779621, 36.172951, 24.496563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548134, 35.860859, 24.401634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269226, 0.091910, -0.958681,
		0.769806, -0.618701, 0.156869,
		-0.578719, -0.780232, -0.237323,
		40.374519, 35.626789, 24.330437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100292, 35.675835, 23.957003>,  <40.779621, 36.172951, 24.496563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100292, 35.675835, 23.957003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701622, 35.654640, 23.932230>,  <40.462421, 35.641926, 23.917366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701622, 35.654640, 23.932230>,  <41.100292, 35.675835, 23.957003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701622, 35.654640, 23.932230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048303, 0.228078, -0.972444,
		0.065650, -0.972200, -0.224760,
		-0.996673, -0.052985, -0.061934,
		40.402618, 35.638744, 23.913651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091011, 35.333317, 23.434496>,  <41.100292, 35.675835, 23.957003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091011, 35.333317, 23.434496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726536, 35.492756, 23.476158>,  <40.507851, 35.588421, 23.501156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726536, 35.492756, 23.476158>,  <41.091011, 35.333317, 23.434496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726536, 35.492756, 23.476158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010883, 0.276016, -0.961092,
		-0.411843, -0.874603, -0.255841,
		-0.911190, 0.398603, 0.104157,
		40.453178, 35.612335, 23.507404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718418, 35.077534, 22.867044>,  <41.091011, 35.333317, 23.434496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718418, 35.077534, 22.867044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528233, 35.408276, 22.987209>,  <40.414124, 35.606720, 23.059309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528233, 35.408276, 22.987209>,  <40.718418, 35.077534, 22.867044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528233, 35.408276, 22.987209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165420, 0.251361, -0.953653,
		-0.864044, -0.503119, 0.017266,
		-0.475461, 0.826855, 0.300413,
		40.385593, 35.656330, 23.077333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146484, 35.195354, 22.446234>,  <40.718418, 35.077534, 22.867044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146484, 35.195354, 22.446234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168095, 35.563217, 22.601828>,  <40.181061, 35.783936, 22.695185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168095, 35.563217, 22.601828>,  <40.146484, 35.195354, 22.446234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168095, 35.563217, 22.601828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087335, 0.392413, -0.915634,
		-0.994713, 0.015498, 0.101519,
		0.054028, 0.919659, 0.388984,
		40.184303, 35.839115, 22.718523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765350, 35.536739, 21.999466>,  <40.146484, 35.195354, 22.446234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765350, 35.536739, 21.999466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020020, 35.775509, 22.194742>,  <40.172821, 35.918770, 22.311909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020020, 35.775509, 22.194742>,  <39.765350, 35.536739, 21.999466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020020, 35.775509, 22.194742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157487, 0.519089, -0.840086,
		-0.754879, 0.611746, 0.236484,
		0.636676, 0.596920, 0.488191,
		40.211021, 35.954586, 22.341200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607800, 36.255428, 21.941965>,  <39.765350, 35.536739, 21.999466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607800, 36.255428, 21.941965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999966, 36.184986, 21.977228>,  <40.235264, 36.142719, 21.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999966, 36.184986, 21.977228>,  <39.607800, 36.255428, 21.941965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999966, 36.184986, 21.977228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158070, 0.436646, -0.885638,
		0.117475, 0.882228, 0.455932,
		0.980415, -0.176109, 0.088159,
		40.294090, 36.132153, 22.003675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037224, 36.849861, 21.829935>,  <39.607800, 36.255428, 21.941965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037224, 36.849861, 21.829935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248486, 36.538857, 21.693388>,  <40.375244, 36.352253, 21.611460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248486, 36.538857, 21.693388>,  <40.037224, 36.849861, 21.829935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248486, 36.538857, 21.693388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068170, 0.361892, -0.929724,
		0.846406, 0.514311, 0.138133,
		0.528157, -0.777508, -0.341368,
		40.406933, 36.305603, 21.590977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728802, 37.073689, 21.472528>,  <40.037224, 36.849861, 21.829935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728802, 37.073689, 21.472528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557499, 36.734745, 21.346937>,  <40.454716, 36.531380, 21.271584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557499, 36.734745, 21.346937>,  <40.728802, 37.073689, 21.472528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557499, 36.734745, 21.346937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065315, 0.375569, -0.924490,
		0.901293, -0.375412, -0.216186,
		-0.428257, -0.847357, -0.313977,
		40.429020, 36.480537, 21.252745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752747, 37.774471, 21.128202>,  <40.728802, 37.073689, 21.472528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752747, 37.774471, 21.128202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921841, 37.615719, 21.454092>,  <41.023296, 37.520470, 21.649626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921841, 37.615719, 21.454092>,  <40.752747, 37.774471, 21.128202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921841, 37.615719, 21.454092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057610, 0.885420, 0.461208,
		-0.904418, -0.241907, 0.351438,
		0.422740, -0.396878, 0.814726,
		41.048664, 37.496655, 21.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560539, 38.141876, 21.604839>,  <40.752747, 37.774471, 21.128202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560539, 38.141876, 21.604839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838188, 37.946892, 21.816717>,  <41.004776, 37.829903, 21.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838188, 37.946892, 21.816717>,  <40.560539, 38.141876, 21.604839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838188, 37.946892, 21.816717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145056, 0.626022, 0.766195,
		-0.705091, -0.608668, 0.363826,
		0.694122, -0.487462, 0.529694,
		41.046425, 37.800652, 21.975626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331852, 37.788788, 22.179211>,  <40.560539, 38.141876, 21.604839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331852, 37.788788, 22.179211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703255, 37.931614, 22.219973>,  <40.926094, 38.017311, 22.244431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703255, 37.931614, 22.219973>,  <40.331852, 37.788788, 22.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703255, 37.931614, 22.219973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338308, 0.700339, 0.628548,
		0.153067, -0.618084, 0.771066,
		0.928503, 0.357068, 0.101904,
		40.981804, 38.038734, 22.250544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666851, 37.743465, 22.831869>,  <40.331852, 37.788788, 22.179211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666851, 37.743465, 22.831869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711800, 38.066658, 22.600513>,  <40.738770, 38.260574, 22.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711800, 38.066658, 22.600513>,  <40.666851, 37.743465, 22.831869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711800, 38.066658, 22.600513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239356, 0.586948, 0.773434,
		0.964408, 0.051531, 0.259351,
		0.112370, 0.807983, -0.578391,
		40.745510, 38.309052, 22.426996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247246, 38.267170, 22.880705>,  <40.666851, 37.743465, 22.831869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247246, 38.267170, 22.880705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879112, 38.386665, 22.779718>,  <40.658234, 38.458363, 22.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879112, 38.386665, 22.779718>,  <41.247246, 38.267170, 22.880705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879112, 38.386665, 22.779718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142716, 0.344483, 0.927881,
		0.364165, 0.889992, -0.274405,
		-0.920335, 0.298739, -0.252465,
		40.603012, 38.476288, 22.703979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195736, 38.988335, 23.154778>,  <41.247246, 38.267170, 22.880705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195736, 38.988335, 23.154778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828262, 38.848358, 23.081503>,  <40.607777, 38.764374, 23.037539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828262, 38.848358, 23.081503>,  <41.195736, 38.988335, 23.154778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828262, 38.848358, 23.081503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313814, 0.365013, 0.876519,
		-0.239864, 0.862733, -0.445149,
		-0.918687, -0.349940, -0.183184,
		40.552658, 38.743378, 23.026548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652607, 39.466122, 23.458836>,  <41.195736, 38.988335, 23.154778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652607, 39.466122, 23.458836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460442, 39.117397, 23.420586>,  <40.345142, 38.908161, 23.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460442, 39.117397, 23.420586>,  <40.652607, 39.466122, 23.458836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460442, 39.117397, 23.420586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471892, 0.165043, 0.866071,
		-0.739269, 0.461198, -0.490691,
		-0.480415, -0.871812, -0.095625,
		40.316319, 38.855854, 23.391897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925854, 39.641541, 23.505873>,  <40.652607, 39.466122, 23.458836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925854, 39.641541, 23.505873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975166, 39.259922, 23.615124>,  <40.004753, 39.030952, 23.680676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975166, 39.259922, 23.615124>,  <39.925854, 39.641541, 23.505873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975166, 39.259922, 23.615124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513074, 0.174312, 0.840458,
		-0.849445, -0.243748, -0.468007,
		0.123281, -0.954045, 0.273129,
		40.012150, 38.973709, 23.697062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302822, 39.443836, 23.798561>,  <39.925854, 39.641541, 23.505873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302822, 39.443836, 23.798561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575218, 39.184315, 23.934393>,  <39.738655, 39.028603, 24.015892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575218, 39.184315, 23.934393>,  <39.302822, 39.443836, 23.798561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575218, 39.184315, 23.934393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473113, -0.035855, 0.880272,
		-0.558946, -0.760112, -0.331374,
		0.680986, -0.648802, 0.339578,
		39.779514, 38.989674, 24.036266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848072, 38.828655, 24.166355>,  <39.302822, 39.443836, 23.798561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848072, 38.828655, 24.166355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228588, 38.848389, 24.288082>,  <39.456898, 38.860229, 24.361118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228588, 38.848389, 24.288082>,  <38.848072, 38.828655, 24.166355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228588, 38.848389, 24.288082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307856, 0.099748, 0.946190,
		0.016320, -0.993789, 0.110076,
		0.951293, 0.049329, 0.304316,
		39.513977, 38.863190, 24.379377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794857, 38.334862, 24.699970>,  <38.848072, 38.828655, 24.166355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794857, 38.334862, 24.699970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119476, 38.561565, 24.756775>,  <39.314247, 38.697590, 24.790857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119476, 38.561565, 24.756775>,  <38.794857, 38.334862, 24.699970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119476, 38.561565, 24.756775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173617, 0.001842, 0.984811,
		0.557893, -0.823879, 0.099894,
		0.811549, 0.566763, 0.142012,
		39.362942, 38.731594, 24.799379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106392, 38.082535, 25.333902>,  <38.794857, 38.334862, 24.699970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106392, 38.082535, 25.333902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261311, 38.449642, 25.298807>,  <39.354259, 38.669907, 25.277750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261311, 38.449642, 25.298807>,  <39.106392, 38.082535, 25.333902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261311, 38.449642, 25.298807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041293, 0.112339, 0.992812,
		0.921031, -0.380886, 0.081405,
		0.387293, 0.917772, -0.087740,
		39.377499, 38.724976, 25.272486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581654, 38.172859, 25.839121>,  <39.106392, 38.082535, 25.333902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581654, 38.172859, 25.839121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463825, 38.542904, 25.743284>,  <39.393127, 38.764931, 25.685781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463825, 38.542904, 25.743284>,  <39.581654, 38.172859, 25.839121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463825, 38.542904, 25.743284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226463, 0.175997, 0.957987,
		0.928409, 0.336453, 0.157659,
		-0.294570, 0.925108, -0.239592,
		39.375454, 38.820435, 25.671408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951683, 38.583447, 26.268673>,  <39.581654, 38.172859, 25.839121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951683, 38.583447, 26.268673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625988, 38.791164, 26.164865>,  <39.430569, 38.915794, 26.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625988, 38.791164, 26.164865>,  <39.951683, 38.583447, 26.268673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625988, 38.791164, 26.164865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105111, 0.307773, 0.945636,
		0.570933, 0.797253, -0.196018,
		-0.814240, 0.519291, -0.259518,
		39.381718, 38.946953, 26.087009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983421, 39.275452, 26.596935>,  <39.951683, 38.583447, 26.268673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983421, 39.275452, 26.596935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592556, 39.251011, 26.515537>,  <39.358036, 39.236347, 26.466698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592556, 39.251011, 26.515537>,  <39.983421, 39.275452, 26.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592556, 39.251011, 26.515537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212029, 0.218718, 0.952474,
		-0.013693, 0.973873, -0.226680,
		-0.977168, -0.061105, -0.203494,
		39.299404, 39.232677, 26.454489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613743, 39.896923, 26.906725>,  <39.983421, 39.275452, 26.596935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613743, 39.896923, 26.906725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298431, 39.656414, 26.854431>,  <39.109245, 39.512108, 26.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298431, 39.656414, 26.854431>,  <39.613743, 39.896923, 26.906725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298431, 39.656414, 26.854431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307296, 0.200612, 0.930228,
		-0.533094, 0.773450, -0.342906,
		-0.788276, -0.601273, -0.130733,
		39.061947, 39.476032, 26.815210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006924, 40.331505, 27.200823>,  <39.613743, 39.896923, 26.906725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006924, 40.331505, 27.200823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898441, 39.948101, 27.165712>,  <38.833351, 39.718060, 27.144646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898441, 39.948101, 27.165712>,  <39.006924, 40.331505, 27.200823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898441, 39.948101, 27.165712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483702, 0.056881, 0.873382,
		-0.832152, 0.279329, -0.479060,
		-0.271210, -0.958509, -0.087778,
		38.817078, 39.660549, 27.139380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279415, 40.414913, 27.359688>,  <39.006924, 40.331505, 27.200823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279415, 40.414913, 27.359688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421562, 40.045647, 27.418318>,  <38.506851, 39.824089, 27.453495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421562, 40.045647, 27.418318>,  <38.279415, 40.414913, 27.359688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421562, 40.045647, 27.418318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511389, -0.060754, 0.857199,
		-0.782431, -0.379573, -0.493686,
		0.355363, -0.923165, 0.146574,
		38.528172, 39.768696, 27.462290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718773, 40.035263, 27.498474>,  <38.279415, 40.414913, 27.359688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718773, 40.035263, 27.498474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021111, 39.839436, 27.672382>,  <38.202511, 39.721939, 27.776728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021111, 39.839436, 27.672382>,  <37.718773, 40.035263, 27.498474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021111, 39.839436, 27.672382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517916, -0.040788, 0.854459,
		-0.400587, -0.871008, -0.284387,
		0.755840, -0.489574, 0.434770,
		38.247864, 39.692562, 27.802813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436211, 39.531834, 27.903463>,  <37.718773, 40.035263, 27.498474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436211, 39.531834, 27.903463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802216, 39.512764, 28.063707>,  <38.021816, 39.501324, 28.159853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802216, 39.512764, 28.063707>,  <37.436211, 39.531834, 27.903463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802216, 39.512764, 28.063707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384815, -0.401318, 0.831181,
		0.121148, -0.914697, -0.385554,
		0.915008, -0.047671, 0.400608,
		38.076717, 39.498463, 28.183889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574646, 38.820847, 28.061747>,  <37.436211, 39.531834, 27.903463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574646, 38.820847, 28.061747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792290, 39.046986, 28.309723>,  <37.922878, 39.182667, 28.458509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792290, 39.046986, 28.309723>,  <37.574646, 38.820847, 28.061747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792290, 39.046986, 28.309723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566612, -0.297345, 0.768463,
		0.618784, -0.769396, 0.158543,
		0.544111, 0.565345, 0.619942,
		37.955524, 39.216591, 28.495705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600033, 38.513832, 28.657402>,  <37.574646, 38.820847, 28.061747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600033, 38.513832, 28.657402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717445, 38.864521, 28.809820>,  <37.787895, 39.074936, 28.901272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717445, 38.864521, 28.809820>,  <37.600033, 38.513832, 28.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717445, 38.864521, 28.809820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428984, -0.235408, 0.872098,
		0.854289, -0.419454, 0.306999,
		0.293535, 0.876722, 0.381046,
		37.805508, 39.127537, 28.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735237, 38.355221, 29.416216>,  <37.600033, 38.513832, 28.657402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735237, 38.355221, 29.416216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648605, 38.741390, 29.358189>,  <37.596626, 38.973091, 29.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648605, 38.741390, 29.358189>,  <37.735237, 38.355221, 29.416216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648605, 38.741390, 29.358189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429717, 0.039154, 0.902114,
		0.876605, 0.257717, 0.406381,
		-0.216579, 0.965426, -0.145068,
		37.583633, 39.031017, 29.314669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871864, 38.736984, 30.102615>,  <37.735237, 38.355221, 29.416216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871864, 38.736984, 30.102615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650955, 39.007683, 29.907879>,  <37.518410, 39.170101, 29.791037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650955, 39.007683, 29.907879>,  <37.871864, 38.736984, 30.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650955, 39.007683, 29.907879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509203, 0.188554, 0.839738,
		0.660084, 0.711663, 0.240467,
		-0.552269, 0.676745, -0.486842,
		37.485275, 39.210705, 29.761826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778141, 39.297138, 30.576071>,  <37.871864, 38.736984, 30.102615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778141, 39.297138, 30.576071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477146, 39.298176, 30.312628>,  <37.296551, 39.298798, 30.154562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477146, 39.298176, 30.312628>,  <37.778141, 39.297138, 30.576071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477146, 39.298176, 30.312628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642603, 0.216249, 0.735050,
		0.144329, 0.976335, -0.161057,
		-0.752483, 0.002594, -0.658606,
		37.251400, 39.298954, 30.115046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334110, 39.900543, 30.748045>,  <37.778141, 39.297138, 30.576071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334110, 39.900543, 30.748045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076759, 39.698101, 30.518290>,  <36.922348, 39.576633, 30.380436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076759, 39.698101, 30.518290>,  <37.334110, 39.900543, 30.748045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076759, 39.698101, 30.518290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738755, 0.213672, 0.639207,
		-0.200776, 0.835583, -0.511360,
		-0.643374, -0.506108, -0.574391,
		36.883747, 39.546268, 30.345972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721931, 40.291599, 30.794445>,  <37.334110, 39.900543, 30.748045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721931, 40.291599, 30.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605465, 39.932529, 30.662138>,  <36.535583, 39.717087, 30.582754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605465, 39.932529, 30.662138>,  <36.721931, 40.291599, 30.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605465, 39.932529, 30.662138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720204, -0.021901, 0.693416,
		-0.629705, 0.440119, -0.640131,
		-0.291166, -0.897672, -0.330766,
		36.518116, 39.663227, 30.562908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071964, 40.327663, 30.868607>,  <36.721931, 40.291599, 30.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071964, 40.327663, 30.868607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143009, 39.938099, 30.812111>,  <36.185635, 39.704361, 30.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143009, 39.938099, 30.812111>,  <36.071964, 40.327663, 30.868607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143009, 39.938099, 30.812111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666469, -0.224637, 0.710885,
		-0.724067, -0.032131, -0.688980,
		0.177612, -0.973912, -0.141238,
		36.196293, 39.645924, 30.769739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339310, 39.993019, 30.899109>,  <36.071964, 40.327663, 30.868607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339310, 39.993019, 30.899109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622066, 39.724586, 30.988512>,  <35.791721, 39.563526, 31.042154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622066, 39.724586, 30.988512>,  <35.339310, 39.993019, 30.899109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622066, 39.724586, 30.988512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562841, -0.342295, 0.752360,
		-0.428393, -0.657632, -0.619678,
		0.706888, -0.671085, 0.223506,
		35.834133, 39.523262, 31.055565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915596, 39.444023, 30.968178>,  <35.339310, 39.993019, 30.899109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915596, 39.444023, 30.968178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256779, 39.360615, 31.159584>,  <35.461491, 39.310570, 31.274427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256779, 39.360615, 31.159584>,  <34.915596, 39.444023, 30.968178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256779, 39.360615, 31.159584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518909, -0.239461, 0.820605,
		-0.056528, -0.948249, -0.312454,
		0.852959, -0.208522, 0.478519,
		35.512665, 39.298058, 31.303139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887192, 38.718807, 31.281584>,  <34.915596, 39.444023, 30.968178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887192, 38.718807, 31.281584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145222, 38.948784, 31.482906>,  <35.300041, 39.086769, 31.603701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145222, 38.948784, 31.482906>,  <34.887192, 38.718807, 31.281584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145222, 38.948784, 31.482906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522129, -0.149259, 0.839704,
		0.557902, -0.804467, 0.203908,
		0.645079, 0.574939, 0.503307,
		35.338745, 39.121265, 31.633898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026985, 38.363552, 31.951162>,  <34.887192, 38.718807, 31.281584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026985, 38.363552, 31.951162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122356, 38.741684, 32.040169>,  <35.179577, 38.968563, 32.093571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122356, 38.741684, 32.040169>,  <35.026985, 38.363552, 31.951162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122356, 38.741684, 32.040169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454915, -0.093718, 0.885590,
		0.858025, -0.312371, 0.407699,
		0.238424, 0.945326, 0.222515,
		35.193882, 39.025280, 32.106922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218227, 38.211357, 32.597481>,  <35.026985, 38.363552, 31.951162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218227, 38.211357, 32.597481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173286, 38.607555, 32.565762>,  <35.146320, 38.845276, 32.546730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173286, 38.607555, 32.565762>,  <35.218227, 38.211357, 32.597481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173286, 38.607555, 32.565762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279764, 0.045046, 0.959011,
		0.953472, 0.129934, 0.272045,
		-0.112353, 0.990499, -0.079301,
		35.139580, 38.904705, 32.541973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704132, 38.631737, 32.990753>,  <35.218227, 38.211357, 32.597481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704132, 38.631737, 32.990753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358707, 38.830551, 32.956791>,  <35.151451, 38.949841, 32.936413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358707, 38.830551, 32.956791>,  <35.704132, 38.631737, 32.990753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358707, 38.830551, 32.956791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010662, 0.150339, 0.988577,
		0.504126, 0.854605, -0.124528,
		-0.863564, 0.497039, -0.084902,
		35.099640, 38.979664, 32.931320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871704, 39.173088, 33.455708>,  <35.704132, 38.631737, 32.990753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871704, 39.173088, 33.455708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486023, 39.230293, 33.366394>,  <35.254612, 39.264618, 33.312805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486023, 39.230293, 33.366394>,  <35.871704, 39.173088, 33.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486023, 39.230293, 33.366394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163166, 0.343741, 0.924781,
		0.209008, 0.928110, -0.308101,
		-0.964206, 0.143015, -0.223281,
		35.196762, 39.273197, 33.299408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579762, 39.875061, 33.694805>,  <35.871704, 39.173088, 33.455708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579762, 39.875061, 33.694805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275707, 39.615273, 33.686954>,  <35.093273, 39.459400, 33.682243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275707, 39.615273, 33.686954>,  <35.579762, 39.875061, 33.694805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275707, 39.615273, 33.686954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215239, 0.223190, 0.950715,
		-0.613079, 0.726896, -0.309446,
		-0.760136, -0.649468, -0.019623,
		35.047665, 39.420433, 33.681068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066483, 40.295948, 34.017971>,  <35.579762, 39.875061, 33.694805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066483, 40.295948, 34.017971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944771, 39.914993, 34.025642>,  <34.871742, 39.686420, 34.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944771, 39.914993, 34.025642>,  <35.066483, 40.295948, 34.017971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944771, 39.914993, 34.025642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273759, 0.106713, 0.955860,
		-0.912397, 0.285601, -0.293196,
		-0.304283, -0.952389, 0.019179,
		34.853485, 39.629276, 34.031395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409546, 40.315266, 34.352329>,  <35.066483, 40.295948, 34.017971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409546, 40.315266, 34.352329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526806, 39.933010, 34.363777>,  <34.597164, 39.703659, 34.370644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526806, 39.933010, 34.363777>,  <34.409546, 40.315266, 34.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526806, 39.933010, 34.363777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326384, -0.071899, 0.942499,
		-0.898629, -0.285636, -0.332982,
		0.293153, -0.955637, 0.028617,
		34.614750, 39.646320, 34.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827446, 39.922577, 34.605488>,  <34.409546, 40.315266, 34.352329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827446, 39.922577, 34.605488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163925, 39.717258, 34.673500>,  <34.365814, 39.594067, 34.714306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163925, 39.717258, 34.673500>,  <33.827446, 39.922577, 34.605488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163925, 39.717258, 34.673500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169062, 0.049011, 0.984386,
		-0.513612, -0.856812, -0.045550,
		0.841202, -0.513294, 0.170027,
		34.416286, 39.563271, 34.724506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657612, 39.503345, 35.192295>,  <33.827446, 39.922577, 34.605488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657612, 39.503345, 35.192295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056339, 39.473446, 35.203335>,  <34.295578, 39.455505, 35.209957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056339, 39.473446, 35.203335>,  <33.657612, 39.503345, 35.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056339, 39.473446, 35.203335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034637, -0.094570, 0.994916,
		-0.071751, -0.992709, -0.096859,
		0.996821, -0.074742, 0.027599,
		34.355385, 39.451019, 35.211613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824390, 38.930237, 35.714455>,  <33.657612, 39.503345, 35.192295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824390, 38.930237, 35.714455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140987, 39.164246, 35.643703>,  <34.330944, 39.304653, 35.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140987, 39.164246, 35.643703>,  <33.824390, 38.930237, 35.714455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140987, 39.164246, 35.643703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148541, 0.096597, 0.984177,
		0.592855, -0.805241, -0.010445,
		0.791491, 0.585026, -0.176879,
		34.378433, 39.339752, 35.590641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480656, 38.532215, 36.035332>,  <33.824390, 38.930237, 35.714455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480656, 38.532215, 36.035332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544659, 38.926643, 36.017132>,  <34.583061, 39.163300, 36.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544659, 38.926643, 36.017132>,  <34.480656, 38.532215, 36.035332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544659, 38.926643, 36.017132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400019, -0.022632, 0.916227,
		0.902431, -0.164805, -0.398066,
		0.160008, 0.986067, -0.045501,
		34.592663, 39.222462, 36.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140137, 38.607903, 36.167278>,  <34.480656, 38.532215, 36.035332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140137, 38.607903, 36.167278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005985, 38.972294, 36.263317>,  <34.925495, 39.190929, 36.320938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005985, 38.972294, 36.263317>,  <35.140137, 38.607903, 36.167278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005985, 38.972294, 36.263317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518739, -0.034168, 0.854250,
		0.786405, 0.411040, -0.461100,
		-0.335376, 0.910977, 0.240093,
		34.905373, 39.245586, 36.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722927, 38.980865, 36.415081>,  <35.140137, 38.607903, 36.167278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722927, 38.980865, 36.415081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414814, 39.196125, 36.551941>,  <35.229946, 39.325279, 36.634056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414814, 39.196125, 36.551941>,  <35.722927, 38.980865, 36.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414814, 39.196125, 36.551941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472205, 0.120728, 0.873182,
		0.428592, 0.834160, -0.347110,
		-0.770280, 0.538146, 0.342152,
		35.183731, 39.357571, 36.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027538, 39.363960, 36.992207>,  <35.722927, 38.980865, 36.415081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027538, 39.363960, 36.992207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634132, 39.403946, 37.052483>,  <35.398090, 39.427937, 37.088650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634132, 39.403946, 37.052483>,  <36.027538, 39.363960, 36.992207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634132, 39.403946, 37.052483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165272, 0.158665, 0.973402,
		0.073395, 0.982259, -0.172571,
		-0.983513, 0.099964, 0.150694,
		35.339077, 39.433933, 37.097691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571514, 39.806873, 37.391922>,  <36.027538, 39.363960, 36.992207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571514, 39.806873, 37.391922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887283, 39.971798, 37.573830>,  <36.076744, 40.070751, 37.682976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887283, 39.971798, 37.573830>,  <35.571514, 39.806873, 37.391922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887283, 39.971798, 37.573830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546526, -0.134747, -0.826531,
		-0.279509, 0.901024, -0.331710,
		0.789420, 0.412310, 0.454770,
		36.124111, 40.095490, 37.710262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749744, 40.399326, 36.996048>,  <35.571514, 39.806873, 37.391922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749744, 40.399326, 36.996048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061592, 40.237766, 37.187485>,  <36.248703, 40.140831, 37.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061592, 40.237766, 37.187485>,  <35.749744, 40.399326, 36.996048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061592, 40.237766, 37.187485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487518, -0.088252, -0.868641,
		0.393081, 0.910536, 0.128106,
		0.779624, -0.403901, 0.478593,
		36.295479, 40.116596, 37.331062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316208, 40.748493, 36.768505>,  <35.749744, 40.399326, 36.996048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316208, 40.748493, 36.768505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462112, 40.405724, 36.914181>,  <36.549656, 40.200062, 37.001587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462112, 40.405724, 36.914181>,  <36.316208, 40.748493, 36.768505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462112, 40.405724, 36.914181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630797, -0.060270, -0.773604,
		0.684869, 0.511907, 0.518561,
		0.364760, -0.856924, 0.364187,
		36.571541, 40.148647, 37.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050110, 40.937004, 36.757465>,  <36.316208, 40.748493, 36.768505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050110, 40.937004, 36.757465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001610, 40.540005, 36.763733>,  <36.972511, 40.301804, 36.767494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001610, 40.540005, 36.763733>,  <37.050110, 40.937004, 36.757465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001610, 40.540005, 36.763733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635384, -0.089730, -0.766965,
		0.762618, -0.083035, 0.641497,
		-0.121246, -0.992499, 0.015671,
		36.965237, 40.242256, 36.768433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755600, 40.695934, 36.699333>,  <37.050110, 40.937004, 36.757465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755600, 40.695934, 36.699333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512096, 40.395687, 36.596581>,  <37.365993, 40.215538, 36.534931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512096, 40.395687, 36.596581>,  <37.755600, 40.695934, 36.699333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512096, 40.395687, 36.596581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489929, -0.101014, -0.865891,
		0.624002, -0.652973, 0.429241,
		-0.608763, -0.750615, -0.256877,
		37.329468, 40.170502, 36.519516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171753, 40.222546, 36.394600>,  <37.755600, 40.695934, 36.699333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171753, 40.222546, 36.394600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803001, 40.107422, 36.290833>,  <37.581749, 40.038349, 36.228573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803001, 40.107422, 36.290833>,  <38.171753, 40.222546, 36.394600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803001, 40.107422, 36.290833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304936, -0.125850, -0.944021,
		0.239052, -0.949382, 0.203783,
		-0.921883, -0.287811, -0.259416,
		37.526436, 40.021080, 36.213009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235558, 39.457100, 36.300770>,  <38.171753, 40.222546, 36.394600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235558, 39.457100, 36.300770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924759, 39.617821, 36.106934>,  <37.738281, 39.714252, 35.990631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924759, 39.617821, 36.106934>,  <38.235558, 39.457100, 36.300770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924759, 39.617821, 36.106934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386563, -0.303015, -0.871063,
		-0.496839, -0.864137, 0.080116,
		-0.776994, 0.401808, -0.484593,
		37.691662, 39.738361, 35.961555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978367, 38.965290, 35.824886>,  <38.235558, 39.457100, 36.300770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978367, 38.965290, 35.824886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860603, 39.322578, 35.688961>,  <37.789944, 39.536953, 35.607407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860603, 39.322578, 35.688961>,  <37.978367, 38.965290, 35.824886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860603, 39.322578, 35.688961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221540, -0.282101, -0.933455,
		-0.929647, -0.350101, -0.114831,
		-0.294410, 0.893223, -0.339816,
		37.772282, 39.590546, 35.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559570, 38.786545, 35.179047>,  <37.978367, 38.965290, 35.824886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559570, 38.786545, 35.179047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679127, 39.167545, 35.155693>,  <37.750862, 39.396145, 35.141682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679127, 39.167545, 35.155693>,  <37.559570, 38.786545, 35.179047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679127, 39.167545, 35.155693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468096, -0.199653, -0.860828,
		-0.831596, 0.229963, -0.505535,
		0.298890, 0.952500, -0.058386,
		37.768795, 39.453297, 35.138176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688843, 38.894432, 34.425179>,  <37.559570, 38.786545, 35.179047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688843, 38.894432, 34.425179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852280, 39.229618, 34.569878>,  <37.950344, 39.430729, 34.656696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852280, 39.229618, 34.569878>,  <37.688843, 38.894432, 34.425179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852280, 39.229618, 34.569878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470135, 0.146489, -0.870353,
		-0.782318, 0.525694, -0.334102,
		0.408597, 0.837966, 0.361748,
		37.974857, 39.481007, 34.678402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801010, 39.299683, 33.848145>,  <37.688843, 38.894432, 34.425179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801010, 39.299683, 33.848145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015903, 39.499653, 34.119865>,  <38.144840, 39.619637, 34.282898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015903, 39.499653, 34.119865>,  <37.801010, 39.299683, 33.848145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015903, 39.499653, 34.119865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378144, 0.577157, -0.723807,
		-0.753917, 0.645727, 0.121023,
		0.537231, 0.499926, 0.679306,
		38.177074, 39.649632, 34.323658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747852, 40.003670, 33.659512>,  <37.801010, 39.299683, 33.848145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747852, 40.003670, 33.659512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075687, 39.972244, 33.886528>,  <38.272388, 39.953388, 34.022739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075687, 39.972244, 33.886528>,  <37.747852, 40.003670, 33.659512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075687, 39.972244, 33.886528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531879, 0.472625, -0.702659,
		-0.213032, 0.877755, 0.429143,
		0.819586, -0.078563, 0.567544,
		38.321564, 39.948677, 34.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111233, 40.697144, 33.749184>,  <37.747852, 40.003670, 33.659512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111233, 40.697144, 33.749184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387943, 40.411907, 33.794689>,  <38.553970, 40.240765, 33.821995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387943, 40.411907, 33.794689>,  <38.111233, 40.697144, 33.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387943, 40.411907, 33.794689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430073, 0.280302, -0.858177,
		0.580072, 0.642594, 0.500589,
		0.691775, -0.713095, 0.113767,
		38.595474, 40.197979, 33.828819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757809, 41.047447, 33.486988>,  <38.111233, 40.697144, 33.749184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757809, 41.047447, 33.486988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846272, 40.657356, 33.488548>,  <38.899349, 40.423302, 33.489483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846272, 40.657356, 33.488548>,  <38.757809, 41.047447, 33.486988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846272, 40.657356, 33.488548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584207, 0.129283, -0.801242,
		0.780891, 0.179479, 0.598328,
		0.221160, -0.975230, 0.003897,
		38.912621, 40.364788, 33.489716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529289, 40.926891, 33.450031>,  <38.757809, 41.047447, 33.486988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529289, 40.926891, 33.450031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334969, 40.618095, 33.286068>,  <39.218376, 40.432819, 33.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334969, 40.618095, 33.286068>,  <39.529289, 40.926891, 33.450031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334969, 40.618095, 33.286068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529156, 0.113509, -0.840898,
		0.695693, -0.625418, 0.353360,
		-0.485803, -0.771990, -0.409911,
		39.189228, 40.386497, 33.163094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923462, 40.856667, 32.944607>,  <39.529289, 40.926891, 33.450031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923462, 40.856667, 32.944607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644066, 40.587852, 32.846237>,  <39.476429, 40.426563, 32.787216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644066, 40.587852, 32.846237>,  <39.923462, 40.856667, 32.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644066, 40.587852, 32.846237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422538, -0.109957, -0.899650,
		0.577560, -0.732306, 0.360766,
		-0.698489, -0.672039, -0.245921,
		39.434521, 40.386242, 32.772461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259083, 40.278694, 32.736832>,  <39.923462, 40.856667, 32.944607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259083, 40.278694, 32.736832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896786, 40.259190, 32.568424>,  <39.679409, 40.247486, 32.467381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896786, 40.259190, 32.568424>,  <40.259083, 40.278694, 32.736832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896786, 40.259190, 32.568424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422653, -0.177972, -0.888645,
		-0.031597, -0.982827, 0.181805,
		-0.905741, -0.048762, -0.421018,
		39.625065, 40.244560, 32.442120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222816, 39.630043, 32.456497>,  <40.259083, 40.278694, 32.736832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222816, 39.630043, 32.456497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940361, 39.832119, 32.258045>,  <39.770885, 39.953365, 32.138973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940361, 39.832119, 32.258045>,  <40.222816, 39.630043, 32.456497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940361, 39.832119, 32.258045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385234, -0.313792, -0.867830,
		-0.594104, -0.803936, 0.026964,
		-0.706140, 0.505194, -0.496129,
		39.728519, 39.983677, 32.109207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824062, 39.262764, 32.003258>,  <40.222816, 39.630043, 32.456497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824062, 39.262764, 32.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791061, 39.636326, 31.864109>,  <39.771259, 39.860462, 31.780619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791061, 39.636326, 31.864109>,  <39.824062, 39.262764, 32.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791061, 39.636326, 31.864109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390426, -0.290872, -0.873477,
		-0.916930, -0.207886, -0.340622,
		-0.082507, 0.933904, -0.347873,
		39.766308, 39.916496, 31.759747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663635, 39.145187, 31.346466>,  <39.824062, 39.262764, 32.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663635, 39.145187, 31.346466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756695, 39.533482, 31.322624>,  <39.812531, 39.766457, 31.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756695, 39.533482, 31.322624>,  <39.663635, 39.145187, 31.346466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756695, 39.533482, 31.322624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399465, -0.151256, -0.904184,
		-0.886737, 0.186549, -0.422963,
		0.232650, 0.970732, -0.059605,
		39.826488, 39.824699, 31.304743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419628, 39.366234, 30.720293>,  <39.663635, 39.145187, 31.346466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419628, 39.366234, 30.720293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691124, 39.650860, 30.792938>,  <39.854023, 39.821636, 30.836525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691124, 39.650860, 30.792938>,  <39.419628, 39.366234, 30.720293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691124, 39.650860, 30.792938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248674, 0.009999, -0.968536,
		-0.690995, 0.702547, -0.170162,
		0.678740, 0.711568, 0.181614,
		39.894745, 39.864330, 30.847422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522125, 39.726967, 30.114975>,  <39.419628, 39.366234, 30.720293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522125, 39.726967, 30.114975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860256, 39.759659, 30.326160>,  <40.063133, 39.779274, 30.452871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860256, 39.759659, 30.326160>,  <39.522125, 39.726967, 30.114975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860256, 39.759659, 30.326160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533659, -0.082599, -0.841657,
		-0.025176, 0.993226, -0.113437,
		0.845325, 0.081726, 0.527964,
		40.113853, 39.784176, 30.484550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033878, 40.336349, 29.962780>,  <39.522125, 39.726967, 30.114975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033878, 40.336349, 29.962780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174034, 39.983006, 30.087294>,  <40.258129, 39.771000, 30.162003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174034, 39.983006, 30.087294>,  <40.033878, 40.336349, 29.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174034, 39.983006, 30.087294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597360, -0.045207, -0.800698,
		0.721378, 0.466508, 0.511844,
		0.350393, -0.883361, 0.311284,
		40.279152, 39.717999, 30.180679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641788, 40.350471, 29.711594>,  <40.033878, 40.336349, 29.962780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641788, 40.350471, 29.711594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600071, 39.960884, 29.792107>,  <40.575039, 39.727131, 29.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600071, 39.960884, 29.792107>,  <40.641788, 40.350471, 29.711594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600071, 39.960884, 29.792107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644857, -0.220300, -0.731866,
		0.757154, 0.053468, 0.651044,
		-0.104293, -0.973966, 0.201281,
		40.568783, 39.668694, 29.852491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255199, 40.032646, 29.530090>,  <40.641788, 40.350471, 29.711594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255199, 40.032646, 29.530090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038330, 39.697620, 29.557058>,  <40.908211, 39.496605, 29.573238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038330, 39.697620, 29.557058>,  <41.255199, 40.032646, 29.530090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038330, 39.697620, 29.557058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452222, -0.358473, -0.816696,
		0.708200, -0.412298, 0.573116,
		-0.542169, -0.837560, 0.067421,
		40.875679, 39.446354, 29.577284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707542, 39.424675, 29.484419>,  <41.255199, 40.032646, 29.530090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707542, 39.424675, 29.484419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352863, 39.300972, 29.346935>,  <41.140057, 39.226749, 29.264446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352863, 39.300972, 29.346935>,  <41.707542, 39.424675, 29.484419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352863, 39.300972, 29.346935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442648, -0.353064, -0.824262,
		0.133558, -0.883009, 0.449952,
		-0.886693, -0.309257, -0.343708,
		41.086857, 39.208195, 29.243822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813908, 38.768932, 29.113806>,  <41.707542, 39.424675, 29.484419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813908, 38.768932, 29.113806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456577, 38.897362, 28.988029>,  <41.242180, 38.974419, 28.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456577, 38.897362, 28.988029>,  <41.813908, 38.768932, 29.113806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456577, 38.897362, 28.988029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232360, -0.268906, -0.934718,
		-0.384669, -0.908075, 0.165617,
		-0.893330, 0.321075, -0.314441,
		41.188580, 38.993683, 28.893698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603596, 38.254543, 28.714344>,  <41.813908, 38.768932, 29.113806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603596, 38.254543, 28.714344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387268, 38.565449, 28.585730>,  <41.257473, 38.751991, 28.508562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387268, 38.565449, 28.585730>,  <41.603596, 38.254543, 28.714344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387268, 38.565449, 28.585730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334758, -0.151794, -0.929998,
		-0.771657, -0.610595, -0.178101,
		-0.540817, 0.777260, -0.321534,
		41.225021, 38.798626, 28.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179558, 38.059361, 28.060083>,  <41.603596, 38.254543, 28.714344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179558, 38.059361, 28.060083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211571, 38.457947, 28.049929>,  <41.230778, 38.697098, 28.043837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211571, 38.457947, 28.049929>,  <41.179558, 38.059361, 28.060083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211571, 38.457947, 28.049929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438103, -0.058041, -0.897049,
		-0.895354, 0.060674, -0.441202,
		0.080036, 0.996469, -0.025386,
		41.235580, 38.756886, 28.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966267, 38.189110, 27.402822>,  <41.179558, 38.059361, 28.060083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966267, 38.189110, 27.402822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124432, 38.535046, 27.526562>,  <41.219330, 38.742607, 27.600805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124432, 38.535046, 27.526562>,  <40.966267, 38.189110, 27.402822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124432, 38.535046, 27.526562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322792, 0.184468, -0.928319,
		-0.859914, 0.466927, -0.206222,
		0.395416, 0.864841, 0.309347,
		41.243057, 38.794498, 27.619366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004089, 38.562454, 26.818583>,  <40.966267, 38.189110, 27.402822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004089, 38.562454, 26.818583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252811, 38.782207, 27.041845>,  <41.402046, 38.914059, 27.175802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252811, 38.782207, 27.041845>,  <41.004089, 38.562454, 26.818583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252811, 38.782207, 27.041845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481375, 0.294070, -0.825712,
		-0.617767, 0.782115, -0.081604,
		0.621805, 0.549380, 0.558158,
		41.439354, 38.947021, 27.209293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059250, 39.237331, 26.486814>,  <41.004089, 38.562454, 26.818583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059250, 39.237331, 26.486814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390247, 39.179398, 26.703802>,  <41.588848, 39.144638, 26.833994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390247, 39.179398, 26.703802>,  <41.059250, 39.237331, 26.486814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390247, 39.179398, 26.703802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561143, 0.180246, -0.807855,
		0.019230, 0.972900, 0.230427,
		0.827496, -0.144838, 0.542469,
		41.638496, 39.135944, 26.866543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466690, 39.739540, 26.274530>,  <41.059250, 39.237331, 26.486814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466690, 39.739540, 26.274530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689503, 39.447056, 26.432032>,  <41.823189, 39.271564, 26.526533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689503, 39.447056, 26.432032>,  <41.466690, 39.739540, 26.274530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689503, 39.447056, 26.432032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460575, -0.122541, -0.879121,
		0.691077, 0.671052, 0.268520,
		0.557031, -0.731214, 0.393755,
		41.856613, 39.227692, 26.550158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163235, 40.023659, 26.154566>,  <41.466690, 39.739540, 26.274530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163235, 40.023659, 26.154566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215401, 39.636211, 26.239204>,  <42.246700, 39.403744, 26.289988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215401, 39.636211, 26.239204>,  <42.163235, 40.023659, 26.154566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215401, 39.636211, 26.239204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604901, -0.091364, -0.791042,
		0.785549, 0.231158, 0.574003,
		0.130412, -0.968617, 0.211599,
		42.254524, 39.345627, 26.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826939, 39.909794, 25.940748>,  <42.163235, 40.023659, 26.154566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826939, 39.909794, 25.940748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671600, 39.541245, 25.947062>,  <42.578396, 39.320114, 25.950850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671600, 39.541245, 25.947062>,  <42.826939, 39.909794, 25.940748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671600, 39.541245, 25.947062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646642, -0.284673, -0.707683,
		0.656536, -0.264620, 0.706354,
		-0.388347, -0.921378, 0.015784,
		42.555096, 39.264832, 25.951797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353012, 39.472961, 25.917807>,  <42.826939, 39.909794, 25.940748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353012, 39.472961, 25.917807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047630, 39.270771, 25.756992>,  <42.864403, 39.149456, 25.660503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047630, 39.270771, 25.756992>,  <43.353012, 39.472961, 25.917807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047630, 39.270771, 25.756992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582411, -0.269750, -0.766833,
		0.279164, -0.819593, 0.500335,
		-0.763456, -0.505473, -0.402036,
		42.818592, 39.119129, 25.636381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706490, 39.075352, 25.507605>,  <43.353012, 39.472961, 25.917807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706490, 39.075352, 25.507605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326939, 39.026257, 25.391287>,  <43.099209, 38.996799, 25.321497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326939, 39.026257, 25.391287>,  <43.706490, 39.075352, 25.507605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326939, 39.026257, 25.391287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315222, -0.321408, -0.892935,
		0.016131, -0.938953, 0.343666,
		-0.948881, -0.122735, -0.290794,
		43.042274, 38.989437, 25.304049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672501, 38.547405, 25.163954>,  <43.706490, 39.075352, 25.507605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672501, 38.547405, 25.163954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349640, 38.735664, 25.021404>,  <43.155922, 38.848618, 24.935875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349640, 38.735664, 25.021404>,  <43.672501, 38.547405, 25.163954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349640, 38.735664, 25.021404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265501, -0.249770, -0.931195,
		-0.527273, -0.846232, 0.076645,
		-0.807151, 0.470644, -0.356372,
		43.107494, 38.876858, 24.914494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041515, 37.933208, 25.118357>,  <43.672501, 38.547405, 25.163954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041515, 37.933208, 25.118357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425991, 37.861691, 25.202404>,  <44.656677, 37.818779, 25.252832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425991, 37.861691, 25.202404>,  <44.041515, 37.933208, 25.118357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425991, 37.861691, 25.202404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166002, 0.233510, 0.958080,
		-0.220366, -0.955775, 0.194767,
		0.961188, -0.178797, 0.210118,
		44.714348, 37.808052, 25.265440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939056, 37.418804, 25.582312>,  <44.041515, 37.933208, 25.118357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939056, 37.418804, 25.582312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304352, 37.557198, 25.668375>,  <44.523529, 37.640232, 25.720013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304352, 37.557198, 25.668375>,  <43.939056, 37.418804, 25.582312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304352, 37.557198, 25.668375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201756, -0.074770, 0.976578,
		0.353964, -0.935258, 0.001521,
		0.913238, 0.345980, 0.215160,
		44.578323, 37.660992, 25.732924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354748, 36.951302, 25.985306>,  <43.939056, 37.418804, 25.582312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354748, 36.951302, 25.985306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536537, 37.303333, 26.040306>,  <44.645611, 37.514553, 26.073307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536537, 37.303333, 26.040306>,  <44.354748, 36.951302, 25.985306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536537, 37.303333, 26.040306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080722, -0.113038, 0.990306,
		0.887095, -0.461168, 0.019669,
		0.454474, 0.880083, 0.137502,
		44.672878, 37.567360, 26.081556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760841, 36.966953, 26.625759>,  <44.354748, 36.951302, 25.985306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760841, 36.966953, 26.625759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754810, 37.366138, 26.600954>,  <44.751194, 37.605648, 26.586071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754810, 37.366138, 26.600954>,  <44.760841, 36.966953, 26.625759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754810, 37.366138, 26.600954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209437, 0.057492, 0.976130,
		0.977706, 0.027703, 0.208144,
		-0.015076, 0.997962, -0.062012,
		44.750286, 37.665527, 26.582350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321198, 37.233192, 27.087641>,  <44.760841, 36.966953, 26.625759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321198, 37.233192, 27.087641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042393, 37.513077, 27.024931>,  <44.875111, 37.681007, 26.987305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042393, 37.513077, 27.024931>,  <45.321198, 37.233192, 27.087641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042393, 37.513077, 27.024931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104261, 0.117420, 0.987594,
		0.709439, 0.704711, -0.008891,
		-0.697012, 0.699711, -0.156777,
		44.833290, 37.722992, 26.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361229, 37.692688, 27.683508>,  <45.321198, 37.233192, 27.087641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361229, 37.692688, 27.683508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019169, 37.825787, 27.524509>,  <44.813934, 37.905647, 27.429110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019169, 37.825787, 27.524509>,  <45.361229, 37.692688, 27.683508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019169, 37.825787, 27.524509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359588, 0.171559, 0.917205,
		0.373394, 0.927279, -0.027056,
		-0.855146, 0.332749, -0.397497,
		44.762627, 37.925610, 27.405260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302792, 38.269447, 27.981277>,  <45.361229, 37.692688, 27.683508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302792, 38.269447, 27.981277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931419, 38.198784, 27.850548>,  <44.708595, 38.156384, 27.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931419, 38.198784, 27.850548>,  <45.302792, 38.269447, 27.981277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931419, 38.198784, 27.850548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367262, 0.303725, 0.879130,
		-0.056044, 0.936238, -0.346868,
		-0.928428, -0.176661, -0.326823,
		44.652889, 38.145786, 27.752501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812641, 38.872055, 28.142441>,  <45.302792, 38.269447, 27.981277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812641, 38.872055, 28.142441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578831, 38.552013, 28.088545>,  <44.438545, 38.359989, 28.056208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578831, 38.552013, 28.088545>,  <44.812641, 38.872055, 28.142441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578831, 38.552013, 28.088545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469893, 0.198442, 0.860128,
		-0.661456, 0.566084, -0.491960,
		-0.584531, -0.800106, -0.134739,
		44.403473, 38.311981, 28.048122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157616, 39.139580, 28.359634>,  <44.812641, 38.872055, 28.142441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157616, 39.139580, 28.359634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154922, 38.739971, 28.377132>,  <44.153305, 38.500206, 28.387632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154922, 38.739971, 28.377132>,  <44.157616, 39.139580, 28.359634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154922, 38.739971, 28.377132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425173, 0.042457, 0.904116,
		-0.905087, -0.012512, -0.425042,
		-0.006734, -0.999020, 0.043747,
		44.152901, 38.440266, 28.390257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529800, 39.040676, 28.717695>,  <44.157616, 39.139580, 28.359634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529800, 39.040676, 28.717695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686718, 38.672749, 28.715446>,  <43.780869, 38.451992, 28.714098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686718, 38.672749, 28.715446>,  <43.529800, 39.040676, 28.717695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686718, 38.672749, 28.715446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493880, -0.215785, 0.842330,
		-0.776006, -0.327666, -0.538933,
		0.392297, -0.919822, -0.005623,
		43.804405, 38.396801, 28.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999641, 38.676971, 28.941561>,  <43.529800, 39.040676, 28.717695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999641, 38.676971, 28.941561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326683, 38.458031, 29.013042>,  <43.522907, 38.326668, 29.055931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326683, 38.458031, 29.013042>,  <42.999641, 38.676971, 28.941561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326683, 38.458031, 29.013042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346443, -0.219748, 0.911969,
		-0.459894, -0.807541, -0.369291,
		0.817603, -0.547347, 0.178706,
		43.571964, 38.293827, 29.066654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709347, 37.999130, 29.067030>,  <42.999641, 38.676971, 28.941561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709347, 37.999130, 29.067030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063904, 38.070454, 29.237913>,  <43.276638, 38.113247, 29.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063904, 38.070454, 29.237913>,  <42.709347, 37.999130, 29.067030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063904, 38.070454, 29.237913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364212, -0.301016, 0.881328,
		0.285746, -0.936800, -0.201876,
		0.886396, 0.178311, 0.427208,
		43.329823, 38.123947, 29.366076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882622, 37.464958, 29.528622>,  <42.709347, 37.999130, 29.067030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882622, 37.464958, 29.528622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075535, 37.789238, 29.661388>,  <43.191284, 37.983807, 29.741049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075535, 37.789238, 29.661388>,  <42.882622, 37.464958, 29.528622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075535, 37.789238, 29.661388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424127, -0.115437, 0.898215,
		0.766499, -0.573968, 0.288167,
		0.482282, 0.810700, 0.331918,
		43.220219, 38.032448, 29.760963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217907, 37.334095, 30.219837>,  <42.882622, 37.464958, 29.528622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217907, 37.334095, 30.219837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134705, 37.723572, 30.182608>,  <43.084782, 37.957256, 30.160269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134705, 37.723572, 30.182608>,  <43.217907, 37.334095, 30.219837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134705, 37.723572, 30.182608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399539, 0.002276, 0.916713,
		0.892806, 0.227870, 0.388553,
		-0.208007, 0.973689, -0.093075,
		43.072304, 38.015678, 30.154686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413605, 37.567715, 30.835829>,  <43.217907, 37.334095, 30.219837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413605, 37.567715, 30.835829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241722, 37.911201, 30.724144>,  <43.138592, 38.117294, 30.657133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241722, 37.911201, 30.724144>,  <43.413605, 37.567715, 30.835829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241722, 37.911201, 30.724144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450602, 0.064036, 0.890425,
		0.782502, 0.508435, 0.359422,
		-0.429708, 0.858716, -0.279210,
		43.112808, 38.168816, 30.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503811, 38.060436, 31.391174>,  <43.413605, 37.567715, 30.835829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503811, 38.060436, 31.391174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189915, 38.198730, 31.185398>,  <43.001575, 38.281708, 31.061932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189915, 38.198730, 31.185398>,  <43.503811, 38.060436, 31.391174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189915, 38.198730, 31.185398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510989, 0.108898, 0.852662,
		0.350820, 0.931990, 0.091212,
		-0.784739, 0.345739, -0.514440,
		42.954494, 38.302452, 31.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484989, 38.734943, 31.569317>,  <43.503811, 38.060436, 31.391174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484989, 38.734943, 31.569317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117111, 38.639412, 31.444664>,  <42.896385, 38.582092, 31.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117111, 38.639412, 31.444664>,  <43.484989, 38.734943, 31.569317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117111, 38.639412, 31.444664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390553, 0.475090, 0.788516,
		-0.040269, 0.846906, -0.530216,
		-0.919699, -0.238831, -0.311630,
		42.841202, 38.567764, 31.351175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140411, 39.286129, 31.801811>,  <43.484989, 38.734943, 31.569317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140411, 39.286129, 31.801811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852196, 39.022003, 31.717133>,  <42.679268, 38.863529, 31.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852196, 39.022003, 31.717133>,  <43.140411, 39.286129, 31.801811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852196, 39.022003, 31.717133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545245, 0.350902, 0.761299,
		-0.428409, 0.663971, -0.612869,
		-0.720538, -0.660311, -0.211697,
		42.636036, 38.823910, 31.653624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562492, 39.638103, 31.696733>,  <43.140411, 39.286129, 31.801811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562492, 39.638103, 31.696733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457298, 39.267246, 31.803493>,  <42.394180, 39.044731, 31.867550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457298, 39.267246, 31.803493>,  <42.562492, 39.638103, 31.696733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457298, 39.267246, 31.803493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629633, 0.374539, 0.680649,
		-0.731026, 0.010953, -0.682262,
		-0.262989, -0.927146, 0.266902,
		42.378403, 38.989101, 31.883564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837963, 39.598030, 31.776312>,  <42.562492, 39.638103, 31.696733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837963, 39.598030, 31.776312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966751, 39.286304, 31.991350>,  <42.044025, 39.099270, 32.120373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966751, 39.286304, 31.991350>,  <41.837963, 39.598030, 31.776312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966751, 39.286304, 31.991350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654206, 0.227326, 0.721345,
		-0.684361, -0.583950, -0.436637,
		0.321970, -0.779311, 0.537596,
		42.063343, 39.052509, 32.152630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222252, 39.293930, 32.027378>,  <41.837963, 39.598030, 31.776312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222252, 39.293930, 32.027378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484509, 39.128410, 32.280014>,  <41.641861, 39.029099, 32.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484509, 39.128410, 32.280014>,  <41.222252, 39.293930, 32.027378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484509, 39.128410, 32.280014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618692, 0.185097, 0.763517,
		-0.432851, -0.891351, -0.134660,
		0.655637, -0.413802, 0.631591,
		41.681198, 39.004269, 32.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810658, 38.852444, 32.375595>,  <41.222252, 39.293930, 32.027378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810658, 38.852444, 32.375595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140182, 38.911953, 32.594391>,  <41.337898, 38.947659, 32.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140182, 38.911953, 32.594391>,  <40.810658, 38.852444, 32.375595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140182, 38.911953, 32.594391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554573, 0.011700, 0.832053,
		0.117389, -0.988802, 0.092145,
		0.823814, 0.148775, 0.546989,
		41.387325, 38.956585, 32.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777065, 38.319908, 32.885571>,  <40.810658, 38.852444, 32.375595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777065, 38.319908, 32.885571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017498, 38.602608, 33.034817>,  <41.161758, 38.772228, 33.124363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017498, 38.602608, 33.034817>,  <40.777065, 38.319908, 32.885571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017498, 38.602608, 33.034817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426802, -0.110842, 0.897527,
		0.675679, -0.698732, 0.235015,
		0.601081, 0.706745, 0.373114,
		41.197823, 38.814632, 33.146751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115074, 38.025845, 33.508369>,  <40.777065, 38.319908, 32.885571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115074, 38.025845, 33.508369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155888, 38.422485, 33.540134>,  <41.180374, 38.660469, 33.559193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155888, 38.422485, 33.540134>,  <41.115074, 38.025845, 33.508369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155888, 38.422485, 33.540134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375158, -0.035574, 0.926278,
		0.921328, -0.124303, 0.368380,
		0.102034, 0.991606, 0.079409,
		41.186497, 38.719967, 33.563957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297302, 38.065586, 34.211128>,  <41.115074, 38.025845, 33.508369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297302, 38.065586, 34.211128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187595, 38.438370, 34.116272>,  <41.121769, 38.662041, 34.059357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187595, 38.438370, 34.116272>,  <41.297302, 38.065586, 34.211128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187595, 38.438370, 34.116272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384353, 0.119813, 0.915378,
		0.881504, 0.342207, 0.325339,
		-0.274269, 0.931954, -0.237144,
		41.105316, 38.717957, 34.045128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389904, 38.303249, 34.856602>,  <41.297302, 38.065586, 34.211128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389904, 38.303249, 34.856602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192478, 38.585243, 34.652882>,  <41.074020, 38.754440, 34.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192478, 38.585243, 34.652882>,  <41.389904, 38.303249, 34.856602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192478, 38.585243, 34.652882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231674, 0.457864, 0.858305,
		0.838283, 0.541623, -0.062659,
		-0.493567, 0.704986, -0.509300,
		41.044407, 38.796738, 34.500092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693871, 39.036514, 34.946712>,  <41.389904, 38.303249, 34.856602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693871, 39.036514, 34.946712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299046, 39.049614, 34.883926>,  <41.062153, 39.057472, 34.846252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299046, 39.049614, 34.883926>,  <41.693871, 39.036514, 34.946712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299046, 39.049614, 34.883926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137502, 0.330739, 0.933651,
		0.082489, 0.943154, -0.321956,
		-0.987060, 0.032747, -0.156968,
		41.002926, 39.059437, 34.836838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442932, 39.645275, 35.155979>,  <41.693871, 39.036514, 34.946712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442932, 39.645275, 35.155979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095989, 39.446358, 35.148136>,  <40.887821, 39.327007, 35.143429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095989, 39.446358, 35.148136>,  <41.442932, 39.645275, 35.155979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095989, 39.446358, 35.148136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289517, 0.472137, 0.832627,
		-0.404803, 0.727864, -0.553488,
		-0.867361, -0.497294, -0.019606,
		40.835781, 39.297169, 35.142254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841656, 40.235115, 35.255062>,  <41.442932, 39.645275, 35.155979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841656, 40.235115, 35.255062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705772, 39.866249, 35.329056>,  <40.624245, 39.644932, 35.373451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705772, 39.866249, 35.329056>,  <40.841656, 40.235115, 35.255062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705772, 39.866249, 35.329056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382266, 0.315074, 0.868677,
		-0.859344, 0.224381, -0.459544,
		-0.339705, -0.922161, 0.184984,
		40.603859, 39.589600, 35.384552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125221, 40.329796, 35.436939>,  <40.841656, 40.235115, 35.255062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125221, 40.329796, 35.436939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226166, 39.977692, 35.597668>,  <40.286732, 39.766430, 35.694103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226166, 39.977692, 35.597668>,  <40.125221, 40.329796, 35.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226166, 39.977692, 35.597668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343361, 0.306773, 0.887690,
		-0.904664, -0.361987, -0.224829,
		0.252361, -0.880259, 0.401819,
		40.301872, 39.713615, 35.718212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598915, 40.129036, 35.811409>,  <40.125221, 40.329796, 35.436939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598915, 40.129036, 35.811409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893970, 39.901764, 35.957317>,  <40.071003, 39.765400, 36.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893970, 39.901764, 35.957317>,  <39.598915, 40.129036, 35.811409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893970, 39.901764, 35.957317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276675, 0.238456, 0.930908,
		-0.615903, -0.787600, 0.018695,
		0.737642, -0.568177, 0.364775,
		40.115261, 39.731312, 36.066750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302731, 39.726719, 36.374737>,  <39.598915, 40.129036, 35.811409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302731, 39.726719, 36.374737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694553, 39.688892, 36.445766>,  <39.929646, 39.666199, 36.488384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694553, 39.688892, 36.445766>,  <39.302731, 39.726719, 36.374737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694553, 39.688892, 36.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126513, 0.396767, 0.909159,
		-0.156429, -0.913036, 0.376691,
		0.979553, -0.094563, 0.177576,
		39.988419, 39.660522, 36.499039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301453, 39.287083, 36.970528>,  <39.302731, 39.726719, 36.374737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301453, 39.287083, 36.970528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651890, 39.479561, 36.958473>,  <39.862152, 39.595047, 36.951241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651890, 39.479561, 36.958473>,  <39.301453, 39.287083, 36.970528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651890, 39.479561, 36.958473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020316, 0.099288, 0.994851,
		0.481714, -0.870970, 0.096762,
		0.876093, 0.481200, -0.030134,
		39.914719, 39.623920, 36.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877331, 38.958588, 37.393101>,  <39.301453, 39.287083, 36.970528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877331, 38.958588, 37.393101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995255, 39.339714, 37.364178>,  <40.066010, 39.568390, 37.346825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995255, 39.339714, 37.364178>,  <39.877331, 38.958588, 37.393101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995255, 39.339714, 37.364178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139380, 0.031983, 0.989722,
		0.945337, -0.301854, -0.123375,
		0.294806, 0.952817, -0.072307,
		40.083694, 39.625561, 37.342487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581638, 39.093822, 37.741051>,  <39.877331, 38.958588, 37.393101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581638, 39.093822, 37.741051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405949, 39.453125, 37.735092>,  <40.300533, 39.668705, 37.731518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405949, 39.453125, 37.735092>,  <40.581638, 39.093822, 37.741051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405949, 39.453125, 37.735092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339120, 0.181130, 0.923141,
		0.831912, 0.400418, -0.384172,
		-0.439228, 0.898252, -0.014895,
		40.274181, 39.722599, 37.730625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108868, 39.430023, 38.226952>,  <40.581638, 39.093822, 37.741051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108868, 39.430023, 38.226952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796616, 39.669827, 38.156288>,  <40.609264, 39.813709, 38.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796616, 39.669827, 38.156288>,  <41.108868, 39.430023, 38.226952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796616, 39.669827, 38.156288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105835, 0.405377, 0.908002,
		0.615970, 0.690115, -0.379898,
		-0.780627, 0.599509, -0.176662,
		40.562428, 39.849678, 38.103291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262383, 40.158241, 38.469006>,  <41.108868, 39.430023, 38.226952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262383, 40.158241, 38.469006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869137, 40.094223, 38.504517>,  <40.633190, 40.055813, 38.525822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869137, 40.094223, 38.504517>,  <41.262383, 40.158241, 38.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869137, 40.094223, 38.504517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034123, 0.316283, 0.948051,
		-0.179809, 0.935067, -0.305480,
		-0.983110, -0.160044, 0.088778,
		40.574203, 40.046211, 38.531151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769043, 40.806580, 38.448929>,  <41.262383, 40.158241, 38.469006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769043, 40.806580, 38.448929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646622, 40.500923, 38.676056>,  <40.573170, 40.317528, 38.812332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646622, 40.500923, 38.676056>,  <40.769043, 40.806580, 38.448929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646622, 40.500923, 38.676056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061242, 0.579400, 0.812739,
		-0.950042, 0.283517, -0.130531,
		-0.306055, -0.764142, 0.567818,
		40.554806, 40.271679, 38.846401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428635, 40.895313, 38.505093>,  <40.769043, 40.806580, 38.448929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428635, 40.895313, 38.505093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332661, 41.277760, 38.437840>,  <41.275074, 41.507229, 38.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332661, 41.277760, 38.437840>,  <41.428635, 40.895313, 38.505093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332661, 41.277760, 38.437840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330435, 0.082419, 0.940224,
		0.912821, 0.281154, 0.296159,
		-0.239939, 0.956117, -0.168137,
		41.260677, 41.564594, 38.387398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075695, 40.977146, 38.970184>,  <41.428635, 40.895313, 38.505093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075695, 40.977146, 38.970184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304424, 40.650002, 38.995834>,  <42.441662, 40.453712, 39.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304424, 40.650002, 38.995834>,  <42.075695, 40.977146, 38.970184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304424, 40.650002, 38.995834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488775, -0.276876, 0.827308,
		-0.658872, -0.504419, -0.558077,
		0.571828, -0.817864, 0.064121,
		42.475971, 40.404644, 39.015072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748337, 40.264740, 39.036148>,  <42.075695, 40.977146, 38.970184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748337, 40.264740, 39.036148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097813, 40.294388, 39.228470>,  <42.307499, 40.312176, 39.343861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097813, 40.294388, 39.228470>,  <41.748337, 40.264740, 39.036148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097813, 40.294388, 39.228470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475253, -0.081070, 0.876107,
		0.103914, -0.993949, -0.035605,
		0.873691, 0.074118, 0.480801,
		42.359921, 40.316624, 39.372711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565769, 39.982349, 39.592548>,  <41.748337, 40.264740, 39.036148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565769, 39.982349, 39.592548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923752, 40.121372, 39.704449>,  <42.138542, 40.204788, 39.771591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923752, 40.121372, 39.704449>,  <41.565769, 39.982349, 39.592548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923752, 40.121372, 39.704449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258396, -0.107395, 0.960051,
		0.363720, -0.931487, -0.006305,
		0.894952, 0.347561, 0.279755,
		42.192238, 40.225639, 39.788376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919441, 39.496864, 40.040447>,  <41.565769, 39.982349, 39.592548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919441, 39.496864, 40.040447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051384, 39.867130, 40.114578>,  <42.130550, 40.089291, 40.159058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051384, 39.867130, 40.114578>,  <41.919441, 39.496864, 40.040447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051384, 39.867130, 40.114578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304861, -0.081346, 0.948917,
		0.893450, -0.369506, 0.255365,
		0.329858, 0.925661, 0.185327,
		42.150341, 40.144829, 40.170177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094482, 39.341198, 40.698128>,  <41.919441, 39.496864, 40.040447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094482, 39.341198, 40.698128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105274, 39.739754, 40.665924>,  <42.111752, 39.978886, 40.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105274, 39.739754, 40.665924>,  <42.094482, 39.341198, 40.698128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105274, 39.739754, 40.665924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034407, 0.079568, 0.996236,
		0.999044, -0.029650, -0.032136,
		0.026981, 0.996389, -0.080512,
		42.113369, 40.038670, 40.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710835, 39.611553, 41.054192>,  <42.094482, 39.341198, 40.698128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710835, 39.611553, 41.054192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427731, 39.893356, 41.033257>,  <42.257866, 40.062439, 41.020695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427731, 39.893356, 41.033257>,  <42.710835, 39.611553, 41.054192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427731, 39.893356, 41.033257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109024, 0.182123, 0.977213,
		0.697986, 0.685930, -0.205708,
		-0.707764, 0.704508, -0.052336,
		42.215401, 40.104710, 41.017555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016911, 40.180130, 41.411861>,  <42.710835, 39.611553, 41.054192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016911, 40.180130, 41.411861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621902, 40.242970, 41.407551>,  <42.384895, 40.280674, 41.404964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621902, 40.242970, 41.407551>,  <43.016911, 40.180130, 41.411861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621902, 40.242970, 41.407551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008625, 0.122290, 0.992457,
		0.157229, 0.979983, -0.122119,
		-0.987524, 0.157096, -0.010776,
		42.325645, 40.290100, 41.404320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909363, 40.454632, 42.054245>,  <43.016911, 40.180130, 41.411861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909363, 40.454632, 42.054245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524502, 40.388054, 41.967941>,  <42.293583, 40.348106, 41.916157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524502, 40.388054, 41.967941>,  <42.909363, 40.454632, 42.054245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524502, 40.388054, 41.967941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210809, -0.047094, 0.976392,
		-0.172679, 0.984925, 0.010223,
		-0.962155, -0.166447, -0.215763,
		42.235855, 40.338120, 41.903214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440346, 40.739437, 42.592712>,  <42.909363, 40.454632, 42.054245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440346, 40.739437, 42.592712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218674, 40.461014, 42.410114>,  <42.085670, 40.293961, 42.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218674, 40.461014, 42.410114>,  <42.440346, 40.739437, 42.592712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218674, 40.461014, 42.410114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275890, -0.363824, 0.889672,
		-0.785349, 0.618979, 0.009588,
		-0.554177, -0.696058, -0.456499,
		42.052422, 40.252197, 42.273163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905457, 40.580914, 43.070808>,  <42.440346, 40.739437, 42.592712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905457, 40.580914, 43.070808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867348, 40.279102, 42.811081>,  <41.844482, 40.098015, 42.655247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867348, 40.279102, 42.811081>,  <41.905457, 40.580914, 43.070808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867348, 40.279102, 42.811081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425775, -0.558716, 0.711724,
		-0.899799, 0.344272, -0.268027,
		-0.095276, -0.754528, -0.649315,
		41.838764, 40.052742, 42.616287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247711, 40.348450, 43.249577>,  <41.905457, 40.580914, 43.070808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247711, 40.348450, 43.249577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438419, 40.067608, 43.038013>,  <41.552845, 39.899105, 42.911076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438419, 40.067608, 43.038013>,  <41.247711, 40.348450, 43.249577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438419, 40.067608, 43.038013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450733, -0.711838, 0.538634,
		-0.754670, -0.018412, -0.655846,
		0.476773, -0.702102, -0.528904,
		41.581451, 39.856976, 42.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688896, 39.958641, 43.066525>,  <41.247711, 40.348450, 43.249577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688896, 39.958641, 43.066525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039474, 39.766438, 43.054192>,  <41.249821, 39.651115, 43.046791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039474, 39.766438, 43.054192>,  <40.688896, 39.958641, 43.066525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039474, 39.766438, 43.054192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390026, -0.746043, 0.539722,
		-0.282341, -0.461014, -0.841278,
		0.876449, -0.480506, -0.030831,
		41.302410, 39.622284, 43.044941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535194, 39.339195, 42.752735>,  <40.688896, 39.958641, 43.066525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535194, 39.339195, 42.752735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847530, 39.328747, 43.002407>,  <41.034931, 39.322475, 43.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847530, 39.328747, 43.002407>,  <40.535194, 39.339195, 42.752735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847530, 39.328747, 43.002407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350895, -0.844973, 0.403601,
		0.516874, -0.534171, -0.668956,
		0.780842, -0.026123, 0.624182,
		41.081783, 39.320911, 43.189663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686153, 38.602394, 42.841000>,  <40.535194, 39.339195, 42.752735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686153, 38.602394, 42.841000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897339, 38.788074, 43.125473>,  <41.024048, 38.899483, 43.296158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897339, 38.788074, 43.125473>,  <40.686153, 38.602394, 42.841000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897339, 38.788074, 43.125473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321411, -0.665902, 0.673253,
		0.786100, -0.584032, -0.202371,
		0.527961, 0.464200, 0.711180,
		41.055729, 38.927334, 43.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051563, 38.036854, 43.162628>,  <40.686153, 38.602394, 42.841000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051563, 38.036854, 43.162628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025917, 38.366890, 43.387165>,  <41.010529, 38.564911, 43.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025917, 38.366890, 43.387165>,  <41.051563, 38.036854, 43.162628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025917, 38.366890, 43.387165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397583, -0.537054, 0.743976,
		0.915323, -0.175480, 0.362478,
		-0.064117, 0.825094, 0.561346,
		41.006683, 38.614418, 43.555569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435555, 38.034168, 43.799099>,  <41.051563, 38.036854, 43.162628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435555, 38.034168, 43.799099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101109, 38.248730, 43.845036>,  <40.900440, 38.377464, 43.872597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101109, 38.248730, 43.845036>,  <41.435555, 38.034168, 43.799099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101109, 38.248730, 43.845036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209529, -0.505775, 0.836833,
		0.506962, 0.675624, 0.535277,
		-0.836114, 0.536399, 0.114845,
		40.850273, 38.409649, 43.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455254, 38.236034, 44.483723>,  <41.435555, 38.034168, 43.799099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455254, 38.236034, 44.483723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072712, 38.289803, 44.379936>,  <40.843189, 38.322063, 44.317665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072712, 38.289803, 44.379936>,  <41.455254, 38.236034, 44.483723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072712, 38.289803, 44.379936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290602, -0.344141, 0.892814,
		0.030718, 0.929246, 0.368182,
		-0.956351, 0.134419, -0.259469,
		40.785805, 38.330128, 44.302094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150627, 38.362339, 45.191010>,  <41.455254, 38.236034, 44.483723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150627, 38.362339, 45.191010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850620, 38.288334, 44.937000>,  <40.670616, 38.243931, 44.784595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850620, 38.288334, 44.937000>,  <41.150627, 38.362339, 45.191010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850620, 38.288334, 44.937000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481181, -0.506099, 0.715772,
		-0.453811, 0.842397, 0.290555,
		-0.750014, -0.185015, -0.635018,
		40.625618, 38.232830, 44.746494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432976, 38.467297, 45.534088>,  <41.150627, 38.362339, 45.191010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432976, 38.467297, 45.534088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334679, 38.230003, 45.227444>,  <40.275700, 38.087627, 45.043457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334679, 38.230003, 45.227444>,  <40.432976, 38.467297, 45.534088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334679, 38.230003, 45.227444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661303, -0.475632, 0.580045,
		-0.708725, 0.649501, -0.275422,
		-0.245741, -0.593230, -0.766609,
		40.260956, 38.052036, 44.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715664, 38.342224, 45.573509>,  <40.432976, 38.467297, 45.534088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715664, 38.342224, 45.573509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872555, 38.039406, 45.364498>,  <39.966690, 37.857716, 45.239090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872555, 38.039406, 45.364498>,  <39.715664, 38.342224, 45.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872555, 38.039406, 45.364498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731025, -0.601333, 0.322493,
		-0.558355, 0.255488, -0.789282,
		0.392228, -0.757050, -0.522525,
		39.990223, 37.812290, 45.207741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197334, 37.872040, 45.550362>,  <39.715664, 38.342224, 45.573509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197334, 37.872040, 45.550362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458393, 37.668987, 45.325378>,  <39.615028, 37.547153, 45.190388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458393, 37.668987, 45.325378>,  <39.197334, 37.872040, 45.550362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458393, 37.668987, 45.325378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567714, -0.819264, 0.080666,
		-0.501750, 0.266668, -0.822882,
		0.652646, -0.507635, -0.562458,
		39.654186, 37.516697, 45.156643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891972, 37.421719, 45.048916>,  <39.197334, 37.872040, 45.550362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891972, 37.421719, 45.048916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251839, 37.290169, 45.163761>,  <39.467758, 37.211239, 45.232670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251839, 37.290169, 45.163761>,  <38.891972, 37.421719, 45.048916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251839, 37.290169, 45.163761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411304, -0.859002, 0.304866,
		0.146370, -0.392371, -0.908086,
		0.899669, -0.328876, 0.287116,
		39.521740, 37.191505, 45.249897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819958, 36.631275, 45.064510>,  <38.891972, 37.421719, 45.048916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819958, 36.631275, 45.064510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132717, 36.745594, 45.286121>,  <39.320374, 36.814186, 45.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132717, 36.745594, 45.286121>,  <38.819958, 36.631275, 45.064510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132717, 36.745594, 45.286121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218467, -0.706739, 0.672898,
		0.583869, -0.647177, -0.490163,
		0.781901, 0.285800, 0.554030,
		39.367287, 36.831333, 45.452332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417572, 36.186569, 45.143101>,  <38.819958, 36.631275, 45.064510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417572, 36.186569, 45.143101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378483, 36.407784, 45.474064>,  <39.355030, 36.540512, 45.672642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378483, 36.407784, 45.474064>,  <39.417572, 36.186569, 45.143101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378483, 36.407784, 45.474064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022197, -0.832392, 0.553743,
		0.994966, 0.035747, 0.093620,
		-0.097724, 0.553034, 0.827408,
		39.349167, 36.573692, 45.722286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751667, 35.688904, 45.475555>,  <39.417572, 36.186569, 45.143101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751667, 35.688904, 45.475555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581882, 35.951908, 45.724556>,  <39.480011, 36.109711, 45.873955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581882, 35.951908, 45.724556>,  <39.751667, 35.688904, 45.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581882, 35.951908, 45.724556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057664, -0.666482, 0.743288,
		0.903606, 0.351396, 0.244984,
		-0.424465, 0.657512, 0.622500,
		39.454544, 36.149162, 45.911304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389534, 36.092049, 45.342106>,  <39.751667, 35.688904, 45.475555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389534, 36.092049, 45.342106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128662, 36.394882, 45.326694>,  <39.972137, 36.576584, 45.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128662, 36.394882, 45.326694>,  <40.389534, 36.092049, 45.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128662, 36.394882, 45.326694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612951, 0.496754, -0.614432,
		-0.446039, -0.424336, -0.788028,
		-0.652182, 0.757083, -0.038526,
		39.933006, 36.622005, 45.315136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696877, 36.731686, 45.164749>,  <40.389534, 36.092049, 45.342106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696877, 36.731686, 45.164749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322529, 36.869011, 45.133053>,  <40.097919, 36.951408, 45.114037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322529, 36.869011, 45.133053>,  <40.696877, 36.731686, 45.164749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322529, 36.869011, 45.133053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341625, 0.829109, -0.442573,
		-0.086243, -0.441262, -0.893224,
		-0.935871, 0.343317, -0.079241,
		40.041767, 36.972008, 45.109280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452702, 36.863319, 44.450970>,  <40.696877, 36.731686, 45.164749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452702, 36.863319, 44.450970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295734, 37.120525, 44.714039>,  <40.201553, 37.274849, 44.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295734, 37.120525, 44.714039>,  <40.452702, 36.863319, 44.450970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295734, 37.120525, 44.714039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344939, 0.765726, -0.542845,
		-0.852658, 0.013836, -0.522286,
		-0.392417, 0.643018, 0.657675,
		40.178009, 37.313431, 44.911343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850334, 37.253265, 44.085159>,  <40.452702, 36.863319, 44.450970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850334, 37.253265, 44.085159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014935, 37.484837, 44.366730>,  <40.113693, 37.623779, 44.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014935, 37.484837, 44.366730>,  <39.850334, 37.253265, 44.085159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014935, 37.484837, 44.366730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330871, 0.624765, -0.707244,
		-0.849231, 0.523939, 0.065540,
		0.411499, 0.578928, 0.703925,
		40.138386, 37.658516, 44.577908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678577, 37.998524, 43.874207>,  <39.850334, 37.253265, 44.085159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678577, 37.998524, 43.874207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951694, 38.084522, 44.153511>,  <40.115566, 38.136120, 44.321095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951694, 38.084522, 44.153511>,  <39.678577, 37.998524, 43.874207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951694, 38.084522, 44.153511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268149, 0.815286, -0.513230,
		-0.679625, 0.537668, 0.499021,
		0.682792, 0.214992, 0.698264,
		40.156532, 38.149021, 44.362991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564892, 38.625713, 44.040844>,  <39.678577, 37.998524, 43.874207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564892, 38.625713, 44.040844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950294, 38.563831, 44.128235>,  <40.181534, 38.526703, 44.180668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950294, 38.563831, 44.128235>,  <39.564892, 38.625713, 44.040844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950294, 38.563831, 44.128235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257323, 0.760232, -0.596516,
		-0.073810, 0.630963, 0.772294,
		0.963502, -0.154700, 0.218474,
		40.239346, 38.517422, 44.193779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883595, 39.260101, 44.105579>,  <39.564892, 38.625713, 44.040844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883595, 39.260101, 44.105579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188046, 39.007797, 44.045143>,  <40.370716, 38.856415, 44.008881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188046, 39.007797, 44.045143>,  <39.883595, 39.260101, 44.105579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188046, 39.007797, 44.045143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381586, 0.623839, -0.682068,
		0.524478, 0.461486, 0.715509,
		0.761128, -0.630758, -0.151093,
		40.416386, 38.818569, 43.999817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489658, 39.571712, 44.275425>,  <39.883595, 39.260101, 44.105579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489658, 39.571712, 44.275425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549278, 39.276447, 44.012241>,  <40.585052, 39.099289, 43.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549278, 39.276447, 44.012241>,  <40.489658, 39.571712, 44.275425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549278, 39.276447, 44.012241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387934, 0.655696, -0.647742,
		0.909555, -0.158696, 0.384090,
		0.149052, -0.738158, -0.657956,
		40.593994, 39.055000, 43.814854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126957, 39.531845, 44.477863>,  <40.489658, 39.571712, 44.275425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126957, 39.531845, 44.477863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097641, 39.232594, 44.214066>,  <41.080051, 39.053043, 44.055786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097641, 39.232594, 44.214066>,  <41.126957, 39.531845, 44.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097641, 39.232594, 44.214066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629531, 0.478173, -0.612406,
		0.773511, -0.460054, 0.435926,
		-0.073292, -0.748132, -0.659490,
		41.075653, 39.008156, 44.016220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746140, 39.582527, 44.181118>,  <41.126957, 39.531845, 44.477863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746140, 39.582527, 44.181118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553089, 39.356010, 43.913872>,  <41.437260, 39.220100, 43.753525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553089, 39.356010, 43.913872>,  <41.746140, 39.582527, 44.181118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553089, 39.356010, 43.913872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613234, 0.326150, -0.719424,
		0.625312, -0.756927, 0.189862,
		-0.482627, -0.566294, -0.668118,
		41.408302, 39.186123, 43.713436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238796, 39.255718, 43.752361>,  <41.746140, 39.582527, 44.181118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238796, 39.255718, 43.752361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899696, 39.214710, 43.544201>,  <41.696236, 39.190105, 43.419304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899696, 39.214710, 43.544201>,  <42.238796, 39.255718, 43.752361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899696, 39.214710, 43.544201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485754, 0.243953, -0.839363,
		0.212993, -0.964354, -0.157018,
		-0.847748, -0.102507, -0.520399,
		41.645374, 39.183956, 43.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415783, 38.932659, 43.159664>,  <42.238796, 39.255718, 43.752361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415783, 38.932659, 43.159664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070301, 39.127121, 43.106495>,  <41.863014, 39.243797, 43.074593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070301, 39.127121, 43.106495>,  <42.415783, 38.932659, 43.159664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070301, 39.127121, 43.106495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373995, 0.441421, -0.815644,
		-0.337855, -0.754187, -0.563077,
		-0.863702, 0.486157, -0.132926,
		41.811192, 39.272968, 43.066616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353119, 38.902245, 42.455307>,  <42.415783, 38.932659, 43.159664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353119, 38.902245, 42.455307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090595, 39.177643, 42.578743>,  <41.933079, 39.342884, 42.652805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090595, 39.177643, 42.578743>,  <42.353119, 38.902245, 42.455307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090595, 39.177643, 42.578743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111289, 0.492865, -0.862960,
		-0.746237, -0.532029, -0.400095,
		-0.656312, 0.688498, 0.308585,
		41.893703, 39.384193, 42.671318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896641, 38.952339, 41.935745>,  <42.353119, 38.902245, 42.455307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896641, 38.952339, 41.935745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873924, 39.291267, 42.146957>,  <41.860294, 39.494625, 42.273685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873924, 39.291267, 42.146957>,  <41.896641, 38.952339, 41.935745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873924, 39.291267, 42.146957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149071, 0.515757, -0.843666,
		-0.987194, -0.126629, 0.097019,
		-0.056794, 0.847325, 0.528029,
		41.856888, 39.545464, 42.305367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386467, 39.339851, 41.686199>,  <41.896641, 38.952339, 41.935745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386467, 39.339851, 41.686199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588112, 39.636791, 41.862740>,  <41.709099, 39.814953, 41.968666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588112, 39.636791, 41.862740>,  <41.386467, 39.339851, 41.686199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588112, 39.636791, 41.862740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181875, 0.590832, -0.786028,
		-0.844272, 0.315973, 0.432858,
		0.504110, 0.742347, 0.441355,
		41.739346, 39.859497, 41.995148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027958, 39.977383, 41.518219>,  <41.386467, 39.339851, 41.686199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027958, 39.977383, 41.518219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395615, 40.092873, 41.625420>,  <41.616207, 40.162167, 41.689739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395615, 40.092873, 41.625420>,  <41.027958, 39.977383, 41.518219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395615, 40.092873, 41.625420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088637, 0.511300, -0.854819,
		-0.383833, 0.809452, 0.444365,
		0.919138, 0.288721, 0.268001,
		41.671356, 40.179489, 41.705818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115803, 40.730576, 41.372814>,  <41.027958, 39.977383, 41.518219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115803, 40.730576, 41.372814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476475, 40.557693, 41.367508>,  <41.692879, 40.453964, 41.364323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476475, 40.557693, 41.367508>,  <41.115803, 40.730576, 41.372814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476475, 40.557693, 41.367508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219513, 0.483956, -0.847113,
		0.372553, 0.760908, 0.531247,
		0.901675, -0.432210, -0.013270,
		41.746979, 40.428032, 41.363525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465492, 41.061367, 40.931492>,  <41.115803, 40.730576, 41.372814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465492, 41.061367, 40.931492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772514, 40.808796, 40.975613>,  <41.956726, 40.657253, 41.002083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772514, 40.808796, 40.975613>,  <41.465492, 41.061367, 40.931492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772514, 40.808796, 40.975613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347439, 0.265233, -0.899409,
		0.538656, 0.728665, 0.422962,
		0.767552, -0.631426, 0.110297,
		42.002781, 40.619370, 41.008701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097664, 41.383522, 40.807968>,  <41.465492, 41.061367, 40.931492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097664, 41.383522, 40.807968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169006, 40.995129, 40.744236>,  <42.211811, 40.762093, 40.705997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169006, 40.995129, 40.744236>,  <42.097664, 41.383522, 40.807968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169006, 40.995129, 40.744236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309698, 0.209090, -0.927561,
		0.933957, 0.116095, 0.338004,
		0.178358, -0.970981, -0.159327,
		42.222515, 40.703835, 40.696438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670807, 41.312378, 40.321487>,  <42.097664, 41.383522, 40.807968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670807, 41.312378, 40.321487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517509, 40.943459, 40.301506>,  <42.425533, 40.722107, 40.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517509, 40.943459, 40.301506>,  <42.670807, 41.312378, 40.321487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517509, 40.943459, 40.301506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326460, -0.084662, -0.941412,
		0.864032, -0.377094, 0.333539,
		-0.383239, -0.922297, -0.049956,
		42.402538, 40.666771, 40.286518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265041, 40.916435, 40.218983>,  <42.670807, 41.312378, 40.321487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265041, 40.916435, 40.218983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945011, 40.721443, 40.079128>,  <42.752995, 40.604446, 39.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945011, 40.721443, 40.079128>,  <43.265041, 40.916435, 40.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945011, 40.721443, 40.079128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467297, -0.140961, -0.872790,
		0.376183, -0.861681, 0.340577,
		-0.800075, -0.487480, -0.349634,
		42.704990, 40.575199, 39.974239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497219, 40.404110, 39.896210>,  <43.265041, 40.916435, 40.218983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497219, 40.404110, 39.896210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137405, 40.415840, 39.721863>,  <42.921516, 40.422878, 39.617256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137405, 40.415840, 39.721863>,  <43.497219, 40.404110, 39.896210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137405, 40.415840, 39.721863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434123, -0.051270, -0.899394,
		-0.048574, -0.998259, 0.033460,
		-0.899543, 0.029161, -0.435858,
		42.867546, 40.424637, 39.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649761, 39.887241, 39.400864>,  <43.497219, 40.404110, 39.896210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649761, 39.887241, 39.400864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345524, 40.134876, 39.322659>,  <43.162983, 40.283459, 39.275734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345524, 40.134876, 39.322659>,  <43.649761, 39.887241, 39.400864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345524, 40.134876, 39.322659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325687, 0.103324, -0.939815,
		-0.561628, -0.778494, -0.280217,
		-0.760593, 0.619089, -0.195516,
		43.117348, 40.320602, 39.264004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362125, 39.776367, 38.751259>,  <43.649761, 39.887241, 39.400864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362125, 39.776367, 38.751259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262882, 40.161163, 38.796894>,  <43.203335, 40.392040, 38.824276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262882, 40.161163, 38.796894>,  <43.362125, 39.776367, 38.751259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262882, 40.161163, 38.796894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355650, 0.200004, -0.912968,
		-0.901085, -0.185941, -0.391755,
		-0.248111, 0.961990, 0.114091,
		43.188450, 40.449760, 38.831120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793297, 40.186073, 38.251213>,  <43.362125, 39.776367, 38.751259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793297, 40.186073, 38.251213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111713, 40.377068, 38.399979>,  <43.302765, 40.491665, 38.489239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111713, 40.377068, 38.399979>,  <42.793297, 40.186073, 38.251213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111713, 40.377068, 38.399979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466389, -0.092303, -0.879751,
		-0.385737, 0.873779, -0.296170,
		0.796046, 0.477483, 0.371916,
		43.350529, 40.520313, 38.511555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102646, 40.776817, 37.775150>,  <42.793297, 40.186073, 38.251213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102646, 40.776817, 37.775150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416103, 40.639217, 37.982059>,  <43.604176, 40.556660, 38.106205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416103, 40.639217, 37.982059>,  <43.102646, 40.776817, 37.775150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416103, 40.639217, 37.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460077, -0.238135, -0.855348,
		0.417418, 0.908272, -0.028347,
		0.783640, -0.343996, 0.517277,
		43.651196, 40.536018, 38.137241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845608, 41.104527, 37.602470>,  <43.102646, 40.776817, 37.775150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845608, 41.104527, 37.602470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866825, 40.719429, 37.708538>,  <43.879555, 40.488373, 37.772179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866825, 40.719429, 37.708538>,  <43.845608, 41.104527, 37.602470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866825, 40.719429, 37.708538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371457, -0.227467, -0.900154,
		0.926934, 0.146247, 0.345552,
		0.053044, -0.962741, 0.265171,
		43.882740, 40.430607, 37.788090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453869, 40.906403, 37.312714>,  <43.845608, 41.104527, 37.602470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453869, 40.906403, 37.312714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213642, 40.589539, 37.356155>,  <44.069504, 40.399422, 37.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213642, 40.589539, 37.356155>,  <44.453869, 40.906403, 37.312714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213642, 40.589539, 37.356155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217264, -0.292396, -0.931290,
		0.769488, -0.535709, 0.347713,
		-0.600570, -0.792162, 0.108605,
		44.033470, 40.351891, 37.388737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804916, 40.238659, 37.305420>,  <44.453869, 40.906403, 37.312714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804916, 40.238659, 37.305420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426819, 40.235611, 37.174904>,  <44.199963, 40.233784, 37.096596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426819, 40.235611, 37.174904>,  <44.804916, 40.238659, 37.305420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426819, 40.235611, 37.174904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303684, -0.386801, -0.870725,
		-0.119571, -0.922132, 0.367934,
		-0.945240, -0.007622, -0.326287,
		44.143246, 40.233326, 37.077019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404663, 39.697784, 37.156109>,  <44.804916, 40.238659, 37.305420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404663, 39.697784, 37.156109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092957, 39.474895, 37.270828>,  <44.905933, 39.341164, 37.339661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092957, 39.474895, 37.270828>,  <45.404663, 39.697784, 37.156109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092957, 39.474895, 37.270828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460317, -0.819477, -0.341416,
		0.425268, -0.134036, 0.895087,
		-0.779266, -0.557218, 0.286798,
		44.859177, 39.307732, 37.356869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687908, 39.154980, 37.519413>,  <45.404663, 39.697784, 37.156109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687908, 39.154980, 37.519413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337620, 39.043468, 37.361729>,  <45.127445, 38.976562, 37.267120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337620, 39.043468, 37.361729>,  <45.687908, 39.154980, 37.519413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337620, 39.043468, 37.361729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432421, -0.816037, -0.383530,
		-0.214769, -0.506328, 0.835168,
		-0.875720, -0.278774, -0.394206,
		45.074905, 38.959835, 37.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577675, 38.426170, 37.592834>,  <45.687908, 39.154980, 37.519413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577675, 38.426170, 37.592834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374771, 38.515095, 37.259785>,  <45.253029, 38.568451, 37.059956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374771, 38.515095, 37.259785>,  <45.577675, 38.426170, 37.592834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374771, 38.515095, 37.259785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434037, -0.768766, -0.469691,
		-0.744510, -0.599647, 0.293476,
		-0.507263, 0.222310, -0.832623,
		45.222591, 38.581787, 37.009998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422249, 37.893276, 37.354725>,  <45.577675, 38.426170, 37.592834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422249, 37.893276, 37.354725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344421, 38.073765, 37.006348>,  <45.297726, 38.182056, 36.797321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344421, 38.073765, 37.006348>,  <45.422249, 37.893276, 37.354725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344421, 38.073765, 37.006348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, -0.796635, -0.491367,
		-0.915539, -0.402211, -0.003846,
		-0.194569, 0.451219, -0.870944,
		45.286049, 38.209129, 36.745064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294491, 37.417866, 36.987045>,  <45.422249, 37.893276, 37.354725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294491, 37.417866, 36.987045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321709, 37.696888, 36.701729>,  <45.338039, 37.864304, 36.530540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321709, 37.696888, 36.701729>,  <45.294491, 37.417866, 36.987045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321709, 37.696888, 36.701729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245876, -0.704620, -0.665624,
		-0.966910, -0.130086, -0.219462,
		0.068049, 0.697559, -0.713288,
		45.342125, 37.906155, 36.487743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044209, 37.150066, 36.347084>,  <45.294491, 37.417866, 36.987045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044209, 37.150066, 36.347084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293503, 37.443707, 36.239250>,  <45.443077, 37.619892, 36.174549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293503, 37.443707, 36.239250>,  <45.044209, 37.150066, 36.347084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293503, 37.443707, 36.239250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438862, -0.613630, -0.656398,
		-0.647287, 0.290779, -0.704604,
		0.623233, 0.734102, -0.269583,
		45.480473, 37.663937, 36.158375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149139, 36.993847, 35.545296>,  <45.044209, 37.150066, 36.347084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149139, 36.993847, 35.545296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418419, 37.237720, 35.712673>,  <45.579987, 37.384045, 35.813099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418419, 37.237720, 35.712673>,  <45.149139, 36.993847, 35.545296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418419, 37.237720, 35.712673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686922, -0.306119, -0.659112,
		-0.273758, 0.731148, -0.624883,
		0.673198, 0.609683, 0.418439,
		45.620377, 37.420624, 35.838203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517090, 37.498531, 35.031979>,  <45.149139, 36.993847, 35.545296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517090, 37.498531, 35.031979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752357, 37.412495, 35.343822>,  <45.893517, 37.360874, 35.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752357, 37.412495, 35.343822>,  <45.517090, 37.498531, 35.031979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752357, 37.412495, 35.343822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671158, -0.408026, -0.618919,
		0.451226, 0.887271, -0.095628,
		0.588168, -0.215091, 0.779612,
		45.928806, 37.347969, 35.577705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197403, 37.604225, 34.834400>,  <45.517090, 37.498531, 35.031979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197403, 37.604225, 34.834400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216190, 37.320415, 35.115646>,  <46.227463, 37.150127, 35.284393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216190, 37.320415, 35.115646>,  <46.197403, 37.604225, 34.834400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216190, 37.320415, 35.115646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819653, -0.374943, -0.433113,
		0.570932, 0.596648, 0.563957,
		0.046965, -0.709527, 0.703111,
		46.230278, 37.107555, 35.326580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921276, 36.825626, 34.685837>,  <46.197403, 37.604225, 34.834400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921276, 36.825626, 34.685837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247684, 36.671280, 34.857986>,  <46.443531, 36.578674, 34.961277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.247684, 36.671280, 34.857986>,  <45.921276, 36.825626, 34.685837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247684, 36.671280, 34.857986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352079, -0.922306, -0.159349,
		0.458420, -0.021493, -0.888476,
		0.816022, -0.385862, 0.430371,
		46.492493, 36.555523, 34.987099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230938, 36.221626, 34.329933>,  <45.921276, 36.825626, 34.685837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230938, 36.221626, 34.329933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325668, 36.181320, 34.716457>,  <46.382507, 36.157135, 34.948372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325668, 36.181320, 34.716457>,  <46.230938, 36.221626, 34.329933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325668, 36.181320, 34.716457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429851, -0.902830, 0.011200,
		0.871288, -0.418023, -0.257128,
		0.236825, -0.100768, 0.966313,
		46.396717, 36.151089, 35.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624302, 35.570892, 34.519245>,  <46.230938, 36.221626, 34.329933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624302, 35.570892, 34.519245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382275, 35.701813, 34.809559>,  <46.237057, 35.780365, 34.983749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382275, 35.701813, 34.809559>,  <46.624302, 35.570892, 34.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382275, 35.701813, 34.809559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643874, -0.737363, -0.204263,
		0.468314, -0.590909, 0.656894,
		-0.605069, 0.327297, 0.725788,
		46.200752, 35.800003, 35.027294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822094, 34.893253, 34.120476>,  <46.624302, 35.570892, 34.519245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822094, 34.893253, 34.120476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761337, 34.522598, 33.982914>,  <46.724884, 34.300205, 33.900375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761337, 34.522598, 33.982914>,  <46.822094, 34.893253, 34.120476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761337, 34.522598, 33.982914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693544, -0.147981, 0.705052,
		-0.704220, 0.345605, -0.620187,
		-0.151893, -0.926638, -0.343903,
		46.715771, 34.244606, 33.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328888, 35.028442, 34.671932>,  <46.822094, 34.893253, 34.120476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328888, 35.028442, 34.671932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506760, 35.023327, 35.030170>,  <47.613483, 35.020256, 35.245113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506760, 35.023327, 35.030170>,  <47.328888, 35.028442, 34.671932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506760, 35.023327, 35.030170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128577, -0.990454, 0.049695,
		0.886413, -0.137251, -0.442080,
		0.444680, -0.012791, 0.895598,
		47.640163, 35.019489, 35.298851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.807072, 34.069817, 31.032724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426224, 34.109360, 30.917011>,  <41.197716, 34.133087, 30.847584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426224, 34.109360, 30.917011>,  <41.807072, 34.069817, 31.032724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426224, 34.109360, 30.917011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187774, 0.557613, 0.808584,
		0.241246, 0.824193, -0.512354,
		-0.952124, 0.098861, -0.289284,
		41.140587, 34.139019, 30.830227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637806, 34.717045, 31.251255>,  <41.807072, 34.069817, 31.032724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637806, 34.717045, 31.251255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.287037, 34.536842, 31.184258>,  <41.076576, 34.428722, 31.144058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.287037, 34.536842, 31.184258>,  <41.637806, 34.717045, 31.251255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287037, 34.536842, 31.184258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341868, 0.339686, 0.876208,
		-0.337842, 0.825625, -0.451891,
		-0.876920, -0.450507, -0.167495,
		41.023960, 34.401691, 31.134008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001053, 35.246395, 31.419676>,  <41.637806, 34.717045, 31.251255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001053, 35.246395, 31.419676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850857, 34.875683, 31.423418>,  <40.760738, 34.653255, 31.425663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850857, 34.875683, 31.423418>,  <41.001053, 35.246395, 31.419676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850857, 34.875683, 31.423418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511643, 0.215689, 0.831685,
		-0.772808, 0.307499, -0.555169,
		-0.375486, -0.926781, 0.009357,
		40.738213, 34.597649, 31.426226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372215, 35.372845, 31.840792>,  <41.001053, 35.246395, 31.419676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372215, 35.372845, 31.840792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415203, 34.975304, 31.830215>,  <40.440998, 34.736778, 31.823870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415203, 34.975304, 31.830215>,  <40.372215, 35.372845, 31.840792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415203, 34.975304, 31.830215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376190, -0.065266, 0.924241,
		-0.920288, -0.089384, -0.380893,
		0.107472, -0.993857, -0.026438,
		40.447445, 34.677147, 31.822285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680828, 35.062840, 31.953436>,  <40.372215, 35.372845, 31.840792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680828, 35.062840, 31.953436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933727, 34.776817, 32.072742>,  <40.085468, 34.605206, 32.144325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933727, 34.776817, 32.072742>,  <39.680828, 35.062840, 31.953436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933727, 34.776817, 32.072742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451528, -0.027230, 0.891841,
		-0.629592, -0.698539, -0.340083,
		0.632247, -0.715054, 0.298266,
		40.123402, 34.562302, 32.162224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271297, 34.540478, 32.311844>,  <39.680828, 35.062840, 31.953436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271297, 34.540478, 32.311844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644733, 34.467022, 32.434929>,  <39.868793, 34.422947, 32.508781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644733, 34.467022, 32.434929>,  <39.271297, 34.540478, 32.311844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644733, 34.467022, 32.434929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341504, -0.195763, 0.919267,
		-0.108573, -0.963304, -0.245476,
		0.933588, -0.183639, 0.307717,
		39.924809, 34.411930, 32.527245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226471, 33.886230, 32.661819>,  <39.271297, 34.540478, 32.311844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226471, 33.886230, 32.661819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552444, 34.090858, 32.770760>,  <39.748028, 34.213634, 32.836124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552444, 34.090858, 32.770760>,  <39.226471, 33.886230, 32.661819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552444, 34.090858, 32.770760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247311, -0.118033, 0.961720,
		0.524134, -0.851096, 0.030327,
		0.814936, 0.511571, 0.272350,
		39.796925, 34.244331, 32.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452827, 33.499371, 33.255257>,  <39.226471, 33.886230, 32.661819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452827, 33.499371, 33.255257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634502, 33.853519, 33.294910>,  <39.743507, 34.066010, 33.318703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634502, 33.853519, 33.294910>,  <39.452827, 33.499371, 33.255257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634502, 33.853519, 33.294910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178211, -0.018734, 0.983814,
		0.872901, -0.464501, 0.149274,
		0.454186, 0.885374, 0.099132,
		39.770760, 34.119133, 33.324650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950394, 33.489555, 33.837605>,  <39.452827, 33.499371, 33.255257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950394, 33.489555, 33.837605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851883, 33.874294, 33.789948>,  <39.792778, 34.105137, 33.761353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851883, 33.874294, 33.789948>,  <39.950394, 33.489555, 33.837605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851883, 33.874294, 33.789948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013983, 0.119389, 0.992749,
		0.969099, 0.246157, -0.015953,
		-0.246276, 0.961849, -0.119142,
		39.778000, 34.162849, 33.754204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217377, 33.725231, 34.382504>,  <39.950394, 33.489555, 33.837605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217377, 33.725231, 34.382504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972466, 34.023308, 34.276817>,  <39.825520, 34.202152, 34.213406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972466, 34.023308, 34.276817>,  <40.217377, 33.725231, 34.382504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972466, 34.023308, 34.276817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055294, 0.293004, 0.954511,
		0.788708, 0.599034, -0.138195,
		-0.612276, 0.745189, -0.264218,
		39.788784, 34.246864, 34.197552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483166, 34.247181, 34.652962>,  <40.217377, 33.725231, 34.382504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483166, 34.247181, 34.652962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102715, 34.354469, 34.591770>,  <39.874443, 34.418842, 34.555054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102715, 34.354469, 34.591770>,  <40.483166, 34.247181, 34.652962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102715, 34.354469, 34.591770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056134, 0.336986, 0.939835,
		0.303638, 0.902495, -0.305462,
		-0.951133, 0.268223, -0.152982,
		39.817375, 34.434937, 34.545876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412739, 35.030891, 34.785275>,  <40.483166, 34.247181, 34.652962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412739, 35.030891, 34.785275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051357, 34.861862, 34.814121>,  <39.834526, 34.760445, 34.831429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.051357, 34.861862, 34.814121>,  <40.412739, 35.030891, 34.785275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051357, 34.861862, 34.814121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100391, 0.372117, 0.922741,
		-0.416760, 0.826416, -0.378613,
		-0.903456, -0.422571, 0.072119,
		39.780319, 34.735092, 34.835758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016102, 35.543808, 35.062160>,  <40.412739, 35.030891, 34.785275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016102, 35.543808, 35.062160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.743702, 35.255730, 35.115162>,  <39.580261, 35.082882, 35.146965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.743702, 35.255730, 35.115162>,  <40.016102, 35.543808, 35.062160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743702, 35.255730, 35.115162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405725, 0.521719, 0.750464,
		-0.609613, 0.457303, -0.647492,
		-0.680998, -0.720196, 0.132508,
		39.539402, 35.039669, 35.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369461, 35.938721, 35.158833>,  <40.016102, 35.543808, 35.062160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369461, 35.938721, 35.158833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326321, 35.579369, 35.329140>,  <39.300434, 35.363758, 35.431324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326321, 35.579369, 35.329140>,  <39.369461, 35.938721, 35.158833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326321, 35.579369, 35.329140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416196, 0.429734, 0.801317,
		-0.902855, -0.090777, -0.420252,
		-0.107855, -0.898381, 0.425769,
		39.293964, 35.309853, 35.456871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642956, 35.898140, 35.390289>,  <39.369461, 35.938721, 35.158833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642956, 35.898140, 35.390289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858212, 35.639561, 35.606628>,  <38.987366, 35.484413, 35.736431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858212, 35.639561, 35.606628>,  <38.642956, 35.898140, 35.390289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858212, 35.639561, 35.606628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482736, 0.289628, 0.826488,
		-0.690923, -0.705851, -0.156203,
		0.538136, -0.646444, 0.540850,
		39.019653, 35.445629, 35.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189934, 35.820728, 35.979534>,  <38.642956, 35.898140, 35.390289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189934, 35.820728, 35.979534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537598, 35.660469, 36.095493>,  <38.746197, 35.564312, 36.165070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537598, 35.660469, 36.095493>,  <38.189934, 35.820728, 35.979534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537598, 35.660469, 36.095493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238779, 0.173358, 0.955474,
		-0.433068, -0.899681, 0.055009,
		0.869159, -0.400651, 0.289901,
		38.798344, 35.540276, 36.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061497, 35.223373, 36.464920>,  <38.189934, 35.820728, 35.979534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061497, 35.223373, 36.464920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426937, 35.370098, 36.535103>,  <38.646202, 35.458134, 36.577213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426937, 35.370098, 36.535103>,  <38.061497, 35.223373, 36.464920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426937, 35.370098, 36.535103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118278, -0.173106, 0.977775,
		0.389035, -0.914046, -0.114763,
		0.913599, 0.366815, 0.175456,
		38.701015, 35.480145, 36.587738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215832, 35.007439, 37.101482>,  <38.061497, 35.223373, 36.464920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215832, 35.007439, 37.101482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499783, 35.286896, 37.065781>,  <38.670155, 35.454571, 37.044361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499783, 35.286896, 37.065781>,  <38.215832, 35.007439, 37.101482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499783, 35.286896, 37.065781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139329, 0.263515, 0.954540,
		0.690405, -0.665172, 0.284405,
		0.709879, 0.698646, -0.089255,
		38.712746, 35.496490, 37.039005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420277, 35.075993, 37.763256>,  <38.215832, 35.007439, 37.101482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420277, 35.075993, 37.763256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565933, 35.401314, 37.581738>,  <38.653328, 35.596508, 37.472824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565933, 35.401314, 37.581738>,  <38.420277, 35.075993, 37.763256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565933, 35.401314, 37.581738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155336, 0.533465, 0.831436,
		0.918299, -0.232268, 0.320591,
		0.364140, 0.813306, -0.453801,
		38.675175, 35.645306, 37.445599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910618, 35.384136, 38.263992>,  <38.420277, 35.075993, 37.763256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910618, 35.384136, 38.263992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835579, 35.698311, 38.028057>,  <38.790558, 35.886814, 37.886497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835579, 35.698311, 38.028057>,  <38.910618, 35.384136, 38.263992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835579, 35.698311, 38.028057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213929, 0.553409, 0.804968,
		0.958667, 0.277189, 0.064212,
		-0.187593, 0.785433, -0.589834,
		38.779301, 35.933941, 37.851109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225571, 36.011471, 38.523209>,  <38.910618, 35.384136, 38.263992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225571, 36.011471, 38.523209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922565, 36.143112, 38.297688>,  <38.740765, 36.222095, 38.162376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922565, 36.143112, 38.297688>,  <39.225571, 36.011471, 38.523209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922565, 36.143112, 38.297688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326960, 0.556253, 0.763990,
		0.565044, 0.763071, -0.313765,
		-0.757511, 0.329099, -0.563801,
		38.695312, 36.241840, 38.128548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213902, 36.748215, 38.786396>,  <39.225571, 36.011471, 38.523209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213902, 36.748215, 38.786396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874378, 36.624844, 38.614632>,  <38.670666, 36.550819, 38.511574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874378, 36.624844, 38.614632>,  <39.213902, 36.748215, 38.786396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874378, 36.624844, 38.614632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496029, 0.745667, 0.444901,
		0.182977, 0.590636, -0.785919,
		-0.848808, -0.308432, -0.429412,
		38.619736, 36.532314, 38.485809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704628, 36.538013, 38.286568>,  <39.213902, 36.748215, 38.786396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704628, 36.538013, 38.286568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946457, 36.829548, 38.415123>,  <40.091557, 37.004467, 38.492256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946457, 36.829548, 38.415123>,  <39.704628, 36.538013, 38.286568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946457, 36.829548, 38.415123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564440, -0.107299, -0.818471,
		-0.562045, 0.676231, -0.476253,
		0.604577, 0.728833, 0.321385,
		40.127831, 37.048199, 38.511539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843304, 37.025562, 37.773861>,  <39.704628, 36.538013, 38.286568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843304, 37.025562, 37.773861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157318, 37.050110, 38.020424>,  <40.345726, 37.064838, 38.168362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.157318, 37.050110, 38.020424>,  <39.843304, 37.025562, 37.773861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157318, 37.050110, 38.020424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617521, 0.000962, -0.786554,
		-0.048862, 0.998115, -0.037140,
		0.785035, 0.061367, 0.616404,
		40.392830, 37.068520, 38.205345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328888, 37.305405, 37.344692>,  <39.843304, 37.025562, 37.773861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328888, 37.305405, 37.344692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542313, 37.151817, 37.646122>,  <40.670368, 37.059666, 37.826981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.542313, 37.151817, 37.646122>,  <40.328888, 37.305405, 37.344692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542313, 37.151817, 37.646122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742317, -0.214386, -0.634825,
		0.405309, 0.898114, 0.170637,
		0.533563, -0.383967, 0.753578,
		40.702381, 37.036629, 37.872196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949776, 37.484318, 37.160515>,  <40.328888, 37.305405, 37.344692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949776, 37.484318, 37.160515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.038303, 37.192635, 37.419518>,  <41.091419, 37.017624, 37.574921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.038303, 37.192635, 37.419518>,  <40.949776, 37.484318, 37.160515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038303, 37.192635, 37.419518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838997, -0.196072, -0.507583,
		0.497094, 0.655595, 0.568412,
		0.221319, -0.729213, 0.647508,
		41.104698, 36.973869, 37.613770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604782, 37.602623, 37.222027>,  <40.949776, 37.484318, 37.160515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604782, 37.602623, 37.222027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543873, 37.220890, 37.324841>,  <41.507328, 36.991852, 37.386528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543873, 37.220890, 37.324841>,  <41.604782, 37.602623, 37.222027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543873, 37.220890, 37.324841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831496, -0.264278, -0.488642,
		0.534254, 0.139315, 0.833765,
		-0.152271, -0.954331, 0.257031,
		41.498192, 36.934589, 37.401951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262001, 37.324581, 37.332336>,  <41.604782, 37.602623, 37.222027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262001, 37.324581, 37.332336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.031048, 37.003551, 37.272343>,  <41.892475, 36.810932, 37.236347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.031048, 37.003551, 37.272343>,  <42.262001, 37.324581, 37.332336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031048, 37.003551, 37.272343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727468, -0.422289, -0.540798,
		0.370697, -0.421355, 0.827674,
		-0.577385, -0.802578, -0.149981,
		41.857834, 36.762779, 37.227348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746090, 36.887321, 37.325611>,  <42.262001, 37.324581, 37.332336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746090, 36.887321, 37.325611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.433872, 36.679764, 37.186180>,  <42.246544, 36.555229, 37.102524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.433872, 36.679764, 37.186180>,  <42.746090, 36.887321, 37.325611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433872, 36.679764, 37.186180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610071, -0.510775, -0.605741,
		0.136272, -0.685461, 0.715243,
		-0.780541, -0.518895, -0.348576,
		42.199711, 36.524094, 37.081608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906231, 36.110153, 37.387466>,  <42.746090, 36.887321, 37.325611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906231, 36.110153, 37.387466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.641262, 36.157650, 37.091602>,  <42.482281, 36.186146, 36.914082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.641262, 36.157650, 37.091602>,  <42.906231, 36.110153, 37.387466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641262, 36.157650, 37.091602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532911, -0.619246, -0.576663,
		-0.526507, -0.776167, 0.346923,
		-0.662418, 0.118738, -0.739665,
		42.442535, 36.193272, 36.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988888, 35.554348, 37.001167>,  <42.906231, 36.110153, 37.387466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988888, 35.554348, 37.001167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.779503, 35.780483, 36.746178>,  <42.653870, 35.916164, 36.593182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.779503, 35.780483, 36.746178>,  <42.988888, 35.554348, 37.001167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779503, 35.780483, 36.746178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456230, -0.445904, -0.770081,
		-0.719611, -0.693945, -0.024511,
		-0.523464, 0.565341, -0.637476,
		42.622463, 35.950085, 36.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665485, 35.047642, 36.469799>,  <42.988888, 35.554348, 37.001167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665485, 35.047642, 36.469799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.701336, 35.425404, 36.343269>,  <42.722847, 35.652061, 36.267353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.701336, 35.425404, 36.343269>,  <42.665485, 35.047642, 36.469799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701336, 35.425404, 36.343269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501771, -0.317166, -0.804756,
		-0.860344, -0.086589, -0.502305,
		0.089631, 0.944409, -0.316320,
		42.728226, 35.708725, 36.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380646, 34.983765, 35.802322>,  <42.665485, 35.047642, 36.469799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380646, 34.983765, 35.802322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.629349, 35.296280, 35.824261>,  <42.778572, 35.483788, 35.837425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.629349, 35.296280, 35.824261>,  <42.380646, 34.983765, 35.802322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629349, 35.296280, 35.824261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441417, -0.291712, -0.848561,
		-0.646970, 0.551809, -0.526248,
		0.621756, 0.781288, 0.054849,
		42.815876, 35.530666, 35.840714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323795, 35.343746, 35.219627>,  <42.380646, 34.983765, 35.802322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323795, 35.343746, 35.219627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.691769, 35.436962, 35.345749>,  <42.912552, 35.492889, 35.421421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.691769, 35.436962, 35.345749>,  <42.323795, 35.343746, 35.219627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691769, 35.436962, 35.345749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375968, -0.296152, -0.878033,
		-0.111234, 0.926277, -0.360053,
		0.919932, 0.233035, 0.315308,
		42.967747, 35.506874, 35.440342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526810, 35.852776, 34.805969>,  <42.323795, 35.343746, 35.219627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526810, 35.852776, 34.805969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.809536, 35.622360, 34.970211>,  <42.979172, 35.484112, 35.068756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.809536, 35.622360, 34.970211>,  <42.526810, 35.852776, 34.805969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809536, 35.622360, 34.970211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310418, -0.269009, -0.911743,
		0.635653, 0.771892, -0.011327,
		0.706814, -0.576035, 0.410606,
		43.021580, 35.449551, 35.093391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322510, 36.081497, 34.613468>,  <42.526810, 35.852776, 34.805969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322510, 36.081497, 34.613468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.291451, 35.691948, 34.698822>,  <43.272816, 35.458218, 34.750034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.291451, 35.691948, 34.698822>,  <43.322510, 36.081497, 34.613468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291451, 35.691948, 34.698822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200583, -0.224915, -0.953509,
		0.976595, -0.031233, 0.212807,
		-0.077645, -0.973878, 0.213386,
		43.268158, 35.399784, 34.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940125, 35.762428, 34.339809>,  <43.322510, 36.081497, 34.613468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940125, 35.762428, 34.339809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.687771, 35.452492, 34.355885>,  <43.536358, 35.266529, 34.365528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.687771, 35.452492, 34.355885>,  <43.940125, 35.762428, 34.339809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687771, 35.452492, 34.355885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282227, -0.277425, -0.918359,
		0.722729, -0.568032, 0.393702,
		-0.630880, -0.774839, 0.040189,
		43.498508, 35.220039, 34.367943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215870, 35.331692, 33.907227>,  <43.940125, 35.762428, 34.339809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215870, 35.331692, 33.907227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.863022, 35.143742, 33.920376>,  <43.651314, 35.030972, 33.928265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.863022, 35.143742, 33.920376>,  <44.215870, 35.331692, 33.907227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863022, 35.143742, 33.920376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134114, -0.317455, -0.938742,
		0.451527, -0.823675, 0.343050,
		-0.882121, -0.469875, 0.032873,
		43.598385, 35.002781, 33.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326775, 34.690327, 33.618484>,  <44.215870, 35.331692, 33.907227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326775, 34.690327, 33.618484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.930969, 34.740604, 33.590046>,  <43.693485, 34.770771, 33.572983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.930969, 34.740604, 33.590046>,  <44.326775, 34.690327, 33.618484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930969, 34.740604, 33.590046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018291, -0.379268, -0.925106,
		-0.143247, -0.916710, 0.372993,
		-0.989518, 0.125696, -0.071096,
		43.634113, 34.778313, 33.568718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990524, 34.026340, 33.269245>,  <44.326775, 34.690327, 33.618484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990524, 34.026340, 33.269245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715942, 34.311409, 33.211437>,  <43.551193, 34.482449, 33.176754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715942, 34.311409, 33.211437>,  <43.990524, 34.026340, 33.269245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715942, 34.311409, 33.211437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085511, -0.276468, -0.957211,
		-0.722131, -0.644721, 0.250723,
		-0.686451, 0.712671, -0.144516,
		43.510006, 34.525211, 33.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.388718, 33.675327, 32.988064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301346, 34.054844, 32.896770>,  <43.248924, 34.282555, 32.841995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301346, 34.054844, 32.896770>,  <43.388718, 33.675327, 32.988064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301346, 34.054844, 32.896770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176517, -0.268441, -0.946985,
		-0.959756, -0.166561, 0.226112,
		-0.218428, 0.948787, -0.228237,
		43.235817, 34.339481, 32.828300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779755, 33.695724, 32.549534>,  <43.388718, 33.675327, 32.988064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779755, 33.695724, 32.549534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.966583, 34.044296, 32.489590>,  <43.078682, 34.253437, 32.453625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.966583, 34.044296, 32.489590>,  <42.779755, 33.695724, 32.549534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966583, 34.044296, 32.489590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119230, -0.105863, -0.987207,
		-0.876143, 0.478966, 0.054455,
		0.467073, 0.871427, -0.149858,
		43.106705, 34.305725, 32.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421268, 34.036186, 31.984701>,  <42.779755, 33.695724, 32.549534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421268, 34.036186, 31.984701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.756302, 34.253311, 31.960032>,  <42.957321, 34.383587, 31.945230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.756302, 34.253311, 31.960032>,  <42.421268, 34.036186, 31.984701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756302, 34.253311, 31.960032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082113, 0.013482, -0.996532,
		-0.540099, 0.839745, 0.055865,
		0.837586, 0.542813, -0.061673,
		43.007576, 34.416157, 31.941530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314865, 34.544331, 31.428478>,  <42.421268, 34.036186, 31.984701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314865, 34.544331, 31.428478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.713081, 34.526989, 31.461979>,  <42.952011, 34.516582, 31.482080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.713081, 34.526989, 31.461979>,  <42.314865, 34.544331, 31.428478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713081, 34.526989, 31.461979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091165, 0.214998, -0.972350,
		0.024151, 0.975652, 0.217992,
		0.995543, -0.043357, 0.083753,
		43.011745, 34.513981, 31.487104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508781, 35.020576, 30.964417>,  <42.314865, 34.544331, 31.428478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508781, 35.020576, 30.964417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.856022, 34.828724, 31.015579>,  <43.064365, 34.713612, 31.046278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.856022, 34.828724, 31.015579>,  <42.508781, 35.020576, 30.964417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856022, 34.828724, 31.015579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292805, 0.286701, -0.912177,
		0.400833, 0.829313, 0.389323,
		0.868100, -0.479627, 0.127908,
		43.116451, 34.684837, 31.053951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044086, 35.525322, 30.798243>,  <42.508781, 35.020576, 30.964417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044086, 35.525322, 30.798243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.187531, 35.155453, 30.747057>,  <43.273598, 34.933529, 30.716347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.187531, 35.155453, 30.747057>,  <43.044086, 35.525322, 30.798243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187531, 35.155453, 30.747057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301371, 0.244421, -0.921647,
		0.883502, 0.291946, 0.366322,
		0.358608, -0.924676, -0.127963,
		43.295113, 34.878052, 30.708668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632648, 35.671158, 30.430832>,  <43.044086, 35.525322, 30.798243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632648, 35.671158, 30.430832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579208, 35.277786, 30.381824>,  <43.547142, 35.041763, 30.352421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579208, 35.277786, 30.381824>,  <43.632648, 35.671158, 30.430832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579208, 35.277786, 30.381824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440229, 0.051867, -0.896386,
		0.887890, -0.173695, 0.426006,
		-0.133602, -0.983433, -0.122518,
		43.539127, 34.982758, 30.345070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278400, 35.422569, 30.143591>,  <43.632648, 35.671158, 30.430832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278400, 35.422569, 30.143591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.026485, 35.121418, 30.067122>,  <43.875336, 34.940727, 30.021240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.026485, 35.121418, 30.067122>,  <44.278400, 35.422569, 30.143591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026485, 35.121418, 30.067122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356475, -0.061469, -0.932281,
		0.690139, -0.655288, 0.307093,
		-0.629789, -0.752874, -0.191172,
		43.837547, 34.895557, 30.009769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699917, 34.894161, 29.920597>,  <44.278400, 35.422569, 30.143591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699917, 34.894161, 29.920597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.330872, 34.841164, 29.775694>,  <44.109444, 34.809364, 29.688751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.330872, 34.841164, 29.775694>,  <44.699917, 34.894161, 29.920597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330872, 34.841164, 29.775694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377294, -0.114661, -0.918968,
		0.080225, -0.984529, 0.155779,
		-0.922612, -0.132499, -0.362259,
		44.054089, 34.801414, 29.667017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669353, 34.224895, 29.585848>,  <44.699917, 34.894161, 29.920597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669353, 34.224895, 29.585848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396858, 34.473534, 29.431173>,  <44.233360, 34.622719, 29.338367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.396858, 34.473534, 29.431173>,  <44.669353, 34.224895, 29.585848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396858, 34.473534, 29.431173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378967, -0.152487, -0.912760,
		-0.626336, -0.768350, -0.131685,
		-0.681240, 0.621599, -0.386688,
		44.192486, 34.660011, 29.315166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457912, 33.935017, 29.064959>,  <44.669353, 34.224895, 29.585848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457912, 33.935017, 29.064959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.303516, 34.292477, 28.973392>,  <44.210876, 34.506950, 28.918453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.303516, 34.292477, 28.973392>,  <44.457912, 33.935017, 29.064959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303516, 34.292477, 28.973392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321344, -0.102354, -0.941415,
		-0.864724, -0.436940, -0.247660,
		-0.385993, 0.893648, -0.228916,
		44.187717, 34.560570, 28.904718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994892, 33.840557, 28.450752>,  <44.457912, 33.935017, 29.064959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994892, 33.840557, 28.450752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.067287, 34.233917, 28.445454>,  <44.110725, 34.469933, 28.442274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.067287, 34.233917, 28.445454>,  <43.994892, 33.840557, 28.450752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067287, 34.233917, 28.445454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203667, -0.050654, -0.977729,
		-0.962166, 0.174261, -0.209453,
		0.180990, 0.983396, -0.013246,
		44.121586, 34.528934, 28.441481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687035, 34.032906, 27.820393>,  <43.994892, 33.840557, 28.450752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687035, 34.032906, 27.820393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900219, 34.360474, 27.905552>,  <44.028130, 34.557014, 27.956648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900219, 34.360474, 27.905552>,  <43.687035, 34.032906, 27.820393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900219, 34.360474, 27.905552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277946, 0.068208, -0.958172,
		-0.799184, 0.569846, -0.191262,
		0.532965, 0.818916, 0.212897,
		44.060108, 34.606148, 27.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371094, 34.599934, 27.355221>,  <43.687035, 34.032906, 27.820393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371094, 34.599934, 27.355221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.732014, 34.735233, 27.462137>,  <43.948566, 34.816414, 27.526287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.732014, 34.735233, 27.462137>,  <43.371094, 34.599934, 27.355221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732014, 34.735233, 27.462137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226128, 0.156538, -0.961437,
		-0.367051, 0.927944, 0.064755,
		0.902297, 0.338253, 0.267292,
		44.002705, 34.836708, 27.542324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418350, 35.281700, 27.070948>,  <43.371094, 34.599934, 27.355221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418350, 35.281700, 27.070948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793861, 35.155151, 27.125517>,  <44.019169, 35.079224, 27.158258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793861, 35.155151, 27.125517>,  <43.418350, 35.281700, 27.070948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793861, 35.155151, 27.125517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170803, 0.083484, -0.981762,
		0.299209, 0.944956, 0.132409,
		0.938776, -0.316368, 0.136422,
		44.075493, 35.060242, 27.166443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763741, 35.699852, 26.690832>,  <43.418350, 35.281700, 27.070948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763741, 35.699852, 26.690832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.028873, 35.402866, 26.729612>,  <44.187954, 35.224674, 26.752880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.028873, 35.402866, 26.729612>,  <43.763741, 35.699852, 26.690832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028873, 35.402866, 26.729612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234108, 0.082507, -0.968703,
		0.711230, 0.664783, 0.228506,
		0.662831, -0.742466, 0.096950,
		44.227722, 35.180126, 26.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325657, 35.827507, 26.304726>,  <43.763741, 35.699852, 26.690832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325657, 35.827507, 26.304726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.398586, 35.438732, 26.364195>,  <44.442345, 35.205467, 26.399876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.398586, 35.438732, 26.364195>,  <44.325657, 35.827507, 26.304726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398586, 35.438732, 26.364195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219911, -0.107067, -0.969627,
		0.958330, 0.209481, 0.194218,
		0.182324, -0.971933, 0.148673,
		44.453285, 35.147152, 26.408796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059803, 35.696239, 26.233114>,  <44.325657, 35.827507, 26.304726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059803, 35.696239, 26.233114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.827236, 35.381237, 26.151342>,  <44.687698, 35.192234, 26.102280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.827236, 35.381237, 26.151342>,  <45.059803, 35.696239, 26.233114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827236, 35.381237, 26.151342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339548, -0.006523, -0.940566,
		0.739368, -0.616272, 0.271189,
		-0.581413, -0.787507, -0.204431,
		44.652813, 35.144985, 26.090014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538570, 35.279816, 25.927980>,  <45.059803, 35.696239, 26.233114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538570, 35.279816, 25.927980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173615, 35.140293, 25.842300>,  <44.954643, 35.056580, 25.790892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173615, 35.140293, 25.842300>,  <45.538570, 35.279816, 25.927980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173615, 35.140293, 25.842300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291311, -0.185708, -0.938430,
		0.287552, -0.918611, 0.271049,
		-0.912388, -0.348807, -0.214201,
		44.899899, 35.035652, 25.778040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680969, 34.675907, 25.575378>,  <45.538570, 35.279816, 25.927980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680969, 34.675907, 25.575378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.309803, 34.798065, 25.489864>,  <45.087105, 34.871361, 25.438557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.309803, 34.798065, 25.489864>,  <45.680969, 34.675907, 25.575378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309803, 34.798065, 25.489864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201238, -0.072389, -0.976864,
		-0.313810, -0.949468, 0.005713,
		-0.927915, 0.305400, -0.213786,
		45.031429, 34.889687, 25.425728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438194, 34.193428, 25.033005>,  <45.680969, 34.675907, 25.575378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438194, 34.193428, 25.033005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.220409, 34.527534, 25.002285>,  <45.089741, 34.727997, 24.983854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.220409, 34.527534, 25.002285>,  <45.438194, 34.193428, 25.033005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220409, 34.527534, 25.002285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104252, -0.023462, -0.994274,
		-0.832284, -0.549347, -0.074304,
		-0.544458, 0.835265, -0.076798,
		45.057072, 34.778114, 24.979246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835529, 34.108555, 24.672447>,  <45.438194, 34.193428, 25.033005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835529, 34.108555, 24.672447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.928646, 34.494648, 24.624893>,  <44.984516, 34.726303, 24.596361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.928646, 34.494648, 24.624893>,  <44.835529, 34.108555, 24.672447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928646, 34.494648, 24.624893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049929, -0.133944, -0.989730,
		-0.971243, 0.224468, -0.079375,
		0.232795, 0.965232, -0.118885,
		44.998486, 34.784218, 24.589228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830784, 34.120605, 24.009804>,  <44.835529, 34.108555, 24.672447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830784, 34.120605, 24.009804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965717, 34.491997, 24.071947>,  <45.046677, 34.714832, 24.109232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965717, 34.491997, 24.071947>,  <44.830784, 34.120605, 24.009804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965717, 34.491997, 24.071947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135094, 0.115575, -0.984069,
		-0.931640, 0.352951, -0.086444,
		0.337338, 0.928476, 0.155356,
		45.066917, 34.770538, 24.118553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670910, 33.537537, 23.656704>,  <44.830784, 34.120605, 24.009804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670910, 33.537537, 23.656704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726341, 33.325500, 23.991322>,  <44.759602, 33.198280, 24.192091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726341, 33.325500, 23.991322>,  <44.670910, 33.537537, 23.656704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726341, 33.325500, 23.991322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766618, 0.592175, 0.248244,
		-0.626970, 0.606906, 0.488439,
		0.138581, -0.530088, 0.836542,
		44.767914, 33.166473, 24.242285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041317, 33.900723, 23.746296>,  <44.670910, 33.537537, 23.656704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041317, 33.900723, 23.746296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.710945, 33.802845, 23.543131>,  <43.512722, 33.744118, 23.421232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.710945, 33.802845, 23.543131>,  <44.041317, 33.900723, 23.746296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710945, 33.802845, 23.543131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549242, 0.145954, 0.822819,
		-0.127204, 0.958553, -0.254941,
		-0.825925, -0.244691, -0.507912,
		43.463169, 33.729439, 23.390757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538116, 34.443401, 23.831623>,  <44.041317, 33.900723, 23.746296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538116, 34.443401, 23.831623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.339558, 34.117882, 23.710751>,  <43.220421, 33.922569, 23.638227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.339558, 34.117882, 23.710751>,  <43.538116, 34.443401, 23.831623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339558, 34.117882, 23.710751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611549, 0.080771, 0.787073,
		-0.616115, 0.575501, -0.537775,
		-0.496398, -0.813803, -0.302182,
		43.190639, 33.873741, 23.620096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883759, 34.551918, 23.911268>,  <43.538116, 34.443401, 23.831623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883759, 34.551918, 23.911268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.877983, 34.152164, 23.898474>,  <42.874519, 33.912312, 23.890797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.877983, 34.152164, 23.898474>,  <42.883759, 34.551918, 23.911268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877983, 34.152164, 23.898474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676660, -0.013787, 0.736167,
		-0.736154, 0.032274, -0.676044,
		-0.014438, -0.999384, -0.031988,
		42.873653, 33.852348, 23.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173573, 34.408360, 24.078180>,  <42.883759, 34.551918, 23.911268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173573, 34.408360, 24.078180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353878, 34.059204, 24.152876>,  <42.462063, 33.849709, 24.197693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.353878, 34.059204, 24.152876>,  <42.173573, 34.408360, 24.078180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353878, 34.059204, 24.152876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593723, -0.136968, 0.792927,
		-0.666563, -0.468293, -0.579997,
		0.450763, -0.872893, 0.186738,
		42.489105, 33.797337, 24.208897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637817, 33.985943, 24.216370>,  <42.173573, 34.408360, 24.078180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637817, 33.985943, 24.216370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969303, 33.845764, 24.390921>,  <42.168194, 33.761658, 24.495651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969303, 33.845764, 24.390921>,  <41.637817, 33.985943, 24.216370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969303, 33.845764, 24.390921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487023, -0.067371, 0.870787,
		-0.275766, -0.934156, -0.226507,
		0.828711, -0.350447, 0.436377,
		42.217918, 33.740631, 24.521833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354694, 33.493305, 24.761744>,  <41.637817, 33.985943, 24.216370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354694, 33.493305, 24.761744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732986, 33.548119, 24.879602>,  <41.959961, 33.581009, 24.950317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732986, 33.548119, 24.879602>,  <41.354694, 33.493305, 24.761744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732986, 33.548119, 24.879602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269084, -0.178086, 0.946509,
		0.182178, -0.974426, -0.131548,
		0.945730, 0.137036, 0.294646,
		42.016705, 33.589230, 24.967997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473465, 33.028175, 25.286520>,  <41.354694, 33.493305, 24.761744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473465, 33.028175, 25.286520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.781975, 33.272274, 25.358887>,  <41.967079, 33.418736, 25.402308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.781975, 33.272274, 25.358887>,  <41.473465, 33.028175, 25.286520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781975, 33.272274, 25.358887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, -0.047783, 0.980208,
		0.606816, -0.790767, 0.080386,
		0.771275, 0.610249, 0.180917,
		42.013359, 33.455349, 25.413162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869087, 32.794395, 25.897482>,  <41.473465, 33.028175, 25.286520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869087, 32.794395, 25.897482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.979362, 33.175255, 25.844713>,  <42.045528, 33.403770, 25.813053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.979362, 33.175255, 25.844713>,  <41.869087, 32.794395, 25.897482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979362, 33.175255, 25.844713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057526, 0.153335, 0.986498,
		0.959526, -0.264372, 0.097046,
		0.275683, 0.952153, -0.131920,
		42.062069, 33.460899, 25.805138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352509, 33.022938, 26.395424>,  <41.869087, 32.794395, 25.897482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352509, 33.022938, 26.395424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175766, 33.362244, 26.278666>,  <42.069721, 33.565826, 26.208611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175766, 33.362244, 26.278666>,  <42.352509, 33.022938, 26.395424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175766, 33.362244, 26.278666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064771, 0.294366, 0.953495,
		0.894744, 0.440215, -0.075124,
		-0.441857, 0.848268, -0.291896,
		42.043209, 33.616726, 26.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637077, 33.430416, 26.823997>,  <42.352509, 33.022938, 26.395424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637077, 33.430416, 26.823997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.315994, 33.639690, 26.709497>,  <42.123344, 33.765255, 26.640797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.315994, 33.639690, 26.709497>,  <42.637077, 33.430416, 26.823997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315994, 33.639690, 26.709497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163349, 0.268749, 0.949258,
		0.573565, 0.808736, -0.130265,
		-0.802708, 0.523183, -0.286251,
		42.075180, 33.796646, 26.623623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736702, 34.122135, 27.108692>,  <42.637077, 33.430416, 26.823997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736702, 34.122135, 27.108692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.340668, 34.093452, 27.060389>,  <42.103046, 34.076244, 27.031406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.340668, 34.093452, 27.060389>,  <42.736702, 34.122135, 27.108692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340668, 34.093452, 27.060389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137804, 0.330118, 0.933827,
		-0.027098, 0.941212, -0.336727,
		-0.990089, -0.071707, -0.120757,
		42.043640, 34.071941, 27.024162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505569, 34.644524, 27.545294>,  <42.736702, 34.122135, 27.108692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505569, 34.644524, 27.545294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181587, 34.422813, 27.468615>,  <41.987198, 34.289787, 27.422607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.181587, 34.422813, 27.468615>,  <42.505569, 34.644524, 27.545294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181587, 34.422813, 27.468615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309524, 0.126355, 0.942459,
		-0.498160, 0.822687, -0.273903,
		-0.809958, -0.554275, -0.191696,
		41.938599, 34.256531, 27.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963631, 34.984703, 27.751728>,  <42.505569, 34.644524, 27.545294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963631, 34.984703, 27.751728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849155, 34.601444, 27.749062>,  <41.780468, 34.371487, 27.747461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849155, 34.601444, 27.749062>,  <41.963631, 34.984703, 27.751728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849155, 34.601444, 27.749062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298371, 0.082506, 0.950877,
		-0.910532, 0.274123, -0.309496,
		-0.286193, -0.958149, -0.006666,
		41.763298, 34.313999, 27.747061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243031, 34.961567, 27.856424>,  <41.963631, 34.984703, 27.751728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243031, 34.961567, 27.856424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409397, 34.618076, 27.976164>,  <41.509216, 34.411983, 28.048008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409397, 34.618076, 27.976164>,  <41.243031, 34.961567, 27.856424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409397, 34.618076, 27.976164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342203, 0.157192, 0.926384,
		-0.842563, -0.487735, -0.228479,
		0.415915, -0.858723, 0.299348,
		41.534172, 34.360458, 28.065968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765034, 34.668419, 28.355036>,  <41.243031, 34.961567, 27.856424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765034, 34.668419, 28.355036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081539, 34.429607, 28.407881>,  <41.271442, 34.286320, 28.439589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081539, 34.429607, 28.407881>,  <40.765034, 34.668419, 28.355036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081539, 34.429607, 28.407881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210803, -0.063530, 0.975462,
		-0.573983, -0.799702, -0.176124,
		0.791268, -0.597026, 0.132114,
		41.318920, 34.250500, 28.447515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510300, 33.948853, 28.631092>,  <40.765034, 34.668419, 28.355036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510300, 33.948853, 28.631092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889065, 33.961075, 28.759102>,  <41.116325, 33.968410, 28.835907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889065, 33.961075, 28.759102>,  <40.510300, 33.948853, 28.631092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889065, 33.961075, 28.759102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320462, 0.010572, 0.947202,
		0.025590, -0.999476, 0.019813,
		0.946916, 0.030588, 0.320024,
		41.173141, 33.970242, 28.855108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521824, 33.415581, 29.126854>,  <40.510300, 33.948853, 28.631092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521824, 33.415581, 29.126854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824234, 33.671230, 29.183350>,  <41.005680, 33.824619, 29.217247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824234, 33.671230, 29.183350>,  <40.521824, 33.415581, 29.126854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824234, 33.671230, 29.183350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331776, 0.188174, 0.924400,
		0.564231, -0.745726, 0.354311,
		0.756021, 0.639127, 0.141241,
		41.051041, 33.862968, 29.225721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640797, 33.211697, 29.777897>,  <40.521824, 33.415581, 29.126854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640797, 33.211697, 29.777897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832005, 33.557831, 29.717642>,  <40.946728, 33.765511, 29.681490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.832005, 33.557831, 29.717642>,  <40.640797, 33.211697, 29.777897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832005, 33.557831, 29.717642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042818, 0.148338, 0.988009,
		0.877305, -0.478737, 0.033857,
		0.478019, 0.865336, -0.150636,
		40.975410, 33.817432, 29.672451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225414, 33.088120, 30.093733>,  <40.640797, 33.211697, 29.777897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225414, 33.088120, 30.093733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111256, 33.470924, 30.073051>,  <41.042763, 33.700607, 30.060642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111256, 33.470924, 30.073051>,  <41.225414, 33.088120, 30.093733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111256, 33.470924, 30.073051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053619, 0.037921, 0.997841,
		0.956909, 0.287551, 0.040492,
		-0.285395, 0.957014, -0.051705,
		41.025639, 33.758030, 30.057539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706112, 33.490395, 30.608353>,  <41.225414, 33.088120, 30.093733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706112, 33.490395, 30.608353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397606, 33.731647, 30.526981>,  <41.212502, 33.876400, 30.478159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.397606, 33.731647, 30.526981>,  <41.706112, 33.490395, 30.608353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397606, 33.731647, 30.526981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092899, 0.209512, 0.973383,
		0.629696, 0.769637, -0.105560,
		-0.771267, 0.603129, -0.203427,
		41.166225, 33.912586, 30.465954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.080227, 36.047974, 35.968540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740891, 35.897228, 35.819786>,  <43.537289, 35.806782, 35.730534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740891, 35.897228, 35.819786>,  <44.080227, 36.047974, 35.968540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740891, 35.897228, 35.819786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528720, 0.566043, 0.632495,
		-0.027859, 0.733193, -0.679450,
		-0.848339, -0.376860, -0.371884,
		43.486389, 35.784172, 35.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602779, 36.559811, 35.839672>,  <44.080227, 36.047974, 35.968540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602779, 36.559811, 35.839672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338909, 36.260101, 35.816269>,  <43.180588, 36.080276, 35.802227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338909, 36.260101, 35.816269>,  <43.602779, 36.559811, 35.839672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338909, 36.260101, 35.816269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580125, 0.458166, 0.673453,
		-0.477794, 0.478199, -0.736911,
		-0.659673, -0.749272, -0.058506,
		43.141006, 36.035320, 35.798717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868404, 36.859936, 35.689949>,  <43.602779, 36.559811, 35.839672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868404, 36.859936, 35.689949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814072, 36.506176, 35.868565>,  <42.781471, 36.293922, 35.975735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814072, 36.506176, 35.868565>,  <42.868404, 36.859936, 35.689949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814072, 36.506176, 35.868565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637399, 0.423058, 0.644006,
		-0.758466, -0.197143, -0.621179,
		-0.135833, -0.884396, 0.446534,
		42.773323, 36.240856, 36.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141228, 36.848358, 35.785534>,  <42.868404, 36.859936, 35.689949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141228, 36.848358, 35.785534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272240, 36.546173, 36.012516>,  <42.350845, 36.364864, 36.148705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272240, 36.546173, 36.012516>,  <42.141228, 36.848358, 35.785534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272240, 36.546173, 36.012516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657143, 0.249394, 0.711313,
		-0.678888, -0.605874, -0.414761,
		0.327528, -0.755460, 0.567457,
		42.370499, 36.319534, 36.182755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530624, 36.499561, 36.010159>,  <42.141228, 36.848358, 35.785534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530624, 36.499561, 36.010159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.805550, 36.372509, 36.271450>,  <41.970505, 36.296280, 36.428226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.805550, 36.372509, 36.271450>,  <41.530624, 36.499561, 36.010159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805550, 36.372509, 36.271450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652553, 0.124973, 0.747366,
		-0.319020, -0.939944, -0.121373,
		0.687314, -0.317627, 0.653232,
		42.011745, 36.277222, 36.467419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223972, 35.980927, 36.454113>,  <41.530624, 36.499561, 36.010159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223972, 35.980927, 36.454113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532394, 36.136974, 36.655418>,  <41.717449, 36.230602, 36.776203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532394, 36.136974, 36.655418>,  <41.223972, 35.980927, 36.454113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532394, 36.136974, 36.655418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626897, 0.326468, 0.707403,
		0.111671, -0.860944, 0.496291,
		0.771057, 0.390120, 0.503266,
		41.763710, 36.254009, 36.806396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177231, 35.657635, 37.081623>,  <41.223972, 35.980927, 36.454113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177231, 35.657635, 37.081623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368988, 36.007175, 37.114056>,  <41.484043, 36.216900, 37.133514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368988, 36.007175, 37.114056>,  <41.177231, 35.657635, 37.081623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368988, 36.007175, 37.114056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548561, 0.226257, 0.804915,
		0.685030, -0.430345, 0.587825,
		0.479391, 0.873848, 0.081077,
		41.512806, 36.269329, 37.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085011, 35.743958, 37.724304>,  <41.177231, 35.657635, 37.081623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085011, 35.743958, 37.724304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244228, 36.100796, 37.638779>,  <41.339760, 36.314899, 37.587463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244228, 36.100796, 37.638779>,  <41.085011, 35.743958, 37.724304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244228, 36.100796, 37.638779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490920, 0.404037, 0.771849,
		0.774954, -0.202269, 0.598776,
		0.398049, 0.892099, -0.213813,
		41.363644, 36.368427, 37.574635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309406, 36.014668, 38.409283>,  <41.085011, 35.743958, 37.724304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309406, 36.014668, 38.409283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.274475, 36.323994, 38.158092>,  <41.253517, 36.509590, 38.007378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.274475, 36.323994, 38.158092>,  <41.309406, 36.014668, 38.409283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274475, 36.323994, 38.158092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502378, 0.510161, 0.698106,
		0.860226, 0.376447, 0.343945,
		-0.087332, 0.773319, -0.627973,
		41.248276, 36.555988, 37.969700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381012, 36.641727, 38.915916>,  <41.309406, 36.014668, 38.409283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381012, 36.641727, 38.915916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178452, 36.752804, 38.589371>,  <41.056915, 36.819450, 38.393444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178452, 36.752804, 38.589371>,  <41.381012, 36.641727, 38.915916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178452, 36.752804, 38.589371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640280, 0.513044, 0.571688,
		0.577580, 0.812204, -0.082009,
		-0.506401, 0.277687, -0.816363,
		41.026531, 36.836109, 38.344463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454437, 37.290489, 38.885185>,  <41.381012, 36.641727, 38.915916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454437, 37.290489, 38.885185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118130, 37.174248, 38.702465>,  <40.916348, 37.104504, 38.592834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118130, 37.174248, 38.702465>,  <41.454437, 37.290489, 38.885185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118130, 37.174248, 38.702465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540001, 0.510720, 0.669003,
		0.038881, 0.809145, -0.586322,
		-0.840766, -0.290603, -0.456796,
		40.865898, 37.087067, 38.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037991, 37.807186, 39.013744>,  <41.454437, 37.290489, 38.885185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037991, 37.807186, 39.013744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811195, 37.495770, 38.906120>,  <40.675117, 37.308922, 38.841545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811195, 37.495770, 38.906120>,  <41.037991, 37.807186, 39.013744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811195, 37.495770, 38.906120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613487, 0.181143, 0.768649,
		-0.549684, 0.600886, -0.580330,
		-0.566993, -0.778539, -0.269065,
		40.641098, 37.262207, 38.825401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270592, 37.936604, 38.905533>,  <41.037991, 37.807186, 39.013744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270592, 37.936604, 38.905533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367081, 37.581112, 39.061470>,  <40.424973, 37.367817, 39.155033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367081, 37.581112, 39.061470>,  <40.270592, 37.936604, 38.905533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367081, 37.581112, 39.061470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738099, 0.092807, 0.668279,
		-0.630097, -0.448948, -0.633580,
		0.241223, -0.888725, 0.389845,
		40.439449, 37.314495, 39.178425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616867, 37.631058, 39.008789>,  <40.270592, 37.936604, 38.905533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616867, 37.631058, 39.008789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837334, 37.477478, 39.305115>,  <39.969612, 37.385330, 39.482910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837334, 37.477478, 39.305115>,  <39.616867, 37.631058, 39.008789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837334, 37.477478, 39.305115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726132, 0.216650, 0.652529,
		-0.411036, -0.897577, -0.159389,
		0.551164, -0.383951, 0.740811,
		40.002682, 37.362293, 39.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600304, 37.870724, 38.340408>,  <39.616867, 37.631058, 39.008789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600304, 37.870724, 38.340408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506489, 38.125267, 38.634357>,  <39.450199, 38.277992, 38.810726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506489, 38.125267, 38.634357>,  <39.600304, 37.870724, 38.340408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506489, 38.125267, 38.634357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860853, 0.487134, -0.147082,
		-0.451580, 0.598124, -0.662060,
		-0.234539, 0.636355, 0.734877,
		39.436127, 38.316174, 38.854820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563992, 38.688061, 38.180492>,  <39.600304, 37.870724, 38.340408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563992, 38.688061, 38.180492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705360, 38.584175, 38.539967>,  <39.790180, 38.521843, 38.755653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705360, 38.584175, 38.539967>,  <39.563992, 38.688061, 38.180492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705360, 38.584175, 38.539967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899906, 0.356747, -0.250801,
		-0.255466, 0.897373, 0.359803,
		0.353421, -0.259718, 0.898688,
		39.811386, 38.506260, 38.809574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223461, 39.391567, 38.038326>,  <39.563992, 38.688061, 38.180492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223461, 39.391567, 38.038326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915722, 39.264503, 38.260029>,  <38.731079, 39.188267, 38.393051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915722, 39.264503, 38.260029>,  <39.223461, 39.391567, 38.038326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915722, 39.264503, 38.260029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305879, -0.578518, -0.756145,
		0.560844, -0.751272, 0.347915,
		-0.769346, -0.317659, 0.554256,
		38.684917, 39.169205, 38.426304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295776, 40.017982, 38.491470>,  <39.223461, 39.391567, 38.038326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295776, 40.017982, 38.491470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694054, 40.054077, 38.483017>,  <39.933022, 40.075733, 38.477943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694054, 40.054077, 38.483017>,  <39.295776, 40.017982, 38.491470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694054, 40.054077, 38.483017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040160, 0.214609, -0.975874,
		-0.083520, 0.972523, 0.217309,
		0.995696, 0.090232, -0.021132,
		39.992764, 40.081146, 38.476677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451248, 40.618404, 38.136974>,  <39.295776, 40.017982, 38.491470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451248, 40.618404, 38.136974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772972, 40.381264, 38.120861>,  <39.966007, 40.238979, 38.111191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772972, 40.381264, 38.120861>,  <39.451248, 40.618404, 38.136974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772972, 40.381264, 38.120861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030891, 0.025990, -0.999185,
		0.593412, 0.804895, 0.002590,
		0.804306, -0.592848, -0.040287,
		40.014263, 40.203411, 38.108776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829205, 40.896408, 37.636559>,  <39.451248, 40.618404, 38.136974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829205, 40.896408, 37.636559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004570, 40.537289, 37.653313>,  <40.109787, 40.321815, 37.663364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004570, 40.537289, 37.653313>,  <39.829205, 40.896408, 37.636559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004570, 40.537289, 37.653313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026383, -0.033730, -0.999083,
		0.898388, 0.439113, 0.008899,
		0.438410, -0.897799, 0.041888,
		40.136093, 40.267948, 37.665878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452660, 40.844273, 37.183544>,  <39.829205, 40.896408, 37.636559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452660, 40.844273, 37.183544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348877, 40.460812, 37.230316>,  <40.286606, 40.230736, 37.258377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348877, 40.460812, 37.230316>,  <40.452660, 40.844273, 37.183544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348877, 40.460812, 37.230316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237744, -0.180748, -0.954363,
		0.936034, -0.219818, 0.274810,
		-0.259458, -0.958650, 0.116926,
		40.271038, 40.173218, 37.265392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034000, 40.339703, 36.847462>,  <40.452660, 40.844273, 37.183544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034000, 40.339703, 36.847462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695396, 40.128345, 36.873459>,  <40.492233, 40.001530, 36.889057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.695396, 40.128345, 36.873459>,  <41.034000, 40.339703, 36.847462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695396, 40.128345, 36.873459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231824, -0.475757, -0.848477,
		0.479250, -0.703175, 0.525227,
		-0.846508, -0.528393, 0.064994,
		40.441444, 39.969826, 36.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228863, 39.690544, 36.841602>,  <41.034000, 40.339703, 36.847462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228863, 39.690544, 36.841602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846146, 39.684620, 36.725441>,  <40.616516, 39.681065, 36.655746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846146, 39.684620, 36.725441>,  <41.228863, 39.690544, 36.841602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846146, 39.684620, 36.725441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236625, -0.620093, -0.747993,
		-0.168997, -0.784388, 0.596804,
		-0.956791, -0.014810, -0.290399,
		40.559109, 39.680176, 36.638321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064648, 38.981720, 36.560352>,  <41.228863, 39.690544, 36.841602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064648, 38.981720, 36.560352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771339, 39.210945, 36.413979>,  <40.595352, 39.348480, 36.326153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771339, 39.210945, 36.413979>,  <41.064648, 38.981720, 36.560352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771339, 39.210945, 36.413979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043031, -0.498001, -0.866108,
		-0.678572, -0.650839, 0.340511,
		-0.733272, 0.573065, -0.365936,
		40.551357, 39.382866, 36.304199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722378, 38.539524, 36.091904>,  <41.064648, 38.981720, 36.560352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722378, 38.539524, 36.091904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.617306, 38.908516, 35.978745>,  <40.554260, 39.129910, 35.910851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.617306, 38.908516, 35.978745>,  <40.722378, 38.539524, 36.091904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617306, 38.908516, 35.978745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112569, -0.261892, -0.958510,
		-0.958293, -0.283629, -0.035048,
		-0.262683, 0.922479, -0.282897,
		40.538502, 39.185261, 35.893875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104473, 38.422791, 35.720287>,  <40.722378, 38.539524, 36.091904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104473, 38.422791, 35.720287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.257168, 38.777061, 35.614571>,  <40.348785, 38.989624, 35.551140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.257168, 38.777061, 35.614571>,  <40.104473, 38.422791, 35.720287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257168, 38.777061, 35.614571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068466, -0.258065, -0.963698,
		-0.921731, 0.385976, -0.037874,
		0.381739, 0.885678, -0.264293,
		40.371689, 39.042767, 35.535282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824211, 38.518623, 35.042511>,  <40.104473, 38.422791, 35.720287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824211, 38.518623, 35.042511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.115425, 38.791813, 35.066212>,  <40.290154, 38.955727, 35.080433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.115425, 38.791813, 35.066212>,  <39.824211, 38.518623, 35.042511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115425, 38.791813, 35.066212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237207, -0.169871, -0.956492,
		-0.643196, 0.710413, -0.285678,
		0.728033, 0.682977, 0.059254,
		40.333836, 38.996704, 35.083988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736916, 39.068401, 34.525646>,  <39.824211, 38.518623, 35.042511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736916, 39.068401, 34.525646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129162, 39.089008, 34.601273>,  <40.364510, 39.101372, 34.646648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129162, 39.089008, 34.601273>,  <39.736916, 39.068401, 34.525646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129162, 39.089008, 34.601273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187726, 0.029789, -0.981770,
		-0.056213, 0.998227, 0.019539,
		0.980611, 0.051520, 0.189068,
		40.423344, 39.104465, 34.657993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450424, 39.796474, 34.679653>,  <39.736916, 39.068401, 34.525646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450424, 39.796474, 34.679653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096439, 39.883602, 34.515026>,  <38.884048, 39.935879, 34.416248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096439, 39.883602, 34.515026>,  <39.450424, 39.796474, 34.679653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096439, 39.883602, 34.515026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464813, -0.359990, 0.808923,
		0.028041, 0.907171, 0.419825,
		-0.884965, 0.217824, -0.411570,
		38.830952, 39.948948, 34.391556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974625, 40.111580, 35.167416>,  <39.450424, 39.796474, 34.679653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974625, 40.111580, 35.167416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.741127, 39.965073, 34.877563>,  <38.601028, 39.877167, 34.703651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.741127, 39.965073, 34.877563>,  <38.974625, 40.111580, 35.167416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741127, 39.965073, 34.877563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692253, -0.241865, 0.679916,
		-0.424294, 0.898526, -0.112362,
		-0.583746, -0.366268, -0.724630,
		38.566002, 39.855194, 34.660175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550518, 40.581154, 35.121288>,  <38.974625, 40.111580, 35.167416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550518, 40.581154, 35.121288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379395, 40.245686, 34.986462>,  <38.276718, 40.044407, 34.905567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379395, 40.245686, 34.986462>,  <38.550518, 40.581154, 35.121288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379395, 40.245686, 34.986462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786689, 0.161861, 0.595752,
		-0.445080, 0.520036, -0.729017,
		-0.427812, -0.838668, -0.337065,
		38.251049, 39.994083, 34.885342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845318, 40.746960, 34.947376>,  <38.550518, 40.581154, 35.121288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845318, 40.746960, 34.947376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850811, 40.353924, 35.021484>,  <37.854107, 40.118103, 35.065948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850811, 40.353924, 35.021484>,  <37.845318, 40.746960, 34.947376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850811, 40.353924, 35.021484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749014, 0.112638, 0.652910,
		-0.662412, -0.147740, -0.734427,
		0.013736, -0.982592, 0.185272,
		37.854931, 40.059147, 35.077065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165955, 40.598465, 35.025341>,  <37.845318, 40.746960, 34.947376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165955, 40.598465, 35.025341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.346088, 40.289459, 35.204414>,  <37.454166, 40.104057, 35.311859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.346088, 40.289459, 35.204414>,  <37.165955, 40.598465, 35.025341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346088, 40.289459, 35.204414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636237, 0.074134, 0.767924,
		-0.626422, -0.630653, -0.458118,
		0.450331, -0.772516, 0.447684,
		37.481190, 40.057705, 35.338718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659660, 40.285027, 35.432953>,  <37.165955, 40.598465, 35.025341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659660, 40.285027, 35.432953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991726, 40.111839, 35.573444>,  <37.190964, 40.007927, 35.657742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991726, 40.111839, 35.573444>,  <36.659660, 40.285027, 35.432953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991726, 40.111839, 35.573444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444408, -0.133508, 0.885820,
		-0.336641, -0.891467, -0.303249,
		0.830165, -0.432970, 0.351231,
		37.240776, 39.981949, 35.678814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407352, 39.648518, 35.793087>,  <36.659660, 40.285027, 35.432953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407352, 39.648518, 35.793087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771770, 39.744156, 35.927444>,  <36.990421, 39.801540, 36.008060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771770, 39.744156, 35.927444>,  <36.407352, 39.648518, 35.793087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771770, 39.744156, 35.927444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316754, -0.115618, 0.941435,
		0.263929, -0.964088, -0.029599,
		0.911048, 0.239097, 0.335894,
		37.045086, 39.815884, 36.028214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692383, 39.069950, 36.172676>,  <36.407352, 39.648518, 35.793087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692383, 39.069950, 36.172676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.880966, 39.403530, 36.287395>,  <36.994118, 39.603680, 36.356228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.880966, 39.403530, 36.287395>,  <36.692383, 39.069950, 36.172676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880966, 39.403530, 36.287395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177532, -0.228806, 0.957147,
		0.863834, -0.502172, 0.040180,
		0.471459, 0.833949, 0.286802,
		37.022404, 39.653713, 36.373436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969589, 38.942680, 36.863239>,  <36.692383, 39.069950, 36.172676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969589, 38.942680, 36.863239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966854, 39.341702, 36.835426>,  <36.965214, 39.581116, 36.818741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966854, 39.341702, 36.835426>,  <36.969589, 38.942680, 36.863239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966854, 39.341702, 36.835426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345315, 0.062897, 0.936377,
		0.938462, 0.030410, 0.344041,
		-0.006836, 0.997556, -0.069528,
		36.964802, 39.640968, 36.814568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209370, 39.115448, 37.473583>,  <36.969589, 38.942680, 36.863239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209370, 39.115448, 37.473583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027214, 39.448265, 37.346878>,  <36.917923, 39.647953, 37.270855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027214, 39.448265, 37.346878>,  <37.209370, 39.115448, 37.473583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027214, 39.448265, 37.346878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426201, 0.108636, 0.898082,
		0.781650, 0.543977, 0.305144,
		-0.455386, 0.832038, -0.316758,
		36.890598, 39.697876, 37.251850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189613, 39.504734, 38.045238>,  <37.209370, 39.115448, 37.473583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189613, 39.504734, 38.045238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918201, 39.682335, 37.811157>,  <36.755356, 39.788895, 37.670708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918201, 39.682335, 37.811157>,  <37.189613, 39.504734, 38.045238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918201, 39.682335, 37.811157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538426, 0.241317, 0.807381,
		0.499700, 0.862917, 0.075324,
		-0.678526, 0.444005, -0.585203,
		36.714645, 39.815536, 37.635597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156483, 40.344704, 38.127670>,  <37.189613, 39.504734, 38.045238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156483, 40.344704, 38.127670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281391, 40.723099, 38.092815>,  <37.356335, 40.950134, 38.071903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281391, 40.723099, 38.092815>,  <37.156483, 40.344704, 38.127670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281391, 40.723099, 38.092815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800035, -0.311331, -0.512852,
		-0.512282, 0.090431, -0.854043,
		0.312268, 0.945989, -0.087141,
		37.375072, 41.006897, 38.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.845570, 40.658951, 31.124352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531792, 40.458111, 30.978725>,  <40.343525, 40.337608, 30.891350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531792, 40.458111, 30.978725>,  <40.845570, 40.658951, 31.124352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531792, 40.458111, 30.978725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526294, 0.228360, 0.819064,
		-0.328111, 0.834117, -0.443386,
		-0.784447, -0.502096, -0.364064,
		40.296459, 40.307484, 30.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240353, 41.060760, 31.191044>,  <40.845570, 40.658951, 31.124352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240353, 41.060760, 31.191044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100346, 40.687416, 31.222878>,  <40.016342, 40.463409, 31.241978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100346, 40.687416, 31.222878>,  <40.240353, 41.060760, 31.191044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100346, 40.687416, 31.222878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567313, 0.278817, 0.774866,
		-0.745417, 0.226063, -0.627096,
		-0.350013, -0.933358, 0.079586,
		39.995342, 40.407410, 31.246754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621334, 41.184181, 31.537863>,  <40.240353, 41.060760, 31.191044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621334, 41.184181, 31.537863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658726, 40.788086, 31.579226>,  <39.681160, 40.550430, 31.604042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658726, 40.788086, 31.579226>,  <39.621334, 41.184181, 31.537863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658726, 40.788086, 31.579226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539595, 0.036896, 0.841116,
		-0.836719, -0.134424, -0.530878,
		0.093479, -0.990237, 0.103406,
		39.686768, 40.491016, 31.610247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923122, 40.884571, 31.558775>,  <39.621334, 41.184181, 31.537863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923122, 40.884571, 31.558775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162487, 40.605610, 31.716526>,  <39.306107, 40.438232, 31.811176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162487, 40.605610, 31.716526>,  <38.923122, 40.884571, 31.558775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162487, 40.605610, 31.716526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655491, -0.143123, 0.741517,
		-0.460691, -0.702244, -0.542787,
		0.598411, -0.697402, 0.394379,
		39.342010, 40.396389, 31.834839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468941, 40.385914, 31.915802>,  <38.923122, 40.884571, 31.558775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468941, 40.385914, 31.915802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828316, 40.322350, 32.079540>,  <39.043941, 40.284210, 32.177784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828316, 40.322350, 32.079540>,  <38.468941, 40.385914, 31.915802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828316, 40.322350, 32.079540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433843, -0.177270, 0.883377,
		-0.067812, -0.971248, -0.228207,
		0.898433, -0.158910, 0.409348,
		39.097847, 40.274677, 32.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370476, 39.819042, 32.306900>,  <38.468941, 40.385914, 31.915802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370476, 39.819042, 32.306900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698059, 39.988976, 32.461212>,  <38.894608, 40.090935, 32.553799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698059, 39.988976, 32.461212>,  <38.370476, 39.819042, 32.306900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698059, 39.988976, 32.461212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345429, -0.171871, 0.922572,
		0.458248, -0.888804, 0.005996,
		0.818956, 0.424838, 0.385778,
		38.943745, 40.116428, 32.576946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566299, 39.337471, 32.731125>,  <38.370476, 39.819042, 32.306900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566299, 39.337471, 32.731125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750713, 39.668159, 32.860111>,  <38.861362, 39.866573, 32.937504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750713, 39.668159, 32.860111>,  <38.566299, 39.337471, 32.731125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750713, 39.668159, 32.860111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205747, -0.253896, 0.945095,
		0.863199, -0.502070, 0.053039,
		0.461037, 0.826718, 0.322462,
		38.889023, 39.916176, 32.956848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075447, 39.078678, 33.214317>,  <38.566299, 39.337471, 32.731125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075447, 39.078678, 33.214317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998169, 39.462658, 33.295479>,  <38.951801, 39.693047, 33.344177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998169, 39.462658, 33.295479>,  <39.075447, 39.078678, 33.214317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998169, 39.462658, 33.295479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184190, -0.238610, 0.953488,
		0.963716, 0.146839, 0.222912,
		-0.193198, 0.959950, 0.202906,
		38.940208, 39.750645, 33.356350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488323, 39.237911, 33.735195>,  <39.075447, 39.078678, 33.214317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488323, 39.237911, 33.735195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173985, 39.484871, 33.720959>,  <38.985382, 39.633045, 33.712418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173985, 39.484871, 33.720959>,  <39.488323, 39.237911, 33.735195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173985, 39.484871, 33.720959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172368, -0.163405, 0.971385,
		0.593913, 0.769494, 0.234830,
		-0.785848, 0.617395, -0.035588,
		38.938229, 39.670090, 33.710281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099800, 39.633602, 33.980537>,  <39.488323, 39.237911, 33.735195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099800, 39.633602, 33.980537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391136, 39.397652, 34.120003>,  <40.565937, 39.256081, 34.203682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391136, 39.397652, 34.120003>,  <40.099800, 39.633602, 33.980537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391136, 39.397652, 34.120003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414778, -0.025475, -0.909566,
		0.545411, 0.807094, 0.226112,
		0.728345, -0.589874, 0.348659,
		40.609638, 39.220688, 34.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762638, 39.966290, 33.858604>,  <40.099800, 39.633602, 33.980537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762638, 39.966290, 33.858604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845512, 39.577366, 33.901852>,  <40.895237, 39.344013, 33.927799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845512, 39.577366, 33.901852>,  <40.762638, 39.966290, 33.858604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845512, 39.577366, 33.901852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672691, 0.061346, -0.737376,
		0.710324, 0.225507, 0.666773,
		0.207187, -0.972308, 0.108121,
		40.907669, 39.285675, 33.934288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343613, 40.024910, 33.664509>,  <40.762638, 39.966290, 33.858604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343613, 40.024910, 33.664509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279888, 39.631100, 33.635303>,  <41.241653, 39.394814, 33.617779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279888, 39.631100, 33.635303>,  <41.343613, 40.024910, 33.664509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279888, 39.631100, 33.635303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660829, -0.051396, -0.748775,
		0.733434, -0.167538, 0.658790,
		-0.159308, -0.984525, -0.073018,
		41.232098, 39.335743, 33.613400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029408, 39.706066, 33.607460>,  <41.343613, 40.024910, 33.664509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029408, 39.706066, 33.607460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769302, 39.432220, 33.475731>,  <41.613239, 39.267914, 33.396694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769302, 39.432220, 33.475731>,  <42.029408, 39.706066, 33.607460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769302, 39.432220, 33.475731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641179, -0.262058, -0.721259,
		0.407484, -0.680166, 0.609369,
		-0.650266, -0.684616, -0.329324,
		41.574223, 39.226837, 33.376934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369556, 39.095627, 33.597366>,  <42.029408, 39.706066, 33.607460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369556, 39.095627, 33.597366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068340, 39.059135, 33.336720>,  <41.887611, 39.037239, 33.180332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068340, 39.059135, 33.336720>,  <42.369556, 39.095627, 33.597366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068340, 39.059135, 33.336720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656663, -0.166569, -0.735560,
		-0.041434, -0.981800, 0.185341,
		-0.753045, -0.091230, -0.651614,
		41.842426, 39.031769, 33.141235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558781, 38.449490, 33.215080>,  <42.369556, 39.095627, 33.597366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558781, 38.449490, 33.215080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263580, 38.607864, 32.996506>,  <42.086460, 38.702888, 32.865360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263580, 38.607864, 32.996506>,  <42.558781, 38.449490, 33.215080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263580, 38.607864, 32.996506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387188, -0.414751, -0.823449,
		-0.552671, -0.819275, 0.152781,
		-0.737997, 0.395942, -0.546434,
		42.042183, 38.726646, 32.832577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412857, 37.949440, 32.786274>,  <42.558781, 38.449490, 33.215080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412857, 37.949440, 32.786274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291527, 38.278652, 32.594189>,  <42.218727, 38.476181, 32.478935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291527, 38.278652, 32.594189>,  <42.412857, 37.949440, 32.786274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291527, 38.278652, 32.594189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344581, -0.375115, -0.860553,
		-0.888402, -0.426501, -0.169820,
		-0.303325, 0.823034, -0.480218,
		42.200531, 38.525562, 32.450123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001732, 37.766617, 32.204800>,  <42.412857, 37.949440, 32.786274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001732, 37.766617, 32.204800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134220, 38.134220, 32.119267>,  <42.213715, 38.354782, 32.067947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134220, 38.134220, 32.119267>,  <42.001732, 37.766617, 32.204800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134220, 38.134220, 32.119267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303816, -0.318431, -0.897941,
		-0.893302, 0.232452, -0.384679,
		0.331221, 0.919004, -0.213832,
		42.233585, 38.409920, 32.055119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879784, 37.779034, 31.485062>,  <42.001732, 37.766617, 32.204800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879784, 37.779034, 31.485062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101074, 38.107445, 31.541430>,  <42.233849, 38.304493, 31.575251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101074, 38.107445, 31.541430>,  <41.879784, 37.779034, 31.485062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101074, 38.107445, 31.541430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324029, -0.056247, -0.944374,
		-0.767430, 0.568111, -0.297154,
		0.553223, 0.821027, 0.140919,
		42.267040, 38.353752, 31.583706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712994, 38.306076, 30.883007>,  <41.879784, 37.779034, 31.485062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712994, 38.306076, 30.883007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074051, 38.386662, 31.035141>,  <42.290684, 38.435013, 31.126421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074051, 38.386662, 31.035141>,  <41.712994, 38.306076, 30.883007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074051, 38.386662, 31.035141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396415, -0.044989, -0.916968,
		-0.167626, 0.978462, -0.120473,
		0.902639, 0.201465, 0.380336,
		42.344841, 38.447102, 31.149242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920307, 38.835209, 30.423555>,  <41.712994, 38.306076, 30.883007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920307, 38.835209, 30.423555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236435, 38.681728, 30.614622>,  <42.426113, 38.589638, 30.729261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236435, 38.681728, 30.614622>,  <41.920307, 38.835209, 30.423555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236435, 38.681728, 30.614622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494352, -0.061219, -0.867103,
		0.361954, 0.921424, 0.141303,
		0.790319, -0.383706, 0.477667,
		42.473530, 38.566616, 30.757921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544044, 39.229904, 30.236216>,  <41.920307, 38.835209, 30.423555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544044, 39.229904, 30.236216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712231, 38.891571, 30.367535>,  <42.813141, 38.688572, 30.446327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712231, 38.891571, 30.367535>,  <42.544044, 39.229904, 30.236216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712231, 38.891571, 30.367535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567824, -0.036908, -0.822322,
		0.707662, 0.532173, 0.464764,
		0.420464, -0.845831, 0.328299,
		42.838371, 38.637821, 30.466024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247421, 39.267220, 30.028976>,  <42.544044, 39.229904, 30.236216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247421, 39.267220, 30.028976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205681, 38.877842, 30.110474>,  <43.180637, 38.644215, 30.159372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205681, 38.877842, 30.110474>,  <43.247421, 39.267220, 30.028976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205681, 38.877842, 30.110474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620397, -0.223831, -0.751670,
		0.777315, 0.047965, 0.627280,
		-0.104351, -0.973447, 0.203744,
		43.174374, 38.585808, 30.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939548, 39.028492, 30.127674>,  <43.247421, 39.267220, 30.028976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939548, 39.028492, 30.127674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686779, 38.738529, 30.017994>,  <43.535118, 38.564552, 29.952187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686779, 38.738529, 30.017994>,  <43.939548, 39.028492, 30.127674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686779, 38.738529, 30.017994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668907, -0.331430, -0.665370,
		0.391453, -0.603876, 0.694333,
		-0.631924, -0.724905, -0.274198,
		43.497200, 38.521057, 29.935734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.740170, 33.619652, 28.227543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785809, 34.016956, 28.235733>,  <38.813190, 34.255337, 28.240646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785809, 34.016956, 28.235733>,  <38.740170, 33.619652, 28.227543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785809, 34.016956, 28.235733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178834, 0.000262, 0.983879,
		0.977241, -0.115918, 0.177658,
		0.114096, 0.993259, 0.020474,
		38.820038, 34.314934, 28.241875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134209, 33.702965, 28.797766>,  <38.740170, 33.619652, 28.227543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134209, 33.702965, 28.797766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004391, 34.074203, 28.724770>,  <38.926498, 34.296947, 28.680973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004391, 34.074203, 28.724770>,  <39.134209, 33.702965, 28.797766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004391, 34.074203, 28.724770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218172, 0.114276, 0.969196,
		0.920364, 0.354365, 0.165397,
		-0.324548, 0.928098, -0.182488,
		38.907028, 34.352634, 28.670023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484993, 34.137009, 29.240776>,  <39.134209, 33.702965, 28.797766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484993, 34.137009, 29.240776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.169476, 34.358505, 29.134054>,  <38.980167, 34.491402, 29.070021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.169476, 34.358505, 29.134054>,  <39.484993, 34.137009, 29.240776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169476, 34.358505, 29.134054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035119, 0.392755, 0.918972,
		0.613660, 0.734245, -0.290354,
		-0.788789, 0.553740, -0.266804,
		38.932838, 34.524628, 29.054012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549294, 34.730679, 29.686014>,  <39.484993, 34.137009, 29.240776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549294, 34.730679, 29.686014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177372, 34.769127, 29.543896>,  <38.954220, 34.792194, 29.458626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177372, 34.769127, 29.543896>,  <39.549294, 34.730679, 29.686014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177372, 34.769127, 29.543896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324303, 0.242586, 0.914319,
		0.174072, 0.965356, -0.194385,
		-0.929799, 0.096118, -0.355295,
		38.898434, 34.797962, 29.437307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142403, 35.387096, 30.039755>,  <39.549294, 34.730679, 29.686014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142403, 35.387096, 30.039755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848061, 35.155235, 29.899742>,  <38.671455, 35.016117, 29.815735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848061, 35.155235, 29.899742>,  <39.142403, 35.387096, 30.039755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848061, 35.155235, 29.899742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481500, 0.084463, 0.872366,
		-0.476107, 0.810473, -0.341256,
		-0.735853, -0.579655, -0.350030,
		38.627304, 34.981339, 29.794733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517059, 35.808582, 30.063904>,  <39.142403, 35.387096, 30.039755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517059, 35.808582, 30.063904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391079, 35.428970, 30.068766>,  <38.315491, 35.201202, 30.071682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391079, 35.428970, 30.068766>,  <38.517059, 35.808582, 30.063904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391079, 35.428970, 30.068766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562563, 0.196976, 0.802947,
		-0.764415, 0.246051, -0.595927,
		-0.314949, -0.949031, 0.012153,
		38.296593, 35.144260, 30.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812534, 35.850533, 30.171383>,  <38.517059, 35.808582, 30.063904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812534, 35.850533, 30.171383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911812, 35.479984, 30.284695>,  <37.971378, 35.257656, 30.352682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911812, 35.479984, 30.284695>,  <37.812534, 35.850533, 30.171383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911812, 35.479984, 30.284695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476364, 0.137913, 0.868365,
		-0.843492, -0.350464, -0.407059,
		0.248192, -0.926367, 0.283277,
		37.986271, 35.202076, 30.369678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295258, 35.585949, 30.527725>,  <37.812534, 35.850533, 30.171383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295258, 35.585949, 30.527725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587883, 35.350281, 30.664949>,  <37.763458, 35.208878, 30.747284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587883, 35.350281, 30.664949>,  <37.295258, 35.585949, 30.527725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587883, 35.350281, 30.664949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350581, 0.106471, 0.930461,
		-0.584730, -0.800960, -0.128663,
		0.731563, -0.589175, 0.343058,
		37.807350, 35.173527, 30.767866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006882, 35.342972, 31.118677>,  <37.295258, 35.585949, 30.527725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006882, 35.342972, 31.118677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363049, 35.182495, 31.204662>,  <37.576748, 35.086208, 31.256254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363049, 35.182495, 31.204662>,  <37.006882, 35.342972, 31.118677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363049, 35.182495, 31.204662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286718, -0.127603, 0.949479,
		-0.353492, -0.907063, -0.228647,
		0.890414, -0.401191, 0.214965,
		37.630173, 35.062138, 31.269152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883652, 34.788139, 31.576658>,  <37.006882, 35.342972, 31.118677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883652, 34.788139, 31.576658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262669, 34.906975, 31.623837>,  <37.490078, 34.978275, 31.652143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262669, 34.906975, 31.623837>,  <36.883652, 34.788139, 31.576658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262669, 34.906975, 31.623837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155802, 0.107077, 0.981967,
		0.279103, -0.948827, 0.147747,
		0.947537, 0.297090, 0.117944,
		37.546928, 34.996101, 31.659220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071323, 34.360878, 32.098373>,  <36.883652, 34.788139, 31.576658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071323, 34.360878, 32.098373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327110, 34.667583, 32.075912>,  <37.480583, 34.851608, 32.062435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327110, 34.667583, 32.075912>,  <37.071323, 34.360878, 32.098373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327110, 34.667583, 32.075912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083444, 0.003389, 0.996507,
		0.764275, -0.641922, -0.061815,
		0.639470, 0.766763, -0.056155,
		37.518951, 34.897614, 32.059067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718998, 34.170109, 32.324734>,  <37.071323, 34.360878, 32.098373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718998, 34.170109, 32.324734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684162, 34.564632, 32.380749>,  <37.663261, 34.801346, 32.414360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684162, 34.564632, 32.380749>,  <37.718998, 34.170109, 32.324734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684162, 34.564632, 32.380749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086326, -0.132573, 0.987407,
		0.992453, 0.098080, -0.073599,
		-0.087087, 0.986309, 0.140040,
		37.658035, 34.860523, 32.422760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079407, 34.288708, 32.913536>,  <37.718998, 34.170109, 32.324734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079407, 34.288708, 32.913536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869690, 34.628681, 32.892628>,  <37.743858, 34.832664, 32.880085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.869690, 34.628681, 32.892628>,  <38.079407, 34.288708, 32.913536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869690, 34.628681, 32.892628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002428, 0.059886, 0.998202,
		0.851535, 0.523477, -0.029334,
		-0.524292, 0.849933, -0.052266,
		37.712402, 34.883659, 32.876949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361088, 34.755920, 33.450901>,  <38.079407, 34.288708, 32.913536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361088, 34.755920, 33.450901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009529, 34.920887, 33.355019>,  <37.798595, 35.019867, 33.297489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009529, 34.920887, 33.355019>,  <38.361088, 34.755920, 33.450901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009529, 34.920887, 33.355019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193832, 0.150388, 0.969439,
		0.435857, 0.898499, -0.052237,
		-0.878896, 0.412412, -0.239706,
		37.745861, 35.044609, 33.283108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961357, 35.114265, 33.678574>,  <38.361088, 34.755920, 33.450901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961357, 35.114265, 33.678574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202053, 34.844772, 33.850147>,  <39.346470, 34.683075, 33.953091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202053, 34.844772, 33.850147>,  <38.961357, 35.114265, 33.678574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202053, 34.844772, 33.850147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346756, -0.263419, -0.900206,
		0.719490, 0.690429, 0.075111,
		0.601743, -0.673735, 0.428937,
		39.382576, 34.642651, 33.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729134, 35.394341, 33.514412>,  <38.961357, 35.114265, 33.678574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729134, 35.394341, 33.514412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703747, 35.001831, 33.587154>,  <39.688515, 34.766327, 33.630798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703747, 35.001831, 33.587154>,  <39.729134, 35.394341, 33.514412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703747, 35.001831, 33.587154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521056, -0.187997, -0.832561,
		0.851160, 0.041917, 0.523231,
		-0.063468, -0.981275, 0.181857,
		39.684708, 34.707447, 33.641712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391670, 35.271832, 33.431591>,  <39.729134, 35.394341, 33.514412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391670, 35.271832, 33.431591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.177670, 34.935604, 33.397594>,  <40.049271, 34.733868, 33.377197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.177670, 34.935604, 33.397594>,  <40.391670, 35.271832, 33.431591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177670, 34.935604, 33.397594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431078, -0.185074, -0.883130,
		0.726600, -0.509112, 0.461364,
		-0.534999, -0.840567, -0.084992,
		40.017170, 34.683434, 33.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852364, 34.782616, 33.377632>,  <40.391670, 35.271832, 33.431591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852364, 34.782616, 33.377632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533188, 34.614182, 33.205132>,  <40.341682, 34.513123, 33.101631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.533188, 34.614182, 33.205132>,  <40.852364, 34.782616, 33.377632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533188, 34.614182, 33.205132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460029, 0.036813, -0.887140,
		0.389436, -0.906274, 0.164336,
		-0.797943, -0.421084, -0.431249,
		40.293804, 34.487858, 33.075756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139221, 34.226246, 32.980900>,  <40.852364, 34.782616, 33.377632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139221, 34.226246, 32.980900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774998, 34.303970, 32.834953>,  <40.556465, 34.350605, 32.747383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774998, 34.303970, 32.834953>,  <41.139221, 34.226246, 32.980900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774998, 34.303970, 32.834953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341630, -0.143257, -0.928852,
		-0.232757, -0.970423, 0.064061,
		-0.910557, 0.194312, -0.364869,
		40.501831, 34.362263, 32.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999172, 33.724163, 32.499981>,  <41.139221, 34.226246, 32.980900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999172, 33.724163, 32.499981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751469, 34.026089, 32.413479>,  <40.602844, 34.207245, 32.361580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.751469, 34.026089, 32.413479>,  <40.999172, 33.724163, 32.499981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751469, 34.026089, 32.413479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122030, -0.179547, -0.976151,
		-0.775645, -0.630882, 0.019076,
		-0.619261, 0.754819, -0.216251,
		40.565689, 34.252533, 32.348602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736080, 33.428612, 31.917259>,  <40.999172, 33.724163, 32.499981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736080, 33.428612, 31.917259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644917, 33.816391, 31.880993>,  <40.590218, 34.049061, 31.859234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644917, 33.816391, 31.880993>,  <40.736080, 33.428612, 31.917259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644917, 33.816391, 31.880993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072697, -0.075912, -0.994461,
		-0.970964, -0.233242, -0.053175,
		-0.227914, 0.969451, -0.090664,
		40.576542, 34.107227, 31.853794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161037, 33.420338, 31.490068>,  <40.736080, 33.428612, 31.917259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161037, 33.420338, 31.490068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.343895, 33.775337, 31.466852>,  <40.453609, 33.988335, 31.452923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.343895, 33.775337, 31.466852>,  <40.161037, 33.420338, 31.490068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343895, 33.775337, 31.466852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096165, -0.114197, -0.988793,
		-0.884178, 0.446440, -0.137550,
		0.457144, 0.887497, -0.058039,
		40.481037, 34.041588, 31.449440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873837, 33.775330, 30.876860>,  <40.161037, 33.420338, 31.490068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873837, 33.775330, 30.876860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218498, 33.956150, 30.969122>,  <40.425297, 34.064640, 31.024479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.218498, 33.956150, 30.969122>,  <39.873837, 33.775330, 30.876860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218498, 33.956150, 30.969122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245386, 0.026719, -0.969057,
		-0.444223, 0.891594, -0.087903,
		0.861656, 0.452047, 0.230654,
		40.476994, 34.091763, 31.038319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917046, 34.306061, 30.452219>,  <39.873837, 33.775330, 30.876860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917046, 34.306061, 30.452219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298325, 34.256191, 30.562397>,  <40.527092, 34.226269, 30.628504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298325, 34.256191, 30.562397>,  <39.917046, 34.306061, 30.452219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298325, 34.256191, 30.562397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282865, 0.045994, -0.958057,
		0.106774, 0.991131, 0.079106,
		0.953198, -0.124672, 0.275445,
		40.584286, 34.218788, 30.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277172, 34.776951, 30.056952>,  <39.917046, 34.306061, 30.452219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277172, 34.776951, 30.056952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543034, 34.504860, 30.180574>,  <40.702553, 34.341606, 30.254747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543034, 34.504860, 30.180574>,  <40.277172, 34.776951, 30.056952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543034, 34.504860, 30.180574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442206, 0.024734, -0.896572,
		0.602233, 0.732580, 0.317242,
		0.664657, -0.680232, 0.309056,
		40.742432, 34.300789, 30.273291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830025, 35.056019, 29.847630>,  <40.277172, 34.776951, 30.056952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830025, 35.056019, 29.847630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.910946, 34.671364, 29.921732>,  <40.959499, 34.440571, 29.966194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.910946, 34.671364, 29.921732>,  <40.830025, 35.056019, 29.847630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910946, 34.671364, 29.921732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447342, -0.077538, -0.890996,
		0.871183, 0.263122, 0.414496,
		0.202302, -0.961641, 0.185255,
		40.971638, 34.382870, 29.977308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527058, 34.958294, 29.827633>,  <40.830025, 35.056019, 29.847630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527058, 34.958294, 29.827633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347641, 34.611088, 29.742439>,  <41.239990, 34.402763, 29.691322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347641, 34.611088, 29.742439>,  <41.527058, 34.958294, 29.827633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347641, 34.611088, 29.742439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607616, -0.121389, -0.784899,
		0.655450, -0.481471, 0.581868,
		-0.448539, -0.868015, -0.212985,
		41.213078, 34.350685, 29.678543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123138, 34.517212, 29.547895>,  <41.527058, 34.958294, 29.827633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123138, 34.517212, 29.547895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.782875, 34.337719, 29.438337>,  <41.578716, 34.230022, 29.372602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.782875, 34.337719, 29.438337>,  <42.123138, 34.517212, 29.547895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782875, 34.337719, 29.438337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397645, -0.208399, -0.893559,
		0.343894, -0.869025, 0.355714,
		-0.850656, -0.448737, -0.273897,
		41.527679, 34.203098, 29.356169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837013, 34.126785, 29.729578>,  <42.123138, 34.517212, 29.547895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837013, 34.126785, 29.729578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.168682, 34.338665, 29.801010>,  <43.367683, 34.465794, 29.843870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.168682, 34.338665, 29.801010>,  <42.837013, 34.126785, 29.729578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168682, 34.338665, 29.801010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171428, -0.063115, 0.983173,
		0.532058, -0.845834, 0.038473,
		0.829172, 0.529700, 0.178580,
		43.417435, 34.497574, 29.854584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299927, 33.747211, 30.150492>,  <42.837013, 34.126785, 29.729578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299927, 33.747211, 30.150492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.417088, 34.123707, 30.217760>,  <43.487385, 34.349606, 30.258121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.417088, 34.123707, 30.217760>,  <43.299927, 33.747211, 30.150492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417088, 34.123707, 30.217760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184318, -0.117003, 0.975878,
		0.938210, -0.316830, 0.139217,
		0.292899, 0.941238, 0.168171,
		43.504959, 34.406078, 30.268211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827675, 33.709599, 30.567053>,  <43.299927, 33.747211, 30.150492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827675, 33.709599, 30.567053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.661263, 34.071911, 30.599228>,  <43.561417, 34.289299, 30.618532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.661263, 34.071911, 30.599228>,  <43.827675, 33.709599, 30.567053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661263, 34.071911, 30.599228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099626, -0.133325, 0.986052,
		0.903876, 0.402216, 0.145707,
		-0.416032, 0.905785, 0.080438,
		43.536453, 34.343647, 30.623360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194370, 33.888119, 31.205475>,  <43.827675, 33.709599, 30.567053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194370, 33.888119, 31.205475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.880367, 34.133427, 31.170441>,  <43.691967, 34.280609, 31.149420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.880367, 34.133427, 31.170441>,  <44.194370, 33.888119, 31.205475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880367, 34.133427, 31.170441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061218, 0.063899, 0.996077,
		0.616458, 0.787287, -0.012618,
		-0.785005, 0.613267, -0.087588,
		43.644867, 34.317406, 31.144165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308533, 34.405735, 31.735378>,  <44.194370, 33.888119, 31.205475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308533, 34.405735, 31.735378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915405, 34.436230, 31.668148>,  <43.679527, 34.454525, 31.627810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915405, 34.436230, 31.668148>,  <44.308533, 34.405735, 31.735378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915405, 34.436230, 31.668148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130983, 0.353429, 0.926246,
		0.130017, 0.932350, -0.337372,
		-0.982822, 0.076238, -0.168074,
		43.620560, 34.459103, 31.617725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128235, 34.993767, 32.002605>,  <44.308533, 34.405735, 31.735378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128235, 34.993767, 32.002605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.776859, 34.803486, 31.984453>,  <43.566036, 34.689316, 31.973562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.776859, 34.803486, 31.984453>,  <44.128235, 34.993767, 32.002605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776859, 34.803486, 31.984453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236618, 0.350496, 0.906181,
		-0.415166, 0.806759, -0.420448,
		-0.878435, -0.475701, -0.045379,
		43.513329, 34.660774, 31.970839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587154, 35.454750, 32.227989>,  <44.128235, 34.993767, 32.002605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587154, 35.454750, 32.227989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.445549, 35.088566, 32.304516>,  <43.360584, 34.868855, 32.350433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.445549, 35.088566, 32.304516>,  <43.587154, 35.454750, 32.227989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445549, 35.088566, 32.304516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189719, 0.270609, 0.943810,
		-0.915795, 0.297826, -0.269480,
		-0.354015, -0.915462, 0.191319,
		43.339344, 34.813927, 32.361912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988102, 35.616264, 32.557888>,  <43.587154, 35.454750, 32.227989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988102, 35.616264, 32.557888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.070438, 35.232922, 32.637066>,  <43.119839, 35.002914, 32.684574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.070438, 35.232922, 32.637066>,  <42.988102, 35.616264, 32.557888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070438, 35.232922, 32.637066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148522, 0.169342, 0.974302,
		-0.967250, -0.229946, -0.107481,
		0.205836, -0.958357, 0.197948,
		43.132191, 34.945415, 32.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595715, 35.441738, 33.053585>,  <42.988102, 35.616264, 32.557888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595715, 35.441738, 33.053585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.857487, 35.141548, 33.090485>,  <43.014549, 34.961433, 33.112625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.857487, 35.141548, 33.090485>,  <42.595715, 35.441738, 33.053585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857487, 35.141548, 33.090485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020628, 0.104242, 0.994338,
		-0.755840, -0.652629, 0.052739,
		0.654432, -0.750472, 0.092253,
		43.053818, 34.916405, 33.118160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318073, 34.862030, 33.471130>,  <42.595715, 35.441738, 33.053585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318073, 34.862030, 33.471130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.714836, 34.830467, 33.510918>,  <42.952892, 34.811527, 33.534790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.714836, 34.830467, 33.510918>,  <42.318073, 34.862030, 33.471130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714836, 34.830467, 33.510918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079928, 0.220674, 0.972067,
		-0.098658, -0.972150, 0.212580,
		0.991906, -0.078911, 0.099473,
		43.012409, 34.806793, 33.540760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427505, 34.577053, 34.156895>,  <42.318073, 34.862030, 33.471130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427505, 34.577053, 34.156895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785801, 34.724976, 34.058182>,  <43.000778, 34.813728, 33.998955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785801, 34.724976, 34.058182>,  <42.427505, 34.577053, 34.156895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785801, 34.724976, 34.058182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193803, 0.174783, 0.965345,
		0.400126, -0.912520, 0.084889,
		0.895734, 0.369808, -0.246784,
		43.054520, 34.835918, 33.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802612, 34.124454, 34.545731>,  <42.427505, 34.577053, 34.156895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802612, 34.124454, 34.545731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002731, 34.465076, 34.483040>,  <43.122803, 34.669449, 34.445427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002731, 34.465076, 34.483040>,  <42.802612, 34.124454, 34.545731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002731, 34.465076, 34.483040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031628, 0.162910, 0.986134,
		0.865277, -0.498315, 0.054570,
		0.500296, 0.851553, -0.156723,
		43.152821, 34.720543, 34.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432137, 34.126579, 34.912884>,  <42.802612, 34.124454, 34.545731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432137, 34.126579, 34.912884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.352386, 34.517681, 34.886826>,  <43.304535, 34.752342, 34.871189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.352386, 34.517681, 34.886826>,  <43.432137, 34.126579, 34.912884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352386, 34.517681, 34.886826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125471, 0.091404, 0.987878,
		0.971857, 0.188789, -0.140904,
		-0.199379, 0.977755, -0.065144,
		43.292572, 34.811008, 34.867283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052567, 34.615299, 34.868790>,  <43.432137, 34.126579, 34.912884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052567, 34.615299, 34.868790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.704563, 34.657990, 35.061333>,  <43.495762, 34.683605, 35.176857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.704563, 34.657990, 35.061333>,  <44.052567, 34.615299, 34.868790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704563, 34.657990, 35.061333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490912, 0.096842, 0.865810,
		0.045788, 0.989561, -0.136645,
		-0.870005, 0.106724, 0.481353,
		43.443562, 34.690006, 35.205738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.545155, 38.315094, 29.887257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182537, 38.219769, 29.747898>,  <43.964966, 38.162575, 29.664284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182537, 38.219769, 29.747898>,  <44.545155, 38.315094, 29.887257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182537, 38.219769, 29.747898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366383, -0.034388, -0.929828,
		0.209610, -0.970579, 0.118489,
		-0.906547, -0.238314, -0.348396,
		43.910572, 38.148273, 29.643379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612968, 37.590820, 29.420393>,  <44.545155, 38.315094, 29.887257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612968, 37.590820, 29.420393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.296474, 37.802643, 29.298075>,  <44.106579, 37.929737, 29.224684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.296474, 37.802643, 29.298075>,  <44.612968, 37.590820, 29.420393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296474, 37.802643, 29.298075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265010, -0.153721, -0.951914,
		-0.551100, -0.834230, -0.018708,
		-0.791239, 0.529557, -0.305794,
		44.059101, 37.961510, 29.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533890, 37.309185, 28.750835>,  <44.612968, 37.590820, 29.420393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533890, 37.309185, 28.750835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.280201, 37.618053, 28.735325>,  <44.127987, 37.803375, 28.726019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.280201, 37.618053, 28.735325>,  <44.533890, 37.309185, 28.750835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280201, 37.618053, 28.735325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026535, -0.028388, -0.999245,
		-0.772693, -0.634775, -0.002485,
		-0.634225, 0.772176, -0.038779,
		44.089935, 37.849705, 28.723692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989540, 37.126709, 28.252907>,  <44.533890, 37.309185, 28.750835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989540, 37.126709, 28.252907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.016769, 37.524475, 28.285173>,  <44.033108, 37.763134, 28.304533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.016769, 37.524475, 28.285173>,  <43.989540, 37.126709, 28.252907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016769, 37.524475, 28.285173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051470, 0.077247, -0.995682,
		-0.996352, 0.071931, -0.045924,
		0.068073, 0.994414, 0.080668,
		44.037189, 37.822800, 28.309374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457218, 37.344158, 27.846653>,  <43.989540, 37.126709, 28.252907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457218, 37.344158, 27.846653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.741001, 37.620110, 27.904257>,  <43.911270, 37.785679, 27.938818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.741001, 37.620110, 27.904257>,  <43.457218, 37.344158, 27.846653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741001, 37.620110, 27.904257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250205, -0.055533, -0.966599,
		-0.658838, 0.721792, -0.212009,
		0.709457, 0.689878, 0.144009,
		43.953838, 37.827072, 27.947460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392605, 37.961887, 27.392101>,  <43.457218, 37.344158, 27.846653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392605, 37.961887, 27.392101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.781326, 37.987068, 27.483002>,  <44.014557, 38.002178, 27.537542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.781326, 37.987068, 27.483002>,  <43.392605, 37.961887, 27.392101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781326, 37.987068, 27.483002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216418, 0.144582, -0.965536,
		-0.093640, 0.987488, 0.126881,
		0.971800, 0.062953, 0.227249,
		44.072865, 38.005955, 27.551176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606991, 38.482933, 27.071293>,  <43.392605, 37.961887, 27.392101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606991, 38.482933, 27.071293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.949299, 38.288609, 27.142439>,  <44.154686, 38.172012, 27.185127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.949299, 38.288609, 27.142439>,  <43.606991, 38.482933, 27.071293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949299, 38.288609, 27.142439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284520, 0.154813, -0.946087,
		0.432085, 0.860244, 0.270709,
		0.855775, -0.485812, 0.177864,
		44.206032, 38.142864, 27.195799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115387, 38.770428, 26.554998>,  <43.606991, 38.482933, 27.071293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115387, 38.770428, 26.554998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.322479, 38.467731, 26.714649>,  <44.446735, 38.286114, 26.810440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.322479, 38.467731, 26.714649>,  <44.115387, 38.770428, 26.554998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322479, 38.467731, 26.714649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527921, -0.084538, -0.845076,
		0.673241, 0.648231, 0.355729,
		0.517731, -0.756736, 0.399129,
		44.477798, 38.240711, 26.834389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768299, 38.905132, 26.297089>,  <44.115387, 38.770428, 26.554998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768299, 38.905132, 26.297089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.755936, 38.517056, 26.393238>,  <44.748520, 38.284210, 26.450928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.755936, 38.517056, 26.393238>,  <44.768299, 38.905132, 26.297089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755936, 38.517056, 26.393238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529378, -0.219879, -0.819398,
		0.847823, 0.101925, 0.520392,
		-0.030906, -0.970188, 0.240375,
		44.746662, 38.225998, 26.465351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373013, 38.630402, 26.147932>,  <44.768299, 38.905132, 26.297089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373013, 38.630402, 26.147932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.150135, 38.298393, 26.138147>,  <45.016407, 38.099190, 26.132277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.150135, 38.298393, 26.138147>,  <45.373013, 38.630402, 26.147932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150135, 38.298393, 26.138147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450066, -0.277112, -0.848911,
		0.697834, -0.484020, 0.527970,
		-0.557196, -0.830020, -0.024462,
		44.982975, 38.049389, 26.130808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776344, 38.077667, 26.001957>,  <45.373013, 38.630402, 26.147932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776344, 38.077667, 26.001957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.415714, 37.930641, 25.910688>,  <45.199337, 37.842426, 25.855928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.415714, 37.930641, 25.910688>,  <45.776344, 38.077667, 26.001957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415714, 37.930641, 25.910688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386295, -0.446502, -0.807101,
		0.194783, -0.815802, 0.544543,
		-0.901574, -0.367564, -0.228169,
		45.145241, 37.820374, 25.842237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889763, 37.387096, 25.662430>,  <45.776344, 38.077667, 26.001957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889763, 37.387096, 25.662430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.539066, 37.538937, 25.544296>,  <45.328648, 37.630039, 25.473415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.539066, 37.538937, 25.544296>,  <45.889763, 37.387096, 25.662430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539066, 37.538937, 25.544296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194577, -0.281611, -0.939593,
		-0.439838, -0.881249, 0.173040,
		-0.876745, 0.379599, -0.295334,
		45.276043, 37.652817, 25.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548866, 36.843849, 25.188404>,  <45.889763, 37.387096, 25.662430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548866, 36.843849, 25.188404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.413998, 37.200222, 25.066710>,  <45.333076, 37.414043, 24.993692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.413998, 37.200222, 25.066710>,  <45.548866, 36.843849, 25.188404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413998, 37.200222, 25.066710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149856, -0.268251, -0.951622,
		-0.929441, -0.366449, -0.043065,
		-0.337169, 0.890930, -0.304238,
		45.312847, 37.467503, 24.975437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928333, 36.776657, 24.675327>,  <45.548866, 36.843849, 25.188404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928333, 36.776657, 24.675327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.168339, 37.091022, 24.615559>,  <45.312344, 37.279640, 24.579697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.168339, 37.091022, 24.615559>,  <44.928333, 36.776657, 24.675327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168339, 37.091022, 24.615559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184333, -0.317576, -0.930144,
		-0.778462, 0.530557, -0.335419,
		0.600015, 0.785910, -0.149422,
		45.348343, 37.326797, 24.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807316, 36.054234, 24.622435>,  <44.928333, 36.776657, 24.675327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807316, 36.054234, 24.622435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.861942, 35.658112, 24.612228>,  <44.894718, 35.420441, 24.606104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.861942, 35.658112, 24.612228>,  <44.807316, 36.054234, 24.622435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861942, 35.658112, 24.612228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289095, -0.064476, 0.955127,
		-0.947509, -0.123061, -0.295097,
		0.136565, -0.990302, -0.025515,
		44.902912, 35.361019, 24.604574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206783, 35.735790, 24.879686>,  <44.807316, 36.054234, 24.622435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206783, 35.735790, 24.879686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.465549, 35.433849, 24.922960>,  <44.620808, 35.252686, 24.948925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.465549, 35.433849, 24.922960>,  <44.206783, 35.735790, 24.879686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465549, 35.433849, 24.922960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381866, -0.197877, 0.902786,
		-0.660060, -0.625338, -0.416261,
		0.646915, -0.754849, 0.108185,
		44.659626, 35.207394, 24.955416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784664, 35.129707, 25.165199>,  <44.206783, 35.735790, 24.879686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784664, 35.129707, 25.165199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.173553, 35.067184, 25.234894>,  <44.406887, 35.029671, 25.276711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.173553, 35.067184, 25.234894>,  <43.784664, 35.129707, 25.165199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173553, 35.067184, 25.234894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217559, -0.328790, 0.919002,
		-0.086356, -0.931379, -0.353661,
		0.972219, -0.156303, 0.174237,
		44.465218, 35.020294, 25.287165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721722, 34.470081, 25.594858>,  <43.784664, 35.129707, 25.165199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721722, 34.470081, 25.594858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.097019, 34.606056, 25.620598>,  <44.322197, 34.687641, 25.636042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.097019, 34.606056, 25.620598>,  <43.721722, 34.470081, 25.594858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097019, 34.606056, 25.620598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012770, -0.151845, 0.988322,
		0.345734, -0.928110, -0.138127,
		0.938245, 0.339933, 0.064350,
		44.378494, 34.708035, 25.639902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175629, 33.957127, 25.913048>,  <43.721722, 34.470081, 25.594858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175629, 33.957127, 25.913048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.344170, 34.314594, 25.974792>,  <44.445293, 34.529076, 26.011839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.344170, 34.314594, 25.974792>,  <44.175629, 33.957127, 25.913048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344170, 34.314594, 25.974792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097481, -0.124593, 0.987408,
		0.901644, -0.431091, 0.034618,
		0.421349, 0.893665, 0.154361,
		44.470573, 34.582695, 26.021101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739536, 33.918198, 26.461615>,  <44.175629, 33.957127, 25.913048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739536, 33.918198, 26.461615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.656517, 34.309296, 26.449383>,  <44.606705, 34.543957, 26.442043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.656517, 34.309296, 26.449383>,  <44.739536, 33.918198, 26.461615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656517, 34.309296, 26.449383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121184, 0.056716, 0.991008,
		0.970690, 0.201973, -0.130259,
		-0.207544, 0.977748, -0.030578,
		44.594254, 34.602619, 26.440210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186874, 34.334545, 26.917992>,  <44.739536, 33.918198, 26.461615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186874, 34.334545, 26.917992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.885777, 34.595810, 26.885139>,  <44.705116, 34.752571, 26.865427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.885777, 34.595810, 26.885139>,  <45.186874, 34.334545, 26.917992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885777, 34.595810, 26.885139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096888, 0.233324, 0.967560,
		0.651140, 0.720371, -0.238919,
		-0.752748, 0.653165, -0.082131,
		44.659950, 34.791759, 26.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332966, 34.826698, 27.369158>,  <45.186874, 34.334545, 26.917992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332966, 34.826698, 27.369158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.941574, 34.887669, 27.313520>,  <44.706738, 34.924252, 27.280138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.941574, 34.887669, 27.313520>,  <45.332966, 34.826698, 27.369158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941574, 34.887669, 27.313520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118550, 0.136471, 0.983525,
		0.168893, 0.978848, -0.115464,
		-0.978479, 0.152423, -0.139091,
		44.648029, 34.933395, 27.271793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201675, 35.269512, 27.860634>,  <45.332966, 34.826698, 27.369158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201675, 35.269512, 27.860634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.839668, 35.133556, 27.758331>,  <44.622463, 35.051983, 27.696949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.839668, 35.133556, 27.758331>,  <45.201675, 35.269512, 27.860634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839668, 35.133556, 27.758331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256065, -0.044781, 0.965622,
		-0.339661, 0.939398, -0.046506,
		-0.905020, -0.339892, -0.255757,
		44.568161, 35.031590, 27.681604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844898, 35.611561, 28.205769>,  <45.201675, 35.269512, 27.860634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844898, 35.611561, 28.205769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598072, 35.311878, 28.109503>,  <44.449978, 35.132069, 28.051744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598072, 35.311878, 28.109503>,  <44.844898, 35.611561, 28.205769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598072, 35.311878, 28.109503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364689, 0.001266, 0.931129,
		-0.697305, 0.662333, -0.274009,
		-0.617064, -0.749209, -0.240662,
		44.412952, 35.087116, 28.037304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281944, 35.806095, 28.397232>,  <44.844898, 35.611561, 28.205769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281944, 35.806095, 28.397232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.210800, 35.412704, 28.410746>,  <44.168114, 35.176670, 28.418854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.210800, 35.412704, 28.410746>,  <44.281944, 35.806095, 28.397232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210800, 35.412704, 28.410746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402422, 0.104020, 0.909525,
		-0.898010, 0.148173, -0.414273,
		-0.177860, -0.983476, 0.033783,
		44.157444, 35.117661, 28.420881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750542, 35.734245, 28.732330>,  <44.281944, 35.806095, 28.397232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750542, 35.734245, 28.732330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882309, 35.357662, 28.760986>,  <43.961369, 35.131710, 28.778179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.882309, 35.357662, 28.760986>,  <43.750542, 35.734245, 28.732330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882309, 35.357662, 28.760986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530278, -0.121700, 0.839043,
		-0.781209, -0.314386, -0.539327,
		0.329419, -0.941462, 0.071639,
		43.981136, 35.075222, 28.782478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147762, 35.279438, 28.795967>,  <43.750542, 35.734245, 28.732330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147762, 35.279438, 28.795967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.466785, 35.094849, 28.951372>,  <43.658199, 34.984093, 29.044615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.466785, 35.094849, 28.951372>,  <43.147762, 35.279438, 28.795967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466785, 35.094849, 28.951372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471507, -0.075160, 0.878654,
		-0.376278, -0.883963, -0.277534,
		0.797557, -0.461477, 0.388513,
		43.706051, 34.956406, 29.067926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829659, 34.635033, 29.136482>,  <43.147762, 35.279438, 28.795967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829659, 34.635033, 29.136482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186142, 34.703442, 29.304533>,  <43.400032, 34.744488, 29.405363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186142, 34.703442, 29.304533>,  <42.829659, 34.635033, 29.136482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186142, 34.703442, 29.304533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375010, -0.243269, 0.894532,
		0.255188, -0.954763, -0.152668,
		0.891204, 0.171022, 0.420125,
		43.453503, 34.754749, 29.430571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433720, 34.027851, 29.147257>,  <42.829659, 34.635033, 29.136482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433720, 34.027851, 29.147257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044914, 34.057724, 29.058163>,  <41.811630, 34.075649, 29.004705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044914, 34.057724, 29.058163>,  <42.433720, 34.027851, 29.147257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044914, 34.057724, 29.058163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205072, -0.192791, -0.959571,
		-0.114604, -0.978394, 0.172080,
		-0.972014, 0.074682, -0.222736,
		41.753311, 34.080132, 28.991343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246159, 33.429813, 28.708395>,  <42.433720, 34.027851, 29.147257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246159, 33.429813, 28.708395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.968147, 33.701057, 28.612814>,  <41.801342, 33.863804, 28.555466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.968147, 33.701057, 28.612814>,  <42.246159, 33.429813, 28.708395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968147, 33.701057, 28.612814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137781, -0.200568, -0.969943,
		-0.705656, -0.707062, 0.045970,
		-0.695030, 0.678112, -0.238952,
		41.759640, 33.904491, 28.541128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825161, 33.080898, 28.201138>,  <42.246159, 33.429813, 28.708395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825161, 33.080898, 28.201138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724426, 33.466000, 28.161758>,  <41.663986, 33.697060, 28.138130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724426, 33.466000, 28.161758>,  <41.825161, 33.080898, 28.201138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724426, 33.466000, 28.161758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075031, -0.120844, -0.989832,
		-0.964858, -0.241886, 0.102668,
		-0.251834, 0.962750, -0.098449,
		41.648876, 33.754826, 28.132223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321453, 33.120972, 27.727098>,  <41.825161, 33.080898, 28.201138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321453, 33.120972, 27.727098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.445362, 33.501244, 27.720751>,  <41.519707, 33.729408, 27.716942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.445362, 33.501244, 27.720751>,  <41.321453, 33.120972, 27.727098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445362, 33.501244, 27.720751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162835, 0.036599, -0.985974,
		-0.936765, 0.308007, 0.166141,
		0.309768, 0.950680, -0.015870,
		41.538292, 33.786446, 27.715990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905998, 33.410637, 27.234301>,  <41.321453, 33.120972, 27.727098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905998, 33.410637, 27.234301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191696, 33.687714, 27.274361>,  <41.363113, 33.853962, 27.298397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191696, 33.687714, 27.274361>,  <40.905998, 33.410637, 27.234301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191696, 33.687714, 27.274361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185482, -0.049361, -0.981407,
		-0.674872, 0.719540, -0.163738,
		0.714244, 0.692695, 0.100149,
		41.405968, 33.895523, 27.304405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823616, 33.915585, 26.701012>,  <40.905998, 33.410637, 27.234301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823616, 33.915585, 26.701012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202801, 33.972794, 26.814789>,  <41.430313, 34.007118, 26.883055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202801, 33.972794, 26.814789>,  <40.823616, 33.915585, 26.701012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202801, 33.972794, 26.814789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272944, 0.094862, -0.957342,
		-0.163903, 0.985163, 0.050889,
		0.947965, 0.143021, 0.284442,
		41.487190, 34.015701, 26.900122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024036, 34.528957, 26.360514>,  <40.823616, 33.915585, 26.701012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024036, 34.528957, 26.360514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345398, 34.300663, 26.428404>,  <41.538216, 34.163685, 26.469139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345398, 34.300663, 26.428404>,  <41.024036, 34.528957, 26.360514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345398, 34.300663, 26.428404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250993, 0.066121, -0.965728,
		0.539954, 0.818467, 0.196372,
		0.803401, -0.570736, 0.169727,
		41.586418, 34.129440, 26.479322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913265, 35.142921, 26.033733>,  <41.024036, 34.528957, 26.360514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913265, 35.142921, 26.033733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.537754, 35.045052, 25.936708>,  <40.312447, 34.986332, 25.878494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.537754, 35.045052, 25.936708>,  <40.913265, 35.142921, 26.033733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537754, 35.045052, 25.936708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178316, -0.257352, 0.949723,
		-0.294793, 0.934830, 0.197967,
		-0.938776, -0.244671, -0.242560,
		40.256123, 34.971649, 25.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565170, 35.385056, 26.626204>,  <40.913265, 35.142921, 26.033733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565170, 35.385056, 26.626204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302704, 35.167252, 26.417223>,  <40.145226, 35.036568, 26.291834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.302704, 35.167252, 26.417223>,  <40.565170, 35.385056, 26.626204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302704, 35.167252, 26.417223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526884, -0.165057, 0.833756,
		-0.540225, 0.822352, -0.178591,
		-0.656163, -0.544513, -0.522452,
		40.105854, 35.003899, 26.260487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867096, 35.579967, 26.666349>,  <40.565170, 35.385056, 26.626204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867096, 35.579967, 26.666349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802799, 35.200340, 26.557961>,  <39.764221, 34.972565, 26.492928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802799, 35.200340, 26.557961>,  <39.867096, 35.579967, 26.666349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802799, 35.200340, 26.557961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576409, -0.132590, 0.806333,
		-0.801195, 0.285805, -0.525739,
		-0.160746, -0.949071, -0.270971,
		39.754574, 34.915619, 26.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168739, 35.516163, 26.562756>,  <39.867096, 35.579967, 26.666349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168739, 35.516163, 26.562756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300419, 35.149063, 26.651628>,  <39.379425, 34.928802, 26.704952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300419, 35.149063, 26.651628>,  <39.168739, 35.516163, 26.562756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300419, 35.149063, 26.651628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549471, 0.005176, 0.835497,
		-0.767927, -0.397126, -0.502573,
		0.329197, -0.917750, 0.222184,
		39.399178, 34.873737, 26.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614647, 35.122028, 26.747272>,  <39.168739, 35.516163, 26.562756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614647, 35.122028, 26.747272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920799, 34.915871, 26.901447>,  <39.104488, 34.792175, 26.993952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920799, 34.915871, 26.901447>,  <38.614647, 35.122028, 26.747272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920799, 34.915871, 26.901447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526623, -0.157287, 0.835422,
		-0.369952, -0.842392, -0.391805,
		0.765379, -0.515399, 0.385434,
		39.150414, 34.761250, 27.017078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283939, 34.571301, 27.085114>,  <38.614647, 35.122028, 26.747272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283939, 34.571301, 27.085114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646946, 34.555065, 27.252337>,  <38.864750, 34.545322, 27.352671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.646946, 34.555065, 27.252337>,  <38.283939, 34.571301, 27.085114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646946, 34.555065, 27.252337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419906, -0.111429, 0.900701,
		0.010022, -0.992943, -0.118168,
		0.907513, -0.040592, 0.418060,
		38.919201, 34.542889, 27.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293793, 33.999481, 27.654493>,  <38.283939, 34.571301, 27.085114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293793, 33.999481, 27.654493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606949, 34.230282, 27.747568>,  <38.794842, 34.368763, 27.803413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606949, 34.230282, 27.747568>,  <38.293793, 33.999481, 27.654493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606949, 34.230282, 27.747568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306760, 0.032620, 0.951228,
		0.541274, -0.816088, 0.202540,
		0.782893, 0.577006, 0.232687,
		38.841816, 34.403385, 27.817373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.150940, 39.383190, 24.690510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387676, 39.066586, 24.751467>,  <42.529720, 38.876621, 24.788042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387676, 39.066586, 24.751467>,  <42.150940, 39.383190, 24.690510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387676, 39.066586, 24.751467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148595, 0.078684, 0.985763,
		-0.792238, -0.606062, -0.071047,
		0.591843, -0.791516, 0.152394,
		42.565228, 38.829132, 24.797184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833954, 38.735046, 24.976618>,  <42.150940, 39.383190, 24.690510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833954, 38.735046, 24.976618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217026, 38.786652, 25.079533>,  <42.446869, 38.817616, 25.141281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.217026, 38.786652, 25.079533>,  <41.833954, 38.735046, 24.976618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217026, 38.786652, 25.079533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269850, 0.091558, 0.958540,
		0.100140, -0.987403, 0.122507,
		0.957681, 0.129046, 0.257282,
		42.504330, 38.825356, 25.156719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917416, 38.223068, 25.405811>,  <41.833954, 38.735046, 24.976618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917416, 38.223068, 25.405811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203083, 38.489670, 25.491358>,  <42.374485, 38.649632, 25.542686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203083, 38.489670, 25.491358>,  <41.917416, 38.223068, 25.405811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203083, 38.489670, 25.491358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292165, 0.006189, 0.956348,
		0.636086, -0.745476, 0.199149,
		0.714167, 0.666504, 0.213865,
		42.417332, 38.689621, 25.555517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075935, 38.060970, 26.067684>,  <41.917416, 38.223068, 25.405811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075935, 38.060970, 26.067684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.236252, 38.423363, 26.013197>,  <42.332443, 38.640800, 25.980505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.236252, 38.423363, 26.013197>,  <42.075935, 38.060970, 26.067684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236252, 38.423363, 26.013197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279175, 0.262383, 0.923698,
		0.872598, -0.332183, 0.358089,
		0.400793, 0.905986, -0.136217,
		42.356491, 38.695160, 25.972332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610458, 38.145454, 26.488707>,  <42.075935, 38.060970, 26.067684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610458, 38.145454, 26.488707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.455013, 38.507122, 26.417763>,  <42.361744, 38.724121, 26.375196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.455013, 38.507122, 26.417763>,  <42.610458, 38.145454, 26.488707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455013, 38.507122, 26.417763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115232, 0.143287, 0.982950,
		0.914166, 0.402427, 0.048506,
		-0.388616, 0.904169, -0.177360,
		42.338428, 38.778374, 26.364555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798023, 38.531624, 27.051889>,  <42.610458, 38.145454, 26.488707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798023, 38.531624, 27.051889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.490185, 38.750683, 26.920555>,  <42.305481, 38.882118, 26.841755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.490185, 38.750683, 26.920555>,  <42.798023, 38.531624, 27.051889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490185, 38.750683, 26.920555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368858, 0.038435, 0.928690,
		0.521215, 0.835826, 0.172425,
		-0.769596, 0.547647, -0.328334,
		42.259304, 38.914978, 26.822054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705566, 39.016460, 27.547585>,  <42.798023, 38.531624, 27.051889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705566, 39.016460, 27.547585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373631, 39.045391, 27.326263>,  <42.174469, 39.062748, 27.193472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373631, 39.045391, 27.326263>,  <42.705566, 39.016460, 27.547585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373631, 39.045391, 27.326263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557730, -0.076162, 0.826521,
		0.017639, 0.994469, 0.103541,
		-0.829835, 0.072327, -0.553301,
		42.124680, 39.067089, 27.160273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326611, 39.480782, 27.951139>,  <42.705566, 39.016460, 27.547585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326611, 39.480782, 27.951139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047401, 39.325653, 27.710356>,  <41.879875, 39.232574, 27.565886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047401, 39.325653, 27.710356>,  <42.326611, 39.480782, 27.951139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047401, 39.325653, 27.710356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649023, -0.012525, 0.760666,
		-0.302542, 0.921649, -0.242963,
		-0.698024, -0.387822, -0.601961,
		41.837994, 39.209305, 27.529768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734245, 39.895233, 28.080080>,  <42.326611, 39.480782, 27.951139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734245, 39.895233, 28.080080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604008, 39.551258, 27.922859>,  <41.525864, 39.344872, 27.828526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.604008, 39.551258, 27.922859>,  <41.734245, 39.895233, 28.080080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604008, 39.551258, 27.922859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765006, -0.004705, 0.644006,
		-0.555656, 0.510373, -0.656328,
		-0.325595, -0.859940, -0.393053,
		41.506329, 39.293278, 27.804943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049690, 40.037106, 27.984287>,  <41.734245, 39.895233, 28.080080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049690, 40.037106, 27.984287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103432, 39.641319, 28.005846>,  <41.135677, 39.403847, 28.018782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103432, 39.641319, 28.005846>,  <41.049690, 40.037106, 27.984287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103432, 39.641319, 28.005846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569559, -0.032600, 0.821304,
		-0.810896, -0.141041, -0.567940,
		0.134352, -0.989467, 0.053896,
		41.143738, 39.344479, 28.022015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477207, 39.769989, 28.088120>,  <41.049690, 40.037106, 27.984287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477207, 39.769989, 28.088120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.736862, 39.493118, 28.214304>,  <40.892654, 39.326996, 28.290014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.736862, 39.493118, 28.214304>,  <40.477207, 39.769989, 28.088120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736862, 39.493118, 28.214304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460379, -0.027359, 0.887301,
		-0.605539, -0.721209, -0.336423,
		0.649134, -0.692177, 0.315462,
		40.931602, 39.285465, 28.308943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986534, 39.398750, 28.454906>,  <40.477207, 39.769989, 28.088120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986534, 39.398750, 28.454906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348972, 39.295811, 28.589230>,  <40.566433, 39.234047, 28.669823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348972, 39.295811, 28.589230>,  <39.986534, 39.398750, 28.454906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348972, 39.295811, 28.589230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312829, 0.126841, 0.941302,
		-0.284842, -0.957956, 0.034422,
		0.906093, -0.257354, 0.335806,
		40.620800, 39.218605, 28.689972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327843, 39.023693, 28.246155>,  <39.986534, 39.398750, 28.454906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327843, 39.023693, 28.246155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994511, 39.213356, 28.132502>,  <38.794510, 39.327152, 28.064310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994511, 39.213356, 28.132502>,  <39.327843, 39.023693, 28.246155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994511, 39.213356, 28.132502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214548, -0.196279, -0.956788,
		-0.509436, -0.858284, 0.061836,
		-0.833333, 0.474155, -0.284135,
		38.744511, 39.355602, 28.047260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935566, 38.539471, 27.769630>,  <39.327843, 39.023693, 28.246155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935566, 38.539471, 27.769630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843445, 38.917889, 27.678446>,  <38.788174, 39.144939, 27.623735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.843445, 38.917889, 27.678446>,  <38.935566, 38.539471, 27.769630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843445, 38.917889, 27.678446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160871, -0.194022, -0.967717,
		-0.959730, -0.259540, -0.107507,
		-0.230302, 0.946042, -0.227961,
		38.774353, 39.201702, 27.610058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509903, 38.373486, 27.145014>,  <38.935566, 38.539471, 27.769630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509903, 38.373486, 27.145014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600182, 38.762650, 27.125002>,  <38.654350, 38.996147, 27.112995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.600182, 38.762650, 27.125002>,  <38.509903, 38.373486, 27.145014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600182, 38.762650, 27.125002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010142, -0.053697, -0.998506,
		-0.974144, 0.224855, -0.021986,
		0.225700, 0.972911, -0.050028,
		38.667892, 39.054523, 27.109993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091434, 38.647682, 26.598194>,  <38.509903, 38.373486, 27.145014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091434, 38.647682, 26.598194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403641, 38.887447, 26.669182>,  <38.590965, 39.031307, 26.711775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403641, 38.887447, 26.669182>,  <38.091434, 38.647682, 26.598194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403641, 38.887447, 26.669182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283145, -0.085884, -0.955224,
		-0.557330, 0.795821, -0.236755,
		0.780521, 0.599411, 0.177467,
		38.637798, 39.067272, 26.722422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061665, 39.094070, 26.008871>,  <38.091434, 38.647682, 26.598194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061665, 39.094070, 26.008871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428249, 39.149300, 26.159092>,  <38.648201, 39.182438, 26.249224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428249, 39.149300, 26.159092>,  <38.061665, 39.094070, 26.008871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428249, 39.149300, 26.159092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377821, 0.010401, -0.925821,
		-0.131739, 0.990367, -0.042635,
		0.916459, 0.138075, 0.375551,
		38.703186, 39.190723, 26.271757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430355, 39.749226, 25.835958>,  <38.061665, 39.094070, 26.008871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430355, 39.749226, 25.835958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710190, 39.468555, 25.889977>,  <38.878090, 39.300156, 25.922386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710190, 39.468555, 25.889977>,  <38.430355, 39.749226, 25.835958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710190, 39.468555, 25.889977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345197, 0.166404, -0.923660,
		0.625634, 0.692797, 0.358629,
		0.699586, -0.701671, 0.135043,
		38.920067, 39.258053, 25.930489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978573, 39.993591, 25.401962>,  <38.430355, 39.749226, 25.835958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978573, 39.993591, 25.401962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099247, 39.622589, 25.490257>,  <39.171650, 39.399990, 25.543234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099247, 39.622589, 25.490257>,  <38.978573, 39.993591, 25.401962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099247, 39.622589, 25.490257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520034, -0.033968, -0.853470,
		0.799093, 0.372270, 0.472085,
		0.301686, -0.927503, 0.220737,
		39.189754, 39.344337, 25.556479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721794, 40.000465, 25.241505>,  <38.978573, 39.993591, 25.401962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721794, 40.000465, 25.241505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635029, 39.610447, 25.222612>,  <39.582970, 39.376434, 25.211277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635029, 39.610447, 25.222612>,  <39.721794, 40.000465, 25.241505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635029, 39.610447, 25.222612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334082, -0.028687, -0.942107,
		0.917245, -0.220131, 0.331969,
		-0.216911, -0.975048, -0.047229,
		39.569954, 39.317932, 25.208445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358604, 39.592239, 24.999971>,  <39.721794, 40.000465, 25.241505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358604, 39.592239, 24.999971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.043339, 39.353149, 24.941292>,  <39.854179, 39.209694, 24.906084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.043339, 39.353149, 24.941292>,  <40.358604, 39.592239, 24.999971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043339, 39.353149, 24.941292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420318, -0.348630, -0.837729,
		0.449589, -0.721928, 0.526013,
		-0.788164, -0.597727, -0.146699,
		39.806889, 39.173832, 24.897282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702976, 38.929279, 24.834263>,  <40.358604, 39.592239, 24.999971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702976, 38.929279, 24.834263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329208, 38.899471, 24.694942>,  <40.104950, 38.881584, 24.611351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329208, 38.899471, 24.694942>,  <40.702976, 38.929279, 24.834263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329208, 38.899471, 24.694942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334868, -0.517008, -0.787760,
		-0.121367, -0.852730, 0.508056,
		-0.934416, -0.074523, -0.348300,
		40.048885, 38.877113, 24.590452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645382, 38.188694, 24.501215>,  <40.702976, 38.929279, 24.834263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645382, 38.188694, 24.501215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.352512, 38.418644, 24.355099>,  <40.176788, 38.556614, 24.267429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.352512, 38.418644, 24.355099>,  <40.645382, 38.188694, 24.501215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352512, 38.418644, 24.355099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233950, -0.291425, -0.927544,
		-0.639677, -0.764586, 0.078882,
		-0.732175, 0.574874, -0.365293,
		40.132858, 38.591106, 24.245510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349716, 37.789265, 24.006334>,  <40.645382, 38.188694, 24.501215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349716, 37.789265, 24.006334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247398, 38.164608, 23.913336>,  <40.186008, 38.389812, 23.857536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247398, 38.164608, 23.913336>,  <40.349716, 37.789265, 24.006334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247398, 38.164608, 23.913336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166958, -0.194004, -0.966689,
		-0.952205, -0.286092, -0.107041,
		-0.255795, 0.938357, -0.232497,
		40.170658, 38.446114, 23.843586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873074, 37.643211, 23.464434>,  <40.349716, 37.789265, 24.006334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873074, 37.643211, 23.464434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013649, 38.017342, 23.448175>,  <40.097992, 38.241821, 23.438421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.013649, 38.017342, 23.448175>,  <39.873074, 37.643211, 23.464434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013649, 38.017342, 23.448175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187450, -0.112833, -0.975772,
		-0.917255, 0.335302, -0.214981,
		0.351436, 0.935329, -0.040644,
		40.119080, 38.297939, 23.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225857, 36.945400, 23.313641>,  <39.873074, 37.643211, 23.464434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225857, 36.945400, 23.313641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.190105, 36.601482, 23.112539>,  <40.168655, 36.395130, 22.991879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.190105, 36.601482, 23.112539>,  <40.225857, 36.945400, 23.313641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190105, 36.601482, 23.112539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324095, -0.452195, 0.830953,
		-0.941793, 0.237212, -0.238237,
		-0.089383, -0.859796, -0.502753,
		40.163292, 36.343544, 22.961714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685337, 36.678959, 23.601826>,  <40.225857, 36.945400, 23.313641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685337, 36.678959, 23.601826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890594, 36.374809, 23.442572>,  <40.013748, 36.192318, 23.347019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.890594, 36.374809, 23.442572>,  <39.685337, 36.678959, 23.601826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890594, 36.374809, 23.442572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120776, -0.523213, 0.843600,
		-0.849764, -0.384801, -0.360318,
		0.513141, -0.760379, -0.398133,
		40.044537, 36.146694, 23.323132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241497, 36.030491, 23.649578>,  <39.685337, 36.678959, 23.601826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241497, 36.030491, 23.649578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.619087, 35.904152, 23.611326>,  <39.845642, 35.828350, 23.588375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.619087, 35.904152, 23.611326>,  <39.241497, 36.030491, 23.649578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619087, 35.904152, 23.611326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109652, -0.573526, 0.811816,
		-0.311252, -0.755852, -0.576029,
		0.943980, -0.315842, -0.095630,
		39.902283, 35.809399, 23.582638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216766, 35.257416, 23.788671>,  <39.241497, 36.030491, 23.649578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216766, 35.257416, 23.788671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.601986, 35.361069, 23.818016>,  <39.833118, 35.423260, 23.835623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.601986, 35.361069, 23.818016>,  <39.216766, 35.257416, 23.788671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601986, 35.361069, 23.818016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049376, -0.437663, 0.897783,
		0.264752, -0.860989, -0.434287,
		0.963052, 0.259134, 0.073360,
		39.890900, 35.438808, 23.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559254, 34.657059, 24.019161>,  <39.216766, 35.257416, 23.788671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559254, 34.657059, 24.019161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802517, 34.960243, 24.113514>,  <39.948475, 35.142155, 24.170126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802517, 34.960243, 24.113514>,  <39.559254, 34.657059, 24.019161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802517, 34.960243, 24.113514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111634, -0.375861, 0.919927,
		0.785925, -0.533131, -0.313198,
		0.608160, 0.757957, 0.235883,
		39.984966, 35.187630, 24.184278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118645, 34.329666, 24.284241>,  <39.559254, 34.657059, 24.019161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118645, 34.329666, 24.284241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.105835, 34.701954, 24.429972>,  <40.098148, 34.925327, 24.517410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.105835, 34.701954, 24.429972>,  <40.118645, 34.329666, 24.284241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105835, 34.701954, 24.429972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129170, -0.357604, 0.924897,
		0.991105, 0.076675, -0.108771,
		-0.032020, 0.930720, 0.364328,
		40.096230, 34.981171, 24.539270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623035, 34.307541, 24.710423>,  <40.118645, 34.329666, 24.284241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623035, 34.307541, 24.710423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402630, 34.612556, 24.846025>,  <40.270386, 34.795567, 24.927387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402630, 34.612556, 24.846025>,  <40.623035, 34.307541, 24.710423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402630, 34.612556, 24.846025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164406, -0.299084, 0.939957,
		0.818141, 0.573663, 0.039434,
		-0.551013, 0.762535, 0.339007,
		40.237328, 34.841316, 24.947727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962715, 34.688740, 25.293179>,  <40.623035, 34.307541, 24.710423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962715, 34.688740, 25.293179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580379, 34.803638, 25.318045>,  <40.350979, 34.872578, 25.332964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580379, 34.803638, 25.318045>,  <40.962715, 34.688740, 25.293179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580379, 34.803638, 25.318045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000723, -0.213821, 0.976873,
		0.293895, 0.933686, 0.204586,
		-0.955837, 0.287246, 0.062166,
		40.293629, 34.889812, 25.336695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506779, 34.712177, 25.770056>,  <40.962715, 34.688740, 25.293179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506779, 34.712177, 25.770056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687523, 34.380913, 25.902700>,  <41.795967, 34.182152, 25.982288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687523, 34.380913, 25.902700>,  <41.506779, 34.712177, 25.770056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687523, 34.380913, 25.902700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399379, -0.144598, -0.905311,
		0.797698, 0.541509, 0.265415,
		0.451856, -0.828166, 0.331613,
		41.823078, 34.132462, 26.002184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209629, 34.763256, 25.557207>,  <41.506779, 34.712177, 25.770056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209629, 34.763256, 25.557207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173431, 34.375240, 25.647394>,  <42.151714, 34.142429, 25.701508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173431, 34.375240, 25.647394>,  <42.209629, 34.763256, 25.557207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173431, 34.375240, 25.647394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397544, -0.242763, -0.884887,
		0.913110, 0.009557, 0.407601,
		-0.090493, -0.970039, 0.225469,
		42.146282, 34.084229, 25.715034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894932, 34.431240, 25.405849>,  <42.209629, 34.763256, 25.557207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894932, 34.431240, 25.405849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618805, 34.142838, 25.429853>,  <42.453129, 33.969795, 25.444256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618805, 34.142838, 25.429853>,  <42.894932, 34.431240, 25.405849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618805, 34.142838, 25.429853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261103, -0.325621, -0.908733,
		0.674746, -0.611650, 0.413041,
		-0.690321, -0.721010, 0.060008,
		42.411709, 33.926533, 25.447855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207569, 33.853680, 25.302546>,  <42.894932, 34.431240, 25.405849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207569, 33.853680, 25.302546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.834255, 33.763199, 25.190969>,  <42.610268, 33.708912, 25.124023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.834255, 33.763199, 25.190969>,  <43.207569, 33.853680, 25.302546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834255, 33.763199, 25.190969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334192, -0.262621, -0.905177,
		0.131497, -0.938010, 0.320695,
		-0.933287, -0.226202, -0.278942,
		42.554268, 33.695339, 25.107286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216728, 33.101101, 25.026390>,  <43.207569, 33.853680, 25.302546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216728, 33.101101, 25.026390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.912628, 33.311356, 24.873695>,  <42.730167, 33.437508, 24.782080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.912628, 33.311356, 24.873695>,  <43.216728, 33.101101, 25.026390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912628, 33.311356, 24.873695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372704, -0.128372, -0.919028,
		-0.532081, -0.840967, -0.098313,
		-0.760251, 0.525638, -0.381736,
		42.684551, 33.469048, 24.759174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132729, 32.706776, 24.444805>,  <43.216728, 33.101101, 25.026390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132729, 32.706776, 24.444805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.939297, 33.049625, 24.373825>,  <42.823238, 33.255333, 24.331236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.939297, 33.049625, 24.373825>,  <43.132729, 32.706776, 24.444805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939297, 33.049625, 24.373825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311883, -0.020696, -0.949895,
		-0.817849, -0.514696, -0.257314,
		-0.483582, 0.857123, -0.177451,
		42.794224, 33.306763, 24.320589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694073, 32.582733, 23.874226>,  <43.132729, 32.706776, 24.444805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694073, 32.582733, 23.874226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.774830, 32.973789, 23.897722>,  <42.823284, 33.208424, 23.911821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.774830, 32.973789, 23.897722>,  <42.694073, 32.582733, 23.874226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774830, 32.973789, 23.897722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404451, -0.028597, -0.914112,
		-0.891997, 0.208311, -0.401183,
		0.201892, 0.977645, 0.058743,
		42.835396, 33.267082, 23.915344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556904, 32.709938, 23.196205>,  <42.694073, 32.582733, 23.874226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556904, 32.709938, 23.196205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740387, 33.033363, 23.343616>,  <42.850475, 33.227417, 23.432064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740387, 33.033363, 23.343616>,  <42.556904, 32.709938, 23.196205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740387, 33.033363, 23.343616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358915, 0.210805, -0.909253,
		-0.812876, 0.549352, -0.193507,
		0.458708, 0.808563, 0.368529,
		42.877998, 33.275932, 23.454176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265793, 33.387600, 22.862843>,  <42.556904, 32.709938, 23.196205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265793, 33.387600, 22.862843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636879, 33.433739, 23.004847>,  <42.859531, 33.461422, 23.090050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636879, 33.433739, 23.004847>,  <42.265793, 33.387600, 22.862843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636879, 33.433739, 23.004847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341494, 0.121773, -0.931962,
		-0.150728, 0.985833, 0.073581,
		0.927719, 0.115346, 0.355011,
		42.915195, 33.468342, 23.111349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.600960, 36.496826, 37.990372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268639, 36.274715, 38.005527>,  <37.069248, 36.141449, 38.014622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268639, 36.274715, 38.005527>,  <37.600960, 36.496826, 37.990372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268639, 36.274715, 38.005527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510618, -0.733347, 0.448857,
		-0.221452, 0.392259, 0.892800,
		-0.830800, -0.555280, 0.037893,
		37.019398, 36.108131, 38.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857071, 36.686485, 37.292782>,  <37.600960, 36.496826, 37.990372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857071, 36.686485, 37.292782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.147915, 36.593151, 37.551044>,  <38.322422, 36.537151, 37.706001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.147915, 36.593151, 37.551044>,  <37.857071, 36.686485, 37.292782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147915, 36.593151, 37.551044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536137, -0.394424, -0.746316,
		0.428803, 0.888811, -0.161689,
		0.727107, -0.233335, 0.645655,
		38.366047, 36.523151, 37.744740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490932, 36.837612, 36.974644>,  <37.857071, 36.686485, 37.292782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490932, 36.837612, 36.974644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590076, 36.567322, 37.252338>,  <38.649563, 36.405148, 37.418957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590076, 36.567322, 37.252338>,  <38.490932, 36.837612, 36.974644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590076, 36.567322, 37.252338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573429, -0.475259, -0.667313,
		0.780861, 0.563496, 0.269682,
		0.247859, -0.675723, 0.694237,
		38.664433, 36.364605, 37.460609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138298, 36.811634, 36.937008>,  <38.490932, 36.837612, 36.974644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138298, 36.811634, 36.937008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986107, 36.472137, 37.083904>,  <38.894791, 36.268440, 37.172043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986107, 36.472137, 37.083904>,  <39.138298, 36.811634, 36.937008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986107, 36.472137, 37.083904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402608, -0.509524, -0.760455,
		0.832553, -0.141480, 0.535574,
		-0.380477, -0.848745, 0.367245,
		38.871964, 36.217514, 37.194077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675869, 36.337421, 37.018677>,  <39.138298, 36.811634, 36.937008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675869, 36.337421, 37.018677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354858, 36.100624, 36.989025>,  <39.162251, 35.958546, 36.971233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354858, 36.100624, 36.989025>,  <39.675869, 36.337421, 37.018677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354858, 36.100624, 36.989025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459268, -0.533679, -0.710112,
		0.380823, -0.603927, 0.700175,
		-0.802525, -0.591995, -0.074127,
		39.114101, 35.923027, 36.966785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000904, 35.804291, 36.789577>,  <39.675869, 36.337421, 37.018677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000904, 35.804291, 36.789577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610931, 35.741943, 36.726074>,  <39.376945, 35.704536, 36.687973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610931, 35.741943, 36.726074>,  <40.000904, 35.804291, 36.789577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610931, 35.741943, 36.726074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221557, -0.615032, -0.756736,
		0.020305, -0.772944, 0.634150,
		-0.974936, -0.155865, -0.158763,
		39.318451, 35.695183, 36.678444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944412, 35.116985, 36.566788>,  <40.000904, 35.804291, 36.789577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944412, 35.116985, 36.566788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581970, 35.246712, 36.458134>,  <39.364506, 35.324547, 36.392941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581970, 35.246712, 36.458134>,  <39.944412, 35.116985, 36.566788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581970, 35.246712, 36.458134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047016, -0.560909, -0.826542,
		-0.420424, -0.761708, 0.492996,
		-0.906109, 0.324319, -0.271632,
		39.310139, 35.344009, 36.376644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574100, 34.545094, 36.529259>,  <39.944412, 35.116985, 36.566788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574100, 34.545094, 36.529259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397022, 34.805653, 36.282780>,  <39.290775, 34.961990, 36.134892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397022, 34.805653, 36.282780>,  <39.574100, 34.545094, 36.529259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397022, 34.805653, 36.282780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157402, -0.620076, -0.768590,
		-0.882747, -0.437245, 0.171976,
		-0.442700, 0.651401, -0.616193,
		39.264214, 35.001072, 36.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150131, 34.145351, 36.028454>,  <39.574100, 34.545094, 36.529259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150131, 34.145351, 36.028454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185238, 34.505089, 35.857121>,  <39.206303, 34.720932, 35.754322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185238, 34.505089, 35.857121>,  <39.150131, 34.145351, 36.028454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185238, 34.505089, 35.857121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094485, -0.435570, -0.895182,
		-0.991650, 0.038099, -0.123204,
		0.087770, 0.899348, -0.428333,
		39.211571, 34.774895, 35.728622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730095, 34.102173, 35.454659>,  <39.150131, 34.145351, 36.028454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730095, 34.102173, 35.454659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973911, 34.400356, 35.346771>,  <39.120201, 34.579266, 35.282040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973911, 34.400356, 35.346771>,  <38.730095, 34.102173, 35.454659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973911, 34.400356, 35.346771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039523, -0.311235, -0.949511,
		-0.791771, 0.589423, -0.160247,
		0.609538, 0.745462, -0.269723,
		39.156773, 34.623997, 35.265854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562931, 34.261600, 34.819763>,  <38.730095, 34.102173, 35.454659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562931, 34.261600, 34.819763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925369, 34.430519, 34.830044>,  <39.142830, 34.531872, 34.836212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925369, 34.430519, 34.830044>,  <38.562931, 34.261600, 34.819763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925369, 34.430519, 34.830044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097083, -0.148408, -0.984149,
		-0.411792, 0.894225, -0.175469,
		0.906092, 0.422300, 0.025701,
		39.197197, 34.557209, 34.837753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628727, 34.787960, 34.256321>,  <38.562931, 34.261600, 34.819763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628727, 34.787960, 34.256321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992496, 34.658100, 34.360287>,  <39.210758, 34.580185, 34.422668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992496, 34.658100, 34.360287>,  <38.628727, 34.787960, 34.256321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992496, 34.658100, 34.360287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206643, -0.189619, -0.959866,
		0.360901, 0.926634, -0.105358,
		0.909422, -0.324645, 0.259916,
		39.265324, 34.560707, 34.438263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296120, 35.404823, 33.880844>,  <38.628727, 34.787960, 34.256321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296120, 35.404823, 33.880844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920532, 35.348850, 33.755142>,  <37.695179, 35.315266, 33.679722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920532, 35.348850, 33.755142>,  <38.296120, 35.404823, 33.880844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920532, 35.348850, 33.755142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344001, 0.383721, 0.856984,
		0.000664, 0.912785, -0.408439,
		-0.938969, -0.139935, -0.314253,
		37.638840, 35.306870, 33.660866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951576, 35.966854, 34.130440>,  <38.296120, 35.404823, 33.880844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951576, 35.966854, 34.130440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642910, 35.722458, 34.059757>,  <37.457710, 35.575821, 34.017349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642910, 35.722458, 34.059757>,  <37.951576, 35.966854, 34.130440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642910, 35.722458, 34.059757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431421, 0.298671, 0.851276,
		-0.467349, 0.733131, -0.494069,
		-0.771661, -0.610995, -0.176704,
		37.411411, 35.539158, 34.006744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293030, 36.397530, 34.209618>,  <37.951576, 35.966854, 34.130440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293030, 36.397530, 34.209618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214321, 36.010990, 34.275887>,  <37.167095, 35.779064, 34.315647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214321, 36.010990, 34.275887>,  <37.293030, 36.397530, 34.209618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214321, 36.010990, 34.275887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665283, 0.255722, 0.701430,
		-0.720193, 0.027804, -0.693216,
		-0.196773, -0.966350, 0.165672,
		37.155289, 35.721085, 34.325588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540421, 36.374027, 34.146019>,  <37.293030, 36.397530, 34.209618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540421, 36.374027, 34.146019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656143, 36.047382, 34.345795>,  <36.725578, 35.851395, 34.465660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656143, 36.047382, 34.345795>,  <36.540421, 36.374027, 34.146019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656143, 36.047382, 34.345795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707152, 0.169330, 0.686486,
		-0.645165, -0.551788, -0.528481,
		0.289308, -0.816613, 0.499444,
		36.742935, 35.802399, 34.495628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024796, 36.278893, 34.501812>,  <36.540421, 36.374027, 34.146019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024796, 36.278893, 34.501812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284328, 36.048889, 34.701160>,  <36.440048, 35.910885, 34.820770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284328, 36.048889, 34.701160>,  <36.024796, 36.278893, 34.501812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284328, 36.048889, 34.701160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506537, 0.162363, 0.846793,
		-0.567833, -0.801873, -0.185918,
		0.648834, -0.575011, 0.498373,
		36.478977, 35.876385, 34.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595200, 35.821026, 34.921242>,  <36.024796, 36.278893, 34.501812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595200, 35.821026, 34.921242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958122, 35.860626, 35.084702>,  <36.175877, 35.884388, 35.182777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958122, 35.860626, 35.084702>,  <35.595200, 35.821026, 34.921242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958122, 35.860626, 35.084702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415263, 0.058546, 0.907816,
		0.065999, -0.993358, 0.094253,
		0.907304, 0.099054, 0.408641,
		36.230316, 35.890327, 35.207294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555340, 35.413746, 35.563740>,  <35.595200, 35.821026, 34.921242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555340, 35.413746, 35.563740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880161, 35.638542, 35.626656>,  <36.075054, 35.773418, 35.664406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880161, 35.638542, 35.626656>,  <35.555340, 35.413746, 35.563740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880161, 35.638542, 35.626656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391598, 0.324906, 0.860864,
		0.432692, -0.760661, 0.483915,
		0.812052, 0.561989, 0.157289,
		36.123775, 35.807140, 35.673843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720657, 35.363461, 36.276936>,  <35.555340, 35.413746, 35.563740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720657, 35.363461, 36.276936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882107, 35.702953, 36.140270>,  <35.978977, 35.906651, 36.058270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882107, 35.702953, 36.140270>,  <35.720657, 35.363461, 36.276936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882107, 35.702953, 36.140270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395049, 0.498501, 0.771643,
		0.825241, -0.176480, 0.536499,
		0.403625, 0.848735, -0.341665,
		36.003193, 35.957573, 36.037769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026581, 35.665764, 36.901226>,  <35.720657, 35.363461, 36.276936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026581, 35.665764, 36.901226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003906, 35.959743, 36.630928>,  <35.990299, 36.136131, 36.468750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003906, 35.959743, 36.630928>,  <36.026581, 35.665764, 36.901226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003906, 35.959743, 36.630928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187529, 0.656952, 0.730238,
		0.980622, 0.168120, 0.100581,
		-0.056690, 0.734949, -0.675748,
		35.986900, 36.180229, 36.428204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461281, 36.228523, 37.191319>,  <36.026581, 35.665764, 36.901226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461281, 36.228523, 37.191319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222507, 36.421444, 36.934864>,  <36.079243, 36.537197, 36.780991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222507, 36.421444, 36.934864>,  <36.461281, 36.228523, 37.191319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222507, 36.421444, 36.934864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282095, 0.621924, 0.730502,
		0.751062, 0.616921, -0.235190,
		-0.596933, 0.482306, -0.641134,
		36.043427, 36.566135, 36.742523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597034, 36.951714, 37.316086>,  <36.461281, 36.228523, 37.191319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597034, 36.951714, 37.316086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243584, 36.956284, 37.128860>,  <36.031513, 36.959026, 37.016525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243584, 36.956284, 37.128860>,  <36.597034, 36.951714, 37.316086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243584, 36.956284, 37.128860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318213, 0.718664, 0.618274,
		0.343439, 0.695264, -0.631394,
		-0.883623, 0.011421, -0.468059,
		35.978497, 36.959709, 36.988441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464615, 37.664192, 37.257397>,  <36.597034, 36.951714, 37.316086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464615, 37.664192, 37.257397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109520, 37.486206, 37.210190>,  <35.896461, 37.379414, 37.181866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109520, 37.486206, 37.210190>,  <36.464615, 37.664192, 37.257397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109520, 37.486206, 37.210190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413761, 0.658866, 0.628249,
		-0.201792, 0.606551, -0.769010,
		-0.887740, -0.444962, -0.118014,
		35.843197, 37.352718, 37.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099941, 38.220074, 37.192974>,  <36.464615, 37.664192, 37.257397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099941, 38.220074, 37.192974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864647, 37.921936, 37.318474>,  <35.723469, 37.743053, 37.393772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864647, 37.921936, 37.318474>,  <36.099941, 38.220074, 37.192974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864647, 37.921936, 37.318474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494198, 0.638418, 0.590077,
		-0.640111, 0.192055, -0.743890,
		-0.588240, -0.745344, 0.313746,
		35.688175, 37.698334, 37.412598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435822, 38.485733, 37.203182>,  <36.099941, 38.220074, 37.192974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435822, 38.485733, 37.203182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390915, 38.170715, 37.445560>,  <35.363972, 37.981705, 37.590988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390915, 38.170715, 37.445560>,  <35.435822, 38.485733, 37.203182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390915, 38.170715, 37.445560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606037, 0.537525, 0.586333,
		-0.787474, -0.301398, -0.537629,
		-0.112269, -0.787545, 0.605945,
		35.357235, 37.934452, 37.627342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699322, 38.135445, 37.263203>,  <35.435822, 38.485733, 37.203182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699322, 38.135445, 37.263203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902905, 38.065281, 37.600296>,  <35.025055, 38.023182, 37.802551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902905, 38.065281, 37.600296>,  <34.699322, 38.135445, 37.263203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902905, 38.065281, 37.600296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758483, 0.371538, 0.535410,
		-0.407023, -0.911697, 0.056050,
		0.508956, -0.175411, 0.842731,
		35.055592, 38.012657, 37.853115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414875, 38.775375, 37.413498>,  <34.699322, 38.135445, 37.263203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414875, 38.775375, 37.413498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623199, 39.100067, 37.519211>,  <34.748196, 39.294884, 37.582638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623199, 39.100067, 37.519211>,  <34.414875, 38.775375, 37.413498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623199, 39.100067, 37.519211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099048, 0.364952, -0.925743,
		-0.847905, 0.455963, 0.270472,
		0.520814, 0.811731, 0.264282,
		34.779442, 39.343586, 37.598495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071697, 39.389896, 37.391029>,  <34.414875, 38.775375, 37.413498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071697, 39.389896, 37.391029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463345, 39.423435, 37.316959>,  <34.698334, 39.443558, 37.272518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463345, 39.423435, 37.316959>,  <34.071697, 39.389896, 37.391029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463345, 39.423435, 37.316959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200136, 0.238278, -0.950352,
		-0.035560, 0.967571, 0.250083,
		0.979123, 0.083845, -0.185173,
		34.757080, 39.448589, 37.261406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168732, 40.055126, 37.157166>,  <34.071697, 39.389896, 37.391029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168732, 40.055126, 37.157166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465031, 39.829391, 37.011387>,  <34.642811, 39.693951, 36.923920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465031, 39.829391, 37.011387>,  <34.168732, 40.055126, 37.157166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465031, 39.829391, 37.011387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301094, 0.206071, -0.931062,
		0.600534, 0.799412, -0.017272,
		0.740743, -0.564335, -0.364451,
		34.687252, 39.660091, 36.902050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482880, 40.441132, 36.545715>,  <34.168732, 40.055126, 37.157166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482880, 40.441132, 36.545715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601234, 40.062992, 36.490910>,  <34.672249, 39.836109, 36.458027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601234, 40.062992, 36.490910>,  <34.482880, 40.441132, 36.545715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601234, 40.062992, 36.490910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106495, 0.109892, -0.988222,
		0.949267, 0.306997, -0.068159,
		0.295891, -0.945345, -0.137011,
		34.690002, 39.779388, 36.449806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036434, 40.457073, 36.082394>,  <34.482880, 40.441132, 36.545715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036434, 40.457073, 36.082394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896572, 40.084991, 36.037735>,  <34.812656, 39.861744, 36.010941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.896572, 40.084991, 36.037735>,  <35.036434, 40.457073, 36.082394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896572, 40.084991, 36.037735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065295, 0.094688, -0.993363,
		0.934601, -0.354623, 0.027630,
		-0.349653, -0.930203, -0.111651,
		34.791676, 39.805931, 36.004238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273449, 40.166252, 35.359291>,  <35.036434, 40.457073, 36.082394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273449, 40.166252, 35.359291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059723, 39.851887, 35.483772>,  <34.931488, 39.663269, 35.558460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059723, 39.851887, 35.483772>,  <35.273449, 40.166252, 35.359291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059723, 39.851887, 35.483772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047492, -0.395496, -0.917239,
		0.843950, -0.475315, 0.248644,
		-0.534315, -0.785913, 0.311205,
		34.899429, 39.616112, 35.577133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648331, 39.529839, 35.338844>,  <35.273449, 40.166252, 35.359291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648331, 39.529839, 35.338844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255539, 39.469357, 35.293510>,  <35.019863, 39.433067, 35.266308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255539, 39.469357, 35.293510>,  <35.648331, 39.529839, 35.338844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255539, 39.469357, 35.293510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152972, -0.283941, -0.946561,
		0.110947, -0.946844, 0.301956,
		-0.981983, -0.151209, -0.113338,
		34.960945, 39.423992, 35.259510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441975, 38.786160, 35.021442>,  <35.648331, 39.529839, 35.338844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441975, 38.786160, 35.021442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130165, 39.026569, 34.950897>,  <34.943077, 39.170815, 34.908569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130165, 39.026569, 34.950897>,  <35.441975, 38.786160, 35.021442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130165, 39.026569, 34.950897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037084, -0.236779, -0.970856,
		-0.625269, -0.763349, 0.162287,
		-0.779527, 0.601028, -0.176359,
		34.896305, 39.206879, 34.897991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951378, 38.405762, 34.609165>,  <35.441975, 38.786160, 35.021442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951378, 38.405762, 34.609165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854809, 38.783466, 34.519638>,  <34.796867, 39.010090, 34.465923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854809, 38.783466, 34.519638>,  <34.951378, 38.405762, 34.609165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854809, 38.783466, 34.519638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026203, -0.236895, -0.971182,
		-0.970065, -0.228604, 0.081935,
		-0.241426, 0.944257, -0.223814,
		34.782379, 39.066742, 34.452496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506596, 38.345039, 33.972668>,  <34.951378, 38.405762, 34.609165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506596, 38.345039, 33.972668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599541, 38.732483, 34.007996>,  <34.655308, 38.964951, 34.029194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599541, 38.732483, 34.007996>,  <34.506596, 38.345039, 33.972668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599541, 38.732483, 34.007996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108873, 0.064333, -0.991972,
		-0.966516, 0.240113, -0.090507,
		0.232363, 0.968611, 0.088320,
		34.669250, 39.023067, 34.034492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979671, 38.723583, 33.556812>,  <34.506596, 38.345039, 33.972668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979671, 38.723583, 33.556812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318169, 38.934212, 33.589298>,  <34.521267, 39.060589, 33.608791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318169, 38.934212, 33.589298>,  <33.979671, 38.723583, 33.556812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318169, 38.934212, 33.589298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029450, 0.105968, -0.993933,
		-0.531984, 0.843500, 0.074167,
		0.846242, 0.526572, 0.081215,
		34.572041, 39.092182, 33.613663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913738, 39.292309, 33.083954>,  <33.979671, 38.723583, 33.556812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913738, 39.292309, 33.083954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303474, 39.272705, 33.171825>,  <34.537315, 39.260944, 33.224548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303474, 39.272705, 33.171825>,  <33.913738, 39.292309, 33.083954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303474, 39.272705, 33.171825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224192, 0.298038, -0.927853,
		-0.020002, 0.953295, 0.301378,
		0.974340, -0.049007, 0.219683,
		34.595776, 39.258003, 33.237732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120514, 39.775562, 32.623878>,  <33.913738, 39.292309, 33.083954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120514, 39.775562, 32.623878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415161, 39.526138, 32.728619>,  <34.591949, 39.376484, 32.791462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415161, 39.526138, 32.728619>,  <34.120514, 39.775562, 32.623878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415161, 39.526138, 32.728619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463178, 0.183017, -0.867162,
		0.492806, 0.760051, 0.423634,
		0.736620, -0.623560, 0.261847,
		34.636147, 39.339069, 32.807171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721245, 40.144447, 32.316898>,  <34.120514, 39.775562, 32.623878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721245, 40.144447, 32.316898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875973, 39.782726, 32.389137>,  <34.968807, 39.565693, 32.432480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875973, 39.782726, 32.389137>,  <34.721245, 40.144447, 32.316898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875973, 39.782726, 32.389137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579160, 0.085841, -0.810682,
		0.717597, 0.418178, 0.556939,
		0.386817, -0.904300, 0.180593,
		34.992020, 39.511436, 32.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483994, 40.282185, 32.287579>,  <34.721245, 40.144447, 32.316898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483994, 40.282185, 32.287579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397266, 39.893181, 32.253593>,  <35.345230, 39.659779, 32.233204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397266, 39.893181, 32.253593>,  <35.483994, 40.282185, 32.287579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397266, 39.893181, 32.253593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731788, -0.104307, -0.673503,
		0.646125, -0.208201, 0.734285,
		-0.216815, -0.972508, -0.084964,
		35.332222, 39.601429, 32.228104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179935, 39.871861, 32.262669>,  <35.483994, 40.282185, 32.287579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179935, 39.871861, 32.262669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903008, 39.646988, 32.081715>,  <35.736851, 39.512066, 31.973143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903008, 39.646988, 32.081715>,  <36.179935, 39.871861, 32.262669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903008, 39.646988, 32.081715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590937, -0.081922, -0.802547,
		0.414116, -0.822948, 0.388929,
		-0.692316, -0.562180, -0.452385,
		35.695312, 39.478333, 31.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633217, 39.252338, 31.941858>,  <36.179935, 39.871861, 32.262669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633217, 39.252338, 31.941858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292580, 39.222836, 31.734264>,  <36.088196, 39.205132, 31.609709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292580, 39.222836, 31.734264>,  <36.633217, 39.252338, 31.941858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292580, 39.222836, 31.734264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524041, -0.144125, -0.839410,
		-0.012882, -0.986806, 0.161390,
		-0.851596, -0.073761, -0.518984,
		36.037102, 39.200706, 31.578569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708549, 38.617752, 31.505367>,  <36.633217, 39.252338, 31.941858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708549, 38.617752, 31.505367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453110, 38.886173, 31.354698>,  <36.299847, 39.047226, 31.264297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.453110, 38.886173, 31.354698>,  <36.708549, 38.617752, 31.505367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453110, 38.886173, 31.354698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522665, 0.018965, -0.852327,
		-0.564812, -0.741168, -0.362847,
		-0.638599, 0.671052, -0.376671,
		36.261532, 39.087490, 31.241697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557884, 38.395657, 30.818075>,  <36.708549, 38.617752, 31.505367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557884, 38.395657, 30.818075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437622, 38.777107, 30.812359>,  <36.365463, 39.005978, 30.808929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437622, 38.777107, 30.812359>,  <36.557884, 38.395657, 30.818075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437622, 38.777107, 30.812359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282716, 0.074801, -0.956283,
		-0.910867, -0.291551, -0.292094,
		-0.300654, 0.953626, -0.014293,
		36.347427, 39.063194, 30.808071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288185, 38.460121, 30.132692>,  <36.557884, 38.395657, 30.818075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288185, 38.460121, 30.132692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361584, 38.827400, 30.273119>,  <36.405621, 39.047768, 30.357374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361584, 38.827400, 30.273119>,  <36.288185, 38.460121, 30.132692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361584, 38.827400, 30.273119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362844, 0.268646, -0.892285,
		-0.913605, 0.291110, -0.283868,
		0.183494, 0.918196, 0.351064,
		36.416634, 39.102859, 30.378439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117115, 38.893143, 29.592585>,  <36.288185, 38.460121, 30.132692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117115, 38.893143, 29.592585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356857, 39.113796, 29.824610>,  <36.500702, 39.246189, 29.963825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356857, 39.113796, 29.824610>,  <36.117115, 38.893143, 29.592585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356857, 39.113796, 29.824610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597255, 0.174306, -0.782882,
		-0.532975, 0.815668, -0.224996,
		0.599354, 0.551636, 0.580063,
		36.536663, 39.279285, 29.998629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355221, 39.444820, 29.221962>,  <36.117115, 38.893143, 29.592585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355221, 39.444820, 29.221962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649796, 39.416115, 29.491039>,  <36.826538, 39.398891, 29.652485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649796, 39.416115, 29.491039>,  <36.355221, 39.444820, 29.221962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649796, 39.416115, 29.491039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676097, 0.112838, -0.728121,
		-0.023652, 0.991018, 0.131617,
		0.736433, -0.071764, 0.672693,
		36.870724, 39.394585, 29.692846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806541, 40.165920, 29.218149>,  <36.355221, 39.444820, 29.221962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806541, 40.165920, 29.218149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015789, 39.872818, 29.392237>,  <37.141338, 39.696957, 29.496689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015789, 39.872818, 29.392237>,  <36.806541, 40.165920, 29.218149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015789, 39.872818, 29.392237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703519, 0.083036, -0.705808,
		0.481044, 0.675411, 0.558943,
		0.523123, -0.732752, 0.435221,
		37.172726, 39.652992, 29.522802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450218, 40.322178, 29.041716>,  <36.806541, 40.165920, 29.218149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450218, 40.322178, 29.041716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507046, 39.943562, 29.157557>,  <37.541142, 39.716393, 29.227060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507046, 39.943562, 29.157557>,  <37.450218, 40.322178, 29.041716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507046, 39.943562, 29.157557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548718, -0.168194, -0.818913,
		0.823848, 0.275250, 0.495492,
		0.142067, -0.946545, 0.289601,
		37.549667, 39.659599, 29.244436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168354, 40.273319, 29.273653>,  <37.450218, 40.322178, 29.041716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168354, 40.273319, 29.273653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043873, 39.912209, 29.154894>,  <37.969185, 39.695541, 29.083639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043873, 39.912209, 29.154894>,  <38.168354, 40.273319, 29.273653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043873, 39.912209, 29.154894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668091, 0.014361, -0.743941,
		0.675876, -0.429869, 0.598668,
		-0.311200, -0.902777, -0.296898,
		37.950512, 39.641376, 29.065825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760010, 39.884323, 29.237722>,  <38.168354, 40.273319, 29.273653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760010, 39.884323, 29.237722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.494606, 39.682003, 29.017206>,  <38.335365, 39.560612, 28.884895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.494606, 39.682003, 29.017206>,  <38.760010, 39.884323, 29.237722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494606, 39.682003, 29.017206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627799, 0.024418, -0.777992,
		0.406971, -0.862305, 0.301340,
		-0.663508, -0.505801, -0.551292,
		38.295555, 39.530262, 28.851818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219582, 39.364151, 28.899460>,  <38.760010, 39.884323, 29.237722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219582, 39.364151, 28.899460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885616, 39.429756, 28.689312>,  <38.685238, 39.469120, 28.563223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885616, 39.429756, 28.689312>,  <39.219582, 39.364151, 28.899460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885616, 39.429756, 28.689312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512921, -0.114243, -0.850800,
		-0.199562, -0.979821, 0.011257,
		-0.834917, 0.164013, -0.525369,
		38.635139, 39.478958, 28.531702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736782, 38.823566, 29.000324>,  <39.219582, 39.364151, 28.899460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736782, 38.823566, 29.000324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118374, 38.932587, 29.050331>,  <40.347328, 38.998001, 29.080336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118374, 38.932587, 29.050331>,  <39.736782, 38.823566, 29.000324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118374, 38.932587, 29.050331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098698, -0.108283, 0.989209,
		0.283150, -0.956028, -0.076399,
		0.953983, 0.272554, 0.125018,
		40.404568, 39.014355, 29.087837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083458, 38.436428, 29.358400>,  <39.736782, 38.823566, 29.000324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083458, 38.436428, 29.358400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.323639, 38.740028, 29.459103>,  <40.467747, 38.922188, 29.519524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.323639, 38.740028, 29.459103>,  <40.083458, 38.436428, 29.358400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323639, 38.740028, 29.459103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262681, -0.110143, 0.958575,
		0.755288, -0.641706, 0.133239,
		0.600449, 0.759000, 0.251754,
		40.503773, 38.967728, 29.534628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248550, 38.413692, 30.010138>,  <40.083458, 38.436428, 29.358400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248550, 38.413692, 30.010138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377796, 38.791004, 29.979614>,  <40.455341, 39.017391, 29.961300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377796, 38.791004, 29.979614>,  <40.248550, 38.413692, 30.010138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377796, 38.791004, 29.979614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323578, 0.185889, 0.927762,
		0.889324, -0.275078, 0.365288,
		0.323110, 0.943280, -0.076307,
		40.474728, 39.073990, 29.956722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671429, 38.579811, 30.592798>,  <40.248550, 38.413692, 30.010138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671429, 38.579811, 30.592798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.544430, 38.931442, 30.450579>,  <40.468231, 39.142422, 30.365248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.544430, 38.931442, 30.450579>,  <40.671429, 38.579811, 30.592798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544430, 38.931442, 30.450579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610891, 0.097158, 0.785730,
		0.725264, 0.466668, 0.506175,
		-0.317496, 0.879080, -0.355549,
		40.449181, 39.195168, 30.343914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768715, 39.125153, 31.072767>,  <40.671429, 38.579811, 30.592798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768715, 39.125153, 31.072767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435249, 39.236889, 30.882198>,  <40.235172, 39.303932, 30.767857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435249, 39.236889, 30.882198>,  <40.768715, 39.125153, 31.072767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435249, 39.236889, 30.882198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485252, 0.041416, 0.873393,
		0.263707, 0.959298, 0.101024,
		-0.833660, 0.279342, -0.476423,
		40.185150, 39.320690, 30.739271>
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
