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
	<24.310551, 34.696899, 34.960121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155483, 35.038559, 35.098766>,  <24.062443, 35.243557, 35.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.155483, 35.038559, 35.098766>,  <24.310551, 34.696899, 34.960121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.155483, 35.038559, 35.098766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746778, 0.511453, -0.425134,
		-0.540403, 0.094028, -0.836136,
		-0.387670, 0.854151, 0.346609,
		24.039183, 35.294804, 35.202747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287024, 35.203892, 34.449284>,  <24.310551, 34.696899, 34.960121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287024, 35.203892, 34.449284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345865, 35.333633, 34.823055>,  <24.381170, 35.411480, 35.047318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345865, 35.333633, 34.823055>,  <24.287024, 35.203892, 34.449284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345865, 35.333633, 34.823055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817910, 0.491358, -0.299318,
		-0.556223, 0.808308, -0.193012,
		0.147103, 0.324354, 0.934428,
		24.389996, 35.430939, 35.103382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428165, 35.924747, 34.422161>,  <24.287024, 35.203892, 34.449284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428165, 35.924747, 34.422161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597752, 35.720596, 34.721432>,  <24.699503, 35.598106, 34.900993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597752, 35.720596, 34.721432>,  <24.428165, 35.924747, 34.422161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597752, 35.720596, 34.721432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903740, 0.292417, -0.312643,
		-0.059214, 0.808708, 0.585222,
		0.423966, -0.510376, 0.748177,
		24.724941, 35.567482, 34.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922777, 36.301773, 34.783066>,  <24.428165, 35.924747, 34.422161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922777, 36.301773, 34.783066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031874, 35.917648, 34.806423>,  <25.097332, 35.687172, 34.820438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031874, 35.917648, 34.806423>,  <24.922777, 36.301773, 34.783066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031874, 35.917648, 34.806423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858779, 0.215645, -0.464753,
		0.433718, 0.176900, 0.883513,
		0.272740, -0.960314, 0.058389,
		25.113695, 35.629555, 34.823940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610262, 36.326939, 35.015362>,  <24.922777, 36.301773, 34.783066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610262, 36.326939, 35.015362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555298, 35.967567, 34.848537>,  <25.522320, 35.751945, 34.748444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555298, 35.967567, 34.848537>,  <25.610262, 36.326939, 35.015362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555298, 35.967567, 34.848537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963574, -0.023714, -0.266389,
		0.229443, -0.438471, 0.868964,
		-0.137411, -0.898432, -0.417058,
		25.514074, 35.698036, 34.723419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311178, 36.480473, 34.911423>,  <25.610262, 36.326939, 35.015362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311178, 36.480473, 34.911423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213074, 36.156876, 34.697742>,  <26.154211, 35.962715, 34.569534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213074, 36.156876, 34.697742>,  <26.311178, 36.480473, 34.911423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213074, 36.156876, 34.697742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793105, 0.149456, -0.590463,
		0.557522, -0.568496, 0.604964,
		-0.245260, -0.808996, -0.534203,
		26.139496, 35.914177, 34.537483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883511, 36.114521, 34.881836>,  <26.311178, 36.480473, 34.911423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883511, 36.114521, 34.881836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666294, 36.009357, 34.562840>,  <26.535965, 35.946259, 34.371441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666294, 36.009357, 34.562840>,  <26.883511, 36.114521, 34.881836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666294, 36.009357, 34.562840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762965, 0.242166, -0.599366,
		0.350703, -0.933935, 0.069085,
		-0.543039, -0.262909, -0.797488,
		26.503382, 35.930485, 34.323593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302525, 35.946823, 35.446392>,  <26.883511, 36.114521, 34.881836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302525, 35.946823, 35.446392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557716, 35.966316, 35.753796>,  <27.710833, 35.978012, 35.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557716, 35.966316, 35.753796>,  <27.302525, 35.946823, 35.446392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557716, 35.966316, 35.753796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656974, -0.486165, 0.576219,
		0.401704, -0.872507, -0.278147,
		0.637980, 0.048734, 0.768509,
		27.749111, 35.980938, 35.984348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085207, 35.414951, 35.798424>,  <27.302525, 35.946823, 35.446392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085207, 35.414951, 35.798424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307119, 35.594181, 36.078838>,  <27.440268, 35.701717, 36.247086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307119, 35.594181, 36.078838>,  <27.085207, 35.414951, 35.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307119, 35.594181, 36.078838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636418, -0.314185, 0.704457,
		0.535901, -0.836971, 0.110856,
		0.554781, 0.448070, 0.701036,
		27.473555, 35.728603, 36.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240309, 34.922123, 36.270462>,  <27.085207, 35.414951, 35.798424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240309, 34.922123, 36.270462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278688, 35.265469, 36.472054>,  <27.301716, 35.471478, 36.593010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278688, 35.265469, 36.472054>,  <27.240309, 34.922123, 36.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278688, 35.265469, 36.472054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633646, -0.337804, 0.695975,
		0.767650, -0.386124, 0.511490,
		0.095950, 0.858369, 0.503981,
		27.307474, 35.522980, 36.623249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457766, 34.798870, 36.962128>,  <27.240309, 34.922123, 36.270462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457766, 34.798870, 36.962128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273842, 35.153988, 36.970154>,  <27.163488, 35.367058, 36.974972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273842, 35.153988, 36.970154>,  <27.457766, 34.798870, 36.962128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273842, 35.153988, 36.970154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511086, -0.283051, 0.811586,
		0.726200, 0.362918, 0.583887,
		-0.459809, 0.887791, 0.020069,
		27.135899, 35.420326, 36.976173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369596, 34.997959, 37.640217>,  <27.457766, 34.798870, 36.962128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369596, 34.997959, 37.640217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076494, 35.190662, 37.447975>,  <26.900633, 35.306282, 37.332630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076494, 35.190662, 37.447975>,  <27.369596, 34.997959, 37.640217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076494, 35.190662, 37.447975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673682, -0.413891, 0.612247,
		0.096036, 0.772402, 0.627831,
		-0.732755, 0.481756, -0.480605,
		26.856668, 35.335190, 37.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768221, 34.572685, 37.478413>,  <27.369596, 34.997959, 37.640217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768221, 34.572685, 37.478413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611813, 34.724216, 37.813934>,  <26.517967, 34.815136, 38.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611813, 34.724216, 37.813934>,  <26.768221, 34.572685, 37.478413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611813, 34.724216, 37.813934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358709, 0.902025, -0.240163,
		-0.847604, 0.206978, -0.488598,
		-0.391019, 0.378828, 0.838805,
		26.494507, 34.837864, 38.065575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188341, 34.993027, 37.395271>,  <26.768221, 34.572685, 37.478413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188341, 34.993027, 37.395271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360100, 35.129028, 37.729939>,  <26.463156, 35.210629, 37.930740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360100, 35.129028, 37.729939>,  <26.188341, 34.993027, 37.395271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360100, 35.129028, 37.729939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159379, 0.883354, -0.440777,
		-0.888942, 0.322615, 0.325119,
		0.429397, 0.340008, 0.836668,
		26.488918, 35.231030, 37.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949696, 35.686684, 37.411072>,  <26.188341, 34.993027, 37.395271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949696, 35.686684, 37.411072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306414, 35.645576, 37.587318>,  <26.520445, 35.620911, 37.693066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306414, 35.645576, 37.587318>,  <25.949696, 35.686684, 37.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306414, 35.645576, 37.587318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406145, 0.610979, -0.679523,
		-0.199375, 0.784948, 0.586606,
		0.891794, -0.102767, 0.440616,
		26.573952, 35.614746, 37.719501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199078, 36.287121, 37.353714>,  <25.949696, 35.686684, 37.411072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199078, 36.287121, 37.353714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519796, 36.051548, 37.394268>,  <26.712227, 35.910206, 37.418602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519796, 36.051548, 37.394268>,  <26.199078, 36.287121, 37.353714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519796, 36.051548, 37.394268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443583, 0.472841, -0.761351,
		0.400445, 0.655422, 0.640363,
		0.801797, -0.588933, 0.101388,
		26.760336, 35.874866, 37.424683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731819, 36.677994, 37.099854>,  <26.199078, 36.287121, 37.353714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731819, 36.677994, 37.099854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842495, 36.294327, 37.076366>,  <26.908901, 36.064129, 37.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842495, 36.294327, 37.076366>,  <26.731819, 36.677994, 37.099854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842495, 36.294327, 37.076366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497591, 0.195278, -0.845145,
		0.822098, 0.204628, 0.531303,
		0.276692, -0.959163, -0.058717,
		26.925503, 36.006577, 37.058750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475828, 36.656593, 37.230335>,  <26.731819, 36.677994, 37.099854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475828, 36.656593, 37.230335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416832, 36.311813, 37.036312>,  <27.381433, 36.104946, 36.919899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416832, 36.311813, 37.036312>,  <27.475828, 36.656593, 37.230335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416832, 36.311813, 37.036312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594045, 0.314913, -0.740230,
		0.790795, -0.397325, 0.465592,
		-0.147491, -0.861953, -0.485061,
		27.372585, 36.053226, 36.890793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134214, 36.597618, 37.091309>,  <27.475828, 36.656593, 37.230335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134214, 36.597618, 37.091309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935986, 36.330963, 36.868595>,  <27.817049, 36.170971, 36.734966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935986, 36.330963, 36.868595>,  <28.134214, 36.597618, 37.091309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935986, 36.330963, 36.868595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650527, 0.139883, -0.746490,
		0.575521, -0.732141, 0.364342,
		-0.495570, -0.666635, -0.556784,
		27.787315, 36.130974, 36.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581743, 36.043015, 37.000118>,  <28.134214, 36.597618, 37.091309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581743, 36.043015, 37.000118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314779, 36.075005, 36.703964>,  <28.154600, 36.094200, 36.526272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314779, 36.075005, 36.703964>,  <28.581743, 36.043015, 37.000118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314779, 36.075005, 36.703964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738562, 0.198370, -0.644341,
		0.095339, -0.976859, -0.191462,
		-0.667410, 0.079976, -0.740383,
		28.114555, 36.098999, 36.481850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846205, 35.627285, 36.557728>,  <28.581743, 36.043015, 37.000118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846205, 35.627285, 36.557728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602058, 35.886570, 36.375618>,  <28.455570, 36.042141, 36.266354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602058, 35.886570, 36.375618>,  <28.846205, 35.627285, 36.557728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602058, 35.886570, 36.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735933, 0.251440, -0.628634,
		-0.293013, -0.718748, -0.630511,
		-0.610365, 0.648212, -0.455275,
		28.418949, 36.081032, 36.239037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686289, 35.485573, 35.840637>,  <28.846205, 35.627285, 36.557728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686289, 35.485573, 35.840637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662178, 35.878090, 35.913780>,  <28.647711, 36.113598, 35.957664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662178, 35.878090, 35.913780>,  <28.686289, 35.485573, 35.840637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662178, 35.878090, 35.913780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757905, 0.164206, -0.631360,
		-0.649574, 0.100533, -0.753622,
		-0.060277, 0.981290, 0.182859,
		28.644094, 36.172478, 35.968639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888271, 35.859962, 35.275593>,  <28.686289, 35.485573, 35.840637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888271, 35.859962, 35.275593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975983, 36.145683, 35.541435>,  <29.028608, 36.317116, 35.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975983, 36.145683, 35.541435>,  <28.888271, 35.859962, 35.275593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975983, 36.145683, 35.541435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760145, 0.301952, -0.575330,
		-0.611635, 0.631351, -0.476759,
		0.219277, 0.714298, 0.664602,
		29.041765, 36.359974, 35.740814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017673, 36.456017, 35.008263>,  <28.888271, 35.859962, 35.275593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017673, 36.456017, 35.008263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246347, 36.483971, 35.335258>,  <29.383553, 36.500744, 35.531456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246347, 36.483971, 35.335258>,  <29.017673, 36.456017, 35.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246347, 36.483971, 35.335258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779506, 0.264638, -0.567747,
		-0.256017, 0.961812, 0.096814,
		0.571687, 0.069886, 0.817490,
		29.417854, 36.504936, 35.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344698, 37.062130, 34.940815>,  <29.017673, 36.456017, 35.008263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344698, 37.062130, 34.940815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571005, 36.831726, 35.176823>,  <29.706789, 36.693485, 35.318428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571005, 36.831726, 35.176823>,  <29.344698, 37.062130, 34.940815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571005, 36.831726, 35.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813747, 0.274517, -0.512304,
		0.133120, 0.769972, 0.624037,
		0.565769, -0.576007, 0.590018,
		29.740736, 36.658924, 35.353828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924700, 37.475857, 35.185959>,  <29.344698, 37.062130, 34.940815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924700, 37.475857, 35.185959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035721, 37.091625, 35.192272>,  <30.102333, 36.861084, 35.196060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035721, 37.091625, 35.192272>,  <29.924700, 37.475857, 35.185959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035721, 37.091625, 35.192272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802663, 0.222833, -0.553243,
		0.527918, 0.166221, 0.832870,
		0.277551, -0.960581, 0.015782,
		30.118986, 36.803452, 35.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612370, 37.411663, 35.575890>,  <29.924700, 37.475857, 35.185959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612370, 37.411663, 35.575890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551273, 37.119980, 35.309078>,  <30.514616, 36.944969, 35.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551273, 37.119980, 35.309078>,  <30.612370, 37.411663, 35.575890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551273, 37.119980, 35.309078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923075, 0.135810, -0.359845,
		0.352991, -0.670680, 0.652369,
		-0.152743, -0.729208, -0.667027,
		30.505451, 36.901218, 35.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026142, 36.785236, 35.672771>,  <30.612370, 37.411663, 35.575890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026142, 36.785236, 35.672771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898157, 36.916172, 35.317139>,  <30.821365, 36.994732, 35.103760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898157, 36.916172, 35.317139>,  <31.026142, 36.785236, 35.672771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898157, 36.916172, 35.317139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930143, 0.286974, -0.229084,
		0.180158, -0.900276, -0.396291,
		-0.319964, 0.327336, -0.889086,
		30.802168, 37.014374, 35.050411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588671, 36.239914, 35.774952>,  <31.026142, 36.785236, 35.672771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588671, 36.239914, 35.774952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894381, 36.019089, 35.641621>,  <32.077805, 35.886593, 35.561623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894381, 36.019089, 35.641621>,  <31.588671, 36.239914, 35.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894381, 36.019089, 35.641621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556973, 0.825604, -0.090326,
		0.325062, -0.116620, 0.938474,
		0.764275, -0.552066, -0.333327,
		32.123665, 35.853470, 35.541622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176464, 36.247021, 36.258392>,  <31.588671, 36.239914, 35.774952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176464, 36.247021, 36.258392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312874, 36.209831, 35.884216>,  <32.394722, 36.187519, 35.659710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312874, 36.209831, 35.884216>,  <32.176464, 36.247021, 36.258392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312874, 36.209831, 35.884216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555279, 0.822866, 0.120652,
		0.758528, -0.560578, 0.332247,
		0.341029, -0.092972, -0.935444,
		32.415184, 36.181938, 35.603584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907776, 36.401310, 36.250629>,  <32.176464, 36.247021, 36.258392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907776, 36.401310, 36.250629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759884, 36.467789, 35.884968>,  <32.671150, 36.507675, 35.665569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759884, 36.467789, 35.884968>,  <32.907776, 36.401310, 36.250629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759884, 36.467789, 35.884968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532612, 0.844089, -0.061958,
		0.761331, -0.509798, -0.400601,
		-0.369729, 0.166194, -0.914155,
		32.648964, 36.517647, 35.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395721, 36.426624, 35.693935>,  <32.907776, 36.401310, 36.250629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395721, 36.426624, 35.693935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095940, 36.680740, 35.619389>,  <32.916073, 36.833210, 35.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095940, 36.680740, 35.619389>,  <33.395721, 36.426624, 35.693935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095940, 36.680740, 35.619389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661978, 0.723480, -0.195863,
		0.010403, -0.270160, -0.962759,
		-0.749451, 0.635288, -0.186367,
		32.871105, 36.871326, 35.563480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664822, 36.829117, 35.161251>,  <33.395721, 36.426624, 35.693935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664822, 36.829117, 35.161251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373539, 37.059467, 35.309891>,  <33.198769, 37.197678, 35.399075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373539, 37.059467, 35.309891>,  <33.664822, 36.829117, 35.161251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373539, 37.059467, 35.309891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670713, 0.710296, 0.213599,
		-0.140938, 0.404780, -0.903488,
		-0.728204, 0.575876, 0.371599,
		33.155079, 37.232231, 35.421371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896675, 37.536823, 35.143360>,  <33.664822, 36.829117, 35.161251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896675, 37.536823, 35.143360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560352, 37.569305, 35.357445>,  <33.358559, 37.588795, 35.485893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560352, 37.569305, 35.357445>,  <33.896675, 37.536823, 35.143360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560352, 37.569305, 35.357445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321557, 0.870278, 0.373119,
		-0.435482, 0.485821, -0.757848,
		-0.840807, 0.081204, 0.535210,
		33.308109, 37.593666, 35.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503479, 38.199505, 35.093174>,  <33.896675, 37.536823, 35.143360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503479, 38.199505, 35.093174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458611, 38.030041, 35.452713>,  <33.431690, 37.928364, 35.668438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458611, 38.030041, 35.452713>,  <33.503479, 38.199505, 35.093174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458611, 38.030041, 35.452713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432671, 0.793486, 0.427990,
		-0.894547, 0.436913, 0.094300,
		-0.112169, -0.423658, 0.898850,
		33.424961, 37.902943, 35.722366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188034, 38.652618, 35.658508>,  <33.503479, 38.199505, 35.093174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188034, 38.652618, 35.658508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441971, 38.388653, 35.819252>,  <33.594334, 38.230274, 35.915699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441971, 38.388653, 35.819252>,  <33.188034, 38.652618, 35.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441971, 38.388653, 35.819252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471385, 0.742904, 0.475279,
		-0.612188, -0.112294, 0.782698,
		0.634840, -0.659912, 0.401864,
		33.632423, 38.190678, 35.939812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801205, 38.188576, 36.205112>,  <33.188034, 38.652618, 35.658508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801205, 38.188576, 36.205112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876137, 38.068336, 35.831043>,  <32.921097, 37.996193, 35.606602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876137, 38.068336, 35.831043>,  <32.801205, 38.188576, 36.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876137, 38.068336, 35.831043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820957, -0.570675, 0.018982,
		-0.539386, 0.764180, -0.353683,
		0.187332, -0.300597, -0.935173,
		32.932335, 37.978157, 35.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117775, 37.922222, 35.773827>,  <32.801205, 38.188576, 36.205112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117775, 37.922222, 35.773827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456074, 37.738804, 35.664688>,  <32.659054, 37.628754, 35.599205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456074, 37.738804, 35.664688>,  <32.117775, 37.922222, 35.773827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456074, 37.738804, 35.664688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522896, -0.814083, -0.252683,
		-0.106250, 0.356375, -0.928282,
		0.845749, -0.458547, -0.272843,
		32.709797, 37.601238, 35.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141407, 37.715790, 34.999550>,  <32.117775, 37.922222, 35.773827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141407, 37.715790, 34.999550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354641, 37.453346, 35.213219>,  <32.482582, 37.295879, 35.341419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354641, 37.453346, 35.213219>,  <32.141407, 37.715790, 34.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354641, 37.453346, 35.213219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539817, -0.749921, -0.382383,
		0.651472, -0.084512, -0.753951,
		0.533088, -0.656107, 0.534173,
		32.514568, 37.256516, 35.373470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520515, 37.199146, 34.658302>,  <32.141407, 37.715790, 34.999550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520515, 37.199146, 34.658302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447224, 37.040184, 35.017967>,  <32.403248, 36.944805, 35.233765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447224, 37.040184, 35.017967>,  <32.520515, 37.199146, 34.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447224, 37.040184, 35.017967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296952, -0.849548, -0.435990,
		0.937148, -0.346895, 0.037652,
		-0.183230, -0.397407, 0.899163,
		32.392254, 36.920963, 35.287716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323502, 36.648884, 34.353722>,  <32.520515, 37.199146, 34.658302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323502, 36.648884, 34.353722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433121, 36.589001, 34.733719>,  <32.498894, 36.553070, 34.961716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433121, 36.589001, 34.733719>,  <32.323502, 36.648884, 34.353722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433121, 36.589001, 34.733719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174893, -0.979096, -0.103844,
		0.945679, -0.137688, -0.294504,
		0.274050, -0.149710, 0.949991,
		32.515335, 36.544086, 35.018715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840111, 36.158615, 34.380756>,  <32.323502, 36.648884, 34.353722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840111, 36.158615, 34.380756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677765, 36.151749, 34.746265>,  <32.580357, 36.147629, 34.965572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677765, 36.151749, 34.746265>,  <32.840111, 36.158615, 34.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677765, 36.151749, 34.746265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053144, -0.997688, -0.042350,
		0.912388, -0.065750, 0.404010,
		-0.405861, -0.017169, 0.913773,
		32.556007, 36.146599, 35.020397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295841, 35.701923, 34.896942>,  <32.840111, 36.158615, 34.380756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295841, 35.701923, 34.896942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899570, 35.724857, 34.946365>,  <32.661808, 35.738617, 34.976017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899570, 35.724857, 34.946365>,  <33.295841, 35.701923, 34.896942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899570, 35.724857, 34.946365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086261, -0.966092, -0.243363,
		0.105413, -0.251753, 0.962034,
		-0.990680, 0.057333, 0.123555,
		32.602367, 35.742058, 34.983433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633717, 35.656197, 34.309181>,  <33.295841, 35.701923, 34.896942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633717, 35.656197, 34.309181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850071, 35.467575, 34.587772>,  <33.979885, 35.354401, 34.754925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850071, 35.467575, 34.587772>,  <33.633717, 35.656197, 34.309181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850071, 35.467575, 34.587772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481233, -0.852633, -0.203550,
		0.689822, -0.225068, -0.688106,
		0.540889, -0.471552, 0.696475,
		34.012337, 35.326111, 34.796715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194832, 35.100849, 34.378559>,  <33.633717, 35.656197, 34.309181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194832, 35.100849, 34.378559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394566, 34.846077, 34.613503>,  <34.514404, 34.693214, 34.754467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394566, 34.846077, 34.613503>,  <34.194832, 35.100849, 34.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394566, 34.846077, 34.613503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089020, -0.636613, -0.766029,
		0.861826, 0.434787, -0.261181,
		0.499330, -0.636933, 0.587354,
		34.544365, 34.654999, 34.789707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804779, 34.865391, 34.088993>,  <34.194832, 35.100849, 34.378559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804779, 34.865391, 34.088993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698467, 34.557201, 34.320763>,  <34.634678, 34.372288, 34.459824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698467, 34.557201, 34.320763>,  <34.804779, 34.865391, 34.088993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698467, 34.557201, 34.320763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151965, -0.627012, -0.764044,
		0.951980, -0.115018, 0.283734,
		-0.265783, -0.770472, 0.579424,
		34.618732, 34.326061, 34.494591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506187, 34.368904, 34.319107>,  <34.804779, 34.865391, 34.088993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506187, 34.368904, 34.319107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167755, 34.173386, 34.234035>,  <34.964695, 34.056076, 34.182991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167755, 34.173386, 34.234035>,  <35.506187, 34.368904, 34.319107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167755, 34.173386, 34.234035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385195, -0.284813, -0.877785,
		0.368482, -0.824598, 0.429255,
		-0.846077, -0.488794, -0.212683,
		34.913933, 34.026749, 34.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709938, 33.908176, 33.780365>,  <35.506187, 34.368904, 34.319107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709938, 33.908176, 33.780365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311054, 33.896599, 33.752811>,  <35.071724, 33.889652, 33.736279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311054, 33.896599, 33.752811>,  <35.709938, 33.908176, 33.780365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311054, 33.896599, 33.752811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073233, -0.196014, -0.977863,
		0.014802, -0.980174, 0.197586,
		-0.997205, -0.028944, -0.068880,
		35.011894, 33.887917, 33.732147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247574, 33.497185, 34.102085>,  <35.709938, 33.908176, 33.780365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247574, 33.497185, 34.102085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319221, 33.129547, 34.242470>,  <35.362209, 32.908962, 34.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319221, 33.129547, 34.242470>,  <35.247574, 33.497185, 34.102085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319221, 33.129547, 34.242470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133126, 0.376093, 0.916969,
		-0.974779, -0.117526, 0.189722,
		0.179121, -0.919098, 0.350961,
		35.372959, 32.853817, 34.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797817, 33.378162, 34.705986>,  <35.247574, 33.497185, 34.102085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797817, 33.378162, 34.705986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142429, 33.175747, 34.689495>,  <35.349197, 33.054298, 34.679600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142429, 33.175747, 34.689495>,  <34.797817, 33.378162, 34.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142429, 33.175747, 34.689495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198533, 0.261034, 0.944694,
		-0.467287, -0.822063, 0.325352,
		0.861526, -0.506037, -0.041229,
		35.400887, 33.023937, 34.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826603, 32.867630, 35.287708>,  <34.797817, 33.378162, 34.705986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826603, 32.867630, 35.287708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184158, 33.005585, 35.173157>,  <35.398693, 33.088360, 35.104427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184158, 33.005585, 35.173157>,  <34.826603, 32.867630, 35.287708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184158, 33.005585, 35.173157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280592, 0.067756, 0.957433,
		0.349613, -0.936195, -0.036207,
		0.893890, 0.344890, -0.286377,
		35.452324, 33.109051, 35.087242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433483, 32.468494, 35.554066>,  <34.826603, 32.867630, 35.287708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433483, 32.468494, 35.554066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550468, 32.849464, 35.519768>,  <35.620659, 33.078045, 35.499187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550468, 32.849464, 35.519768>,  <35.433483, 32.468494, 35.554066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550468, 32.849464, 35.519768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047471, 0.104019, 0.993442,
		0.955099, -0.286471, 0.075634,
		0.292460, 0.952426, -0.085749,
		35.638206, 33.135193, 35.494041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028103, 32.550949, 35.954254>,  <35.433483, 32.468494, 35.554066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028103, 32.550949, 35.954254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791550, 32.872856, 35.933777>,  <35.649616, 33.065998, 35.921490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791550, 32.872856, 35.933777>,  <36.028103, 32.550949, 35.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791550, 32.872856, 35.933777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155739, -0.051700, 0.986444,
		0.791209, 0.591338, 0.155908,
		-0.591382, 0.804765, -0.051189,
		35.614136, 33.114285, 35.918419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785408, 32.522507, 36.047108>,  <36.028103, 32.550949, 35.954254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785408, 32.522507, 36.047108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117271, 32.531193, 35.823967>,  <37.316391, 32.536404, 35.690083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117271, 32.531193, 35.823967>,  <36.785408, 32.522507, 36.047108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117271, 32.531193, 35.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482751, 0.473961, 0.736419,
		0.280392, -0.880278, 0.382741,
		0.829658, 0.021717, -0.557850,
		37.366169, 32.537708, 35.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166477, 32.028656, 36.361797>,  <36.785408, 32.522507, 36.047108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166477, 32.028656, 36.361797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341187, 32.339687, 36.180870>,  <37.446014, 32.526306, 36.072311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341187, 32.339687, 36.180870>,  <37.166477, 32.028656, 36.361797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341187, 32.339687, 36.180870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375417, 0.299378, 0.877174,
		0.817489, -0.552938, -0.161155,
		0.436777, 0.777581, -0.452321,
		37.472221, 32.572960, 36.045174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847881, 31.987211, 36.478657>,  <37.166477, 32.028656, 36.361797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847881, 31.987211, 36.478657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774441, 32.374634, 36.411499>,  <37.730377, 32.607086, 36.371204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774441, 32.374634, 36.411499>,  <37.847881, 31.987211, 36.478657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774441, 32.374634, 36.411499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302607, 0.218194, 0.927804,
		0.935265, 0.119535, -0.333152,
		-0.183597, 0.968557, -0.167897,
		37.719360, 32.665199, 36.361130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399338, 32.304211, 36.774696>,  <37.847881, 31.987211, 36.478657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399338, 32.304211, 36.774696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114773, 32.584755, 36.756870>,  <37.944035, 32.753082, 36.746174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114773, 32.584755, 36.756870>,  <38.399338, 32.304211, 36.774696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114773, 32.584755, 36.756870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210690, 0.273345, 0.938559,
		0.670453, 0.658309, -0.342231,
		-0.711408, 0.701364, -0.044566,
		37.901352, 32.795166, 36.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131542, 32.538509, 36.980778>,  <38.399338, 32.304211, 36.774696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131542, 32.538509, 36.980778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347092, 32.844414, 37.122063>,  <39.476421, 33.027958, 37.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347092, 32.844414, 37.122063>,  <39.131542, 32.538509, 36.980778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347092, 32.844414, 37.122063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824614, 0.564571, 0.035667,
		-0.172139, -0.310487, 0.934861,
		0.538869, 0.764760, 0.353217,
		39.508751, 33.073841, 37.228027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018559, 32.679504, 37.643906>,  <39.131542, 32.538509, 36.980778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018559, 32.679504, 37.643906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099609, 33.002193, 37.421864>,  <39.148239, 33.195808, 37.288639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099609, 33.002193, 37.421864>,  <39.018559, 32.679504, 37.643906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099609, 33.002193, 37.421864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954076, 0.290355, 0.073713,
		0.220642, 0.514672, 0.828510,
		0.202624, 0.806726, -0.555101,
		39.160397, 33.244209, 37.255333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861938, 33.263874, 38.137012>,  <39.018559, 32.679504, 37.643906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861938, 33.263874, 38.137012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509022, 33.449379, 38.169209>,  <38.297272, 33.560680, 38.188526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509022, 33.449379, 38.169209>,  <38.861938, 33.263874, 38.137012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509022, 33.449379, 38.169209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112831, -0.042358, -0.992711,
		-0.456973, -0.884946, 0.089700,
		-0.882295, 0.463763, 0.080493,
		38.244331, 33.588509, 38.193356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227100, 32.894222, 37.920250>,  <38.861938, 33.263874, 38.137012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227100, 32.894222, 37.920250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144279, 33.279469, 37.851501>,  <38.094585, 33.510616, 37.810253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144279, 33.279469, 37.851501>,  <38.227100, 32.894222, 37.920250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144279, 33.279469, 37.851501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358729, -0.238185, -0.902542,
		-0.910187, -0.125221, 0.394815,
		-0.207056, 0.963114, -0.171872,
		38.082161, 33.568401, 37.799938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558540, 32.920944, 37.684490>,  <38.227100, 32.894222, 37.920250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558540, 32.920944, 37.684490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738712, 33.234749, 37.514008>,  <37.846813, 33.423031, 37.411720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738712, 33.234749, 37.514008>,  <37.558540, 32.920944, 37.684490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738712, 33.234749, 37.514008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459529, -0.205573, -0.864045,
		-0.765472, 0.585043, 0.267912,
		0.450428, 0.784516, -0.426204,
		37.873840, 33.470104, 37.386147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127132, 33.447510, 37.410236>,  <37.558540, 32.920944, 37.684490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127132, 33.447510, 37.410236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454342, 33.399384, 37.185249>,  <37.650665, 33.370510, 37.050259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454342, 33.399384, 37.185249>,  <37.127132, 33.447510, 37.410236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454342, 33.399384, 37.185249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572214, -0.269537, -0.774546,
		-0.058417, 0.955445, -0.289332,
		0.818021, -0.120313, -0.562465,
		37.699749, 33.363289, 37.016510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063313, 33.810032, 36.735420>,  <37.127132, 33.447510, 37.410236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063313, 33.810032, 36.735420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340652, 33.524906, 36.693165>,  <37.507057, 33.353832, 36.667812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340652, 33.524906, 36.693165>,  <37.063313, 33.810032, 36.735420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340652, 33.524906, 36.693165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362910, -0.218765, -0.905781,
		0.622544, 0.666361, -0.410369,
		0.693351, -0.712815, -0.105638,
		37.548656, 33.311062, 36.661472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348022, 33.864250, 36.107582>,  <37.063313, 33.810032, 36.735420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348022, 33.864250, 36.107582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487293, 33.495483, 36.175514>,  <37.570854, 33.274223, 36.216274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487293, 33.495483, 36.175514>,  <37.348022, 33.864250, 36.107582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487293, 33.495483, 36.175514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313624, -0.285286, -0.905678,
		0.883411, 0.262071, -0.388464,
		0.348175, -0.921917, 0.169833,
		37.591747, 33.218910, 36.226463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801613, 33.689453, 35.639221>,  <37.348022, 33.864250, 36.107582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801613, 33.689453, 35.639221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674229, 33.324436, 35.741863>,  <37.597797, 33.105427, 35.803448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674229, 33.324436, 35.741863>,  <37.801613, 33.689453, 35.639221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674229, 33.324436, 35.741863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106915, -0.234399, -0.966243,
		0.941889, -0.335143, -0.022918,
		-0.318458, -0.912544, 0.256609,
		37.578690, 33.050674, 35.818848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269863, 33.109821, 35.319244>,  <37.801613, 33.689453, 35.639221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269863, 33.109821, 35.319244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887966, 33.008976, 35.382374>,  <37.658829, 32.948471, 35.420250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887966, 33.008976, 35.382374>,  <38.269863, 33.109821, 35.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887966, 33.008976, 35.382374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075080, -0.309149, -0.948045,
		0.287804, -0.916988, 0.276229,
		-0.954742, -0.252112, 0.157822,
		37.601543, 32.933342, 35.429722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143852, 32.436638, 35.049427>,  <38.269863, 33.109821, 35.319244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143852, 32.436638, 35.049427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781986, 32.605442, 35.025810>,  <37.564865, 32.706722, 35.011639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781986, 32.605442, 35.025810>,  <38.143852, 32.436638, 35.049427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781986, 32.605442, 35.025810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174487, -0.493282, -0.852190,
		-0.388754, -0.760647, 0.519891,
		-0.904668, 0.422006, -0.059042,
		37.510586, 32.732044, 35.008099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584930, 31.919579, 35.044083>,  <38.143852, 32.436638, 35.049427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584930, 31.919579, 35.044083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477139, 32.228573, 34.814075>,  <37.412464, 32.413971, 34.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477139, 32.228573, 34.814075>,  <37.584930, 31.919579, 35.044083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477139, 32.228573, 34.814075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001967, -0.596665, -0.802488,
		-0.963004, -0.217384, 0.159269,
		-0.269478, 0.772486, -0.575019,
		37.396294, 32.460320, 34.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035942, 31.761564, 34.533302>,  <37.584930, 31.919579, 35.044083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035942, 31.761564, 34.533302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207062, 32.076660, 34.356010>,  <37.309734, 32.265717, 34.249638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207062, 32.076660, 34.356010>,  <37.035942, 31.761564, 34.533302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207062, 32.076660, 34.356010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155657, -0.547245, -0.822371,
		-0.890369, 0.282820, -0.356729,
		0.427801, 0.787741, -0.443228,
		37.335403, 32.312981, 34.223042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781166, 31.810154, 33.895897>,  <37.035942, 31.761564, 34.533302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781166, 31.810154, 33.895897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118317, 32.024483, 33.876080>,  <37.320606, 32.153080, 33.864189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118317, 32.024483, 33.876080>,  <36.781166, 31.810154, 33.895897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118317, 32.024483, 33.876080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217871, -0.424009, -0.879061,
		-0.492027, 0.730146, -0.474127,
		0.842877, 0.535820, -0.049546,
		37.371181, 32.185230, 33.861217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797482, 32.197083, 33.211227>,  <36.781166, 31.810154, 33.895897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797482, 32.197083, 33.211227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174759, 32.171329, 33.341602>,  <37.401127, 32.155880, 33.419827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174759, 32.171329, 33.341602>,  <36.797482, 32.197083, 33.211227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174759, 32.171329, 33.341602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241248, -0.541794, -0.805145,
		0.228425, 0.838042, -0.495487,
		0.943197, -0.064380, 0.325936,
		37.457718, 32.152016, 33.439384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145752, 32.385979, 32.638500>,  <36.797482, 32.197083, 33.211227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145752, 32.385979, 32.638500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420765, 32.231285, 32.884342>,  <37.585773, 32.138470, 33.031849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420765, 32.231285, 32.884342>,  <37.145752, 32.385979, 32.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420765, 32.231285, 32.884342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477651, -0.396647, -0.783914,
		0.546946, 0.832532, -0.087983,
		0.687531, -0.386733, 0.614604,
		37.627026, 32.115265, 33.068722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897709, 32.562412, 32.325485>,  <37.145752, 32.385979, 32.638500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897709, 32.562412, 32.325485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921486, 32.260094, 32.586327>,  <37.935753, 32.078705, 32.742832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921486, 32.260094, 32.586327>,  <37.897709, 32.562412, 32.325485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921486, 32.260094, 32.586327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589195, -0.500768, -0.634098,
		0.805801, 0.421911, 0.415542,
		0.059443, -0.755793, 0.652108,
		37.939320, 32.033356, 32.781960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529099, 32.490986, 32.289856>,  <37.897709, 32.562412, 32.325485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529099, 32.490986, 32.289856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397705, 32.143028, 32.437038>,  <38.318871, 31.934256, 32.525349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397705, 32.143028, 32.437038>,  <38.529099, 32.490986, 32.289856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397705, 32.143028, 32.437038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641074, -0.491434, -0.589506,
		0.693632, 0.042248, 0.719090,
		-0.328480, -0.869890, 0.367958,
		38.299160, 31.882061, 32.547424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235054, 32.062244, 32.396111>,  <38.529099, 32.490986, 32.289856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235054, 32.062244, 32.396111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898880, 31.847931, 32.363590>,  <38.697174, 31.719343, 32.344078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898880, 31.847931, 32.363590>,  <39.235054, 32.062244, 32.396111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898880, 31.847931, 32.363590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414355, -0.538648, -0.733600,
		0.349256, -0.650230, 0.674701,
		-0.840435, -0.535779, -0.081299,
		38.646751, 31.687197, 32.339199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486568, 31.439255, 32.231842>,  <39.235054, 32.062244, 32.396111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486568, 31.439255, 32.231842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100513, 31.386797, 32.141235>,  <38.868881, 31.355322, 32.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100513, 31.386797, 32.141235>,  <39.486568, 31.439255, 32.231842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100513, 31.386797, 32.141235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256483, -0.646486, -0.718521,
		-0.052213, -0.751570, 0.657584,
		-0.965137, -0.131142, -0.226520,
		38.810974, 31.347454, 32.073280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399578, 30.665184, 32.029625>,  <39.486568, 31.439255, 32.231842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399578, 30.665184, 32.029625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104794, 30.898996, 31.893858>,  <38.927921, 31.039284, 31.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104794, 30.898996, 31.893858>,  <39.399578, 30.665184, 32.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104794, 30.898996, 31.893858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165210, -0.331154, -0.929001,
		-0.655432, -0.740715, 0.147478,
		-0.736963, 0.584533, -0.339422,
		38.883705, 31.074356, 31.792032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020798, 30.262613, 31.481583>,  <39.399578, 30.665184, 32.029625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020798, 30.262613, 31.481583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921379, 30.640814, 31.397434>,  <38.861729, 30.867733, 31.346945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921379, 30.640814, 31.397434>,  <39.020798, 30.262613, 31.481583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921379, 30.640814, 31.397434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044153, -0.205900, -0.977576,
		-0.967614, -0.252258, 0.009429,
		-0.248543, 0.945500, -0.210370,
		38.846817, 30.924463, 31.334324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527126, 30.196703, 30.839325>,  <39.020798, 30.262613, 31.481583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527126, 30.196703, 30.839325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665390, 30.571043, 30.866747>,  <38.748348, 30.795647, 30.883200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665390, 30.571043, 30.866747>,  <38.527126, 30.196703, 30.839325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665390, 30.571043, 30.866747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051632, 0.053980, -0.997206,
		-0.936938, 0.348234, -0.029661,
		0.345660, 0.935852, 0.068556,
		38.769089, 30.851799, 30.887314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142078, 30.615116, 30.275215>,  <38.527126, 30.196703, 30.839325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142078, 30.615116, 30.275215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455742, 30.843760, 30.371840>,  <38.643940, 30.980946, 30.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455742, 30.843760, 30.371840>,  <38.142078, 30.615116, 30.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455742, 30.843760, 30.371840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090829, 0.279351, -0.955884,
		-0.613874, 0.771508, 0.167137,
		0.784162, 0.571611, 0.241561,
		38.690990, 31.015244, 30.444307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955944, 31.298962, 30.075884>,  <38.142078, 30.615116, 30.275215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955944, 31.298962, 30.075884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353081, 31.254782, 30.094095>,  <38.591362, 31.228273, 30.105022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353081, 31.254782, 30.094095>,  <37.955944, 31.298962, 30.075884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353081, 31.254782, 30.094095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073066, 0.259912, -0.962864,
		0.094516, 0.959295, 0.266121,
		0.992838, -0.110450, 0.045526,
		38.650932, 31.221647, 30.107754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217922, 32.052452, 30.053329>,  <37.955944, 31.298962, 30.075884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217922, 32.052452, 30.053329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493923, 31.792349, 29.926172>,  <38.659523, 31.636288, 29.849878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493923, 31.792349, 29.926172>,  <38.217922, 32.052452, 30.053329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493923, 31.792349, 29.926172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125340, 0.539910, -0.832338,
		0.712868, 0.534474, 0.454045,
		0.690007, -0.650257, -0.317894,
		38.700924, 31.597271, 29.830805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682384, 32.514786, 29.668232>,  <38.217922, 32.052452, 30.053329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682384, 32.514786, 29.668232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771076, 32.145370, 29.543066>,  <38.824291, 31.923721, 29.467966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771076, 32.145370, 29.543066>,  <38.682384, 32.514786, 29.668232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771076, 32.145370, 29.543066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099498, 0.340655, -0.934909,
		0.970018, 0.176166, 0.167425,
		0.221733, -0.923537, -0.312913,
		38.837597, 31.868309, 29.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294746, 32.607143, 29.343309>,  <38.682384, 32.514786, 29.668232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294746, 32.607143, 29.343309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157242, 32.252533, 29.219440>,  <39.074738, 32.039764, 29.145119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157242, 32.252533, 29.219440>,  <39.294746, 32.607143, 29.343309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157242, 32.252533, 29.219440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238095, 0.236709, -0.941955,
		0.908372, -0.397539, 0.129706,
		-0.343761, -0.886528, -0.309672,
		39.054111, 31.986574, 29.126539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860538, 32.342415, 28.911583>,  <39.294746, 32.607143, 29.343309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860538, 32.342415, 28.911583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541908, 32.118599, 28.820038>,  <39.350731, 31.984310, 28.765110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541908, 32.118599, 28.820038>,  <39.860538, 32.342415, 28.911583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541908, 32.118599, 28.820038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304252, -0.043925, -0.951578,
		0.522392, -0.827640, 0.205230,
		-0.796579, -0.559538, -0.228865,
		39.302933, 31.950737, 28.751379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123528, 31.785461, 28.611427>,  <39.860538, 32.342415, 28.911583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123528, 31.785461, 28.611427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749577, 31.806744, 28.471039>,  <39.525208, 31.819513, 28.386806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749577, 31.806744, 28.471039>,  <40.123528, 31.785461, 28.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749577, 31.806744, 28.471039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346975, -0.071836, -0.935119,
		-0.074995, -0.995995, 0.048686,
		-0.934871, 0.053237, -0.350972,
		39.469116, 31.822704, 28.365747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947063, 31.171970, 28.017370>,  <40.123528, 31.785461, 28.611427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947063, 31.171970, 28.017370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683086, 31.463604, 27.944809>,  <39.524700, 31.638584, 27.901272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683086, 31.463604, 27.944809>,  <39.947063, 31.171970, 28.017370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683086, 31.463604, 27.944809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040569, -0.206515, -0.977602,
		-0.750217, -0.652524, 0.106710,
		-0.659946, 0.729085, -0.181403,
		39.485104, 31.682329, 27.890388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427788, 30.808092, 27.639912>,  <39.947063, 31.171970, 28.017370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427788, 30.808092, 27.639912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409790, 31.203346, 27.581173>,  <39.398991, 31.440498, 27.545929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409790, 31.203346, 27.581173>,  <39.427788, 30.808092, 27.639912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409790, 31.203346, 27.581173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161116, -0.137892, -0.977255,
		-0.985909, -0.067635, -0.152999,
		-0.044999, 0.988135, -0.146846,
		39.396290, 31.499786, 27.537119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208607, 30.826656, 26.959379>,  <39.427788, 30.808092, 27.639912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208607, 30.826656, 26.959379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305279, 31.206738, 27.038080>,  <39.363281, 31.434786, 27.085300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305279, 31.206738, 27.038080>,  <39.208607, 30.826656, 26.959379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305279, 31.206738, 27.038080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037917, 0.193359, -0.980395,
		-0.969616, 0.244398, 0.010702,
		0.241676, 0.950201, 0.196751,
		39.377781, 31.491798, 27.097105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765938, 31.180717, 26.561966>,  <39.208607, 30.826656, 26.959379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765938, 31.180717, 26.561966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096741, 31.393841, 26.633707>,  <39.295223, 31.521715, 26.676752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096741, 31.393841, 26.633707>,  <38.765938, 31.180717, 26.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096741, 31.393841, 26.633707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148453, 0.100730, -0.983776,
		-0.542230, 0.840219, 0.004208,
		0.827011, 0.532808, 0.179352,
		39.344845, 31.553684, 26.687513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650368, 31.834137, 26.055058>,  <38.765938, 31.180717, 26.561966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650368, 31.834137, 26.055058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031967, 31.834221, 26.174982>,  <39.260925, 31.834272, 26.246937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031967, 31.834221, 26.174982>,  <38.650368, 31.834137, 26.055058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031967, 31.834221, 26.174982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273385, 0.409910, -0.870192,
		-0.123081, 0.912126, 0.390996,
		0.953998, 0.000212, 0.299813,
		39.318165, 31.834284, 26.264927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013828, 32.500099, 25.731895>,  <38.650368, 31.834137, 26.055058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013828, 32.500099, 25.731895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307640, 32.242653, 25.817888>,  <39.483929, 32.088184, 25.869484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307640, 32.242653, 25.817888>,  <39.013828, 32.500099, 25.731895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307640, 32.242653, 25.817888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357149, 0.097306, -0.928965,
		0.576979, 0.759137, 0.301341,
		0.734534, -0.643617, 0.214981,
		39.528000, 32.049568, 25.882383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654041, 32.866760, 25.500551>,  <39.013828, 32.500099, 25.731895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654041, 32.866760, 25.500551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745918, 32.478573, 25.530050>,  <39.801044, 32.245663, 25.547750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745918, 32.478573, 25.530050>,  <39.654041, 32.866760, 25.500551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745918, 32.478573, 25.530050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484047, 0.048169, -0.873715,
		0.844358, 0.236384, 0.480815,
		0.229693, -0.970465, 0.073749,
		39.814827, 32.187435, 25.552176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439808, 32.716473, 25.342798>,  <39.654041, 32.866760, 25.500551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439808, 32.716473, 25.342798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268894, 32.367661, 25.247301>,  <40.166348, 32.158375, 25.190002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268894, 32.367661, 25.247301>,  <40.439808, 32.716473, 25.342798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268894, 32.367661, 25.247301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395001, 0.057477, -0.916881,
		0.813267, -0.486072, 0.319892,
		-0.427283, -0.872027, -0.238743,
		40.140709, 32.106052, 25.175678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951237, 32.268093, 24.959700>,  <40.439808, 32.716473, 25.342798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951237, 32.268093, 24.959700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585663, 32.139969, 24.860003>,  <40.366318, 32.063095, 24.800184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585663, 32.139969, 24.860003>,  <40.951237, 32.268093, 24.959700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585663, 32.139969, 24.860003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318027, -0.183668, -0.930121,
		0.252146, -0.929338, 0.269727,
		-0.913937, -0.320307, -0.249243,
		40.311481, 32.043877, 24.785229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136566, 31.897829, 24.413294>,  <40.951237, 32.268093, 24.959700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136566, 31.897829, 24.413294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737797, 31.904619, 24.382700>,  <40.498535, 31.908693, 24.364344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737797, 31.904619, 24.382700>,  <41.136566, 31.897829, 24.413294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737797, 31.904619, 24.382700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071273, -0.208803, -0.975357,
		-0.032526, -0.977810, 0.206951,
		-0.996926, 0.016975, -0.076483,
		40.438721, 31.909712, 24.359755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840210, 31.220518, 24.174976>,  <41.136566, 31.897829, 24.413294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840210, 31.220518, 24.174976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574242, 31.497902, 24.063982>,  <40.414661, 31.664333, 23.997385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574242, 31.497902, 24.063982>,  <40.840210, 31.220518, 24.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574242, 31.497902, 24.063982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081734, -0.301722, -0.949886,
		-0.742433, -0.654275, 0.143940,
		-0.664916, 0.693461, -0.277485,
		40.374767, 31.705940, 23.980736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510986, 30.874802, 23.635876>,  <40.840210, 31.220518, 24.174976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510986, 30.874802, 23.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415245, 31.262867, 23.620415>,  <40.357800, 31.495707, 23.611139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415245, 31.262867, 23.620415>,  <40.510986, 30.874802, 23.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415245, 31.262867, 23.620415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122446, -0.009329, -0.992432,
		-0.963181, -0.242275, -0.116560,
		-0.239354, 0.970163, -0.038651,
		40.343437, 31.553915, 23.608820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995380, 30.964779, 23.097054>,  <40.510986, 30.874802, 23.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995380, 30.964779, 23.097054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180862, 31.315571, 23.147457>,  <40.292152, 31.526047, 23.177700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180862, 31.315571, 23.147457>,  <39.995380, 30.964779, 23.097054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180862, 31.315571, 23.147457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026830, 0.156058, -0.987383,
		-0.885582, 0.454476, 0.095895,
		0.463707, 0.876982, 0.126009,
		40.319973, 31.578665, 23.185261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566158, 31.322279, 22.539318>,  <39.995380, 30.964779, 23.097054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566158, 31.322279, 22.539318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900303, 31.526152, 22.621670>,  <40.100792, 31.648476, 22.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900303, 31.526152, 22.621670>,  <39.566158, 31.322279, 22.539318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900303, 31.526152, 22.621670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141673, 0.162256, -0.976525,
		-0.531124, 0.844924, 0.063335,
		0.835366, 0.509683, 0.205881,
		40.150913, 31.679056, 22.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490356, 31.980356, 22.161869>,  <39.566158, 31.322279, 22.539318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490356, 31.980356, 22.161869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878242, 31.926275, 22.243237>,  <40.110973, 31.893826, 22.292057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878242, 31.926275, 22.243237>,  <39.490356, 31.980356, 22.161869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878242, 31.926275, 22.243237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226462, 0.185636, -0.956166,
		0.091515, 0.973272, 0.210632,
		0.969711, -0.135204, 0.203421,
		40.169155, 31.885714, 22.304262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821896, 32.575054, 21.836279>,  <39.490356, 31.980356, 22.161869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821896, 32.575054, 21.836279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098412, 32.287640, 21.866798>,  <40.264320, 32.115189, 21.885109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098412, 32.287640, 21.866798>,  <39.821896, 32.575054, 21.836279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098412, 32.287640, 21.866798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415429, 0.308822, -0.855598,
		0.591219, 0.623160, 0.511987,
		0.691288, -0.718540, 0.076297,
		40.305798, 32.072079, 21.889687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481945, 32.883160, 21.642473>,  <39.821896, 32.575054, 21.836279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481945, 32.883160, 21.642473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535950, 32.491776, 21.579998>,  <40.568352, 32.256947, 21.542513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535950, 32.491776, 21.579998>,  <40.481945, 32.883160, 21.642473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535950, 32.491776, 21.579998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340266, 0.193830, -0.920135,
		0.930587, 0.071081, 0.359105,
		0.135010, -0.978457, -0.156189,
		40.576454, 32.198238, 21.533142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125668, 32.855991, 21.364252>,  <40.481945, 32.883160, 21.642473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125668, 32.855991, 21.364252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948437, 32.510715, 21.267437>,  <40.842098, 32.303551, 21.209349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948437, 32.510715, 21.267437>,  <41.125668, 32.855991, 21.364252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948437, 32.510715, 21.267437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200837, 0.167546, -0.965191,
		0.873699, -0.476261, 0.099126,
		-0.443074, -0.863194, -0.242036,
		40.815514, 32.251759, 21.194826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610985, 32.409962, 20.924467>,  <41.125668, 32.855991, 21.364252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610985, 32.409962, 20.924467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245907, 32.276684, 20.829828>,  <41.026859, 32.196716, 20.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245907, 32.276684, 20.829828>,  <41.610985, 32.409962, 20.924467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245907, 32.276684, 20.829828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210577, 0.112719, -0.971057,
		0.350217, -0.936097, -0.032715,
		-0.912691, -0.333191, -0.236597,
		40.972099, 32.176727, 20.758850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682899, 31.924784, 20.440500>,  <41.610985, 32.409962, 20.924467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682899, 31.924784, 20.440500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299805, 32.032139, 20.399120>,  <41.069946, 32.096550, 20.374292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299805, 32.032139, 20.399120>,  <41.682899, 31.924784, 20.440500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299805, 32.032139, 20.399120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128905, 0.078972, -0.988507,
		-0.257132, -0.960069, -0.110231,
		-0.957740, 0.268386, -0.103451,
		41.012482, 32.112656, 20.368084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506744, 31.634171, 19.822845>,  <41.682899, 31.924784, 20.440500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506744, 31.634171, 19.822845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163605, 31.837458, 19.853331>,  <40.957722, 31.959431, 19.871622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163605, 31.837458, 19.853331>,  <41.506744, 31.634171, 19.822845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163605, 31.837458, 19.853331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066084, 0.037975, -0.997091,
		-0.509634, -0.860391, 0.001008,
		-0.857850, 0.508218, 0.076211,
		40.906250, 31.989923, 19.876194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900562, 31.280560, 19.412670>,  <41.506744, 31.634171, 19.822845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900562, 31.280560, 19.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818501, 31.667694, 19.470921>,  <40.769264, 31.899975, 19.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818501, 31.667694, 19.470921>,  <40.900562, 31.280560, 19.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818501, 31.667694, 19.470921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082096, 0.131251, -0.987944,
		-0.975281, -0.214634, 0.052529,
		-0.205151, 0.967836, 0.145627,
		40.756954, 31.958044, 19.514608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345798, 31.397219, 19.073465>,  <40.900562, 31.280560, 19.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345798, 31.397219, 19.073465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495304, 31.765688, 19.116808>,  <40.585007, 31.986769, 19.142813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495304, 31.765688, 19.116808>,  <40.345798, 31.397219, 19.073465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495304, 31.765688, 19.116808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138330, 0.170879, -0.975533,
		-0.917150, 0.349632, 0.191295,
		0.373766, 0.921172, 0.108357,
		40.607433, 32.042038, 19.149315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826859, 31.985109, 18.728683>,  <40.345798, 31.397219, 19.073465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826859, 31.985109, 18.728683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202908, 32.120316, 18.746229>,  <40.428535, 32.201439, 18.756758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202908, 32.120316, 18.746229>,  <39.826859, 31.985109, 18.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202908, 32.120316, 18.746229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039131, 0.234878, -0.971237,
		-0.338595, 0.911361, 0.234040,
		0.940118, 0.338014, 0.043866,
		40.484943, 32.221722, 18.759390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952190, 32.631344, 18.364235>,  <39.826859, 31.985109, 18.728683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952190, 32.631344, 18.364235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326195, 32.497753, 18.411940>,  <40.550598, 32.417599, 18.440563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326195, 32.497753, 18.411940>,  <39.952190, 32.631344, 18.364235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326195, 32.497753, 18.411940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231048, 0.318560, -0.919313,
		0.269033, 0.887120, 0.375020,
		0.935007, -0.333973, 0.119264,
		40.606697, 32.397560, 18.447720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255177, 32.965206, 17.917194>,  <39.952190, 32.631344, 18.364235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255177, 32.965206, 17.917194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540169, 32.705448, 18.023518>,  <40.711163, 32.549591, 18.087313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540169, 32.705448, 18.023518>,  <40.255177, 32.965206, 17.917194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540169, 32.705448, 18.023518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451238, 0.133933, -0.882296,
		0.537361, 0.748561, 0.388458,
		0.712479, -0.649399, 0.265809,
		40.753914, 32.510628, 18.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902405, 33.245296, 17.733219>,  <40.255177, 32.965206, 17.917194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902405, 33.245296, 17.733219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911865, 32.845417, 17.735823>,  <40.917542, 32.605488, 17.737385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911865, 32.845417, 17.735823>,  <40.902405, 33.245296, 17.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911865, 32.845417, 17.735823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315503, 0.001286, -0.948924,
		0.948630, 0.024495, 0.315438,
		0.023649, -0.999699, 0.006509,
		40.918961, 32.545506, 17.737776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547752, 33.004726, 17.446241>,  <40.902405, 33.245296, 17.733219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547752, 33.004726, 17.446241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237755, 32.756866, 17.396566>,  <41.051758, 32.608150, 17.366762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237755, 32.756866, 17.396566>,  <41.547752, 33.004726, 17.446241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237755, 32.756866, 17.396566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235601, -0.100945, -0.966593,
		0.586413, -0.778361, 0.224222,
		-0.774992, -0.619649, -0.124187,
		41.005257, 32.570972, 17.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112209, 33.473785, 17.163980>,  <41.547752, 33.004726, 17.446241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112209, 33.473785, 17.163980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764988, 33.557667, 16.983978>,  <41.556656, 33.607998, 16.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764988, 33.557667, 16.983978>,  <42.112209, 33.473785, 17.163980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764988, 33.557667, 16.983978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496375, 0.384230, -0.778447,
		0.009659, -0.899105, -0.437626,
		-0.868055, 0.209707, -0.450005,
		41.504570, 33.620579, 16.848976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682426, 33.951805, 17.524336>,  <42.112209, 33.473785, 17.163980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682426, 33.951805, 17.524336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559273, 34.322193, 17.436899>,  <41.485378, 34.544426, 17.384438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559273, 34.322193, 17.436899>,  <41.682426, 33.951805, 17.524336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559273, 34.322193, 17.436899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536866, 0.020593, 0.843416,
		0.785482, 0.377029, 0.490783,
		-0.307886, 0.925973, -0.218590,
		41.466908, 34.599983, 17.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757473, 34.363136, 18.057085>,  <41.682426, 33.951805, 17.524336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757473, 34.363136, 18.057085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447079, 34.514137, 17.854963>,  <41.260841, 34.604736, 17.733690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447079, 34.514137, 17.854963>,  <41.757473, 34.363136, 18.057085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447079, 34.514137, 17.854963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474061, 0.179386, 0.862025,
		0.416062, 0.908467, 0.039758,
		-0.775989, 0.377503, -0.505305,
		41.214283, 34.627388, 17.703371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677055, 35.024456, 18.397278>,  <41.757473, 34.363136, 18.057085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677055, 35.024456, 18.397278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338097, 34.867363, 18.254349>,  <41.134720, 34.773106, 18.168591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338097, 34.867363, 18.254349>,  <41.677055, 35.024456, 18.397278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338097, 34.867363, 18.254349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498654, 0.357484, 0.789651,
		-0.182386, 0.847328, -0.498769,
		-0.847395, -0.392735, -0.357324,
		41.083878, 34.749542, 18.147152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176167, 35.575459, 18.526754>,  <41.677055, 35.024456, 18.397278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176167, 35.575459, 18.526754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040798, 35.202621, 18.475101>,  <40.959576, 34.978920, 18.444109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040798, 35.202621, 18.475101>,  <41.176167, 35.575459, 18.526754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040798, 35.202621, 18.475101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389214, 0.013710, 0.921045,
		-0.856728, 0.361962, -0.367424,
		-0.338421, -0.932092, -0.129135,
		40.939274, 34.922993, 18.436361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595684, 35.614792, 18.940142>,  <41.176167, 35.575459, 18.526754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595684, 35.614792, 18.940142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748947, 35.246441, 18.911379>,  <40.840904, 35.025429, 18.894121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748947, 35.246441, 18.911379>,  <40.595684, 35.614792, 18.940142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748947, 35.246441, 18.911379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201325, -0.159232, 0.966495,
		-0.901477, -0.355840, -0.246407,
		0.383154, -0.920882, -0.071905,
		40.863892, 34.970177, 18.889807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146976, 35.142799, 19.107069>,  <40.595684, 35.614792, 18.940142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146976, 35.142799, 19.107069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500248, 34.982670, 19.204834>,  <40.712212, 34.886593, 19.263493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500248, 34.982670, 19.204834>,  <40.146976, 35.142799, 19.107069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500248, 34.982670, 19.204834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347739, -0.209158, 0.913964,
		-0.314761, -0.892185, -0.323932,
		0.883178, -0.400324, 0.244413,
		40.765202, 34.862572, 19.278158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009930, 34.845810, 19.755461>,  <40.146976, 35.142799, 19.107069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009930, 34.845810, 19.755461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398846, 34.752308, 19.753801>,  <40.632195, 34.696205, 19.752806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398846, 34.752308, 19.753801>,  <40.009930, 34.845810, 19.755461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398846, 34.752308, 19.753801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060099, -0.267051, 0.961806,
		-0.225932, -0.934903, -0.273699,
		0.972288, -0.233752, -0.004149,
		40.690533, 34.682182, 19.752556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107441, 34.117928, 19.991238>,  <40.009930, 34.845810, 19.755461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107441, 34.117928, 19.991238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447365, 34.315842, 20.063913>,  <40.651318, 34.434589, 20.107519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447365, 34.315842, 20.063913>,  <40.107441, 34.117928, 19.991238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447365, 34.315842, 20.063913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008529, -0.357568, 0.933848,
		0.527023, -0.792042, -0.308084,
		0.849808, 0.494787, 0.181691,
		40.702309, 34.464279, 20.118420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339668, 33.759872, 20.492327>,  <40.107441, 34.117928, 19.991238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339668, 33.759872, 20.492327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 34.081131, 20.523190>,  <40.717758, 34.273888, 20.541708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575974, 34.081131, 20.523190>,  <40.339668, 33.759872, 20.492327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575974, 34.081131, 20.523190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031361, -0.118414, 0.992469,
		0.806235, -0.583895, -0.095142,
		0.590764, 0.803147, 0.077157,
		40.753204, 34.322075, 20.546337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942081, 33.654625, 20.914680>,  <40.339668, 33.759872, 20.492327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942081, 33.654625, 20.914680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884739, 34.049854, 20.937180>,  <40.850334, 34.286991, 20.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884739, 34.049854, 20.937180>,  <40.942081, 33.654625, 20.914680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884739, 34.049854, 20.937180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069687, -0.046615, 0.996479,
		0.987214, 0.146774, -0.062173,
		-0.143359, 0.988071, 0.056247,
		40.841732, 34.346275, 20.954054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278313, 33.756542, 21.516197>,  <40.942081, 33.654625, 20.914680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278313, 33.756542, 21.516197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083553, 34.100437, 21.454521>,  <40.966698, 34.306774, 21.417517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083553, 34.100437, 21.454521>,  <41.278313, 33.756542, 21.516197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083553, 34.100437, 21.454521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177702, 0.075333, 0.981197,
		0.855191, 0.505143, 0.116098,
		-0.486899, 0.859741, -0.154189,
		40.937485, 34.358360, 21.408264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479298, 34.244781, 21.936373>,  <41.278313, 33.756542, 21.516197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479298, 34.244781, 21.936373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115185, 34.382874, 21.844980>,  <40.896717, 34.465729, 21.790144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115185, 34.382874, 21.844980>,  <41.479298, 34.244781, 21.936373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115185, 34.382874, 21.844980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216210, 0.074210, 0.973522,
		0.353049, 0.935578, 0.007091,
		-0.910280, 0.345235, -0.228482,
		40.842102, 34.486443, 21.776436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447166, 34.840130, 22.334337>,  <41.479298, 34.244781, 21.936373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447166, 34.840130, 22.334337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060837, 34.784969, 22.246546>,  <40.829041, 34.751873, 22.193871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060837, 34.784969, 22.246546>,  <41.447166, 34.840130, 22.334337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060837, 34.784969, 22.246546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256203, 0.379411, 0.889049,
		-0.039328, 0.914894, -0.401774,
		-0.965823, -0.137900, -0.219477,
		40.771091, 34.743599, 22.180702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072891, 35.436047, 22.634602>,  <41.447166, 34.840130, 22.334337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072891, 35.436047, 22.634602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809883, 35.141193, 22.572256>,  <40.652077, 34.964279, 22.534849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809883, 35.141193, 22.572256>,  <41.072891, 35.436047, 22.634602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809883, 35.141193, 22.572256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463038, 0.232159, 0.855394,
		-0.594356, 0.634613, -0.493971,
		-0.657523, -0.737136, -0.155865,
		40.612625, 34.920052, 22.525497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468403, 35.751614, 22.655416>,  <41.072891, 35.436047, 22.634602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468403, 35.751614, 22.655416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373451, 35.367779, 22.715881>,  <40.316479, 35.137478, 22.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373451, 35.367779, 22.715881>,  <40.468403, 35.751614, 22.655416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373451, 35.367779, 22.715881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563371, 0.262758, 0.783307,
		-0.791368, 0.100782, -0.602976,
		-0.237380, -0.959584, 0.151161,
		40.302238, 35.079903, 22.761230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785515, 35.779114, 22.846144>,  <40.468403, 35.751614, 22.655416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785515, 35.779114, 22.846144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950592, 35.448368, 22.998972>,  <40.049637, 35.249920, 23.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950592, 35.448368, 22.998972>,  <39.785515, 35.779114, 22.846144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950592, 35.448368, 22.998972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376456, 0.227121, 0.898163,
		-0.829436, -0.514498, -0.217548,
		0.412693, -0.826866, 0.382068,
		40.074402, 35.200310, 23.113592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278683, 35.605076, 23.339842>,  <39.785515, 35.779114, 22.846144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278683, 35.605076, 23.339842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588684, 35.388081, 23.469511>,  <39.774685, 35.257885, 23.547312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588684, 35.388081, 23.469511>,  <39.278683, 35.605076, 23.339842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588684, 35.388081, 23.469511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374322, 0.019245, 0.927099,
		-0.509176, -0.839845, -0.188150,
		0.774999, -0.542485, 0.324171,
		39.821182, 35.225334, 23.566763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989319, 34.876522, 23.709503>,  <39.278683, 35.605076, 23.339842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989319, 34.876522, 23.709503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354103, 34.981358, 23.835764>,  <39.572975, 35.044258, 23.911520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354103, 34.981358, 23.835764>,  <38.989319, 34.876522, 23.709503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354103, 34.981358, 23.835764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319085, -0.030533, 0.947234,
		0.257893, -0.964562, 0.055783,
		0.911963, 0.262085, 0.315651,
		39.627693, 35.059982, 23.930460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907085, 34.671150, 24.381712>,  <38.989319, 34.876522, 23.709503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907085, 34.671150, 24.381712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262543, 34.854027, 24.396040>,  <39.475819, 34.963753, 24.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262543, 34.854027, 24.396040>,  <38.907085, 34.671150, 24.381712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262543, 34.854027, 24.396040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011465, -0.100234, 0.994898,
		0.458451, -0.883701, -0.094314,
		0.888646, 0.457193, 0.035821,
		39.529137, 34.991184, 24.406786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299511, 34.386017, 24.854572>,  <38.907085, 34.671150, 24.381712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299511, 34.386017, 24.854572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512154, 34.724445, 24.838806>,  <39.639740, 34.927502, 24.829346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512154, 34.724445, 24.838806>,  <39.299511, 34.386017, 24.854572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512154, 34.724445, 24.838806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259303, -0.118271, 0.958527,
		0.806322, -0.519781, -0.282263,
		0.531608, 0.846073, -0.039416,
		39.671635, 34.978268, 24.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939789, 34.154068, 25.090902>,  <39.299511, 34.386017, 24.854572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939789, 34.154068, 25.090902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916817, 34.548782, 25.151501>,  <39.903034, 34.785610, 25.187860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916817, 34.548782, 25.151501>,  <39.939789, 34.154068, 25.090902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916817, 34.548782, 25.151501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107026, -0.144787, 0.983658,
		0.992596, 0.072702, -0.097297,
		-0.057426, 0.986788, 0.151496,
		39.899590, 34.844818, 25.196949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511963, 34.343605, 25.628870>,  <39.939789, 34.154068, 25.090902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511963, 34.343605, 25.628870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235046, 34.631996, 25.616701>,  <40.068897, 34.805031, 25.609400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235046, 34.631996, 25.616701>,  <40.511963, 34.343605, 25.628870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235046, 34.631996, 25.616701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003753, 0.045756, 0.998946,
		0.721609, 0.691447, -0.034382,
		-0.692291, 0.720977, -0.030423,
		40.027359, 34.848289, 25.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644798, 34.851692, 26.259245>,  <40.511963, 34.343605, 25.628870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644798, 34.851692, 26.259245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277218, 34.967735, 26.152382>,  <40.056671, 35.037361, 26.088264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277218, 34.967735, 26.152382>,  <40.644798, 34.851692, 26.259245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277218, 34.967735, 26.152382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198699, 0.244568, 0.949055,
		0.340668, 0.925215, -0.167101,
		-0.918947, 0.290110, -0.267156,
		40.001534, 35.054768, 26.072235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528606, 35.527954, 26.580538>,  <40.644798, 34.851692, 26.259245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528606, 35.527954, 26.580538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167454, 35.372490, 26.507048>,  <39.950764, 35.279213, 26.462954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167454, 35.372490, 26.507048>,  <40.528606, 35.527954, 26.580538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167454, 35.372490, 26.507048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230876, 0.077869, 0.969862,
		-0.362641, 0.918084, -0.160039,
		-0.902877, -0.388661, -0.183725,
		39.896591, 35.255890, 26.451929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060795, 35.954365, 26.879242>,  <40.528606, 35.527954, 26.580538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060795, 35.954365, 26.879242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852577, 35.614544, 26.845093>,  <39.727646, 35.410652, 26.824604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852577, 35.614544, 26.845093>,  <40.060795, 35.954365, 26.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852577, 35.614544, 26.845093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393286, 0.149817, 0.907128,
		-0.757866, 0.505776, -0.412105,
		-0.520544, -0.849556, -0.085373,
		39.696415, 35.359676, 26.819481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330338, 36.012463, 27.037750>,  <40.060795, 35.954365, 26.879242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330338, 36.012463, 27.037750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401314, 35.623978, 27.101339>,  <39.443897, 35.390888, 27.139492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401314, 35.623978, 27.101339>,  <39.330338, 36.012463, 27.037750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401314, 35.623978, 27.101339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312614, 0.097545, 0.944859,
		-0.933161, -0.217349, -0.286305,
		0.177436, -0.971208, 0.158971,
		39.454544, 35.332615, 27.149031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637104, 35.717251, 27.350830>,  <39.330338, 36.012463, 27.037750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637104, 35.717251, 27.350830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917599, 35.443760, 27.431612>,  <39.085896, 35.279667, 27.480082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917599, 35.443760, 27.431612>,  <38.637104, 35.717251, 27.350830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917599, 35.443760, 27.431612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419490, -0.166662, 0.892329,
		-0.576449, -0.710453, -0.403686,
		0.701238, -0.683725, 0.201956,
		39.127972, 35.238644, 27.492199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247856, 35.116085, 27.507187>,  <38.637104, 35.717251, 27.350830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247856, 35.116085, 27.507187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614872, 35.048012, 27.650946>,  <38.835079, 35.007168, 27.737200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614872, 35.048012, 27.650946>,  <38.247856, 35.116085, 27.507187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614872, 35.048012, 27.650946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394819, -0.282197, 0.874347,
		-0.047379, -0.944141, -0.326117,
		0.917537, -0.170183, 0.359394,
		38.890133, 34.996956, 27.758764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248177, 34.414921, 27.776108>,  <38.247856, 35.116085, 27.507187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248177, 34.414921, 27.776108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528088, 34.623421, 27.971498>,  <38.696033, 34.748520, 28.088734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528088, 34.623421, 27.971498>,  <38.248177, 34.414921, 27.776108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528088, 34.623421, 27.971498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307673, -0.397206, 0.864618,
		0.644707, -0.755333, -0.117583,
		0.699779, 0.521248, 0.488477,
		38.738022, 34.779797, 28.118042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659061, 33.853714, 28.120253>,  <38.248177, 34.414921, 27.776108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659061, 33.853714, 28.120253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725548, 34.192375, 28.322462>,  <38.765442, 34.395573, 28.443789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725548, 34.192375, 28.322462>,  <38.659061, 33.853714, 28.120253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725548, 34.192375, 28.322462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283564, -0.449962, 0.846833,
		0.944438, -0.284108, 0.165287,
		0.166220, 0.846650, 0.505524,
		38.775414, 34.446369, 28.474119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751656, 33.662811, 28.799713>,  <38.659061, 33.853714, 28.120253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751656, 33.662811, 28.799713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710251, 34.057129, 28.852623>,  <38.685410, 34.293720, 28.884369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710251, 34.057129, 28.852623>,  <38.751656, 33.662811, 28.799713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710251, 34.057129, 28.852623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323833, -0.159143, 0.932633,
		0.940435, 0.053700, 0.335705,
		-0.103508, 0.985794, 0.132274,
		38.679199, 34.352867, 28.892305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236877, 33.917133, 29.353418>,  <38.751656, 33.662811, 28.799713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236877, 33.917133, 29.353418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930378, 34.171440, 29.316196>,  <38.746479, 34.324024, 29.293863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930378, 34.171440, 29.316196>,  <39.236877, 33.917133, 29.353418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930378, 34.171440, 29.316196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114416, 0.007499, 0.993405,
		0.632273, 0.771844, 0.066996,
		-0.766251, 0.635768, -0.093053,
		38.700504, 34.362171, 29.288280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134174, 34.197792, 30.007910>,  <39.236877, 33.917133, 29.353418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134174, 34.197792, 30.007910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793049, 34.361923, 29.878704>,  <38.588371, 34.460400, 29.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793049, 34.361923, 29.878704>,  <39.134174, 34.197792, 30.007910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793049, 34.361923, 29.878704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245485, 0.230939, 0.941491,
		0.460914, 0.882213, -0.096220,
		-0.852816, 0.410325, -0.323013,
		38.537205, 34.485020, 29.781799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101852, 34.814720, 30.438469>,  <39.134174, 34.197792, 30.007910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101852, 34.814720, 30.438469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744682, 34.740105, 30.274569>,  <38.530380, 34.695335, 30.176228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744682, 34.740105, 30.274569>,  <39.101852, 34.814720, 30.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744682, 34.740105, 30.274569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445761, 0.238616, 0.862763,
		-0.063162, 0.953030, -0.296215,
		-0.892921, -0.186535, -0.409752,
		38.476807, 34.684143, 30.151644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683132, 35.363522, 30.624393>,  <39.101852, 34.814720, 30.438469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683132, 35.363522, 30.624393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471676, 35.034660, 30.539907>,  <38.344803, 34.837345, 30.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471676, 35.034660, 30.539907>,  <38.683132, 35.363522, 30.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471676, 35.034660, 30.539907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506799, 0.106084, 0.855512,
		-0.680953, 0.559299, -0.472745,
		-0.528637, -0.822150, -0.211214,
		38.313084, 34.788013, 30.476543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991337, 35.547791, 30.901089>,  <38.683132, 35.363522, 30.624393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991337, 35.547791, 30.901089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040825, 35.152107, 30.869696>,  <38.070518, 34.914696, 30.850859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040825, 35.152107, 30.869696>,  <37.991337, 35.547791, 30.901089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040825, 35.152107, 30.869696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497328, -0.130252, 0.857729,
		-0.858696, -0.067084, -0.508076,
		0.123718, -0.989209, -0.078484,
		38.077942, 34.855343, 30.846151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293278, 35.274223, 31.085955>,  <37.991337, 35.547791, 30.901089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293278, 35.274223, 31.085955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593254, 35.017525, 31.150139>,  <37.773239, 34.863506, 31.188650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593254, 35.017525, 31.150139>,  <37.293278, 35.274223, 31.085955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593254, 35.017525, 31.150139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299699, -0.113374, 0.947273,
		-0.589715, -0.758492, -0.277354,
		0.749944, -0.641744, 0.160461,
		37.818237, 34.825001, 31.198277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009926, 34.807053, 31.569830>,  <37.293278, 35.274223, 31.085955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009926, 34.807053, 31.569830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398804, 34.713657, 31.576908>,  <37.632130, 34.657619, 31.581156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398804, 34.713657, 31.576908>,  <37.009926, 34.807053, 31.569830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398804, 34.713657, 31.576908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051684, -0.140257, 0.988765,
		-0.228384, -0.962191, -0.148425,
		0.972198, -0.233490, 0.017697,
		37.690464, 34.643612, 31.582218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044014, 34.132381, 31.848076>,  <37.009926, 34.807053, 31.569830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044014, 34.132381, 31.848076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404144, 34.295994, 31.907549>,  <37.620224, 34.394161, 31.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404144, 34.295994, 31.907549>,  <37.044014, 34.132381, 31.848076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404144, 34.295994, 31.907549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092090, -0.154849, 0.983637,
		0.425362, -0.899286, -0.101747,
		0.900326, 0.409032, 0.148682,
		37.674240, 34.418705, 31.952154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368526, 33.723385, 32.365818>,  <37.044014, 34.132381, 31.848076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368526, 33.723385, 32.365818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564106, 34.072155, 32.376175>,  <37.681454, 34.281418, 32.382389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564106, 34.072155, 32.376175>,  <37.368526, 33.723385, 32.365818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564106, 34.072155, 32.376175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136008, 0.046879, 0.989598,
		0.861646, -0.487382, 0.141511,
		0.488946, 0.871929, 0.025895,
		37.710789, 34.333733, 32.383942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027737, 33.629120, 32.758095>,  <37.368526, 33.723385, 32.365818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027737, 33.629120, 32.758095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931892, 34.016247, 32.788837>,  <37.874386, 34.248524, 32.807281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931892, 34.016247, 32.788837>,  <38.027737, 33.629120, 32.758095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931892, 34.016247, 32.788837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093509, -0.101800, 0.990400,
		0.966354, 0.230128, 0.114893,
		-0.239615, 0.967821, 0.076856,
		37.860008, 34.306595, 32.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245892, 33.867420, 33.482719>,  <38.027737, 33.629120, 32.758095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245892, 33.867420, 33.482719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016602, 34.161758, 33.338528>,  <37.879028, 34.338360, 33.252010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016602, 34.161758, 33.338528>,  <38.245892, 33.867420, 33.482719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016602, 34.161758, 33.338528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398507, 0.134048, 0.907316,
		0.715965, 0.663751, 0.216400,
		-0.573224, 0.735844, -0.360483,
		37.844635, 34.382511, 33.230381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488796, 34.547508, 33.674389>,  <38.245892, 33.867420, 33.482719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488796, 34.547508, 33.674389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093807, 34.537796, 33.612019>,  <37.856815, 34.531967, 33.574596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093807, 34.537796, 33.612019>,  <38.488796, 34.547508, 33.674389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093807, 34.537796, 33.612019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157639, 0.106544, 0.981732,
		-0.007228, 0.994011, -0.109038,
		-0.987470, -0.024284, -0.155924,
		37.797565, 34.530510, 33.565243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085083, 35.052551, 33.447697>,  <38.488796, 34.547508, 33.674389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085083, 35.052551, 33.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446308, 35.210640, 33.514957>,  <39.663044, 35.305492, 33.555313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446308, 35.210640, 33.514957>,  <39.085083, 35.052551, 33.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446308, 35.210640, 33.514957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173215, 0.023123, -0.984613,
		-0.393030, 0.918294, -0.047577,
		0.903064, 0.395223, 0.168151,
		39.717228, 35.329208, 33.565403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102890, 35.649311, 33.138123>,  <39.085083, 35.052551, 33.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102890, 35.649311, 33.138123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489151, 35.549992, 33.168762>,  <39.720909, 35.490402, 33.187145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489151, 35.549992, 33.168762>,  <39.102890, 35.649311, 33.138123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489151, 35.549992, 33.168762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082785, 0.014535, -0.996461,
		0.246302, 0.968576, 0.034591,
		0.965651, -0.248294, 0.076603,
		39.778847, 35.475502, 33.191742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518982, 36.113010, 32.706924>,  <39.102890, 35.649311, 33.138123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518982, 36.113010, 32.706924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768570, 35.809013, 32.779667>,  <39.918324, 35.626614, 32.823315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768570, 35.809013, 32.779667>,  <39.518982, 36.113010, 32.706924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768570, 35.809013, 32.779667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285476, 0.005053, -0.958373,
		0.727439, 0.649910, 0.220113,
		0.623968, -0.759995, 0.181858,
		39.955761, 35.581017, 32.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273808, 36.315609, 32.523914>,  <39.518982, 36.113010, 32.706924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273808, 36.315609, 32.523914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265839, 35.916161, 32.504498>,  <40.261059, 35.676491, 32.492847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265839, 35.916161, 32.504498>,  <40.273808, 36.315609, 32.523914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265839, 35.916161, 32.504498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416026, 0.035874, -0.908645,
		0.909134, -0.038296, 0.414739,
		-0.019919, -0.998622, -0.048546,
		40.259865, 35.616573, 32.489933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966793, 36.217915, 32.214485>,  <40.273808, 36.315609, 32.523914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966793, 36.217915, 32.214485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760597, 35.875431, 32.200752>,  <40.636879, 35.669941, 32.192513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760597, 35.875431, 32.200752>,  <40.966793, 36.217915, 32.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760597, 35.875431, 32.200752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333974, -0.163852, -0.928231,
		0.789133, -0.489960, 0.370415,
		-0.515490, -0.856208, -0.034333,
		40.605949, 35.618568, 32.190453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414371, 35.539364, 32.107056>,  <40.966793, 36.217915, 32.214485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414371, 35.539364, 32.107056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040695, 35.488159, 31.973850>,  <40.816490, 35.457436, 31.893929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040695, 35.488159, 31.973850>,  <41.414371, 35.539364, 32.107056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040695, 35.488159, 31.973850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356603, -0.306835, -0.882432,
		0.010779, -0.943115, 0.332291,
		-0.934194, -0.128008, -0.333010,
		40.760437, 35.449757, 31.873947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538094, 35.006947, 31.770124>,  <41.414371, 35.539364, 32.107056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538094, 35.006947, 31.770124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178276, 35.135479, 31.651754>,  <40.962387, 35.212601, 31.580732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178276, 35.135479, 31.651754>,  <41.538094, 35.006947, 31.770124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178276, 35.135479, 31.651754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174344, -0.357053, -0.917670,
		-0.400543, -0.877072, 0.265159,
		-0.899538, 0.321337, -0.295927,
		40.908413, 35.231880, 31.562977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340511, 34.538990, 31.279026>,  <41.538094, 35.006947, 31.770124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340511, 34.538990, 31.279026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 34.829163, 31.187292>,  <40.925171, 35.003265, 31.132252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 34.829163, 31.187292>,  <41.340511, 34.538990, 31.279026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080925, 34.829163, 31.187292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112044, -0.207020, -0.971900,
		-0.752520, -0.656427, 0.053070,
		-0.648968, 0.725428, -0.229336,
		40.886234, 35.046791, 31.118492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091427, 34.300339, 30.693001>,  <41.340511, 34.538990, 31.279026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091427, 34.300339, 30.693001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017685, 34.693478, 30.691324>,  <40.973438, 34.929363, 30.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017685, 34.693478, 30.691324>,  <41.091427, 34.300339, 30.693001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017685, 34.693478, 30.691324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158695, 0.025560, -0.986997,
		-0.969963, -0.182625, -0.160686,
		-0.184357, 0.982850, -0.004189,
		40.962379, 34.988335, 30.690067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681690, 34.307003, 30.132591>,  <41.091427, 34.300339, 30.693001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681690, 34.307003, 30.132591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823017, 34.677326, 30.186338>,  <40.907814, 34.899521, 30.218588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823017, 34.677326, 30.186338>,  <40.681690, 34.307003, 30.132591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823017, 34.677326, 30.186338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233296, 0.051898, -0.971020,
		-0.905947, 0.374425, -0.197650,
		0.353317, 0.925804, 0.134369,
		40.929012, 34.955067, 30.226648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538746, 34.714180, 29.456696>,  <40.681690, 34.307003, 30.132591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538746, 34.714180, 29.456696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819805, 34.937576, 29.633045>,  <40.988441, 35.071613, 29.738855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819805, 34.937576, 29.633045>,  <40.538746, 34.714180, 29.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819805, 34.937576, 29.633045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438460, 0.148134, -0.886459,
		-0.560390, 0.816174, -0.140791,
		0.702649, 0.558494, 0.440873,
		41.030602, 35.105125, 29.765306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640507, 35.288883, 28.968113>,  <40.538746, 34.714180, 29.456696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640507, 35.288883, 28.968113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958672, 35.333378, 29.206423>,  <41.149570, 35.360073, 29.349409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958672, 35.333378, 29.206423>,  <40.640507, 35.288883, 28.968113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958672, 35.333378, 29.206423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510895, 0.405774, -0.757848,
		-0.326047, 0.907179, 0.265930,
		0.795412, 0.111232, 0.595775,
		41.197296, 35.366749, 29.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839527, 36.010139, 28.980247>,  <40.640507, 35.288883, 28.968113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839527, 36.010139, 28.980247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165916, 35.784946, 29.032763>,  <41.361752, 35.649830, 29.064272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165916, 35.784946, 29.032763>,  <40.839527, 36.010139, 28.980247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165916, 35.784946, 29.032763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484574, 0.542263, -0.686395,
		0.315237, 0.623699, 0.715280,
		0.815974, -0.562983, 0.131288,
		41.410709, 35.616051, 29.072149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264462, 36.567753, 29.012707>,  <40.839527, 36.010139, 28.980247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264462, 36.567753, 29.012707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 36.230927, 28.953989>,  <41.596634, 36.028831, 28.918758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 36.230927, 28.953989>,  <41.264462, 36.567753, 29.012707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472069, 36.230927, 28.953989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310369, 0.345674, -0.885540,
		0.796423, 0.414053, 0.440762,
		0.519020, -0.842063, -0.146794,
		41.627773, 35.978306, 28.909950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843597, 36.763058, 28.718071>,  <41.264462, 36.567753, 29.012707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843597, 36.763058, 28.718071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836514, 36.380413, 28.601740>,  <41.832264, 36.150826, 28.531940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836514, 36.380413, 28.601740>,  <41.843597, 36.763058, 28.718071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836514, 36.380413, 28.601740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304625, 0.271884, -0.912843,
		0.952308, -0.104759, 0.286593,
		-0.017708, -0.956611, -0.290830,
		41.831200, 36.093430, 28.514490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316956, 36.818245, 28.105669>,  <41.843597, 36.763058, 28.718071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316956, 36.818245, 28.105669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113464, 36.476013, 28.067322>,  <41.991371, 36.270676, 28.044313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113464, 36.476013, 28.067322>,  <42.316956, 36.818245, 28.105669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113464, 36.476013, 28.067322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201402, -0.010006, -0.979457,
		0.837040, -0.517582, 0.177404,
		-0.508725, -0.855575, -0.095866,
		41.960846, 36.219341, 28.038563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735825, 36.363483, 27.620188>,  <42.316956, 36.818245, 28.105669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735825, 36.363483, 27.620188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353867, 36.244854, 27.614378>,  <42.124691, 36.173676, 27.610891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353867, 36.244854, 27.614378>,  <42.735825, 36.363483, 27.620188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353867, 36.244854, 27.614378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106338, -0.295891, -0.949284,
		0.277235, -0.908016, 0.314083,
		-0.954900, -0.296574, -0.014525,
		42.067398, 36.155880, 27.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766300, 35.814182, 27.149067>,  <42.735825, 36.363483, 27.620188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766300, 35.814182, 27.149067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369442, 35.854252, 27.179045>,  <42.131329, 35.878296, 27.197031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369442, 35.854252, 27.179045>,  <42.766300, 35.814182, 27.149067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369442, 35.854252, 27.179045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087814, -0.130919, -0.987496,
		-0.089108, -0.986319, 0.138687,
		-0.992143, 0.100173, 0.074946,
		42.071800, 35.884304, 27.201529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392986, 35.183998, 26.926374>,  <42.766300, 35.814182, 27.149067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392986, 35.183998, 26.926374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143940, 35.492298, 26.872271>,  <41.994514, 35.677280, 26.839808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143940, 35.492298, 26.872271>,  <42.392986, 35.183998, 26.926374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143940, 35.492298, 26.872271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037704, -0.143102, -0.988990,
		-0.781622, -0.620856, 0.060036,
		-0.622611, 0.770753, -0.135260,
		41.957157, 35.723522, 26.831692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893818, 34.965672, 26.488916>,  <42.392986, 35.183998, 26.926374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893818, 34.965672, 26.488916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897152, 35.364872, 26.463846>,  <41.899151, 35.604393, 26.448805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897152, 35.364872, 26.463846>,  <41.893818, 34.965672, 26.488916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897152, 35.364872, 26.463846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093821, -0.061619, -0.993680,
		-0.995554, 0.014163, 0.093120,
		0.008336, 0.997999, -0.062674,
		41.899654, 35.664272, 26.445044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422874, 35.082527, 25.938435>,  <41.893818, 34.965672, 26.488916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422874, 35.082527, 25.938435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606346, 35.437244, 25.961109>,  <41.716427, 35.650074, 25.974714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606346, 35.437244, 25.961109>,  <41.422874, 35.082527, 25.938435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606346, 35.437244, 25.961109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016949, 0.055052, -0.998340,
		-0.888443, 0.458874, 0.010220,
		0.458675, 0.886794, 0.056688,
		41.743950, 35.703281, 25.978115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989918, 35.617737, 25.491053>,  <41.422874, 35.082527, 25.938435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989918, 35.617737, 25.491053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365528, 35.748451, 25.533829>,  <41.590897, 35.826881, 25.559494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365528, 35.748451, 25.533829>,  <40.989918, 35.617737, 25.491053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365528, 35.748451, 25.533829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091708, 0.061716, -0.993872,
		-0.331386, 0.943080, 0.027984,
		0.939028, 0.326788, 0.106940,
		41.647236, 35.846489, 25.565910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057755, 36.058270, 24.967266>,  <40.989918, 35.617737, 25.491053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057755, 36.058270, 24.967266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434361, 36.020432, 25.096638>,  <41.660324, 35.997730, 25.174261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434361, 36.020432, 25.096638>,  <41.057755, 36.058270, 24.967266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434361, 36.020432, 25.096638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309773, -0.134848, -0.941200,
		0.132643, 0.986341, -0.097659,
		0.941513, -0.094592, 0.323429,
		41.716816, 35.992054, 25.193666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497700, 36.504665, 24.629154>,  <41.057755, 36.058270, 24.967266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497700, 36.504665, 24.629154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707230, 36.185177, 24.747580>,  <41.832947, 35.993484, 24.818634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707230, 36.185177, 24.747580>,  <41.497700, 36.504665, 24.629154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707230, 36.185177, 24.747580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028857, -0.330722, -0.943287,
		0.851337, 0.502661, -0.150191,
		0.523825, -0.798721, 0.296061,
		41.864376, 35.945560, 24.836397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227974, 36.528297, 24.324141>,  <41.497700, 36.504665, 24.629154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227974, 36.528297, 24.324141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164326, 36.145359, 24.420616>,  <42.126137, 35.915596, 24.478502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164326, 36.145359, 24.420616>,  <42.227974, 36.528297, 24.324141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164326, 36.145359, 24.420616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322481, -0.281304, -0.903811,
		0.933105, -0.066039, 0.353487,
		-0.159124, -0.957344, 0.241190,
		42.116589, 35.858154, 24.492973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688705, 36.147820, 23.977619>,  <42.227974, 36.528297, 24.324141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688705, 36.147820, 23.977619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486427, 35.827606, 24.106256>,  <42.365059, 35.635479, 24.183439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486427, 35.827606, 24.106256>,  <42.688705, 36.147820, 23.977619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486427, 35.827606, 24.106256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422214, -0.554727, -0.716947,
		0.752335, -0.226774, 0.618518,
		-0.505694, -0.800532, 0.321594,
		42.334721, 35.587448, 24.202734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165230, 35.664299, 24.127144>,  <42.688705, 36.147820, 23.977619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165230, 35.664299, 24.127144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836224, 35.446453, 24.061583>,  <42.638821, 35.315746, 24.022245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836224, 35.446453, 24.061583>,  <43.165230, 35.664299, 24.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836224, 35.446453, 24.061583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496564, -0.547152, -0.673831,
		0.277300, -0.635624, 0.720477,
		-0.822514, -0.544616, -0.163902,
		42.589470, 35.283070, 24.012411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274162, 34.977440, 24.324350>,  <43.165230, 35.664299, 24.127144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274162, 34.977440, 24.324350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989021, 34.958294, 24.044479>,  <42.817936, 34.946808, 23.876556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989021, 34.958294, 24.044479>,  <43.274162, 34.977440, 24.324350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989021, 34.958294, 24.044479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614107, -0.524415, -0.589798,
		-0.338691, -0.850116, 0.403226,
		-0.712854, -0.047864, -0.699677,
		42.775166, 34.943935, 23.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256927, 34.344490, 24.036390>,  <43.274162, 34.977440, 24.324350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256927, 34.344490, 24.036390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048962, 34.534496, 23.752403>,  <42.924183, 34.648499, 23.582010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048962, 34.534496, 23.752403>,  <43.256927, 34.344490, 24.036390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048962, 34.534496, 23.752403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460407, -0.544251, -0.701296,
		-0.719527, -0.691485, 0.064261,
		-0.519910, 0.475015, -0.709968,
		42.892990, 34.677002, 23.539413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014561, 33.837166, 23.517561>,  <43.256927, 34.344490, 24.036390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014561, 33.837166, 23.517561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020432, 34.185585, 23.321169>,  <43.023952, 34.394638, 23.203335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020432, 34.185585, 23.321169>,  <43.014561, 33.837166, 23.517561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020432, 34.185585, 23.321169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441878, -0.446130, -0.778275,
		-0.896955, -0.205532, -0.391444,
		0.014674, 0.871048, -0.490979,
		43.024834, 34.446899, 23.173876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656559, 33.718533, 22.902908>,  <43.014561, 33.837166, 23.517561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656559, 33.718533, 22.902908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911850, 34.020672, 22.843418>,  <43.065025, 34.201954, 22.807724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911850, 34.020672, 22.843418>,  <42.656559, 33.718533, 22.902908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911850, 34.020672, 22.843418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373761, -0.472908, -0.797910,
		-0.673033, 0.453658, -0.584141,
		0.638223, 0.755349, -0.148723,
		43.103317, 34.247276, 22.798801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514408, 33.990852, 22.295399>,  <42.656559, 33.718533, 22.902908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514408, 33.990852, 22.295399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902309, 34.076813, 22.341686>,  <43.135052, 34.128387, 22.369459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902309, 34.076813, 22.341686>,  <42.514408, 33.990852, 22.295399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902309, 34.076813, 22.341686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174299, -0.277858, -0.944677,
		-0.170855, 0.936277, -0.306911,
		0.969757, 0.214897, 0.115719,
		43.193237, 34.141281, 22.376402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710014, 33.971176, 21.629566>,  <42.514408, 33.990852, 22.295399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710014, 33.971176, 21.629566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060932, 34.029213, 21.812563>,  <43.271484, 34.064034, 21.922361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060932, 34.029213, 21.812563>,  <42.710014, 33.971176, 21.629566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060932, 34.029213, 21.812563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472120, -0.432359, -0.768224,
		0.086341, 0.889952, -0.447807,
		0.877296, 0.145090, 0.457494,
		43.324120, 34.072739, 21.949812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196968, 34.304512, 21.107195>,  <42.710014, 33.971176, 21.629566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196968, 34.304512, 21.107195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428829, 34.129871, 21.382406>,  <43.567947, 34.025085, 21.547533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428829, 34.129871, 21.382406>,  <43.196968, 34.304512, 21.107195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428829, 34.129871, 21.382406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487211, -0.491104, -0.722110,
		0.653167, 0.753788, -0.071954,
		0.579654, -0.436601, 0.688027,
		43.602726, 33.998890, 21.588814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791512, 34.345211, 20.794331>,  <43.196968, 34.304512, 21.107195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791512, 34.345211, 20.794331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835964, 34.091976, 21.100756>,  <43.862637, 33.940037, 21.284611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835964, 34.091976, 21.100756>,  <43.791512, 34.345211, 20.794331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835964, 34.091976, 21.100756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694088, -0.502239, -0.515751,
		0.711260, 0.589032, 0.383601,
		0.111134, -0.633086, 0.766062,
		43.869305, 33.902050, 21.330574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492928, 34.409981, 20.903761>,  <43.791512, 34.345211, 20.794331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492928, 34.409981, 20.903761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332329, 34.057373, 21.003136>,  <44.235970, 33.845806, 21.062761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332329, 34.057373, 21.003136>,  <44.492928, 34.409981, 20.903761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332329, 34.057373, 21.003136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648941, -0.465232, -0.602026,
		0.646280, -0.080490, 0.758844,
		-0.401495, -0.881522, 0.248437,
		44.211880, 33.792915, 21.077667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992050, 33.936348, 20.810436>,  <44.492928, 34.409981, 20.903761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992050, 33.936348, 20.810436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678185, 33.688503, 20.818235>,  <44.489864, 33.539795, 20.822914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678185, 33.688503, 20.818235>,  <44.992050, 33.936348, 20.810436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678185, 33.688503, 20.818235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518926, -0.673714, -0.526142,
		0.339140, -0.402727, 0.850174,
		-0.784666, -0.619613, 0.019498,
		44.442783, 33.502621, 20.824085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300621, 33.196316, 21.064341>,  <44.992050, 33.936348, 20.810436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300621, 33.196316, 21.064341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942142, 33.146667, 20.893965>,  <44.727055, 33.116879, 20.791739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942142, 33.146667, 20.893965>,  <45.300621, 33.196316, 21.064341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942142, 33.146667, 20.893965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320156, -0.845567, -0.427220,
		-0.307135, -0.519241, 0.797532,
		-0.896197, -0.124120, -0.425941,
		44.673283, 33.109432, 20.766182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429253, 32.493240, 20.739388>,  <45.300621, 33.196316, 21.064341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429253, 32.493240, 20.739388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800858, 32.394077, 20.849283>,  <46.023819, 32.334579, 20.915220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800858, 32.394077, 20.849283>,  <45.429253, 32.493240, 20.739388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800858, 32.394077, 20.849283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122683, 0.494109, 0.860700,
		-0.349130, -0.833304, 0.428617,
		0.929009, -0.247912, 0.274740,
		46.079559, 32.319702, 20.931705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368229, 32.173065, 21.401886>,  <45.429253, 32.493240, 20.739388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368229, 32.173065, 21.401886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737923, 32.325447, 21.391550>,  <45.959740, 32.416878, 21.385349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737923, 32.325447, 21.391550>,  <45.368229, 32.173065, 21.401886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737923, 32.325447, 21.391550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194575, 0.528120, 0.826577,
		0.328534, -0.758922, 0.562230,
		0.924232, 0.380954, -0.025838,
		46.015194, 32.439735, 21.383799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564980, 32.137344, 22.176134>,  <45.368229, 32.173065, 21.401886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564980, 32.137344, 22.176134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800240, 32.390251, 21.974415>,  <45.941395, 32.541996, 21.853384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800240, 32.390251, 21.974415>,  <45.564980, 32.137344, 22.176134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800240, 32.390251, 21.974415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165971, 0.515918, 0.840406,
		0.791540, -0.577982, 0.198498,
		0.588148, 0.632270, -0.504298,
		45.976685, 32.579933, 21.823126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994141, 32.322395, 22.679815>,  <45.564980, 32.137344, 22.176134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994141, 32.322395, 22.679815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121941, 32.591892, 22.413284>,  <46.198620, 32.753590, 22.253365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121941, 32.591892, 22.413284>,  <45.994141, 32.322395, 22.679815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121941, 32.591892, 22.413284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220080, 0.631198, 0.743744,
		0.921676, -0.384270, 0.053389,
		0.319497, 0.673741, -0.666330,
		46.217789, 32.794014, 22.213385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648338, 32.513988, 22.900295>,  <45.994141, 32.322395, 22.679815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648338, 32.513988, 22.900295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487263, 32.808483, 22.682745>,  <46.390617, 32.985180, 22.552214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487263, 32.808483, 22.682745>,  <46.648338, 32.513988, 22.900295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487263, 32.808483, 22.682745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092945, 0.624000, 0.775877,
		0.910605, 0.261887, -0.319708,
		-0.402690, 0.736233, -0.543877,
		46.366455, 33.029354, 22.519581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036118, 33.140869, 23.106998>,  <46.648338, 32.513988, 22.900295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036118, 33.140869, 23.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692375, 33.276497, 22.953873>,  <46.486130, 33.357872, 22.861998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692375, 33.276497, 22.953873>,  <47.036118, 33.140869, 23.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692375, 33.276497, 22.953873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138365, 0.566494, 0.812366,
		0.492309, 0.751077, -0.439903,
		-0.859353, 0.339068, -0.382813,
		46.434570, 33.378216, 22.839029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139126, 33.854698, 23.118122>,  <47.036118, 33.140869, 23.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139126, 33.854698, 23.118122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742939, 33.805759, 23.092819>,  <46.505226, 33.776398, 23.077637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742939, 33.805759, 23.092819>,  <47.139126, 33.854698, 23.118122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742939, 33.805759, 23.092819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133747, 0.744695, 0.653866,
		-0.032891, 0.656095, -0.753962,
		-0.990469, -0.122347, -0.063257,
		46.445797, 33.769054, 23.073843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869484, 34.541183, 22.980928>,  <47.139126, 33.854698, 23.118122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869484, 34.541183, 22.980928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572609, 34.317017, 23.127945>,  <46.394482, 34.182518, 23.216154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572609, 34.317017, 23.127945>,  <46.869484, 34.541183, 22.980928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572609, 34.317017, 23.127945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155662, 0.677568, 0.718798,
		-0.651860, 0.476274, -0.590121,
		-0.742192, -0.560414, 0.367542,
		46.349953, 34.148891, 23.238207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402809, 34.998394, 23.096474>,  <46.869484, 34.541183, 22.980928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402809, 34.998394, 23.096474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268517, 34.688549, 23.310860>,  <46.187943, 34.502644, 23.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268517, 34.688549, 23.310860>,  <46.402809, 34.998394, 23.096474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268517, 34.688549, 23.310860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284857, 0.625843, 0.726070,
		-0.897853, 0.091090, -0.430769,
		-0.335731, -0.774612, 0.535967,
		46.167797, 34.456165, 23.471649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704430, 35.202164, 23.383694>,  <46.402809, 34.998394, 23.096474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704430, 35.202164, 23.383694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887463, 34.923382, 23.604555>,  <45.997284, 34.756115, 23.737072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887463, 34.923382, 23.604555>,  <45.704430, 35.202164, 23.383694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887463, 34.923382, 23.604555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330175, 0.443392, 0.833299,
		-0.825590, -0.563613, -0.027226,
		0.457586, -0.696953, 0.552151,
		46.024738, 34.714294, 23.770201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276573, 35.100662, 23.935383>,  <45.704430, 35.202164, 23.383694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276573, 35.100662, 23.935383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605423, 34.930237, 24.086426>,  <45.802731, 34.827984, 24.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605423, 34.930237, 24.086426>,  <45.276573, 35.100662, 23.935383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605423, 34.930237, 24.086426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223480, 0.368516, 0.902359,
		-0.523616, -0.826237, 0.207749,
		0.822121, -0.426062, 0.377608,
		45.852058, 34.802418, 24.199709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057533, 34.821613, 24.513809>,  <45.276573, 35.100662, 23.935383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057533, 34.821613, 24.513809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451767, 34.873867, 24.556797>,  <45.688309, 34.905220, 24.582590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451767, 34.873867, 24.556797>,  <45.057533, 34.821613, 24.513809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451767, 34.873867, 24.556797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159382, 0.504284, 0.848702,
		0.056671, -0.853600, 0.517837,
		0.985589, 0.130630, 0.107470,
		45.747444, 34.913055, 24.589039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240337, 34.485470, 25.119289>,  <45.057533, 34.821613, 24.513809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240337, 34.485470, 25.119289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447601, 34.814301, 25.024883>,  <45.571960, 35.011600, 24.968241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447601, 34.814301, 25.024883>,  <45.240337, 34.485470, 25.119289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447601, 34.814301, 25.024883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168696, 0.368759, 0.914089,
		0.838485, -0.433825, 0.329756,
		0.518155, 0.822078, -0.236015,
		45.603046, 35.060925, 24.954079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870281, 34.578690, 25.521856>,  <45.240337, 34.485470, 25.119289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870281, 34.578690, 25.521856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712521, 34.925934, 25.401299>,  <45.617863, 35.134281, 25.328964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712521, 34.925934, 25.401299>,  <45.870281, 34.578690, 25.521856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712521, 34.925934, 25.401299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195644, 0.241139, 0.950566,
		0.897871, 0.433870, 0.074735,
		-0.394400, 0.868107, -0.301396,
		45.594200, 35.186367, 25.310881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060223, 34.939434, 26.086798>,  <45.870281, 34.578690, 25.521856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.060223, 34.939434, 26.086798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801228, 35.166462, 25.883377>,  <45.645828, 35.302677, 25.761324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801228, 35.166462, 25.883377>,  <46.060223, 34.939434, 26.086798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801228, 35.166462, 25.883377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281173, 0.442323, 0.851641,
		0.708306, 0.694421, -0.126817,
		-0.647491, 0.567565, -0.508552,
		45.606979, 35.336731, 25.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025269, 35.549931, 26.456457>,  <46.060223, 34.939434, 26.086798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025269, 35.549931, 26.456457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690777, 35.583092, 26.239630>,  <45.490082, 35.602989, 26.109533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690777, 35.583092, 26.239630>,  <46.025269, 35.549931, 26.456457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690777, 35.583092, 26.239630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441036, 0.485765, 0.754666,
		0.325885, 0.870149, -0.369648,
		-0.836234, 0.082906, -0.542070,
		45.439907, 35.607964, 26.077009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885712, 36.254131, 26.531649>,  <46.025269, 35.549931, 26.456457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885712, 36.254131, 26.531649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548668, 36.066666, 26.425539>,  <45.346443, 35.954185, 26.361874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548668, 36.066666, 26.425539>,  <45.885712, 36.254131, 26.531649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548668, 36.066666, 26.425539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413929, 0.248519, 0.875729,
		-0.344498, 0.847698, -0.403397,
		-0.842606, -0.468665, -0.265273,
		45.295887, 35.926067, 26.345957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261040, 36.730927, 26.704529>,  <45.885712, 36.254131, 26.531649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261040, 36.730927, 26.704529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117359, 36.358147, 26.684729>,  <45.031151, 36.134480, 26.672848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117359, 36.358147, 26.684729>,  <45.261040, 36.730927, 26.704529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117359, 36.358147, 26.684729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416915, 0.112785, 0.901921,
		-0.834960, 0.344608, -0.429055,
		-0.359200, -0.931947, -0.049502,
		45.009598, 36.078564, 26.669878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582989, 36.717827, 27.117043>,  <45.261040, 36.730927, 26.704529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582989, 36.717827, 27.117043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695374, 36.333961, 27.112890>,  <44.762806, 36.103642, 27.110399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695374, 36.333961, 27.112890>,  <44.582989, 36.717827, 27.117043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695374, 36.333961, 27.112890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436477, -0.137407, 0.889161,
		-0.854720, -0.245294, -0.457477,
		0.280966, -0.959662, -0.010379,
		44.779663, 36.046062, 27.109777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033207, 36.390526, 27.456060>,  <44.582989, 36.717827, 27.117043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033207, 36.390526, 27.456060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321609, 36.113499, 27.447069>,  <44.494652, 35.947281, 27.441675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321609, 36.113499, 27.447069>,  <44.033207, 36.390526, 27.456060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321609, 36.113499, 27.447069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269638, -0.310294, 0.911599,
		-0.638320, -0.651203, -0.410465,
		0.721001, -0.692569, -0.022478,
		44.537910, 35.905727, 27.440327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716362, 35.809315, 27.440378>,  <44.033207, 36.390526, 27.456060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716362, 35.809315, 27.440378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084499, 35.763077, 27.589838>,  <44.305382, 35.735336, 27.679514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084499, 35.763077, 27.589838>,  <43.716362, 35.809315, 27.440378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084499, 35.763077, 27.589838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390621, -0.319880, 0.863187,
		0.019748, -0.940381, -0.339550,
		0.920340, -0.115589, 0.373650,
		44.360600, 35.728401, 27.701933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760143, 35.147808, 27.683504>,  <43.716362, 35.809315, 27.440378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760143, 35.147808, 27.683504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042503, 35.327541, 27.902523>,  <44.211918, 35.435379, 28.033936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042503, 35.327541, 27.902523>,  <43.760143, 35.147808, 27.683504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042503, 35.327541, 27.902523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474284, -0.274305, 0.836547,
		0.526080, -0.850212, 0.019478,
		0.705900, 0.449329, 0.547549,
		44.254272, 35.462341, 28.066788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800167, 34.751820, 28.340240>,  <43.760143, 35.147808, 27.683504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800167, 34.751820, 28.340240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996071, 35.082668, 28.450508>,  <44.113613, 35.281178, 28.516668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996071, 35.082668, 28.450508>,  <43.800167, 34.751820, 28.340240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996071, 35.082668, 28.450508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320476, -0.123260, 0.939203,
		0.810818, -0.548333, 0.204706,
		0.489764, 0.827126, 0.275669,
		44.143002, 35.330807, 28.533209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079693, 34.618523, 29.028204>,  <43.800167, 34.751820, 28.340240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079693, 34.618523, 29.028204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112694, 35.015858, 28.996023>,  <44.132496, 35.254257, 28.976715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112694, 35.015858, 28.996023>,  <44.079693, 34.618523, 29.028204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112694, 35.015858, 28.996023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292566, 0.101313, 0.950863,
		0.952679, -0.054911, 0.298976,
		0.082503, 0.993338, -0.080454,
		44.137444, 35.313858, 28.971888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578678, 34.729790, 29.404257>,  <44.079693, 34.618523, 29.028204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578678, 34.729790, 29.404257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364059, 35.066334, 29.378239>,  <44.235291, 35.268261, 29.362627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364059, 35.066334, 29.378239>,  <44.578678, 34.729790, 29.404257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364059, 35.066334, 29.378239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131171, -0.007009, 0.991335,
		0.833615, 0.540428, 0.114123,
		-0.536545, 0.841361, -0.065045,
		44.203094, 35.318741, 29.358725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788300, 35.238762, 29.986282>,  <44.578678, 34.729790, 29.404257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788300, 35.238762, 29.986282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422314, 35.357403, 29.876831>,  <44.202724, 35.428589, 29.811159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422314, 35.357403, 29.876831>,  <44.788300, 35.238762, 29.986282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422314, 35.357403, 29.876831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275851, 0.035211, 0.960555,
		0.294540, 0.954351, 0.049603,
		-0.914960, 0.296605, -0.273630,
		44.147827, 35.446384, 29.794743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565552, 35.832672, 30.378841>,  <44.788300, 35.238762, 29.986282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565552, 35.832672, 30.378841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216511, 35.671902, 30.267828>,  <44.007088, 35.575439, 30.201220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216511, 35.671902, 30.267828>,  <44.565552, 35.832672, 30.378841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216511, 35.671902, 30.267828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304751, 0.003970, 0.952424,
		-0.381704, 0.915662, -0.125952,
		-0.872599, -0.401928, -0.277533,
		43.954731, 35.551323, 30.184568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195602, 36.136650, 30.859652>,  <44.565552, 35.832672, 30.378841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195602, 36.136650, 30.859652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953117, 35.855392, 30.711008>,  <43.807625, 35.686638, 30.621822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953117, 35.855392, 30.711008>,  <44.195602, 36.136650, 30.859652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953117, 35.855392, 30.711008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270071, -0.257483, 0.927774,
		-0.748042, 0.662789, -0.033809,
		-0.606213, -0.703145, -0.371608,
		43.771252, 35.644447, 30.599525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534657, 36.268227, 31.113356>,  <44.195602, 36.136650, 30.859652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534657, 36.268227, 31.113356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565304, 35.878780, 31.027386>,  <43.583694, 35.645111, 30.975803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565304, 35.878780, 31.027386>,  <43.534657, 36.268227, 31.113356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565304, 35.878780, 31.027386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286883, -0.227971, 0.930445,
		-0.954897, -0.009635, -0.296783,
		0.076623, -0.973620, -0.214925,
		43.588291, 35.586693, 30.962908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994492, 35.927986, 31.470886>,  <43.534657, 36.268227, 31.113356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994492, 35.927986, 31.470886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253616, 35.627506, 31.420214>,  <43.409092, 35.447220, 31.389811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253616, 35.627506, 31.420214>,  <42.994492, 35.927986, 31.470886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253616, 35.627506, 31.420214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386247, -0.467210, 0.795316,
		-0.656627, -0.466280, -0.592810,
		0.647807, -0.751197, -0.126684,
		43.447960, 35.402145, 31.382210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645130, 35.342663, 31.675247>,  <42.994492, 35.927986, 31.470886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645130, 35.342663, 31.675247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027004, 35.223782, 31.669044>,  <43.256130, 35.152454, 31.665323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027004, 35.223782, 31.669044>,  <42.645130, 35.342663, 31.675247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027004, 35.223782, 31.669044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131733, -0.468735, 0.873461,
		-0.266860, -0.831841, -0.486648,
		0.954690, -0.297199, -0.015505,
		43.313412, 35.134621, 31.664392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626125, 34.603218, 31.849884>,  <42.645130, 35.342663, 31.675247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626125, 34.603218, 31.849884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978230, 34.756027, 31.962454>,  <43.189491, 34.847713, 32.029995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978230, 34.756027, 31.962454>,  <42.626125, 34.603218, 31.849884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978230, 34.756027, 31.962454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027570, -0.550924, 0.834100,
		0.473690, -0.741983, -0.474424,
		0.880260, 0.382025, 0.281424,
		43.242306, 34.870636, 32.046883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002640, 34.119881, 32.121914>,  <42.626125, 34.603218, 31.849884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002640, 34.119881, 32.121914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172775, 34.445152, 32.280827>,  <43.274857, 34.640316, 32.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172775, 34.445152, 32.280827>,  <43.002640, 34.119881, 32.121914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172775, 34.445152, 32.280827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084107, -0.401556, 0.911964,
		0.901119, -0.421306, -0.102402,
		0.425336, 0.813175, 0.397284,
		43.300377, 34.689106, 32.400013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401600, 33.884846, 32.665947>,  <43.002640, 34.119881, 32.121914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401600, 33.884846, 32.665947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398640, 34.280121, 32.727180>,  <43.396866, 34.517284, 32.763920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398640, 34.280121, 32.727180>,  <43.401600, 33.884846, 32.665947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398640, 34.280121, 32.727180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074154, -0.152126, 0.985575,
		0.997219, 0.018644, -0.072153,
		-0.007398, 0.988185, 0.153085,
		43.396420, 34.576576, 32.773106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697159, 33.854626, 33.211143>,  <43.401600, 33.884846, 32.665947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697159, 33.854626, 33.211143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578060, 34.235832, 33.233440>,  <43.506603, 34.464558, 33.246819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578060, 34.235832, 33.233440>,  <43.697159, 33.854626, 33.211143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578060, 34.235832, 33.233440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165979, -0.109180, 0.980067,
		0.940107, 0.282556, 0.190688,
		-0.297743, 0.953017, 0.055742,
		43.488739, 34.521736, 33.250164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106529, 34.225586, 33.703831>,  <43.697159, 33.854626, 33.211143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106529, 34.225586, 33.703831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754841, 34.415512, 33.688263>,  <43.543827, 34.529469, 33.678921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754841, 34.415512, 33.688263>,  <44.106529, 34.225586, 33.703831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754841, 34.415512, 33.688263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031347, 0.023865, 0.999224,
		0.475379, 0.879760, -0.006099,
		-0.879223, 0.474818, -0.038922,
		43.491074, 34.557957, 33.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107822, 34.604786, 34.273270>,  <44.106529, 34.225586, 33.703831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107822, 34.604786, 34.273270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725712, 34.627861, 34.157253>,  <43.496445, 34.641708, 34.087643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725712, 34.627861, 34.157253>,  <44.107822, 34.604786, 34.273270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725712, 34.627861, 34.157253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284926, 0.082992, 0.954950,
		0.079163, 0.994879, -0.062842,
		-0.955275, 0.057691, -0.290037,
		43.439129, 34.645168, 34.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840412, 35.226120, 34.576790>,  <44.107822, 34.604786, 34.273270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840412, 35.226120, 34.576790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509174, 35.011150, 34.512985>,  <43.310432, 34.882168, 34.474705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509174, 35.011150, 34.512985>,  <43.840412, 35.226120, 34.576790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509174, 35.011150, 34.512985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300789, 0.185842, 0.935408,
		-0.473066, 0.822582, -0.315544,
		-0.828091, -0.537422, -0.159508,
		43.260746, 34.849922, 34.465134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318249, 35.566071, 34.945728>,  <43.840412, 35.226120, 34.576790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318249, 35.566071, 34.945728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205696, 35.185707, 34.894207>,  <43.138165, 34.957489, 34.863297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205696, 35.185707, 34.894207>,  <43.318249, 35.566071, 34.945728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205696, 35.185707, 34.894207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406157, -0.003588, 0.913796,
		-0.869403, 0.309437, -0.385210,
		-0.281380, -0.950913, -0.128799,
		43.121281, 34.900433, 34.855568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836185, 35.526329, 35.470573>,  <43.318249, 35.566071, 34.945728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836185, 35.526329, 35.470573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914349, 35.148727, 35.364243>,  <42.961246, 34.922165, 35.300446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914349, 35.148727, 35.364243>,  <42.836185, 35.526329, 35.470573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914349, 35.148727, 35.364243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176691, -0.300504, 0.937271,
		-0.964673, -0.136184, -0.225520,
		0.195411, -0.944008, -0.265826,
		42.972973, 34.865524, 35.284496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184956, 35.078197, 35.709908>,  <42.836185, 35.526329, 35.470573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184956, 35.078197, 35.709908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515816, 34.855595, 35.678604>,  <42.714333, 34.722034, 35.659824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515816, 34.855595, 35.678604>,  <42.184956, 35.078197, 35.709908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515816, 34.855595, 35.678604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088642, -0.266702, 0.959694,
		-0.554947, -0.786874, -0.269932,
		0.827149, -0.556507, -0.078255,
		42.763962, 34.688644, 35.655128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996578, 34.383900, 35.826023>,  <42.184956, 35.078197, 35.709908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996578, 34.383900, 35.826023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390606, 34.375317, 35.894356>,  <42.627022, 34.370167, 35.935356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390606, 34.375317, 35.894356>,  <41.996578, 34.383900, 35.826023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390606, 34.375317, 35.894356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163068, -0.434626, 0.885725,
		0.055243, -0.900355, -0.431635,
		0.985067, -0.021456, 0.170829,
		42.686127, 34.368881, 35.945606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157906, 33.683582, 36.137478>,  <41.996578, 34.383900, 35.826023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157906, 33.683582, 36.137478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449451, 33.931759, 36.253273>,  <42.624378, 34.080666, 36.322750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449451, 33.931759, 36.253273>,  <42.157906, 33.683582, 36.137478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449451, 33.931759, 36.253273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000588, -0.423392, 0.905946,
		0.684654, -0.660145, -0.308962,
		0.728868, 0.620441, 0.289489,
		42.668114, 34.117889, 36.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372223, 33.319805, 36.699505>,  <42.157906, 33.683582, 36.137478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372223, 33.319805, 36.699505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615273, 33.635658, 36.733624>,  <42.761101, 33.825169, 36.754093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615273, 33.635658, 36.733624>,  <42.372223, 33.319805, 36.699505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615273, 33.635658, 36.733624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057445, -0.150809, 0.986892,
		0.792144, -0.594760, -0.136995,
		0.607624, 0.789631, 0.085297,
		42.797562, 33.872547, 36.759212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892387, 33.156525, 37.150322>,  <42.372223, 33.319805, 36.699505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892387, 33.156525, 37.150322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844307, 33.552517, 37.179943>,  <42.815460, 33.790112, 37.197716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844307, 33.552517, 37.179943>,  <42.892387, 33.156525, 37.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844307, 33.552517, 37.179943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110991, -0.087529, 0.989959,
		0.986526, 0.110771, 0.120400,
		-0.120198, 0.989984, 0.074055,
		42.808247, 33.849514, 37.202160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392391, 33.578182, 37.553486>,  <42.892387, 33.156525, 37.150322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392391, 33.578182, 37.553486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068954, 33.813416, 37.560806>,  <42.874893, 33.954556, 37.565197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068954, 33.813416, 37.560806>,  <43.392391, 33.578182, 37.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068954, 33.813416, 37.560806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062264, 0.054603, 0.996565,
		0.585065, 0.806954, -0.080768,
		-0.808593, 0.588084, 0.018298,
		42.826378, 33.989841, 37.566296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638363, 33.979271, 38.114563>,  <43.392391, 33.578182, 37.553486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638363, 33.979271, 38.114563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252495, 34.066013, 38.054722>,  <43.020973, 34.118057, 38.018818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252495, 34.066013, 38.054722>,  <43.638363, 33.979271, 38.114563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252495, 34.066013, 38.054722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105899, 0.200787, 0.973894,
		0.241232, 0.955332, -0.170729,
		-0.964672, 0.216855, -0.149605,
		42.963093, 34.131069, 38.009842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544308, 34.474865, 38.511059>,  <43.638363, 33.979271, 38.114563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544308, 34.474865, 38.511059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155231, 34.391167, 38.470882>,  <42.921787, 34.340946, 38.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155231, 34.391167, 38.470882>,  <43.544308, 34.474865, 38.511059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155231, 34.391167, 38.470882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111027, 0.039461, 0.993034,
		-0.203826, 0.977066, -0.061615,
		-0.972691, -0.209247, -0.100438,
		42.863422, 34.328392, 38.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413586, 34.698719, 39.129169>,  <43.544308, 34.474865, 38.511059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413586, 34.698719, 39.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066357, 34.570171, 38.977818>,  <42.858021, 34.493042, 38.887005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066357, 34.570171, 38.977818>,  <43.413586, 34.698719, 39.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066357, 34.570171, 38.977818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466977, 0.269926, 0.842065,
		-0.168478, 0.907668, -0.384387,
		-0.868071, -0.321369, -0.378383,
		42.805935, 34.473763, 38.864304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900543, 35.215698, 39.100868>,  <43.413586, 34.698719, 39.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900543, 35.215698, 39.100868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675613, 34.885956, 39.126884>,  <42.540657, 34.688110, 39.142494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675613, 34.885956, 39.126884>,  <42.900543, 35.215698, 39.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675613, 34.885956, 39.126884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432484, 0.360226, 0.826556,
		-0.704804, 0.436664, -0.559085,
		-0.562324, -0.824355, 0.065039,
		42.506916, 34.638649, 39.146397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290394, 35.395317, 39.324993>,  <42.900543, 35.215698, 39.100868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290394, 35.395317, 39.324993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315701, 35.011265, 39.433910>,  <42.330887, 34.780834, 39.499260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315701, 35.011265, 39.433910>,  <42.290394, 35.395317, 39.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315701, 35.011265, 39.433910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438206, 0.218402, 0.871938,
		-0.896645, -0.174487, -0.406918,
		0.063270, -0.960133, 0.272290,
		42.334682, 34.723225, 39.515598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636620, 35.080654, 39.493496>,  <42.290394, 35.395317, 39.324993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636620, 35.080654, 39.493496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926155, 34.882751, 39.685863>,  <42.099876, 34.764011, 39.801285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926155, 34.882751, 39.685863>,  <41.636620, 35.080654, 39.493496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926155, 34.882751, 39.685863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379809, 0.296185, 0.876367,
		-0.576028, -0.817001, 0.026476,
		0.723835, -0.494756, 0.480916,
		42.143307, 34.734325, 39.830139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378559, 34.972824, 40.175419>,  <41.636620, 35.080654, 39.493496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378559, 34.972824, 40.175419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741146, 34.821712, 40.250889>,  <41.958698, 34.731045, 40.296173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741146, 34.821712, 40.250889>,  <41.378559, 34.972824, 40.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741146, 34.821712, 40.250889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026026, 0.495947, 0.867963,
		-0.421471, -0.781870, 0.459392,
		0.906469, -0.377778, 0.188678,
		42.013088, 34.708378, 40.307491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431980, 34.538731, 40.718624>,  <41.378559, 34.972824, 40.175419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431980, 34.538731, 40.718624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786243, 34.717159, 40.667038>,  <41.998802, 34.824215, 40.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786243, 34.717159, 40.667038>,  <41.431980, 34.538731, 40.718624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786243, 34.717159, 40.667038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076137, 0.413490, 0.907320,
		0.458056, -0.793754, 0.400172,
		0.885656, 0.446072, -0.128968,
		42.051941, 34.850979, 40.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748070, 34.460716, 41.321587>,  <41.431980, 34.538731, 40.718624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748070, 34.460716, 41.321587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962757, 34.746807, 41.142529>,  <42.091568, 34.918461, 41.035095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962757, 34.746807, 41.142529>,  <41.748070, 34.460716, 41.321587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962757, 34.746807, 41.142529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090971, 0.478387, 0.873424,
		0.838845, -0.509503, 0.191693,
		0.536716, 0.715229, -0.447643,
		42.123772, 34.961376, 41.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472828, 34.433041, 41.609383>,  <41.748070, 34.460716, 41.321587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472828, 34.433041, 41.609383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380711, 34.801628, 41.484249>,  <42.325439, 35.022781, 41.409168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380711, 34.801628, 41.484249>,  <42.472828, 34.433041, 41.609383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380711, 34.801628, 41.484249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261090, 0.368196, 0.892336,
		0.937441, 0.123824, -0.325380,
		-0.230296, 0.921466, -0.312833,
		42.311623, 35.078068, 41.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971336, 34.895870, 41.821491>,  <42.472828, 34.433041, 41.609383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971336, 34.895870, 41.821491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667797, 35.139137, 41.728306>,  <42.485672, 35.285099, 41.672394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667797, 35.139137, 41.728306>,  <42.971336, 34.895870, 41.821491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667797, 35.139137, 41.728306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144306, 0.505839, 0.850472,
		0.635073, 0.611765, -0.471620,
		-0.758853, 0.608170, -0.232964,
		42.440140, 35.321587, 41.658417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089508, 35.567448, 42.256908>,  <42.971336, 34.895870, 41.821491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089508, 35.567448, 42.256908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712349, 35.632309, 42.140526>,  <42.486053, 35.671227, 42.070694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712349, 35.632309, 42.140526>,  <43.089508, 35.567448, 42.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712349, 35.632309, 42.140526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167788, 0.523375, 0.835419,
		0.287750, 0.836531, -0.466279,
		-0.942893, 0.162156, -0.290961,
		42.429482, 35.680954, 42.053238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897575, 36.281338, 42.463921>,  <43.089508, 35.567448, 42.256908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897575, 36.281338, 42.463921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547092, 36.096649, 42.408688>,  <42.336803, 35.985836, 42.375549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547092, 36.096649, 42.408688>,  <42.897575, 36.281338, 42.463921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547092, 36.096649, 42.408688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393484, 0.519982, 0.758148,
		-0.278253, 0.718631, -0.637295,
		-0.876211, -0.461722, -0.138083,
		42.284229, 35.958134, 42.367264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333122, 36.813168, 42.280766>,  <42.897575, 36.281338, 42.463921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333122, 36.813168, 42.280766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192101, 36.478573, 42.448570>,  <42.107487, 36.277817, 42.549252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192101, 36.478573, 42.448570>,  <42.333122, 36.813168, 42.280766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192101, 36.478573, 42.448570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447758, 0.544435, 0.709297,
		-0.821718, 0.062225, -0.566488,
		-0.352552, -0.836492, 0.419511,
		42.086334, 36.227627, 42.574425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544380, 36.700813, 42.278809>,  <42.333122, 36.813168, 42.280766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544380, 36.700813, 42.278809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755550, 36.573284, 42.593681>,  <41.882252, 36.496765, 42.782604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755550, 36.573284, 42.593681>,  <41.544380, 36.700813, 42.278809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755550, 36.573284, 42.593681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498950, 0.633620, 0.591249,
		-0.687276, -0.704896, 0.175425,
		0.527922, -0.318822, 0.787179,
		41.913925, 36.477638, 42.829834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065189, 36.477554, 42.814148>,  <41.544380, 36.700813, 42.278809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065189, 36.477554, 42.814148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398457, 36.663532, 42.933922>,  <41.598415, 36.775120, 43.005787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398457, 36.663532, 42.933922>,  <41.065189, 36.477554, 42.814148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398457, 36.663532, 42.933922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505027, 0.860309, 0.069395,
		-0.225338, -0.209038, 0.951591,
		0.833169, 0.464942, 0.299431,
		41.648407, 36.803017, 43.023750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164413, 36.720848, 43.497318>,  <41.065189, 36.477554, 42.814148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164413, 36.720848, 43.497318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927052, 36.418625, 43.386326>,  <40.784634, 36.237289, 43.319729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927052, 36.418625, 43.386326>,  <41.164413, 36.720848, 43.497318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927052, 36.418625, 43.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798443, -0.508970, -0.321619,
		0.101771, -0.412406, 0.905298,
		-0.593407, -0.755560, -0.277484,
		40.749031, 36.191956, 43.303082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604279, 36.123333, 43.722744>,  <41.164413, 36.720848, 43.497318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604279, 36.123333, 43.722744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343380, 36.055553, 43.427216>,  <41.186840, 36.014885, 43.249897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343380, 36.055553, 43.427216>,  <41.604279, 36.123333, 43.722744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343380, 36.055553, 43.427216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717984, -0.450637, -0.530495,
		-0.243051, -0.876478, 0.415586,
		-0.652246, -0.169447, -0.738825,
		41.147705, 36.004719, 43.205566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643471, 35.384106, 43.358265>,  <41.604279, 36.123333, 43.722744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643471, 35.384106, 43.358265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509342, 35.657616, 43.099030>,  <41.428864, 35.821720, 42.943489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509342, 35.657616, 43.099030>,  <41.643471, 35.384106, 43.358265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509342, 35.657616, 43.099030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769279, -0.198380, -0.607334,
		-0.543846, -0.702210, -0.459491,
		-0.335322, 0.683774, -0.648084,
		41.408745, 35.862747, 42.904606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628590, 35.091724, 42.676777>,  <41.643471, 35.384106, 43.358265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628590, 35.091724, 42.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616955, 35.484718, 42.603153>,  <41.609974, 35.720516, 42.558979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616955, 35.484718, 42.603153>,  <41.628590, 35.091724, 42.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616955, 35.484718, 42.603153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557893, -0.136833, -0.818555,
		-0.829403, -0.126493, -0.544141,
		-0.029085, 0.982485, -0.184059,
		41.608231, 35.779465, 42.547935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296024, 35.241234, 42.116299>,  <41.628590, 35.091724, 42.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296024, 35.241234, 42.116299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579613, 35.517544, 42.173141>,  <41.749763, 35.683331, 42.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579613, 35.517544, 42.173141>,  <41.296024, 35.241234, 42.116299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579613, 35.517544, 42.173141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362052, -0.183583, -0.913901,
		-0.605213, 0.699375, -0.380252,
		0.708967, 0.690776, 0.142104,
		41.792301, 35.724777, 42.215771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221985, 35.854767, 41.649265>,  <41.296024, 35.241234, 42.116299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221985, 35.854767, 41.649265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601143, 35.788452, 41.758087>,  <41.828636, 35.748661, 41.823380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601143, 35.788452, 41.758087>,  <41.221985, 35.854767, 41.649265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601143, 35.788452, 41.758087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198503, -0.360595, -0.911355,
		0.249196, 0.917870, -0.308895,
		0.947891, -0.165789, 0.272059,
		41.885509, 35.738716, 41.839706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522194, 36.116051, 41.067436>,  <41.221985, 35.854767, 41.649265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522194, 36.116051, 41.067436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800621, 35.902718, 41.259705>,  <41.967678, 35.774719, 41.375065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800621, 35.902718, 41.259705>,  <41.522194, 36.116051, 41.067436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800621, 35.902718, 41.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352797, -0.329013, -0.875948,
		0.625319, 0.779299, -0.040857,
		0.696067, -0.533333, 0.480672,
		42.009441, 35.742718, 41.403908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131363, 36.227112, 40.622852>,  <41.522194, 36.116051, 41.067436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131363, 36.227112, 40.622852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183807, 35.904522, 40.853474>,  <42.215275, 35.710968, 40.991848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183807, 35.904522, 40.853474>,  <42.131363, 36.227112, 40.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183807, 35.904522, 40.853474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292932, -0.524089, -0.799701,
		0.947102, 0.273737, 0.167531,
		0.131107, -0.806473, 0.576552,
		42.223141, 35.662579, 41.026440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804359, 35.978893, 40.501808>,  <42.131363, 36.227112, 40.622852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804359, 35.978893, 40.501808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589348, 35.676643, 40.651524>,  <42.460342, 35.495293, 40.741352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589348, 35.676643, 40.651524>,  <42.804359, 35.978893, 40.501808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589348, 35.676643, 40.651524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140044, -0.517698, -0.844023,
		0.831536, -0.401268, 0.384098,
		-0.537527, -0.755627, 0.374290,
		42.428089, 35.449955, 40.763809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181492, 35.396431, 40.379162>,  <42.804359, 35.978893, 40.501808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181492, 35.396431, 40.379162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819027, 35.242741, 40.449867>,  <42.601547, 35.150528, 40.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819027, 35.242741, 40.449867>,  <43.181492, 35.396431, 40.379162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819027, 35.242741, 40.449867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048205, -0.509052, -0.859385,
		0.420181, -0.770218, 0.479804,
		-0.906159, -0.384226, 0.176766,
		42.547180, 35.127472, 40.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222561, 34.709999, 40.385918>,  <43.181492, 35.396431, 40.379162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222561, 34.709999, 40.385918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866268, 34.828354, 40.247910>,  <42.652493, 34.899368, 40.165104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866268, 34.828354, 40.247910>,  <43.222561, 34.709999, 40.385918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866268, 34.828354, 40.247910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157560, -0.511014, -0.845009,
		-0.426336, -0.807042, 0.408559,
		-0.890737, 0.295885, -0.345021,
		42.599049, 34.917118, 40.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083019, 34.084126, 40.693649>,  <43.222561, 34.709999, 40.385918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083019, 34.084126, 40.693649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756931, 34.273232, 40.559834>,  <42.561279, 34.386696, 40.479546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756931, 34.273232, 40.559834>,  <43.083019, 34.084126, 40.693649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756931, 34.273232, 40.559834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108271, -0.443042, -0.889939,
		-0.568948, -0.761713, 0.309988,
		-0.815215, 0.472766, -0.334539,
		42.512367, 34.415062, 40.459473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598816, 33.567101, 40.407139>,  <43.083019, 34.084126, 40.693649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598816, 33.567101, 40.407139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547951, 33.926052, 40.238125>,  <42.517433, 34.141422, 40.136715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547951, 33.926052, 40.238125>,  <42.598816, 33.567101, 40.407139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547951, 33.926052, 40.238125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083922, -0.414732, -0.906065,
		-0.988325, -0.150677, -0.022571,
		-0.127162, 0.897381, -0.422535,
		42.509804, 34.195267, 40.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641781, 33.479950, 39.786720>,  <42.598816, 33.567101, 40.407139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641781, 33.479950, 39.786720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525406, 33.854023, 39.705944>,  <42.455582, 34.078468, 39.657478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525406, 33.854023, 39.705944>,  <42.641781, 33.479950, 39.786720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525406, 33.854023, 39.705944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030388, -0.220000, -0.975026,
		-0.956259, -0.277536, 0.092425,
		-0.290939, 0.935187, -0.201943,
		42.438126, 34.134579, 39.645363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895172, 33.611191, 39.488564>,  <42.641781, 33.479950, 39.786720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895172, 33.611191, 39.488564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166164, 33.878849, 39.366409>,  <42.328758, 34.039444, 39.293118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166164, 33.878849, 39.366409>,  <41.895172, 33.611191, 39.488564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166164, 33.878849, 39.366409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076476, -0.348858, -0.934050,
		-0.731556, 0.656153, -0.185170,
		0.677478, 0.669149, -0.305389,
		42.369408, 34.079594, 39.274792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593899, 33.731091, 38.925232>,  <41.895172, 33.611191, 39.488564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593899, 33.731091, 38.925232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943192, 33.925930, 38.919605>,  <42.152767, 34.042835, 38.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943192, 33.925930, 38.919605>,  <41.593899, 33.731091, 38.925232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943192, 33.925930, 38.919605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010352, -0.010316, -0.999893,
		-0.487195, 0.873284, -0.003966,
		0.873232, 0.487102, -0.014067,
		42.205162, 34.072060, 38.915386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697475, 33.874191, 38.275269>,  <41.593899, 33.731091, 38.925232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697475, 33.874191, 38.275269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043217, 34.058884, 38.354973>,  <42.250660, 34.169697, 38.402794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043217, 34.058884, 38.354973>,  <41.697475, 33.874191, 38.275269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043217, 34.058884, 38.354973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169051, 0.106399, -0.979847,
		-0.473625, 0.880617, 0.013910,
		0.864350, 0.461729, 0.199262,
		42.302521, 34.197403, 38.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720421, 34.401646, 37.904751>,  <41.697475, 33.874191, 38.275269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720421, 34.401646, 37.904751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112812, 34.330944, 37.936871>,  <42.348248, 34.288525, 37.956142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112812, 34.330944, 37.936871>,  <41.720421, 34.401646, 37.904751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112812, 34.330944, 37.936871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097729, 0.092231, -0.990930,
		0.167743, 0.979925, 0.107750,
		0.980975, -0.176751, 0.080296,
		42.407104, 34.277920, 37.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044861, 34.987698, 37.533978>,  <41.720421, 34.401646, 37.904751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044861, 34.987698, 37.533978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296120, 34.677044, 37.553051>,  <42.446877, 34.490654, 37.564495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296120, 34.677044, 37.553051>,  <42.044861, 34.987698, 37.533978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296120, 34.677044, 37.553051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165258, 0.073278, -0.983524,
		0.760341, 0.625680, 0.174374,
		0.628149, -0.776631, 0.047682,
		42.484566, 34.444054, 37.567356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643990, 35.141552, 37.191578>,  <42.044861, 34.987698, 37.533978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643990, 35.141552, 37.191578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691845, 34.744610, 37.203739>,  <42.720558, 34.506447, 37.211037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691845, 34.744610, 37.203739>,  <42.643990, 35.141552, 37.191578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691845, 34.744610, 37.203739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358347, 0.014607, -0.933474,
		0.925891, 0.122574, 0.357354,
		0.119640, -0.992352, 0.030400,
		42.727737, 34.446903, 37.212860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323647, 34.955276, 37.142929>,  <42.643990, 35.141552, 37.191578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323647, 34.955276, 37.142929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094074, 34.659431, 37.002316>,  <42.956329, 34.481926, 36.917946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094074, 34.659431, 37.002316>,  <43.323647, 34.955276, 37.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094074, 34.659431, 37.002316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329382, 0.184521, -0.925991,
		0.749738, -0.647247, 0.137711,
		-0.573934, -0.739610, -0.351534,
		42.921894, 34.437550, 36.896854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737961, 34.703773, 36.610882>,  <43.323647, 34.955276, 37.142929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737961, 34.703773, 36.610882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389835, 34.529297, 36.519417>,  <43.180958, 34.424610, 36.464539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389835, 34.529297, 36.519417>,  <43.737961, 34.703773, 36.610882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389835, 34.529297, 36.519417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265547, -0.024599, -0.963784,
		0.414772, -0.899516, 0.137239,
		-0.870315, -0.436194, -0.228661,
		43.128742, 34.398438, 36.450817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975777, 34.422970, 36.050179>,  <43.737961, 34.703773, 36.610882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975777, 34.422970, 36.050179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578999, 34.385406, 36.016193>,  <43.340931, 34.362869, 35.995804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578999, 34.385406, 36.016193>,  <43.975777, 34.422970, 36.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578999, 34.385406, 36.016193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055887, 0.277416, -0.959123,
		0.113635, -0.956150, -0.269935,
		-0.991949, -0.093904, -0.084960,
		43.281414, 34.357235, 35.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787628, 33.895653, 35.477764>,  <43.975777, 34.422970, 36.050179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787628, 33.895653, 35.477764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480534, 34.147858, 35.523449>,  <43.296276, 34.299179, 35.550861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480534, 34.147858, 35.523449>,  <43.787628, 33.895653, 35.477764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480534, 34.147858, 35.523449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002326, 0.180986, -0.983483,
		-0.640766, -0.754787, -0.140415,
		-0.767733, 0.630509, 0.114213,
		43.250214, 34.337009, 35.557713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797440, 33.424206, 36.034527>,  <43.787628, 33.895653, 35.477764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797440, 33.424206, 36.034527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180042, 33.359348, 36.131519>,  <44.409603, 33.320435, 36.189716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180042, 33.359348, 36.131519>,  <43.797440, 33.424206, 36.034527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180042, 33.359348, 36.131519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138243, -0.480014, -0.866300,
		0.256862, 0.862146, -0.436722,
		0.956510, -0.162146, 0.242483,
		44.466995, 33.310703, 36.204266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480995, 33.944740, 35.703560>,  <43.797440, 33.424206, 36.034527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480995, 33.944740, 35.703560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543823, 33.553043, 35.754799>,  <44.581520, 33.318024, 35.785542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543823, 33.553043, 35.754799>,  <44.480995, 33.944740, 35.703560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543823, 33.553043, 35.754799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152788, -0.104053, -0.982766,
		0.975697, 0.173936, 0.133274,
		0.157071, -0.979244, 0.128100,
		44.590946, 33.259270, 35.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266361, 33.834381, 36.377224>,  <44.480995, 33.944740, 35.703560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266361, 33.834381, 36.377224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256153, 33.704247, 36.755325>,  <44.250027, 33.626167, 36.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256153, 33.704247, 36.755325>,  <44.266361, 33.834381, 36.377224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256153, 33.704247, 36.755325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986269, 0.146134, 0.076925,
		-0.163160, 0.934239, 0.317137,
		-0.025522, -0.325334, 0.945255,
		44.248497, 33.606647, 37.038902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564911, 34.326950, 36.893669>,  <44.266361, 33.834381, 36.377224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564911, 34.326950, 36.893669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619354, 33.946297, 37.003841>,  <44.652020, 33.717903, 37.069946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619354, 33.946297, 37.003841>,  <44.564911, 34.326950, 36.893669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619354, 33.946297, 37.003841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949659, 0.046138, -0.309869,
		0.282175, 0.303740, 0.910011,
		0.136106, -0.951637, 0.275431,
		44.660187, 33.660805, 37.086472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145233, 34.351139, 37.420967>,  <44.564911, 34.326950, 36.893669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145233, 34.351139, 37.420967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096588, 34.025852, 37.193325>,  <45.067402, 33.830681, 37.056740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096588, 34.025852, 37.193325>,  <45.145233, 34.351139, 37.420967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096588, 34.025852, 37.193325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945824, 0.078954, -0.314932,
		0.301042, -0.576576, 0.759561,
		-0.121612, -0.813220, -0.569108,
		45.060104, 33.781887, 37.022591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695038, 34.348003, 37.100006>,  <45.145233, 34.351139, 37.420967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695038, 34.348003, 37.100006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538631, 34.004341, 36.967976>,  <45.444786, 33.798141, 36.888756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538631, 34.004341, 36.967976>,  <45.695038, 34.348003, 37.100006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538631, 34.004341, 36.967976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871714, -0.230632, -0.432347,
		0.295330, -0.456787, 0.839122,
		-0.391019, -0.859159, -0.330075,
		45.421326, 33.746593, 36.868954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144485, 33.738064, 37.301968>,  <45.695038, 34.348003, 37.100006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144485, 33.738064, 37.301968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918373, 33.685257, 36.976261>,  <45.782707, 33.653572, 36.780838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918373, 33.685257, 36.976261>,  <46.144485, 33.738064, 37.301968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918373, 33.685257, 36.976261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814956, -0.242181, -0.526493,
		-0.127694, -0.961207, 0.244488,
		-0.565279, -0.132016, -0.814267,
		45.748791, 33.645653, 36.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499001, 33.350792, 36.823914>,  <46.144485, 33.738064, 37.301968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499001, 33.350792, 36.823914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205246, 33.462959, 36.576675>,  <46.028996, 33.530258, 36.428333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205246, 33.462959, 36.576675>,  <46.499001, 33.350792, 36.823914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205246, 33.462959, 36.576675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669924, 0.153210, -0.726449,
		-0.109012, -0.947571, -0.300375,
		-0.734383, 0.280420, -0.618099,
		45.984932, 33.547085, 36.391247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761559, 33.149540, 36.167171>,  <46.499001, 33.350792, 36.823914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761559, 33.149540, 36.167171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452389, 33.385704, 36.074223>,  <46.266888, 33.527405, 36.018452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452389, 33.385704, 36.074223>,  <46.761559, 33.149540, 36.167171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452389, 33.385704, 36.074223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336450, 0.070877, -0.939030,
		-0.537947, -0.803982, -0.253427,
		-0.772926, 0.590414, -0.232371,
		46.220512, 33.562828, 36.004513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165039, 33.744392, 36.213108>,  <46.761559, 33.149540, 36.167171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165039, 33.744392, 36.213108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473984, 33.598164, 36.005333>,  <47.659351, 33.510426, 35.880669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473984, 33.598164, 36.005333>,  <47.165039, 33.744392, 36.213108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.473984, 33.598164, 36.005333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373617, 0.399884, -0.836960,
		0.513683, 0.840507, 0.172271,
		0.772360, -0.365569, -0.519442,
		47.705692, 33.488491, 35.849499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093674, 34.026604, 35.631569>,  <47.165039, 33.744392, 36.213108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093674, 34.026604, 35.631569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748947, 34.150223, 35.792446>,  <46.542110, 34.224396, 35.888973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748947, 34.150223, 35.792446>,  <47.093674, 34.026604, 35.631569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748947, 34.150223, 35.792446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498276, 0.664114, 0.557382,
		-0.094847, 0.680766, -0.726335,
		-0.861815, 0.309049, 0.402198,
		46.490402, 34.242939, 35.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.550095, 34.291958, 35.097717>,  <47.093674, 34.026604, 35.631569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.550095, 34.291958, 35.097717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445225, 33.930626, 34.961918>,  <47.382305, 33.713825, 34.880436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445225, 33.930626, 34.961918>,  <47.550095, 34.291958, 35.097717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445225, 33.930626, 34.961918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903762, -0.353180, 0.241821,
		-0.338349, -0.243429, 0.908990,
		-0.262171, -0.903330, -0.339501,
		47.366573, 33.659626, 34.860069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332798, 34.834824, 34.708042>,  <47.550095, 34.291958, 35.097717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332798, 34.834824, 34.708042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385857, 34.588261, 34.397572>,  <47.417694, 34.440323, 34.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385857, 34.588261, 34.397572>,  <47.332798, 34.834824, 34.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385857, 34.588261, 34.397572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826159, -0.501408, 0.257005,
		-0.547600, 0.607153, -0.575760,
		0.132649, -0.616405, -0.776176,
		47.425652, 34.403339, 34.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845661, 34.823803, 34.130817>,  <47.332798, 34.834824, 34.708042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845661, 34.823803, 34.130817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952072, 34.438232, 34.134228>,  <47.015919, 34.206890, 34.136272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952072, 34.438232, 34.134228>,  <46.845661, 34.823803, 34.130817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952072, 34.438232, 34.134228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943178, -0.258452, 0.208847,
		-0.199110, -0.063599, -0.977911,
		0.266026, -0.963928, 0.008525,
		47.031879, 34.149055, 34.136784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804024, 35.565002, 34.048912>,  <46.845661, 34.823803, 34.130817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804024, 35.565002, 34.048912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413624, 35.649902, 34.068401>,  <46.179382, 35.700840, 34.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413624, 35.649902, 34.068401>,  <46.804024, 35.565002, 34.048912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413624, 35.649902, 34.068401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182173, -0.918359, 0.351326,
		0.119316, 0.334017, 0.934985,
		-0.976000, 0.212248, 0.048726,
		46.120823, 35.713577, 34.083019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581470, 35.471718, 34.748104>,  <46.804024, 35.565002, 34.048912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581470, 35.471718, 34.748104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283928, 35.381672, 34.496387>,  <46.105404, 35.327644, 34.345356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283928, 35.381672, 34.496387>,  <46.581470, 35.471718, 34.748104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283928, 35.381672, 34.496387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007595, -0.944355, 0.328840,
		-0.668300, 0.239829, 0.704172,
		-0.743854, -0.225112, -0.629291,
		46.060772, 35.314137, 34.307602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463116, 34.845043, 35.050179>,  <46.581470, 35.471718, 34.748104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463116, 34.845043, 35.050179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252369, 34.808414, 34.712177>,  <46.125923, 34.786438, 34.509377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252369, 34.808414, 34.712177>,  <46.463116, 34.845043, 35.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252369, 34.808414, 34.712177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193844, -0.980924, -0.014561,
		-0.827550, -0.171471, 0.534564,
		-0.526863, -0.091573, -0.845002,
		46.094311, 34.780941, 34.458675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.343922, 35.311356, 35.646709>,  <46.463116, 34.845043, 35.050179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.343922, 35.311356, 35.646709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647385, 35.338428, 35.387524>,  <46.829460, 35.354671, 35.232010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647385, 35.338428, 35.387524>,  <46.343922, 35.311356, 35.646709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647385, 35.338428, 35.387524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538131, 0.495521, 0.681817,
		0.367229, -0.865955, 0.339507,
		0.758656, 0.067684, -0.647967,
		46.874981, 35.358734, 35.193134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111984, 35.059666, 35.990280>,  <46.343922, 35.311356, 35.646709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111984, 35.059666, 35.990280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156620, 35.316597, 35.686974>,  <47.183403, 35.470757, 35.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156620, 35.316597, 35.686974>,  <47.111984, 35.059666, 35.990280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.156620, 35.316597, 35.686974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552732, 0.593993, 0.584516,
		0.825854, -0.484343, -0.288752,
		0.111589, 0.642328, -0.758263,
		47.190098, 35.509296, 35.459496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844448, 35.136387, 35.860504>,  <47.111984, 35.059666, 35.990280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844448, 35.136387, 35.860504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624306, 35.443729, 35.729824>,  <47.492222, 35.628136, 35.651417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624306, 35.443729, 35.729824>,  <47.844448, 35.136387, 35.860504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624306, 35.443729, 35.729824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557371, 0.629439, 0.541429,
		0.621652, 0.115881, -0.774674,
		-0.550351, 0.768361, -0.326703,
		47.459202, 35.674236, 35.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.089733, 34.745110, 35.290379>,  <47.844448, 35.136387, 35.860504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.089733, 34.745110, 35.290379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903339, 34.995979, 35.040737>,  <47.791504, 35.146500, 34.890953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.903339, 34.995979, 35.040737>,  <48.089733, 34.745110, 35.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.903339, 34.995979, 35.040737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437085, 0.776467, 0.453933,
		0.769293, -0.061260, -0.635952,
		-0.465988, 0.627173, -0.624107,
		47.763542, 35.184132, 34.853504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.660561, 29.531004, 27.468266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.289112, 29.648064, 27.377029>,  <42.066242, 29.718300, 27.322289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.289112, 29.648064, 27.377029>,  <42.660561, 29.531004, 27.468266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289112, 29.648064, 27.377029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198196, 0.128446, 0.971710,
		0.313669, 0.947553, -0.061275,
		-0.928617, 0.292651, -0.228091,
		42.010529, 29.735859, 27.308601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582924, 30.268902, 27.624897>,  <42.660561, 29.531004, 27.468266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582924, 30.268902, 27.624897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.223900, 30.092590, 27.628843>,  <42.008484, 29.986803, 27.631210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.223900, 30.092590, 27.628843>,  <42.582924, 30.268902, 27.624897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223900, 30.092590, 27.628843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135793, 0.297668, 0.944963,
		-0.419456, 0.846823, -0.327030,
		-0.897562, -0.440778, 0.009865,
		41.954632, 29.960358, 27.631804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133507, 30.756979, 27.871382>,  <42.582924, 30.268902, 27.624897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133507, 30.756979, 27.871382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.916809, 30.424040, 27.918219>,  <41.786789, 30.224277, 27.946320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.916809, 30.424040, 27.918219>,  <42.133507, 30.756979, 27.871382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916809, 30.424040, 27.918219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257117, 0.296727, 0.919698,
		-0.800251, 0.468138, -0.374761,
		-0.541747, -0.832346, 0.117090,
		41.754284, 30.174335, 27.953346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348175, 30.981754, 28.168421>,  <42.133507, 30.756979, 27.871382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348175, 30.981754, 28.168421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449081, 30.606371, 28.262791>,  <41.509624, 30.381142, 28.319412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449081, 30.606371, 28.262791>,  <41.348175, 30.981754, 28.168421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449081, 30.606371, 28.262791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223949, 0.180570, 0.957727,
		-0.941387, -0.294437, -0.164615,
		0.252266, -0.938457, 0.235926,
		41.524761, 30.324835, 28.333569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892353, 30.906607, 28.603308>,  <41.348175, 30.981754, 28.168421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892353, 30.906607, 28.603308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.160202, 30.616282, 28.666307>,  <41.320911, 30.442087, 28.704107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.160202, 30.616282, 28.666307>,  <40.892353, 30.906607, 28.603308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160202, 30.616282, 28.666307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215290, 0.013268, 0.976460,
		-0.710817, -0.687764, -0.147376,
		0.669619, -0.725813, 0.157500,
		41.361088, 30.398539, 28.713558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584991, 30.454472, 28.987488>,  <40.892353, 30.906607, 28.603308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584991, 30.454472, 28.987488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974384, 30.391884, 29.054245>,  <41.208019, 30.354332, 29.094299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974384, 30.391884, 29.054245>,  <40.584991, 30.454472, 28.987488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974384, 30.391884, 29.054245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159904, 0.056318, 0.985525,
		-0.163605, -0.986076, 0.029804,
		0.973481, -0.156471, 0.166891,
		41.266430, 30.344942, 29.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496445, 30.053333, 29.459515>,  <40.584991, 30.454472, 28.987488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496445, 30.053333, 29.459515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.878475, 30.163164, 29.504120>,  <41.107693, 30.229063, 29.530882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.878475, 30.163164, 29.504120>,  <40.496445, 30.053333, 29.459515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878475, 30.163164, 29.504120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152839, 0.133984, 0.979126,
		0.253903, -0.952185, 0.169931,
		0.955078, 0.274575, 0.111512,
		41.164997, 30.245537, 29.537573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730846, 29.683313, 30.046816>,  <40.496445, 30.053333, 29.459515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730846, 29.683313, 30.046816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997131, 29.978453, 30.002260>,  <41.156902, 30.155537, 29.975527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997131, 29.978453, 30.002260>,  <40.730846, 29.683313, 30.046816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997131, 29.978453, 30.002260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145914, 0.275107, 0.950276,
		0.731804, -0.616356, 0.290804,
		0.665711, 0.737849, -0.111390,
		41.196846, 30.199808, 29.968843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304371, 29.619389, 30.607164>,  <40.730846, 29.683313, 30.046816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304371, 29.619389, 30.607164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301849, 29.997911, 30.477880>,  <41.300339, 30.225025, 30.400311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301849, 29.997911, 30.477880>,  <41.304371, 29.619389, 30.607164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301849, 29.997911, 30.477880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087777, 0.322492, 0.942494,
		0.996120, -0.022432, -0.085096,
		-0.006301, 0.946306, -0.323210,
		41.299961, 30.281803, 30.380917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857548, 29.942461, 30.893845>,  <41.304371, 29.619389, 30.607164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857548, 29.942461, 30.893845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635612, 30.262911, 30.804085>,  <41.502453, 30.455181, 30.750229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.635612, 30.262911, 30.804085>,  <41.857548, 29.942461, 30.893845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635612, 30.262911, 30.804085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040872, 0.295649, 0.954422,
		0.830953, 0.520379, -0.196782,
		-0.554839, 0.801122, -0.224402,
		41.469162, 30.503248, 30.736765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153641, 30.495470, 31.194845>,  <41.857548, 29.942461, 30.893845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153641, 30.495470, 31.194845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787907, 30.651058, 31.149775>,  <41.568466, 30.744411, 31.122732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787907, 30.651058, 31.149775>,  <42.153641, 30.495470, 31.194845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787907, 30.651058, 31.149775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064047, 0.413637, 0.908187,
		0.399868, 0.823168, -0.403114,
		-0.914332, 0.388973, -0.112679,
		41.513607, 30.767750, 31.115971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131607, 31.081945, 31.615850>,  <42.153641, 30.495470, 31.194845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131607, 31.081945, 31.615850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.746494, 31.030214, 31.520916>,  <41.515427, 30.999176, 31.463955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.746494, 31.030214, 31.520916>,  <42.131607, 31.081945, 31.615850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746494, 31.030214, 31.520916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269815, 0.511759, 0.815661,
		0.015971, 0.849339, -0.527606,
		-0.962780, -0.129329, -0.237338,
		41.457661, 30.991415, 31.449715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870743, 31.749084, 31.431847>,  <42.131607, 31.081945, 31.615850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870743, 31.749084, 31.431847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579224, 31.507542, 31.560976>,  <41.404312, 31.362616, 31.638453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579224, 31.507542, 31.560976>,  <41.870743, 31.749084, 31.431847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579224, 31.507542, 31.560976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341817, 0.729353, 0.592625,
		-0.593313, 0.321555, -0.737957,
		-0.728794, -0.603859, 0.322822,
		41.360584, 31.326384, 31.657824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263859, 32.246029, 31.385489>,  <41.870743, 31.749084, 31.431847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263859, 32.246029, 31.385489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189686, 31.934143, 31.624706>,  <41.145184, 31.747011, 31.768238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.189686, 31.934143, 31.624706>,  <41.263859, 32.246029, 31.385489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189686, 31.934143, 31.624706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348940, 0.621186, 0.701690,
		-0.918616, -0.078565, -0.387263,
		-0.185434, -0.779715, 0.598046,
		41.134056, 31.700228, 31.804121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641373, 32.344154, 31.681480>,  <41.263859, 32.246029, 31.385489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641373, 32.344154, 31.681480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.784153, 32.077232, 31.942949>,  <40.869823, 31.917078, 32.099831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.784153, 32.077232, 31.942949>,  <40.641373, 32.344154, 31.681480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784153, 32.077232, 31.942949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386820, 0.531359, 0.753676,
		-0.850267, -0.521880, -0.068457,
		0.356954, -0.667307, 0.653671,
		40.891239, 31.877041, 32.139050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166477, 32.333984, 32.294655>,  <40.641373, 32.344154, 31.681480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166477, 32.333984, 32.294655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473289, 32.126408, 32.445572>,  <40.657379, 32.001862, 32.536121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473289, 32.126408, 32.445572>,  <40.166477, 32.333984, 32.294655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473289, 32.126408, 32.445572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114086, 0.468365, 0.876139,
		-0.631381, -0.715073, 0.300047,
		0.767034, -0.518946, 0.377297,
		40.703400, 31.970724, 32.558762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872814, 31.917938, 32.942558>,  <40.166477, 32.333984, 32.294655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872814, 31.917938, 32.942558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268421, 31.976944, 32.946301>,  <40.505787, 32.012348, 32.948547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268421, 31.976944, 32.946301>,  <39.872814, 31.917938, 32.942558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268421, 31.976944, 32.946301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080029, 0.481199, 0.872950,
		0.124268, -0.864111, 0.487719,
		0.989016, 0.147512, 0.009356,
		40.565125, 32.021198, 32.949108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024582, 31.845894, 33.612732>,  <39.872814, 31.917938, 32.942558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024582, 31.845894, 33.612732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375568, 32.001492, 33.500496>,  <40.586163, 32.094849, 33.433155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375568, 32.001492, 33.500496>,  <40.024582, 31.845894, 33.612732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375568, 32.001492, 33.500496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015687, 0.561426, 0.827378,
		0.479375, -0.730401, 0.486532,
		0.877470, 0.388992, -0.280592,
		40.638809, 32.118191, 33.416317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398876, 31.893011, 34.203083>,  <40.024582, 31.845894, 33.612732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398876, 31.893011, 34.203083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558586, 32.175404, 33.969101>,  <40.654411, 32.344841, 33.828712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558586, 32.175404, 33.969101>,  <40.398876, 31.893011, 34.203083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558586, 32.175404, 33.969101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070639, 0.612430, 0.787362,
		0.914107, -0.355693, 0.194657,
		0.399274, 0.705983, -0.584952,
		40.678368, 32.387199, 33.793613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964584, 32.184837, 34.601837>,  <40.398876, 31.893011, 34.203083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964584, 32.184837, 34.601837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858101, 32.461220, 34.333000>,  <40.794209, 32.627048, 34.171696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858101, 32.461220, 34.333000>,  <40.964584, 32.184837, 34.601837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858101, 32.461220, 34.333000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091945, 0.712278, 0.695849,
		0.959520, 0.123447, -0.253146,
		-0.266211, 0.690956, -0.672094,
		40.778236, 32.668507, 34.131371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355503, 32.717697, 34.786327>,  <40.964584, 32.184837, 34.601837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355503, 32.717697, 34.786327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102467, 32.920364, 34.552025>,  <40.950645, 33.041965, 34.411442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102467, 32.920364, 34.552025>,  <41.355503, 32.717697, 34.786327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102467, 32.920364, 34.552025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053414, 0.783062, 0.619646,
		0.772642, 0.360694, -0.522421,
		-0.632591, 0.506670, -0.585760,
		40.912689, 33.072365, 34.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009319, 32.425114, 34.360291>,  <41.355503, 32.717697, 34.786327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009319, 32.425114, 34.360291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.342175, 32.464973, 34.578506>,  <42.541889, 32.488888, 34.709438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.342175, 32.464973, 34.578506>,  <42.009319, 32.425114, 34.360291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342175, 32.464973, 34.578506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538510, -0.380199, -0.751968,
		0.132483, 0.919521, -0.370039,
		0.832139, 0.099647, 0.545542,
		42.591816, 32.494869, 34.742168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592064, 32.689522, 33.927776>,  <42.009319, 32.425114, 34.360291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592064, 32.689522, 33.927776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.732727, 32.499290, 34.250305>,  <42.817123, 32.385151, 34.443825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.732727, 32.499290, 34.250305>,  <42.592064, 32.689522, 33.927776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732727, 32.499290, 34.250305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734104, -0.394380, -0.552771,
		0.580885, 0.786314, 0.210437,
		0.351659, -0.475579, 0.806325,
		42.838226, 32.356617, 34.492203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340332, 32.899731, 34.086708>,  <42.592064, 32.689522, 33.927776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340332, 32.899731, 34.086708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247490, 32.535648, 34.223911>,  <43.191784, 32.317200, 34.306232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.247490, 32.535648, 34.223911>,  <43.340332, 32.899731, 34.086708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247490, 32.535648, 34.223911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613918, -0.410609, -0.674169,
		0.754475, 0.054104, 0.654095,
		-0.232102, -0.910205, 0.343009,
		43.177860, 32.262589, 34.326813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893799, 32.649380, 33.920467>,  <43.340332, 32.899731, 34.086708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893799, 32.649380, 33.920467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.711418, 32.306770, 34.017193>,  <43.601990, 32.101204, 34.075230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.711418, 32.306770, 34.017193>,  <43.893799, 32.649380, 33.920467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711418, 32.306770, 34.017193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561207, -0.487565, -0.668825,
		0.690765, -0.169244, 0.702993,
		-0.455950, -0.856526, 0.241813,
		43.574635, 32.049812, 34.089737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408161, 32.120243, 34.117104>,  <43.893799, 32.649380, 33.920467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408161, 32.120243, 34.117104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.077660, 31.934378, 33.989735>,  <43.879360, 31.822859, 33.913315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.077660, 31.934378, 33.989735>,  <44.408161, 32.120243, 34.117104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077660, 31.934378, 33.989735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550591, -0.546825, -0.630739,
		0.118962, -0.696469, 0.707657,
		-0.826255, -0.464664, -0.318418,
		43.829784, 31.794979, 33.894211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656902, 31.403721, 34.016651>,  <44.408161, 32.120243, 34.117104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656902, 31.403721, 34.016651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.310699, 31.457775, 33.823723>,  <44.102978, 31.490208, 33.707966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.310699, 31.457775, 33.823723>,  <44.656902, 31.403721, 34.016651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310699, 31.457775, 33.823723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260810, -0.700503, -0.664284,
		-0.427636, -0.700738, 0.571046,
		-0.865509, 0.135137, -0.482320,
		44.051048, 31.498316, 33.679028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323971, 30.747911, 33.958088>,  <44.656902, 31.403721, 34.016651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323971, 30.747911, 33.958088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.189106, 30.969124, 33.653332>,  <44.108189, 31.101851, 33.470478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.189106, 30.969124, 33.653332>,  <44.323971, 30.747911, 33.958088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189106, 30.969124, 33.653332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167337, -0.761187, -0.626572,
		-0.926457, -0.338747, 0.164098,
		-0.337159, 0.553032, -0.761892,
		44.087959, 31.135033, 33.424763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956772, 30.291979, 33.575573>,  <44.323971, 30.747911, 33.958088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956772, 30.291979, 33.575573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.010624, 30.605057, 33.332504>,  <44.042934, 30.792904, 33.186665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.010624, 30.605057, 33.332504>,  <43.956772, 30.291979, 33.575573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010624, 30.605057, 33.332504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010716, -0.612066, -0.790734,
		-0.990838, 0.112969, -0.074015,
		0.134631, 0.782696, -0.607669,
		44.051014, 30.839867, 33.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397747, 30.328928, 33.025257>,  <43.956772, 30.291979, 33.575573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397747, 30.328928, 33.025257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.694557, 30.548351, 32.871124>,  <43.872643, 30.680004, 32.778645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.694557, 30.548351, 32.871124>,  <43.397747, 30.328928, 33.025257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694557, 30.548351, 32.871124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049844, -0.528064, -0.847741,
		-0.668512, 0.648255, -0.364496,
		0.742029, 0.548557, -0.385329,
		43.917168, 30.712917, 32.755524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200569, 30.440670, 32.341038>,  <43.397747, 30.328928, 33.025257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200569, 30.440670, 32.341038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.596024, 30.500763, 32.338985>,  <43.833298, 30.536818, 32.337753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.596024, 30.500763, 32.338985>,  <43.200569, 30.440670, 32.341038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596024, 30.500763, 32.338985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079486, -0.551421, -0.830432,
		-0.127583, 0.820589, -0.557096,
		0.988638, 0.150231, -0.005127,
		43.892616, 30.545832, 32.337448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253731, 30.633142, 31.680243>,  <43.200569, 30.440670, 32.341038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253731, 30.633142, 31.680243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.608696, 30.504244, 31.812092>,  <43.821674, 30.426905, 31.891201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.608696, 30.504244, 31.812092>,  <43.253731, 30.633142, 31.680243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608696, 30.504244, 31.812092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218875, -0.334769, -0.916528,
		0.405695, 0.885487, -0.226547,
		0.887415, -0.322246, 0.329625,
		43.874920, 30.407570, 31.910980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622845, 30.905157, 31.204094>,  <43.253731, 30.633142, 31.680243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622845, 30.905157, 31.204094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.863190, 30.637125, 31.378431>,  <44.007397, 30.476305, 31.483034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.863190, 30.637125, 31.378431>,  <43.622845, 30.905157, 31.204094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863190, 30.637125, 31.378431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425449, -0.193514, -0.884051,
		0.676726, 0.716621, 0.168810,
		0.600862, -0.670080, 0.435841,
		44.043449, 30.436102, 31.509184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307415, 31.035692, 30.983913>,  <43.622845, 30.905157, 31.204094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307415, 31.035692, 30.983913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.284393, 30.648296, 31.080835>,  <44.270580, 30.415859, 31.138988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.284393, 30.648296, 31.080835>,  <44.307415, 31.035692, 30.983913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284393, 30.648296, 31.080835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299341, -0.248281, -0.921277,
		0.952409, 0.019507, 0.304199,
		-0.057556, -0.968492, 0.242304,
		44.267128, 30.357748, 31.153526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950459, 30.672014, 30.809134>,  <44.307415, 31.035692, 30.983913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950459, 30.672014, 30.809134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.678497, 30.379166, 30.825743>,  <44.515320, 30.203457, 30.835709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.678497, 30.379166, 30.825743>,  <44.950459, 30.672014, 30.809134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678497, 30.379166, 30.825743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432792, -0.446347, -0.783240,
		0.591962, -0.514558, 0.620331,
		-0.679905, -0.732123, 0.041524,
		44.474525, 30.159529, 30.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416527, 30.131348, 30.616058>,  <44.950459, 30.672014, 30.809134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416527, 30.131348, 30.616058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.053722, 29.963598, 30.600803>,  <44.836040, 29.862949, 30.591650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.053722, 29.963598, 30.600803>,  <45.416527, 30.131348, 30.616058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053722, 29.963598, 30.600803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212968, -0.378702, -0.900683,
		0.363279, -0.825053, 0.432800,
		-0.907013, -0.419372, -0.038135,
		44.781620, 29.837788, 30.589363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601463, 29.610611, 30.185465>,  <45.416527, 30.131348, 30.616058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601463, 29.610611, 30.185465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.205093, 29.664310, 30.182983>,  <44.967270, 29.696529, 30.181496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.205093, 29.664310, 30.182983>,  <45.601463, 29.610611, 30.185465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205093, 29.664310, 30.182983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042126, -0.354114, -0.934253,
		-0.127617, -0.925517, 0.356557,
		-0.990929, 0.134247, -0.006202,
		44.907814, 29.704584, 30.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273647, 28.993162, 29.806520>,  <45.601463, 29.610611, 30.185465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273647, 28.993162, 29.806520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.017834, 29.298841, 29.773073>,  <44.864346, 29.482248, 29.753004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.017834, 29.298841, 29.773073>,  <45.273647, 28.993162, 29.806520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017834, 29.298841, 29.773073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124516, -0.210304, -0.969674,
		-0.758609, -0.609731, 0.229652,
		-0.639537, 0.764199, -0.083618,
		44.825974, 29.528101, 29.747988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936359, 28.825136, 29.257656>,  <45.273647, 28.993162, 29.806520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936359, 28.825136, 29.257656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844070, 29.214003, 29.273937>,  <44.788696, 29.447323, 29.283705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.844070, 29.214003, 29.273937>,  <44.936359, 28.825136, 29.257656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844070, 29.214003, 29.273937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114761, 0.014349, -0.993290,
		-0.966228, -0.233848, 0.108256,
		-0.230725, 0.972167, 0.040701,
		44.774853, 29.505653, 29.286148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311756, 28.885115, 28.900581>,  <44.936359, 28.825136, 29.257656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311756, 28.885115, 28.900581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.487827, 29.243361, 28.874912>,  <44.593468, 29.458309, 28.859510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.487827, 29.243361, 28.874912>,  <44.311756, 28.885115, 28.900581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487827, 29.243361, 28.874912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334945, 0.097466, -0.937183,
		-0.833101, 0.434019, 0.342884,
		0.440175, 0.895616, -0.064174,
		44.619881, 29.512045, 28.855659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.704651, 29.356012, 28.738676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050484, 29.529926, 28.637909>,  <44.257984, 29.634275, 28.577450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050484, 29.529926, 28.637909>,  <43.704651, 29.356012, 28.738676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050484, 29.529926, 28.637909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275210, -0.009740, -0.961335,
		-0.420427, 0.900482, 0.111236,
		0.864581, 0.434784, -0.251917,
		44.309856, 29.660362, 28.562334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493484, 29.708010, 28.182140>,  <43.704651, 29.356012, 28.738676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493484, 29.708010, 28.182140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.893341, 29.701149, 28.173941>,  <44.133255, 29.697033, 28.169022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.893341, 29.701149, 28.173941>,  <43.493484, 29.708010, 28.182140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893341, 29.701149, 28.173941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022255, -0.109519, -0.993735,
		0.014799, 0.993837, -0.109862,
		0.999643, -0.017152, -0.020497,
		44.193233, 29.696003, 28.167791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779720, 30.253839, 27.654148>,  <43.493484, 29.708010, 28.182140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779720, 30.253839, 27.654148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081150, 29.994062, 27.694836>,  <44.262009, 29.838196, 27.719248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081150, 29.994062, 27.694836>,  <43.779720, 30.253839, 27.654148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081150, 29.994062, 27.694836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100082, -0.039582, -0.994192,
		0.649695, 0.759381, 0.035170,
		0.753579, -0.649441, 0.101717,
		44.307224, 29.799231, 27.725351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344517, 30.532593, 27.201117>,  <43.779720, 30.253839, 27.654148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344517, 30.532593, 27.201117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.408638, 30.141548, 27.255642>,  <44.447113, 29.906921, 27.288357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.408638, 30.141548, 27.255642>,  <44.344517, 30.532593, 27.201117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408638, 30.141548, 27.255642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115006, -0.118658, -0.986252,
		0.980345, 0.173779, 0.093409,
		0.160307, -0.977610, 0.136311,
		44.456730, 29.848265, 27.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911232, 30.401936, 26.712461>,  <44.344517, 30.532593, 27.201117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911232, 30.401936, 26.712461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.752254, 30.054459, 26.830725>,  <44.656868, 29.845972, 26.901682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.752254, 30.054459, 26.830725>,  <44.911232, 30.401936, 26.712461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752254, 30.054459, 26.830725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186537, -0.391956, -0.900874,
		0.898466, -0.302897, 0.317824,
		-0.397445, -0.868691, 0.295658,
		44.633022, 29.793852, 26.919422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260864, 29.881695, 26.411497>,  <44.911232, 30.401936, 26.712461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260864, 29.881695, 26.411497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.908928, 29.711872, 26.496937>,  <44.697765, 29.609978, 26.548201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.908928, 29.711872, 26.496937>,  <45.260864, 29.881695, 26.411497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908928, 29.711872, 26.496937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000619, -0.448409, -0.893828,
		0.475260, -0.786563, 0.394268,
		-0.879845, -0.424557, 0.213598,
		44.644974, 29.584505, 26.561016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301846, 29.265125, 26.067949>,  <45.260864, 29.881695, 26.411497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301846, 29.265125, 26.067949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.904980, 29.272598, 26.117357>,  <44.666859, 29.277082, 26.147001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.904980, 29.272598, 26.117357>,  <45.301846, 29.265125, 26.067949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904980, 29.272598, 26.117357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112284, -0.566740, -0.816210,
		0.054753, -0.823685, 0.564398,
		-0.992166, 0.018683, 0.123518,
		44.607330, 29.278204, 26.154413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154907, 28.618446, 25.882984>,  <45.301846, 29.265125, 26.067949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154907, 28.618446, 25.882984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.828571, 28.844324, 25.833149>,  <44.632771, 28.979851, 25.803247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.828571, 28.844324, 25.833149>,  <45.154907, 28.618446, 25.882984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828571, 28.844324, 25.833149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168944, -0.438797, -0.882562,
		-0.553048, -0.698981, 0.453390,
		-0.815841, 0.564696, -0.124588,
		44.583820, 29.013733, 25.795773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669155, 28.282259, 25.527750>,  <45.154907, 28.618446, 25.882984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669155, 28.282259, 25.527750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.525547, 28.649012, 25.457973>,  <44.439384, 28.869064, 25.416107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.525547, 28.649012, 25.457973>,  <44.669155, 28.282259, 25.527750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525547, 28.649012, 25.457973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017365, -0.193433, -0.980960,
		-0.933169, -0.349153, 0.085368,
		-0.359018, 0.916884, -0.174443,
		44.417843, 28.924076, 25.405642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205612, 28.198248, 25.005262>,  <44.669155, 28.282259, 25.527750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205612, 28.198248, 25.005262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.256886, 28.594835, 24.995813>,  <44.287651, 28.832788, 24.990145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.256886, 28.594835, 24.995813>,  <44.205612, 28.198248, 25.005262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256886, 28.594835, 24.995813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032543, -0.028011, -0.999078,
		-0.991216, 0.127298, -0.035856,
		0.128185, 0.991469, -0.023622,
		44.295341, 28.892277, 24.988728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599072, 28.440081, 24.479916>,  <44.205612, 28.198248, 25.005262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599072, 28.440081, 24.479916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.907623, 28.692274, 24.514488>,  <44.092754, 28.843590, 24.535231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.907623, 28.692274, 24.514488>,  <43.599072, 28.440081, 24.479916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907623, 28.692274, 24.514488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096999, 0.017741, -0.995126,
		-0.628943, 0.776000, -0.047472,
		0.771376, 0.630483, 0.086430,
		44.139034, 28.881418, 24.540417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579605, 28.875652, 23.923174>,  <43.599072, 28.440081, 24.479916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579605, 28.875652, 23.923174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.959160, 28.933096, 24.035597>,  <44.186893, 28.967562, 24.103050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.959160, 28.933096, 24.035597>,  <43.579605, 28.875652, 23.923174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959160, 28.933096, 24.035597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216155, 0.353192, -0.910237,
		-0.229986, 0.924463, 0.304097,
		0.948885, 0.143610, 0.281057,
		44.243824, 28.976179, 24.119913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706993, 29.490126, 23.611055>,  <43.579605, 28.875652, 23.923174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706993, 29.490126, 23.611055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.071003, 29.351727, 23.702396>,  <44.289410, 29.268686, 23.757200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.071003, 29.351727, 23.702396>,  <43.706993, 29.490126, 23.611055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071003, 29.351727, 23.702396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333306, 0.283120, -0.899305,
		0.246506, 0.894499, 0.372969,
		0.910023, -0.345997, 0.228351,
		44.344009, 29.247927, 23.770903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059887, 29.846512, 23.231110>,  <43.706993, 29.490126, 23.611055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059887, 29.846512, 23.231110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.340309, 29.573093, 23.312384>,  <44.508564, 29.409042, 23.361149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.340309, 29.573093, 23.312384>,  <44.059887, 29.846512, 23.231110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340309, 29.573093, 23.312384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357258, 0.090068, -0.929653,
		0.617159, 0.724330, 0.307345,
		0.701058, -0.683545, 0.203186,
		44.550625, 29.368031, 23.373339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708801, 30.140490, 23.031260>,  <44.059887, 29.846512, 23.231110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708801, 30.140490, 23.031260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.782730, 29.748268, 23.057661>,  <44.827087, 29.512936, 23.073502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.782730, 29.748268, 23.057661>,  <44.708801, 30.140490, 23.031260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782730, 29.748268, 23.057661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572685, 0.052875, -0.818068,
		0.798670, 0.188993, 0.571321,
		0.184818, -0.980554, 0.066004,
		44.838177, 29.454102, 23.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491531, 30.063225, 23.052004>,  <44.708801, 30.140490, 23.031260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491531, 30.063225, 23.052004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.304356, 29.739742, 22.909443>,  <45.192051, 29.545652, 22.823906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.304356, 29.739742, 22.909443>,  <45.491531, 30.063225, 23.052004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304356, 29.739742, 22.909443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446246, 0.131875, -0.885140,
		0.762820, -0.573238, 0.299172,
		-0.467943, -0.808707, -0.356402,
		45.163971, 29.497129, 22.802523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985058, 29.752666, 22.730608>,  <45.491531, 30.063225, 23.052004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985058, 29.752666, 22.730608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.668133, 29.575624, 22.562634>,  <45.477978, 29.469400, 22.461849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.668133, 29.575624, 22.562634>,  <45.985058, 29.752666, 22.730608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668133, 29.575624, 22.562634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424829, 0.093794, -0.900402,
		0.437908, -0.891799, 0.113717,
		-0.792311, -0.442603, -0.419935,
		45.430439, 29.442842, 22.436653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314579, 29.398079, 22.230167>,  <45.985058, 29.752666, 22.730608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314579, 29.398079, 22.230167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936577, 29.390738, 22.099552>,  <45.709774, 29.386333, 22.021183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936577, 29.390738, 22.099552>,  <46.314579, 29.398079, 22.230167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936577, 29.390738, 22.099552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320727, 0.143426, -0.936250,
		0.064015, -0.989491, -0.129653,
		-0.945006, -0.018351, -0.326538,
		45.653076, 29.385231, 22.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424915, 29.174587, 21.570930>,  <46.314579, 29.398079, 22.230167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424915, 29.174587, 21.570930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042206, 29.290548, 21.561646>,  <45.812580, 29.360125, 21.556074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042206, 29.290548, 21.561646>,  <46.424915, 29.174587, 21.570930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042206, 29.290548, 21.561646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026790, 0.008380, -0.999606,
		-0.289594, -0.957020, -0.015784,
		-0.956775, 0.289903, -0.023212,
		45.755173, 29.377520, 21.554682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067753, 28.711769, 21.058432>,  <46.424915, 29.174587, 21.570930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067753, 28.711769, 21.058432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.875916, 29.061195, 21.091600>,  <45.760815, 29.270851, 21.111502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.875916, 29.061195, 21.091600>,  <46.067753, 28.711769, 21.058432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875916, 29.061195, 21.091600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049073, 0.121049, -0.991433,
		-0.876118, -0.471415, -0.100923,
		-0.479593, 0.873565, 0.082920,
		45.732037, 29.323265, 21.116476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680584, 28.754227, 20.456182>,  <46.067753, 28.711769, 21.058432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680584, 28.754227, 20.456182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.688587, 29.127766, 20.599026>,  <45.693390, 29.351889, 20.684732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.688587, 29.127766, 20.599026>,  <45.680584, 28.754227, 20.456182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688587, 29.127766, 20.599026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140331, 0.356268, -0.923786,
		-0.989903, -0.031629, 0.138177,
		0.020009, 0.933849, 0.357109,
		45.694592, 29.407921, 20.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041969, 29.014338, 20.368067>,  <45.680584, 28.754227, 20.456182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041969, 29.014338, 20.368067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.299866, 29.319801, 20.354565>,  <45.454601, 29.503078, 20.346464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.299866, 29.319801, 20.354565>,  <45.041969, 29.014338, 20.368067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299866, 29.319801, 20.354565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082997, 0.026040, -0.996210,
		-0.759885, 0.645095, 0.080170,
		0.644737, 0.763659, -0.033753,
		45.493286, 29.548899, 20.344439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799610, 29.464027, 19.794155>,  <45.041969, 29.014338, 20.368067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799610, 29.464027, 19.794155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.184933, 29.535303, 19.874439>,  <45.416126, 29.578068, 19.922609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.184933, 29.535303, 19.874439>,  <44.799610, 29.464027, 19.794155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184933, 29.535303, 19.874439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200694, 0.018319, -0.979483,
		-0.178208, 0.983826, -0.018114,
		0.963309, 0.178187, 0.200712,
		45.473927, 29.588758, 19.934652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006306, 30.083376, 19.526159>,  <44.799610, 29.464027, 19.794155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006306, 30.083376, 19.526159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314907, 29.829556, 19.507700>,  <45.500069, 29.677263, 19.496624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314907, 29.829556, 19.507700>,  <45.006306, 30.083376, 19.526159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314907, 29.829556, 19.507700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084875, 0.174539, -0.980985,
		0.630542, 0.752914, 0.188515,
		0.771500, -0.634553, -0.046151,
		45.546356, 29.639189, 19.493855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429325, 30.464378, 19.803963>,  <45.006306, 30.083376, 19.526159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429325, 30.464378, 19.803963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.058441, 30.498629, 19.658115>,  <43.835911, 30.519178, 19.570606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.058441, 30.498629, 19.658115>,  <44.429325, 30.464378, 19.803963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058441, 30.498629, 19.658115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374306, -0.177670, 0.910126,
		0.013146, 0.980358, 0.196787,
		-0.927212, 0.085623, -0.364618,
		43.780277, 30.524315, 19.548731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098545, 30.857067, 20.331617>,  <44.429325, 30.464378, 19.803963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098545, 30.857067, 20.331617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.789139, 30.721979, 20.117096>,  <43.603497, 30.640926, 19.988382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.789139, 30.721979, 20.117096>,  <44.098545, 30.857067, 20.331617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789139, 30.721979, 20.117096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547177, -0.071139, 0.833988,
		-0.319807, 0.938554, -0.129766,
		-0.773512, -0.337720, -0.536306,
		43.557087, 30.620663, 19.956203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529652, 31.330729, 20.431023>,  <44.098545, 30.857067, 20.331617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529652, 31.330729, 20.431023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.388809, 30.969238, 20.333611>,  <43.304306, 30.752344, 20.275164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.388809, 30.969238, 20.333611>,  <43.529652, 31.330729, 20.431023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388809, 30.969238, 20.333611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567212, -0.000939, 0.823572,
		-0.744510, 0.428115, -0.512272,
		-0.352102, -0.903724, -0.243531,
		43.283180, 30.698120, 20.260551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788990, 31.360651, 20.491562>,  <43.529652, 31.330729, 20.431023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788990, 31.360651, 20.491562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912964, 30.984993, 20.550825>,  <42.987347, 30.759598, 20.586384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912964, 30.984993, 20.550825>,  <42.788990, 31.360651, 20.491562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912964, 30.984993, 20.550825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608806, -0.076343, 0.789637,
		-0.730271, -0.334935, -0.595418,
		0.309933, -0.939143, 0.148159,
		43.005943, 30.703251, 20.595272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178764, 30.990650, 20.617233>,  <42.788990, 31.360651, 20.491562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178764, 30.990650, 20.617233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471283, 30.755135, 20.754946>,  <42.646793, 30.613825, 20.837574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471283, 30.755135, 20.754946>,  <42.178764, 30.990650, 20.617233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471283, 30.755135, 20.754946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502827, -0.124355, 0.855395,
		-0.460834, -0.798663, -0.387000,
		0.731298, -0.588790, 0.344283,
		42.690674, 30.578499, 20.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763988, 30.456285, 20.823870>,  <42.178764, 30.990650, 20.617233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763988, 30.456285, 20.823870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.123085, 30.409447, 20.993736>,  <42.338543, 30.381344, 21.095655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.123085, 30.409447, 20.993736>,  <41.763988, 30.456285, 20.823870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123085, 30.409447, 20.993736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440119, -0.279255, 0.853412,
		0.018659, -0.953050, -0.302236,
		0.897746, -0.117096, 0.424666,
		42.392410, 30.374317, 21.121136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806770, 29.816120, 21.238077>,  <41.763988, 30.456285, 20.823870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806770, 29.816120, 21.238077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102898, 30.026707, 21.405296>,  <42.280575, 30.153059, 21.505627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102898, 30.026707, 21.405296>,  <41.806770, 29.816120, 21.238077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102898, 30.026707, 21.405296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317052, -0.274921, 0.907688,
		0.592798, -0.804518, -0.036611,
		0.740316, 0.526468, 0.418047,
		42.324993, 30.184647, 21.530710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101612, 29.387358, 21.819969>,  <41.806770, 29.816120, 21.238077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101612, 29.387358, 21.819969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234547, 29.758759, 21.886225>,  <42.314308, 29.981600, 21.925978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234547, 29.758759, 21.886225>,  <42.101612, 29.387358, 21.819969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234547, 29.758759, 21.886225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172748, -0.112725, 0.978494,
		0.927207, -0.353800, 0.122935,
		0.332333, 0.928504, 0.165638,
		42.334248, 30.037310, 21.935917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643829, 29.277046, 22.390263>,  <42.101612, 29.387358, 21.819969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643829, 29.277046, 22.390263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525497, 29.659105, 22.395638>,  <42.454498, 29.888340, 22.398863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525497, 29.659105, 22.395638>,  <42.643829, 29.277046, 22.390263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525497, 29.659105, 22.395638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058422, -0.032129, 0.997775,
		0.953454, 0.294382, 0.065306,
		-0.295825, 0.955148, 0.013435,
		42.436749, 29.945650, 22.399668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058025, 29.713711, 22.743876>,  <42.643829, 29.277046, 22.390263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058025, 29.713711, 22.743876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711594, 29.909563, 22.784201>,  <42.503735, 30.027075, 22.808395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711594, 29.909563, 22.784201>,  <43.058025, 29.713711, 22.743876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711594, 29.909563, 22.784201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026347, -0.156680, 0.987298,
		0.499206, 0.857738, 0.122798,
		-0.866083, 0.489629, 0.100815,
		42.451767, 30.056452, 22.814445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126026, 29.963903, 23.346092>,  <43.058025, 29.713711, 22.743876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126026, 29.963903, 23.346092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.739826, 30.042873, 23.278172>,  <42.508106, 30.090256, 23.237419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.739826, 30.042873, 23.278172>,  <43.126026, 29.963903, 23.346092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739826, 30.042873, 23.278172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158520, 0.071720, 0.984747,
		0.206592, 0.977691, -0.037950,
		-0.965500, 0.197426, -0.169801,
		42.450176, 30.102100, 23.227232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959026, 30.524685, 23.848459>,  <43.126026, 29.963903, 23.346092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959026, 30.524685, 23.848459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.610798, 30.349976, 23.757833>,  <42.401859, 30.245150, 23.703457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.610798, 30.349976, 23.757833>,  <42.959026, 30.524685, 23.848459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610798, 30.349976, 23.757833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211699, -0.083175, 0.973789,
		-0.444169, 0.895719, -0.020055,
		-0.870573, -0.436773, -0.226567,
		42.349625, 30.218945, 23.689863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634319, 30.751125, 24.328905>,  <42.959026, 30.524685, 23.848459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634319, 30.751125, 24.328905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382698, 30.466417, 24.203897>,  <42.231724, 30.295591, 24.128893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382698, 30.466417, 24.203897>,  <42.634319, 30.751125, 24.328905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382698, 30.466417, 24.203897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238760, -0.205688, 0.949045,
		-0.739785, 0.671620, -0.040553,
		-0.629056, -0.711771, -0.312521,
		42.193981, 30.252886, 24.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937706, 30.813959, 24.717463>,  <42.634319, 30.751125, 24.328905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937706, 30.813959, 24.717463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983868, 30.443396, 24.574104>,  <42.011566, 30.221058, 24.488091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983868, 30.443396, 24.574104>,  <41.937706, 30.813959, 24.717463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983868, 30.443396, 24.574104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139325, -0.372336, 0.917581,
		-0.983499, -0.055962, -0.172042,
		0.115407, -0.926409, -0.358395,
		42.018490, 30.165472, 24.466585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268623, 30.383799, 24.721527>,  <41.937706, 30.813959, 24.717463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268623, 30.383799, 24.721527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.570602, 30.121614, 24.729710>,  <41.751789, 29.964304, 24.734619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.570602, 30.121614, 24.729710>,  <41.268623, 30.383799, 24.721527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570602, 30.121614, 24.729710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169136, -0.164483, 0.971771,
		-0.633593, -0.737100, -0.235039,
		0.754952, -0.655461, 0.020455,
		41.797089, 29.924976, 24.735846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120670, 29.890846, 25.177460>,  <41.268623, 30.383799, 24.721527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120670, 29.890846, 25.177460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512608, 29.810946, 25.178890>,  <41.747768, 29.763004, 25.179749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512608, 29.810946, 25.178890>,  <41.120670, 29.890846, 25.177460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512608, 29.810946, 25.178890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058825, -0.271362, 0.960678,
		-0.190926, -0.941521, -0.277642,
		0.979841, -0.199751, 0.003575,
		41.806561, 29.751020, 25.179962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188824, 29.221298, 25.555916>,  <41.120670, 29.890846, 25.177460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188824, 29.221298, 25.555916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533451, 29.423767, 25.571337>,  <41.740227, 29.545248, 25.580589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533451, 29.423767, 25.571337>,  <41.188824, 29.221298, 25.555916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533451, 29.423767, 25.571337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084886, -0.218529, 0.972131,
		0.500491, -0.834287, -0.231245,
		0.861570, 0.506173, 0.038552,
		41.791924, 29.575619, 25.582903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627377, 28.743876, 26.014908>,  <41.188824, 29.221298, 25.555916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627377, 28.743876, 26.014908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799355, 29.104605, 26.032206>,  <41.902542, 29.321041, 26.042585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799355, 29.104605, 26.032206>,  <41.627377, 28.743876, 26.014908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799355, 29.104605, 26.032206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046509, -0.025713, 0.998587,
		0.901659, -0.431344, 0.030888,
		0.429940, 0.901821, 0.043246,
		41.928337, 29.375151, 26.045179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133686, 28.698149, 26.489927>,  <41.627377, 28.743876, 26.014908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133686, 28.698149, 26.489927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.051708, 29.089403, 26.475780>,  <42.002522, 29.324156, 26.467293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.051708, 29.089403, 26.475780>,  <42.133686, 28.698149, 26.489927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051708, 29.089403, 26.475780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321550, -0.033155, 0.946312,
		0.924448, 0.205311, 0.321315,
		-0.204941, 0.978135, -0.035368,
		41.990227, 29.382843, 26.465170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503639, 29.015171, 26.979599>,  <42.133686, 28.698149, 26.489927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503639, 29.015171, 26.979599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252048, 29.324327, 26.946056>,  <42.101093, 29.509821, 26.925930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252048, 29.324327, 26.946056>,  <42.503639, 29.015171, 26.979599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252048, 29.324327, 26.946056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061947, 0.057695, 0.996410,
		0.774956, 0.631909, 0.011590,
		-0.628972, 0.772892, -0.083856,
		42.063358, 29.556194, 26.920900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.310062, 29.154272, 31.590673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323456, 29.530930, 31.456697>,  <44.331490, 29.756924, 31.376312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323456, 29.530930, 31.456697>,  <44.310062, 29.154272, 31.590673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323456, 29.530930, 31.456697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033820, 0.336005, 0.941253,
		0.998867, -0.020186, 0.043096,
		0.033480, 0.941644, -0.334942,
		44.333500, 29.813423, 31.356215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752659, 29.474154, 31.945009>,  <44.310062, 29.154272, 31.590673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752659, 29.474154, 31.945009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525982, 29.778446, 31.818424>,  <44.389977, 29.961021, 31.742474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525982, 29.778446, 31.818424>,  <44.752659, 29.474154, 31.945009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525982, 29.778446, 31.818424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094194, 0.321756, 0.942125,
		0.818528, 0.563704, -0.110680,
		-0.566691, 0.760731, -0.316464,
		44.355976, 30.006666, 31.723486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090061, 30.025513, 32.235600>,  <44.752659, 29.474154, 31.945009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090061, 30.025513, 32.235600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.731392, 30.175951, 32.142200>,  <44.516190, 30.266214, 32.086159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.731392, 30.175951, 32.142200>,  <45.090061, 30.025513, 32.235600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731392, 30.175951, 32.142200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038772, 0.592160, 0.804887,
		0.440984, 0.712670, -0.545559,
		-0.896677, 0.376095, -0.233501,
		44.462387, 30.288780, 32.072151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192101, 30.720421, 32.438732>,  <45.090061, 30.025513, 32.235600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192101, 30.720421, 32.438732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799171, 30.647293, 32.422623>,  <44.563416, 30.603416, 32.412956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799171, 30.647293, 32.422623>,  <45.192101, 30.720421, 32.438732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799171, 30.647293, 32.422623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157260, 0.689178, 0.707321,
		-0.101559, 0.701150, -0.705745,
		-0.982321, -0.182820, -0.040271,
		44.504475, 30.592447, 32.410542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923286, 31.382687, 32.545593>,  <45.192101, 30.720421, 32.438732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923286, 31.382687, 32.545593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589455, 31.164145, 32.573799>,  <44.389156, 31.033020, 32.590725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.589455, 31.164145, 32.573799>,  <44.923286, 31.382687, 32.545593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589455, 31.164145, 32.573799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399442, 0.688317, 0.605530,
		-0.379373, 0.477195, -0.792693,
		-0.834580, -0.546356, 0.070517,
		44.339081, 31.000238, 32.594955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364040, 31.880623, 32.375782>,  <44.923286, 31.382687, 32.545593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364040, 31.880623, 32.375782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263020, 31.566441, 32.601799>,  <44.202408, 31.377932, 32.737408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263020, 31.566441, 32.601799>,  <44.364040, 31.880623, 32.375782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263020, 31.566441, 32.601799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463466, 0.610826, 0.641943,
		-0.849362, -0.099752, -0.518299,
		-0.252555, -0.785456, 0.565044,
		44.187252, 31.330803, 32.771313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697136, 31.923388, 32.499794>,  <44.364040, 31.880623, 32.375782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697136, 31.923388, 32.499794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800240, 31.665945, 32.788052>,  <43.862103, 31.511478, 32.961006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800240, 31.665945, 32.788052>,  <43.697136, 31.923388, 32.499794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800240, 31.665945, 32.788052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470489, 0.567841, 0.675423,
		-0.843919, -0.513152, -0.156445,
		0.257759, -0.643609, 0.720644,
		43.877567, 31.472862, 33.004246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048969, 31.693525, 32.822372>,  <43.697136, 31.923388, 32.499794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048969, 31.693525, 32.822372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336697, 31.621378, 33.090714>,  <43.509335, 31.578091, 33.251717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336697, 31.621378, 33.090714>,  <43.048969, 31.693525, 32.822372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336697, 31.621378, 33.090714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540221, 0.461888, 0.703435,
		-0.436736, -0.868405, 0.234808,
		0.719321, -0.180367, 0.670854,
		43.552494, 31.567268, 33.291969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733768, 31.302771, 33.439163>,  <43.048969, 31.693525, 32.822372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733768, 31.302771, 33.439163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077110, 31.475172, 33.550491>,  <43.283115, 31.578613, 33.617287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077110, 31.475172, 33.550491>,  <42.733768, 31.302771, 33.439163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077110, 31.475172, 33.550491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457523, 0.397564, 0.795372,
		0.232157, -0.810049, 0.538445,
		0.858356, 0.431002, 0.278319,
		43.334618, 31.604473, 33.633987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773972, 31.024967, 34.063969>,  <42.733768, 31.302771, 33.439163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773972, 31.024967, 34.063969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999763, 31.354866, 34.077568>,  <43.135239, 31.552805, 34.085728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999763, 31.354866, 34.077568>,  <42.773972, 31.024967, 34.063969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999763, 31.354866, 34.077568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343144, 0.196996, 0.918393,
		0.750743, -0.530081, 0.394207,
		0.564479, 0.824747, 0.034001,
		43.169106, 31.602289, 34.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037251, 31.085962, 34.795193>,  <42.773972, 31.024967, 34.063969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037251, 31.085962, 34.795193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066898, 31.453802, 34.640869>,  <43.084686, 31.674505, 34.548275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066898, 31.453802, 34.640869>,  <43.037251, 31.085962, 34.795193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066898, 31.453802, 34.640869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358988, 0.385539, 0.849992,
		0.930395, 0.075499, 0.358701,
		0.074120, 0.919597, -0.385807,
		43.089134, 31.729681, 34.525127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408226, 31.614325, 35.395943>,  <43.037251, 31.085962, 34.795193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408226, 31.614325, 35.395943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203140, 31.824074, 35.124016>,  <43.080090, 31.949923, 34.960857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203140, 31.824074, 35.124016>,  <43.408226, 31.614325, 35.395943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203140, 31.824074, 35.124016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460188, 0.500620, 0.733217,
		0.724812, 0.688775, -0.015365,
		-0.512714, 0.524374, -0.679821,
		43.049328, 31.981386, 34.920071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438423, 32.473404, 35.502419>,  <43.408226, 31.614325, 35.395943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438423, 32.473404, 35.502419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110535, 32.338211, 35.317451>,  <42.913803, 32.257095, 35.206470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110535, 32.338211, 35.317451>,  <43.438423, 32.473404, 35.502419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110535, 32.338211, 35.317451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572681, 0.497640, 0.651453,
		0.009937, 0.798825, -0.601482,
		-0.819718, -0.337984, -0.462417,
		42.864620, 32.236816, 35.178726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049927, 33.040859, 35.435284>,  <43.438423, 32.473404, 35.502419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049927, 33.040859, 35.435284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766129, 32.759071, 35.427925>,  <42.595848, 32.590000, 35.423512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766129, 32.759071, 35.427925>,  <43.049927, 33.040859, 35.435284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766129, 32.759071, 35.427925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599177, 0.589302, 0.541951,
		-0.370947, 0.395534, -0.840209,
		-0.709497, -0.704468, -0.018395,
		42.553280, 32.547729, 35.422405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243217, 33.628475, 35.110580>,  <43.049927, 33.040859, 35.435284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243217, 33.628475, 35.110580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134209, 34.012272, 35.139175>,  <43.068802, 34.242550, 35.156330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134209, 34.012272, 35.139175>,  <43.243217, 33.628475, 35.110580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134209, 34.012272, 35.139175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039752, 0.085460, -0.995548,
		-0.961327, -0.268472, -0.061431,
		-0.272526, 0.959489, 0.071483,
		43.052452, 34.300117, 35.160622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597408, 33.752495, 34.792339>,  <43.243217, 33.628475, 35.110580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597408, 33.752495, 34.792339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800755, 34.096916, 34.787594>,  <42.922764, 34.303570, 34.784744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800755, 34.096916, 34.787594>,  <42.597408, 33.752495, 34.792339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800755, 34.096916, 34.787594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103323, 0.047310, -0.993522,
		-0.854918, 0.506302, 0.113018,
		0.508369, 0.861058, -0.011867,
		42.953266, 34.355232, 34.784035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332645, 34.052700, 34.170441>,  <42.597408, 33.752495, 34.792339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332645, 34.052700, 34.170441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609901, 34.325363, 34.264160>,  <42.776257, 34.488960, 34.320393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609901, 34.325363, 34.264160>,  <42.332645, 34.052700, 34.170441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609901, 34.325363, 34.264160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106641, 0.224502, -0.968621,
		-0.712869, 0.696378, 0.082919,
		0.693141, 0.681658, 0.234303,
		42.817844, 34.529861, 34.334450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194447, 34.683685, 33.891289>,  <42.332645, 34.052700, 34.170441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194447, 34.683685, 33.891289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590611, 34.654987, 33.938530>,  <42.828308, 34.637768, 33.966873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590611, 34.654987, 33.938530>,  <42.194447, 34.683685, 33.891289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590611, 34.654987, 33.938530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131454, 0.225686, -0.965290,
		0.042598, 0.971555, 0.232952,
		0.990407, -0.071742, 0.118101,
		42.887733, 34.633465, 33.973961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446552, 35.253174, 33.516190>,  <42.194447, 34.683685, 33.891289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446552, 35.253174, 33.516190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767418, 35.022732, 33.578972>,  <42.959938, 34.884464, 33.616642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767418, 35.022732, 33.578972>,  <42.446552, 35.253174, 33.516190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767418, 35.022732, 33.578972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263945, 0.106328, -0.958659,
		0.535602, 0.810428, 0.237353,
		0.802161, -0.576108, 0.156959,
		43.008068, 34.849899, 33.626060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965340, 35.710999, 33.223019>,  <42.446552, 35.253174, 33.516190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965340, 35.710999, 33.223019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134037, 35.348927, 33.244110>,  <43.235256, 35.131683, 33.256767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134037, 35.348927, 33.244110>,  <42.965340, 35.710999, 33.223019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134037, 35.348927, 33.244110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222655, 0.047013, -0.973763,
		0.878950, 0.422424, 0.221370,
		0.421748, -0.905178, 0.052732,
		43.260563, 35.077374, 33.259930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425919, 35.894062, 32.873085>,  <42.965340, 35.710999, 33.223019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425919, 35.894062, 32.873085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404633, 35.495491, 32.846878>,  <43.391861, 35.256348, 32.831154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404633, 35.495491, 32.846878>,  <43.425919, 35.894062, 32.873085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404633, 35.495491, 32.846878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097583, 0.060112, -0.993410,
		0.993804, -0.059259, 0.094036,
		-0.053216, -0.996431, -0.065522,
		43.388668, 35.196560, 32.827221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089878, 35.685513, 32.595547>,  <43.425919, 35.894062, 32.873085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089878, 35.685513, 32.595547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830849, 35.384789, 32.545864>,  <43.675430, 35.204353, 32.516056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830849, 35.384789, 32.545864>,  <44.089878, 35.685513, 32.595547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830849, 35.384789, 32.545864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291431, -0.093752, -0.951987,
		0.704068, -0.652681, 0.279812,
		-0.647577, -0.751810, -0.124204,
		43.636574, 35.159245, 32.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465725, 35.134697, 32.267437>,  <44.089878, 35.685513, 32.595547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465725, 35.134697, 32.267437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079296, 35.073788, 32.183987>,  <43.847439, 35.037243, 32.133915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079296, 35.073788, 32.183987>,  <44.465725, 35.134697, 32.267437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079296, 35.073788, 32.183987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187558, 0.141751, -0.971971,
		0.177585, -0.978119, -0.108380,
		-0.966067, -0.152280, -0.208627,
		43.789474, 35.028107, 32.121399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578304, 34.944817, 31.591843>,  <44.465725, 35.134697, 32.267437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578304, 34.944817, 31.591843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179325, 34.964348, 31.612665>,  <43.939938, 34.976067, 31.625158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179325, 34.964348, 31.612665>,  <44.578304, 34.944817, 31.591843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179325, 34.964348, 31.612665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049939, 0.043644, -0.997798,
		-0.050995, -0.997853, -0.041094,
		-0.997449, 0.048831, 0.052057,
		43.880089, 34.978996, 31.628283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224579, 34.432285, 31.066143>,  <44.578304, 34.944817, 31.591843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224579, 34.432285, 31.066143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982800, 34.736732, 31.160246>,  <43.837734, 34.919399, 31.216707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982800, 34.736732, 31.160246>,  <44.224579, 34.432285, 31.066143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982800, 34.736732, 31.160246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080282, 0.235609, -0.968526,
		-0.792592, -0.604307, -0.081308,
		-0.604444, 0.761118, 0.235257,
		43.801468, 34.965069, 31.230824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643948, 34.302734, 30.700727>,  <44.224579, 34.432285, 31.066143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643948, 34.302734, 30.700727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630535, 34.696259, 30.771141>,  <43.622490, 34.932373, 30.813389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630535, 34.696259, 30.771141>,  <43.643948, 34.302734, 30.700727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630535, 34.696259, 30.771141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014889, 0.175623, -0.984345,
		-0.999327, -0.035625, 0.008759,
		-0.033529, 0.983813, 0.176035,
		43.620476, 34.991402, 30.823952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150414, 34.502460, 30.179930>,  <43.643948, 34.302734, 30.700727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150414, 34.502460, 30.179930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322227, 34.840874, 30.306246>,  <43.425316, 35.043922, 30.382034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322227, 34.840874, 30.306246>,  <43.150414, 34.502460, 30.179930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322227, 34.840874, 30.306246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037796, 0.332542, -0.942330,
		-0.902259, 0.416699, 0.110861,
		0.429535, 0.846036, 0.315789,
		43.451088, 35.094685, 30.400982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832184, 34.992447, 29.889851>,  <43.150414, 34.502460, 30.179930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832184, 34.992447, 29.889851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174675, 35.174427, 29.987747>,  <43.380169, 35.283615, 30.046486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174675, 35.174427, 29.987747>,  <42.832184, 34.992447, 29.889851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174675, 35.174427, 29.987747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070188, 0.366916, -0.927602,
		-0.511811, 0.811416, 0.282232,
		0.856226, 0.454947, 0.244743,
		43.431541, 35.310913, 30.061171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295490, 35.358707, 30.057892>,  <42.832184, 34.992447, 29.889851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295490, 35.358707, 30.057892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951530, 35.375446, 29.854391>,  <41.745155, 35.385490, 29.732290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951530, 35.375446, 29.854391>,  <42.295490, 35.358707, 30.057892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951530, 35.375446, 29.854391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510049, -0.029995, 0.859622,
		0.020711, 0.998674, 0.047135,
		-0.859896, 0.041845, -0.508751,
		41.693562, 35.388000, 29.701765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942440, 35.792347, 30.350828>,  <42.295490, 35.358707, 30.057892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942440, 35.792347, 30.350828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657944, 35.579529, 30.167061>,  <41.487247, 35.451839, 30.056801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657944, 35.579529, 30.167061>,  <41.942440, 35.792347, 30.350828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657944, 35.579529, 30.167061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590053, 0.096649, 0.801558,
		-0.382062, 0.841183, -0.382675,
		-0.711242, -0.532044, -0.459417,
		41.444572, 35.419914, 30.029236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340542, 36.204941, 30.263313>,  <41.942440, 35.792347, 30.350828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340542, 36.204941, 30.263313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224960, 35.822002, 30.263582>,  <41.155609, 35.592239, 30.263744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224960, 35.822002, 30.263582>,  <41.340542, 36.204941, 30.263313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224960, 35.822002, 30.263582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519303, 0.157333, 0.839983,
		-0.804257, 0.242368, -0.542613,
		-0.288956, -0.957342, 0.000674,
		41.138275, 35.534801, 30.263784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823967, 36.285885, 30.565931>,  <41.340542, 36.204941, 30.263313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823967, 36.285885, 30.565931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837708, 35.889061, 30.614317>,  <40.845951, 35.650967, 30.643349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837708, 35.889061, 30.614317>,  <40.823967, 36.285885, 30.565931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837708, 35.889061, 30.614317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288331, 0.106052, 0.951640,
		-0.956914, -0.067567, -0.282400,
		0.034350, -0.992062, 0.120965,
		40.848011, 35.591442, 30.650606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155445, 36.074001, 30.889753>,  <40.823967, 36.285885, 30.565931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155445, 36.074001, 30.889753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383911, 35.756889, 30.974863>,  <40.520992, 35.566624, 31.025928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383911, 35.756889, 30.974863>,  <40.155445, 36.074001, 30.889753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383911, 35.756889, 30.974863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405357, -0.047021, 0.912948,
		-0.713759, -0.607696, -0.348214,
		0.571169, -0.792776, 0.212773,
		40.555264, 35.519058, 31.038694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737030, 35.507092, 31.119305>,  <40.155445, 36.074001, 30.889753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737030, 35.507092, 31.119305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102112, 35.419113, 31.257053>,  <40.321163, 35.366325, 31.339703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102112, 35.419113, 31.257053>,  <39.737030, 35.507092, 31.119305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102112, 35.419113, 31.257053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360254, -0.035416, 0.932182,
		-0.192832, -0.974869, -0.111560,
		0.912706, -0.219945, 0.344371,
		40.375923, 35.353130, 31.360365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577667, 34.971169, 31.539499>,  <39.737030, 35.507092, 31.119305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577667, 34.971169, 31.539499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931190, 35.114258, 31.660105>,  <40.143307, 35.200111, 31.732468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931190, 35.114258, 31.660105>,  <39.577667, 34.971169, 31.539499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931190, 35.114258, 31.660105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260670, -0.158637, 0.952305,
		0.388497, -0.920253, -0.046956,
		0.883810, 0.357728, 0.301513,
		40.196335, 35.221577, 31.750559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758537, 34.532764, 32.064457>,  <39.577667, 34.971169, 31.539499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758537, 34.532764, 32.064457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013771, 34.838490, 32.101711>,  <40.166912, 35.021923, 32.124065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013771, 34.838490, 32.101711>,  <39.758537, 34.532764, 32.064457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013771, 34.838490, 32.101711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177403, 0.028230, 0.983733,
		0.749247, -0.644232, 0.153604,
		0.638089, 0.764309, 0.093137,
		40.205196, 35.067783, 32.129654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228241, 34.323353, 32.619640>,  <39.758537, 34.532764, 32.064457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228241, 34.323353, 32.619640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269436, 34.715618, 32.553066>,  <40.294151, 34.950977, 32.513123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269436, 34.715618, 32.553066>,  <40.228241, 34.323353, 32.619640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269436, 34.715618, 32.553066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134786, 0.179538, 0.974474,
		0.985509, -0.077921, 0.150669,
		0.102983, 0.980660, -0.166434,
		40.300331, 35.009815, 32.503136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717503, 34.540020, 33.063324>,  <40.228241, 34.323353, 32.619640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717503, 34.540020, 33.063324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480976, 34.854065, 32.989624>,  <40.339062, 35.042492, 32.945404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.480976, 34.854065, 32.989624>,  <40.717503, 34.540020, 33.063324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480976, 34.854065, 32.989624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070604, 0.177194, 0.981640,
		0.803344, 0.593467, -0.049345,
		-0.591315, 0.785111, -0.184250,
		40.303581, 35.089600, 32.934349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973717, 35.152607, 33.271130>,  <40.717503, 34.540020, 33.063324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973717, 35.152607, 33.271130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583313, 35.239082, 33.260757>,  <40.349072, 35.290970, 33.254532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583313, 35.239082, 33.260757>,  <40.973717, 35.152607, 33.271130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583313, 35.239082, 33.260757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028367, 0.244328, 0.969278,
		0.215887, 0.945285, -0.244598,
		-0.976006, 0.216193, -0.025932,
		40.290512, 35.303940, 33.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959194, 35.773521, 33.614769>,  <40.973717, 35.152607, 33.271130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959194, 35.773521, 33.614769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575958, 35.659126, 33.621429>,  <40.346016, 35.590488, 33.625427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575958, 35.659126, 33.621429>,  <40.959194, 35.773521, 33.614769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575958, 35.659126, 33.621429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064775, 0.272893, 0.959861,
		-0.279052, 0.918554, -0.279980,
		-0.958089, -0.285987, 0.016652,
		40.288532, 35.573330, 33.626427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.320644, 36.863251, 26.095936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126038, 36.517628, 26.044233>,  <42.009274, 36.310253, 26.013212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126038, 36.517628, 26.044233>,  <42.320644, 36.863251, 26.095936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126038, 36.517628, 26.044233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341060, 0.051626, 0.938623,
		-0.804349, 0.500742, -0.319812,
		-0.486519, -0.864055, -0.129258,
		41.980083, 36.258411, 26.005455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650116, 36.948895, 26.379198>,  <42.320644, 36.863251, 26.095936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650116, 36.948895, 26.379198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711010, 36.553711, 26.368158>,  <41.747547, 36.316601, 26.361534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711010, 36.553711, 26.368158>,  <41.650116, 36.948895, 26.379198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711010, 36.553711, 26.368158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128113, -0.047416, 0.990625,
		-0.980006, -0.147274, -0.133789,
		0.152237, -0.987958, -0.027601,
		41.756680, 36.257324, 26.359879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092861, 36.666599, 26.670816>,  <41.650116, 36.948895, 26.379198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092861, 36.666599, 26.670816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376572, 36.389004, 26.720314>,  <41.546799, 36.222446, 26.750013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376572, 36.389004, 26.720314>,  <41.092861, 36.666599, 26.670816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376572, 36.389004, 26.720314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164184, 0.008084, 0.986397,
		-0.685545, -0.719944, -0.108208,
		0.709275, -0.693985, 0.123746,
		41.589355, 36.180809, 26.757439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846260, 36.252499, 27.271206>,  <41.092861, 36.666599, 26.670816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846260, 36.252499, 27.271206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219402, 36.113556, 27.233000>,  <41.443287, 36.030190, 27.210075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219402, 36.113556, 27.233000>,  <40.846260, 36.252499, 27.271206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219402, 36.113556, 27.233000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027589, -0.195474, 0.980321,
		-0.359193, -0.917133, -0.172766,
		0.932855, -0.347358, -0.095515,
		41.499260, 36.009350, 27.204346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856567, 35.703220, 27.664825>,  <40.846260, 36.252499, 27.271206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856567, 35.703220, 27.664825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231213, 35.839394, 27.631672>,  <41.455997, 35.921097, 27.611780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231213, 35.839394, 27.631672>,  <40.856567, 35.703220, 27.664825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231213, 35.839394, 27.631672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169292, -0.232585, 0.957729,
		0.306763, -0.911049, -0.275474,
		0.936609, 0.340432, -0.082885,
		41.512196, 35.941525, 27.606806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299644, 35.169556, 27.817047>,  <40.856567, 35.703220, 27.664825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299644, 35.169556, 27.817047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529644, 35.489727, 27.884798>,  <41.667645, 35.681831, 27.925449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529644, 35.489727, 27.884798>,  <41.299644, 35.169556, 27.817047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529644, 35.489727, 27.884798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137607, -0.298693, 0.944376,
		0.806497, -0.519710, -0.281893,
		0.575002, 0.800427, 0.169379,
		41.702145, 35.729855, 27.935612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010551, 34.960213, 27.941072>,  <41.299644, 35.169556, 27.817047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010551, 34.960213, 27.941072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940147, 35.308865, 28.124065>,  <41.897903, 35.518055, 28.233862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940147, 35.308865, 28.124065>,  <42.010551, 34.960213, 27.941072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940147, 35.308865, 28.124065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125422, -0.441093, 0.888654,
		0.976366, 0.213789, -0.031685,
		-0.176009, 0.871626, 0.457482,
		41.887344, 35.570351, 28.261311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380253, 34.923931, 28.605759>,  <42.010551, 34.960213, 27.941072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380253, 34.923931, 28.605759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133678, 35.228233, 28.687012>,  <41.985733, 35.410812, 28.735764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133678, 35.228233, 28.687012>,  <42.380253, 34.923931, 28.605759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133678, 35.228233, 28.687012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015221, -0.269441, 0.962897,
		0.787257, 0.590473, 0.177672,
		-0.616437, 0.760752, 0.203131,
		41.948746, 35.456459, 28.747952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579777, 35.130482, 29.224161>,  <42.380253, 34.923931, 28.605759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579777, 35.130482, 29.224161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210094, 35.276207, 29.178352>,  <41.988285, 35.363644, 29.150867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210094, 35.276207, 29.178352>,  <42.579777, 35.130482, 29.224161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210094, 35.276207, 29.178352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202557, -0.213422, 0.955731,
		0.323745, 0.906491, 0.271041,
		-0.924208, 0.364315, -0.114522,
		41.932831, 35.385502, 29.143995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933311, 35.799294, 29.405329>,  <42.579777, 35.130482, 29.224161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933311, 35.799294, 29.405329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306507, 35.713631, 29.521032>,  <43.530426, 35.662235, 29.590454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306507, 35.713631, 29.521032>,  <42.933311, 35.799294, 29.405329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306507, 35.713631, 29.521032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352646, 0.383308, -0.853649,
		0.071936, 0.898450, 0.433142,
		0.932988, -0.214154, 0.289261,
		43.586403, 35.649384, 29.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351280, 36.301346, 29.192774>,  <42.933311, 35.799294, 29.405329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351280, 36.301346, 29.192774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605228, 35.997845, 29.251055>,  <43.757599, 35.815742, 29.286024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605228, 35.997845, 29.251055>,  <43.351280, 36.301346, 29.192774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605228, 35.997845, 29.251055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493514, 0.253153, -0.832080,
		0.594460, 0.600171, 0.535176,
		0.634872, -0.758755, 0.145703,
		43.795689, 35.770218, 29.294765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081852, 36.596378, 28.980652>,  <43.351280, 36.301346, 29.192774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081852, 36.596378, 28.980652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107323, 36.197266, 28.972843>,  <44.122604, 35.957798, 28.968157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107323, 36.197266, 28.972843>,  <44.081852, 36.596378, 28.980652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107323, 36.197266, 28.972843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594753, 0.053653, -0.802116,
		0.801382, 0.039468, 0.596849,
		0.063680, -0.997779, -0.019523,
		44.126427, 35.897930, 28.966986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706585, 36.458939, 28.754244>,  <44.081852, 36.596378, 28.980652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706585, 36.458939, 28.754244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561237, 36.090309, 28.699610>,  <44.474030, 35.869129, 28.666830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561237, 36.090309, 28.699610>,  <44.706585, 36.458939, 28.754244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561237, 36.090309, 28.699610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538173, -0.087967, -0.838231,
		0.760481, -0.378095, 0.527933,
		-0.363372, -0.921578, -0.136583,
		44.452225, 35.813835, 28.658634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313030, 35.990036, 28.548409>,  <44.706585, 36.458939, 28.754244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313030, 35.990036, 28.548409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977200, 35.820019, 28.413084>,  <44.775703, 35.718010, 28.331890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977200, 35.820019, 28.413084>,  <45.313030, 35.990036, 28.548409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977200, 35.820019, 28.413084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452363, -0.202160, -0.868619,
		0.300809, -0.882309, 0.362003,
		-0.839573, -0.425045, -0.338312,
		44.725327, 35.692505, 28.311590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512890, 35.453342, 28.176397>,  <45.313030, 35.990036, 28.548409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512890, 35.453342, 28.176397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151299, 35.531841, 28.024446>,  <44.934341, 35.578941, 27.933275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151299, 35.531841, 28.024446>,  <45.512890, 35.453342, 28.176397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151299, 35.531841, 28.024446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381069, -0.033169, -0.923952,
		-0.193924, -0.979993, -0.044800,
		-0.903980, 0.196249, -0.379877,
		44.880104, 35.590717, 27.910484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505524, 34.995159, 27.620138>,  <45.512890, 35.453342, 28.176397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505524, 34.995159, 27.620138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208530, 35.253044, 27.547405>,  <45.030334, 35.407776, 27.503765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208530, 35.253044, 27.547405>,  <45.505524, 34.995159, 27.620138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208530, 35.253044, 27.547405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166853, -0.084893, -0.982321,
		-0.648754, -0.759694, -0.044541,
		-0.742481, 0.644716, -0.181832,
		44.985786, 35.446461, 27.492855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137966, 34.782146, 26.971426>,  <45.505524, 34.995159, 27.620138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137966, 34.782146, 26.971426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052891, 35.167721, 27.035412>,  <45.001846, 35.399067, 27.073803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052891, 35.167721, 27.035412>,  <45.137966, 34.782146, 26.971426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052891, 35.167721, 27.035412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026462, 0.169333, -0.985204,
		-0.976761, -0.205311, -0.061523,
		-0.212691, 0.963937, 0.159965,
		44.989082, 35.456902, 27.083401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473289, 34.923813, 26.613110>,  <45.137966, 34.782146, 26.971426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473289, 34.923813, 26.613110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671291, 35.270672, 26.635138>,  <44.790092, 35.478786, 26.648355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671291, 35.270672, 26.635138>,  <44.473289, 34.923813, 26.613110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671291, 35.270672, 26.635138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021912, 0.075820, -0.996881,
		-0.868614, 0.492254, 0.056532,
		0.495005, 0.867143, 0.055072,
		44.819794, 35.530815, 26.651659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170338, 35.352528, 26.019365>,  <44.473289, 34.923813, 26.613110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170338, 35.352528, 26.019365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513939, 35.538086, 26.106005>,  <44.720100, 35.649422, 26.157988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513939, 35.538086, 26.106005>,  <44.170338, 35.352528, 26.019365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513939, 35.538086, 26.106005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249522, -0.009923, -0.968318,
		-0.447052, 0.885833, -0.124277,
		0.859001, 0.463899, 0.216599,
		44.771641, 35.677254, 26.170984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342873, 35.602917, 25.305706>,  <44.170338, 35.352528, 26.019365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342873, 35.602917, 25.305706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668163, 35.602539, 25.538486>,  <44.863338, 35.602310, 25.678154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668163, 35.602539, 25.538486>,  <44.342873, 35.602917, 25.305706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668163, 35.602539, 25.538486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576949, -0.129527, -0.806444,
		0.076143, 0.991576, -0.104787,
		0.813223, -0.000949, 0.581951,
		44.912128, 35.602253, 25.713072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795128, 36.084595, 24.948021>,  <44.342873, 35.602917, 25.305706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795128, 36.084595, 24.948021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053253, 35.898838, 25.190643>,  <45.208130, 35.787384, 25.336216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053253, 35.898838, 25.190643>,  <44.795128, 36.084595, 24.948021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053253, 35.898838, 25.190643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575946, -0.225853, -0.785669,
		0.501848, 0.856349, 0.121715,
		0.645318, -0.464388, 0.606555,
		45.246849, 35.759521, 25.372610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531223, 36.303047, 24.735538>,  <44.795128, 36.084595, 24.948021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531223, 36.303047, 24.735538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572300, 35.965641, 24.946415>,  <45.596947, 35.763195, 25.072941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572300, 35.965641, 24.946415>,  <45.531223, 36.303047, 24.735538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572300, 35.965641, 24.946415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631519, -0.354192, -0.689733,
		0.768529, 0.403765, 0.496323,
		0.102696, -0.843518, 0.527192,
		45.603107, 35.712585, 25.104572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263287, 36.133495, 24.704525>,  <45.531223, 36.303047, 24.735538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263287, 36.133495, 24.704525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052689, 35.800388, 24.772995>,  <45.926331, 35.600525, 24.814077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052689, 35.800388, 24.772995>,  <46.263287, 36.133495, 24.704525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052689, 35.800388, 24.772995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362282, -0.401903, -0.840967,
		0.769126, -0.380752, 0.513297,
		-0.526495, -0.832768, 0.171175,
		45.894741, 35.550556, 24.824347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.408947, 31.044941, 25.059288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642326, 31.367332, 25.099270>,  <39.782352, 31.560768, 25.123259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.642326, 31.367332, 25.099270>,  <39.408947, 31.044941, 25.059288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642326, 31.367332, 25.099270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101726, -0.049580, 0.993576,
		0.805756, -0.589865, 0.053062,
		0.583445, 0.805978, 0.099954,
		39.817360, 31.609125, 25.129255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007553, 30.913025, 25.538786>,  <39.408947, 31.044941, 25.059288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007553, 30.913025, 25.538786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932915, 31.305996, 25.536974>,  <39.888130, 31.541779, 25.535887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.932915, 31.305996, 25.536974>,  <40.007553, 30.913025, 25.538786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932915, 31.305996, 25.536974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184619, -0.030537, 0.982336,
		0.964934, 0.184137, 0.187073,
		-0.186597, 0.982426, -0.004529,
		39.876934, 31.600723, 25.535616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379128, 31.070728, 26.136557>,  <40.007553, 30.913025, 25.538786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379128, 31.070728, 26.136557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118416, 31.362766, 26.054434>,  <39.961990, 31.537989, 26.005159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118416, 31.362766, 26.054434>,  <40.379128, 31.070728, 26.136557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118416, 31.362766, 26.054434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191156, 0.103822, 0.976054,
		0.733926, 0.675415, 0.071893,
		-0.651777, 0.730093, -0.205307,
		39.922882, 31.581795, 25.992842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597691, 31.683435, 26.508627>,  <40.379128, 31.070728, 26.136557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597691, 31.683435, 26.508627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203087, 31.719179, 26.453772>,  <39.966324, 31.740625, 26.420858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203087, 31.719179, 26.453772>,  <40.597691, 31.683435, 26.508627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203087, 31.719179, 26.453772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121404, 0.162522, 0.979208,
		0.109788, 0.982650, -0.149482,
		-0.986513, 0.089357, -0.137140,
		39.907131, 31.745987, 26.412630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398888, 32.240246, 26.947824>,  <40.597691, 31.683435, 26.508627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398888, 32.240246, 26.947824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065590, 32.033543, 26.869173>,  <39.865612, 31.909521, 26.821983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065590, 32.033543, 26.869173>,  <40.398888, 32.240246, 26.947824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065590, 32.033543, 26.869173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355820, 0.228981, 0.906068,
		-0.423195, 0.824941, -0.374670,
		-0.833246, -0.516759, -0.196627,
		39.815617, 31.878515, 26.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873512, 32.674080, 27.183062>,  <40.398888, 32.240246, 26.947824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873512, 32.674080, 27.183062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.714874, 32.308525, 27.148384>,  <39.619690, 32.089191, 27.127577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.714874, 32.308525, 27.148384>,  <39.873512, 32.674080, 27.183062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714874, 32.308525, 27.148384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383033, 0.078917, 0.920357,
		-0.834263, 0.398220, -0.381348,
		-0.396600, -0.913889, -0.086694,
		39.595894, 32.034359, 27.122375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243282, 32.800182, 27.445381>,  <39.873512, 32.674080, 27.183062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243282, 32.800182, 27.445381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289459, 32.403656, 27.470556>,  <39.317165, 32.165741, 27.485662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289459, 32.403656, 27.470556>,  <39.243282, 32.800182, 27.445381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289459, 32.403656, 27.470556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487913, -0.001397, 0.872892,
		-0.865226, -0.131473, -0.483838,
		0.115438, -0.991319, 0.062939,
		39.324089, 32.106262, 27.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567669, 32.572659, 27.687452>,  <39.243282, 32.800182, 27.445381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567669, 32.572659, 27.687452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840549, 32.288345, 27.756020>,  <39.004276, 32.117756, 27.797159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840549, 32.288345, 27.756020>,  <38.567669, 32.572659, 27.687452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840549, 32.288345, 27.756020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408640, -0.176237, 0.895519,
		-0.606313, -0.680972, -0.410685,
		0.682201, -0.710786, 0.171417,
		39.045212, 32.075111, 27.807446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276855, 32.000481, 28.005287>,  <38.567669, 32.572659, 27.687452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276855, 32.000481, 28.005287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.658089, 31.934416, 28.106766>,  <38.886829, 31.894777, 28.167652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.658089, 31.934416, 28.106766>,  <38.276855, 32.000481, 28.005287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658089, 31.934416, 28.106766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293268, -0.296001, 0.909053,
		-0.075043, -0.940801, -0.330548,
		0.953080, -0.165157, 0.253694,
		38.944012, 31.884869, 28.182875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195400, 31.359594, 28.394339>,  <38.276855, 32.000481, 28.005287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195400, 31.359594, 28.394339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540409, 31.535238, 28.494930>,  <38.747414, 31.640625, 28.555286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540409, 31.535238, 28.494930>,  <38.195400, 31.359594, 28.394339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540409, 31.535238, 28.494930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198538, -0.163467, 0.966365,
		0.465448, -0.883438, -0.053814,
		0.862520, 0.439109, 0.251482,
		38.799164, 31.666971, 28.570375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520836, 30.860882, 28.837578>,  <38.195400, 31.359594, 28.394339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520836, 30.860882, 28.837578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701088, 31.210224, 28.911528>,  <38.809238, 31.419830, 28.955898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701088, 31.210224, 28.911528>,  <38.520836, 30.860882, 28.837578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701088, 31.210224, 28.911528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041903, -0.186171, 0.981624,
		0.891727, -0.450095, -0.047298,
		0.450630, 0.873358, 0.184874,
		38.836277, 31.472231, 28.966990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999741, 30.603277, 29.164873>,  <38.520836, 30.860882, 28.837578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999741, 30.603277, 29.164873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978359, 30.994482, 29.245508>,  <38.965530, 31.229204, 29.293888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978359, 30.994482, 29.245508>,  <38.999741, 30.603277, 29.164873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978359, 30.994482, 29.245508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274860, -0.179667, 0.944549,
		0.959997, 0.105896, -0.259212,
		-0.053452, 0.978011, 0.201586,
		38.962322, 31.287886, 29.305984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688305, 30.814260, 29.486122>,  <38.999741, 30.603277, 29.164873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688305, 30.814260, 29.486122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376617, 31.041771, 29.591431>,  <39.189606, 31.178278, 29.654615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376617, 31.041771, 29.591431>,  <39.688305, 30.814260, 29.486122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376617, 31.041771, 29.591431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228852, -0.132851, 0.964353,
		0.583477, 0.811692, -0.026646,
		-0.779218, 0.568776, 0.263273,
		39.142853, 31.212404, 29.670412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952877, 31.245140, 30.089388>,  <39.688305, 30.814260, 29.486122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952877, 31.245140, 30.089388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553452, 31.223894, 30.092316>,  <39.313797, 31.211147, 30.094072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553452, 31.223894, 30.092316>,  <39.952877, 31.245140, 30.089388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553452, 31.223894, 30.092316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012251, -0.093156, 0.995576,
		-0.052199, 0.994234, 0.093673,
		-0.998562, -0.053116, 0.007318,
		39.253883, 31.207960, 30.094511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708988, 31.420364, 30.202105>,  <39.952877, 31.245140, 30.089388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708988, 31.420364, 30.202105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954754, 31.160526, 30.381222>,  <41.102215, 31.004623, 30.488693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954754, 31.160526, 30.381222>,  <40.708988, 31.420364, 30.202105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954754, 31.160526, 30.381222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361226, -0.272974, -0.891628,
		0.701432, 0.709587, 0.066929,
		0.614418, -0.649593, 0.447794,
		41.139080, 30.965649, 30.515560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424484, 31.557695, 30.060432>,  <40.708988, 31.420364, 30.202105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424484, 31.557695, 30.060432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400890, 31.168993, 30.151833>,  <41.386734, 30.935772, 30.206673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400890, 31.168993, 30.151833>,  <41.424484, 31.557695, 30.060432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400890, 31.168993, 30.151833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488901, -0.227685, -0.842102,
		0.870343, 0.062045, 0.488522,
		-0.058981, -0.971756, 0.228498,
		41.383198, 30.877466, 30.220383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995514, 31.292614, 29.845608>,  <41.424484, 31.557695, 30.060432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995514, 31.292614, 29.845608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766361, 30.965582, 29.868835>,  <41.628868, 30.769363, 29.882772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.766361, 30.965582, 29.868835>,  <41.995514, 31.292614, 29.845608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766361, 30.965582, 29.868835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374336, -0.324010, -0.868844,
		0.729164, -0.476007, 0.491668,
		-0.572881, -0.817579, 0.058070,
		41.594498, 30.720308, 29.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362602, 30.756947, 29.575090>,  <41.995514, 31.292614, 29.845608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362602, 30.756947, 29.575090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.994915, 30.599455, 29.573568>,  <41.774303, 30.504959, 29.572655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.994915, 30.599455, 29.573568>,  <42.362602, 30.756947, 29.575090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994915, 30.599455, 29.573568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206890, -0.474744, -0.855461,
		0.335014, -0.787143, 0.517853,
		-0.919218, -0.393730, -0.003806,
		41.719151, 30.481337, 29.572426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488289, 30.034704, 29.306475>,  <42.362602, 30.756947, 29.575090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488289, 30.034704, 29.306475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104126, 30.131969, 29.252090>,  <41.873627, 30.190329, 29.219460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104126, 30.131969, 29.252090>,  <42.488289, 30.034704, 29.306475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104126, 30.131969, 29.252090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018029, -0.432758, -0.901330,
		-0.278006, -0.868098, 0.411241,
		-0.960410, 0.243160, -0.135960,
		41.816002, 30.204918, 29.211302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192673, 29.435194, 29.067030>,  <42.488289, 30.034704, 29.306475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192673, 29.435194, 29.067030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.943752, 29.727720, 28.955376>,  <41.794399, 29.903236, 28.888382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.943752, 29.727720, 28.955376>,  <42.192673, 29.435194, 29.067030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943752, 29.727720, 28.955376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038249, -0.384581, -0.922299,
		-0.781843, -0.563270, 0.267297,
		-0.622301, 0.731317, -0.279138,
		41.757061, 29.947115, 28.871634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761173, 29.083250, 28.624706>,  <42.192673, 29.435194, 29.067030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761173, 29.083250, 28.624706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671097, 29.464882, 28.545694>,  <41.617050, 29.693861, 28.498287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671097, 29.464882, 28.545694>,  <41.761173, 29.083250, 28.624706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671097, 29.464882, 28.545694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335696, -0.266303, -0.903544,
		-0.914656, -0.137163, 0.380251,
		-0.225195, 0.954080, -0.197531,
		41.603539, 29.751106, 28.486435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195858, 29.016716, 28.103998>,  <41.761173, 29.083250, 28.624706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195858, 29.016716, 28.103998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361256, 29.378378, 28.061043>,  <41.460495, 29.595375, 28.035271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361256, 29.378378, 28.061043>,  <41.195858, 29.016716, 28.103998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361256, 29.378378, 28.061043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081892, -0.080533, -0.993382,
		-0.906819, 0.419547, 0.040743,
		0.413489, 0.904154, -0.107387,
		41.485302, 29.649624, 28.028828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776356, 29.369421, 27.514526>,  <41.195858, 29.016716, 28.103998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776356, 29.369421, 27.514526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130573, 29.551018, 27.553926>,  <41.343105, 29.659975, 27.577566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.130573, 29.551018, 27.553926>,  <40.776356, 29.369421, 27.514526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130573, 29.551018, 27.553926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129197, -0.037010, -0.990928,
		-0.446226, 0.890238, -0.091428,
		0.885545, 0.453990, 0.098501,
		41.396236, 29.687214, 27.583477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734272, 29.964453, 27.024691>,  <40.776356, 29.369421, 27.514526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734272, 29.964453, 27.024691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116955, 29.894644, 27.117859>,  <41.346565, 29.852758, 27.173759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116955, 29.894644, 27.117859>,  <40.734272, 29.964453, 27.024691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116955, 29.894644, 27.117859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260585, 0.157185, -0.952569,
		0.129632, 0.972026, 0.195858,
		0.956708, -0.174522, 0.232920,
		41.403969, 29.842287, 27.187735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186497, 30.465792, 26.655338>,  <40.734272, 29.964453, 27.024691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186497, 30.465792, 26.655338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.446404, 30.177847, 26.752987>,  <41.602348, 30.005079, 26.811575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.446404, 30.177847, 26.752987>,  <41.186497, 30.465792, 26.655338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446404, 30.177847, 26.752987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376644, 0.025947, -0.925995,
		0.660255, 0.693631, 0.287992,
		0.649771, -0.719863, 0.244120,
		41.641335, 29.961887, 26.826223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892555, 30.647261, 26.472477>,  <41.186497, 30.465792, 26.655338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892555, 30.647261, 26.472477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912575, 30.247793, 26.477545>,  <41.924587, 30.008114, 26.480585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.912575, 30.247793, 26.477545>,  <41.892555, 30.647261, 26.472477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912575, 30.247793, 26.477545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297850, 0.002815, -0.954608,
		0.953300, 0.051550, 0.297594,
		0.050048, -0.998666, 0.012671,
		41.927589, 29.948193, 26.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489407, 30.555534, 26.110275>,  <41.892555, 30.647261, 26.472477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489407, 30.555534, 26.110275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.347210, 30.181892, 26.097172>,  <42.261890, 29.957706, 26.089310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.347210, 30.181892, 26.097172>,  <42.489407, 30.555534, 26.110275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347210, 30.181892, 26.097172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294107, -0.078524, -0.952541,
		0.887201, -0.348257, 0.302642,
		-0.355494, -0.934104, -0.032758,
		42.240562, 29.901661, 26.087345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984787, 30.124582, 25.730915>,  <42.489407, 30.555534, 26.110275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984787, 30.124582, 25.730915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625916, 29.953266, 25.687761>,  <42.410591, 29.850477, 25.661869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625916, 29.953266, 25.687761>,  <42.984787, 30.124582, 25.730915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625916, 29.953266, 25.687761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142734, -0.050002, -0.988497,
		0.417967, -0.902258, 0.105992,
		-0.897179, -0.428288, -0.107884,
		42.356762, 29.824780, 25.655396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475819, 29.669464, 25.722549>,  <42.984787, 30.124582, 25.730915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475819, 29.669464, 25.722549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.829601, 29.484386, 25.746698>,  <44.041870, 29.373339, 25.761189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.829601, 29.484386, 25.746698>,  <43.475819, 29.669464, 25.722549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829601, 29.484386, 25.746698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008335, 0.145027, 0.989393,
		-0.466543, -0.874574, 0.132127,
		0.884459, -0.462696, 0.060372,
		44.094940, 29.345577, 25.764811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355312, 29.279301, 26.322775>,  <43.475819, 29.669464, 25.722549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355312, 29.279301, 26.322775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.750011, 29.289999, 26.258764>,  <43.986832, 29.296417, 26.220358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.750011, 29.289999, 26.258764>,  <43.355312, 29.279301, 26.322775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750011, 29.289999, 26.258764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157392, 0.081625, 0.984157,
		0.039382, -0.996304, 0.076334,
		0.986750, 0.026744, -0.160025,
		44.046036, 29.298023, 26.210756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627125, 28.776167, 26.837303>,  <43.355312, 29.279301, 26.322775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627125, 28.776167, 26.837303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.931885, 29.023375, 26.759781>,  <44.114742, 29.171700, 26.713268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.931885, 29.023375, 26.759781>,  <43.627125, 28.776167, 26.837303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931885, 29.023375, 26.759781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198825, 0.061607, 0.978097,
		0.616424, -0.783744, -0.075939,
		0.761899, 0.618021, -0.193804,
		44.160454, 29.208780, 26.701639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123535, 28.574347, 27.265810>,  <43.627125, 28.776167, 26.837303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123535, 28.574347, 27.265810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.249378, 28.939716, 27.162521>,  <44.324886, 29.158937, 27.100548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.249378, 28.939716, 27.162521>,  <44.123535, 28.574347, 27.265810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249378, 28.939716, 27.162521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433061, 0.103952, 0.895350,
		0.844676, -0.393513, -0.362863,
		0.314611, 0.913423, -0.258221,
		44.343761, 29.213743, 27.085054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655964, 28.613108, 27.660322>,  <44.123535, 28.574347, 27.265810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655964, 28.613108, 27.660322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.578182, 28.983297, 27.530283>,  <44.531513, 29.205410, 27.452259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.578182, 28.983297, 27.530283>,  <44.655964, 28.613108, 27.660322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578182, 28.983297, 27.530283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223726, 0.364532, 0.903915,
		0.955057, 0.103039, -0.277938,
		-0.194456, 0.925472, -0.325096,
		44.519844, 29.260939, 27.432755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289093, 29.015316, 27.867510>,  <44.655964, 28.613108, 27.660322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289093, 29.015316, 27.867510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.965626, 29.249331, 27.842873>,  <44.771545, 29.389738, 27.828091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.965626, 29.249331, 27.842873>,  <45.289093, 29.015316, 27.867510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965626, 29.249331, 27.842873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204269, 0.377443, 0.903223,
		0.551664, 0.717824, -0.424729,
		-0.808666, 0.585034, -0.061593,
		44.723026, 29.424841, 27.824394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483379, 29.730516, 27.994295>,  <45.289093, 29.015316, 27.867510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483379, 29.730516, 27.994295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.090397, 29.705826, 28.064684>,  <44.854607, 29.691011, 28.106916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.090397, 29.705826, 28.064684>,  <45.483379, 29.730516, 27.994295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090397, 29.705826, 28.064684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131943, 0.436760, 0.889850,
		-0.131783, 0.897458, -0.420954,
		-0.982458, -0.061725, 0.175970,
		44.795658, 29.687307, 28.117476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344334, 30.389141, 28.246912>,  <45.483379, 29.730516, 27.994295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344334, 30.389141, 28.246912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.027229, 30.166044, 28.345261>,  <44.836967, 30.032187, 28.404270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.027229, 30.166044, 28.345261>,  <45.344334, 30.389141, 28.246912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027229, 30.166044, 28.345261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045502, 0.348102, 0.936352,
		-0.607833, 0.753490, -0.250583,
		-0.792760, -0.557744, 0.245873,
		44.789402, 29.998720, 28.419022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005150, 30.761839, 28.844481>,  <45.344334, 30.389141, 28.246912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005150, 30.761839, 28.844481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.877941, 30.382608, 28.845716>,  <44.801617, 30.155069, 28.846458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.877941, 30.382608, 28.845716>,  <45.005150, 30.761839, 28.844481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877941, 30.382608, 28.845716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196523, 0.069109, 0.978061,
		-0.927491, 0.310440, -0.208298,
		-0.318024, -0.948077, 0.003090,
		44.782536, 30.098185, 28.846643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478214, 30.819628, 29.211336>,  <45.005150, 30.761839, 28.844481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478214, 30.819628, 29.211336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.569313, 30.431162, 29.239536>,  <44.623974, 30.198082, 29.256456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.569313, 30.431162, 29.239536>,  <44.478214, 30.819628, 29.211336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569313, 30.431162, 29.239536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077803, 0.054024, 0.995504,
		-0.970607, -0.232208, -0.063256,
		0.227747, -0.971165, 0.070502,
		44.637638, 30.139812, 29.260687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953350, 30.533783, 29.630604>,  <44.478214, 30.819628, 29.211336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953350, 30.533783, 29.630604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.212887, 30.233379, 29.679579>,  <44.368607, 30.053137, 29.708963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.212887, 30.233379, 29.679579>,  <43.953350, 30.533783, 29.630604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212887, 30.233379, 29.679579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135559, 0.044250, 0.989781,
		-0.748755, -0.658805, -0.073095,
		0.648838, -0.751011, 0.122439,
		44.407539, 30.008076, 29.716311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620495, 29.988764, 30.023384>,  <43.953350, 30.533783, 29.630604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620495, 29.988764, 30.023384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.012108, 29.917261, 30.062468>,  <44.247074, 29.874359, 30.085918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.012108, 29.917261, 30.062468>,  <43.620495, 29.988764, 30.023384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012108, 29.917261, 30.062468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087381, 0.064788, 0.994066,
		-0.184028, -0.981757, 0.047810,
		0.979029, -0.178758, 0.097710,
		44.305817, 29.863634, 30.091780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570068, 29.408756, 30.372667>,  <43.620495, 29.988764, 30.023384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570068, 29.408756, 30.372667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.931107, 29.565052, 30.444946>,  <44.147728, 29.658831, 30.488314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.931107, 29.565052, 30.444946>,  <43.570068, 29.408756, 30.372667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931107, 29.565052, 30.444946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176129, -0.047828, 0.983204,
		0.392821, -0.919257, 0.025651,
		0.902591, 0.390741, 0.180696,
		44.201885, 29.682274, 30.499155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739647, 29.078997, 31.029352>,  <43.570068, 29.408756, 30.372667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739647, 29.078997, 31.029352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973106, 29.399008, 30.973774>,  <44.113182, 29.591015, 30.940428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973106, 29.399008, 30.973774>,  <43.739647, 29.078997, 31.029352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973106, 29.399008, 30.973774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016653, 0.182871, 0.982996,
		0.811834, -0.571413, 0.120056,
		0.583652, 0.800028, -0.138946,
		44.148201, 29.639017, 30.932091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<47.013500, 34.854439, 24.796734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.621067, 34.906151, 24.739086>,  <46.385609, 34.937180, 24.704496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.621067, 34.906151, 24.739086>,  <47.013500, 34.854439, 24.796734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621067, 34.906151, 24.739086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034372, -0.616256, -0.786796,
		-0.190535, -0.776862, 0.600151,
		-0.981079, 0.129283, -0.144121,
		46.326744, 34.944935, 24.695850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883675, 34.158459, 24.716803>,  <47.013500, 34.854439, 24.796734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883675, 34.158459, 24.716803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.569450, 34.349831, 24.559835>,  <46.380917, 34.464653, 24.465654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.569450, 34.349831, 24.559835>,  <46.883675, 34.158459, 24.716803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569450, 34.349831, 24.559835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062148, -0.569972, -0.819310,
		-0.615651, -0.668009, 0.418016,
		-0.785564, 0.478431, -0.392419,
		46.333782, 34.493359, 24.442110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481945, 33.642563, 24.464903>,  <46.883675, 34.158459, 24.716803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481945, 33.642563, 24.464903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.340996, 33.963093, 24.271526>,  <46.256428, 34.155411, 24.155500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.340996, 33.963093, 24.271526>,  <46.481945, 33.642563, 24.464903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340996, 33.963093, 24.271526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065239, -0.536349, -0.841471,
		-0.933585, -0.264968, 0.241270,
		-0.352368, 0.801325, -0.483441,
		46.235287, 34.203491, 24.126493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835526, 33.472160, 24.259481>,  <46.481945, 33.642563, 24.464903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835526, 33.472160, 24.259481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.946491, 33.766720, 24.012659>,  <46.013069, 33.943455, 23.864567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.946491, 33.766720, 24.012659>,  <45.835526, 33.472160, 24.259481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946491, 33.766720, 24.012659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152454, -0.600384, -0.785046,
		-0.948578, 0.311854, -0.054288,
		0.277413, 0.736400, -0.617054,
		46.029716, 33.987640, 23.827543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355217, 33.372341, 23.632727>,  <45.835526, 33.472160, 24.259481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355217, 33.372341, 23.632727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.648884, 33.610996, 23.503101>,  <45.825085, 33.754189, 23.425325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.648884, 33.610996, 23.503101>,  <45.355217, 33.372341, 23.632727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648884, 33.610996, 23.503101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009602, -0.486366, -0.873702,
		-0.678899, 0.638333, -0.362804,
		0.734169, 0.596639, -0.324065,
		45.869133, 33.789989, 23.405882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155193, 33.674637, 22.961065>,  <45.355217, 33.372341, 23.632727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155193, 33.674637, 22.961065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.553352, 33.711525, 22.971432>,  <45.792248, 33.733658, 22.977652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.553352, 33.711525, 22.971432>,  <45.155193, 33.674637, 22.961065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553352, 33.711525, 22.971432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065964, -0.463669, -0.883549,
		-0.069466, 0.881195, -0.467620,
		0.995401, 0.092223, 0.025917,
		45.851974, 33.739193, 22.979206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295097, 33.780930, 22.272573>,  <45.155193, 33.674637, 22.961065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295097, 33.780930, 22.272573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.644043, 33.677959, 22.438807>,  <45.853413, 33.616177, 22.538546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.644043, 33.677959, 22.438807>,  <45.295097, 33.780930, 22.272573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644043, 33.677959, 22.438807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239538, -0.515970, -0.822433,
		0.426143, 0.817012, -0.388451,
		0.872367, -0.257425, 0.415582,
		45.905754, 33.600731, 22.563480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795902, 33.940762, 21.779207>,  <45.295097, 33.780930, 22.272573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795902, 33.940762, 21.779207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.982567, 33.670788, 22.007833>,  <46.094566, 33.508804, 22.145010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.982567, 33.670788, 22.007833>,  <45.795902, 33.940762, 21.779207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982567, 33.670788, 22.007833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161254, -0.570488, -0.805321,
		0.869611, 0.467980, -0.157389,
		0.466663, -0.674936, 0.571566,
		46.122566, 33.468307, 22.179304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339611, 33.678398, 21.321589>,  <45.795902, 33.940762, 21.779207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339611, 33.678398, 21.321589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.318317, 33.405682, 21.613434>,  <46.305542, 33.242054, 21.788540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.318317, 33.405682, 21.613434>,  <46.339611, 33.678398, 21.321589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318317, 33.405682, 21.613434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206102, -0.722416, -0.660028,
		0.977082, 0.115241, 0.178972,
		-0.053230, -0.681787, 0.729611,
		46.302349, 33.201145, 21.832317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006393, 33.316467, 21.411526>,  <46.339611, 33.678398, 21.321589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006393, 33.316467, 21.411526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.692322, 33.098000, 21.528280>,  <46.503880, 32.966919, 21.598333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.692322, 33.098000, 21.528280>,  <47.006393, 33.316467, 21.411526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692322, 33.098000, 21.528280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300570, -0.748204, -0.591480,
		0.541437, -0.376685, 0.751635,
		-0.785177, -0.546168, 0.291885,
		46.456768, 32.934151, 21.615847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292271, 32.690624, 21.422380>,  <47.006393, 33.316467, 21.411526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292271, 32.690624, 21.422380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.903076, 32.598885, 21.411848>,  <46.669559, 32.543842, 21.405529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.903076, 32.598885, 21.411848>,  <47.292271, 32.690624, 21.422380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903076, 32.598885, 21.411848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181948, -0.691665, -0.698924,
		0.142082, -0.684836, 0.714712,
		-0.972989, -0.229345, -0.026331,
		46.611179, 32.530083, 21.403948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222767, 31.932686, 21.495232>,  <47.292271, 32.690624, 21.422380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222767, 31.932686, 21.495232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.913849, 32.075253, 21.284889>,  <46.728497, 32.160793, 21.158684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.913849, 32.075253, 21.284889>,  <47.222767, 31.932686, 21.495232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913849, 32.075253, 21.284889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148310, -0.703742, -0.694803,
		-0.617703, -0.614586, 0.490640,
		-0.772300, 0.356415, -0.525853,
		46.682159, 32.182178, 21.127132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064869, 31.320187, 21.144939>,  <47.222767, 31.932686, 21.495232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064869, 31.320187, 21.144939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.827980, 31.603315, 20.990923>,  <46.685844, 31.773193, 20.898512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.827980, 31.603315, 20.990923>,  <47.064869, 31.320187, 21.144939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827980, 31.603315, 20.990923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127214, -0.553996, -0.822742,
		-0.795667, -0.438265, 0.418135,
		-0.592224, 0.707822, -0.385043,
		46.650314, 31.815662, 20.875410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322884, 31.080048, 21.166586>,  <47.064869, 31.320187, 21.144939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322884, 31.080048, 21.166586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.442986, 31.331280, 20.879431>,  <46.515049, 31.482019, 20.707138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.442986, 31.331280, 20.879431>,  <46.322884, 31.080048, 21.166586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442986, 31.331280, 20.879431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186006, -0.699610, -0.689889,
		-0.935546, 0.340675, -0.093236,
		0.300257, 0.628081, -0.717885,
		46.533062, 31.519705, 20.664064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419224, 30.608894, 20.621677>,  <46.322884, 31.080048, 21.166586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419224, 30.608894, 20.621677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.163635, 30.316217, 20.526739>,  <46.010281, 30.140612, 20.469776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.163635, 30.316217, 20.526739>,  <46.419224, 30.608894, 20.621677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163635, 30.316217, 20.526739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122656, -0.207689, 0.970475,
		-0.759385, 0.649221, 0.042962,
		-0.638975, -0.731695, -0.237347,
		45.971943, 30.096708, 20.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698593, 30.648453, 21.039263>,  <46.419224, 30.608894, 20.621677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698593, 30.648453, 21.039263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.720562, 30.262037, 20.938267>,  <45.733742, 30.030188, 20.877668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.720562, 30.262037, 20.938267>,  <45.698593, 30.648453, 21.039263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720562, 30.262037, 20.938267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291000, -0.257383, 0.921452,
		-0.955145, 0.022868, -0.295253,
		0.054921, -0.966039, -0.252492,
		45.737038, 29.972225, 20.862518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007313, 30.388643, 21.116247>,  <45.698593, 30.648453, 21.039263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007313, 30.388643, 21.116247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.261478, 30.081003, 21.143768>,  <45.413979, 29.896420, 21.160282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.261478, 30.081003, 21.143768>,  <45.007313, 30.388643, 21.116247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261478, 30.081003, 21.143768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422413, -0.271625, 0.864747,
		-0.646390, -0.578534, -0.497472,
		0.635411, -0.769102, 0.068804,
		45.452103, 29.850273, 21.164410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549324, 29.877871, 21.373671>,  <45.007313, 30.388643, 21.116247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549324, 29.877871, 21.373671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.920723, 29.741543, 21.432634>,  <45.143562, 29.659746, 21.468012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.920723, 29.741543, 21.432634>,  <44.549324, 29.877871, 21.373671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920723, 29.741543, 21.432634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299646, -0.453229, 0.839521,
		-0.219315, -0.823666, -0.522948,
		0.928501, -0.340818, 0.147408,
		45.199272, 29.639297, 21.476856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506054, 29.079479, 21.475536>,  <44.549324, 29.877871, 21.373671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506054, 29.079479, 21.475536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.850086, 29.197977, 21.641666>,  <45.056507, 29.269075, 21.741344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.850086, 29.197977, 21.641666>,  <44.506054, 29.079479, 21.475536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850086, 29.197977, 21.641666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239585, -0.484194, 0.841519,
		0.450395, -0.823282, -0.345471,
		0.860083, 0.296246, 0.415325,
		45.108112, 29.286850, 21.766264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786777, 28.493710, 21.861044>,  <44.506054, 29.079479, 21.475536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786777, 28.493710, 21.861044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946934, 28.813700, 22.039806>,  <45.043026, 29.005693, 22.147064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946934, 28.813700, 22.039806>,  <44.786777, 28.493710, 21.861044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946934, 28.813700, 22.039806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285916, -0.354293, 0.890353,
		0.870598, -0.484265, 0.086871,
		0.400389, 0.799978, 0.446906,
		45.067051, 29.053694, 22.173878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590218, 28.302057, 22.565708>,  <44.786777, 28.493710, 21.861044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590218, 28.302057, 22.565708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.788063, 28.643822, 22.629377>,  <44.906769, 28.848881, 22.667580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.788063, 28.643822, 22.629377>,  <44.590218, 28.302057, 22.565708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788063, 28.643822, 22.629377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208746, -0.060997, 0.976066,
		0.843672, -0.516003, 0.148185,
		0.494614, 0.854413, 0.159175,
		44.936447, 28.900145, 22.677130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037594, 28.201342, 23.092623>,  <44.590218, 28.302057, 22.565708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037594, 28.201342, 23.092623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.992710, 28.598774, 23.086836>,  <44.965782, 28.837233, 23.083364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.992710, 28.598774, 23.086836>,  <45.037594, 28.201342, 23.092623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992710, 28.598774, 23.086836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148408, -0.002360, 0.988923,
		0.982540, 0.113109, 0.147720,
		-0.112205, 0.993580, -0.014467,
		44.959049, 28.896849, 23.082495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470894, 28.452522, 23.551874>,  <45.037594, 28.201342, 23.092623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470894, 28.452522, 23.551874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.180592, 28.722139, 23.496820>,  <45.006409, 28.883909, 23.463789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.180592, 28.722139, 23.496820>,  <45.470894, 28.452522, 23.551874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180592, 28.722139, 23.496820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121179, 0.071681, 0.990039,
		0.677194, 0.735206, 0.029657,
		-0.725757, 0.674043, -0.137634,
		44.962864, 28.924353, 23.455530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533104, 28.758894, 24.111135>,  <45.470894, 28.452522, 23.551874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533104, 28.758894, 24.111135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.177280, 28.899538, 23.994478>,  <44.963787, 28.983925, 23.924484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.177280, 28.899538, 23.994478>,  <45.533104, 28.758894, 24.111135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177280, 28.899538, 23.994478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257648, 0.141020, 0.955893,
		0.377227, 0.925465, -0.034855,
		-0.889560, 0.351608, -0.291641,
		44.910412, 29.005020, 23.906986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471371, 29.480576, 24.317366>,  <45.533104, 28.758894, 24.111135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471371, 29.480576, 24.317366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.098190, 29.337109, 24.304956>,  <44.874283, 29.251028, 24.297510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.098190, 29.337109, 24.304956>,  <45.471371, 29.480576, 24.317366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098190, 29.337109, 24.304956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089317, 0.147120, 0.985078,
		-0.348752, 0.921799, -0.169290,
		-0.932950, -0.358668, -0.031024,
		44.818306, 29.229507, 24.295649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071960, 29.783346, 24.682711>,  <45.471371, 29.480576, 24.317366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071960, 29.783346, 24.682711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.785389, 29.508154, 24.636385>,  <44.613445, 29.343039, 24.608589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.785389, 29.508154, 24.636385>,  <45.071960, 29.783346, 24.682711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785389, 29.508154, 24.636385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328811, 0.186558, 0.925786,
		-0.615315, 0.701341, -0.359871,
		-0.716429, -0.687980, -0.115816,
		44.570461, 29.301760, 24.601641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568752, 30.127949, 25.001034>,  <45.071960, 29.783346, 24.682711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568752, 30.127949, 25.001034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.485195, 29.736877, 24.992031>,  <44.435062, 29.502234, 24.986629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.485195, 29.736877, 24.992031>,  <44.568752, 30.127949, 25.001034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485195, 29.736877, 24.992031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319073, 0.046380, 0.946595,
		-0.924423, 0.204914, -0.321639,
		-0.208888, -0.977681, -0.022508,
		44.422527, 29.443573, 24.985279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766159, 30.041267, 25.179565>,  <44.568752, 30.127949, 25.001034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766159, 30.041267, 25.179565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.989326, 29.719543, 25.261360>,  <44.123226, 29.526510, 25.310438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.989326, 29.719543, 25.261360>,  <43.766159, 30.041267, 25.179565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989326, 29.719543, 25.261360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211713, 0.100309, 0.972171,
		-0.802437, -0.585684, -0.114318,
		0.557918, -0.804309, 0.204489,
		44.156700, 29.478251, 25.322706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064419, 29.693079, 25.133110>,  <43.766159, 30.041267, 25.179565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064419, 29.693079, 25.133110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667015, 29.731960, 25.156715>,  <42.428574, 29.755289, 25.170879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667015, 29.731960, 25.156715>,  <43.064419, 29.693079, 25.133110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667015, 29.731960, 25.156715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063804, -0.046927, -0.996859,
		-0.094129, -0.994158, 0.052825,
		-0.993514, 0.097204, 0.059014,
		42.368961, 29.761122, 25.174419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800877, 29.107113, 24.673849>,  <43.064419, 29.693079, 25.133110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800877, 29.107113, 24.673849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.508396, 29.379414, 24.691378>,  <42.332909, 29.542795, 24.701895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.508396, 29.379414, 24.691378>,  <42.800877, 29.107113, 24.673849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508396, 29.379414, 24.691378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070075, -0.011062, -0.997480,
		-0.678554, -0.732429, 0.055792,
		-0.731201, 0.680754, 0.043819,
		42.289036, 29.583639, 24.704523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324017, 28.900759, 24.128696>,  <42.800877, 29.107113, 24.673849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324017, 28.900759, 24.128696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.214134, 29.272694, 24.226624>,  <42.148205, 29.495855, 24.285379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.214134, 29.272694, 24.226624>,  <42.324017, 28.900759, 24.128696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214134, 29.272694, 24.226624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051174, 0.268392, -0.961950,
		-0.960165, -0.251725, -0.121313,
		-0.274706, 0.929839, 0.244819,
		42.131721, 29.551645, 24.300070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754551, 29.087299, 23.692802>,  <42.324017, 28.900759, 24.128696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754551, 29.087299, 23.692802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907547, 29.436005, 23.815266>,  <41.999344, 29.645227, 23.888744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907547, 29.436005, 23.815266>,  <41.754551, 29.087299, 23.692802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907547, 29.436005, 23.815266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000012, 0.331352, -0.943507,
		-0.923959, 0.360886, 0.126728,
		0.382491, 0.871761, 0.306160,
		42.022293, 29.697533, 23.907114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314480, 29.534842, 23.311176>,  <41.754551, 29.087299, 23.692802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314480, 29.534842, 23.311176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.643471, 29.732136, 23.424490>,  <41.840866, 29.850512, 23.492477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.643471, 29.732136, 23.424490>,  <41.314480, 29.534842, 23.311176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643471, 29.732136, 23.424490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109640, 0.351225, -0.929850,
		-0.558130, 0.795840, 0.234797,
		0.822478, 0.493234, 0.283284,
		41.890213, 29.880106, 23.509476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227104, 30.235687, 23.047285>,  <41.314480, 29.534842, 23.311176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227104, 30.235687, 23.047285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615208, 30.156311, 23.102747>,  <41.848068, 30.108686, 23.136024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615208, 30.156311, 23.102747>,  <41.227104, 30.235687, 23.047285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615208, 30.156311, 23.102747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205336, 0.371245, -0.905547,
		0.128221, 0.907083, 0.400949,
		0.970256, -0.198439, 0.138655,
		41.906284, 30.096779, 23.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535049, 30.914371, 22.847363>,  <41.227104, 30.235687, 23.047285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535049, 30.914371, 22.847363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.813686, 30.628061, 22.827698>,  <41.980869, 30.456274, 22.815899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.813686, 30.628061, 22.827698>,  <41.535049, 30.914371, 22.847363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813686, 30.628061, 22.827698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204139, 0.263427, -0.942833,
		0.687809, 0.646738, 0.329620,
		0.696596, -0.715777, -0.049163,
		42.022667, 30.413328, 22.812948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415909, 31.648607, 22.599358>,  <41.535049, 30.914371, 22.847363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415909, 31.648607, 22.599358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041412, 31.734491, 22.488106>,  <40.816715, 31.786022, 22.421354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041412, 31.734491, 22.488106>,  <41.415909, 31.648607, 22.599358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041412, 31.734491, 22.488106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230247, 0.223026, 0.947231,
		0.265411, 0.950872, -0.159370,
		-0.936239, 0.214711, -0.278129,
		40.760540, 31.798904, 22.404667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291260, 32.299034, 22.918221>,  <41.415909, 31.648607, 22.599358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291260, 32.299034, 22.918221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951157, 32.100773, 22.847351>,  <40.747093, 31.981815, 22.804829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951157, 32.100773, 22.847351>,  <41.291260, 32.299034, 22.918221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951157, 32.100773, 22.847351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273650, 0.128704, 0.953179,
		-0.449644, 0.858931, -0.245067,
		-0.850256, -0.495654, -0.177176,
		40.696079, 31.952076, 22.794199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857174, 32.729469, 23.173990>,  <41.291260, 32.299034, 22.918221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857174, 32.729469, 23.173990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701019, 32.361355, 23.163649>,  <40.607327, 32.140488, 23.157444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701019, 32.361355, 23.163649>,  <40.857174, 32.729469, 23.173990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701019, 32.361355, 23.163649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292281, 0.097259, 0.951374,
		-0.873023, 0.378963, -0.306951,
		-0.390389, -0.920287, -0.025854,
		40.583904, 32.085270, 23.155893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196072, 32.883690, 23.332630>,  <40.857174, 32.729469, 23.173990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196072, 32.883690, 23.332630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247620, 32.495670, 23.415003>,  <40.278549, 32.262859, 23.464426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247620, 32.495670, 23.415003>,  <40.196072, 32.883690, 23.332630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247620, 32.495670, 23.415003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257479, 0.167810, 0.951601,
		-0.957653, -0.175652, -0.228140,
		0.128867, -0.970045, 0.205930,
		40.286278, 32.204659, 23.476782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603600, 32.694050, 23.667145>,  <40.196072, 32.883690, 23.332630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603600, 32.694050, 23.667145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830204, 32.379879, 23.766874>,  <39.966167, 32.191376, 23.826712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830204, 32.379879, 23.766874>,  <39.603600, 32.694050, 23.667145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830204, 32.379879, 23.766874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382672, 0.017212, 0.923724,
		-0.729811, -0.618713, -0.290811,
		0.566514, -0.785429, 0.249325,
		40.000160, 32.144249, 23.841673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189766, 32.197086, 24.141207>,  <39.603600, 32.694050, 23.667145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189766, 32.197086, 24.141207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567528, 32.092438, 24.220861>,  <39.794186, 32.029648, 24.268654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567528, 32.092438, 24.220861>,  <39.189766, 32.197086, 24.141207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567528, 32.092438, 24.220861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256214, -0.206045, 0.944405,
		-0.206045, -0.942921, -0.261621,
		-0.944405, 0.261621, -0.199135,
		39.850849, 32.013950, 24.280602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122799, 31.561848, 24.476488>,  <39.189766, 32.197086, 24.141207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122799, 31.561848, 24.476488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486088, 31.695280, 24.577570>,  <39.704060, 31.775339, 24.638218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.486088, 31.695280, 24.577570>,  <39.122799, 31.561848, 24.476488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486088, 31.695280, 24.577570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200037, -0.184348, 0.962290,
		0.367588, -0.924521, -0.100700,
		0.908220, 0.333582, 0.252703,
		39.758553, 31.795355, 24.653381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.505581, 32.946404, 20.199186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856277, 32.972885, 20.389738>,  <44.066696, 32.988773, 20.504068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.856277, 32.972885, 20.389738>,  <43.505581, 32.946404, 20.199186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856277, 32.972885, 20.389738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448229, 0.471603, 0.759396,
		-0.174384, -0.879322, 0.443151,
		0.876745, 0.066207, 0.476377,
		44.119301, 32.992748, 20.532652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496315, 32.659981, 20.916538>,  <43.505581, 32.946404, 20.199186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496315, 32.659981, 20.916538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792091, 32.927299, 20.884041>,  <43.969559, 33.087692, 20.864542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.792091, 32.927299, 20.884041>,  <43.496315, 32.659981, 20.916538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792091, 32.927299, 20.884041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269955, 0.404892, 0.873606,
		0.616725, -0.624049, 0.479805,
		0.739442, 0.668300, -0.081242,
		44.013924, 33.127789, 20.859669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777336, 32.739349, 21.650127>,  <43.496315, 32.659981, 20.916538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777336, 32.739349, 21.650127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.897892, 33.072773, 21.464943>,  <43.970226, 33.272827, 21.353832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.897892, 33.072773, 21.464943>,  <43.777336, 32.739349, 21.650127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897892, 33.072773, 21.464943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127496, 0.516412, 0.846796,
		0.944938, -0.196192, 0.261919,
		0.301393, 0.833563, -0.462964,
		43.988308, 33.322842, 21.326054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123852, 33.006062, 22.162357>,  <43.777336, 32.739349, 21.650127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123852, 33.006062, 22.162357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.071438, 33.313919, 21.912403>,  <44.039989, 33.498634, 21.762430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.071438, 33.313919, 21.912403>,  <44.123852, 33.006062, 22.162357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071438, 33.313919, 21.912403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410133, 0.531768, 0.740954,
		0.902563, 0.353379, 0.245974,
		-0.131036, 0.769640, -0.624887,
		44.032127, 33.544811, 21.724937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353752, 33.557281, 22.525669>,  <44.123852, 33.006062, 22.162357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353752, 33.557281, 22.525669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.125347, 33.715149, 22.237730>,  <43.988304, 33.809868, 22.064966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.125347, 33.715149, 22.237730>,  <44.353752, 33.557281, 22.525669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125347, 33.715149, 22.237730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410002, 0.622567, 0.666564,
		0.711226, 0.675756, -0.193679,
		-0.571013, 0.394669, -0.719848,
		43.954044, 33.833549, 22.021776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497391, 34.345604, 22.464920>,  <44.353752, 33.557281, 22.525669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497391, 34.345604, 22.464920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.137115, 34.239086, 22.327604>,  <43.920952, 34.175175, 22.245214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.137115, 34.239086, 22.327604>,  <44.497391, 34.345604, 22.464920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137115, 34.239086, 22.327604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427180, 0.686870, 0.587985,
		0.079221, 0.676239, -0.732410,
		-0.900689, -0.266290, -0.343290,
		43.866909, 34.159199, 22.224617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139713, 34.814144, 22.773197>,  <44.497391, 34.345604, 22.464920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139713, 34.814144, 22.773197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.834946, 34.628353, 22.592649>,  <43.652084, 34.516880, 22.484322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.834946, 34.628353, 22.592649>,  <44.139713, 34.814144, 22.773197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834946, 34.628353, 22.592649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646399, 0.501740, 0.574827,
		-0.040526, 0.729737, -0.682526,
		-0.761923, -0.464479, -0.451368,
		43.606369, 34.489010, 22.457239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705978, 35.379421, 22.645510>,  <44.139713, 34.814144, 22.773197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705978, 35.379421, 22.645510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.506508, 35.032761, 22.651636>,  <43.386826, 34.824764, 22.655312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.506508, 35.032761, 22.651636>,  <43.705978, 35.379421, 22.645510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506508, 35.032761, 22.651636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736473, 0.432960, 0.519763,
		-0.457084, 0.247915, -0.854173,
		-0.498680, -0.866651, 0.015317,
		43.356903, 34.772766, 22.656231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969421, 35.566235, 22.517981>,  <43.705978, 35.379421, 22.645510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969421, 35.566235, 22.517981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.002220, 35.215023, 22.706593>,  <43.021900, 35.004295, 22.819759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.002220, 35.215023, 22.706593>,  <42.969421, 35.566235, 22.517981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002220, 35.215023, 22.706593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681458, 0.295847, 0.669395,
		-0.727249, -0.376216, -0.574082,
		0.081997, -0.878030, 0.471530,
		43.026821, 34.951614, 22.848051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262596, 35.397015, 22.656693>,  <42.969421, 35.566235, 22.517981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262596, 35.397015, 22.656693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466236, 35.169521, 22.915106>,  <42.588421, 35.033024, 23.070154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466236, 35.169521, 22.915106>,  <42.262596, 35.397015, 22.656693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466236, 35.169521, 22.915106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680414, 0.193747, 0.706753,
		-0.527123, -0.799375, -0.288341,
		0.509096, -0.568737, 0.646034,
		42.618965, 34.998901, 23.108915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795071, 34.977219, 23.066362>,  <42.262596, 35.397015, 22.656693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795071, 34.977219, 23.066362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118050, 34.979481, 23.302324>,  <42.311836, 34.980839, 23.443901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118050, 34.979481, 23.302324>,  <41.795071, 34.977219, 23.066362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118050, 34.979481, 23.302324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583686, 0.152801, 0.797473,
		-0.085631, -0.988241, 0.126678,
		0.807451, 0.005652, 0.589907,
		42.360287, 34.981178, 23.479296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467716, 34.711323, 23.663145>,  <41.795071, 34.977219, 23.066362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467716, 34.711323, 23.663145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800331, 34.903969, 23.773849>,  <41.999901, 35.019558, 23.840273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800331, 34.903969, 23.773849>,  <41.467716, 34.711323, 23.663145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800331, 34.903969, 23.773849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489073, 0.398564, 0.775857,
		0.263358, -0.780509, 0.566965,
		0.831535, 0.481615, 0.276761,
		42.049793, 35.048454, 23.856878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804497, 34.511120, 23.915548>,  <41.467716, 34.711323, 23.663145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804497, 34.511120, 23.915548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467960, 34.697926, 23.806702>,  <40.266037, 34.810009, 23.741394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467960, 34.697926, 23.806702>,  <40.804497, 34.511120, 23.915548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467960, 34.697926, 23.806702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208669, -0.183774, -0.960565,
		-0.498603, -0.864943, 0.057166,
		-0.841340, 0.467012, -0.272117,
		40.215557, 34.838028, 23.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557903, 34.023544, 23.403509>,  <40.804497, 34.511120, 23.915548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557903, 34.023544, 23.403509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.400043, 34.380116, 23.314421>,  <40.305328, 34.594059, 23.260967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.400043, 34.380116, 23.314421>,  <40.557903, 34.023544, 23.403509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400043, 34.380116, 23.314421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187356, -0.159230, -0.969300,
		-0.899527, -0.424262, -0.104175,
		-0.394649, 0.891430, -0.222720,
		40.281651, 34.647545, 23.247604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046867, 33.843296, 22.964071>,  <40.557903, 34.023544, 23.403509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046867, 33.843296, 22.964071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130402, 34.230049, 22.905382>,  <40.180523, 34.462101, 22.870169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130402, 34.230049, 22.905382>,  <40.046867, 33.843296, 22.964071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130402, 34.230049, 22.905382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229758, -0.194339, -0.953647,
		-0.950579, 0.165441, -0.262733,
		0.208832, 0.966882, -0.146723,
		40.193050, 34.520115, 22.861364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624912, 34.031948, 22.400248>,  <40.046867, 33.843296, 22.964071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624912, 34.031948, 22.400248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.910995, 34.310516, 22.423822>,  <40.082645, 34.477657, 22.437967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.910995, 34.310516, 22.423822>,  <39.624912, 34.031948, 22.400248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910995, 34.310516, 22.423822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095448, -0.013789, -0.995339,
		-0.692365, 0.717498, -0.076334,
		0.715206, 0.696424, 0.058937,
		40.125557, 34.519444, 22.441504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549816, 34.345131, 21.833794>,  <39.624912, 34.031948, 22.400248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549816, 34.345131, 21.833794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903484, 34.488277, 21.953907>,  <40.115685, 34.574165, 22.025976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903484, 34.488277, 21.953907>,  <39.549816, 34.345131, 21.833794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903484, 34.488277, 21.953907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291885, 0.078684, -0.953211,
		-0.364753, 0.930451, -0.034886,
		0.884171, 0.357869, 0.300284,
		40.168736, 34.595638, 22.043993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728653, 34.963203, 21.379669>,  <39.549816, 34.345131, 21.833794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728653, 34.963203, 21.379669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080666, 34.833267, 21.518250>,  <40.291874, 34.755306, 21.601398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080666, 34.833267, 21.518250>,  <39.728653, 34.963203, 21.379669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080666, 34.833267, 21.518250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423771, 0.207774, -0.881616,
		0.214398, 0.922665, 0.320504,
		0.880029, -0.324837, 0.346453,
		40.344673, 34.735817, 21.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282307, 35.444870, 21.299803>,  <39.728653, 34.963203, 21.379669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282307, 35.444870, 21.299803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.486465, 35.101688, 21.323160>,  <40.608959, 34.895779, 21.337175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.486465, 35.101688, 21.323160>,  <40.282307, 35.444870, 21.299803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486465, 35.101688, 21.323160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253622, 0.085298, -0.963535,
		0.821687, 0.506596, 0.261131,
		0.510398, -0.857953, 0.058396,
		40.639584, 34.844303, 21.340679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934105, 35.605721, 21.022041>,  <40.282307, 35.444870, 21.299803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934105, 35.605721, 21.022041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893364, 35.208958, 20.991735>,  <40.868919, 34.970898, 20.973551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893364, 35.208958, 20.991735>,  <40.934105, 35.605721, 21.022041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893364, 35.208958, 20.991735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300602, 0.041915, -0.952828,
		0.948296, -0.119822, 0.293901,
		-0.101851, -0.991910, -0.075767,
		40.862808, 34.911385, 20.969006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580376, 35.265320, 20.911255>,  <40.934105, 35.605721, 21.022041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580376, 35.265320, 20.911255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.301975, 35.008541, 20.782578>,  <41.134933, 34.854473, 20.705372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.301975, 35.008541, 20.782578>,  <41.580376, 35.265320, 20.911255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301975, 35.008541, 20.782578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390059, 0.038126, -0.920000,
		0.602857, -0.765800, 0.223861,
		-0.696001, -0.641947, -0.321692,
		41.093174, 34.815956, 20.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829536, 34.990540, 20.433022>,  <41.580376, 35.265320, 20.911255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829536, 34.990540, 20.433022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467438, 34.862556, 20.321192>,  <41.250179, 34.785767, 20.254093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467438, 34.862556, 20.321192>,  <41.829536, 34.990540, 20.433022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467438, 34.862556, 20.321192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304877, -0.030823, -0.951893,
		0.295949, -0.946930, 0.125450,
		-0.905243, -0.319959, -0.279575,
		41.195866, 34.766567, 20.237320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988781, 34.533974, 19.874218>,  <41.829536, 34.990540, 20.433022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988781, 34.533974, 19.874218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594234, 34.583767, 19.831158>,  <41.357506, 34.613644, 19.805321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594234, 34.583767, 19.831158>,  <41.988781, 34.533974, 19.874218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594234, 34.583767, 19.831158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107799, -0.005568, -0.994157,
		-0.124359, -0.992205, -0.007928,
		-0.986364, 0.124487, -0.107651,
		41.298325, 34.621113, 19.798862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890755, 34.222797, 19.340412>,  <41.988781, 34.533974, 19.874218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890755, 34.222797, 19.340412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.534607, 34.401211, 19.303984>,  <41.320919, 34.508259, 19.282127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.534607, 34.401211, 19.303984>,  <41.890755, 34.222797, 19.340412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534607, 34.401211, 19.303984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017005, -0.167329, -0.985754,
		-0.454916, -0.879237, 0.141400,
		-0.890372, 0.446031, -0.091072,
		41.267494, 34.535019, 19.276663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417091, 33.800804, 18.972561>,  <41.890755, 34.222797, 19.340412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417091, 33.800804, 18.972561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284225, 34.175415, 18.927673>,  <41.204506, 34.400181, 18.900740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284225, 34.175415, 18.927673>,  <41.417091, 33.800804, 18.972561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284225, 34.175415, 18.927673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001329, -0.119441, -0.992840,
		-0.943222, -0.329633, 0.040919,
		-0.332160, 0.936523, -0.112221,
		41.184578, 34.456371, 18.894007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152042, 33.194260, 19.492056>,  <41.417091, 33.800804, 18.972561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152042, 33.194260, 19.492056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947243, 32.873257, 19.369524>,  <40.824364, 32.680653, 19.296005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.947243, 32.873257, 19.369524>,  <41.152042, 33.194260, 19.492056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947243, 32.873257, 19.369524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325313, -0.148901, 0.933809,
		-0.795005, 0.577758, -0.184831,
		-0.511995, -0.802511, -0.306329,
		40.793644, 32.632504, 19.277626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499149, 33.308662, 19.772865>,  <41.152042, 33.194260, 19.492056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499149, 33.308662, 19.772865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.573296, 32.920132, 19.713305>,  <40.617783, 32.687016, 19.677568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.573296, 32.920132, 19.713305>,  <40.499149, 33.308662, 19.772865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573296, 32.920132, 19.713305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077702, -0.165543, 0.983137,
		-0.979594, -0.170665, -0.106159,
		0.185361, -0.971323, -0.148904,
		40.628902, 32.628735, 19.668634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906387, 32.809330, 20.071264>,  <40.499149, 33.308662, 19.772865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906387, 32.809330, 20.071264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219814, 32.564655, 20.027704>,  <40.407871, 32.417850, 20.001568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219814, 32.564655, 20.027704>,  <39.906387, 32.809330, 20.071264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219814, 32.564655, 20.027704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107458, -0.306055, 0.945930,
		-0.611944, -0.729497, -0.305546,
		0.783566, -0.611690, -0.108898,
		40.454884, 32.381149, 19.995035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734547, 32.192654, 20.343336>,  <39.906387, 32.809330, 20.071264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734547, 32.192654, 20.343336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134380, 32.182003, 20.338787>,  <40.374279, 32.175613, 20.336058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134380, 32.182003, 20.338787>,  <39.734547, 32.192654, 20.343336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134380, 32.182003, 20.338787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002089, -0.325511, 0.945536,
		-0.028876, -0.945164, -0.325319,
		0.999581, -0.026624, -0.011373,
		40.434254, 32.174015, 20.335375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853184, 31.594000, 20.781921>,  <39.734547, 32.192654, 20.343336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853184, 31.594000, 20.781921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201218, 31.788527, 20.749811>,  <40.410038, 31.905243, 20.730545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201218, 31.788527, 20.749811>,  <39.853184, 31.594000, 20.781921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201218, 31.788527, 20.749811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231088, -0.258632, 0.937927,
		0.435367, -0.834630, -0.337414,
		0.870088, 0.486315, -0.080273,
		40.462246, 31.934422, 20.725729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381680, 31.083977, 20.941204>,  <39.853184, 31.594000, 20.781921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381680, 31.083977, 20.941204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506626, 31.454710, 21.024540>,  <40.581593, 31.677151, 21.074541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506626, 31.454710, 21.024540>,  <40.381680, 31.083977, 20.941204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506626, 31.454710, 21.024540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231252, -0.286906, 0.929627,
		0.921385, -0.242204, -0.303952,
		0.312365, 0.926834, 0.208341,
		40.600334, 31.732759, 21.087042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027008, 31.004150, 21.391806>,  <40.381680, 31.083977, 20.941204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027008, 31.004150, 21.391806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851967, 31.358923, 21.450943>,  <40.746944, 31.571787, 21.486425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.851967, 31.358923, 21.450943>,  <41.027008, 31.004150, 21.391806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851967, 31.358923, 21.450943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004358, -0.166515, 0.986029,
		0.899159, 0.430843, 0.076732,
		-0.437601, 0.886931, 0.147846,
		40.720688, 31.625002, 21.495296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195179, 31.134911, 22.057156>,  <41.027008, 31.004150, 21.391806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195179, 31.134911, 22.057156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.922676, 31.422022, 21.999626>,  <40.759174, 31.594288, 21.965109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.922676, 31.422022, 21.999626>,  <41.195179, 31.134911, 22.057156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922676, 31.422022, 21.999626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219136, -0.012500, 0.975614,
		0.698477, 0.696159, 0.165807,
		-0.681255, 0.717779, -0.143823,
		40.718300, 31.637356, 21.956480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989662, 31.134079, 22.243183>,  <41.195179, 31.134911, 22.057156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989662, 31.134079, 22.243183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178772, 30.788902, 22.314529>,  <42.292236, 30.581797, 22.357338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178772, 30.788902, 22.314529>,  <41.989662, 31.134079, 22.243183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178772, 30.788902, 22.314529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402841, 0.031630, -0.914723,
		0.783712, 0.504310, 0.362583,
		0.472773, -0.862943, 0.178368,
		42.320602, 30.530020, 22.368040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716751, 31.231253, 22.239395>,  <41.989662, 31.134079, 22.243183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716751, 31.231253, 22.239395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.595379, 30.862806, 22.141846>,  <42.522556, 30.641739, 22.083317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.595379, 30.862806, 22.141846>,  <42.716751, 31.231253, 22.239395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595379, 30.862806, 22.141846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375736, 0.119536, -0.918985,
		0.875645, -0.370478, 0.309827,
		-0.303428, -0.921118, -0.243873,
		42.504349, 30.586472, 22.068684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310566, 30.883556, 21.951582>,  <42.716751, 31.231253, 22.239395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310566, 30.883556, 21.951582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.986317, 30.696497, 21.810614>,  <42.791767, 30.584261, 21.726032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.986317, 30.696497, 21.810614>,  <43.310566, 30.883556, 21.951582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986317, 30.696497, 21.810614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408183, -0.019740, -0.912686,
		0.419859, -0.883695, 0.206887,
		-0.810620, -0.467647, -0.352421,
		42.743130, 30.556202, 21.704887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519855, 30.238747, 21.704594>,  <43.310566, 30.883556, 21.951582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519855, 30.238747, 21.704594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.179626, 30.344933, 21.523020>,  <42.975491, 30.408644, 21.414076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.179626, 30.344933, 21.523020>,  <43.519855, 30.238747, 21.704594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179626, 30.344933, 21.523020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427227, -0.154455, -0.890854,
		-0.306605, -0.951667, 0.017960,
		-0.850571, 0.265467, -0.453935,
		42.924454, 30.424572, 21.386839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504055, 29.685186, 21.209009>,  <43.519855, 30.238747, 21.704594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504055, 29.685186, 21.209009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.252003, 29.968151, 21.080948>,  <43.100769, 30.137930, 21.004112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.252003, 29.968151, 21.080948>,  <43.504055, 29.685186, 21.209009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252003, 29.968151, 21.080948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367298, -0.091709, -0.925571,
		-0.684122, -0.700825, -0.202042,
		-0.630135, 0.707413, -0.320152,
		43.062962, 30.180374, 20.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253613, 29.444321, 20.631905>,  <43.504055, 29.685186, 21.209009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253613, 29.444321, 20.631905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.163136, 29.832743, 20.601192>,  <43.108849, 30.065796, 20.582766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.163136, 29.832743, 20.601192>,  <43.253613, 29.444321, 20.631905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163136, 29.832743, 20.601192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315362, -0.001577, -0.948970,
		-0.921621, -0.238860, -0.305877,
		-0.226188, 0.971053, -0.076781,
		43.095280, 30.124058, 20.578157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879421, 29.538361, 19.943752>,  <43.253613, 29.444321, 20.631905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879421, 29.538361, 19.943752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984348, 29.915054, 20.027962>,  <43.047306, 30.141071, 20.078487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984348, 29.915054, 20.027962>,  <42.879421, 29.538361, 19.943752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984348, 29.915054, 20.027962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215794, 0.155392, -0.963995,
		-0.940543, 0.298304, -0.162459,
		0.262319, 0.941737, 0.210525,
		43.063046, 30.197575, 20.091120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537987, 30.028294, 19.442513>,  <42.879421, 29.538361, 19.943752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537987, 30.028294, 19.442513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850845, 30.224352, 19.596395>,  <43.038563, 30.341986, 19.688725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850845, 30.224352, 19.596395>,  <42.537987, 30.028294, 19.442513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850845, 30.224352, 19.596395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311274, 0.227491, -0.922690,
		-0.539769, 0.841431, 0.025363,
		0.782150, 0.490144, 0.384708,
		43.085491, 30.371395, 19.711807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607750, 30.766788, 19.137930>,  <42.537987, 30.028294, 19.442513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607750, 30.766788, 19.137930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.969818, 30.657269, 19.267971>,  <43.187061, 30.591557, 19.345997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.969818, 30.657269, 19.267971>,  <42.607750, 30.766788, 19.137930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969818, 30.657269, 19.267971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414646, 0.400715, -0.817005,
		0.093421, 0.874335, 0.476247,
		0.905175, -0.273799, 0.325104,
		43.241371, 30.575129, 19.365501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.226715, 33.404938, 33.274387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376659, 33.379765, 32.904411>,  <39.466625, 33.364658, 32.682426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376659, 33.379765, 32.904411>,  <39.226715, 33.404938, 33.274387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376659, 33.379765, 32.904411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309304, 0.949019, 0.060778,
		0.873964, -0.308872, 0.375215,
		0.374859, -0.062937, -0.924943,
		39.489117, 33.360882, 32.626930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924866, 33.576744, 33.634171>,  <39.226715, 33.404938, 33.274387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924866, 33.576744, 33.634171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229736, 33.441498, 33.854992>,  <40.412659, 33.360352, 33.987484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229736, 33.441498, 33.854992>,  <39.924866, 33.576744, 33.634171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229736, 33.441498, 33.854992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208594, -0.679021, -0.703860,
		0.612841, 0.651622, -0.447006,
		0.762177, -0.338111, 0.552057,
		40.458389, 33.340065, 34.020611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552589, 33.610222, 33.264931>,  <39.924866, 33.576744, 33.634171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552589, 33.610222, 33.264931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617500, 33.315052, 33.526962>,  <40.656448, 33.137951, 33.684181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617500, 33.315052, 33.526962>,  <40.552589, 33.610222, 33.264931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617500, 33.315052, 33.526962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153931, -0.636823, -0.755488,
		0.974664, 0.223438, 0.010246,
		0.162280, -0.737924, 0.655082,
		40.666183, 33.093674, 33.723488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258255, 33.347305, 33.142418>,  <40.552589, 33.610222, 33.264931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258255, 33.347305, 33.142418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.058426, 33.049595, 33.319721>,  <40.938530, 32.870968, 33.426105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.058426, 33.049595, 33.319721>,  <41.258255, 33.347305, 33.142418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058426, 33.049595, 33.319721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337013, -0.638360, -0.692040,
		0.798030, -0.196337, 0.569737,
		-0.499570, -0.744277, 0.443262,
		40.908554, 32.826313, 33.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676849, 32.752350, 32.985722>,  <41.258255, 33.347305, 33.142418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676849, 32.752350, 32.985722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.361443, 32.546654, 33.120659>,  <41.172199, 32.423237, 33.201622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.361443, 32.546654, 33.120659>,  <41.676849, 32.752350, 32.985722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361443, 32.546654, 33.120659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185566, -0.721881, -0.666673,
		0.586348, -0.463085, 0.664641,
		-0.788518, -0.514237, 0.337341,
		41.124886, 32.392384, 33.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890705, 32.033794, 33.050518>,  <41.676849, 32.752350, 32.985722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890705, 32.033794, 33.050518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.493107, 32.059288, 33.014950>,  <41.254547, 32.074585, 32.993610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.493107, 32.059288, 33.014950>,  <41.890705, 32.033794, 33.050518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493107, 32.059288, 33.014950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004055, -0.790750, -0.612126,
		-0.109328, -0.608813, 0.785745,
		-0.993998, 0.063736, -0.088920,
		41.194908, 32.078407, 32.988274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662716, 31.434269, 33.191128>,  <41.890705, 32.033794, 33.050518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662716, 31.434269, 33.191128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.371838, 31.604109, 32.975388>,  <41.197311, 31.706013, 32.845943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.371838, 31.604109, 32.975388>,  <41.662716, 31.434269, 33.191128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371838, 31.604109, 32.975388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025086, -0.768772, -0.639031,
		-0.685969, -0.478232, 0.548398,
		-0.727198, 0.424598, -0.539351,
		41.153679, 31.731489, 32.813583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355030, 30.887266, 32.927986>,  <41.662716, 31.434269, 33.191128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355030, 30.887266, 32.927986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217045, 31.184864, 32.699085>,  <41.134254, 31.363422, 32.561745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217045, 31.184864, 32.699085>,  <41.355030, 30.887266, 32.927986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217045, 31.184864, 32.699085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145135, -0.644622, -0.750598,
		-0.927329, -0.175872, 0.330349,
		-0.344959, 0.743997, -0.572252,
		41.113556, 31.408064, 32.527409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843388, 30.589420, 32.569881>,  <41.355030, 30.887266, 32.927986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843388, 30.589420, 32.569881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919960, 30.921129, 32.359867>,  <40.965904, 31.120153, 32.233856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.919960, 30.921129, 32.359867>,  <40.843388, 30.589420, 32.569881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919960, 30.921129, 32.359867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090610, -0.517715, -0.850741,
		-0.977314, 0.210434, -0.023968,
		0.191434, 0.829270, -0.525038,
		40.977390, 31.169910, 32.202354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338852, 30.607626, 32.067635>,  <40.843388, 30.589420, 32.569881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338852, 30.607626, 32.067635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640129, 30.829020, 31.925451>,  <40.820896, 30.961855, 31.840141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640129, 30.829020, 31.925451>,  <40.338852, 30.607626, 32.067635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640129, 30.829020, 31.925451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117555, -0.418419, -0.900614,
		-0.647205, 0.720126, -0.250088,
		0.753198, 0.553483, -0.355457,
		40.866089, 30.995064, 31.818813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145996, 30.774525, 31.322149>,  <40.338852, 30.607626, 32.067635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145996, 30.774525, 31.322149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537056, 30.841772, 31.372650>,  <40.771690, 30.882120, 31.402950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.537056, 30.841772, 31.372650>,  <40.145996, 30.774525, 31.322149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537056, 30.841772, 31.372650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172299, -0.296529, -0.939353,
		-0.120484, 0.940110, -0.318867,
		0.977649, 0.168117, 0.126253,
		40.830349, 30.892208, 31.410526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343315, 31.128092, 30.778090>,  <40.145996, 30.774525, 31.322149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343315, 31.128092, 30.778090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.692394, 30.988232, 30.914404>,  <40.901844, 30.904316, 30.996193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.692394, 30.988232, 30.914404>,  <40.343315, 31.128092, 30.778090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692394, 30.988232, 30.914404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259033, -0.260086, -0.930192,
		0.413877, 0.900055, -0.136406,
		0.872701, -0.349651, 0.340788,
		40.954205, 30.883337, 31.016640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777794, 31.616985, 30.747623>,  <40.343315, 31.128092, 30.778090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777794, 31.616985, 30.747623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431053, 31.448547, 30.640854>,  <39.223007, 31.347485, 30.576792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431053, 31.448547, 30.640854>,  <39.777794, 31.616985, 30.747623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431053, 31.448547, 30.640854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288875, -0.012144, 0.957290,
		-0.406352, 0.906935, -0.111117,
		-0.866850, -0.421096, -0.266925,
		39.170998, 31.322218, 30.560776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283176, 32.033428, 31.043032>,  <39.777794, 31.616985, 30.747623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283176, 32.033428, 31.043032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132118, 31.668732, 30.978405>,  <39.041485, 31.449913, 30.939629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132118, 31.668732, 30.978405>,  <39.283176, 32.033428, 31.043032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132118, 31.668732, 30.978405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429472, 0.017886, 0.902903,
		-0.820328, 0.410367, -0.398324,
		-0.377646, -0.911745, -0.161568,
		39.018826, 31.395208, 30.929934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651047, 32.177799, 31.202040>,  <39.283176, 32.033428, 31.043032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651047, 32.177799, 31.202040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696518, 31.780497, 31.211060>,  <38.723801, 31.542114, 31.216471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696518, 31.780497, 31.211060>,  <38.651047, 32.177799, 31.202040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696518, 31.780497, 31.211060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449446, -0.031174, 0.892763,
		-0.886044, -0.111626, -0.449962,
		0.113682, -0.993261, 0.022548,
		38.730621, 31.482519, 31.217825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969555, 31.881176, 31.249365>,  <38.651047, 32.177799, 31.202040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969555, 31.881176, 31.249365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261433, 31.657940, 31.407391>,  <38.436562, 31.523998, 31.502207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261433, 31.657940, 31.407391>,  <37.969555, 31.881176, 31.249365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261433, 31.657940, 31.407391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345258, 0.197984, 0.917387,
		-0.590203, -0.805813, -0.048218,
		0.729696, -0.558093, 0.395064,
		38.480343, 31.490513, 31.525909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621433, 31.421534, 31.663216>,  <37.969555, 31.881176, 31.249365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621433, 31.421534, 31.663216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990467, 31.374392, 31.810156>,  <38.211887, 31.346107, 31.898321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990467, 31.374392, 31.810156>,  <37.621433, 31.421534, 31.663216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990467, 31.374392, 31.810156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364945, 0.042175, 0.930073,
		-0.125106, -0.992135, -0.004100,
		0.922585, -0.117854, 0.367351,
		38.267242, 31.339035, 31.920361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639118, 30.836725, 32.140045>,  <37.621433, 31.421534, 31.663216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639118, 30.836725, 32.140045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.923340, 31.099823, 32.240036>,  <38.093872, 31.257681, 32.300030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.923340, 31.099823, 32.240036>,  <37.639118, 30.836725, 32.140045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923340, 31.099823, 32.240036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472528, 0.182801, 0.862149,
		0.521377, -0.730724, 0.440692,
		0.710552, 0.657743, 0.249979,
		38.136505, 31.297146, 32.315029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698803, 30.837545, 32.966621>,  <37.639118, 30.836725, 32.140045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698803, 30.837545, 32.966621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883099, 31.165192, 32.829933>,  <37.993675, 31.361780, 32.747921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883099, 31.165192, 32.829933>,  <37.698803, 30.837545, 32.966621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883099, 31.165192, 32.829933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220827, 0.478709, 0.849749,
		0.859626, -0.316050, 0.401441,
		0.460736, 0.819115, -0.341719,
		38.021320, 31.410927, 32.727417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007015, 31.043503, 33.581661>,  <37.698803, 30.837545, 32.966621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007015, 31.043503, 33.581661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979355, 31.351233, 33.327618>,  <37.962757, 31.535870, 33.175194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979355, 31.351233, 33.327618>,  <38.007015, 31.043503, 33.581661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979355, 31.351233, 33.327618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217965, 0.609597, 0.762156,
		0.973504, 0.191136, 0.125531,
		-0.069152, 0.769323, -0.635106,
		37.958611, 31.582029, 33.137085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534870, 31.438951, 33.730896>,  <38.007015, 31.043503, 33.581661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534870, 31.438951, 33.730896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253349, 31.663742, 33.557068>,  <38.084438, 31.798616, 33.452770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253349, 31.663742, 33.557068>,  <38.534870, 31.438951, 33.730896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253349, 31.663742, 33.557068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063621, 0.559405, 0.826449,
		0.707545, 0.609301, -0.357955,
		-0.703799, 0.561976, -0.434569,
		38.042210, 31.832335, 33.426697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707226, 32.199001, 33.748516>,  <38.534870, 31.438951, 33.730896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707226, 32.199001, 33.748516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318058, 32.185879, 33.656986>,  <38.084557, 32.178005, 33.602070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318058, 32.185879, 33.656986>,  <38.707226, 32.199001, 33.748516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318058, 32.185879, 33.656986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209856, 0.540421, 0.814804,
		0.096932, 0.840755, -0.532668,
		-0.972916, -0.032803, -0.228822,
		38.026184, 32.176037, 33.588341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492023, 32.853519, 33.864330>,  <38.707226, 32.199001, 33.748516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492023, 32.853519, 33.864330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148445, 32.648884, 33.855545>,  <37.942299, 32.526104, 33.850273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148445, 32.648884, 33.855545>,  <38.492023, 32.853519, 33.864330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148445, 32.648884, 33.855545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302875, 0.472999, 0.827369,
		-0.412883, 0.717321, -0.561229,
		-0.858950, -0.511588, -0.021965,
		37.890759, 32.495407, 33.848957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964081, 33.255798, 33.691799>,  <38.492023, 32.853519, 33.864330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964081, 33.255798, 33.691799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789993, 32.956776, 33.892494>,  <37.685539, 32.777363, 34.012913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789993, 32.956776, 33.892494>,  <37.964081, 33.255798, 33.691799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789993, 32.956776, 33.892494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364495, 0.655879, 0.661034,
		-0.823241, 0.104814, -0.557933,
		-0.435222, -0.747554, 0.501742,
		37.659428, 32.732510, 34.043018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358711, 33.435532, 33.762844>,  <37.964081, 33.255798, 33.691799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358711, 33.435532, 33.762844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365471, 33.157330, 34.050175>,  <37.369526, 32.990410, 34.222572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365471, 33.157330, 34.050175>,  <37.358711, 33.435532, 33.762844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365471, 33.157330, 34.050175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389118, 0.657215, 0.645488,
		-0.921033, -0.290423, -0.259525,
		0.016901, -0.695502, 0.718326,
		37.370541, 32.948681, 34.265671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743420, 33.536598, 34.188770>,  <37.358711, 33.435532, 33.762844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743420, 33.536598, 34.188770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021244, 33.347332, 34.405544>,  <37.187939, 33.233772, 34.535610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021244, 33.347332, 34.405544>,  <36.743420, 33.536598, 34.188770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021244, 33.347332, 34.405544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156255, 0.636083, 0.755634,
		-0.702257, -0.609516, 0.367866,
		0.694564, -0.473169, 0.541934,
		37.229614, 33.205383, 34.568123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951046, 34.234573, 34.485905>,  <36.743420, 33.536598, 34.188770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951046, 34.234573, 34.485905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034977, 34.609390, 34.374249>,  <37.085335, 34.834282, 34.307255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034977, 34.609390, 34.374249>,  <36.951046, 34.234573, 34.485905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034977, 34.609390, 34.374249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265710, -0.329404, -0.906031,
		-0.940940, 0.115943, -0.318101,
		0.209832, 0.937043, -0.279142,
		37.097927, 34.890503, 34.290504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710590, 34.226204, 33.765621>,  <36.951046, 34.234573, 34.485905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710590, 34.226204, 33.765621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992771, 34.504318, 33.820633>,  <37.162079, 34.671185, 33.853642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992771, 34.504318, 33.820633>,  <36.710590, 34.226204, 33.765621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992771, 34.504318, 33.820633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161365, 0.031391, -0.986395,
		-0.690141, 0.718050, -0.090049,
		0.705455, 0.695283, 0.137533,
		37.204407, 34.712902, 33.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545551, 34.734653, 33.235451>,  <36.710590, 34.226204, 33.765621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545551, 34.734653, 33.235451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928795, 34.724197, 33.349529>,  <37.158741, 34.717926, 33.417976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928795, 34.724197, 33.349529>,  <36.545551, 34.734653, 33.235451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928795, 34.724197, 33.349529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279402, -0.133309, -0.950875,
		0.062872, 0.990730, -0.120423,
		0.958113, -0.026137, 0.285193,
		37.216228, 34.716358, 33.435089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900314, 35.216427, 32.889305>,  <36.545551, 34.734653, 33.235451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900314, 35.216427, 32.889305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203377, 34.977791, 32.995163>,  <37.385216, 34.834610, 33.058678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203377, 34.977791, 32.995163>,  <36.900314, 35.216427, 32.889305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203377, 34.977791, 32.995163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313404, -0.023111, -0.949339,
		0.572482, 0.802213, 0.169464,
		0.757656, -0.596590, 0.264647,
		37.430672, 34.798813, 33.074558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590694, 35.560703, 32.752995>,  <36.900314, 35.216427, 32.889305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590694, 35.560703, 32.752995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680035, 35.171314, 32.772865>,  <37.733639, 34.937679, 32.784790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680035, 35.171314, 32.772865>,  <37.590694, 35.560703, 32.752995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680035, 35.171314, 32.772865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545745, 0.082661, -0.833864,
		0.807636, 0.213357, 0.549730,
		0.223352, -0.973471, 0.049679,
		37.747040, 34.879272, 32.787769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281464, 35.428528, 32.583992>,  <37.590694, 35.560703, 32.752995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281464, 35.428528, 32.583992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095379, 35.087635, 32.488258>,  <37.983727, 34.883099, 32.430817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095379, 35.087635, 32.488258>,  <38.281464, 35.428528, 32.583992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095379, 35.087635, 32.488258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554051, -0.069468, -0.829579,
		0.690367, -0.518533, 0.504497,
		-0.465211, -0.852231, -0.239336,
		37.955814, 34.831966, 32.416458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844509, 35.012428, 32.237617>,  <38.281464, 35.428528, 32.583992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844509, 35.012428, 32.237617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484905, 34.865868, 32.141674>,  <38.269142, 34.777931, 32.084110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484905, 34.865868, 32.141674>,  <38.844509, 35.012428, 32.237617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484905, 34.865868, 32.141674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317144, -0.167028, -0.933553,
		0.301994, -0.915342, 0.266362,
		-0.899010, -0.366403, -0.239854,
		38.215202, 34.755947, 32.069717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945881, 34.405857, 31.775820>,  <38.844509, 35.012428, 32.237617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945881, 34.405857, 31.775820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559139, 34.492878, 31.722364>,  <38.327095, 34.545090, 31.690290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559139, 34.492878, 31.722364>,  <38.945881, 34.405857, 31.775820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559139, 34.492878, 31.722364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083307, -0.225976, -0.970564,
		-0.241343, -0.949531, 0.200363,
		-0.966858, 0.217547, -0.133640,
		38.269081, 34.558144, 31.682272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762051, 33.914654, 31.242893>,  <38.945881, 34.405857, 31.775820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762051, 33.914654, 31.242893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441719, 34.152477, 31.214130>,  <38.249519, 34.295174, 31.196873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441719, 34.152477, 31.214130>,  <38.762051, 33.914654, 31.242893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441719, 34.152477, 31.214130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035061, -0.073314, -0.996692,
		-0.597867, -0.800700, 0.037866,
		-0.800828, 0.594562, -0.071905,
		38.201469, 34.330845, 31.192558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255798, 33.573727, 30.785973>,  <38.762051, 33.914654, 31.242893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255798, 33.573727, 30.785973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161720, 33.962059, 30.804598>,  <38.105274, 34.195061, 30.815773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161720, 33.962059, 30.804598>,  <38.255798, 33.573727, 30.785973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161720, 33.962059, 30.804598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145199, 0.082463, -0.985960,
		-0.961042, -0.225128, -0.160359,
		-0.235191, 0.970833, 0.046562,
		38.091164, 34.253307, 30.818567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613571, 33.735771, 30.402958>,  <38.255798, 33.573727, 30.785973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613571, 33.735771, 30.402958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843773, 34.062164, 30.424767>,  <37.981895, 34.257999, 30.437851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843773, 34.062164, 30.424767>,  <37.613571, 33.735771, 30.402958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843773, 34.062164, 30.424767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101507, -0.005122, -0.994822,
		-0.811475, 0.578058, -0.085775,
		0.575503, 0.815980, 0.054521,
		38.016422, 34.306957, 30.441122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430237, 34.051018, 29.815727>,  <37.613571, 33.735771, 30.402958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430237, 34.051018, 29.815727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759571, 34.257130, 29.910885>,  <37.957172, 34.380798, 29.967979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759571, 34.257130, 29.910885>,  <37.430237, 34.051018, 29.815727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759571, 34.257130, 29.910885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104519, 0.274332, -0.955938,
		-0.557841, 0.811927, 0.172011,
		0.823340, 0.515283, 0.237895,
		38.006573, 34.411716, 29.982254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294975, 34.677853, 29.501562>,  <37.430237, 34.051018, 29.815727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294975, 34.677853, 29.501562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685501, 34.651108, 29.583876>,  <37.919815, 34.635063, 29.633265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685501, 34.651108, 29.583876>,  <37.294975, 34.677853, 29.501562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685501, 34.651108, 29.583876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216328, 0.321245, -0.921956,
		-0.004466, 0.944633, 0.328099,
		0.976310, -0.066859, 0.205785,
		37.978394, 34.631050, 29.645611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758293, 35.286942, 29.323145>,  <37.294975, 34.677853, 29.501562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758293, 35.286942, 29.323145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021591, 34.987068, 29.295774>,  <38.179569, 34.807144, 29.279352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021591, 34.987068, 29.295774>,  <37.758293, 35.286942, 29.323145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021591, 34.987068, 29.295774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477041, 0.485710, -0.732474,
		0.582362, 0.449505, 0.677348,
		0.658245, -0.749688, -0.068427,
		38.219063, 34.762161, 29.275246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331108, 35.622169, 29.042776>,  <37.758293, 35.286942, 29.323145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331108, 35.622169, 29.042776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473816, 35.249210, 29.019630>,  <38.559441, 35.025433, 29.005743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473816, 35.249210, 29.019630>,  <38.331108, 35.622169, 29.042776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473816, 35.249210, 29.019630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575815, 0.268253, -0.772320,
		0.735633, 0.242220, 0.632593,
		0.356766, -0.932400, -0.057862,
		38.580845, 34.969490, 29.002272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059929, 35.558601, 29.087177>,  <38.331108, 35.622169, 29.042776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059929, 35.558601, 29.087177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967548, 35.224556, 28.887478>,  <38.912121, 35.024128, 28.767658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967548, 35.224556, 28.887478>,  <39.059929, 35.558601, 29.087177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967548, 35.224556, 28.887478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631757, 0.261531, -0.729716,
		0.739964, -0.483930, 0.467189,
		-0.230946, -0.835113, -0.499249,
		38.898266, 34.974022, 28.737703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734482, 35.239151, 28.815063>,  <39.059929, 35.558601, 29.087177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734482, 35.239151, 28.815063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427864, 35.098705, 28.599981>,  <39.243893, 35.014439, 28.470932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427864, 35.098705, 28.599981>,  <39.734482, 35.239151, 28.815063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427864, 35.098705, 28.599981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537658, 0.107000, -0.836346,
		0.351188, -0.930199, 0.106760,
		-0.766545, -0.351114, -0.537706,
		39.197899, 34.993370, 28.438669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042236, 34.810410, 28.323753>,  <39.734482, 35.239151, 28.815063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042236, 34.810410, 28.323753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.678501, 34.856468, 28.163828>,  <39.460262, 34.884102, 28.067873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.678501, 34.856468, 28.163828>,  <40.042236, 34.810410, 28.323753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678501, 34.856468, 28.163828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407336, 0.050562, -0.911878,
		-0.084781, -0.992061, -0.092880,
		-0.909335, 0.115143, -0.399815,
		39.405701, 34.891010, 28.043882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995350, 34.337482, 27.747192>,  <40.042236, 34.810410, 28.323753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995350, 34.337482, 27.747192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739388, 34.641327, 27.700691>,  <39.585812, 34.823635, 27.672791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739388, 34.641327, 27.700691>,  <39.995350, 34.337482, 27.747192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739388, 34.641327, 27.700691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203783, 0.021878, -0.978771,
		-0.740942, -0.650009, -0.168796,
		-0.639904, 0.759611, -0.116251,
		39.547417, 34.869209, 27.665815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557529, 34.092216, 27.262146>,  <39.995350, 34.337482, 27.747192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557529, 34.092216, 27.262146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548985, 34.491314, 27.236702>,  <39.543858, 34.730774, 27.221436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548985, 34.491314, 27.236702>,  <39.557529, 34.092216, 27.262146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548985, 34.491314, 27.236702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180401, -0.058732, -0.981838,
		-0.983361, -0.032453, -0.178739,
		-0.021366, 0.997746, -0.063610,
		39.542576, 34.790638, 27.217619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999901, 34.257740, 26.678501>,  <39.557529, 34.092216, 27.262146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999901, 34.257740, 26.678501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216297, 34.590458, 26.728230>,  <39.346134, 34.790089, 26.758066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216297, 34.590458, 26.728230>,  <38.999901, 34.257740, 26.678501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216297, 34.590458, 26.728230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072506, 0.101141, -0.992227,
		-0.837900, 0.545796, -0.005594,
		0.540987, 0.831792, 0.124320,
		39.378593, 34.839996, 26.765526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690609, 34.678917, 26.175056>,  <38.999901, 34.257740, 26.678501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690609, 34.678917, 26.175056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051998, 34.821686, 26.270004>,  <39.268829, 34.907349, 26.326973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.051998, 34.821686, 26.270004>,  <38.690609, 34.678917, 26.175056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051998, 34.821686, 26.270004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217368, 0.095790, -0.971378,
		-0.369448, 0.929208, 0.008959,
		0.903471, 0.356927, 0.237369,
		39.323040, 34.928764, 26.341215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740894, 35.224205, 25.736629>,  <38.690609, 34.678917, 26.175056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740894, 35.224205, 25.736629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123550, 35.189178, 25.847744>,  <39.353146, 35.168163, 25.914412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123550, 35.189178, 25.847744>,  <38.740894, 35.224205, 25.736629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123550, 35.189178, 25.847744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287402, 0.129099, -0.949070,
		0.047244, 0.987758, 0.148668,
		0.956644, -0.087566, 0.277784,
		39.410545, 35.162910, 25.931080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171089, 35.891144, 25.620655>,  <38.740894, 35.224205, 25.736629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171089, 35.891144, 25.620655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436008, 35.591461, 25.623758>,  <39.594959, 35.411652, 25.625620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436008, 35.591461, 25.623758>,  <39.171089, 35.891144, 25.620655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436008, 35.591461, 25.623758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269298, 0.228370, -0.935588,
		0.699175, 0.621724, 0.353007,
		0.662294, -0.749204, 0.007759,
		39.634697, 35.366699, 25.626085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773540, 36.159389, 25.437248>,  <39.171089, 35.891144, 25.620655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773540, 36.159389, 25.437248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798180, 35.775509, 25.327574>,  <39.812962, 35.545181, 25.261768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798180, 35.775509, 25.327574>,  <39.773540, 36.159389, 25.437248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798180, 35.775509, 25.327574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062669, 0.277885, -0.958568,
		0.996132, 0.041861, 0.077260,
		0.061596, -0.959702, -0.274186,
		39.816658, 35.487598, 25.245317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998600, 36.246475, 24.765884>,  <39.773540, 36.159389, 25.437248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998600, 36.246475, 24.765884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.921593, 35.855381, 24.799276>,  <39.875389, 35.620724, 24.819311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.921593, 35.855381, 24.799276>,  <39.998600, 36.246475, 24.765884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921593, 35.855381, 24.799276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083634, -0.101111, -0.991354,
		0.977724, -0.183868, 0.101238,
		-0.192515, -0.977737, 0.083481,
		39.863838, 35.562061, 24.824320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552116, 35.860928, 24.417799>,  <39.998600, 36.246475, 24.765884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552116, 35.860928, 24.417799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247414, 35.601795, 24.420341>,  <40.064594, 35.446316, 24.421867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247414, 35.601795, 24.420341>,  <40.552116, 35.860928, 24.417799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247414, 35.601795, 24.420341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204651, -0.249922, -0.946391,
		0.614693, -0.719618, 0.322960,
		-0.761755, -0.647834, 0.006355,
		40.018887, 35.407444, 24.422247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814690, 35.129517, 24.404428>,  <40.552116, 35.860928, 24.417799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814690, 35.129517, 24.404428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444542, 35.110596, 24.253990>,  <40.222454, 35.099243, 24.163727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444542, 35.110596, 24.253990>,  <40.814690, 35.129517, 24.404428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444542, 35.110596, 24.253990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370566, -0.321737, -0.871301,
		-0.079787, -0.945647, 0.315257,
		-0.925373, -0.047305, -0.376095,
		40.166931, 35.096405, 24.141161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419353, 34.693176, 24.460817>,  <40.814690, 35.129517, 24.404428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419353, 34.693176, 24.460817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.718002, 34.946888, 24.380577>,  <41.897194, 35.099113, 24.332432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.718002, 34.946888, 24.380577>,  <41.419353, 34.693176, 24.460817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718002, 34.946888, 24.380577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171110, 0.474505, 0.863462,
		0.642862, -0.610357, 0.462809,
		0.746626, 0.634278, -0.200603,
		41.941990, 35.137173, 24.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913879, 34.665440, 25.001682>,  <41.419353, 34.693176, 24.460817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913879, 34.665440, 25.001682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978458, 35.016586, 24.821335>,  <42.017208, 35.227276, 24.713127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978458, 35.016586, 24.821335>,  <41.913879, 34.665440, 25.001682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978458, 35.016586, 24.821335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119324, 0.436143, 0.891931,
		0.979640, -0.197801, -0.034335,
		0.161450, 0.877869, -0.450866,
		42.026894, 35.279945, 24.686075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450703, 34.940685, 25.400284>,  <41.913879, 34.665440, 25.001682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450703, 34.940685, 25.400284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.279419, 35.248703, 25.211107>,  <42.176651, 35.433514, 25.097601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.279419, 35.248703, 25.211107>,  <42.450703, 34.940685, 25.400284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279419, 35.248703, 25.211107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024487, 0.533047, 0.845731,
		0.903349, 0.350567, -0.247111,
		-0.428208, 0.770041, -0.472943,
		42.150955, 35.479713, 25.069223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856968, 35.486576, 25.563080>,  <42.450703, 34.940685, 25.400284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856968, 35.486576, 25.563080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.502792, 35.644798, 25.465475>,  <42.290287, 35.739731, 25.406912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.502792, 35.644798, 25.465475>,  <42.856968, 35.486576, 25.563080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502792, 35.644798, 25.465475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016219, 0.551002, 0.834346,
		0.464476, 0.734804, -0.494293,
		-0.885437, 0.395551, -0.244010,
		42.237160, 35.763462, 25.392273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871040, 36.290943, 25.687338>,  <42.856968, 35.486576, 25.563080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871040, 36.290943, 25.687338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.494728, 36.157734, 25.661936>,  <42.268940, 36.077808, 25.646694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.494728, 36.157734, 25.661936>,  <42.871040, 36.290943, 25.687338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494728, 36.157734, 25.661936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192922, 0.371843, 0.908028,
		-0.278776, 0.866505, -0.414069,
		-0.940779, -0.333019, -0.063507,
		42.212494, 36.057827, 25.642883>
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
