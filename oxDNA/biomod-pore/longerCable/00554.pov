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
	<24.243849, 34.915020, 35.169365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535780, 35.056553, 34.935390>,  <24.710939, 35.141472, 34.795006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535780, 35.056553, 34.935390>,  <24.243849, 34.915020, 35.169365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.535780, 35.056553, 34.935390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049871, 0.825801, 0.561752,
		0.681806, -0.439155, 0.585049,
		0.729831, 0.353830, -0.584938,
		24.754728, 35.162701, 34.759911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046640, 34.977982, 35.503395>,  <24.243849, 34.915020, 35.169365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046640, 34.977982, 35.503395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945116, 35.233131, 35.212551>,  <24.884201, 35.386223, 35.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945116, 35.233131, 35.212551>,  <25.046640, 34.977982, 35.503395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945116, 35.233131, 35.212551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174746, 0.709122, 0.683089,
		0.951339, 0.300434, -0.068515,
		-0.253809, 0.637876, -0.727115,
		24.868973, 35.424496, 34.994415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507757, 35.545361, 35.333282>,  <25.046640, 34.977982, 35.503395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507757, 35.545361, 35.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130091, 35.655567, 35.261021>,  <24.903490, 35.721691, 35.217663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130091, 35.655567, 35.261021>,  <25.507757, 35.545361, 35.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130091, 35.655567, 35.261021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037171, 0.633913, 0.772511,
		0.327364, 0.722664, -0.608761,
		-0.944167, 0.275521, -0.180658,
		24.846840, 35.738224, 35.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596413, 36.062065, 34.809746>,  <25.507757, 35.545361, 35.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596413, 36.062065, 34.809746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627298, 36.165073, 35.195019>,  <25.645830, 36.226879, 35.426182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627298, 36.165073, 35.195019>,  <25.596413, 36.062065, 34.809746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627298, 36.165073, 35.195019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858977, -0.507630, 0.066863,
		0.506159, 0.822190, -0.260399,
		0.077212, 0.257520, 0.963183,
		25.650461, 36.242329, 35.483974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240520, 36.462528, 35.076927>,  <25.596413, 36.062065, 34.809746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240520, 36.462528, 35.076927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061983, 36.200504, 35.320786>,  <25.954861, 36.043289, 35.467102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061983, 36.200504, 35.320786>,  <26.240520, 36.462528, 35.076927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061983, 36.200504, 35.320786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849831, -0.523688, 0.059492,
		0.280295, 0.544653, 0.790435,
		-0.446343, -0.655060, 0.609650,
		25.928080, 36.003986, 35.503681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884180, 36.268097, 35.476189>,  <26.240520, 36.462528, 35.076927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884180, 36.268097, 35.476189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586941, 36.012856, 35.556816>,  <26.408598, 35.859711, 35.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586941, 36.012856, 35.556816>,  <26.884180, 36.268097, 35.476189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586941, 36.012856, 35.556816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667042, -0.682241, 0.299336,
		-0.053488, 0.356892, 0.932613,
		-0.743097, -0.638103, 0.201570,
		26.364012, 35.821426, 35.617287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117456, 35.857975, 36.061211>,  <26.884180, 36.268097, 35.476189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117456, 35.857975, 36.061211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791248, 35.638279, 35.988258>,  <26.595524, 35.506462, 35.944489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791248, 35.638279, 35.988258>,  <27.117456, 35.857975, 36.061211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791248, 35.638279, 35.988258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, -0.719866, 0.598892,
		-0.460224, 0.424414, 0.779787,
		-0.815519, -0.549242, -0.182378,
		26.546593, 35.473507, 35.933544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751167, 35.775894, 36.775406>,  <27.117456, 35.857975, 36.061211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751167, 35.775894, 36.775406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773155, 35.494408, 36.492065>,  <26.786348, 35.325516, 36.322060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773155, 35.494408, 36.492065>,  <26.751167, 35.775894, 36.775406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773155, 35.494408, 36.492065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521983, -0.584509, 0.621194,
		-0.851183, -0.403894, 0.335198,
		0.054970, -0.703717, -0.708350,
		26.789646, 35.283291, 36.279560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430378, 35.088066, 37.030849>,  <26.751167, 35.775894, 36.775406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430378, 35.088066, 37.030849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708509, 35.073910, 36.743721>,  <26.875389, 35.065414, 36.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708509, 35.073910, 36.743721>,  <26.430378, 35.088066, 37.030849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708509, 35.073910, 36.743721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515126, -0.671936, 0.532115,
		-0.501161, -0.739763, -0.448986,
		0.695329, -0.035391, -0.717820,
		26.917109, 35.063293, 36.528374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642815, 34.380207, 37.008999>,  <26.430378, 35.088066, 37.030849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642815, 34.380207, 37.008999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947170, 34.577305, 36.840122>,  <27.129784, 34.695564, 36.738796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947170, 34.577305, 36.840122>,  <26.642815, 34.380207, 37.008999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947170, 34.577305, 36.840122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647328, -0.531458, 0.546369,
		0.044848, -0.689022, -0.723351,
		0.760891, 0.492749, -0.422188,
		27.175438, 34.725128, 36.713467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175940, 33.903412, 37.007614>,  <26.642815, 34.380207, 37.008999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175940, 33.903412, 37.007614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368675, 34.252472, 36.975838>,  <27.484316, 34.461910, 36.956772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368675, 34.252472, 36.975838>,  <27.175940, 33.903412, 37.007614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368675, 34.252472, 36.975838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652809, -0.297013, 0.696868,
		0.584529, -0.387635, -0.712787,
		0.481837, 0.872653, -0.079439,
		27.513226, 34.514267, 36.952007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702271, 33.531094, 37.573864>,  <27.175940, 33.903412, 37.007614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702271, 33.531094, 37.573864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810558, 33.691772, 37.923801>,  <27.875530, 33.788181, 38.133762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810558, 33.691772, 37.923801>,  <27.702271, 33.531094, 37.573864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810558, 33.691772, 37.923801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178526, -0.872064, 0.455668,
		0.945960, -0.279540, -0.164369,
		0.270718, 0.401699, 0.874842,
		27.891773, 33.812283, 38.186253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452385, 33.627037, 37.964848>,  <27.702271, 33.531094, 37.573864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452385, 33.627037, 37.964848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695112, 33.930157, 37.868923>,  <28.840748, 34.112030, 37.811367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695112, 33.930157, 37.868923>,  <28.452385, 33.627037, 37.964848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695112, 33.930157, 37.868923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645753, 0.294111, -0.704629,
		-0.463437, 0.582440, 0.667825,
		0.606819, 0.757801, -0.239810,
		28.877157, 34.157497, 37.796982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272301, 34.340656, 38.103733>,  <28.452385, 33.627037, 37.964848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272301, 34.340656, 38.103733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526970, 34.383423, 37.798260>,  <28.679771, 34.409084, 37.614975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526970, 34.383423, 37.798260>,  <28.272301, 34.340656, 38.103733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526970, 34.383423, 37.798260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709187, 0.470085, -0.525427,
		0.302820, 0.876121, 0.375114,
		0.636673, 0.106917, -0.763686,
		28.717972, 34.415497, 37.569153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427177, 35.083679, 37.884697>,  <28.272301, 34.340656, 38.103733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427177, 35.083679, 37.884697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409283, 34.793034, 37.610462>,  <28.398546, 34.618645, 37.445919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409283, 34.793034, 37.610462>,  <28.427177, 35.083679, 37.884697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409283, 34.793034, 37.610462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686872, 0.520696, -0.507034,
		0.725400, 0.448229, -0.522384,
		-0.044736, -0.726613, -0.685589,
		28.395863, 34.575050, 37.404785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894033, 35.420635, 37.510838>,  <28.427177, 35.083679, 37.884697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894033, 35.420635, 37.510838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977283, 35.088879, 37.303455>,  <28.027233, 34.889824, 37.179024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977283, 35.088879, 37.303455>,  <27.894033, 35.420635, 37.510838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977283, 35.088879, 37.303455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601854, 0.309242, -0.736302,
		0.771010, 0.465278, -0.434811,
		0.208123, -0.829389, -0.518458,
		28.039721, 34.840061, 37.147919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036339, 35.642036, 36.875278>,  <27.894033, 35.420635, 37.510838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036339, 35.642036, 36.875278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903107, 35.264950, 36.882618>,  <27.823168, 35.038696, 36.887020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903107, 35.264950, 36.882618>,  <28.036339, 35.642036, 36.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903107, 35.264950, 36.882618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658897, 0.218791, -0.719712,
		0.674472, -0.251812, -0.694030,
		-0.333080, -0.942720, 0.018349,
		27.803183, 34.982132, 36.888123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136539, 35.370281, 36.127701>,  <28.036339, 35.642036, 36.875278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136539, 35.370281, 36.127701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844473, 35.165722, 36.308952>,  <27.669233, 35.042988, 36.417706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844473, 35.165722, 36.308952>,  <28.136539, 35.370281, 36.127701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844473, 35.165722, 36.308952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631425, 0.251634, -0.733473,
		0.261087, -0.821666, -0.506653,
		-0.730161, -0.511414, 0.453122,
		27.625423, 35.012302, 36.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829197, 35.071632, 35.572117>,  <28.136539, 35.370281, 36.127701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829197, 35.071632, 35.572117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550634, 35.089840, 35.858597>,  <27.383497, 35.100765, 36.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550634, 35.089840, 35.858597>,  <27.829197, 35.071632, 35.572117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550634, 35.089840, 35.858597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620114, 0.464159, -0.632468,
		-0.361220, -0.884582, -0.295018,
		-0.696405, 0.045515, 0.716205,
		27.341713, 35.103493, 36.073460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433001, 34.546192, 35.344875>,  <27.829197, 35.071632, 35.572117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433001, 34.546192, 35.344875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503468, 34.176125, 35.210396>,  <27.545748, 33.954086, 35.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503468, 34.176125, 35.210396>,  <27.433001, 34.546192, 35.344875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503468, 34.176125, 35.210396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938673, -0.260736, 0.225634,
		-0.296409, 0.275835, -0.914362,
		0.176169, -0.925166, -0.336203,
		27.556318, 33.898575, 35.109535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673843, 34.222679, 34.697330>,  <27.433001, 34.546192, 35.344875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673843, 34.222679, 34.697330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951729, 34.250488, 34.983696>,  <28.118460, 34.267174, 35.155518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951729, 34.250488, 34.983696>,  <27.673843, 34.222679, 34.697330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951729, 34.250488, 34.983696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569988, 0.553885, -0.606898,
		-0.438731, 0.829685, 0.345162,
		0.694715, 0.069527, 0.715917,
		28.160143, 34.271347, 35.198471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853134, 34.954044, 34.795712>,  <27.673843, 34.222679, 34.697330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853134, 34.954044, 34.795712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151966, 34.715069, 34.912289>,  <28.331266, 34.571682, 34.982235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151966, 34.715069, 34.912289>,  <27.853134, 34.954044, 34.795712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151966, 34.715069, 34.912289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650488, 0.566781, -0.505594,
		0.136878, 0.567298, 0.812058,
		0.747081, -0.597438, 0.291441,
		28.376091, 34.535839, 34.999722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559454, 35.208660, 34.521698>,  <27.853134, 34.954044, 34.795712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559454, 35.208660, 34.521698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718472, 34.900753, 34.721466>,  <28.813883, 34.716011, 34.841328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718472, 34.900753, 34.721466>,  <28.559454, 35.208660, 34.521698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718472, 34.900753, 34.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898623, 0.216540, -0.381559,
		0.185566, 0.600479, 0.777811,
		0.397546, -0.769763, 0.499422,
		28.837734, 34.669823, 34.871292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085463, 35.394798, 34.927376>,  <28.559454, 35.208660, 34.521698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085463, 35.394798, 34.927376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177893, 35.026127, 34.802719>,  <29.233351, 34.804924, 34.727924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177893, 35.026127, 34.802719>,  <29.085463, 35.394798, 34.927376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177893, 35.026127, 34.802719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858233, 0.343977, -0.380941,
		0.458301, -0.179435, 0.870496,
		0.231077, -0.921674, -0.311642,
		29.247215, 34.749626, 34.709225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783863, 35.254570, 35.204094>,  <29.085463, 35.394798, 34.927376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783863, 35.254570, 35.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686707, 35.063034, 34.866642>,  <29.628412, 34.948112, 34.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686707, 35.063034, 34.866642>,  <29.783863, 35.254570, 35.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686707, 35.063034, 34.866642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730442, 0.481994, -0.483877,
		0.638324, -0.733756, 0.232690,
		-0.242892, -0.478837, -0.843634,
		29.613838, 34.919384, 34.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377768, 34.787514, 34.801842>,  <29.783863, 35.254570, 35.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377768, 34.787514, 34.801842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135246, 34.968704, 34.540398>,  <29.989733, 35.077419, 34.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135246, 34.968704, 34.540398>,  <30.377768, 34.787514, 34.801842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135246, 34.968704, 34.540398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739360, 0.623736, -0.253573,
		0.292818, -0.636996, -0.713087,
		-0.606304, 0.452978, -0.653611,
		29.953356, 35.104599, 34.344315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543222, 34.665203, 34.155907>,  <30.377768, 34.787514, 34.801842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543222, 34.665203, 34.155907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366161, 35.023781, 34.164429>,  <30.259924, 35.238926, 34.169544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366161, 35.023781, 34.164429>,  <30.543222, 34.665203, 34.155907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366161, 35.023781, 34.164429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841684, 0.423575, -0.334890,
		-0.309234, -0.130306, -0.942016,
		-0.442652, 0.896440, 0.021308,
		30.233366, 35.292713, 34.170822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542669, 35.070721, 33.422318>,  <30.543222, 34.665203, 34.155907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542669, 35.070721, 33.422318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581745, 35.291767, 33.753395>,  <30.605190, 35.424397, 33.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581745, 35.291767, 33.753395>,  <30.542669, 35.070721, 33.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581745, 35.291767, 33.753395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871511, 0.354075, -0.339263,
		-0.480546, 0.754486, -0.447020,
		0.097690, 0.552615, 0.827692,
		30.611052, 35.457550, 34.001701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692167, 35.890804, 33.311443>,  <30.542669, 35.070721, 33.422318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692167, 35.890804, 33.311443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823664, 35.761791, 33.666500>,  <30.902561, 35.684383, 33.879532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823664, 35.761791, 33.666500>,  <30.692167, 35.890804, 33.311443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823664, 35.761791, 33.666500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916568, 0.335533, -0.217534,
		-0.227669, 0.885092, 0.405929,
		0.328740, -0.322535, 0.887638,
		30.922285, 35.665031, 33.932793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978586, 36.357285, 33.825344>,  <30.692167, 35.890804, 33.311443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978586, 36.357285, 33.825344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172628, 36.007504, 33.825951>,  <31.289055, 35.797634, 33.826313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172628, 36.007504, 33.825951>,  <30.978586, 36.357285, 33.825344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172628, 36.007504, 33.825951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846989, 0.469439, -0.249473,
		0.217443, 0.122301, 0.968381,
		0.485107, -0.874454, 0.001512,
		31.318161, 35.745167, 33.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574701, 36.548878, 34.258278>,  <30.978586, 36.357285, 33.825344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574701, 36.548878, 34.258278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644804, 36.238823, 34.015480>,  <31.686865, 36.052788, 33.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644804, 36.238823, 34.015480>,  <31.574701, 36.548878, 34.258278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644804, 36.238823, 34.015480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812547, 0.462017, -0.355396,
		0.555924, -0.430927, 0.710809,
		0.175256, -0.775140, -0.606996,
		31.697380, 36.006283, 33.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193794, 36.366699, 34.294319>,  <31.574701, 36.548878, 34.258278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193794, 36.366699, 34.294319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114063, 36.196522, 33.941216>,  <32.066223, 36.094414, 33.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114063, 36.196522, 33.941216>,  <32.193794, 36.366699, 34.294319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114063, 36.196522, 33.941216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835281, 0.397293, -0.380085,
		0.512420, -0.813113, 0.276177,
		-0.199329, -0.425448, -0.882758,
		32.054264, 36.068886, 33.676388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868488, 36.146198, 33.985199>,  <32.193794, 36.366699, 34.294319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868488, 36.146198, 33.985199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613071, 36.194099, 33.681114>,  <32.459824, 36.222839, 33.498661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613071, 36.194099, 33.681114>,  <32.868488, 36.146198, 33.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613071, 36.194099, 33.681114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681375, 0.547189, -0.486120,
		0.357764, -0.828398, -0.431001,
		-0.638540, 0.119757, -0.760214,
		32.421509, 36.230026, 33.453049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278709, 35.868511, 33.305710>,  <32.868488, 36.146198, 33.985199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278709, 35.868511, 33.305710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989826, 36.125935, 33.204323>,  <32.816498, 36.280388, 33.143490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989826, 36.125935, 33.204323>,  <33.278709, 35.868511, 33.305710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989826, 36.125935, 33.204323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652113, 0.511366, -0.559691,
		-0.230580, -0.569502, -0.788987,
		-0.722206, 0.643562, -0.253469,
		32.773163, 36.319004, 33.128281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210049, 35.832985, 32.548367>,  <33.278709, 35.868511, 33.305710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210049, 35.832985, 32.548367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083164, 36.193150, 32.667458>,  <33.007034, 36.409248, 32.738911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083164, 36.193150, 32.667458>,  <33.210049, 35.832985, 32.548367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083164, 36.193150, 32.667458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642853, 0.434961, -0.630515,
		-0.697219, -0.008616, -0.716806,
		-0.317215, 0.900408, 0.297725,
		32.987999, 36.463272, 32.756775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866467, 36.156101, 32.008389>,  <33.210049, 35.832985, 32.548367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866467, 36.156101, 32.008389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027615, 36.412807, 32.269409>,  <33.124306, 36.566830, 32.426022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027615, 36.412807, 32.269409>,  <32.866467, 36.156101, 32.008389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027615, 36.412807, 32.269409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495812, 0.446269, -0.744993,
		-0.769327, 0.623683, -0.138406,
		0.402873, 0.641766, 0.652556,
		33.148476, 36.605339, 32.465176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581959, 36.758736, 31.903728>,  <32.866467, 36.156101, 32.008389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581959, 36.758736, 31.903728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963451, 36.798492, 32.017231>,  <33.192348, 36.822346, 32.085331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963451, 36.798492, 32.017231>,  <32.581959, 36.758736, 31.903728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963451, 36.798492, 32.017231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219824, 0.413345, -0.883642,
		-0.205117, 0.905133, 0.372371,
		0.953732, 0.099394, 0.283754,
		33.249573, 36.828312, 32.102356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681839, 37.290119, 31.510962>,  <32.581959, 36.758736, 31.903728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681839, 37.290119, 31.510962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025528, 37.126068, 31.633291>,  <33.231743, 37.027637, 31.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025528, 37.126068, 31.633291>,  <32.681839, 37.290119, 31.510962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025528, 37.126068, 31.633291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434635, 0.269864, -0.859224,
		0.269864, 0.871186, 0.410131,
		0.859224, -0.410131, 0.305822,
		33.283295, 37.003029, 31.725039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213440, 37.729027, 31.329525>,  <32.681839, 37.290119, 31.510962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213440, 37.729027, 31.329525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383041, 37.366764, 31.328892>,  <33.484802, 37.149406, 31.328512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383041, 37.366764, 31.328892>,  <33.213440, 37.729027, 31.329525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383041, 37.366764, 31.328892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597808, 0.281189, -0.750706,
		0.680327, 0.317358, 0.660635,
		0.424006, -0.905658, -0.001581,
		33.510242, 37.095066, 31.328417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584442, 38.080200, 30.966152>,  <33.213440, 37.729027, 31.329525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584442, 38.080200, 30.966152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785461, 38.221321, 31.281866>,  <33.906075, 38.305996, 31.471294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785461, 38.221321, 31.281866>,  <33.584442, 38.080200, 30.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785461, 38.221321, 31.281866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538621, -0.586353, 0.605044,
		0.676263, -0.729191, -0.104644,
		0.502550, 0.352805, 0.789286,
		33.936226, 38.327164, 31.518652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968250, 37.541084, 31.322596>,  <33.584442, 38.080200, 30.966152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968250, 37.541084, 31.322596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872189, 37.829048, 31.583073>,  <33.814552, 38.001827, 31.739359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872189, 37.829048, 31.583073>,  <33.968250, 37.541084, 31.322596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872189, 37.829048, 31.583073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225488, -0.693847, 0.683909,
		0.944182, 0.017408, 0.328963,
		-0.240155, 0.719912, 0.651193,
		33.800140, 38.045021, 31.778431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371574, 37.322952, 31.908669>,  <33.968250, 37.541084, 31.322596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371574, 37.322952, 31.908669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048779, 37.547169, 31.983027>,  <33.855099, 37.681698, 32.027641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048779, 37.547169, 31.983027>,  <34.371574, 37.322952, 31.908669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048779, 37.547169, 31.983027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279795, -0.640102, 0.715530,
		0.520076, 0.525415, 0.673394,
		-0.806992, 0.560543, 0.185893,
		33.806683, 37.715332, 32.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222366, 37.083233, 32.544605>,  <34.371574, 37.322952, 31.908669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222366, 37.083233, 32.544605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899452, 37.268394, 32.398170>,  <33.705704, 37.379490, 32.310310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899452, 37.268394, 32.398170>,  <34.222366, 37.083233, 32.544605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899452, 37.268394, 32.398170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589623, -0.605977, 0.533981,
		0.025343, 0.646925, 0.762133,
		-0.807281, 0.462903, -0.366085,
		33.657269, 37.407265, 32.288345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706509, 37.542789, 33.065105>,  <34.222366, 37.083233, 32.544605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706509, 37.542789, 33.065105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505116, 37.367882, 32.767033>,  <33.384281, 37.262936, 32.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505116, 37.367882, 32.767033>,  <33.706509, 37.542789, 33.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505116, 37.367882, 32.767033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646956, -0.380858, 0.660603,
		-0.572673, 0.814702, -0.091141,
		-0.503482, -0.437273, -0.745183,
		33.354073, 37.236698, 32.543476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922634, 37.766571, 33.081482>,  <33.706509, 37.542789, 33.065105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922634, 37.766571, 33.081482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952667, 37.422325, 32.880001>,  <32.970688, 37.215778, 32.759113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952667, 37.422325, 32.880001>,  <32.922634, 37.766571, 33.081482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952667, 37.422325, 32.880001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686293, -0.411060, 0.600026,
		-0.723439, 0.300631, -0.621496,
		0.075085, -0.860611, -0.503698,
		32.975193, 37.164143, 32.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148575, 37.548313, 32.872089>,  <32.922634, 37.766571, 33.081482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148575, 37.548313, 32.872089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388187, 37.228035, 32.869316>,  <32.531956, 37.035870, 32.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388187, 37.228035, 32.869316>,  <32.148575, 37.548313, 32.872089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388187, 37.228035, 32.869316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744439, -0.560095, 0.363461,
		-0.294906, -0.212562, -0.931584,
		0.599033, -0.800694, -0.006936,
		32.567898, 36.987827, 32.867237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698608, 37.016972, 32.826965>,  <32.148575, 37.548313, 32.872089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698608, 37.016972, 32.826965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022274, 36.799347, 32.915737>,  <32.216473, 36.668774, 32.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022274, 36.799347, 32.915737>,  <31.698608, 37.016972, 32.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022274, 36.799347, 32.915737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586239, -0.773057, 0.242293,
		0.039745, -0.326160, -0.944478,
		0.809163, -0.544060, 0.221933,
		32.265022, 36.636127, 32.982319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546289, 36.253883, 32.511070>,  <31.698608, 37.016972, 32.826965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546289, 36.253883, 32.511070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821903, 36.267635, 32.800636>,  <31.987272, 36.275887, 32.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821903, 36.267635, 32.800636>,  <31.546289, 36.253883, 32.511070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821903, 36.267635, 32.800636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459225, -0.752036, 0.472815,
		0.560662, -0.658225, -0.502392,
		0.689036, 0.034379, 0.723911,
		32.028614, 36.277950, 33.017811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780210, 35.652592, 32.507084>,  <31.546289, 36.253883, 32.511070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780210, 35.652592, 32.507084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839947, 35.787445, 32.878899>,  <31.875790, 35.868359, 33.101986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839947, 35.787445, 32.878899>,  <31.780210, 35.652592, 32.507084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839947, 35.787445, 32.878899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363453, -0.855551, 0.368692,
		0.919564, -0.392904, -0.005238,
		0.149342, 0.337133, 0.929537,
		31.884750, 35.888584, 33.157761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115036, 35.516396, 31.874483>,  <31.780210, 35.652592, 32.507084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115036, 35.516396, 31.874483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325062, 35.265526, 32.104599>,  <32.451077, 35.115005, 32.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325062, 35.265526, 32.104599>,  <32.115036, 35.516396, 31.874483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325062, 35.265526, 32.104599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165368, -0.587900, -0.791851,
		0.834840, 0.510909, -0.204973,
		0.525068, -0.627172, 0.575290,
		32.482582, 35.077374, 32.277187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738689, 35.533733, 31.514153>,  <32.115036, 35.516396, 31.874483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738689, 35.533733, 31.514153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658825, 35.204514, 31.726841>,  <32.610905, 35.006981, 31.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658825, 35.204514, 31.726841>,  <32.738689, 35.533733, 31.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658825, 35.204514, 31.726841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342446, -0.567041, -0.749130,
		0.918077, 0.032511, 0.395067,
		-0.199665, -0.823048, 0.531720,
		32.598927, 34.957600, 31.886356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285290, 35.071178, 31.351414>,  <32.738689, 35.533733, 31.514153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285290, 35.071178, 31.351414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049397, 34.766609, 31.459076>,  <32.907860, 34.583866, 31.523674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049397, 34.766609, 31.459076>,  <33.285290, 35.071178, 31.351414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049397, 34.766609, 31.459076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105474, -0.403043, -0.909083,
		0.800681, -0.507727, 0.317998,
		-0.589733, -0.761426, 0.269156,
		32.872475, 34.538181, 31.539824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466969, 34.740856, 30.783100>,  <33.285290, 35.071178, 31.351414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466969, 34.740856, 30.783100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083862, 34.661495, 30.699850>,  <32.853996, 34.613880, 30.649900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083862, 34.661495, 30.699850>,  <33.466969, 34.740856, 30.783100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083862, 34.661495, 30.699850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281886, -0.790673, -0.543485,
		-0.056734, -0.579201, 0.813208,
		-0.957769, -0.198398, -0.208127,
		32.796532, 34.601974, 30.637411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213631, 34.728470, 30.571171>,  <33.466969, 34.740856, 30.783100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213631, 34.728470, 30.571171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480343, 34.779182, 30.864925>,  <34.640369, 34.809608, 31.041178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480343, 34.779182, 30.864925>,  <34.213631, 34.728470, 30.571171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480343, 34.779182, 30.864925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744996, -0.087659, -0.661284,
		-0.019464, 0.988050, -0.152902,
		0.666785, 0.126782, 0.734387,
		34.680378, 34.817219, 31.085241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461098, 35.456291, 30.267183>,  <34.213631, 34.728470, 30.571171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461098, 35.456291, 30.267183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523769, 35.088593, 30.122719>,  <34.561371, 34.867973, 30.036041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523769, 35.088593, 30.122719>,  <34.461098, 35.456291, 30.267183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523769, 35.088593, 30.122719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360122, 0.287329, -0.887555,
		0.919655, 0.269119, -0.286024,
		0.156675, -0.919248, -0.361160,
		34.570770, 34.812817, 30.014372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789249, 35.620079, 29.547178>,  <34.461098, 35.456291, 30.267183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789249, 35.620079, 29.547178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620583, 35.261139, 29.599272>,  <34.519382, 35.045776, 29.630527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620583, 35.261139, 29.599272>,  <34.789249, 35.620079, 29.547178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620583, 35.261139, 29.599272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494976, 0.107455, -0.862237,
		0.759732, -0.428042, -0.489476,
		-0.421670, -0.897348, 0.130234,
		34.494083, 34.991936, 29.638342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903732, 36.326107, 29.598425>,  <34.789249, 35.620079, 29.547178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903732, 36.326107, 29.598425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142761, 36.641376, 29.539520>,  <35.286179, 36.830540, 29.504177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142761, 36.641376, 29.539520>,  <34.903732, 36.326107, 29.598425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142761, 36.641376, 29.539520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630607, 0.348552, -0.693431,
		-0.495214, 0.507243, 0.705314,
		0.597576, 0.788173, -0.147263,
		35.322033, 36.877827, 29.495342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515999, 36.981037, 29.774755>,  <34.903732, 36.326107, 29.598425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515999, 36.981037, 29.774755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816532, 37.030792, 29.515518>,  <34.996853, 37.060646, 29.359976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816532, 37.030792, 29.515518>,  <34.515999, 36.981037, 29.774755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816532, 37.030792, 29.515518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632429, 0.416241, -0.653282,
		0.188501, 0.900705, 0.391404,
		0.751333, 0.124391, -0.648094,
		35.041931, 37.068108, 29.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399479, 37.634617, 29.531080>,  <34.515999, 36.981037, 29.774755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399479, 37.634617, 29.531080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631290, 37.418034, 29.287453>,  <34.770378, 37.288082, 29.141275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631290, 37.418034, 29.287453>,  <34.399479, 37.634617, 29.531080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631290, 37.418034, 29.287453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252084, 0.591611, -0.765800,
		0.774983, 0.597340, 0.206363,
		0.579530, -0.541462, -0.609068,
		34.805149, 37.255596, 29.104733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749367, 38.159603, 29.167912>,  <34.399479, 37.634617, 29.531080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749367, 38.159603, 29.167912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773674, 37.817299, 28.962399>,  <34.788258, 37.611916, 28.839090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773674, 37.817299, 28.962399>,  <34.749367, 38.159603, 29.167912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773674, 37.817299, 28.962399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175737, 0.497522, -0.849463,
		0.982560, 0.141909, -0.120157,
		0.060766, -0.855765, -0.513784,
		34.791904, 37.560570, 28.808264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229004, 38.303337, 28.687836>,  <34.749367, 38.159603, 29.167912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229004, 38.303337, 28.687836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988342, 38.014759, 28.550703>,  <34.843945, 37.841614, 28.468424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988342, 38.014759, 28.550703>,  <35.229004, 38.303337, 28.687836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988342, 38.014759, 28.550703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209810, 0.556874, -0.803661,
		0.770711, -0.411594, -0.486410,
		-0.601651, -0.721444, -0.342833,
		34.807846, 37.798325, 28.447853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333408, 38.369270, 28.044140>,  <35.229004, 38.303337, 28.687836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333408, 38.369270, 28.044140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003891, 38.142921, 28.057743>,  <34.806179, 38.007114, 28.065905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003891, 38.142921, 28.057743>,  <35.333408, 38.369270, 28.044140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003891, 38.142921, 28.057743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378514, 0.504398, -0.776087,
		0.422009, -0.652208, -0.629709,
		-0.823793, -0.565869, 0.034009,
		34.756752, 37.973160, 28.067945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114605, 37.939045, 27.403292>,  <35.333408, 38.369270, 28.044140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114605, 37.939045, 27.403292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790363, 38.045826, 27.611776>,  <34.595818, 38.109894, 27.736868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790363, 38.045826, 27.611776>,  <35.114605, 37.939045, 27.403292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790363, 38.045826, 27.611776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327692, 0.530875, -0.781530,
		-0.485329, -0.804307, -0.342851,
		-0.810601, 0.266950, 0.521214,
		34.547184, 38.125912, 27.768141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394108, 37.773453, 27.275316>,  <35.114605, 37.939045, 27.403292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394108, 37.773453, 27.275316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738625, 37.587589, 27.193075>,  <34.945335, 37.476070, 27.143730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738625, 37.587589, 27.193075>,  <34.394108, 37.773453, 27.275316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738625, 37.587589, 27.193075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420830, -0.425574, -0.801117,
		0.284744, 0.776519, -0.562084,
		0.861291, -0.464656, -0.205603,
		34.997013, 37.448193, 27.131393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512402, 37.822792, 26.490448>,  <34.394108, 37.773453, 27.275316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512402, 37.822792, 26.490448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680920, 37.493240, 26.642096>,  <34.782032, 37.295509, 26.733084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680920, 37.493240, 26.642096>,  <34.512402, 37.822792, 26.490448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680920, 37.493240, 26.642096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351504, -0.533689, -0.769169,
		0.836034, 0.190787, -0.514439,
		0.421298, -0.823879, 0.379120,
		34.807308, 37.246078, 26.755831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066868, 37.629280, 26.086302>,  <34.512402, 37.822792, 26.490448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066868, 37.629280, 26.086302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900383, 37.316322, 26.271610>,  <34.800491, 37.128548, 26.382795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900383, 37.316322, 26.271610>,  <35.066868, 37.629280, 26.086302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900383, 37.316322, 26.271610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159950, -0.438556, -0.884356,
		0.895090, -0.442177, 0.057387,
		-0.416209, -0.782399, 0.463273,
		34.775520, 37.081604, 26.410593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487301, 36.894882, 26.013268>,  <35.066868, 37.629280, 26.086302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487301, 36.894882, 26.013268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087315, 36.891739, 26.012810>,  <34.847321, 36.889854, 26.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087315, 36.891739, 26.012810>,  <35.487301, 36.894882, 26.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087315, 36.891739, 26.012810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003664, -0.328502, -0.944496,
		0.007046, -0.944470, 0.328521,
		-0.999968, -0.007859, -0.001146,
		34.787323, 36.889381, 26.012466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173203, 36.251156, 25.889103>,  <35.487301, 36.894882, 26.013268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173203, 36.251156, 25.889103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921711, 36.520523, 25.733564>,  <34.770817, 36.682144, 25.640242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921711, 36.520523, 25.733564>,  <35.173203, 36.251156, 25.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921711, 36.520523, 25.733564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126098, -0.405137, -0.905518,
		-0.767330, -0.618361, 0.169806,
		-0.628732, 0.673420, -0.388848,
		34.733093, 36.722549, 25.616911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606750, 35.868298, 25.550226>,  <35.173203, 36.251156, 25.889103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606750, 35.868298, 25.550226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622421, 36.233704, 25.388264>,  <34.631824, 36.452950, 25.291086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622421, 36.233704, 25.388264>,  <34.606750, 35.868298, 25.550226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622421, 36.233704, 25.388264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041777, -0.406359, -0.912758,
		-0.998359, 0.018845, -0.054085,
		0.039179, 0.913519, -0.404905,
		34.634174, 36.507759, 25.266792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166100, 35.792053, 24.920362>,  <34.606750, 35.868298, 25.550226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166100, 35.792053, 24.920362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351955, 36.135139, 24.832327>,  <34.463467, 36.340992, 24.779505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351955, 36.135139, 24.832327>,  <34.166100, 35.792053, 24.920362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351955, 36.135139, 24.832327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070504, -0.283591, -0.956350,
		-0.882690, 0.428839, -0.192239,
		0.464637, 0.857714, -0.220088,
		34.491348, 36.392452, 24.766300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878433, 36.010128, 24.220022>,  <34.166100, 35.792053, 24.920362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878433, 36.010128, 24.220022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235195, 36.178413, 24.286366>,  <34.449253, 36.279385, 24.326172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235195, 36.178413, 24.286366>,  <33.878433, 36.010128, 24.220022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235195, 36.178413, 24.286366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301805, -0.280618, -0.911135,
		-0.336786, 0.862700, -0.377258,
		0.891902, 0.420716, 0.165858,
		34.502766, 36.304626, 24.336123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119221, 36.225677, 23.567261>,  <33.878433, 36.010128, 24.220022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119221, 36.225677, 23.567261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453960, 36.214977, 23.785975>,  <34.654804, 36.208557, 23.917204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453960, 36.214977, 23.785975>,  <34.119221, 36.225677, 23.567261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453960, 36.214977, 23.785975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521826, -0.262958, -0.811511,
		0.165492, 0.964436, -0.206095,
		0.836845, -0.026753, 0.546786,
		34.705013, 36.206951, 23.950010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589119, 36.623791, 23.165850>,  <34.119221, 36.225677, 23.567261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589119, 36.623791, 23.165850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830433, 36.407028, 23.399904>,  <34.975220, 36.276970, 23.540337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830433, 36.407028, 23.399904>,  <34.589119, 36.623791, 23.165850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830433, 36.407028, 23.399904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555537, -0.240868, -0.795840,
		0.572211, 0.805184, 0.155736,
		0.603286, -0.541905, 0.585137,
		35.011417, 36.244457, 23.575445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241245, 36.813267, 23.001478>,  <34.589119, 36.623791, 23.165850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241245, 36.813267, 23.001478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292290, 36.455830, 23.173622>,  <35.322914, 36.241367, 23.276909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292290, 36.455830, 23.173622>,  <35.241245, 36.813267, 23.001478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292290, 36.455830, 23.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634138, -0.260126, -0.728151,
		0.762618, 0.365826, 0.533466,
		0.127608, -0.893591, 0.430361,
		35.330570, 36.187752, 23.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936741, 36.723145, 23.098425>,  <35.241245, 36.813267, 23.001478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936741, 36.723145, 23.098425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785213, 36.352955, 23.098587>,  <35.694298, 36.130840, 23.098684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785213, 36.352955, 23.098587>,  <35.936741, 36.723145, 23.098425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785213, 36.352955, 23.098587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646117, -0.264786, -0.715836,
		0.662592, -0.270911, 0.698269,
		-0.378820, -0.925471, 0.000405,
		35.671566, 36.075314, 23.098709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566448, 36.246834, 23.181631>,  <35.936741, 36.723145, 23.098425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566448, 36.246834, 23.181631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253906, 36.055225, 23.021614>,  <36.066383, 35.940262, 22.925604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253906, 36.055225, 23.021614>,  <36.566448, 36.246834, 23.181631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253906, 36.055225, 23.021614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587774, -0.349347, -0.729711,
		0.209791, -0.805295, 0.554517,
		-0.781351, -0.479017, -0.400042,
		36.019501, 35.911522, 22.901602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903168, 35.747673, 22.808081>,  <36.566448, 36.246834, 23.181631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903168, 35.747673, 22.808081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523411, 35.697929, 22.692713>,  <36.295555, 35.668083, 22.623491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523411, 35.697929, 22.692713>,  <36.903168, 35.747673, 22.808081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523411, 35.697929, 22.692713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314012, -0.396007, -0.862887,
		-0.006911, -0.909788, 0.415017,
		-0.949394, -0.124357, -0.288421,
		36.238594, 35.660622, 22.606186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891705, 35.068676, 22.601847>,  <36.903168, 35.747673, 22.808081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891705, 35.068676, 22.601847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608341, 35.282333, 22.417307>,  <36.438324, 35.410530, 22.306583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608341, 35.282333, 22.417307>,  <36.891705, 35.068676, 22.601847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608341, 35.282333, 22.417307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351254, -0.300148, -0.886866,
		-0.612189, -0.790316, 0.025007,
		-0.708410, 0.534146, -0.461349,
		36.395817, 35.442577, 22.278902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881325, 34.737732, 22.021044>,  <36.891705, 35.068676, 22.601847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881325, 34.737732, 22.021044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638008, 35.045700, 21.943886>,  <36.492020, 35.230480, 21.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638008, 35.045700, 21.943886>,  <36.881325, 34.737732, 22.021044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638008, 35.045700, 21.943886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092410, -0.172678, -0.980634,
		-0.788315, -0.614337, 0.033891,
		-0.608292, 0.769917, -0.192896,
		36.455521, 35.276676, 21.886017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460682, 34.403931, 21.524950>,  <36.881325, 34.737732, 22.021044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460682, 34.403931, 21.524950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490616, 34.798965, 21.469715>,  <36.508575, 35.035988, 21.436573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490616, 34.798965, 21.469715>,  <36.460682, 34.403931, 21.524950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490616, 34.798965, 21.469715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110772, -0.145852, -0.983085,
		-0.991024, 0.058273, -0.120312,
		0.074835, 0.987589, -0.138088,
		36.513065, 35.095242, 21.428289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111927, 34.504963, 20.975321>,  <36.460682, 34.403931, 21.524950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111927, 34.504963, 20.975321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335602, 34.836098, 20.993191>,  <36.469807, 35.034779, 21.003914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335602, 34.836098, 20.993191>,  <36.111927, 34.504963, 20.975321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335602, 34.836098, 20.993191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161319, -0.055791, -0.985324,
		-0.813196, 0.558186, -0.164743,
		0.559185, 0.827838, 0.044677,
		36.503357, 35.084450, 21.006594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787556, 34.989662, 20.550247>,  <36.111927, 34.504963, 20.975321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787556, 34.989662, 20.550247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176643, 35.077240, 20.580927>,  <36.410095, 35.129787, 20.599335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176643, 35.077240, 20.580927>,  <35.787556, 34.989662, 20.550247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176643, 35.077240, 20.580927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096867, -0.082907, -0.991838,
		-0.210803, 0.972208, -0.101854,
		0.972717, 0.218949, 0.076698,
		36.468460, 35.142925, 20.603935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781208, 35.434181, 20.023293>,  <35.787556, 34.989662, 20.550247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781208, 35.434181, 20.023293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166687, 35.363850, 20.103659>,  <36.397976, 35.321651, 20.151878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166687, 35.363850, 20.103659>,  <35.781208, 35.434181, 20.023293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166687, 35.363850, 20.103659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168650, -0.182484, -0.968636,
		0.206983, 0.967358, -0.146206,
		0.963699, -0.175834, 0.200916,
		36.455795, 35.311100, 20.163933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096188, 35.883202, 19.566507>,  <35.781208, 35.434181, 20.023293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096188, 35.883202, 19.566507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370373, 35.606255, 19.656637>,  <36.534882, 35.440086, 19.710714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370373, 35.606255, 19.656637>,  <36.096188, 35.883202, 19.566507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370373, 35.606255, 19.656637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203326, -0.115133, -0.972318,
		0.699143, 0.712301, 0.061857,
		0.685461, -0.692367, 0.225324,
		36.576012, 35.398544, 19.724234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769485, 36.132587, 19.352749>,  <36.096188, 35.883202, 19.566507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769485, 36.132587, 19.352749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772518, 35.732903, 19.368298>,  <36.774338, 35.493092, 19.377626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772518, 35.732903, 19.368298>,  <36.769485, 36.132587, 19.352749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772518, 35.732903, 19.368298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473114, -0.030660, -0.880467,
		0.880968, 0.025069, 0.472511,
		0.007585, -0.999216, 0.038871,
		36.774796, 35.433136, 19.379959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491623, 35.865547, 19.213425>,  <36.769485, 36.132587, 19.352749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491623, 35.865547, 19.213425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237213, 35.564205, 19.146574>,  <37.084568, 35.383400, 19.106462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237213, 35.564205, 19.146574>,  <37.491623, 35.865547, 19.213425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237213, 35.564205, 19.146574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487433, -0.224312, -0.843856,
		0.598234, -0.618175, 0.509878,
		-0.636023, -0.753355, -0.167127,
		37.046406, 35.338200, 19.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844727, 35.425072, 18.675898>,  <37.491623, 35.865547, 19.213425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844727, 35.425072, 18.675898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482182, 35.256180, 18.669849>,  <37.264656, 35.154842, 18.666220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482182, 35.256180, 18.669849>,  <37.844727, 35.425072, 18.675898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482182, 35.256180, 18.669849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189006, -0.373187, -0.908300,
		0.377872, -0.826105, 0.418047,
		-0.906361, -0.422234, -0.015122,
		37.210274, 35.129509, 18.665312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942383, 34.692200, 18.634325>,  <37.844727, 35.425072, 18.675898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942383, 34.692200, 18.634325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575703, 34.781723, 18.501917>,  <37.355694, 34.835438, 18.422472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575703, 34.781723, 18.501917>,  <37.942383, 34.692200, 18.634325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575703, 34.781723, 18.501917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174305, -0.521476, -0.835273,
		-0.359557, -0.823392, 0.439026,
		-0.916699, 0.223804, -0.331022,
		37.300694, 34.848866, 18.402611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550747, 34.110451, 18.488398>,  <37.942383, 34.692200, 18.634325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550747, 34.110451, 18.488398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331264, 34.343349, 18.248428>,  <37.199577, 34.483089, 18.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331264, 34.343349, 18.248428>,  <37.550747, 34.110451, 18.488398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331264, 34.343349, 18.248428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241821, -0.576384, -0.780579,
		-0.800279, -0.573381, 0.175464,
		-0.548704, 0.582251, -0.599924,
		37.166653, 34.518024, 18.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192242, 33.660946, 18.012156>,  <37.550747, 34.110451, 18.488398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192242, 33.660946, 18.012156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213154, 34.024055, 17.845680>,  <37.225700, 34.241920, 17.745796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213154, 34.024055, 17.845680>,  <37.192242, 33.660946, 18.012156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213154, 34.024055, 17.845680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243280, -0.415777, -0.876325,
		-0.968546, -0.055437, -0.242579,
		0.052278, 0.907776, -0.416186,
		37.228836, 34.296387, 17.720825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849068, 33.601574, 17.306337>,  <37.192242, 33.660946, 18.012156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849068, 33.601574, 17.306337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112961, 33.901802, 17.321306>,  <37.271297, 34.081940, 17.330288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112961, 33.901802, 17.321306>,  <36.849068, 33.601574, 17.306337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112961, 33.901802, 17.321306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097347, -0.035977, -0.994600,
		-0.745173, 0.659809, -0.096801,
		0.659728, 0.750572, 0.037421,
		37.310879, 34.126972, 17.332533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610825, 34.060040, 16.772892>,  <36.849068, 33.601574, 17.306337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610825, 34.060040, 16.772892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989429, 34.178169, 16.824902>,  <37.216591, 34.249046, 16.856108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989429, 34.178169, 16.824902>,  <36.610825, 34.060040, 16.772892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989429, 34.178169, 16.824902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142167, -0.019924, -0.989642,
		-0.289676, 0.955189, -0.060844,
		0.946508, 0.295325, 0.130025,
		37.273380, 34.266766, 16.863909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649128, 34.671562, 16.332684>,  <36.610825, 34.060040, 16.772892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649128, 34.671562, 16.332684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007267, 34.505196, 16.396383>,  <37.222153, 34.405376, 16.434603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007267, 34.505196, 16.396383>,  <36.649128, 34.671562, 16.332684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007267, 34.505196, 16.396383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183992, 0.019809, -0.982728,
		0.405581, 0.909186, 0.094262,
		0.895350, -0.415919, 0.159249,
		37.275871, 34.380421, 16.444159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082546, 35.004162, 15.899208>,  <36.649128, 34.671562, 16.332684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082546, 35.004162, 15.899208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302799, 34.682076, 15.987232>,  <37.434952, 34.488823, 16.040047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302799, 34.682076, 15.987232>,  <37.082546, 35.004162, 15.899208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302799, 34.682076, 15.987232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393679, 0.018034, -0.919071,
		0.736084, 0.592705, 0.326927,
		0.550634, -0.805218, 0.220061,
		37.467991, 34.440510, 16.053251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698032, 35.226326, 15.860530>,  <37.082546, 35.004162, 15.899208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698032, 35.226326, 15.860530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723663, 34.829762, 15.814939>,  <37.739040, 34.591824, 15.787583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723663, 34.829762, 15.814939>,  <37.698032, 35.226326, 15.860530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723663, 34.829762, 15.814939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591706, 0.129717, -0.795649,
		0.803603, -0.016459, 0.594938,
		0.064078, -0.991414, -0.113979,
		37.742886, 34.532337, 15.780745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448261, 35.003048, 15.688826>,  <37.698032, 35.226326, 15.860530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448261, 35.003048, 15.688826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191811, 34.733421, 15.542074>,  <38.037941, 34.571648, 15.454023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191811, 34.733421, 15.542074>,  <38.448261, 35.003048, 15.688826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191811, 34.733421, 15.542074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478568, 0.022566, -0.877760,
		0.599945, -0.738329, 0.308118,
		-0.641123, -0.674063, -0.366879,
		37.999474, 34.531204, 15.432011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847008, 34.545998, 15.222222>,  <38.448261, 35.003048, 15.688826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847008, 34.545998, 15.222222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463081, 34.506660, 15.117088>,  <38.232727, 34.483059, 15.054008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463081, 34.506660, 15.117088>,  <38.847008, 34.545998, 15.222222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463081, 34.506660, 15.117088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255733, 0.079161, -0.963501,
		0.115555, -0.992000, -0.050831,
		-0.959816, -0.098338, -0.262834,
		38.175137, 34.477158, 15.038239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873573, 34.154835, 14.630139>,  <38.847008, 34.545998, 15.222222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873573, 34.154835, 14.630139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496895, 34.287720, 14.608819>,  <38.270889, 34.367451, 14.596027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496895, 34.287720, 14.608819>,  <38.873573, 34.154835, 14.630139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496895, 34.287720, 14.608819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149914, 0.272466, -0.950415,
		-0.301218, -0.902993, -0.306384,
		-0.941697, 0.332214, -0.053300,
		38.214386, 34.387383, 14.592829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810089, 34.081913, 13.941128>,  <38.873573, 34.154835, 14.630139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810089, 34.081913, 13.941128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 34.303711, 14.050555>,  <38.307091, 34.436790, 14.116212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 34.303711, 14.050555>,  <38.810089, 34.081913, 13.941128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495716, 34.303711, 14.050555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029758, 0.408012, -0.912491,
		-0.617592, -0.725301, -0.304171,
		-0.785936, 0.554495, 0.273569,
		38.259933, 34.470058, 14.132626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253582, 33.925091, 13.475819>,  <38.810089, 34.081913, 13.941128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253582, 33.925091, 13.475819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168236, 34.286587, 13.624269>,  <38.117027, 34.503483, 13.713340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168236, 34.286587, 13.624269>,  <38.253582, 33.925091, 13.475819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168236, 34.286587, 13.624269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243401, 0.318725, -0.916062,
		-0.946168, -0.285785, 0.151967,
		-0.213361, 0.903738, 0.371128,
		38.104229, 34.557709, 13.735608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543022, 34.092422, 13.268395>,  <38.253582, 33.925091, 13.475819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543022, 34.092422, 13.268395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737644, 34.433216, 13.345737>,  <37.854416, 34.637691, 13.392143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737644, 34.433216, 13.345737>,  <37.543022, 34.092422, 13.268395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737644, 34.433216, 13.345737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160783, 0.304862, -0.938727,
		-0.858728, 0.425653, 0.285317,
		0.486554, 0.851985, 0.193356,
		37.883610, 34.688812, 13.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241283, 34.547024, 12.863344>,  <37.543022, 34.092422, 13.268395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241283, 34.547024, 12.863344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581875, 34.736420, 12.953487>,  <37.786228, 34.850060, 13.007573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581875, 34.736420, 12.953487>,  <37.241283, 34.547024, 12.863344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581875, 34.736420, 12.953487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030900, 0.474314, -0.879814,
		-0.523477, 0.742180, 0.418499,
		0.851480, 0.473494, 0.225358,
		37.837318, 34.878468, 13.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154747, 35.181839, 12.659869>,  <37.241283, 34.547024, 12.863344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154747, 35.181839, 12.659869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553631, 35.164181, 12.683928>,  <37.792961, 35.153587, 12.698362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553631, 35.164181, 12.683928>,  <37.154747, 35.181839, 12.659869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553631, 35.164181, 12.683928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074283, 0.512513, -0.855461,
		0.006938, 0.857544, 0.514363,
		0.997213, -0.044144, 0.060145,
		37.852795, 35.150936, 12.701971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362114, 35.832729, 12.439466>,  <37.154747, 35.181839, 12.659869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362114, 35.832729, 12.439466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670219, 35.585247, 12.377633>,  <37.855083, 35.436756, 12.340533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670219, 35.585247, 12.377633>,  <37.362114, 35.832729, 12.439466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670219, 35.585247, 12.377633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125856, 0.385110, -0.914249,
		0.625182, 0.684758, 0.374504,
		0.770265, -0.618705, -0.154583,
		37.901299, 35.399635, 12.331258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900520, 36.224339, 12.224678>,  <37.362114, 35.832729, 12.439466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900520, 36.224339, 12.224678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980747, 35.859241, 12.082310>,  <38.028885, 35.640182, 11.996889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980747, 35.859241, 12.082310>,  <37.900520, 36.224339, 12.224678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980747, 35.859241, 12.082310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244501, 0.398443, -0.884003,
		0.948678, 0.090282, 0.303082,
		0.200570, -0.912739, -0.355920,
		38.040916, 35.585419, 11.975533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475269, 36.305805, 11.877201>,  <37.900520, 36.224339, 12.224678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475269, 36.305805, 11.877201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361080, 35.961220, 11.709211>,  <38.292568, 35.754467, 11.608418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361080, 35.961220, 11.709211>,  <38.475269, 36.305805, 11.877201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361080, 35.961220, 11.709211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179199, 0.382502, -0.906410,
		0.941485, -0.334013, 0.045181,
		-0.285470, -0.861468, -0.419975,
		38.275440, 35.702778, 11.583219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966629, 36.101364, 11.358985>,  <38.475269, 36.305805, 11.877201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966629, 36.101364, 11.358985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622082, 35.923641, 11.260487>,  <38.415352, 35.817009, 11.201387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622082, 35.923641, 11.260487>,  <38.966629, 36.101364, 11.358985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622082, 35.923641, 11.260487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149870, 0.240905, -0.958908,
		0.485371, -0.862877, -0.140919,
		-0.861368, -0.444307, -0.246247,
		38.363670, 35.790348, 11.186612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075432, 35.671570, 10.772636>,  <38.966629, 36.101364, 11.358985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075432, 35.671570, 10.772636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680401, 35.727070, 10.743128>,  <38.443382, 35.760368, 10.725423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680401, 35.727070, 10.743128>,  <39.075432, 35.671570, 10.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680401, 35.727070, 10.743128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096633, 0.166011, -0.981378,
		-0.123920, -0.976314, -0.177357,
		-0.987576, 0.138751, -0.073772,
		38.384129, 35.768696, 10.720996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882137, 35.300491, 10.163334>,  <39.075432, 35.671570, 10.772636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882137, 35.300491, 10.163334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563351, 35.527851, 10.245082>,  <38.372078, 35.664265, 10.294130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563351, 35.527851, 10.245082>,  <38.882137, 35.300491, 10.163334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563351, 35.527851, 10.245082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035207, 0.294058, -0.955139,
		-0.602995, -0.768410, -0.214343,
		-0.796968, 0.568397, 0.204369,
		38.324261, 35.698372, 10.306393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379902, 35.181763, 9.579619>,  <38.882137, 35.300491, 10.163334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379902, 35.181763, 9.579619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351074, 35.534855, 9.765350>,  <38.333778, 35.746708, 9.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351074, 35.534855, 9.765350>,  <38.379902, 35.181763, 9.579619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351074, 35.534855, 9.765350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224788, 0.467934, -0.854698,
		-0.971739, 0.042781, -0.232148,
		-0.072065, 0.882728, 0.464326,
		38.329456, 35.799675, 9.904648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897079, 35.600311, 9.277325>,  <38.379902, 35.181763, 9.579619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897079, 35.600311, 9.277325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098362, 35.876640, 9.484997>,  <38.219131, 36.042439, 9.609600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098362, 35.876640, 9.484997>,  <37.897079, 35.600311, 9.277325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098362, 35.876640, 9.484997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081653, 0.636108, -0.767267,
		-0.860299, 0.343702, 0.376502,
		0.503208, 0.690822, 0.519179,
		38.249325, 36.083885, 9.640751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629734, 36.232002, 9.352091>,  <37.897079, 35.600311, 9.277325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629734, 36.232002, 9.352091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002079, 36.360783, 9.421192>,  <38.225487, 36.438053, 9.462653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002079, 36.360783, 9.421192>,  <37.629734, 36.232002, 9.352091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002079, 36.360783, 9.421192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166164, 0.794117, -0.584609,
		-0.325403, 0.515484, 0.792710,
		0.930861, 0.321953, 0.172753,
		38.281338, 36.457367, 9.473018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628498, 36.971115, 9.475974>,  <37.629734, 36.232002, 9.352091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628498, 36.971115, 9.475974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 36.860218, 9.339188>,  <38.203144, 36.793678, 9.257115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987652, 36.860218, 9.339188>,  <37.628498, 36.971115, 9.475974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987652, 36.860218, 9.339188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063205, 0.687556, -0.723376,
		0.435671, 0.671121, 0.599822,
		0.897884, -0.277242, -0.341966,
		38.257015, 36.777046, 9.236598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815708, 36.842209, 8.780890>,  <37.628498, 36.971115, 9.475974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815708, 36.842209, 8.780890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808777, 37.141064, 8.515111>,  <37.804619, 37.320377, 8.355643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808777, 37.141064, 8.515111>,  <37.815708, 36.842209, 8.780890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808777, 37.141064, 8.515111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801034, -0.408074, -0.437972,
		-0.598368, 0.524658, 0.605549,
		-0.017324, 0.747134, -0.664448,
		37.803581, 37.365204, 8.315777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226173, 37.284492, 8.809235>,  <37.815708, 36.842209, 8.780890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226173, 37.284492, 8.809235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365417, 37.305038, 8.434816>,  <37.448963, 37.317364, 8.210165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365417, 37.305038, 8.434816>,  <37.226173, 37.284492, 8.809235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365417, 37.305038, 8.434816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873506, -0.344693, -0.343765,
		-0.340305, 0.937309, -0.075127,
		0.348110, 0.051361, -0.936045,
		37.469852, 37.320446, 8.154003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692383, 37.414532, 8.402210>,  <37.226173, 37.284492, 8.809235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692383, 37.414532, 8.402210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950356, 37.280376, 8.127525>,  <37.105141, 37.199883, 7.962714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950356, 37.280376, 8.127525>,  <36.692383, 37.414532, 8.402210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950356, 37.280376, 8.127525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763337, -0.326346, -0.557508,
		-0.037124, 0.883749, -0.466487,
		0.644933, -0.335390, -0.686713,
		37.143837, 37.179760, 7.921511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353779, 36.761799, 8.672807>,  <36.692383, 37.414532, 8.402210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353779, 36.761799, 8.672807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094765, 36.459663, 8.713124>,  <35.939358, 36.278381, 8.737315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094765, 36.459663, 8.713124>,  <36.353779, 36.761799, 8.672807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094765, 36.459663, 8.713124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133181, 0.242409, 0.960989,
		-0.750309, 0.608848, -0.257565,
		-0.647533, -0.755342, 0.100795,
		35.900505, 36.233059, 8.743362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584488, 36.939678, 8.900536>,  <36.353779, 36.761799, 8.672807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584488, 36.939678, 8.900536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627586, 36.556889, 9.008302>,  <35.653446, 36.327213, 9.072962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627586, 36.556889, 9.008302>,  <35.584488, 36.939678, 8.900536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627586, 36.556889, 9.008302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179012, 0.247889, 0.952106,
		-0.977929, -0.150815, -0.144601,
		0.107747, -0.956978, 0.269416,
		35.659912, 36.269794, 9.089127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964848, 36.721092, 9.331140>,  <35.584488, 36.939678, 8.900536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964848, 36.721092, 9.331140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273949, 36.488041, 9.431857>,  <35.459408, 36.348209, 9.492288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273949, 36.488041, 9.431857>,  <34.964848, 36.721092, 9.331140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273949, 36.488041, 9.431857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175801, 0.184716, 0.966941,
		-0.609876, -0.791471, 0.040313,
		0.772752, -0.582626, 0.251795,
		35.505775, 36.313251, 9.507396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725460, 36.334892, 9.925818>,  <34.964848, 36.721092, 9.331140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725460, 36.334892, 9.925818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125233, 36.348351, 9.924349>,  <35.365097, 36.356426, 9.923467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125233, 36.348351, 9.924349>,  <34.725460, 36.334892, 9.925818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125233, 36.348351, 9.924349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001542, 0.063170, 0.998002,
		0.033801, -0.997436, 0.063082,
		0.999427, 0.033636, -0.003674,
		35.425060, 36.358444, 9.923246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951168, 35.859684, 10.374345>,  <34.725460, 36.334892, 9.925818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951168, 35.859684, 10.374345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235363, 36.140953, 10.363329>,  <35.405880, 36.309715, 10.356719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235363, 36.140953, 10.363329>,  <34.951168, 35.859684, 10.374345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235363, 36.140953, 10.363329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029225, 0.009618, 0.999527,
		0.703103, -0.710956, -0.013717,
		0.710487, 0.703171, -0.027540,
		35.448509, 36.351906, 10.355067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351212, 35.613098, 10.929278>,  <34.951168, 35.859684, 10.374345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351212, 35.613098, 10.929278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429176, 36.001457, 10.873606>,  <35.475956, 36.234470, 10.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429176, 36.001457, 10.873606>,  <35.351212, 35.613098, 10.929278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429176, 36.001457, 10.873606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091447, 0.159273, 0.982990,
		0.976548, -0.178869, 0.119830,
		0.194912, 0.970895, -0.139180,
		35.487648, 36.292725, 10.831852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756310, 35.818432, 11.474198>,  <35.351212, 35.613098, 10.929278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756310, 35.818432, 11.474198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624836, 36.176888, 11.354932>,  <35.545952, 36.391960, 11.283372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624836, 36.176888, 11.354932>,  <35.756310, 35.818432, 11.474198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624836, 36.176888, 11.354932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035192, 0.327108, 0.944332,
		0.943784, 0.299894, -0.139052,
		-0.328684, 0.896139, -0.298165,
		35.526230, 36.445728, 11.265482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160633, 36.302734, 11.940410>,  <35.756310, 35.818432, 11.474198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160633, 36.302734, 11.940410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864674, 36.511990, 11.771232>,  <35.687099, 36.637543, 11.669724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864674, 36.511990, 11.771232>,  <36.160633, 36.302734, 11.940410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864674, 36.511990, 11.771232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273870, 0.340011, 0.899660,
		0.614449, 0.781488, -0.108302,
		-0.739897, 0.523135, -0.422945,
		35.642704, 36.668930, 11.644348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232265, 36.981045, 12.295669>,  <36.160633, 36.302734, 11.940410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232265, 36.981045, 12.295669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866280, 36.964432, 12.135111>,  <35.646690, 36.954464, 12.038776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866280, 36.964432, 12.135111>,  <36.232265, 36.981045, 12.295669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866280, 36.964432, 12.135111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399914, 0.226354, 0.888162,
		0.053967, 0.973159, -0.223716,
		-0.914963, -0.041536, -0.401395,
		35.591789, 36.951969, 12.014692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876820, 37.628891, 12.405430>,  <36.232265, 36.981045, 12.295669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876820, 37.628891, 12.405430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589581, 37.352791, 12.369912>,  <35.417236, 37.187130, 12.348601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589581, 37.352791, 12.369912>,  <35.876820, 37.628891, 12.405430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589581, 37.352791, 12.369912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326695, 0.221685, 0.918763,
		-0.614494, 0.688772, -0.384694,
		-0.718100, -0.690252, -0.088794,
		35.374149, 37.145714, 12.343274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243587, 37.959873, 12.546149>,  <35.876820, 37.628891, 12.405430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243587, 37.959873, 12.546149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185944, 37.574421, 12.636176>,  <35.151360, 37.343151, 12.690192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185944, 37.574421, 12.636176>,  <35.243587, 37.959873, 12.546149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185944, 37.574421, 12.636176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443895, 0.266222, 0.855619,
		-0.884416, 0.023393, -0.466113,
		-0.144105, -0.963628, 0.225067,
		35.142712, 37.285332, 12.703696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608982, 37.900433, 12.879828>,  <35.243587, 37.959873, 12.546149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608982, 37.900433, 12.879828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754162, 37.546448, 12.996528>,  <34.841270, 37.334057, 13.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754162, 37.546448, 12.996528>,  <34.608982, 37.900433, 12.879828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754162, 37.546448, 12.996528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477647, 0.092142, 0.873707,
		-0.800078, -0.456460, -0.389256,
		0.362945, -0.884960, 0.291748,
		34.863045, 37.280960, 13.084052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130844, 37.713799, 13.367085>,  <34.608982, 37.900433, 12.879828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130844, 37.713799, 13.367085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451031, 37.492836, 13.460123>,  <34.643143, 37.360260, 13.515945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451031, 37.492836, 13.460123>,  <34.130844, 37.713799, 13.367085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451031, 37.492836, 13.460123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206537, 0.110076, 0.972227,
		-0.562666, -0.826276, -0.025980,
		0.800468, -0.552405, 0.232593,
		34.691170, 37.327114, 13.529902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875854, 37.455345, 13.980966>,  <34.130844, 37.713799, 13.367085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875854, 37.455345, 13.980966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 37.393803, 13.981688>,  <34.508232, 37.356876, 13.982122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 37.393803, 13.981688>,  <33.875854, 37.455345, 13.980966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271091, 37.393803, 13.981688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027992, 0.191291, 0.981134,
		-0.151303, -0.969399, 0.193320,
		0.988091, -0.153860, 0.001807,
		34.567520, 37.347645, 13.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985783, 36.941711, 14.403908>,  <33.875854, 37.455345, 13.980966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985783, 36.941711, 14.403908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326912, 37.150501, 14.409999>,  <34.531590, 37.275776, 14.413653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326912, 37.150501, 14.409999>,  <33.985783, 36.941711, 14.403908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326912, 37.150501, 14.409999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121724, 0.170350, 0.977836,
		0.507816, -0.835775, 0.208816,
		0.852823, 0.521978, 0.015227,
		34.582760, 37.307095, 14.414567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267296, 36.800137, 15.024953>,  <33.985783, 36.941711, 14.403908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267296, 36.800137, 15.024953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471378, 37.131737, 14.933344>,  <34.593826, 37.330696, 14.878379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471378, 37.131737, 14.933344>,  <34.267296, 36.800137, 15.024953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471378, 37.131737, 14.933344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066126, 0.227689, 0.971486,
		0.857508, -0.510800, 0.061349,
		0.510204, 0.829000, -0.229022,
		34.624439, 37.380436, 14.864637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828533, 36.921043, 15.525400>,  <34.267296, 36.800137, 15.024953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828533, 36.921043, 15.525400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780254, 37.289562, 15.377540>,  <34.751286, 37.510674, 15.288823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780254, 37.289562, 15.377540>,  <34.828533, 36.921043, 15.525400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780254, 37.289562, 15.377540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151637, 0.385115, 0.910325,
		0.981039, 0.053824, -0.186187,
		-0.120700, 0.921298, -0.369651,
		34.744045, 37.565952, 15.266644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384399, 37.246819, 15.772759>,  <34.828533, 36.921043, 15.525400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384399, 37.246819, 15.772759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122993, 37.537342, 15.687530>,  <34.966148, 37.711655, 15.636392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122993, 37.537342, 15.687530>,  <35.384399, 37.246819, 15.772759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122993, 37.537342, 15.687530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070341, 0.338562, 0.938311,
		0.753639, 0.598212, -0.272344,
		-0.653514, 0.726304, -0.213075,
		34.926941, 37.755234, 15.623607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761215, 37.895149, 16.062231>,  <35.384399, 37.246819, 15.772759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761215, 37.895149, 16.062231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364513, 37.941784, 16.040941>,  <35.126492, 37.969765, 16.028168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364513, 37.941784, 16.040941>,  <35.761215, 37.895149, 16.062231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364513, 37.941784, 16.040941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020842, 0.263066, 0.964553,
		0.126452, 0.957708, -0.258466,
		-0.991754, 0.116582, -0.053226,
		35.066986, 37.976757, 16.024973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566792, 38.565128, 16.367872>,  <35.761215, 37.895149, 16.062231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566792, 38.565128, 16.367872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228573, 38.352089, 16.382765>,  <35.025642, 38.224266, 16.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228573, 38.352089, 16.382765>,  <35.566792, 38.565128, 16.367872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228573, 38.352089, 16.382765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077826, 0.191949, 0.978314,
		-0.528195, 0.824315, -0.203752,
		-0.845549, -0.532598, 0.037233,
		34.974907, 38.192310, 16.393934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078682, 38.970779, 16.777451>,  <35.566792, 38.565128, 16.367872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078682, 38.970779, 16.777451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945599, 38.593822, 16.791298>,  <34.865749, 38.367649, 16.799606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945599, 38.593822, 16.791298>,  <35.078682, 38.970779, 16.777451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945599, 38.593822, 16.791298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274352, 0.131849, 0.952548,
		-0.902238, 0.307427, -0.302415,
		-0.332712, -0.942393, 0.034617,
		34.845783, 38.311104, 16.801683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546021, 39.007149, 17.198416>,  <35.078682, 38.970779, 16.777451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546021, 39.007149, 17.198416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553837, 38.607567, 17.214960>,  <34.558529, 38.367817, 17.224888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553837, 38.607567, 17.214960>,  <34.546021, 39.007149, 17.198416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553837, 38.607567, 17.214960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314997, 0.033111, 0.948515,
		-0.948891, -0.031565, -0.314020,
		0.019543, -0.998953, 0.041362,
		34.559700, 38.307880, 17.227369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943203, 38.788910, 17.532625>,  <34.546021, 39.007149, 17.198416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943203, 38.788910, 17.532625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181702, 38.470001, 17.570236>,  <34.324802, 38.278656, 17.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181702, 38.470001, 17.570236>,  <33.943203, 38.788910, 17.532625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181702, 38.470001, 17.570236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413396, -0.204517, 0.887286,
		-0.688180, -0.567914, -0.451533,
		0.596249, -0.797274, 0.094029,
		34.360577, 38.230820, 17.598444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460247, 38.319340, 17.827814>,  <33.943203, 38.788910, 17.532625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460247, 38.319340, 17.827814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826710, 38.183022, 17.912209>,  <34.046585, 38.101231, 17.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826710, 38.183022, 17.912209>,  <33.460247, 38.319340, 17.827814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826710, 38.183022, 17.912209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295921, -0.220050, 0.929521,
		-0.270358, -0.914019, -0.302451,
		0.916153, -0.340805, 0.210985,
		34.101555, 38.080780, 17.975504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362862, 37.793667, 18.214859>,  <33.460247, 38.319340, 17.827814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362862, 37.793667, 18.214859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744900, 37.857883, 18.314468>,  <33.974125, 37.896412, 18.374233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744900, 37.857883, 18.314468>,  <33.362862, 37.793667, 18.214859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744900, 37.857883, 18.314468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178976, -0.357196, 0.916722,
		0.236123, -0.920129, -0.312424,
		0.955099, 0.160543, 0.249023,
		34.031429, 37.906048, 18.389175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625950, 37.144112, 18.255325>,  <33.362862, 37.793667, 18.214859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625950, 37.144112, 18.255325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852806, 37.405357, 18.456041>,  <33.988918, 37.562103, 18.576471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852806, 37.405357, 18.456041>,  <33.625950, 37.144112, 18.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852806, 37.405357, 18.456041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262971, -0.433769, 0.861795,
		0.780513, -0.620714, -0.074257,
		0.567138, 0.653114, 0.501792,
		34.022949, 37.601292, 18.606579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935909, 36.814960, 18.784534>,  <33.625950, 37.144112, 18.255325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935909, 36.814960, 18.784534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973057, 37.193966, 18.906910>,  <33.995346, 37.421368, 18.980335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973057, 37.193966, 18.906910>,  <33.935909, 36.814960, 18.784534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973057, 37.193966, 18.906910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343259, -0.257962, 0.903122,
		0.934638, -0.188891, 0.301285,
		0.092872, 0.947511, 0.305940,
		34.000919, 37.478218, 18.998692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494843, 36.841122, 19.371906>,  <33.935909, 36.814960, 18.784534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494843, 36.841122, 19.371906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292255, 37.183296, 19.415201>,  <34.170704, 37.388603, 19.441177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292255, 37.183296, 19.415201>,  <34.494843, 36.841122, 19.371906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292255, 37.183296, 19.415201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166453, -0.220162, 0.961157,
		0.846040, 0.468779, 0.253895,
		-0.506468, 0.855438, 0.108236,
		34.140316, 37.439926, 19.447672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684792, 37.091839, 20.056215>,  <34.494843, 36.841122, 19.371906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684792, 37.091839, 20.056215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323788, 37.248562, 19.984707>,  <34.107185, 37.342594, 19.941801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323788, 37.248562, 19.984707>,  <34.684792, 37.091839, 20.056215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323788, 37.248562, 19.984707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199269, -0.011920, 0.979872,
		0.381792, 0.919969, 0.088834,
		-0.902511, 0.391809, -0.178771,
		34.053036, 37.366104, 19.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557598, 37.591125, 20.607477>,  <34.684792, 37.091839, 20.056215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557598, 37.591125, 20.607477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197369, 37.514164, 20.451557>,  <33.981232, 37.467987, 20.358006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197369, 37.514164, 20.451557>,  <34.557598, 37.591125, 20.607477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197369, 37.514164, 20.451557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421523, 0.167441, 0.891225,
		-0.106204, 0.966926, -0.231895,
		-0.900577, -0.192401, -0.389799,
		33.927197, 37.456444, 20.334618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113098, 38.143097, 20.774109>,  <34.557598, 37.591125, 20.607477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113098, 38.143097, 20.774109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871830, 37.834175, 20.694387>,  <33.727070, 37.648823, 20.646555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871830, 37.834175, 20.694387>,  <34.113098, 38.143097, 20.774109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871830, 37.834175, 20.694387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569478, 0.242038, 0.785565,
		-0.558457, 0.587333, -0.585803,
		-0.603175, -0.772306, -0.199305,
		33.690876, 37.602482, 20.634596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486469, 38.428432, 20.904709>,  <34.113098, 38.143097, 20.774109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486469, 38.428432, 20.904709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409500, 38.036163, 20.890560>,  <33.363319, 37.800800, 20.882071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409500, 38.036163, 20.890560>,  <33.486469, 38.428432, 20.904709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409500, 38.036163, 20.890560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637112, 0.097435, 0.764588,
		-0.746364, 0.169663, -0.643548,
		-0.192426, -0.980674, -0.035373,
		33.351772, 37.741962, 20.879948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834328, 38.464066, 20.904726>,  <33.486469, 38.428432, 20.904709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834328, 38.464066, 20.904726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942986, 38.098186, 21.024416>,  <33.008183, 37.878658, 21.096230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942986, 38.098186, 21.024416>,  <32.834328, 38.464066, 20.904726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942986, 38.098186, 21.024416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397551, 0.176498, 0.900445,
		-0.876447, -0.363562, -0.315694,
		0.271648, -0.914697, 0.299226,
		33.024479, 37.823776, 21.114183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262829, 38.203079, 21.272789>,  <32.834328, 38.464066, 20.904726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262829, 38.203079, 21.272789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557549, 37.965702, 21.402376>,  <32.734379, 37.823277, 21.480129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557549, 37.965702, 21.402376>,  <32.262829, 38.203079, 21.272789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557549, 37.965702, 21.402376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253054, 0.202287, 0.946067,
		-0.626974, -0.779040, -0.001130,
		0.736796, -0.593445, 0.323968,
		32.778587, 37.787670, 21.499567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964344, 37.720371, 21.681253>,  <32.262829, 38.203079, 21.272789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964344, 37.720371, 21.681253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339905, 37.710423, 21.818569>,  <32.565243, 37.704453, 21.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339905, 37.710423, 21.818569>,  <31.964344, 37.720371, 21.681253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339905, 37.710423, 21.818569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338291, 0.117142, 0.933722,
		-0.063441, -0.992804, 0.101569,
		0.938901, -0.024877, 0.343288,
		32.621574, 37.702961, 21.921556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917042, 37.440674, 22.304264>,  <31.964344, 37.720371, 21.681253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917042, 37.440674, 22.304264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287621, 37.588131, 22.334721>,  <32.509968, 37.676605, 22.352995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287621, 37.588131, 22.334721>,  <31.917042, 37.440674, 22.304264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287621, 37.588131, 22.334721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117375, 0.090719, 0.988935,
		0.357659, -0.925133, 0.127316,
		0.926447, 0.368646, 0.076141,
		32.565556, 37.698723, 22.357563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151775, 37.092739, 22.907843>,  <31.917042, 37.440674, 22.304264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151775, 37.092739, 22.907843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366989, 37.424599, 22.848234>,  <32.496117, 37.623714, 22.812469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366989, 37.424599, 22.848234>,  <32.151775, 37.092739, 22.907843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366989, 37.424599, 22.848234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005508, 0.173325, 0.984849,
		0.842908, -0.530699, 0.088685,
		0.538030, 0.829648, -0.149020,
		32.528397, 37.673492, 22.803528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682365, 37.097752, 23.411901>,  <32.151775, 37.092739, 22.907843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682365, 37.097752, 23.411901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693390, 37.482517, 23.303116>,  <32.700005, 37.713375, 23.237844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693390, 37.482517, 23.303116>,  <32.682365, 37.097752, 23.411901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693390, 37.482517, 23.303116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024208, 0.271346, 0.962177,
		0.999327, -0.033103, -0.015807,
		0.027562, 0.961912, -0.271965,
		32.701660, 37.771091, 23.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283833, 37.441830, 23.781118>,  <32.682365, 37.097752, 23.411901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283833, 37.441830, 23.781118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023224, 37.734093, 23.699469>,  <32.866859, 37.909451, 23.650478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023224, 37.734093, 23.699469>,  <33.283833, 37.441830, 23.781118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023224, 37.734093, 23.699469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234328, 0.449732, 0.861877,
		0.721534, 0.513698, -0.464222,
		-0.651520, 0.730654, -0.204123,
		32.827766, 37.953289, 23.638231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558868, 37.998520, 24.143084>,  <33.283833, 37.441830, 23.781118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558868, 37.998520, 24.143084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190140, 38.139847, 24.079313>,  <32.968903, 38.224644, 24.041052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190140, 38.139847, 24.079313>,  <33.558868, 37.998520, 24.143084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190140, 38.139847, 24.079313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101224, 0.616442, 0.780866,
		0.374168, 0.703681, -0.604013,
		-0.921820, 0.353316, -0.159423,
		32.913593, 38.245842, 24.031487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519409, 38.747345, 24.211800>,  <33.558868, 37.998520, 24.143084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519409, 38.747345, 24.211800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140957, 38.634567, 24.275473>,  <32.913883, 38.566902, 24.313677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140957, 38.634567, 24.275473>,  <33.519409, 38.747345, 24.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140957, 38.634567, 24.275473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021235, 0.436542, 0.899433,
		-0.323080, 0.854364, -0.407040,
		-0.946133, -0.281946, 0.159181,
		32.857117, 38.549984, 24.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160522, 39.275101, 24.544046>,  <33.519409, 38.747345, 24.211800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160522, 39.275101, 24.544046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900646, 38.979813, 24.616627>,  <32.744720, 38.802639, 24.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900646, 38.979813, 24.616627>,  <33.160522, 39.275101, 24.544046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900646, 38.979813, 24.616627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158250, 0.364799, 0.917540,
		-0.743541, 0.567406, -0.353832,
		-0.649695, -0.738222, 0.181451,
		32.705738, 38.758347, 24.671062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616505, 39.612522, 24.822533>,  <33.160522, 39.275101, 24.544046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616505, 39.612522, 24.822533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599239, 39.233910, 24.950422>,  <32.588879, 39.006744, 25.027157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599239, 39.233910, 24.950422>,  <32.616505, 39.612522, 24.822533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599239, 39.233910, 24.950422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150814, 0.322528, 0.934468,
		-0.987619, -0.007881, -0.156671,
		-0.043166, -0.946527, 0.319724,
		32.586288, 38.949951, 25.046339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126556, 40.039230, 25.062874>,  <32.616505, 39.612522, 24.822533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126556, 40.039230, 25.062874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373589, 40.352566, 25.091066>,  <33.521809, 40.540569, 25.107981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373589, 40.352566, 25.091066>,  <33.126556, 40.039230, 25.062874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373589, 40.352566, 25.091066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170973, 0.221180, -0.960129,
		-0.767697, 0.580911, 0.270527,
		0.617584, 0.783341, 0.070479,
		33.558865, 40.587566, 25.112209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791790, 40.663822, 24.866405>,  <33.126556, 40.039230, 25.062874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791790, 40.663822, 24.866405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183929, 40.726715, 24.818747>,  <33.419212, 40.764450, 24.790152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183929, 40.726715, 24.818747>,  <32.791790, 40.663822, 24.866405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183929, 40.726715, 24.818747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163263, 0.307623, -0.937397,
		-0.110736, 0.938428, 0.327248,
		0.980348, 0.157231, -0.119146,
		33.478035, 40.773884, 24.783003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833385, 41.222130, 24.458857>,  <32.791790, 40.663822, 24.866405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833385, 41.222130, 24.458857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205055, 41.081326, 24.413729>,  <33.428059, 40.996845, 24.386652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205055, 41.081326, 24.413729>,  <32.833385, 41.222130, 24.458857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205055, 41.081326, 24.413729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061695, 0.153242, -0.986261,
		0.364461, 0.923367, 0.120671,
		0.929173, -0.352008, -0.112818,
		33.483807, 40.975723, 24.379883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086552, 41.643463, 23.912146>,  <32.833385, 41.222130, 24.458857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086552, 41.643463, 23.912146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336712, 41.331669, 23.926456>,  <33.486809, 41.144592, 23.935043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336712, 41.331669, 23.926456>,  <33.086552, 41.643463, 23.912146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336712, 41.331669, 23.926456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019879, -0.061750, -0.997894,
		0.780052, 0.623371, -0.054114,
		0.625399, -0.779484, 0.035776,
		33.524330, 41.097824, 23.937189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598934, 41.778992, 23.448250>,  <33.086552, 41.643463, 23.912146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598934, 41.778992, 23.448250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624435, 41.380798, 23.476383>,  <33.639736, 41.141884, 23.493263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624435, 41.380798, 23.476383>,  <33.598934, 41.778992, 23.448250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624435, 41.380798, 23.476383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044456, -0.067574, -0.996723,
		0.996975, 0.066673, 0.039947,
		0.063755, -0.995484, 0.070334,
		33.643562, 41.082153, 23.497484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180241, 41.690872, 23.084057>,  <33.598934, 41.778992, 23.448250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180241, 41.690872, 23.084057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970352, 41.350906, 23.103281>,  <33.844421, 41.146927, 23.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970352, 41.350906, 23.103281>,  <34.180241, 41.690872, 23.084057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970352, 41.350906, 23.103281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050097, -0.025528, -0.998418,
		0.849801, -0.526296, -0.029183,
		-0.524718, -0.849918, 0.048060,
		33.812935, 41.095932, 23.117699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530331, 41.271778, 22.651386>,  <34.180241, 41.690872, 23.084057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530331, 41.271778, 22.651386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172031, 41.094173, 22.660219>,  <33.957050, 40.987610, 22.665520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172031, 41.094173, 22.660219>,  <34.530331, 41.271778, 22.651386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172031, 41.094173, 22.660219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048178, -0.146336, -0.988061,
		0.441946, -0.883988, 0.152472,
		-0.895747, -0.444016, 0.022084,
		33.903309, 40.960968, 22.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631306, 40.690849, 22.349302>,  <34.530331, 41.271778, 22.651386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631306, 40.690849, 22.349302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237652, 40.758682, 22.328434>,  <34.001461, 40.799381, 22.315912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237652, 40.758682, 22.328434>,  <34.631306, 40.690849, 22.349302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237652, 40.758682, 22.328434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043698, -0.053328, -0.997621,
		-0.171964, -0.984072, 0.045071,
		-0.984134, 0.169586, -0.052173,
		33.942413, 40.809559, 22.312782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268997, 40.135681, 21.964449>,  <34.631306, 40.690849, 22.349302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268997, 40.135681, 21.964449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009727, 40.440014, 21.951729>,  <33.854168, 40.622612, 21.944098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009727, 40.440014, 21.951729>,  <34.268997, 40.135681, 21.964449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009727, 40.440014, 21.951729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169813, -0.185124, -0.967932,
		-0.742318, -0.621987, 0.249191,
		-0.648172, 0.760829, -0.031799,
		33.815277, 40.668262, 21.942188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878548, 39.964771, 21.408356>,  <34.268997, 40.135681, 21.964449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878548, 39.964771, 21.408356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726372, 40.331009, 21.460443>,  <33.635067, 40.550751, 21.491697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726372, 40.331009, 21.460443>,  <33.878548, 39.964771, 21.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726372, 40.331009, 21.460443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187936, 0.061331, -0.980264,
		-0.905510, -0.397401, 0.148741,
		-0.380436, 0.915593, 0.130222,
		33.612240, 40.605686, 21.499510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205643, 40.052330, 20.940712>,  <33.878548, 39.964771, 21.408356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205643, 40.052330, 20.940712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332047, 40.417286, 21.044779>,  <33.407890, 40.636257, 21.107220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332047, 40.417286, 21.044779>,  <33.205643, 40.052330, 20.940712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332047, 40.417286, 21.044779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343837, 0.365712, -0.864888,
		-0.884258, 0.183859, 0.429282,
		0.316011, 0.912387, 0.260166,
		33.426849, 40.691002, 21.122829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670055, 40.581219, 20.875168>,  <33.205643, 40.052330, 20.940712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670055, 40.581219, 20.875168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021645, 40.753227, 20.792711>,  <33.232597, 40.856430, 20.743238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021645, 40.753227, 20.792711>,  <32.670055, 40.581219, 20.875168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021645, 40.753227, 20.792711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313451, 0.195210, -0.929323,
		-0.359387, 0.881462, 0.306374,
		0.878971, 0.430019, -0.206139,
		33.285336, 40.882233, 20.730869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534401, 41.138229, 20.432219>,  <32.670055, 40.581219, 20.875168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534401, 41.138229, 20.432219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926044, 41.088173, 20.368118>,  <33.161030, 41.058140, 20.329659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926044, 41.088173, 20.368118>,  <32.534401, 41.138229, 20.432219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926044, 41.088173, 20.368118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142566, 0.139419, -0.979917,
		0.144966, 0.982295, 0.118667,
		0.979112, -0.125137, -0.160253,
		33.219776, 41.050632, 20.320042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685089, 41.631493, 19.850893>,  <32.534401, 41.138229, 20.432219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685089, 41.631493, 19.850893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008415, 41.397175, 19.874464>,  <33.202412, 41.256584, 19.888607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008415, 41.397175, 19.874464>,  <32.685089, 41.631493, 19.850893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008415, 41.397175, 19.874464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163356, 0.126995, -0.978359,
		0.565631, 0.800450, 0.198345,
		0.808317, -0.585791, 0.058926,
		33.250912, 41.221436, 19.892141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167450, 41.961597, 19.415728>,  <32.685089, 41.631493, 19.850893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167450, 41.961597, 19.415728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287659, 41.581966, 19.453558>,  <33.359783, 41.354187, 19.476255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287659, 41.581966, 19.453558>,  <33.167450, 41.961597, 19.415728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287659, 41.581966, 19.453558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129363, -0.057683, -0.989918,
		0.944963, 0.309722, 0.105440,
		0.300518, -0.949076, 0.094575,
		33.377815, 41.297245, 19.481930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784420, 41.901112, 19.016829>,  <33.167450, 41.961597, 19.415728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784420, 41.901112, 19.016829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639278, 41.534012, 19.081417>,  <33.552193, 41.313751, 19.120171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639278, 41.534012, 19.081417>,  <33.784420, 41.901112, 19.016829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639278, 41.534012, 19.081417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097708, -0.209798, -0.972851,
		0.926710, -0.337223, 0.165797,
		-0.362852, -0.917750, 0.161473,
		33.530422, 41.258686, 19.129858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297318, 41.419235, 18.881367>,  <33.784420, 41.901112, 19.016829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297318, 41.419235, 18.881367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958546, 41.209312, 18.847233>,  <33.755283, 41.083359, 18.826752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958546, 41.209312, 18.847233>,  <34.297318, 41.419235, 18.881367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958546, 41.209312, 18.847233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304706, -0.347538, -0.886776,
		0.435732, -0.777040, 0.454254,
		-0.846931, -0.524810, -0.085335,
		33.704468, 41.051868, 18.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500088, 40.759418, 18.658684>,  <34.297318, 41.419235, 18.881367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500088, 40.759418, 18.658684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114639, 40.770489, 18.552345>,  <33.883369, 40.777130, 18.488543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114639, 40.770489, 18.552345>,  <34.500088, 40.759418, 18.658684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114639, 40.770489, 18.552345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240492, -0.344265, -0.907549,
		-0.116634, -0.938465, 0.325085,
		-0.963618, 0.027671, -0.265847,
		33.825554, 40.778790, 18.472591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476231, 40.100368, 18.292412>,  <34.500088, 40.759418, 18.658684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476231, 40.100368, 18.292412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147861, 40.302250, 18.185558>,  <33.950840, 40.423378, 18.121447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147861, 40.302250, 18.185558>,  <34.476231, 40.100368, 18.292412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147861, 40.302250, 18.185558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005855, -0.475219, -0.879848,
		-0.571012, -0.720722, 0.393073,
		-0.820921, 0.504705, -0.267136,
		33.901585, 40.453663, 18.105417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074638, 39.661865, 17.865934>,  <34.476231, 40.100368, 18.292412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074638, 39.661865, 17.865934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934147, 40.025311, 17.775551>,  <33.849850, 40.243378, 17.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934147, 40.025311, 17.775551>,  <34.074638, 39.661865, 17.865934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934147, 40.025311, 17.775551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182692, -0.303201, -0.935250,
		-0.918292, -0.287208, 0.272490,
		-0.351230, 0.908615, -0.225957,
		33.828777, 40.297894, 17.707764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617371, 39.552505, 17.329218>,  <34.074638, 39.661865, 17.865934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617371, 39.552505, 17.329218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679012, 39.942593, 17.265720>,  <33.716000, 40.176643, 17.227621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679012, 39.942593, 17.265720>,  <33.617371, 39.552505, 17.329218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679012, 39.942593, 17.265720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338845, -0.203084, -0.918663,
		-0.928135, 0.087784, -0.361744,
		0.154108, 0.975218, -0.158745,
		33.725246, 40.235157, 17.218098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337280, 39.778034, 16.687286>,  <33.617371, 39.552505, 17.329218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337280, 39.778034, 16.687286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626297, 40.046509, 16.753542>,  <33.799709, 40.207592, 16.793295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626297, 40.046509, 16.753542>,  <33.337280, 39.778034, 16.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626297, 40.046509, 16.753542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427893, -0.246006, -0.869706,
		-0.542988, 0.699277, -0.464947,
		0.722545, 0.671188, 0.165638,
		33.843060, 40.247864, 16.803234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318241, 40.291309, 16.050385>,  <33.337280, 39.778034, 16.687286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318241, 40.291309, 16.050385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685661, 40.306309, 16.207792>,  <33.906113, 40.315308, 16.302237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685661, 40.306309, 16.207792>,  <33.318241, 40.291309, 16.050385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685661, 40.306309, 16.207792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388173, -0.273770, -0.879984,
		0.074739, 0.961064, -0.266026,
		0.918551, 0.037495, 0.393520,
		33.961227, 40.317558, 16.325848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598717, 40.724148, 15.603864>,  <33.318241, 40.291309, 16.050385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598717, 40.724148, 15.603864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916130, 40.568596, 15.791085>,  <34.106579, 40.475266, 15.903419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916130, 40.568596, 15.791085>,  <33.598717, 40.724148, 15.603864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916130, 40.568596, 15.791085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453218, -0.135584, -0.881028,
		0.406077, 0.911256, 0.068658,
		0.793534, -0.388882, 0.468055,
		34.154190, 40.451931, 15.931501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187214, 41.065403, 15.382793>,  <33.598717, 40.724148, 15.603864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187214, 41.065403, 15.382793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327339, 40.717594, 15.522054>,  <34.411415, 40.508907, 15.605610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327339, 40.717594, 15.522054>,  <34.187214, 41.065403, 15.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327339, 40.717594, 15.522054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477819, -0.153793, -0.864892,
		0.805588, 0.469333, 0.361600,
		0.350310, -0.869525, 0.348149,
		34.432434, 40.456738, 15.626498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840828, 41.161678, 15.317575>,  <34.187214, 41.065403, 15.382793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840828, 41.161678, 15.317575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778633, 40.766651, 15.326805>,  <34.741314, 40.529636, 15.332343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778633, 40.766651, 15.326805>,  <34.840828, 41.161678, 15.317575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778633, 40.766651, 15.326805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420770, -0.087347, -0.902953,
		0.893743, -0.130690, 0.429120,
		-0.155490, -0.987568, 0.023075,
		34.731987, 40.470379, 15.333728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495213, 40.838917, 15.284740>,  <34.840828, 41.161678, 15.317575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495213, 40.838917, 15.284740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238575, 40.554447, 15.169783>,  <35.084591, 40.383766, 15.100808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238575, 40.554447, 15.169783>,  <35.495213, 40.838917, 15.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238575, 40.554447, 15.169783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596096, -0.226483, -0.770308,
		0.482730, -0.665539, 0.569236,
		-0.641593, -0.711170, -0.287395,
		35.046097, 40.341095, 15.083564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964375, 40.296654, 15.013465>,  <35.495213, 40.838917, 15.284740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964375, 40.296654, 15.013465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606400, 40.209774, 14.857564>,  <35.391613, 40.157646, 14.764024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606400, 40.209774, 14.857564>,  <35.964375, 40.296654, 15.013465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606400, 40.209774, 14.857564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431703, -0.200749, -0.879393,
		0.112761, -0.955261, 0.273424,
		-0.894940, -0.217199, -0.389752,
		35.337917, 40.144615, 14.740639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078861, 39.719238, 14.564076>,  <35.964375, 40.296654, 15.013465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078861, 39.719238, 14.564076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761818, 39.940521, 14.461520>,  <35.571594, 40.073292, 14.399986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761818, 39.940521, 14.461520>,  <36.078861, 39.719238, 14.564076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761818, 39.940521, 14.461520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302621, -0.008137, -0.953076,
		-0.529339, -0.833001, -0.160964,
		-0.792603, 0.553212, -0.256391,
		35.524036, 40.106483, 14.384603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764862, 39.278973, 14.116387>,  <36.078861, 39.719238, 14.564076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764862, 39.278973, 14.116387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609669, 39.634186, 14.017707>,  <35.516552, 39.847313, 13.958499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609669, 39.634186, 14.017707>,  <35.764862, 39.278973, 14.116387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609669, 39.634186, 14.017707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325429, -0.118434, -0.938120,
		-0.862301, -0.444261, -0.243041,
		-0.387986, 0.888035, -0.246701,
		35.493275, 39.900597, 13.943697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358616, 39.111904, 13.525306>,  <35.764862, 39.278973, 14.116387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358616, 39.111904, 13.525306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417000, 39.507500, 13.535028>,  <35.452030, 39.744858, 13.540860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417000, 39.507500, 13.535028>,  <35.358616, 39.111904, 13.525306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417000, 39.507500, 13.535028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232177, -0.010366, -0.972618,
		-0.961659, 0.147610, -0.231134,
		0.145964, 0.988991, 0.024303,
		35.460789, 39.804195, 13.542318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980797, 39.504059, 12.955487>,  <35.358616, 39.111904, 13.525306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980797, 39.504059, 12.955487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274109, 39.747814, 13.076118>,  <35.450096, 39.894070, 13.148498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274109, 39.747814, 13.076118>,  <34.980797, 39.504059, 12.955487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274109, 39.747814, 13.076118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366259, 0.019678, -0.930305,
		-0.572853, 0.792626, -0.208766,
		0.733276, 0.609390, 0.301579,
		35.494091, 39.930630, 13.166592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920853, 39.992596, 12.511984>,  <34.980797, 39.504059, 12.955487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920853, 39.992596, 12.511984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296974, 40.037304, 12.640566>,  <35.522648, 40.064129, 12.717715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296974, 40.037304, 12.640566>,  <34.920853, 39.992596, 12.511984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296974, 40.037304, 12.640566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317520, 0.051886, -0.946831,
		-0.122505, 0.992379, 0.013300,
		0.940305, 0.111769, 0.321456,
		35.579067, 40.070835, 12.737002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236313, 40.440540, 12.087214>,  <34.920853, 39.992596, 12.511984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236313, 40.440540, 12.087214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554703, 40.256130, 12.244125>,  <35.745735, 40.145485, 12.338272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554703, 40.256130, 12.244125>,  <35.236313, 40.440540, 12.087214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554703, 40.256130, 12.244125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438362, -0.007894, -0.898764,
		0.417447, 0.887353, 0.195811,
		0.795976, -0.461022, 0.392277,
		35.793495, 40.117825, 12.361809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692348, 40.628189, 11.650854>,  <35.236313, 40.440540, 12.087214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692348, 40.628189, 11.650854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905434, 40.350971, 11.845135>,  <36.033283, 40.184639, 11.961703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905434, 40.350971, 11.845135>,  <35.692348, 40.628189, 11.650854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905434, 40.350971, 11.845135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501407, -0.203875, -0.840848,
		0.681768, 0.691465, 0.238890,
		0.532714, -0.693045, 0.485701,
		36.065247, 40.143059, 11.990845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401112, 40.711475, 11.438982>,  <35.692348, 40.628189, 11.650854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401112, 40.711475, 11.438982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406815, 40.337234, 11.580085>,  <36.410236, 40.112690, 11.664746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406815, 40.337234, 11.580085>,  <36.401112, 40.711475, 11.438982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406815, 40.337234, 11.580085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540030, -0.289711, -0.790212,
		0.841525, 0.201763, 0.501126,
		0.014254, -0.935606, 0.352757,
		36.411091, 40.056553, 11.685912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141331, 40.451649, 11.639859>,  <36.401112, 40.711475, 11.438982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141331, 40.451649, 11.639859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927830, 40.126759, 11.545719>,  <36.799728, 39.931824, 11.489235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927830, 40.126759, 11.545719>,  <37.141331, 40.451649, 11.639859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927830, 40.126759, 11.545719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599750, -0.167396, -0.782482,
		0.596158, -0.558805, 0.576483,
		-0.533756, -0.812229, -0.235349,
		36.767704, 39.883091, 11.475114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677383, 40.105099, 11.429037>,  <37.141331, 40.451649, 11.639859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677383, 40.105099, 11.429037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350117, 39.911240, 11.305279>,  <37.153759, 39.794926, 11.231024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350117, 39.911240, 11.305279>,  <37.677383, 40.105099, 11.429037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350117, 39.911240, 11.305279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420732, -0.137849, -0.896650,
		0.391910, -0.863779, 0.316690,
		-0.818163, -0.484648, -0.309395,
		37.104668, 39.765846, 11.212461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207809, 39.800610, 11.013094>,  <37.677383, 40.105099, 11.429037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207809, 39.800610, 11.013094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459389, 40.106312, 10.956043>,  <38.610336, 40.289734, 10.921813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459389, 40.106312, 10.956043>,  <38.207809, 39.800610, 11.013094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459389, 40.106312, 10.956043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180710, 0.322141, 0.929284,
		0.756156, -0.558695, 0.340717,
		0.628946, 0.764255, -0.142627,
		38.648071, 40.335587, 10.913256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683624, 39.761303, 11.608215>,  <38.207809, 39.800610, 11.013094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683624, 39.761303, 11.608215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771156, 40.127457, 11.473052>,  <38.823673, 40.347149, 11.391954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771156, 40.127457, 11.473052>,  <38.683624, 39.761303, 11.608215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771156, 40.127457, 11.473052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011059, 0.343952, 0.938922,
		0.975701, -0.209198, 0.065143,
		0.218827, 0.915387, -0.337908,
		38.836803, 40.402073, 11.371679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269836, 40.042751, 12.019757>,  <38.683624, 39.761303, 11.608215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269836, 40.042751, 12.019757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097782, 40.366116, 11.859031>,  <38.994549, 40.560135, 11.762595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097782, 40.366116, 11.859031>,  <39.269836, 40.042751, 12.019757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097782, 40.366116, 11.859031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167293, 0.366008, 0.915451,
		0.887127, 0.460992, -0.022193,
		-0.430139, 0.808409, -0.401816,
		38.968742, 40.608639, 11.738486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554008, 40.610680, 12.470098>,  <39.269836, 40.042751, 12.019757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554008, 40.610680, 12.470098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230145, 40.760147, 12.289067>,  <39.035828, 40.849827, 12.180449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230145, 40.760147, 12.289067>,  <39.554008, 40.610680, 12.470098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230145, 40.760147, 12.289067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308756, 0.384611, 0.869911,
		0.499126, 0.844065, -0.196030,
		-0.809657, 0.373669, -0.452579,
		38.987247, 40.872250, 12.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524773, 41.291771, 12.740487>,  <39.554008, 40.610680, 12.470098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524773, 41.291771, 12.740487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166855, 41.170887, 12.609023>,  <38.952106, 41.098358, 12.530145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166855, 41.170887, 12.609023>,  <39.524773, 41.291771, 12.740487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166855, 41.170887, 12.609023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430209, 0.386632, 0.815743,
		-0.119455, 0.871312, -0.475969,
		-0.894791, -0.302210, -0.328661,
		38.898418, 41.080223, 12.510425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146187, 41.765446, 12.950640>,  <39.524773, 41.291771, 12.740487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146187, 41.765446, 12.950640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878754, 41.476616, 12.879535>,  <38.718292, 41.303318, 12.836871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878754, 41.476616, 12.879535>,  <39.146187, 41.765446, 12.950640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878754, 41.476616, 12.879535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419189, 0.168508, 0.892124,
		-0.614228, 0.670976, -0.415349,
		-0.668584, -0.722077, -0.177764,
		38.678177, 41.259995, 12.826205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417946, 42.023350, 13.162874>,  <39.146187, 41.765446, 12.950640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417946, 42.023350, 13.162874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404163, 41.623634, 13.169085>,  <38.395893, 41.383804, 13.172811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404163, 41.623634, 13.169085>,  <38.417946, 42.023350, 13.162874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404163, 41.623634, 13.169085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468610, 0.029877, 0.882900,
		-0.882733, 0.023150, -0.469305,
		-0.034460, -0.999285, 0.015525,
		38.393826, 41.323849, 13.173742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794189, 41.889038, 13.542200>,  <38.417946, 42.023350, 13.162874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794189, 41.889038, 13.542200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000740, 41.546722, 13.554785>,  <38.124668, 41.341335, 13.562336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000740, 41.546722, 13.554785>,  <37.794189, 41.889038, 13.542200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000740, 41.546722, 13.554785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388519, -0.201371, 0.899168,
		-0.763159, -0.476529, -0.436472,
		0.516372, -0.855786, 0.031462,
		38.155651, 41.289986, 13.564223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300430, 41.295963, 13.664748>,  <37.794189, 41.889038, 13.542200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300430, 41.295963, 13.664748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642864, 41.119743, 13.772845>,  <37.848324, 41.014011, 13.837704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642864, 41.119743, 13.772845>,  <37.300430, 41.295963, 13.664748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642864, 41.119743, 13.772845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325198, -0.052758, 0.944173,
		-0.401694, -0.896178, -0.188431,
		0.856089, -0.440546, 0.270243,
		37.899693, 40.987579, 13.853918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109161, 40.723644, 13.957838>,  <37.300430, 41.295963, 13.664748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109161, 40.723644, 13.957838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473289, 40.799206, 14.105148>,  <37.691769, 40.844543, 14.193534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473289, 40.799206, 14.105148>,  <37.109161, 40.723644, 13.957838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473289, 40.799206, 14.105148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350451, -0.121625, 0.928650,
		0.220215, -0.974435, -0.044518,
		0.910324, 0.188901, 0.368275,
		37.746387, 40.855877, 14.215631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104942, 40.255482, 14.574739>,  <37.109161, 40.723644, 13.957838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104942, 40.255482, 14.574739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395702, 40.528339, 14.606456>,  <37.570160, 40.692055, 14.625485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395702, 40.528339, 14.606456>,  <37.104942, 40.255482, 14.574739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395702, 40.528339, 14.606456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182989, 0.081110, 0.979763,
		0.661912, -0.726702, 0.183785,
		0.726903, 0.682148, 0.079291,
		37.613773, 40.732983, 14.630243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501453, 40.069180, 15.120584>,  <37.104942, 40.255482, 14.574739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501453, 40.069180, 15.120584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558178, 40.464291, 15.094696>,  <37.592213, 40.701355, 15.079164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558178, 40.464291, 15.094696>,  <37.501453, 40.069180, 15.120584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558178, 40.464291, 15.094696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136796, 0.084308, 0.987005,
		0.980396, -0.131113, 0.147080,
		0.141809, 0.987776, -0.064719,
		37.600719, 40.760624, 15.075280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026913, 40.156990, 15.667889>,  <37.501453, 40.069180, 15.120584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026913, 40.156990, 15.667889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839218, 40.502071, 15.592452>,  <37.726601, 40.709118, 15.547190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839218, 40.502071, 15.592452>,  <38.026913, 40.156990, 15.667889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839218, 40.502071, 15.592452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300409, 0.044882, 0.952754,
		0.830405, 0.503722, 0.238102,
		-0.469236, 0.862700, -0.188592,
		37.698448, 40.760880, 15.535874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156040, 40.612347, 16.252974>,  <38.026913, 40.156990, 15.667889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156040, 40.612347, 16.252974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830685, 40.767548, 16.079605>,  <37.635471, 40.860668, 15.975584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830685, 40.767548, 16.079605>,  <38.156040, 40.612347, 16.252974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830685, 40.767548, 16.079605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325459, 0.314018, 0.891891,
		0.482157, 0.866515, -0.129140,
		-0.813389, 0.388001, -0.433421,
		37.586666, 40.883949, 15.949579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065212, 41.318123, 16.579544>,  <38.156040, 40.612347, 16.252974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065212, 41.318123, 16.579544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716908, 41.220654, 16.408712>,  <37.507923, 41.162174, 16.306213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716908, 41.220654, 16.408712>,  <38.065212, 41.318123, 16.579544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716908, 41.220654, 16.408712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490162, 0.361504, 0.793130,
		-0.038872, 0.899967, -0.434222,
		-0.870764, -0.243670, -0.427078,
		37.455677, 41.147552, 16.280590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718517, 41.929218, 16.595909>,  <38.065212, 41.318123, 16.579544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718517, 41.929218, 16.595909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436440, 41.651020, 16.540789>,  <37.267193, 41.484100, 16.507717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436440, 41.651020, 16.540789>,  <37.718517, 41.929218, 16.595909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436440, 41.651020, 16.540789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511066, 0.363911, 0.778704,
		-0.491436, 0.619564, -0.612071,
		-0.705197, -0.695492, -0.137800,
		37.224880, 41.442371, 16.499449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199791, 42.287746, 16.873610>,  <37.718517, 41.929218, 16.595909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199791, 42.287746, 16.873610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055210, 41.919224, 16.816282>,  <36.968460, 41.698109, 16.781885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055210, 41.919224, 16.816282>,  <37.199791, 42.287746, 16.873610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055210, 41.919224, 16.816282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641877, 0.134386, 0.754940,
		-0.676274, 0.364867, -0.639941,
		-0.361452, -0.921310, -0.143318,
		36.946774, 41.642830, 16.773287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450363, 42.292389, 16.824722>,  <37.199791, 42.287746, 16.873610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450363, 42.292389, 16.824722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570877, 41.933372, 16.953503>,  <36.643185, 41.717964, 17.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570877, 41.933372, 16.953503>,  <36.450363, 42.292389, 16.824722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570877, 41.933372, 16.953503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539679, 0.117848, 0.833582,
		-0.786114, -0.424894, -0.448877,
		0.301284, -0.897539, 0.321948,
		36.661263, 41.664112, 17.050087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830196, 41.855404, 16.902090>,  <36.450363, 42.292389, 16.824722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830196, 41.855404, 16.902090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123512, 41.725502, 17.141029>,  <36.299500, 41.647560, 17.284393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123512, 41.725502, 17.141029>,  <35.830196, 41.855404, 16.902090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123512, 41.725502, 17.141029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579026, 0.162244, 0.799003,
		-0.356398, -0.931778, -0.069072,
		0.733286, -0.324758, 0.597347,
		36.343498, 41.628075, 17.320234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514641, 41.404705, 17.404020>,  <35.830196, 41.855404, 16.902090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514641, 41.404705, 17.404020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870934, 41.515736, 17.547991>,  <36.084709, 41.582355, 17.634373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870934, 41.515736, 17.547991>,  <35.514641, 41.404705, 17.404020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870934, 41.515736, 17.547991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362445, -0.044079, 0.930962,
		0.274282, -0.959691, 0.061345,
		0.890732, 0.277580, 0.359925,
		36.138153, 41.599010, 17.655968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515839, 41.033432, 17.865547>,  <35.514641, 41.404705, 17.404020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515839, 41.033432, 17.865547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792278, 41.300312, 17.976709>,  <35.958141, 41.460442, 18.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792278, 41.300312, 17.976709>,  <35.515839, 41.033432, 17.865547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792278, 41.300312, 17.976709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380951, 0.009495, 0.924546,
		0.614218, -0.744818, 0.260733,
		0.691095, 0.667200, 0.277907,
		35.999607, 41.500473, 18.060081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724159, 40.842373, 18.542994>,  <35.515839, 41.033432, 17.865547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724159, 40.842373, 18.542994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849564, 41.222080, 18.533264>,  <35.924809, 41.449905, 18.527426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849564, 41.222080, 18.533264>,  <35.724159, 40.842373, 18.542994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849564, 41.222080, 18.533264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495225, 0.185307, 0.848772,
		0.810222, -0.254056, 0.528200,
		0.313515, 0.949272, -0.024325,
		35.943619, 41.506863, 18.525967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174938, 40.914867, 19.170292>,  <35.724159, 40.842373, 18.542994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174938, 40.914867, 19.170292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011829, 41.248104, 19.020794>,  <35.913963, 41.448048, 18.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011829, 41.248104, 19.020794>,  <36.174938, 40.914867, 19.170292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011829, 41.248104, 19.020794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033773, 0.395277, 0.917941,
		0.912461, 0.386929, -0.133045,
		-0.407767, 0.833092, -0.373743,
		35.889500, 41.498032, 18.908670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477802, 41.387913, 19.575237>,  <36.174938, 40.914867, 19.170292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477802, 41.387913, 19.575237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177090, 41.585506, 19.400511>,  <35.996662, 41.704063, 19.295675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177090, 41.585506, 19.400511>,  <36.477802, 41.387913, 19.575237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177090, 41.585506, 19.400511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089226, 0.580133, 0.809620,
		0.653351, 0.647630, -0.392055,
		-0.751778, 0.493984, -0.436817,
		35.951557, 41.733704, 19.269466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607494, 42.061535, 19.687870>,  <36.477802, 41.387913, 19.575237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607494, 42.061535, 19.687870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210209, 42.046322, 19.643921>,  <35.971836, 42.037193, 19.617552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210209, 42.046322, 19.643921>,  <36.607494, 42.061535, 19.687870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210209, 42.046322, 19.643921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109587, 0.621914, 0.775380,
		0.038843, 0.782161, -0.621864,
		-0.993218, -0.038030, -0.109871,
		35.912243, 42.034912, 19.610960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369087, 42.730961, 19.810242>,  <36.607494, 42.061535, 19.687870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369087, 42.730961, 19.810242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047882, 42.498898, 19.864773>,  <35.855160, 42.359661, 19.897491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047882, 42.498898, 19.864773>,  <36.369087, 42.730961, 19.810242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047882, 42.498898, 19.864773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199296, 0.477006, 0.856006,
		-0.561646, 0.660217, -0.498666,
		-0.803017, -0.580154, 0.136330,
		35.806976, 42.324852, 19.905672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790176, 43.178699, 19.966042>,  <36.369087, 42.730961, 19.810242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790176, 43.178699, 19.966042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691166, 42.822010, 20.117599>,  <35.631760, 42.607998, 20.208534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691166, 42.822010, 20.117599>,  <35.790176, 43.178699, 19.966042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691166, 42.822010, 20.117599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245807, 0.436067, 0.865693,
		-0.937181, 0.121150, -0.327132,
		-0.247530, -0.891722, 0.378894,
		35.616905, 42.554493, 20.231268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111832, 43.239002, 20.116417>,  <35.790176, 43.178699, 19.966042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111832, 43.239002, 20.116417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222172, 42.925861, 20.339502>,  <35.288376, 42.737976, 20.473354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222172, 42.925861, 20.339502>,  <35.111832, 43.239002, 20.116417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222172, 42.925861, 20.339502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350392, 0.458402, 0.816758,
		-0.895059, -0.420724, -0.147853,
		0.275853, -0.782853, 0.557715,
		35.304928, 42.691006, 20.506817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475418, 42.991306, 20.584991>,  <35.111832, 43.239002, 20.116417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475418, 42.991306, 20.584991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824596, 42.854717, 20.724339>,  <35.034103, 42.772762, 20.807947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824596, 42.854717, 20.724339>,  <34.475418, 42.991306, 20.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824596, 42.854717, 20.724339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292425, 0.205287, 0.933994,
		-0.390453, -0.917197, 0.079348,
		0.872946, -0.341477, 0.348366,
		35.086479, 42.752274, 20.828848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302483, 42.694813, 21.236889>,  <34.475418, 42.991306, 20.584991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302483, 42.694813, 21.236889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698288, 42.734108, 21.279245>,  <34.935772, 42.757687, 21.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698288, 42.734108, 21.279245>,  <34.302483, 42.694813, 21.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698288, 42.734108, 21.279245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120136, 0.152731, 0.980938,
		0.080195, -0.983373, 0.162932,
		0.989513, 0.098240, 0.105890,
		34.995140, 42.763580, 21.311012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478039, 42.270596, 21.812662>,  <34.302483, 42.694813, 21.236889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478039, 42.270596, 21.812662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789589, 42.518944, 21.777176>,  <34.976521, 42.667953, 21.755884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789589, 42.518944, 21.777176>,  <34.478039, 42.270596, 21.812662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789589, 42.518944, 21.777176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015348, 0.160275, 0.986953,
		0.626992, -0.767351, 0.134363,
		0.778875, 0.620874, -0.088714,
		35.023251, 42.705204, 21.750563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811829, 42.143291, 22.428257>,  <34.478039, 42.270596, 21.812662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811829, 42.143291, 22.428257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982155, 42.487911, 22.317686>,  <35.084351, 42.694683, 22.251343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982155, 42.487911, 22.317686>,  <34.811829, 42.143291, 22.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982155, 42.487911, 22.317686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051414, 0.281977, 0.958043,
		0.903349, -0.422159, 0.075774,
		0.425813, 0.861551, -0.276428,
		35.109898, 42.746376, 22.234758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435013, 42.218933, 22.846237>,  <34.811829, 42.143291, 22.428257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435013, 42.218933, 22.846237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299759, 42.580044, 22.739912>,  <35.218609, 42.796711, 22.676117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299759, 42.580044, 22.739912>,  <35.435013, 42.218933, 22.846237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299759, 42.580044, 22.739912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276084, 0.365180, 0.889056,
		0.899691, 0.227232, -0.372722,
		-0.338133, 0.902779, -0.265814,
		35.198318, 42.850876, 22.660168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814114, 42.558575, 23.218073>,  <35.435013, 42.218933, 22.846237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814114, 42.558575, 23.218073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529610, 42.828842, 23.140528>,  <35.358906, 42.991001, 23.094002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529610, 42.828842, 23.140528>,  <35.814114, 42.558575, 23.218073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529610, 42.828842, 23.140528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061222, 0.334286, 0.940481,
		0.700259, 0.657056, -0.279130,
		-0.711258, 0.675670, -0.193861,
		35.316231, 43.031544, 23.082369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106644, 43.250023, 23.448837>,  <35.814114, 42.558575, 23.218073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106644, 43.250023, 23.448837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706974, 43.264915, 23.455240>,  <35.467171, 43.273849, 23.459082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706974, 43.264915, 23.455240>,  <36.106644, 43.250023, 23.448837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706974, 43.264915, 23.455240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023426, 0.208338, 0.977776,
		0.033067, 0.977348, -0.209039,
		-0.999179, 0.037229, 0.016006,
		35.407219, 43.276085, 23.460043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979591, 43.884007, 23.744772>,  <36.106644, 43.250023, 23.448837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979591, 43.884007, 23.744772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644352, 43.666897, 23.766615>,  <35.443207, 43.536633, 23.779720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644352, 43.666897, 23.766615>,  <35.979591, 43.884007, 23.744772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644352, 43.666897, 23.766615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020338, 0.068948, 0.997413,
		-0.545134, 0.837044, -0.046747,
		-0.838102, -0.542773, 0.054609,
		35.392921, 43.504066, 23.782997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585209, 44.161537, 24.391003>,  <35.979591, 43.884007, 23.744772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585209, 44.161537, 24.391003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419308, 43.805397, 24.315901>,  <35.319767, 43.591713, 24.270840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419308, 43.805397, 24.315901>,  <35.585209, 44.161537, 24.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419308, 43.805397, 24.315901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091361, -0.164551, 0.982129,
		-0.905337, 0.424491, -0.013097,
		-0.414750, -0.890354, -0.187756,
		35.294884, 43.538292, 24.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095459, 44.146751, 24.945238>,  <35.585209, 44.161537, 24.391003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095459, 44.146751, 24.945238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128231, 43.770584, 24.813242>,  <35.147896, 43.544884, 24.734043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128231, 43.770584, 24.813242>,  <35.095459, 44.146751, 24.945238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128231, 43.770584, 24.813242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251957, -0.339894, 0.906085,
		-0.964264, 0.008909, -0.264793,
		0.081929, -0.940422, -0.329992,
		35.152809, 43.488457, 24.714245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429016, 43.761597, 25.178888>,  <35.095459, 44.146751, 24.945238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429016, 43.761597, 25.178888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687531, 43.463036, 25.115395>,  <34.842640, 43.283897, 25.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687531, 43.463036, 25.115395>,  <34.429016, 43.761597, 25.178888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687531, 43.463036, 25.115395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207451, -0.372032, 0.904741,
		-0.734358, -0.551789, -0.395281,
		0.646284, -0.746405, -0.158736,
		34.881416, 43.239113, 25.067774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114872, 43.067032, 25.327286>,  <34.429016, 43.761597, 25.178888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114872, 43.067032, 25.327286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508392, 43.021164, 25.382410>,  <34.744503, 42.993645, 25.415483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508392, 43.021164, 25.382410>,  <34.114872, 43.067032, 25.327286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508392, 43.021164, 25.382410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162162, -0.241410, 0.956778,
		-0.076442, -0.963625, -0.256094,
		0.983799, -0.114667, 0.137809,
		34.803532, 42.986763, 25.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535709, 42.407009, 25.630020>,  <34.114872, 43.067032, 25.327286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535709, 42.407009, 25.630020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690994, 42.742157, 25.783524>,  <34.784164, 42.943245, 25.875626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690994, 42.742157, 25.783524>,  <34.535709, 42.407009, 25.630020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690994, 42.742157, 25.783524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142495, -0.356834, 0.923236,
		0.910489, -0.413091, -0.019133,
		0.388208, 0.837870, 0.383757,
		34.807457, 42.993519, 25.898651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977619, 42.162086, 26.060482>,  <34.535709, 42.407009, 25.630020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977619, 42.162086, 26.060482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858017, 42.525364, 26.177635>,  <34.786255, 42.743332, 26.247927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858017, 42.525364, 26.177635>,  <34.977619, 42.162086, 26.060482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858017, 42.525364, 26.177635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102124, -0.335618, 0.936446,
		0.948771, 0.250093, 0.193100,
		-0.299006, 0.908193, 0.292884,
		34.768314, 42.797821, 26.265501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495090, 42.622456, 26.312481>,  <34.977619, 42.162086, 26.060482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495090, 42.622456, 26.312481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137714, 42.667847, 26.486326>,  <34.923290, 42.695080, 26.590633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137714, 42.667847, 26.486326>,  <35.495090, 42.622456, 26.312481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137714, 42.667847, 26.486326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353324, -0.419898, 0.835971,
		0.277357, 0.900449, 0.335059,
		-0.893440, 0.113478, 0.434612,
		34.869682, 42.701889, 26.616711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571148, 41.872147, 26.596380>,  <35.495090, 42.622456, 26.312481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571148, 41.872147, 26.596380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738392, 41.512997, 26.651535>,  <35.838737, 41.297508, 26.684628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738392, 41.512997, 26.651535>,  <35.571148, 41.872147, 26.596380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738392, 41.512997, 26.651535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552599, -0.130923, 0.823100,
		-0.720985, -0.420342, -0.550902,
		0.418110, -0.897871, 0.137887,
		35.863823, 41.243637, 26.692902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308849, 41.664501, 27.210644>,  <35.571148, 41.872147, 26.596380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308849, 41.664501, 27.210644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487831, 41.325191, 27.097351>,  <35.595219, 41.121605, 27.029375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487831, 41.325191, 27.097351>,  <35.308849, 41.664501, 27.210644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487831, 41.325191, 27.097351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462839, -0.490646, 0.738272,
		-0.765222, -0.199253, -0.612155,
		0.447455, -0.848271, -0.283231,
		35.622066, 41.070709, 27.012383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743259, 41.178123, 27.129484>,  <35.308849, 41.664501, 27.210644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743259, 41.178123, 27.129484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088551, 40.986969, 27.194557>,  <35.295727, 40.872276, 27.233601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088551, 40.986969, 27.194557>,  <34.743259, 41.178123, 27.129484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088551, 40.986969, 27.194557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437716, -0.548018, 0.712798,
		-0.251481, -0.686516, -0.682241,
		0.863228, -0.477883, 0.162683,
		35.347519, 40.843605, 27.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691399, 40.436726, 27.072086>,  <34.743259, 41.178123, 27.129484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691399, 40.436726, 27.072086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977413, 40.540291, 27.331835>,  <35.149021, 40.602432, 27.487684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977413, 40.540291, 27.331835>,  <34.691399, 40.436726, 27.072086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977413, 40.540291, 27.331835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536897, -0.391527, 0.747294,
		0.447734, -0.882989, -0.140945,
		0.715036, 0.258916, 0.649373,
		35.191925, 40.617966, 27.526648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045757, 39.945976, 27.480879>,  <34.691399, 40.436726, 27.072086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045757, 39.945976, 27.480879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020893, 40.259979, 27.727425>,  <35.005974, 40.448380, 27.875353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020893, 40.259979, 27.727425>,  <35.045757, 39.945976, 27.480879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020893, 40.259979, 27.727425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693543, -0.478071, 0.538930,
		0.717728, -0.393976, 0.574151,
		-0.062159, 0.785004, 0.616365,
		35.002247, 40.495480, 27.912334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280670, 39.689636, 28.178274>,  <35.045757, 39.945976, 27.480879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280670, 39.689636, 28.178274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007389, 39.981544, 28.188637>,  <34.843422, 40.156689, 28.194855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007389, 39.981544, 28.188637>,  <35.280670, 39.689636, 28.178274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007389, 39.981544, 28.188637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643689, -0.618605, 0.450547,
		0.344824, 0.291136, 0.892377,
		-0.683199, 0.729773, 0.025908,
		34.802429, 40.200478, 28.196409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012310, 39.884113, 28.850906>,  <35.280670, 39.689636, 28.178274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012310, 39.884113, 28.850906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734695, 39.969273, 28.575808>,  <34.568127, 40.020370, 28.410749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734695, 39.969273, 28.575808>,  <35.012310, 39.884113, 28.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734695, 39.969273, 28.575808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686001, -0.485424, 0.542002,
		-0.218455, 0.847960, 0.482949,
		-0.694032, 0.212900, -0.687745,
		34.526485, 40.033142, 28.369484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341572, 40.143909, 29.171680>,  <35.012310, 39.884113, 28.850906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341572, 40.143909, 29.171680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280441, 39.955757, 28.824030>,  <34.243763, 39.842865, 28.615438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280441, 39.955757, 28.824030>,  <34.341572, 40.143909, 29.171680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280441, 39.955757, 28.824030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705650, -0.563776, 0.429203,
		-0.691883, 0.678894, -0.245765,
		-0.152827, -0.470382, -0.869129,
		34.234592, 39.814644, 28.563292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625465, 40.391197, 28.989008>,  <34.341572, 40.143909, 29.171680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625465, 40.391197, 28.989008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755524, 40.045246, 28.836025>,  <33.833557, 39.837677, 28.744236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755524, 40.045246, 28.836025>,  <33.625465, 40.391197, 28.989008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755524, 40.045246, 28.836025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736636, -0.485243, 0.471069,
		-0.593000, 0.128566, -0.794872,
		0.325143, -0.864876, -0.382455,
		33.853065, 39.785782, 28.721289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842018, 40.323498, 28.764652>,  <33.625465, 40.391197, 28.989008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842018, 40.323498, 28.764652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138268, 40.562496, 28.641708>,  <33.316017, 40.705894, 28.567942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138268, 40.562496, 28.641708>,  <32.842018, 40.323498, 28.764652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138268, 40.562496, 28.641708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558767, -0.801739, -0.212120,
		-0.373161, -0.014640, -0.927651,
		0.740628, 0.597496, -0.307358,
		33.360455, 40.741745, 28.549501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998466, 40.220905, 27.992208>,  <32.842018, 40.323498, 28.764652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998466, 40.220905, 27.992208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325619, 40.339104, 28.189695>,  <33.521908, 40.410023, 28.308187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325619, 40.339104, 28.189695>,  <32.998466, 40.220905, 27.992208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325619, 40.339104, 28.189695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509760, -0.770093, -0.383538,
		0.266871, 0.565364, -0.780477,
		0.817878, 0.295501, 0.493715,
		33.570984, 40.427753, 28.337811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616341, 40.044952, 27.523235>,  <32.998466, 40.220905, 27.992208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616341, 40.044952, 27.523235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654163, 39.980854, 27.916250>,  <33.676857, 39.942394, 28.152060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654163, 39.980854, 27.916250>,  <33.616341, 40.044952, 27.523235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654163, 39.980854, 27.916250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312137, -0.932420, -0.182110,
		0.945320, 0.323906, -0.038149,
		0.094558, -0.160244, 0.982538,
		33.682529, 39.932781, 28.211012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201317, 39.675434, 27.643354>,  <33.616341, 40.044952, 27.523235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201317, 39.675434, 27.643354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918308, 39.620396, 27.920620>,  <33.748505, 39.587372, 28.086979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918308, 39.620396, 27.920620>,  <34.201317, 39.675434, 27.643354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918308, 39.620396, 27.920620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039447, -0.971642, -0.233145,
		0.705589, -0.192299, 0.682030,
		-0.707523, -0.137600, 0.693165,
		33.706051, 39.579117, 28.128569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311363, 39.059669, 28.126677>,  <34.201317, 39.675434, 27.643354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311363, 39.059669, 28.126677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919655, 39.128075, 28.083250>,  <33.684631, 39.169117, 28.057194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919655, 39.128075, 28.083250>,  <34.311363, 39.059669, 28.126677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919655, 39.128075, 28.083250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147454, -0.969292, -0.196798,
		-0.138887, -0.176710, 0.974415,
		-0.979269, 0.171014, -0.108566,
		33.625874, 39.179379, 28.050680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796249, 38.517738, 28.501472>,  <34.311363, 39.059669, 28.126677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796249, 38.517738, 28.501472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652443, 38.674763, 28.162853>,  <33.566158, 38.768978, 27.959681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652443, 38.674763, 28.162853>,  <33.796249, 38.517738, 28.501472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652443, 38.674763, 28.162853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215401, -0.917617, -0.334037,
		-0.907936, 0.062254, 0.414459,
		-0.359519, 0.392559, -0.846548,
		33.544590, 38.792530, 27.908888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517490, 37.980473, 28.165583>,  <33.796249, 38.517738, 28.501472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517490, 37.980473, 28.165583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855137, 37.944458, 27.954166>,  <34.057724, 37.922848, 27.827316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855137, 37.944458, 27.954166>,  <33.517490, 37.980473, 28.165583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855137, 37.944458, 27.954166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357426, -0.640293, 0.679906,
		-0.399638, -0.762836, -0.508301,
		0.844118, -0.090036, -0.528543,
		34.108372, 37.917446, 27.795603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697132, 37.250370, 27.873526>,  <33.517490, 37.980473, 28.165583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697132, 37.250370, 27.873526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030388, 37.462910, 27.934906>,  <34.230343, 37.590431, 27.971735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030388, 37.462910, 27.934906>,  <33.697132, 37.250370, 27.873526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030388, 37.462910, 27.934906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182361, -0.525869, 0.830786,
		0.522131, -0.664178, -0.535020,
		0.833141, 0.531346, 0.153452,
		34.280331, 37.622314, 27.980942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161358, 36.822182, 27.915255>,  <33.697132, 37.250370, 27.873526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161358, 36.822182, 27.915255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374130, 37.118889, 28.078634>,  <34.501793, 37.296913, 28.176662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374130, 37.118889, 28.078634>,  <34.161358, 36.822182, 27.915255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374130, 37.118889, 28.078634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488435, -0.662790, 0.567575,
		0.691725, -0.102409, -0.714863,
		0.531929, 0.741769, 0.408448,
		34.533710, 37.341419, 28.201168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885090, 36.519253, 28.051752>,  <34.161358, 36.822182, 27.915255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885090, 36.519253, 28.051752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850815, 36.833824, 28.296434>,  <34.830250, 37.022568, 28.443243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850815, 36.833824, 28.296434>,  <34.885090, 36.519253, 28.051752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850815, 36.833824, 28.296434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555003, -0.472204, 0.684832,
		0.827423, 0.398183, -0.396008,
		-0.085692, 0.786431, 0.611705,
		34.825108, 37.069752, 28.479946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525795, 36.537704, 28.319231>,  <34.885090, 36.519253, 28.051752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525795, 36.537704, 28.319231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294785, 36.768253, 28.550489>,  <35.156178, 36.906582, 28.689245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294785, 36.768253, 28.550489>,  <35.525795, 36.537704, 28.319231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294785, 36.768253, 28.550489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380975, -0.436064, 0.815295,
		0.722023, 0.691117, 0.032256,
		-0.577530, 0.576373, 0.578146,
		35.121525, 36.941166, 28.723934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947365, 36.879112, 28.809486>,  <35.525795, 36.537704, 28.319231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947365, 36.879112, 28.809486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588169, 36.799122, 28.966265>,  <35.372650, 36.751125, 29.060331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588169, 36.799122, 28.966265>,  <35.947365, 36.879112, 28.809486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588169, 36.799122, 28.966265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438831, -0.472316, 0.764425,
		0.032254, 0.858444, 0.511892,
		-0.897991, -0.199978, 0.391946,
		35.318771, 36.739128, 29.083849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727024, 37.343166, 29.325363>,  <35.947365, 36.879112, 28.809486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727024, 37.343166, 29.325363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622467, 36.957363, 29.340279>,  <35.559731, 36.725880, 29.349228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622467, 36.957363, 29.340279>,  <35.727024, 37.343166, 29.325363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622467, 36.957363, 29.340279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651436, -0.147778, 0.744173,
		-0.712252, 0.218817, 0.666945,
		-0.261397, -0.964511, 0.037290,
		35.544048, 36.668011, 29.351465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911766, 37.121967, 29.933796>,  <35.727024, 37.343166, 29.325363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911766, 37.121967, 29.933796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917309, 36.769207, 29.745304>,  <35.920635, 36.557549, 29.632210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917309, 36.769207, 29.745304>,  <35.911766, 37.121967, 29.933796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917309, 36.769207, 29.745304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728427, -0.313938, 0.608964,
		-0.684983, -0.351696, 0.638050,
		0.013861, -0.881903, -0.471227,
		35.921467, 36.504635, 29.603935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068081, 36.497139, 30.420322>,  <35.911766, 37.121967, 29.933796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068081, 36.497139, 30.420322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165184, 36.354080, 30.059622>,  <36.223446, 36.268246, 29.843201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165184, 36.354080, 30.059622>,  <36.068081, 36.497139, 30.420322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165184, 36.354080, 30.059622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795656, -0.458387, 0.395996,
		-0.554977, -0.813617, 0.173284,
		0.242757, -0.357643, -0.901754,
		36.238010, 36.246788, 29.789095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255371, 35.762806, 30.456507>,  <36.068081, 36.497139, 30.420322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255371, 35.762806, 30.456507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431267, 35.898994, 30.124071>,  <36.536804, 35.980709, 29.924610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431267, 35.898994, 30.124071>,  <36.255371, 35.762806, 30.456507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431267, 35.898994, 30.124071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883641, -0.329542, 0.332537,
		-0.160659, -0.880613, -0.445768,
		0.439736, 0.340473, -0.831090,
		36.563187, 36.001137, 29.874744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594604, 35.158417, 30.111103>,  <36.255371, 35.762806, 30.456507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594604, 35.158417, 30.111103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737156, 35.529156, 30.063847>,  <36.822685, 35.751598, 30.035492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737156, 35.529156, 30.063847>,  <36.594604, 35.158417, 30.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737156, 35.529156, 30.063847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855142, -0.272600, 0.440931,
		0.376469, -0.258166, -0.889731,
		0.356375, 0.926844, -0.118143,
		36.844067, 35.807209, 30.028404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275757, 35.274021, 29.730049>,  <36.594604, 35.158417, 30.111103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275757, 35.274021, 29.730049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221153, 35.533772, 30.029293>,  <37.188389, 35.689621, 30.208839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221153, 35.533772, 30.029293>,  <37.275757, 35.274021, 29.730049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221153, 35.533772, 30.029293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810200, -0.361361, 0.461514,
		0.570036, 0.669121, -0.476798,
		-0.136513, 0.649380, 0.748110,
		37.180199, 35.728584, 30.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744289, 35.827686, 29.670206>,  <37.275757, 35.274021, 29.730049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744289, 35.827686, 29.670206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627689, 35.701153, 30.031305>,  <37.557728, 35.625233, 30.247965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627689, 35.701153, 30.031305>,  <37.744289, 35.827686, 29.670206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627689, 35.701153, 30.031305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900739, -0.408470, 0.147721,
		0.322016, 0.856203, 0.404008,
		-0.291504, -0.316338, 0.902749,
		37.540237, 35.606251, 30.302130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265129, 36.002945, 30.230453>,  <37.744289, 35.827686, 29.670206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265129, 36.002945, 30.230453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068604, 35.664501, 30.313120>,  <37.950687, 35.461433, 30.362720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068604, 35.664501, 30.313120>,  <38.265129, 36.002945, 30.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068604, 35.664501, 30.313120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870670, -0.483483, 0.090435,
		0.023402, 0.224370, 0.974223,
		-0.491311, -0.846110, 0.206667,
		37.921211, 35.410667, 30.375120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597202, 35.715954, 30.722021>,  <38.265129, 36.002945, 30.230453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597202, 35.715954, 30.722021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433903, 35.401161, 30.536985>,  <38.335922, 35.212284, 30.425964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433903, 35.401161, 30.536985>,  <38.597202, 35.715954, 30.722021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433903, 35.401161, 30.536985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882105, -0.470538, 0.022025,
		-0.235000, -0.399062, 0.886298,
		-0.408247, -0.786984, -0.462591,
		38.311428, 35.165066, 30.398209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799736, 35.099422, 31.045145>,  <38.597202, 35.715954, 30.722021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799736, 35.099422, 31.045145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721695, 35.007858, 30.663666>,  <38.674870, 34.952919, 30.434778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721695, 35.007858, 30.663666>,  <38.799736, 35.099422, 31.045145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721695, 35.007858, 30.663666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861086, -0.505496, -0.054822,
		-0.469540, -0.831910, 0.295733,
		-0.195099, -0.228910, -0.953696,
		38.663166, 34.939186, 30.377558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569946, 35.173645, 30.607470>,  <38.799736, 35.099422, 31.045145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569946, 35.173645, 30.607470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648952, 35.394028, 30.283140>,  <39.696354, 35.526257, 30.088543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648952, 35.394028, 30.283140>,  <39.569946, 35.173645, 30.607470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648952, 35.394028, 30.283140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277831, 0.824664, 0.492686,
		0.940106, 0.127959, 0.315955,
		0.197513, 0.550960, -0.810822,
		39.708206, 35.559315, 30.039894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171635, 35.602596, 30.747681>,  <39.569946, 35.173645, 30.607470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171635, 35.602596, 30.747681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886612, 35.724358, 30.494823>,  <39.715599, 35.797417, 30.343109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886612, 35.724358, 30.494823>,  <40.171635, 35.602596, 30.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886612, 35.724358, 30.494823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278622, 0.704120, 0.653134,
		0.643921, 0.641523, -0.416910,
		-0.712555, 0.304406, -0.632141,
		39.672844, 35.815678, 30.305182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353458, 36.241829, 30.679533>,  <40.171635, 35.602596, 30.747681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353458, 36.241829, 30.679533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965988, 36.202991, 30.588102>,  <39.733505, 36.179688, 30.533245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965988, 36.202991, 30.588102>,  <40.353458, 36.241829, 30.679533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965988, 36.202991, 30.588102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183639, 0.899674, 0.396059,
		0.167187, 0.425627, -0.889320,
		-0.968672, -0.097098, -0.228575,
		39.675388, 36.173862, 30.519529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038849, 36.891731, 30.304045>,  <40.353458, 36.241829, 30.679533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038849, 36.891731, 30.304045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779064, 36.691586, 30.533072>,  <39.623192, 36.571499, 30.670488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779064, 36.691586, 30.533072>,  <40.038849, 36.891731, 30.304045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779064, 36.691586, 30.533072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310831, 0.861902, 0.400636,
		-0.693960, 0.082227, -0.715303,
		-0.649464, -0.500364, 0.572567,
		39.584225, 36.541477, 30.704842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364731, 37.170807, 30.237820>,  <40.038849, 36.891731, 30.304045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364731, 37.170807, 30.237820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407364, 37.016506, 30.604389>,  <39.432945, 36.923923, 30.824331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407364, 37.016506, 30.604389>,  <39.364731, 37.170807, 30.237820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407364, 37.016506, 30.604389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309820, 0.862904, 0.399260,
		-0.944802, -0.326483, -0.027540,
		0.106587, -0.385754, 0.916424,
		39.439339, 36.900780, 30.879316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816277, 37.148521, 30.595650>,  <39.364731, 37.170807, 30.237820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816277, 37.148521, 30.595650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134140, 37.194397, 30.834099>,  <39.324860, 37.221920, 30.977167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134140, 37.194397, 30.834099>,  <38.816277, 37.148521, 30.595650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134140, 37.194397, 30.834099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297759, 0.929386, 0.218130,
		-0.529010, -0.350840, 0.772696,
		0.794662, 0.114685, 0.596121,
		39.372540, 37.228802, 31.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645847, 37.192165, 31.364399>,  <38.816277, 37.148521, 30.595650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645847, 37.192165, 31.364399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976444, 37.394276, 31.265112>,  <39.174801, 37.515541, 31.205540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976444, 37.394276, 31.265112>,  <38.645847, 37.192165, 31.364399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976444, 37.394276, 31.265112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402718, 0.838762, 0.366466,
		0.393360, -0.202919, 0.896712,
		0.826491, 0.505275, -0.248216,
		39.224392, 37.545856, 31.190647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344276, 37.587154, 31.943840>,  <38.645847, 37.192165, 31.364399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344276, 37.587154, 31.943840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157539, 37.423393, 32.257385>,  <38.045498, 37.325138, 32.445515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157539, 37.423393, 32.257385>,  <38.344276, 37.587154, 31.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157539, 37.423393, 32.257385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567897, -0.818258, -0.089146,
		0.677901, 0.403537, 0.614498,
		-0.466844, -0.409404, 0.783865,
		38.017487, 37.300571, 32.492546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859028, 37.321594, 32.581249>,  <38.344276, 37.587154, 31.943840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859028, 37.321594, 32.581249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529751, 37.098583, 32.538326>,  <38.332184, 36.964779, 32.512573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529751, 37.098583, 32.538326>,  <38.859028, 37.321594, 32.581249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529751, 37.098583, 32.538326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566751, -0.795675, -0.213764,
		0.033795, -0.236787, 0.970974,
		-0.823196, -0.557525, -0.107309,
		38.282791, 36.931324, 32.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742252, 36.676979, 33.061836>,  <38.859028, 37.321594, 32.581249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742252, 36.676979, 33.061836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604977, 36.648502, 32.687210>,  <38.522610, 36.631416, 32.462433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604977, 36.648502, 32.687210>,  <38.742252, 36.676979, 33.061836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604977, 36.648502, 32.687210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689931, -0.695717, -0.199931,
		-0.637351, -0.714779, 0.287879,
		-0.343189, -0.071191, -0.936564,
		38.502022, 36.627144, 32.406242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391064, 36.044762, 32.826351>,  <38.742252, 36.676979, 33.061836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391064, 36.044762, 32.826351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619759, 36.220505, 32.549198>,  <38.756973, 36.325951, 32.382908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619759, 36.220505, 32.549198>,  <38.391064, 36.044762, 32.826351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619759, 36.220505, 32.549198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554243, -0.829518, -0.068664,
		-0.604926, -0.344768, -0.717774,
		0.571733, 0.439358, -0.692882,
		38.791279, 36.352314, 32.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623592, 35.560581, 32.412865>,  <38.391064, 36.044762, 32.826351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623592, 35.560581, 32.412865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895237, 35.825684, 32.286648>,  <39.058224, 35.984745, 32.210918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895237, 35.825684, 32.286648>,  <38.623592, 35.560581, 32.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895237, 35.825684, 32.286648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644654, -0.744079, -0.175405,
		-0.351038, -0.084296, -0.932559,
		0.679112, 0.662752, -0.315542,
		39.098972, 36.024509, 32.191986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751575, 35.526752, 31.674921>,  <38.623592, 35.560581, 32.412865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751575, 35.526752, 31.674921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082016, 35.650673, 31.863213>,  <39.280281, 35.725025, 31.976187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082016, 35.650673, 31.863213>,  <38.751575, 35.526752, 31.674921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082016, 35.650673, 31.863213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485862, -0.814741, -0.316442,
		0.285487, 0.490121, -0.823577,
		0.826097, 0.309805, 0.470729,
		39.329845, 35.743614, 32.004433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384888, 35.742661, 31.263729>,  <38.751575, 35.526752, 31.674921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384888, 35.742661, 31.263729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462734, 35.580078, 31.620810>,  <39.509441, 35.482529, 31.835058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462734, 35.580078, 31.620810>,  <39.384888, 35.742661, 31.263729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462734, 35.580078, 31.620810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658342, -0.620531, -0.426060,
		0.727124, 0.670623, 0.146819,
		0.194620, -0.406455, 0.892702,
		39.521122, 35.458141, 31.888620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072956, 35.729336, 31.529688>,  <39.384888, 35.742661, 31.263729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072956, 35.729336, 31.529688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901031, 35.394661, 31.665461>,  <39.797874, 35.193855, 31.746923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901031, 35.394661, 31.665461>,  <40.072956, 35.729336, 31.529688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901031, 35.394661, 31.665461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808666, -0.523937, -0.267487,
		0.401643, 0.159517, 0.901797,
		-0.429816, -0.836687, 0.339432,
		39.772087, 35.143654, 31.767290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449284, 35.318615, 32.108620>,  <40.072956, 35.729336, 31.529688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449284, 35.318615, 32.108620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799744, 35.492420, 32.192101>,  <41.010021, 35.596703, 32.242188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799744, 35.492420, 32.192101>,  <40.449284, 35.318615, 32.108620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799744, 35.492420, 32.192101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039056, -0.495525, 0.867715,
		0.480453, -0.752098, -0.451125,
		0.876151, 0.434515, 0.208703,
		41.062588, 35.622776, 32.254711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771698, 34.709282, 32.273426>,  <40.449284, 35.318615, 32.108620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771698, 34.709282, 32.273426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940983, 35.029579, 32.442993>,  <41.042553, 35.221756, 32.544731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940983, 35.029579, 32.442993>,  <40.771698, 34.709282, 32.273426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940983, 35.029579, 32.442993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162527, -0.527385, 0.833936,
		0.891336, -0.284031, -0.353337,
		0.423208, 0.800744, 0.423915,
		41.067944, 35.269802, 32.570168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413734, 34.930336, 31.927786>,  <40.771698, 34.709282, 32.273426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413734, 34.930336, 31.927786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533943, 35.067219, 31.571676>,  <41.606068, 35.149349, 31.358011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533943, 35.067219, 31.571676>,  <41.413734, 34.930336, 31.927786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533943, 35.067219, 31.571676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949971, -0.190691, 0.247373,
		-0.085115, -0.920073, -0.382390,
		0.300519, 0.342204, -0.890272,
		41.624100, 35.169880, 31.304594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895912, 34.386520, 31.741209>,  <41.413734, 34.930336, 31.927786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895912, 34.386520, 31.741209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992058, 34.707150, 31.522224>,  <42.049744, 34.899525, 31.390833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992058, 34.707150, 31.522224>,  <41.895912, 34.386520, 31.741209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992058, 34.707150, 31.522224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968923, -0.164171, 0.185028,
		0.058435, -0.574922, -0.816119,
		0.240360, 0.801569, -0.547462,
		42.064167, 34.947620, 31.357986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434795, 34.100395, 31.212446>,  <41.895912, 34.386520, 31.741209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434795, 34.100395, 31.212446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481449, 34.497189, 31.231918>,  <42.509441, 34.735264, 31.243601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481449, 34.497189, 31.231918>,  <42.434795, 34.100395, 31.212446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481449, 34.497189, 31.231918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950903, -0.125686, 0.282819,
		0.286670, 0.013302, -0.957937,
		0.116638, 0.991981, 0.048679,
		42.516441, 34.794785, 31.246523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020172, 34.242565, 30.876587>,  <42.434795, 34.100395, 31.212446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020172, 34.242565, 30.876587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939449, 34.541359, 31.129976>,  <42.891014, 34.720634, 31.282009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939449, 34.541359, 31.129976>,  <43.020172, 34.242565, 30.876587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939449, 34.541359, 31.129976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926753, -0.063611, 0.370247,
		0.316864, 0.661792, -0.679432,
		-0.201807, 0.746984, 0.633474,
		42.878906, 34.765453, 31.320019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631592, 34.546093, 30.981174>,  <43.020172, 34.242565, 30.876587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631592, 34.546093, 30.981174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406254, 34.675720, 31.285181>,  <43.271049, 34.753494, 31.467585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406254, 34.675720, 31.285181>,  <43.631592, 34.546093, 30.981174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406254, 34.675720, 31.285181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753659, -0.175407, 0.633427,
		0.338584, 0.929631, -0.145420,
		-0.563346, 0.324065, 0.760015,
		43.237251, 34.772942, 31.513186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876476, 35.117115, 31.382729>,  <43.631592, 34.546093, 30.981174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876476, 35.117115, 31.382729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669601, 34.872208, 31.621944>,  <43.545479, 34.725266, 31.765474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669601, 34.872208, 31.621944>,  <43.876476, 35.117115, 31.382729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669601, 34.872208, 31.621944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811044, -0.127416, 0.570940,
		-0.273366, 0.780318, 0.562472,
		-0.517183, -0.612265, 0.598041,
		43.514446, 34.688530, 31.801357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193851, 35.164265, 32.049847>,  <43.876476, 35.117115, 31.382729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193851, 35.164265, 32.049847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966419, 34.835976, 32.072197>,  <43.829960, 34.639000, 32.085606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966419, 34.835976, 32.072197>,  <44.193851, 35.164265, 32.049847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966419, 34.835976, 32.072197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648124, -0.405109, 0.644842,
		-0.506603, 0.402861, 0.762271,
		-0.568584, -0.820725, 0.055875,
		43.795845, 34.589760, 32.088959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652149, 34.836517, 32.457825>,  <44.193851, 35.164265, 32.049847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652149, 34.836517, 32.457825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 34.576859, 32.427719>,  <44.167713, 34.421062, 32.409657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 34.576859, 32.427719>,  <44.652149, 34.836517, 32.457825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349377, 34.576859, 32.427719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399555, -0.550851, 0.732747,
		-0.517120, 0.524566, 0.676326,
		-0.756930, -0.649148, -0.075263,
		44.122299, 34.382114, 32.405140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286045, 35.074818, 32.711544>,  <44.652149, 34.836517, 32.457825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286045, 35.074818, 32.711544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999557, 34.906075, 32.933914>,  <44.827663, 34.804829, 33.067337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999557, 34.906075, 32.933914>,  <45.286045, 35.074818, 32.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999557, 34.906075, 32.933914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577742, 0.088413, 0.811417,
		-0.391456, 0.902340, 0.180403,
		-0.716223, -0.421861, 0.555930,
		44.784691, 34.779518, 33.100693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906483, 35.554180, 32.960121>,  <45.286045, 35.074818, 32.711544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906483, 35.554180, 32.960121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875553, 35.814430, 33.262299>,  <45.856995, 35.970581, 33.443607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875553, 35.814430, 33.262299>,  <45.906483, 35.554180, 32.960121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875553, 35.814430, 33.262299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116947, -0.758405, 0.641206,
		0.990123, -0.038765, 0.134735,
		-0.077327, 0.650630, 0.755448,
		45.852356, 36.009621, 33.488934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373455, 35.485332, 33.454014>,  <45.906483, 35.554180, 32.960121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373455, 35.485332, 33.454014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063480, 35.644726, 33.650253>,  <45.877495, 35.740360, 33.767998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063480, 35.644726, 33.650253>,  <46.373455, 35.485332, 33.454014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063480, 35.644726, 33.650253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080040, -0.708095, 0.701566,
		0.626953, 0.582936, 0.516833,
		-0.774935, 0.398482, 0.490601,
		45.831001, 35.764271, 33.797432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522221, 35.726299, 34.090027>,  <46.373455, 35.485332, 33.454014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522221, 35.726299, 34.090027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139923, 35.613285, 34.122822>,  <45.910545, 35.545479, 34.142498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139923, 35.613285, 34.122822>,  <46.522221, 35.726299, 34.090027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139923, 35.613285, 34.122822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256397, -0.663328, 0.703034,
		-0.144244, 0.692944, 0.706415,
		-0.955748, -0.282531, 0.081988,
		45.853199, 35.528526, 34.147419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283920, 35.807610, 34.730190>,  <46.522221, 35.726299, 34.090027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283920, 35.807610, 34.730190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125412, 35.504333, 34.523071>,  <46.030308, 35.322369, 34.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125412, 35.504333, 34.523071>,  <46.283920, 35.807610, 34.730190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125412, 35.504333, 34.523071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385182, -0.649226, 0.655851,
		-0.833427, 0.060450, 0.549313,
		-0.396274, -0.758189, -0.517799,
		46.006531, 35.276878, 34.367733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540798, 35.101852, 34.624268>,  <46.283920, 35.807610, 34.730190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540798, 35.101852, 34.624268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670887, 34.999226, 34.988335>,  <46.748940, 34.937649, 35.206776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670887, 34.999226, 34.988335>,  <46.540798, 35.101852, 34.624268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670887, 34.999226, 34.988335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920054, -0.136524, -0.367235,
		0.218480, 0.956837, 0.191652,
		0.325219, -0.256564, 0.910169,
		46.768452, 34.922256, 35.261387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157677, 35.373810, 34.794384>,  <46.540798, 35.101852, 34.624268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157677, 35.373810, 34.794384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216591, 35.095318, 35.075401>,  <47.251938, 34.928223, 35.244011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216591, 35.095318, 35.075401>,  <47.157677, 35.373810, 34.794384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216591, 35.095318, 35.075401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986539, 0.052372, -0.154915,
		0.071063, 0.715907, 0.694570,
		0.147281, -0.696229, 0.702548,
		47.260777, 34.886448, 35.286167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827679, 35.524220, 34.975098>,  <47.157677, 35.373810, 34.794384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827679, 35.524220, 34.975098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744259, 35.172081, 35.145504>,  <47.694206, 34.960796, 35.247749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744259, 35.172081, 35.145504>,  <47.827679, 35.524220, 34.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744259, 35.172081, 35.145504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965426, -0.115656, 0.233617,
		-0.156393, 0.460010, 0.874032,
		-0.208554, -0.880349, 0.426017,
		47.681694, 34.907978, 35.273308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.538528, 37.112568, 17.471298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339367, 36.780258, 17.371769>,  <40.219872, 36.580872, 17.312052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339367, 36.780258, 17.371769>,  <40.538528, 37.112568, 17.471298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339367, 36.780258, 17.371769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360379, -0.062765, 0.930692,
		-0.788808, 0.553065, -0.268141,
		-0.497903, -0.830770, -0.248823,
		40.189995, 36.531029, 17.297121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825859, 37.199265, 17.593895>,  <40.538528, 37.112568, 17.471298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825859, 37.199265, 17.593895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894234, 36.805355, 17.606581>,  <39.935257, 36.569012, 17.614193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894234, 36.805355, 17.606581>,  <39.825859, 37.199265, 17.593895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894234, 36.805355, 17.606581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429329, -0.045472, 0.902003,
		-0.886824, -0.167802, -0.430564,
		0.170937, -0.984772, 0.031716,
		39.945515, 36.509922, 17.616096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204918, 36.913773, 17.880514>,  <39.825859, 37.199265, 17.593895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204918, 36.913773, 17.880514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476997, 36.628719, 17.949202>,  <39.640244, 36.457687, 17.990414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476997, 36.628719, 17.949202>,  <39.204918, 36.913773, 17.880514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476997, 36.628719, 17.949202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339146, -0.098265, 0.935587,
		-0.649855, -0.694622, -0.308526,
		0.680196, -0.712632, 0.171720,
		39.681057, 36.414928, 18.000717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778900, 36.396763, 18.287119>,  <39.204918, 36.913773, 17.880514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778900, 36.396763, 18.287119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160065, 36.300201, 18.360542>,  <39.388763, 36.242264, 18.404596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160065, 36.300201, 18.360542>,  <38.778900, 36.396763, 18.287119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160065, 36.300201, 18.360542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224067, -0.152578, 0.962556,
		-0.204356, -0.958356, -0.199483,
		0.952907, -0.241401, 0.183556,
		39.445938, 36.227783, 18.415609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769310, 35.853424, 18.797329>,  <38.778900, 36.396763, 18.287119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769310, 35.853424, 18.797329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150806, 35.961391, 18.850283>,  <39.379704, 36.026173, 18.882055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150806, 35.961391, 18.850283>,  <38.769310, 35.853424, 18.797329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150806, 35.961391, 18.850283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123004, -0.051451, 0.991072,
		0.274325, -0.961506, -0.015869,
		0.953737, 0.269924, 0.132383,
		39.436928, 36.042370, 18.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001041, 35.332722, 19.328897>,  <38.769310, 35.853424, 18.797329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001041, 35.332722, 19.328897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203987, 35.677219, 19.340509>,  <39.325756, 35.883919, 19.347477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203987, 35.677219, 19.340509>,  <39.001041, 35.332722, 19.328897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203987, 35.677219, 19.340509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024201, -0.019431, 0.999518,
		0.861392, -0.507821, 0.010985,
		0.507363, 0.861243, 0.029028,
		39.356197, 35.935593, 19.349218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540661, 35.307648, 19.916086>,  <39.001041, 35.332722, 19.328897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540661, 35.307648, 19.916086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480579, 35.692394, 19.824646>,  <39.444530, 35.923241, 19.769781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480579, 35.692394, 19.824646>,  <39.540661, 35.307648, 19.916086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480579, 35.692394, 19.824646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013908, 0.229146, 0.973293,
		0.988558, 0.149370, -0.021041,
		-0.150203, 0.961863, -0.228601,
		39.435520, 35.980953, 19.756065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834904, 35.617485, 20.421528>,  <39.540661, 35.307648, 19.916086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834904, 35.617485, 20.421528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591972, 35.892876, 20.262959>,  <39.446213, 36.058109, 20.167816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591972, 35.892876, 20.262959>,  <39.834904, 35.617485, 20.421528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591972, 35.892876, 20.262959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232408, 0.323195, 0.917350,
		0.759700, 0.649261, -0.036275,
		-0.607324, 0.688480, -0.396425,
		39.409775, 36.099419, 20.144032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051640, 36.288258, 20.762079>,  <39.834904, 35.617485, 20.421528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051640, 36.288258, 20.762079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680084, 36.349907, 20.627367>,  <39.457153, 36.386898, 20.546539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680084, 36.349907, 20.627367>,  <40.051640, 36.288258, 20.762079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680084, 36.349907, 20.627367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268535, 0.345989, 0.898989,
		0.255077, 0.925494, -0.279996,
		-0.928884, 0.154122, -0.336781,
		39.401421, 36.396145, 20.526333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909393, 36.900120, 21.100647>,  <40.051640, 36.288258, 20.762079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909393, 36.900120, 21.100647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551857, 36.761909, 20.986338>,  <39.337334, 36.678986, 20.917753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551857, 36.761909, 20.986338>,  <39.909393, 36.900120, 21.100647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551857, 36.761909, 20.986338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413761, 0.390007, 0.822616,
		-0.172778, 0.853528, -0.491567,
		-0.893840, -0.345521, -0.285771,
		39.283707, 36.658253, 20.900606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430180, 37.401924, 21.073774>,  <39.909393, 36.900120, 21.100647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430180, 37.401924, 21.073774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198185, 37.079903, 21.123581>,  <39.058990, 36.886688, 21.153465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198185, 37.079903, 21.123581>,  <39.430180, 37.401924, 21.073774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198185, 37.079903, 21.123581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603135, 0.527107, 0.598654,
		-0.547583, 0.272110, -0.791271,
		-0.579984, -0.805055, 0.124516,
		39.024189, 36.838387, 21.160936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763271, 37.713665, 20.972876>,  <39.430180, 37.401924, 21.073774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763271, 37.713665, 20.972876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711349, 37.360416, 21.153204>,  <38.680195, 37.148468, 21.261400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711349, 37.360416, 21.153204>,  <38.763271, 37.713665, 20.972876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711349, 37.360416, 21.153204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660050, 0.416251, 0.625355,
		-0.739922, -0.216390, -0.636939,
		-0.129806, -0.883125, 0.450822,
		38.672409, 37.095478, 21.288450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977646, 37.643036, 21.235704>,  <38.763271, 37.713665, 20.972876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977646, 37.643036, 21.235704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188774, 37.376575, 21.446476>,  <38.315449, 37.216698, 21.572939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188774, 37.376575, 21.446476>,  <37.977646, 37.643036, 21.235704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188774, 37.376575, 21.446476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519108, 0.238023, 0.820897,
		-0.672262, -0.706815, -0.220172,
		0.527816, -0.666152, 0.526927,
		38.347118, 37.176731, 21.604553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472622, 37.276951, 21.758745>,  <37.977646, 37.643036, 21.235704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472622, 37.276951, 21.758745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848408, 37.235607, 21.889420>,  <38.073879, 37.210800, 21.967823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848408, 37.235607, 21.889420>,  <37.472622, 37.276951, 21.758745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848408, 37.235607, 21.889420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314883, 0.115520, 0.942074,
		-0.135110, -0.987913, 0.075982,
		0.939465, -0.103358, 0.326685,
		38.130249, 37.204601, 21.987425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417767, 36.778500, 22.259272>,  <37.472622, 37.276951, 21.758745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417767, 36.778500, 22.259272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760361, 36.970192, 22.335972>,  <37.965916, 37.085209, 22.381992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760361, 36.970192, 22.335972>,  <37.417767, 36.778500, 22.259272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760361, 36.970192, 22.335972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389998, 0.357458, 0.848602,
		0.338128, -0.801602, 0.493056,
		0.856487, 0.479227, 0.191757,
		38.017307, 37.113964, 22.393497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536804, 36.569866, 22.946474>,  <37.417767, 36.778500, 22.259272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536804, 36.569866, 22.946474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760201, 36.897839, 22.896196>,  <37.894238, 37.094624, 22.866030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760201, 36.897839, 22.896196>,  <37.536804, 36.569866, 22.946474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760201, 36.897839, 22.896196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316354, 0.350609, 0.881472,
		0.766819, -0.452528, 0.455200,
		0.558488, 0.819934, -0.125695,
		37.927746, 37.143818, 22.858488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905277, 36.723392, 23.524521>,  <37.536804, 36.569866, 22.946474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905277, 36.723392, 23.524521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912952, 37.085247, 23.354216>,  <37.917557, 37.302361, 23.252033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912952, 37.085247, 23.354216>,  <37.905277, 36.723392, 23.524521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912952, 37.085247, 23.354216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293872, 0.412132, 0.862431,
		0.955652, 0.108572, 0.273753,
		0.019186, 0.904632, -0.425761,
		37.918709, 37.356636, 23.226488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280060, 37.203144, 23.987751>,  <37.905277, 36.723392, 23.524521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280060, 37.203144, 23.987751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077076, 37.452599, 23.749903>,  <37.955288, 37.602272, 23.607195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077076, 37.452599, 23.749903>,  <38.280060, 37.203144, 23.987751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077076, 37.452599, 23.749903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254082, 0.551094, 0.794819,
		0.823366, 0.554418, -0.121202,
		-0.507456, 0.623632, -0.594619,
		37.924839, 37.639687, 23.571516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534863, 37.848343, 24.151096>,  <38.280060, 37.203144, 23.987751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534863, 37.848343, 24.151096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 37.945618, 23.970661>,  <37.985291, 38.003983, 23.862400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 37.945618, 23.970661>,  <38.534863, 37.848343, 24.151096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191380, 37.945618, 23.970661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158491, 0.711049, 0.685048,
		0.487341, 0.659749, -0.572040,
		-0.858708, 0.243189, -0.451087,
		37.933765, 38.018574, 23.835335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279888, 38.585117, 24.300817>,  <38.534863, 37.848343, 24.151096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279888, 38.585117, 24.300817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926746, 38.487164, 24.140516>,  <37.714863, 38.428391, 24.044336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926746, 38.487164, 24.140516>,  <38.279888, 38.585117, 24.300817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926746, 38.487164, 24.140516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468333, 0.522830, 0.712259,
		0.035106, 0.816506, -0.576269,
		-0.882854, -0.244882, -0.400751,
		37.661892, 38.413700, 24.020290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969879, 39.193798, 24.186018>,  <38.279888, 38.585117, 24.300817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969879, 39.193798, 24.186018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684761, 38.916599, 24.229246>,  <37.513691, 38.750278, 24.255182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684761, 38.916599, 24.229246>,  <37.969879, 39.193798, 24.186018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684761, 38.916599, 24.229246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368466, 0.501099, 0.783028,
		-0.596792, 0.518315, -0.612526,
		-0.712791, -0.693000, 0.108070,
		37.470924, 38.708698, 24.261667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294582, 39.574879, 24.332613>,  <37.969879, 39.193798, 24.186018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294582, 39.574879, 24.332613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231686, 39.194836, 24.440374>,  <37.193947, 38.966812, 24.505032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231686, 39.194836, 24.440374>,  <37.294582, 39.574879, 24.332613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231686, 39.194836, 24.440374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582858, 0.309502, 0.751322,
		-0.797214, -0.038880, -0.602444,
		-0.157246, -0.950104, 0.269401,
		37.184513, 38.909805, 24.521194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852966, 39.971149, 24.794792>,  <37.294582, 39.574879, 24.332613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852966, 39.971149, 24.794792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837410, 40.356186, 24.687527>,  <36.828075, 40.587208, 24.623167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837410, 40.356186, 24.687527>,  <36.852966, 39.971149, 24.794792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837410, 40.356186, 24.687527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259383, -0.249442, -0.933006,
		-0.964991, -0.105841, -0.239978,
		-0.038890, 0.962588, -0.268163,
		36.825745, 40.644962, 24.607079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351543, 40.022839, 24.175423>,  <36.852966, 39.971149, 24.794792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351543, 40.022839, 24.175423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614902, 40.323883, 24.171591>,  <36.772919, 40.504509, 24.169292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614902, 40.323883, 24.171591>,  <36.351543, 40.022839, 24.175423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614902, 40.323883, 24.171591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341359, -0.309920, -0.887369,
		-0.670811, 0.580971, -0.460961,
		0.658397, 0.752610, -0.009578,
		36.812420, 40.549667, 24.168716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215302, 40.334198, 23.535923>,  <36.351543, 40.022839, 24.175423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215302, 40.334198, 23.535923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589668, 40.446018, 23.621634>,  <36.814289, 40.513111, 23.673059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589668, 40.446018, 23.621634>,  <36.215302, 40.334198, 23.535923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589668, 40.446018, 23.621634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301333, -0.320473, -0.898051,
		-0.182381, 0.905068, -0.384174,
		0.935914, 0.279551, 0.214278,
		36.870441, 40.529884, 23.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348759, 40.774094, 23.005661>,  <36.215302, 40.334198, 23.535923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348759, 40.774094, 23.005661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694500, 40.654236, 23.167210>,  <36.901943, 40.582321, 23.264139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694500, 40.654236, 23.167210>,  <36.348759, 40.774094, 23.005661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694500, 40.654236, 23.167210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365514, -0.177254, -0.913773,
		0.345398, 0.937439, -0.043684,
		0.864349, -0.299649, 0.403870,
		36.953804, 40.564342, 23.288370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779034, 40.983017, 22.429531>,  <36.348759, 40.774094, 23.005661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779034, 40.983017, 22.429531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027466, 40.778229, 22.666897>,  <37.176525, 40.655357, 22.809317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027466, 40.778229, 22.666897>,  <36.779034, 40.983017, 22.429531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027466, 40.778229, 22.666897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561848, -0.237043, -0.792551,
		0.546428, 0.825649, 0.140427,
		0.621082, -0.511971, 0.593417,
		37.213791, 40.624638, 22.844921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406902, 41.119610, 22.093058>,  <36.779034, 40.983017, 22.429531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406902, 41.119610, 22.093058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457169, 40.801651, 22.330494>,  <37.487328, 40.610874, 22.472956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457169, 40.801651, 22.330494>,  <37.406902, 41.119610, 22.093058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457169, 40.801651, 22.330494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609375, -0.410307, -0.678462,
		0.782861, 0.446975, 0.432830,
		0.125663, -0.794897, 0.593589,
		37.494865, 40.563183, 22.508570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226131, 40.917873, 22.246391>,  <37.406902, 41.119610, 22.093058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226131, 40.917873, 22.246391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995892, 40.592514, 22.280020>,  <37.857746, 40.397297, 22.300198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.995892, 40.592514, 22.280020>,  <38.226131, 40.917873, 22.246391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995892, 40.592514, 22.280020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591552, -0.485168, -0.643954,
		0.564581, -0.320926, 0.760431,
		-0.575599, -0.813399, 0.084072,
		37.823212, 40.348495, 22.305241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699707, 40.292667, 22.273594>,  <38.226131, 40.917873, 22.246391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699707, 40.292667, 22.273594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338955, 40.167164, 22.154816>,  <38.122505, 40.091862, 22.083549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.338955, 40.167164, 22.154816>,  <38.699707, 40.292667, 22.273594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338955, 40.167164, 22.154816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428489, -0.562354, -0.707217,
		0.054905, -0.765060, 0.641614,
		-0.901877, -0.313754, -0.296944,
		38.068390, 40.073036, 22.065733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819847, 39.499836, 22.165413>,  <38.699707, 40.292667, 22.273594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819847, 39.499836, 22.165413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487133, 39.599010, 21.966757>,  <38.287502, 39.658516, 21.847563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487133, 39.599010, 21.966757>,  <38.819847, 39.499836, 22.165413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487133, 39.599010, 21.966757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274678, -0.593635, -0.756406,
		-0.482367, -0.765586, 0.425675,
		-0.831789, 0.247942, -0.496640,
		38.237595, 39.673393, 21.817764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622494, 38.961346, 21.837936>,  <38.819847, 39.499836, 22.165413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622494, 38.961346, 21.837936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412910, 39.224884, 21.622015>,  <38.287163, 39.383007, 21.492462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.412910, 39.224884, 21.622015>,  <38.622494, 38.961346, 21.837936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412910, 39.224884, 21.622015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192844, -0.525543, -0.828623,
		-0.829627, -0.538261, 0.148306,
		-0.523956, 0.658848, -0.539805,
		38.255722, 39.422539, 21.460073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165985, 38.656090, 21.292955>,  <38.622494, 38.961346, 21.837936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165985, 38.656090, 21.292955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233891, 39.034092, 21.181133>,  <38.274635, 39.260891, 21.114040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233891, 39.034092, 21.181133>,  <38.165985, 38.656090, 21.292955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233891, 39.034092, 21.181133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109873, -0.300057, -0.947573,
		-0.979340, 0.130152, -0.154770,
		0.169768, 0.945001, -0.279557,
		38.284821, 39.317593, 21.097265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988194, 38.581097, 20.588293>,  <38.165985, 38.656090, 21.292955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988194, 38.581097, 20.588293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170658, 38.936264, 20.612017>,  <38.280136, 39.149364, 20.626251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170658, 38.936264, 20.612017>,  <37.988194, 38.581097, 20.588293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170658, 38.936264, 20.612017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264607, -0.071705, -0.961687,
		-0.849649, 0.454374, -0.267659,
		0.456158, 0.887921, 0.059307,
		38.307507, 39.202641, 20.629808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774960, 39.013714, 20.071804>,  <37.988194, 38.581097, 20.588293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774960, 39.013714, 20.071804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132893, 39.160748, 20.173120>,  <38.347652, 39.248970, 20.233910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132893, 39.160748, 20.173120>,  <37.774960, 39.013714, 20.071804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132893, 39.160748, 20.173120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257428, 0.038643, -0.965524,
		-0.364702, 0.929186, -0.060048,
		0.894831, 0.367587, 0.253292,
		38.401340, 39.271023, 20.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766815, 39.543907, 19.635519>,  <37.774960, 39.013714, 20.071804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766815, 39.543907, 19.635519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138859, 39.450600, 19.748995>,  <38.362083, 39.394615, 19.817081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138859, 39.450600, 19.748995>,  <37.766815, 39.543907, 19.635519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138859, 39.450600, 19.748995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294214, 0.010869, -0.955678,
		0.219846, 0.972351, 0.078740,
		0.930110, -0.233269, 0.283690,
		38.417892, 39.380619, 19.834103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193859, 40.019989, 19.354319>,  <37.766815, 39.543907, 19.635519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193859, 40.019989, 19.354319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426403, 39.706596, 19.442118>,  <38.565929, 39.518562, 19.494797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426403, 39.706596, 19.442118>,  <38.193859, 40.019989, 19.354319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426403, 39.706596, 19.442118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205317, -0.119778, -0.971338,
		0.787316, 0.609762, 0.091228,
		0.581358, -0.783481, 0.219498,
		38.600811, 39.471554, 19.507967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771828, 40.232185, 19.005568>,  <38.193859, 40.019989, 19.354319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771828, 40.232185, 19.005568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830399, 39.844044, 19.082487>,  <38.865540, 39.611160, 19.128639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830399, 39.844044, 19.082487>,  <38.771828, 40.232185, 19.005568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830399, 39.844044, 19.082487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589240, -0.070586, -0.804869,
		0.794578, 0.231166, 0.561434,
		0.146429, -0.970350, 0.192298,
		38.874329, 39.552940, 19.140177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447334, 40.133724, 18.846376>,  <38.771828, 40.232185, 19.005568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447334, 40.133724, 18.846376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291748, 39.765289, 18.839394>,  <39.198395, 39.544228, 18.835203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291748, 39.765289, 18.839394>,  <39.447334, 40.133724, 18.846376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291748, 39.765289, 18.839394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613588, -0.244886, -0.750693,
		0.687177, -0.302709, 0.660420,
		-0.388970, -0.921085, -0.017459,
		39.175056, 39.488964, 18.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001221, 39.718307, 18.876328>,  <39.447334, 40.133724, 18.846376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001221, 39.718307, 18.876328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694332, 39.514904, 18.719973>,  <39.510201, 39.392864, 18.626160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694332, 39.514904, 18.719973>,  <40.001221, 39.718307, 18.876328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694332, 39.514904, 18.719973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585945, -0.307844, -0.749600,
		0.260844, -0.804148, 0.534141,
		-0.767222, -0.508506, -0.390887,
		39.464165, 39.362350, 18.602707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.230511, 39.020176, 18.687410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910385, 39.098366, 18.460682>,  <39.718311, 39.145279, 18.324644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910385, 39.098366, 18.460682>,  <40.230511, 39.020176, 18.687410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910385, 39.098366, 18.460682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462873, -0.399477, -0.791307,
		-0.381107, -0.895662, 0.229231,
		-0.800316, 0.195468, -0.566821,
		39.670292, 39.157009, 18.290636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191174, 38.403408, 18.223736>,  <40.230511, 39.020176, 18.687410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191174, 38.403408, 18.223736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944752, 38.657730, 18.037739>,  <39.796898, 38.810326, 17.926140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944752, 38.657730, 18.037739>,  <40.191174, 38.403408, 18.223736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944752, 38.657730, 18.037739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376395, -0.280951, -0.882833,
		-0.691954, -0.718897, -0.066234,
		-0.616057, 0.635810, -0.464994,
		39.759933, 38.848473, 17.898241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078857, 38.012455, 17.529552>,  <40.191174, 38.403408, 18.223736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078857, 38.012455, 17.529552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954014, 38.389709, 17.483803>,  <39.879108, 38.616062, 17.456352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954014, 38.389709, 17.483803>,  <40.078857, 38.012455, 17.529552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954014, 38.389709, 17.483803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162261, -0.065701, -0.984558,
		-0.936087, -0.325848, -0.132528,
		-0.312109, 0.943136, -0.114374,
		39.860382, 38.672649, 17.449492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644981, 37.994041, 16.918856>,  <40.078857, 38.012455, 17.529552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644981, 37.994041, 16.918856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775116, 38.369579, 16.963985>,  <39.853195, 38.594902, 16.991064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775116, 38.369579, 16.963985>,  <39.644981, 37.994041, 16.918856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775116, 38.369579, 16.963985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109239, 0.081202, -0.990693,
		-0.939268, 0.334632, -0.076141,
		0.325335, 0.938844, 0.112825,
		39.872715, 38.651234, 16.997833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302395, 38.413486, 16.394918>,  <39.644981, 37.994041, 16.918856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302395, 38.413486, 16.394918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640144, 38.610264, 16.479795>,  <39.842793, 38.728329, 16.530722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640144, 38.610264, 16.479795>,  <39.302395, 38.413486, 16.394918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640144, 38.610264, 16.479795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166537, 0.135437, -0.976689,
		-0.509214, 0.860029, 0.032433,
		0.844374, 0.491942, 0.212193,
		39.893456, 38.757847, 16.543453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268650, 38.984341, 16.082834>,  <39.302395, 38.413486, 16.394918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268650, 38.984341, 16.082834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664188, 38.945393, 16.127928>,  <39.901512, 38.922024, 16.154984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664188, 38.945393, 16.127928>,  <39.268650, 38.984341, 16.082834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664188, 38.945393, 16.127928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123080, 0.107780, -0.986527,
		0.083909, 0.989395, 0.118562,
		0.988843, -0.097371, 0.112732,
		39.960842, 38.916180, 16.161747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602783, 39.375866, 15.461031>,  <39.268650, 38.984341, 16.082834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602783, 39.375866, 15.461031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931145, 39.235851, 15.641513>,  <40.128162, 39.151844, 15.749802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931145, 39.235851, 15.641513>,  <39.602783, 39.375866, 15.461031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931145, 39.235851, 15.641513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488719, 0.021904, -0.872166,
		0.295408, 0.936479, 0.189052,
		0.820907, -0.350038, 0.451205,
		40.177418, 39.130840, 15.776875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217186, 39.878853, 15.315192>,  <39.602783, 39.375866, 15.461031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217186, 39.878853, 15.315192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334923, 39.500809, 15.371950>,  <40.405563, 39.273983, 15.406005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.334923, 39.500809, 15.371950>,  <40.217186, 39.878853, 15.315192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334923, 39.500809, 15.371950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320697, -0.042188, -0.946242,
		0.900287, 0.324025, 0.290675,
		0.294343, -0.945107, 0.141895,
		40.423225, 39.217278, 15.414518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867550, 39.824532, 15.138521>,  <40.217186, 39.878853, 15.315192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867550, 39.824532, 15.138521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735100, 39.454185, 15.065717>,  <40.655628, 39.231979, 15.022035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735100, 39.454185, 15.065717>,  <40.867550, 39.824532, 15.138521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735100, 39.454185, 15.065717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380965, 0.045292, -0.923479,
		0.863261, -0.375130, 0.337725,
		-0.331129, -0.925865, -0.182010,
		40.635761, 39.176426, 15.011114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446270, 39.430206, 14.818656>,  <40.867550, 39.824532, 15.138521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446270, 39.430206, 14.818656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.106983, 39.227139, 14.758261>,  <40.903412, 39.105297, 14.722024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.106983, 39.227139, 14.758261>,  <41.446270, 39.430206, 14.818656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106983, 39.227139, 14.758261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267370, -0.164333, -0.949478,
		0.457213, -0.845731, 0.275127,
		-0.848215, -0.507674, -0.150988,
		40.852520, 39.074837, 14.712964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623001, 38.936993, 14.362981>,  <41.446270, 39.430206, 14.818656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623001, 38.936993, 14.362981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225510, 38.924767, 14.319974>,  <40.987015, 38.917431, 14.294169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225510, 38.924767, 14.319974>,  <41.623001, 38.936993, 14.362981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225510, 38.924767, 14.319974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108862, -0.046428, -0.992972,
		0.025360, -0.998454, 0.049464,
		-0.993733, -0.030567, -0.107517,
		40.927391, 38.915596, 14.287719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551373, 38.388733, 13.872890>,  <41.623001, 38.936993, 14.362981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551373, 38.388733, 13.872890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204185, 38.587357, 13.869732>,  <40.995872, 38.706532, 13.867837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204185, 38.587357, 13.869732>,  <41.551373, 38.388733, 13.872890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204185, 38.587357, 13.869732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033185, -0.073855, -0.996717,
		-0.495517, -0.864853, 0.080581,
		-0.867965, 0.496564, -0.007896,
		40.943794, 38.736324, 13.867363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083843, 37.964169, 13.554652>,  <41.551373, 38.388733, 13.872890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083843, 37.964169, 13.554652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895969, 38.316154, 13.526175>,  <40.783245, 38.527344, 13.509088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895969, 38.316154, 13.526175>,  <41.083843, 37.964169, 13.554652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895969, 38.316154, 13.526175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025109, -0.093926, -0.995263,
		-0.882479, -0.465668, 0.066210,
		-0.469680, 0.879961, -0.071195,
		40.755066, 38.580143, 13.504816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601231, 37.820393, 13.134987>,  <41.083843, 37.964169, 13.554652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601231, 37.820393, 13.134987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670383, 38.213745, 13.112786>,  <40.711876, 38.449757, 13.099466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670383, 38.213745, 13.112786>,  <40.601231, 37.820393, 13.134987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670383, 38.213745, 13.112786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271923, -0.006507, -0.962297,
		-0.946663, 0.181455, 0.266278,
		0.172881, 0.983378, -0.055502,
		40.722248, 38.508759, 13.096136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263653, 37.978718, 12.485868>,  <40.601231, 37.820393, 13.134987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263653, 37.978718, 12.485868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490028, 38.300232, 12.559244>,  <40.625854, 38.493141, 12.603271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490028, 38.300232, 12.559244>,  <40.263653, 37.978718, 12.485868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490028, 38.300232, 12.559244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026445, 0.240087, -0.970391,
		-0.824024, 0.544330, 0.157130,
		0.565938, 0.803781, 0.183442,
		40.659809, 38.541367, 12.614277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920124, 38.563931, 12.214688>,  <40.263653, 37.978718, 12.485868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920124, 38.563931, 12.214688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313457, 38.634026, 12.234031>,  <40.549458, 38.676083, 12.245636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313457, 38.634026, 12.234031>,  <39.920124, 38.563931, 12.214688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313457, 38.634026, 12.234031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003598, 0.284712, -0.958606,
		-0.181754, 0.942459, 0.280599,
		0.983337, 0.175240, 0.048356,
		40.608459, 38.686596, 12.248538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026497, 39.203671, 11.924183>,  <39.920124, 38.563931, 12.214688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026497, 39.203671, 11.924183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363571, 38.992889, 11.880003>,  <40.565815, 38.866421, 11.853495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363571, 38.992889, 11.880003>,  <40.026497, 39.203671, 11.924183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363571, 38.992889, 11.880003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091409, 0.342193, -0.935173,
		0.530585, 0.777963, 0.336530,
		0.842688, -0.526951, -0.110450,
		40.616379, 38.834805, 11.846869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544674, 39.676586, 11.644429>,  <40.026497, 39.203671, 11.924183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544674, 39.676586, 11.644429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714142, 39.326229, 11.552067>,  <40.815823, 39.116016, 11.496650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714142, 39.326229, 11.552067>,  <40.544674, 39.676586, 11.644429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714142, 39.326229, 11.552067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184746, 0.333111, -0.924611,
		0.886777, 0.349071, 0.302946,
		0.423670, -0.875892, -0.230905,
		40.841244, 39.063461, 11.482795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117760, 39.868462, 11.219891>,  <40.544674, 39.676586, 11.644429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117760, 39.868462, 11.219891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075317, 39.479530, 11.136637>,  <41.049854, 39.246170, 11.086684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.075317, 39.479530, 11.136637>,  <41.117760, 39.868462, 11.219891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075317, 39.479530, 11.136637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244774, 0.177334, -0.953225,
		0.963757, -0.152086, 0.219185,
		-0.106103, -0.972328, -0.208134,
		41.043488, 39.187832, 11.074197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656506, 39.601086, 10.759003>,  <41.117760, 39.868462, 11.219891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656506, 39.601086, 10.759003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380436, 39.315804, 10.710021>,  <41.214794, 39.144634, 10.680632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380436, 39.315804, 10.710021>,  <41.656506, 39.601086, 10.759003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380436, 39.315804, 10.710021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095550, 0.077921, -0.992370,
		0.717305, -0.696611, 0.014367,
		-0.690176, -0.713205, -0.122454,
		41.173382, 39.101841, 10.673285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978428, 39.061115, 10.391029>,  <41.656506, 39.601086, 10.759003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978428, 39.061115, 10.391029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583309, 39.019688, 10.344500>,  <41.346237, 38.994831, 10.316582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583309, 39.019688, 10.344500>,  <41.978428, 39.061115, 10.391029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583309, 39.019688, 10.344500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109093, 0.072962, -0.991350,
		0.111169, -0.991942, -0.060772,
		-0.987795, -0.103577, -0.116325,
		41.286972, 38.988617, 10.309602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935268, 38.769161, 9.726738>,  <41.978428, 39.061115, 10.391029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935268, 38.769161, 9.726738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.552536, 38.843319, 9.816271>,  <41.322895, 38.887814, 9.869990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.552536, 38.843319, 9.816271>,  <41.935268, 38.769161, 9.726738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552536, 38.843319, 9.816271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230520, -0.015063, -0.972951,
		-0.177003, -0.982550, 0.057148,
		-0.956834, 0.185389, 0.223831,
		41.265488, 38.898937, 9.883420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380695, 38.210041, 9.580769>,  <41.935268, 38.769161, 9.726738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380695, 38.210041, 9.580769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.261909, 38.588188, 9.526965>,  <41.190639, 38.815075, 9.494683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.261909, 38.588188, 9.526965>,  <41.380695, 38.210041, 9.580769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261909, 38.588188, 9.526965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271372, -0.218608, -0.937320,
		-0.915516, -0.241849, 0.321465,
		-0.296964, 0.945368, -0.134509,
		41.172821, 38.871799, 9.486612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895042, 37.569035, 9.674052>,  <41.380695, 38.210041, 9.580769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895042, 37.569035, 9.674052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545116, 37.475925, 9.844001>,  <40.335159, 37.420059, 9.945970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.545116, 37.475925, 9.844001>,  <40.895042, 37.569035, 9.674052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545116, 37.475925, 9.844001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071432, 0.805442, 0.588354,
		-0.479161, 0.545051, -0.687986,
		-0.874816, -0.232772, 0.424870,
		40.282673, 37.406094, 9.971462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776047, 36.830521, 9.804138>,  <40.895042, 37.569035, 9.674052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776047, 36.830521, 9.804138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829411, 36.464951, 9.650802>,  <40.861427, 36.245609, 9.558800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829411, 36.464951, 9.650802>,  <40.776047, 36.830521, 9.804138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829411, 36.464951, 9.650802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616159, -0.379445, 0.690196,
		-0.776241, 0.144121, -0.613742,
		0.133410, -0.913921, -0.383342,
		40.869434, 36.190773, 9.535799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133446, 36.491432, 9.695711>,  <40.776047, 36.830521, 9.804138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133446, 36.491432, 9.695711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415474, 36.216782, 9.766626>,  <40.584690, 36.051991, 9.809175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415474, 36.216782, 9.766626>,  <40.133446, 36.491432, 9.695711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415474, 36.216782, 9.766626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532999, -0.348203, 0.771146,
		-0.467756, -0.638203, -0.611475,
		0.705065, -0.686624, 0.177288,
		40.626995, 36.010796, 9.819813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777470, 35.968620, 9.834300>,  <40.133446, 36.491432, 9.695711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777470, 35.968620, 9.834300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139099, 35.882519, 9.981984>,  <40.356075, 35.830856, 10.070595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139099, 35.882519, 9.981984>,  <39.777470, 35.968620, 9.834300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139099, 35.882519, 9.981984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406852, -0.168980, 0.897729,
		-0.130842, -0.961829, -0.240343,
		0.904075, -0.215244, 0.369213,
		40.410320, 35.817944, 10.092747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658150, 35.430485, 10.330237>,  <39.777470, 35.968620, 9.834300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658150, 35.430485, 10.330237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017288, 35.572166, 10.434857>,  <40.232773, 35.657177, 10.497629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017288, 35.572166, 10.434857>,  <39.658150, 35.430485, 10.330237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017288, 35.572166, 10.434857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222075, -0.148640, 0.963633,
		0.380200, -0.923279, -0.054795,
		0.897848, 0.354205, 0.261551,
		40.286644, 35.678429, 10.513323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932682, 34.932125, 10.830419>,  <39.658150, 35.430485, 10.330237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932682, 34.932125, 10.830419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098549, 35.291973, 10.885169>,  <40.198067, 35.507881, 10.918019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098549, 35.291973, 10.885169>,  <39.932682, 34.932125, 10.830419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098549, 35.291973, 10.885169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106914, -0.101210, 0.989103,
		0.903672, -0.424780, 0.054214,
		0.414664, 0.899621, 0.136876,
		40.222950, 35.561859, 10.926232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419880, 34.943733, 11.382775>,  <39.932682, 34.932125, 10.830419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419880, 34.943733, 11.382775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346581, 35.336853, 11.373589>,  <40.302601, 35.572723, 11.368076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346581, 35.336853, 11.373589>,  <40.419880, 34.943733, 11.382775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346581, 35.336853, 11.373589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039156, 0.030641, 0.998763,
		0.982286, 0.182127, -0.044098,
		-0.183253, 0.982798, -0.022967,
		40.291603, 35.631691, 11.366698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770603, 35.056129, 11.928209>,  <40.419880, 34.943733, 11.382775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770603, 35.056129, 11.928209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570148, 35.393429, 11.850456>,  <40.449875, 35.595810, 11.803804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570148, 35.393429, 11.850456>,  <40.770603, 35.056129, 11.928209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570148, 35.393429, 11.850456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019222, 0.235415, 0.971705,
		0.865152, 0.483224, -0.134185,
		-0.501141, 0.843252, -0.194382,
		40.419807, 35.646404, 11.792142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174816, 35.573608, 12.211865>,  <40.770603, 35.056129, 11.928209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174816, 35.573608, 12.211865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.804825, 35.723778, 12.188273>,  <40.582832, 35.813881, 12.174118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.804825, 35.723778, 12.188273>,  <41.174816, 35.573608, 12.211865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804825, 35.723778, 12.188273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073800, 0.329690, 0.941200,
		0.372797, 0.866233, -0.332661,
		-0.924974, 0.375427, -0.058980,
		40.527332, 35.836407, 12.170580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243404, 36.215439, 12.517980>,  <41.174816, 35.573608, 12.211865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243404, 36.215439, 12.517980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857559, 36.110603, 12.529518>,  <40.626053, 36.047703, 12.536441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857559, 36.110603, 12.529518>,  <41.243404, 36.215439, 12.517980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857559, 36.110603, 12.529518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044570, 0.269910, 0.961853,
		-0.259874, 0.926531, -0.272040,
		-0.964613, -0.262085, 0.028847,
		40.568176, 36.031979, 12.538172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929512, 36.734665, 12.958478>,  <41.243404, 36.215439, 12.517980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929512, 36.734665, 12.958478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.657433, 36.441456, 12.957982>,  <40.494183, 36.265530, 12.957685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.657433, 36.441456, 12.957982>,  <40.929512, 36.734665, 12.958478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657433, 36.441456, 12.957982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195645, 0.179916, 0.964030,
		-0.706433, 0.655979, -0.265792,
		-0.680203, -0.733023, -0.001240,
		40.453373, 36.221550, 12.957610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316204, 37.010262, 13.197361>,  <40.929512, 36.734665, 12.958478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316204, 37.010262, 13.197361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290115, 36.617657, 13.269333>,  <40.274464, 36.382092, 13.312516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.290115, 36.617657, 13.269333>,  <40.316204, 37.010262, 13.197361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290115, 36.617657, 13.269333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171522, 0.188658, 0.966948,
		-0.983019, 0.032205, -0.180657,
		-0.065223, -0.981515, 0.179931,
		40.270550, 36.323204, 13.323312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711800, 36.865650, 13.537970>,  <40.316204, 37.010262, 13.197361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711800, 36.865650, 13.537970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944626, 36.558876, 13.646052>,  <40.084320, 36.374809, 13.710902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944626, 36.558876, 13.646052>,  <39.711800, 36.865650, 13.537970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944626, 36.558876, 13.646052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279405, 0.123428, 0.952207,
		-0.763635, -0.629740, -0.142444,
		0.582061, -0.766938, 0.270206,
		40.119244, 36.328796, 13.727115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306866, 36.576363, 14.085246>,  <39.711800, 36.865650, 13.537970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306866, 36.576363, 14.085246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673889, 36.421463, 14.121294>,  <39.894104, 36.328522, 14.142922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673889, 36.421463, 14.121294>,  <39.306866, 36.576363, 14.085246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673889, 36.421463, 14.121294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068668, 0.068910, 0.995257,
		-0.391625, -0.919395, 0.036637,
		0.917559, -0.387251, 0.090120,
		39.949158, 36.305286, 14.148330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257072, 36.330273, 14.677042>,  <39.306866, 36.576363, 14.085246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257072, 36.330273, 14.677042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649803, 36.322041, 14.601581>,  <39.885441, 36.317101, 14.556304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649803, 36.322041, 14.601581>,  <39.257072, 36.330273, 14.677042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649803, 36.322041, 14.601581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189316, 0.037311, 0.981207,
		-0.013162, -0.999092, 0.040530,
		0.981828, -0.020587, -0.188653,
		39.944351, 36.315865, 14.544985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386246, 35.783630, 15.079710>,  <39.257072, 36.330273, 14.677042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386246, 35.783630, 15.079710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735340, 35.973339, 15.033415>,  <39.944798, 36.087166, 15.005638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735340, 35.973339, 15.033415>,  <39.386246, 35.783630, 15.079710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735340, 35.973339, 15.033415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223005, -0.176406, 0.958723,
		0.434282, -0.862522, -0.259722,
		0.872736, 0.474275, -0.115737,
		39.997162, 36.115620, 14.998693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964893, 35.343121, 15.364161>,  <39.386246, 35.783630, 15.079710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964893, 35.343121, 15.364161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082638, 35.724728, 15.341550>,  <40.153282, 35.953693, 15.327983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082638, 35.724728, 15.341550>,  <39.964893, 35.343121, 15.364161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082638, 35.724728, 15.341550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398947, -0.068913, 0.914381,
		0.868444, -0.291708, -0.400889,
		0.294358, 0.954022, -0.056529,
		40.170944, 36.010933, 15.324591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602081, 35.479839, 15.693368>,  <39.964893, 35.343121, 15.364161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602081, 35.479839, 15.693368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447887, 35.848919, 15.695425>,  <40.355370, 36.070366, 15.696659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447887, 35.848919, 15.695425>,  <40.602081, 35.479839, 15.693368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447887, 35.848919, 15.695425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114487, 0.042299, 0.992524,
		0.915583, 0.383193, -0.121942,
		-0.385487, 0.922699, 0.005142,
		40.332241, 36.125729, 15.696968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163433, 35.835255, 16.078659>,  <40.602081, 35.479839, 15.693368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163433, 35.835255, 16.078659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856972, 36.091347, 16.100975>,  <40.673096, 36.245003, 16.114365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856972, 36.091347, 16.100975>,  <41.163433, 35.835255, 16.078659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856972, 36.091347, 16.100975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099872, 0.032854, 0.994458,
		0.634853, 0.767477, -0.089113,
		-0.766151, 0.640234, 0.055792,
		40.627125, 36.283417, 16.117712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336575, 36.076782, 16.714548>,  <41.163433, 35.835255, 16.078659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336575, 36.076782, 16.714548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956528, 36.175419, 16.638153>,  <40.728500, 36.234600, 16.592316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.956528, 36.175419, 16.638153>,  <41.336575, 36.076782, 16.714548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956528, 36.175419, 16.638153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158897, 0.144246, 0.976701,
		0.268395, 0.958325, -0.097867,
		-0.950114, 0.246591, -0.190990,
		40.671494, 36.249397, 16.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246998, 36.730762, 17.060221>,  <41.336575, 36.076782, 16.714548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246998, 36.730762, 17.060221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885872, 36.565338, 17.013067>,  <40.669197, 36.466084, 16.984776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885872, 36.565338, 17.013067>,  <41.246998, 36.730762, 17.060221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885872, 36.565338, 17.013067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129960, 0.001081, 0.991519,
		-0.409930, 0.910474, -0.054723,
		-0.902811, -0.413565, -0.117883,
		40.615028, 36.441269, 16.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.901215, 40.446545, 20.642975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746452, 40.077995, 20.657784>,  <38.653595, 39.856865, 20.666668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746452, 40.077995, 20.657784>,  <38.901215, 40.446545, 20.642975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746452, 40.077995, 20.657784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581824, 0.275071, 0.765387,
		-0.715393, 0.274591, -0.642505,
		-0.386903, -0.921377, 0.037020,
		38.630383, 39.801582, 20.668890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334629, 40.603230, 20.827522>,  <38.901215, 40.446545, 20.642975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334629, 40.603230, 20.827522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316799, 40.207130, 20.880325>,  <38.306103, 39.969471, 20.912006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316799, 40.207130, 20.880325>,  <38.334629, 40.603230, 20.827522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316799, 40.207130, 20.880325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577032, 0.133385, 0.805756,
		-0.815505, -0.040259, -0.577349,
		-0.044571, -0.990247, 0.132006,
		38.303429, 39.910057, 20.919928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566490, 40.344517, 20.855715>,  <38.334629, 40.603230, 20.827522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566490, 40.344517, 20.855715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762096, 40.047241, 21.038382>,  <37.879459, 39.868877, 21.147982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.762096, 40.047241, 21.038382>,  <37.566490, 40.344517, 20.855715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762096, 40.047241, 21.038382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402471, 0.272234, 0.874017,
		-0.773876, -0.611199, -0.165985,
		0.489011, -0.743185, 0.456665,
		37.908798, 39.824287, 21.175381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109146, 39.945747, 21.260471>,  <37.566490, 40.344517, 20.855715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109146, 39.945747, 21.260471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460609, 39.847340, 21.424143>,  <37.671490, 39.788296, 21.522346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460609, 39.847340, 21.424143>,  <37.109146, 39.945747, 21.260471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460609, 39.847340, 21.424143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362429, 0.214206, 0.907062,
		-0.310805, -0.945299, 0.099050,
		0.878662, -0.246021, 0.409180,
		37.724209, 39.773533, 21.546896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889252, 39.531391, 21.816872>,  <37.109146, 39.945747, 21.260471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889252, 39.531391, 21.816872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249950, 39.690266, 21.885101>,  <37.466370, 39.785591, 21.926039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249950, 39.690266, 21.885101>,  <36.889252, 39.531391, 21.816872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249950, 39.690266, 21.885101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315808, 0.335894, 0.887379,
		0.295163, -0.854058, 0.428326,
		0.901745, 0.397190, 0.170575,
		37.520473, 39.809422, 21.936274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157688, 39.281582, 22.495962>,  <36.889252, 39.531391, 21.816872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157688, 39.281582, 22.495962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.359917, 39.620869, 22.432821>,  <37.481255, 39.824440, 22.394938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.359917, 39.620869, 22.432821>,  <37.157688, 39.281582, 22.495962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359917, 39.620869, 22.432821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247801, 0.318003, 0.915133,
		0.826431, -0.423553, 0.370964,
		0.505575, 0.848220, -0.157851,
		37.511589, 39.875336, 22.385466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468708, 39.431458, 23.067324>,  <37.157688, 39.281582, 22.495962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468708, 39.431458, 23.067324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500084, 39.791695, 22.896315>,  <37.518909, 40.007835, 22.793709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.500084, 39.791695, 22.896315>,  <37.468708, 39.431458, 23.067324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500084, 39.791695, 22.896315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125005, 0.434347, 0.892029,
		0.989050, -0.016531, 0.146651,
		0.078443, 0.900594, -0.427524,
		37.523617, 40.061874, 22.768057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915768, 39.780594, 23.572727>,  <37.468708, 39.431458, 23.067324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915768, 39.780594, 23.572727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.739296, 40.063206, 23.351393>,  <37.633415, 40.232773, 23.218592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.739296, 40.063206, 23.351393>,  <37.915768, 39.780594, 23.572727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739296, 40.063206, 23.351393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077184, 0.584427, 0.807767,
		0.894095, 0.399076, -0.203302,
		-0.441176, 0.706529, -0.553336,
		37.606945, 40.275166, 23.185392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196075, 40.423298, 23.823536>,  <37.915768, 39.780594, 23.572727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196075, 40.423298, 23.823536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830463, 40.460445, 23.665583>,  <37.611095, 40.482735, 23.570810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830463, 40.460445, 23.665583>,  <38.196075, 40.423298, 23.823536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830463, 40.460445, 23.665583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316640, 0.445142, 0.837608,
		0.253568, 0.890631, -0.377464,
		-0.914025, 0.092870, -0.394883,
		37.556255, 40.488308, 23.547117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007004, 41.075127, 23.949503>,  <38.196075, 40.423298, 23.823536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007004, 41.075127, 23.949503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652496, 40.913330, 23.859247>,  <37.439793, 40.816254, 23.805094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.652496, 40.913330, 23.859247>,  <38.007004, 41.075127, 23.949503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652496, 40.913330, 23.859247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420522, 0.498542, 0.758035,
		-0.194126, 0.766710, -0.611940,
		-0.886271, -0.404488, -0.225639,
		37.386616, 40.791985, 23.791555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527870, 41.614208, 24.027979>,  <38.007004, 41.075127, 23.949503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527870, 41.614208, 24.027979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299625, 41.288731, 24.072334>,  <37.162678, 41.093445, 24.098948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299625, 41.288731, 24.072334>,  <37.527870, 41.614208, 24.027979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299625, 41.288731, 24.072334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478791, 0.439341, 0.760091,
		-0.667201, 0.380628, -0.640285,
		-0.570615, -0.813696, 0.110888,
		37.128441, 41.044621, 24.105600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778652, 41.817482, 24.098583>,  <37.527870, 41.614208, 24.027979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778652, 41.817482, 24.098583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823364, 41.456879, 24.265812>,  <36.850189, 41.240517, 24.366150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823364, 41.456879, 24.265812>,  <36.778652, 41.817482, 24.098583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823364, 41.456879, 24.265812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661417, 0.246490, 0.708358,
		-0.741643, -0.355696, -0.568723,
		0.111776, -0.901511, 0.418071,
		36.856895, 41.186424, 24.391233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184048, 41.676533, 24.428961>,  <36.778652, 41.817482, 24.098583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184048, 41.676533, 24.428961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405502, 41.413647, 24.633535>,  <36.538376, 41.255917, 24.756279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405502, 41.413647, 24.633535>,  <36.184048, 41.676533, 24.428961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405502, 41.413647, 24.633535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419085, 0.310826, 0.853086,
		-0.719625, -0.686630, -0.103344,
		0.553632, -0.657211, 0.511434,
		36.571590, 41.216484, 24.786966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486935, 41.948750, 25.012392>,  <36.184048, 41.676533, 24.428961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486935, 41.948750, 25.012392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.171303, 41.944817, 25.258080>,  <35.981926, 41.942459, 25.405491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.171303, 41.944817, 25.258080>,  <36.486935, 41.948750, 25.012392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171303, 41.944817, 25.258080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537846, 0.494121, -0.683056,
		-0.296785, -0.869337, -0.395185,
		-0.789075, -0.009828, 0.614218,
		35.934582, 41.941868, 25.442345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989338, 42.535072, 25.331467>,  <36.486935, 41.948750, 25.012392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989338, 42.535072, 25.331467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624542, 42.694427, 25.370586>,  <35.405666, 42.790039, 25.394058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624542, 42.694427, 25.370586>,  <35.989338, 42.535072, 25.331467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624542, 42.694427, 25.370586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024990, 0.291928, -0.956114,
		-0.409452, -0.869522, -0.276190,
		-0.911990, 0.398385, 0.097801,
		35.350945, 42.813942, 25.399927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613705, 42.184292, 24.898575>,  <35.989338, 42.535072, 25.331467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613705, 42.184292, 24.898575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413216, 42.527691, 24.941933>,  <35.292923, 42.733730, 24.967947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413216, 42.527691, 24.941933>,  <35.613705, 42.184292, 24.898575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413216, 42.527691, 24.941933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025365, 0.110633, -0.993538,
		-0.864944, -0.500737, -0.033677,
		-0.501227, 0.858500, 0.108393,
		35.262848, 42.785240, 24.974451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245777, 42.229652, 24.312057>,  <35.613705, 42.184292, 24.898575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245777, 42.229652, 24.312057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.212357, 42.606842, 24.440943>,  <35.192303, 42.833157, 24.518274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.212357, 42.606842, 24.440943>,  <35.245777, 42.229652, 24.312057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212357, 42.606842, 24.440943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273090, 0.289298, -0.917457,
		-0.958353, -0.164648, 0.233346,
		-0.083551, 0.942973, 0.322214,
		35.187290, 42.889732, 24.537607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724483, 42.458813, 23.953148>,  <35.245777, 42.229652, 24.312057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724483, 42.458813, 23.953148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887821, 42.808029, 24.059780>,  <34.985825, 43.017559, 24.123760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887821, 42.808029, 24.059780>,  <34.724483, 42.458813, 23.953148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887821, 42.808029, 24.059780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256825, 0.390120, -0.884221,
		-0.875956, 0.292598, 0.383520,
		0.408340, 0.873037, 0.266582,
		35.010323, 43.069939, 24.139755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262695, 42.906391, 23.877989>,  <34.724483, 42.458813, 23.953148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262695, 42.906391, 23.877989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.608986, 43.105015, 23.852861>,  <34.816761, 43.224190, 23.837786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.608986, 43.105015, 23.852861>,  <34.262695, 42.906391, 23.877989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608986, 43.105015, 23.852861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174099, 0.181086, -0.967935,
		-0.469257, 0.848906, 0.243221,
		0.865729, 0.496555, -0.062817,
		34.868706, 43.253983, 23.834017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114872, 43.497578, 23.391422>,  <34.262695, 42.906391, 23.877989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114872, 43.497578, 23.391422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.507732, 43.422970, 23.401192>,  <34.743446, 43.378204, 23.407053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.507732, 43.422970, 23.401192>,  <34.114872, 43.497578, 23.391422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507732, 43.422970, 23.401192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023356, -0.007917, -0.999696,
		0.186659, 0.982419, -0.003419,
		0.982147, -0.186523, 0.024424,
		34.802376, 43.367012, 23.408518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362537, 43.750534, 22.745707>,  <34.114872, 43.497578, 23.391422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362537, 43.750534, 22.745707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.689930, 43.548229, 22.854729>,  <34.886368, 43.426846, 22.920141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.689930, 43.548229, 22.854729>,  <34.362537, 43.750534, 22.745707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689930, 43.548229, 22.854729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216175, -0.168426, -0.961718,
		0.532310, 0.846069, -0.028520,
		0.818483, -0.505766, 0.272553,
		34.935474, 43.396500, 22.936495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962486, 44.082432, 22.414888>,  <34.362537, 43.750534, 22.745707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962486, 44.082432, 22.414888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008026, 43.690945, 22.483171>,  <35.035351, 43.456051, 22.524141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008026, 43.690945, 22.483171>,  <34.962486, 44.082432, 22.414888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008026, 43.690945, 22.483171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258056, -0.136796, -0.956396,
		0.959398, 0.152941, 0.236991,
		0.113853, -0.978722, 0.170710,
		35.042183, 43.397327, 22.534384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590816, 43.930302, 22.053926>,  <34.962486, 44.082432, 22.414888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590816, 43.930302, 22.053926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434128, 43.567539, 22.116001>,  <35.340115, 43.349884, 22.153246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434128, 43.567539, 22.116001>,  <35.590816, 43.930302, 22.053926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434128, 43.567539, 22.116001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355526, -0.304760, -0.883585,
		0.848620, -0.290945, 0.441808,
		-0.391720, -0.906903, 0.155187,
		35.316612, 43.295467, 22.162558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017967, 43.497154, 21.670343>,  <35.590816, 43.930302, 22.053926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017967, 43.497154, 21.670343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705593, 43.247913, 21.687737>,  <35.518169, 43.098370, 21.698172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.705593, 43.247913, 21.687737>,  <36.017967, 43.497154, 21.670343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705593, 43.247913, 21.687737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222143, -0.342127, -0.913018,
		0.583777, -0.703347, 0.405596,
		-0.780933, -0.623099, 0.043483,
		35.471313, 43.060986, 21.700781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282726, 42.892990, 21.478113>,  <36.017967, 43.497154, 21.670343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282726, 42.892990, 21.478113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.889515, 42.843105, 21.424299>,  <35.653587, 42.813175, 21.392010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.889515, 42.843105, 21.424299>,  <36.282726, 42.892990, 21.478113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889515, 42.843105, 21.424299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175801, -0.430866, -0.885126,
		0.052420, -0.893757, 0.445478,
		-0.983029, -0.124714, -0.134537,
		35.594604, 42.805691, 21.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114658, 42.176952, 21.348774>,  <36.282726, 42.892990, 21.478113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114658, 42.176952, 21.348774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.806446, 42.381977, 21.197220>,  <35.621517, 42.504993, 21.106287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.806446, 42.381977, 21.197220>,  <36.114658, 42.176952, 21.348774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806446, 42.381977, 21.197220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064699, -0.528462, -0.846488,
		-0.634107, -0.676762, 0.374036,
		-0.770534, 0.512564, -0.378888,
		35.575287, 42.535748, 21.083553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578529, 41.673782, 21.205511>,  <36.114658, 42.176952, 21.348774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578529, 41.673782, 21.205511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525295, 42.004936, 20.987560>,  <35.493355, 42.203629, 20.856789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525295, 42.004936, 20.987560>,  <35.578529, 41.673782, 21.205511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525295, 42.004936, 20.987560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089642, -0.557570, -0.825276,
		-0.987043, -0.060985, 0.148416,
		-0.133082, 0.827887, -0.544878,
		35.485371, 42.253304, 20.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225788, 41.422501, 20.654057>,  <35.578529, 41.673782, 21.205511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225788, 41.422501, 20.654057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.350052, 41.776127, 20.514389>,  <35.424610, 41.988304, 20.430590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.350052, 41.776127, 20.514389>,  <35.225788, 41.422501, 20.654057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350052, 41.776127, 20.514389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135412, -0.322434, -0.936856,
		-0.940827, 0.338323, 0.019547,
		0.310657, 0.884067, -0.349167,
		35.443249, 42.041348, 20.409639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450420, 41.426243, 20.814650>,  <35.225788, 41.422501, 20.654057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450420, 41.426243, 20.814650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.083855, 41.272331, 20.770599>,  <33.863914, 41.179985, 20.744169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.083855, 41.272331, 20.770599>,  <34.450420, 41.426243, 20.814650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083855, 41.272331, 20.770599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183355, 0.159039, 0.970097,
		-0.355761, 0.909203, -0.216298,
		-0.916414, -0.384781, -0.110127,
		33.808929, 41.156898, 20.737562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056103, 41.845924, 21.294195>,  <34.450420, 41.426243, 20.814650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056103, 41.845924, 21.294195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.879765, 41.491016, 21.239922>,  <33.773964, 41.278072, 21.207357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.879765, 41.491016, 21.239922>,  <34.056103, 41.845924, 21.294195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879765, 41.491016, 21.239922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229993, -0.034460, 0.972582,
		-0.867618, 0.459962, -0.188874,
		-0.440842, -0.887270, -0.135686,
		33.747513, 41.224834, 21.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361923, 41.885059, 21.651815>,  <34.056103, 41.845924, 21.294195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361923, 41.885059, 21.651815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.432949, 41.493340, 21.612957>,  <33.475563, 41.258308, 21.589642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.432949, 41.493340, 21.612957>,  <33.361923, 41.885059, 21.651815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432949, 41.493340, 21.612957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256392, -0.141343, 0.956183,
		-0.950123, -0.144876, -0.276183,
		0.177564, -0.979302, -0.097148,
		33.486217, 41.199551, 21.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018589, 41.648071, 22.102299>,  <33.361923, 41.885059, 21.651815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018589, 41.648071, 22.102299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236561, 41.322052, 22.023560>,  <33.367344, 41.126442, 21.976316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236561, 41.322052, 22.023560>,  <33.018589, 41.648071, 22.102299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236561, 41.322052, 22.023560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016610, -0.224230, 0.974395,
		-0.838317, -0.534246, -0.108652,
		0.544930, -0.815048, -0.196849,
		33.400040, 41.077538, 21.964504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691910, 40.996223, 22.311544>,  <33.018589, 41.648071, 22.102299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691910, 40.996223, 22.311544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 40.944077, 22.310987>,  <33.326450, 40.912788, 22.310654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088497, 40.944077, 22.310987>,  <32.691910, 40.996223, 22.311544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088497, 40.944077, 22.310987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009807, -0.085244, 0.996312,
		-0.130016, -0.987793, -0.085795,
		0.991464, -0.130378, -0.001395,
		33.385937, 40.904964, 22.310570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715302, 40.443718, 22.806843>,  <32.691910, 40.996223, 22.311544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715302, 40.443718, 22.806843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088585, 40.580410, 22.762405>,  <33.312553, 40.662426, 22.735743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088585, 40.580410, 22.762405>,  <32.715302, 40.443718, 22.806843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088585, 40.580410, 22.762405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152772, -0.097486, 0.983441,
		0.325245, -0.934727, -0.143182,
		0.933207, 0.341734, -0.111094,
		33.368546, 40.682930, 22.729076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148899, 39.984600, 23.128412>,  <32.715302, 40.443718, 22.806843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148899, 39.984600, 23.128412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341278, 40.334290, 23.101830>,  <33.456707, 40.544106, 23.085880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341278, 40.334290, 23.101830>,  <33.148899, 39.984600, 23.128412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341278, 40.334290, 23.101830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205210, -0.038552, 0.977958,
		0.852395, -0.483985, -0.197941,
		0.480948, 0.874227, -0.066457,
		33.485561, 40.596558, 23.081892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827629, 39.818253, 23.423067>,  <33.148899, 39.984600, 23.128412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827629, 39.818253, 23.423067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.760139, 40.210552, 23.462370>,  <33.719646, 40.445934, 23.485950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.760139, 40.210552, 23.462370>,  <33.827629, 39.818253, 23.423067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760139, 40.210552, 23.462370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437250, -0.014863, 0.899217,
		0.883370, 0.194685, -0.426327,
		-0.168728, 0.980753, 0.098256,
		33.709522, 40.504780, 23.491846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313442, 40.034836, 23.798836>,  <33.827629, 39.818253, 23.423067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313442, 40.034836, 23.798836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050571, 40.332039, 23.849518>,  <33.892849, 40.510361, 23.879927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050571, 40.332039, 23.849518>,  <34.313442, 40.034836, 23.798836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050571, 40.332039, 23.849518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349374, 0.151333, 0.924682,
		0.667870, 0.651950, -0.359041,
		-0.657181, 0.743007, 0.126704,
		33.853416, 40.554939, 23.887529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684391, 40.619244, 24.123861>,  <34.313442, 40.034836, 23.798836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684391, 40.619244, 24.123861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311913, 40.721497, 24.227812>,  <34.088425, 40.782848, 24.290182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311913, 40.721497, 24.227812>,  <34.684391, 40.619244, 24.123861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311913, 40.721497, 24.227812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334044, 0.312991, 0.889073,
		0.145935, 0.914708, -0.376846,
		-0.931192, 0.255630, 0.259876,
		34.032555, 40.798187, 24.305775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654102, 41.259731, 24.552814>,  <34.684391, 40.619244, 24.123861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654102, 41.259731, 24.552814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289696, 41.111115, 24.624374>,  <34.071053, 41.021942, 24.667311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.289696, 41.111115, 24.624374>,  <34.654102, 41.259731, 24.552814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289696, 41.111115, 24.624374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099288, 0.223433, 0.969649,
		-0.400240, 0.901128, -0.166661,
		-0.911016, -0.371545, 0.178898,
		34.016392, 40.999649, 24.678043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412891, 41.600914, 25.159723>,  <34.654102, 41.259731, 24.552814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412891, 41.600914, 25.159723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147827, 41.301399, 25.154198>,  <33.988789, 41.121689, 25.150883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147827, 41.301399, 25.154198>,  <34.412891, 41.600914, 25.159723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147827, 41.301399, 25.154198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040049, 0.017012, 0.999053,
		-0.747846, 0.662589, -0.041262,
		-0.662663, -0.748790, -0.013814,
		33.949028, 41.076763, 25.150053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.045986, 41.459671, 17.195215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943638, 41.073025, 17.189886>,  <33.882229, 40.841038, 17.186689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943638, 41.073025, 17.189886>,  <34.045986, 41.459671, 17.195215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943638, 41.073025, 17.189886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579604, 0.142368, 0.802366,
		-0.773685, 0.213028, -0.596684,
		-0.255875, -0.966618, -0.013324,
		33.866875, 40.783039, 17.185888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380775, 41.458736, 17.302084>,  <34.045986, 41.459671, 17.195215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380775, 41.458736, 17.302084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541687, 41.123432, 17.449316>,  <33.638233, 40.922249, 17.537655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541687, 41.123432, 17.449316>,  <33.380775, 41.458736, 17.302084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541687, 41.123432, 17.449316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401980, 0.199494, 0.893652,
		-0.822546, -0.507460, -0.256713,
		0.402280, -0.838264, 0.368082,
		33.662373, 40.871952, 17.559740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897758, 41.319099, 17.861109>,  <33.380775, 41.458736, 17.302084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897758, 41.319099, 17.861109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206097, 41.067646, 17.902332>,  <33.391098, 40.916775, 17.927067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206097, 41.067646, 17.902332>,  <32.897758, 41.319099, 17.861109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206097, 41.067646, 17.902332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057165, 0.092870, 0.994036,
		-0.634458, -0.772135, 0.035652,
		0.770841, -0.628635, 0.103061,
		33.437347, 40.879055, 17.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517006, 40.855247, 18.240486>,  <32.897758, 41.319099, 17.861109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517006, 40.855247, 18.240486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914280, 40.854916, 18.287109>,  <33.152645, 40.854717, 18.315084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914280, 40.854916, 18.287109>,  <32.517006, 40.855247, 18.240486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914280, 40.854916, 18.287109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116383, 0.048437, 0.992023,
		-0.006468, -0.998826, 0.048010,
		0.993183, -0.000829, 0.116560,
		33.212234, 40.854668, 18.322077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585278, 40.407696, 18.694435>,  <32.517006, 40.855247, 18.240486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585278, 40.407696, 18.694435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937599, 40.594227, 18.727207>,  <33.148994, 40.706146, 18.746870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937599, 40.594227, 18.727207>,  <32.585278, 40.407696, 18.694435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937599, 40.594227, 18.727207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083136, -0.018022, 0.996375,
		0.466117, -0.884427, 0.022895,
		0.880808, 0.466331, 0.081928,
		33.201843, 40.734127, 18.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062630, 40.054176, 19.223299>,  <32.585278, 40.407696, 18.694435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062630, 40.054176, 19.223299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185726, 40.432552, 19.182320>,  <33.259583, 40.659576, 19.157732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185726, 40.432552, 19.182320>,  <33.062630, 40.054176, 19.223299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185726, 40.432552, 19.182320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066450, 0.086042, 0.994073,
		0.949147, -0.312724, -0.036379,
		0.307740, 0.945939, -0.102447,
		33.278049, 40.716335, 19.151585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607151, 40.041439, 19.654541>,  <33.062630, 40.054176, 19.223299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607151, 40.041439, 19.654541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534492, 40.430077, 19.593872>,  <33.490898, 40.663261, 19.557470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534492, 40.430077, 19.593872>,  <33.607151, 40.041439, 19.654541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534492, 40.430077, 19.593872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202223, 0.187850, 0.961154,
		0.962345, 0.143923, -0.230602,
		-0.181651, 0.971596, -0.151672,
		33.479996, 40.721554, 19.548370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249523, 40.355942, 19.738173>,  <33.607151, 40.041439, 19.654541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249523, 40.355942, 19.738173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951920, 40.615299, 19.802729>,  <33.773357, 40.770912, 19.841463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951920, 40.615299, 19.802729>,  <34.249523, 40.355942, 19.738173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951920, 40.615299, 19.802729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335964, 0.154229, 0.929162,
		0.577568, 0.745522, -0.332583,
		-0.744005, 0.648390, 0.161391,
		33.728718, 40.809814, 19.851147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501602, 40.860985, 20.111393>,  <34.249523, 40.355942, 19.738173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501602, 40.860985, 20.111393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109291, 40.911770, 20.170675>,  <33.873905, 40.942242, 20.206245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109291, 40.911770, 20.170675>,  <34.501602, 40.860985, 20.111393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109291, 40.911770, 20.170675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175962, 0.246928, 0.952924,
		0.084386, 0.960681, -0.264520,
		-0.980773, 0.126959, 0.148206,
		33.815060, 40.949856, 20.215137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726887, 41.649117, 20.076675>,  <34.501602, 40.860985, 20.111393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726887, 41.649117, 20.076675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053936, 41.873260, 20.023783>,  <35.250164, 42.007748, 19.992046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053936, 41.873260, 20.023783>,  <34.726887, 41.649117, 20.076675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053936, 41.873260, 20.023783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037317, -0.177610, -0.983393,
		-0.574543, 0.808979, -0.124307,
		0.817623, 0.560363, -0.132233,
		35.299221, 42.041370, 19.984114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617249, 42.041904, 19.482412>,  <34.726887, 41.649117, 20.076675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617249, 42.041904, 19.482412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016087, 42.048428, 19.512161>,  <35.255390, 42.052341, 19.530010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016087, 42.048428, 19.512161>,  <34.617249, 42.041904, 19.482412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016087, 42.048428, 19.512161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075050, -0.374971, -0.923994,
		0.012821, 0.926894, -0.375106,
		0.997097, 0.016305, 0.074370,
		35.315216, 42.053318, 19.534472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887012, 42.291893, 18.897800>,  <34.617249, 42.041904, 19.482412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887012, 42.291893, 18.897800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233868, 42.123402, 19.004110>,  <35.441982, 42.022305, 19.067896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233868, 42.123402, 19.004110>,  <34.887012, 42.291893, 18.897800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233868, 42.123402, 19.004110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267710, -0.055792, -0.961883,
		0.420005, 0.905235, 0.064389,
		0.867137, -0.421233, 0.265773,
		35.494007, 41.997032, 19.083843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350750, 42.517097, 18.272678>,  <34.887012, 42.291893, 18.897800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350750, 42.517097, 18.272678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547615, 42.248623, 18.494411>,  <35.665733, 42.087536, 18.627451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547615, 42.248623, 18.494411>,  <35.350750, 42.517097, 18.272678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547615, 42.248623, 18.494411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567973, -0.234981, -0.788790,
		0.659685, 0.703057, 0.265569,
		0.492160, -0.671189, 0.554331,
		35.695263, 42.047268, 18.660711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081947, 42.751015, 18.330591>,  <35.350750, 42.517097, 18.272678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081947, 42.751015, 18.330591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039795, 42.355141, 18.369425>,  <36.014503, 42.117619, 18.392725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039795, 42.355141, 18.369425>,  <36.081947, 42.751015, 18.330591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039795, 42.355141, 18.369425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730547, -0.143282, -0.667661,
		0.674682, 0.000570, 0.738108,
		-0.105377, -0.989682, 0.097086,
		36.008183, 42.058235, 18.398550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745754, 42.486828, 18.448622>,  <36.081947, 42.751015, 18.330591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745754, 42.486828, 18.448622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527527, 42.180763, 18.311867>,  <36.396591, 41.997124, 18.229815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527527, 42.180763, 18.311867>,  <36.745754, 42.486828, 18.448622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527527, 42.180763, 18.311867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700133, -0.191904, -0.687741,
		0.460624, -0.614573, 0.640411,
		-0.545564, -0.765162, -0.341887,
		36.363857, 41.951214, 18.209301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279034, 41.983112, 18.260096>,  <36.745754, 42.486828, 18.448622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279034, 41.983112, 18.260096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939087, 41.868553, 18.083141>,  <36.735119, 41.799816, 17.976969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939087, 41.868553, 18.083141>,  <37.279034, 41.983112, 18.260096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939087, 41.868553, 18.083141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518112, -0.300536, -0.800773,
		0.096390, -0.909754, 0.403803,
		-0.849864, -0.286402, -0.442385,
		36.684128, 41.782631, 17.950426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399464, 41.271576, 17.987133>,  <37.279034, 41.983112, 18.260096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399464, 41.271576, 17.987133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081959, 41.399605, 17.780251>,  <36.891457, 41.476421, 17.656122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081959, 41.399605, 17.780251>,  <37.399464, 41.271576, 17.987133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081959, 41.399605, 17.780251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384549, -0.394732, -0.834451,
		-0.471244, -0.861243, 0.190238,
		-0.793758, 0.320074, -0.517205,
		36.843830, 41.495628, 17.625090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186394, 40.595253, 17.484844>,  <37.399464, 41.271576, 17.987133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186394, 40.595253, 17.484844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015137, 40.932484, 17.354671>,  <36.912380, 41.134823, 17.276567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015137, 40.932484, 17.354671>,  <37.186394, 40.595253, 17.484844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015137, 40.932484, 17.354671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195637, -0.265099, -0.944166,
		-0.882279, -0.467908, -0.051437,
		-0.428146, 0.843081, -0.325431,
		36.886692, 41.185410, 17.257042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769516, 40.374470, 16.964754>,  <37.186394, 40.595253, 17.484844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769516, 40.374470, 16.964754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828587, 40.759800, 16.875141>,  <36.864029, 40.990997, 16.821373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828587, 40.759800, 16.875141>,  <36.769516, 40.374470, 16.964754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828587, 40.759800, 16.875141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131465, -0.243625, -0.960918,
		-0.980260, 0.112451, -0.162621,
		0.147675, 0.963328, -0.224033,
		36.872890, 41.048798, 16.807932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251423, 40.511112, 16.456121>,  <36.769516, 40.374470, 16.964754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251423, 40.511112, 16.456121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546158, 40.781433, 16.448500>,  <36.723000, 40.943626, 16.443926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546158, 40.781433, 16.448500>,  <36.251423, 40.511112, 16.456121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546158, 40.781433, 16.448500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268867, -0.318777, -0.908896,
		-0.620306, 0.664586, -0.416587,
		0.736838, 0.675800, -0.019054,
		36.767208, 40.984173, 16.442783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277668, 40.845169, 15.800217>,  <36.251423, 40.511112, 16.456121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277668, 40.845169, 15.800217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640560, 40.933891, 15.943176>,  <36.858295, 40.987125, 16.028952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640560, 40.933891, 15.943176>,  <36.277668, 40.845169, 15.800217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640560, 40.933891, 15.943176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381480, -0.075899, -0.921256,
		-0.177216, 0.972132, -0.153473,
		0.907231, 0.221808, 0.357398,
		36.912731, 41.000435, 16.050396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533627, 41.378548, 15.389760>,  <36.277668, 40.845169, 15.800217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533627, 41.378548, 15.389760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857235, 41.214275, 15.557966>,  <37.051399, 41.115711, 15.658890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857235, 41.214275, 15.557966>,  <36.533627, 41.378548, 15.389760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857235, 41.214275, 15.557966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447388, -0.033778, -0.893702,
		0.381228, 0.911154, 0.156405,
		0.809017, -0.410678, 0.420516,
		37.099941, 41.091072, 15.684121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043655, 41.811256, 15.218869>,  <36.533627, 41.378548, 15.389760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043655, 41.811256, 15.218869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264996, 41.494724, 15.322867>,  <37.397800, 41.304806, 15.385266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264996, 41.494724, 15.322867>,  <37.043655, 41.811256, 15.218869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264996, 41.494724, 15.322867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536464, 0.099800, -0.838001,
		0.637191, 0.603185, 0.479746,
		0.553348, -0.791333, 0.259995,
		37.431000, 41.257324, 15.400867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.816578, 33.229881, 15.790163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800610, 33.629498, 15.783006>,  <37.791027, 33.869267, 15.778711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800610, 33.629498, 15.783006>,  <37.816578, 33.229881, 15.790163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800610, 33.629498, 15.783006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316666, 0.004334, 0.948527,
		0.947697, 0.043536, 0.316190,
		-0.039925, 0.999043, -0.017894,
		37.788631, 33.929211, 15.777637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188202, 33.380085, 16.305300>,  <37.816578, 33.229881, 15.790163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188202, 33.380085, 16.305300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944405, 33.687916, 16.229128>,  <37.798126, 33.872616, 16.183426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944405, 33.687916, 16.229128>,  <38.188202, 33.380085, 16.305300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944405, 33.687916, 16.229128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209062, 0.075677, 0.974970,
		0.764727, 0.634051, 0.114765,
		-0.609496, 0.769579, -0.190428,
		37.761555, 33.918789, 16.171999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451225, 33.914165, 16.833487>,  <38.188202, 33.380085, 16.305300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451225, 33.914165, 16.833487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112213, 34.070290, 16.689625>,  <37.908806, 34.163963, 16.603308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112213, 34.070290, 16.689625>,  <38.451225, 33.914165, 16.833487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112213, 34.070290, 16.689625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228264, 0.343706, 0.910913,
		0.479153, 0.854122, -0.202207,
		-0.847531, 0.390310, -0.359653,
		37.857952, 34.187382, 16.581728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503475, 34.630203, 17.014130>,  <38.451225, 33.914165, 16.833487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503475, 34.630203, 17.014130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118530, 34.532116, 16.967276>,  <37.887562, 34.473263, 16.939163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118530, 34.532116, 16.967276>,  <38.503475, 34.630203, 17.014130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118530, 34.532116, 16.967276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163589, 0.178544, 0.970237,
		-0.217005, 0.952885, -0.211940,
		-0.962366, -0.245218, -0.117136,
		37.829819, 34.458549, 16.932135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049149, 35.116043, 17.196177>,  <38.503475, 34.630203, 17.014130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049149, 35.116043, 17.196177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751007, 34.849846, 17.180336>,  <37.572121, 34.690128, 17.170832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.751007, 34.849846, 17.180336>,  <38.049149, 35.116043, 17.196177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751007, 34.849846, 17.180336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419644, 0.422190, 0.803527,
		-0.518019, 0.615532, -0.593951,
		-0.745356, -0.665489, -0.039602,
		37.527401, 34.650200, 17.168455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467121, 35.497234, 17.355661>,  <38.049149, 35.116043, 17.196177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467121, 35.497234, 17.355661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359753, 35.119320, 17.430845>,  <37.295334, 34.892570, 17.475956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359753, 35.119320, 17.430845>,  <37.467121, 35.497234, 17.355661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359753, 35.119320, 17.430845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564178, 0.312336, 0.764297,
		-0.780804, 0.099109, -0.616865,
		-0.268418, -0.944788, 0.187958,
		37.279228, 34.835884, 17.487232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759209, 35.561035, 17.539965>,  <37.467121, 35.497234, 17.355661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759209, 35.561035, 17.539965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905849, 35.224575, 17.698997>,  <36.993835, 35.022701, 17.794416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905849, 35.224575, 17.698997>,  <36.759209, 35.561035, 17.539965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905849, 35.224575, 17.698997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435630, 0.222403, 0.872218,
		-0.822088, -0.492958, -0.284895,
		0.366605, -0.841148, 0.397582,
		37.015831, 34.972229, 17.818272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144989, 35.193207, 17.952559>,  <36.759209, 35.561035, 17.539965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144989, 35.193207, 17.952559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501339, 35.078545, 18.093510>,  <36.715149, 35.009747, 18.178082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501339, 35.078545, 18.093510>,  <36.144989, 35.193207, 17.952559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501339, 35.078545, 18.093510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270034, 0.289592, 0.918269,
		-0.365269, -0.913218, 0.180585,
		0.890876, -0.286651, 0.352379,
		36.768600, 34.992550, 18.199223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993370, 34.782234, 18.567627>,  <36.144989, 35.193207, 17.952559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993370, 34.782234, 18.567627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376659, 34.890789, 18.603756>,  <36.606632, 34.955921, 18.625433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376659, 34.890789, 18.603756>,  <35.993370, 34.782234, 18.567627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376659, 34.890789, 18.603756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123363, 0.107222, 0.986552,
		0.258057, -0.956478, 0.136222,
		0.958221, 0.271391, 0.090324,
		36.664127, 34.972206, 18.630854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287201, 34.224548, 19.019363>,  <35.993370, 34.782234, 18.567627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287201, 34.224548, 19.019363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498459, 34.564144, 19.012619>,  <36.625214, 34.767902, 19.008574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498459, 34.564144, 19.012619>,  <36.287201, 34.224548, 19.019363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498459, 34.564144, 19.012619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039552, 0.044427, 0.998230,
		0.848233, -0.526543, 0.057043,
		0.528145, 0.848987, -0.016859,
		36.656902, 34.818840, 19.007561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862274, 34.187588, 19.480631>,  <36.287201, 34.224548, 19.019363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862274, 34.187588, 19.480631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843300, 34.583153, 19.424339>,  <36.831917, 34.820492, 19.390564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843300, 34.583153, 19.424339>,  <36.862274, 34.187588, 19.480631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843300, 34.583153, 19.424339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276602, 0.148382, 0.949460,
		0.959813, 0.006112, -0.280573,
		-0.047435, 0.988911, -0.140728,
		36.829071, 34.879826, 19.382120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476421, 34.508266, 19.867006>,  <36.862274, 34.187588, 19.480631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476421, 34.508266, 19.867006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204941, 34.795551, 19.805635>,  <37.042053, 34.967922, 19.768814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204941, 34.795551, 19.805635>,  <37.476421, 34.508266, 19.867006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204941, 34.795551, 19.805635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103741, 0.300571, 0.948101,
		0.727049, 0.627561, -0.278506,
		-0.678702, 0.718209, -0.153426,
		37.001331, 35.011013, 19.759607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717617, 35.077648, 20.171583>,  <37.476421, 34.508266, 19.867006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717617, 35.077648, 20.171583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326187, 35.158974, 20.184530>,  <37.091328, 35.207767, 20.192299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326187, 35.158974, 20.184530>,  <37.717617, 35.077648, 20.171583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326187, 35.158974, 20.184530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082832, 0.244892, 0.966006,
		0.188474, 0.947994, -0.256487,
		-0.978579, 0.203313, 0.032368,
		37.032612, 35.219967, 20.194241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650368, 35.662491, 20.577393>,  <37.717617, 35.077648, 20.171583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650368, 35.662491, 20.577393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290668, 35.490379, 20.608929>,  <37.074848, 35.387112, 20.627851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290668, 35.490379, 20.608929>,  <37.650368, 35.662491, 20.577393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290668, 35.490379, 20.608929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089879, 0.358125, 0.929338,
		-0.428111, 0.828616, -0.360715,
		-0.899245, -0.430281, 0.078842,
		37.020893, 35.361294, 20.632582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165394, 36.098568, 20.491055>,  <37.650368, 35.662491, 20.577393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165394, 36.098568, 20.491055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.499920, 36.279709, 20.614670>,  <38.700634, 36.388393, 20.688839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.499920, 36.279709, 20.614670>,  <38.165394, 36.098568, 20.491055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499920, 36.279709, 20.614670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399392, -0.117074, -0.909274,
		-0.375588, 0.883865, -0.278777,
		0.836313, 0.452854, 0.309037,
		38.750813, 36.415565, 20.707380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232605, 36.535019, 20.012520>,  <38.165394, 36.098568, 20.491055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232605, 36.535019, 20.012520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592041, 36.509121, 20.186115>,  <38.807701, 36.493584, 20.290272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592041, 36.509121, 20.186115>,  <38.232605, 36.535019, 20.012520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592041, 36.509121, 20.186115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434053, -0.013762, -0.900782,
		0.064292, 0.997807, 0.015736,
		0.898590, -0.064743, 0.433986,
		38.861618, 36.489697, 20.316311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633835, 37.074017, 19.780462>,  <38.232605, 36.535019, 20.012520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633835, 37.074017, 19.780462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871319, 36.769272, 19.884050>,  <39.013809, 36.586426, 19.946203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871319, 36.769272, 19.884050>,  <38.633835, 37.074017, 19.780462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871319, 36.769272, 19.884050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268819, -0.115554, -0.956234,
		0.758447, 0.637344, 0.136199,
		0.593712, -0.761866, 0.258972,
		39.049431, 36.540710, 19.961742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391716, 37.217228, 19.567024>,  <38.633835, 37.074017, 19.780462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391716, 37.217228, 19.567024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416634, 36.822075, 19.623886>,  <39.431583, 36.584984, 19.658003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416634, 36.822075, 19.623886>,  <39.391716, 37.217228, 19.567024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416634, 36.822075, 19.623886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485908, -0.094396, -0.868898,
		0.871788, 0.123198, 0.474140,
		0.062290, -0.987883, 0.142156,
		39.435322, 36.525711, 19.666533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051571, 37.078991, 19.375101>,  <39.391716, 37.217228, 19.567024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051571, 37.078991, 19.375101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843918, 36.737659, 19.355806>,  <39.719326, 36.532860, 19.344229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843918, 36.737659, 19.355806>,  <40.051571, 37.078991, 19.375101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843918, 36.737659, 19.355806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386092, -0.183784, -0.903967,
		0.762516, -0.487907, 0.424872,
		-0.519136, -0.853329, -0.048239,
		39.688175, 36.481659, 19.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566399, 36.504856, 19.204239>,  <40.051571, 37.078991, 19.375101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566399, 36.504856, 19.204239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212151, 36.359005, 19.089193>,  <39.999603, 36.271496, 19.020166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212151, 36.359005, 19.089193>,  <40.566399, 36.504856, 19.204239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212151, 36.359005, 19.089193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380512, -0.214679, -0.899513,
		0.266245, -0.906067, 0.328870,
		-0.885621, -0.364629, -0.287612,
		39.946465, 36.249615, 19.002909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741371, 35.972511, 18.758873>,  <40.566399, 36.504856, 19.204239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741371, 35.972511, 18.758873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361866, 36.058495, 18.666233>,  <40.134163, 36.110085, 18.610649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361866, 36.058495, 18.666233>,  <40.741371, 35.972511, 18.758873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361866, 36.058495, 18.666233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185290, -0.215243, -0.958821,
		-0.255956, -0.952609, 0.164386,
		-0.948764, 0.214957, -0.231602,
		40.077236, 36.122982, 18.596752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615303, 35.550476, 18.234688>,  <40.741371, 35.972511, 18.758873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615303, 35.550476, 18.234688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325184, 35.817226, 18.166315>,  <40.151112, 35.977280, 18.125292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325184, 35.817226, 18.166315>,  <40.615303, 35.550476, 18.234688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325184, 35.817226, 18.166315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137285, -0.103198, -0.985141,
		-0.674611, -0.737984, -0.016704,
		-0.725295, 0.666881, -0.170932,
		40.107597, 36.017292, 18.115036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301830, 35.276249, 17.766973>,  <40.615303, 35.550476, 18.234688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301830, 35.276249, 17.766973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.186939, 35.655643, 17.713501>,  <40.118004, 35.883282, 17.681417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.186939, 35.655643, 17.713501>,  <40.301830, 35.276249, 17.766973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186939, 35.655643, 17.713501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064379, -0.120132, -0.990668,
		-0.955698, -0.293149, -0.026558,
		-0.287223, 0.948489, -0.133682,
		40.100773, 35.940189, 17.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952763, 35.234390, 17.170391>,  <40.301830, 35.276249, 17.766973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952763, 35.234390, 17.170391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.048733, 35.620438, 17.212317>,  <40.106316, 35.852066, 17.237473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.048733, 35.620438, 17.212317>,  <39.952763, 35.234390, 17.170391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048733, 35.620438, 17.212317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017226, 0.103719, -0.994457,
		-0.970637, 0.240405, 0.008260,
		0.239929, 0.965115, 0.104815,
		40.120712, 35.909973, 17.243761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514286, 35.765675, 16.817158>,  <39.952763, 35.234390, 17.170391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514286, 35.765675, 16.817158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849899, 35.974514, 16.878403>,  <40.051266, 36.099819, 16.915150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849899, 35.974514, 16.878403>,  <39.514286, 35.765675, 16.817158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849899, 35.974514, 16.878403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041268, 0.219535, -0.974731,
		-0.542520, 0.824146, 0.162650,
		0.839029, 0.522099, 0.153113,
		40.101608, 36.131145, 16.924337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414753, 36.412647, 16.523676>,  <39.514286, 35.765675, 16.817158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414753, 36.412647, 16.523676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808762, 36.343960, 16.517359>,  <40.045166, 36.302746, 16.513569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808762, 36.343960, 16.517359>,  <39.414753, 36.412647, 16.523676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808762, 36.343960, 16.517359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024674, 0.230990, -0.972643,
		0.170672, 0.957682, 0.231767,
		0.985019, -0.171722, -0.015794,
		40.104267, 36.292442, 16.512621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563786, 36.991375, 16.092627>,  <39.414753, 36.412647, 16.523676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563786, 36.991375, 16.092627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899990, 36.774967, 16.104191>,  <40.101711, 36.645123, 16.111130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899990, 36.774967, 16.104191>,  <39.563786, 36.991375, 16.092627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899990, 36.774967, 16.104191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052297, 0.027902, -0.998242,
		0.539263, 0.840546, 0.051746,
		0.840512, -0.541021, 0.028912,
		40.152145, 36.612659, 16.112864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089584, 37.398312, 15.854086>,  <39.563786, 36.991375, 16.092627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089584, 37.398312, 15.854086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178242, 37.011978, 15.800364>,  <40.231438, 36.780178, 15.768132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178242, 37.011978, 15.800364>,  <40.089584, 37.398312, 15.854086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178242, 37.011978, 15.800364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093113, 0.116136, -0.988859,
		0.970672, 0.231678, -0.064191,
		0.221642, -0.965835, -0.134302,
		40.244736, 36.722229, 15.760074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707882, 37.937378, 15.622505>,  <40.089584, 37.398312, 15.854086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707882, 37.937378, 15.622505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634350, 38.327225, 15.571383>,  <40.590233, 38.561131, 15.540709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634350, 38.327225, 15.571383>,  <40.707882, 37.937378, 15.622505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634350, 38.327225, 15.571383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190914, 0.092147, 0.977272,
		0.964240, 0.204049, 0.169129,
		-0.183826, 0.974614, -0.127808,
		40.579201, 38.619610, 15.533040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041557, 38.200394, 16.102869>,  <40.707882, 37.937378, 15.622505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041557, 38.200394, 16.102869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787331, 38.497124, 16.017309>,  <40.634796, 38.675163, 15.965974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787331, 38.497124, 16.017309>,  <41.041557, 38.200394, 16.102869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787331, 38.497124, 16.017309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158408, 0.145858, 0.976541,
		0.755620, 0.654540, 0.024808,
		-0.635566, 0.741824, -0.213898,
		40.596661, 38.719669, 15.953139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217140, 38.831184, 16.459885>,  <41.041557, 38.200394, 16.102869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217140, 38.831184, 16.459885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.826618, 38.858807, 16.377848>,  <40.592304, 38.875381, 16.328625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.826618, 38.858807, 16.377848>,  <41.217140, 38.831184, 16.459885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826618, 38.858807, 16.377848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178186, 0.281308, 0.942929,
		0.122809, 0.957130, -0.262337,
		-0.976303, 0.069055, -0.205094,
		40.533726, 38.879524, 16.316319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965729, 39.429394, 16.772530>,  <41.217140, 38.831184, 16.459885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965729, 39.429394, 16.772530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.626175, 39.226131, 16.714314>,  <40.422443, 39.104176, 16.679384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.626175, 39.226131, 16.714314>,  <40.965729, 39.429394, 16.772530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626175, 39.226131, 16.714314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315986, 0.267114, 0.910386,
		-0.423740, 0.818798, -0.387317,
		-0.848880, -0.508154, -0.145542,
		40.371510, 39.073685, 16.670650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377724, 39.833546, 17.038589>,  <40.965729, 39.429394, 16.772530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377724, 39.833546, 17.038589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249153, 39.454815, 17.032806>,  <40.172012, 39.227577, 17.029337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249153, 39.454815, 17.032806>,  <40.377724, 39.833546, 17.038589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249153, 39.454815, 17.032806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421477, 0.129379, 0.897563,
		-0.847963, 0.294595, -0.440650,
		-0.321428, -0.946824, -0.014456,
		40.152725, 39.170769, 17.028469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596928, 39.888657, 17.150656>,  <40.377724, 39.833546, 17.038589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596928, 39.888657, 17.150656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 39.508137, 17.257734>,  <39.694748, 39.279823, 17.321981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 39.508137, 17.257734>,  <39.596928, 39.888657, 17.150656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658066, 39.508137, 17.257734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489119, 0.162555, 0.856935,
		-0.858721, -0.261910, -0.440456,
		0.152841, -0.951304, 0.267695,
		39.703918, 39.222744, 17.338043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920574, 39.687370, 17.335773>,  <39.596928, 39.888657, 17.150656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920574, 39.687370, 17.335773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178467, 39.428394, 17.498323>,  <39.333202, 39.273010, 17.595854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178467, 39.428394, 17.498323>,  <38.920574, 39.687370, 17.335773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178467, 39.428394, 17.498323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462033, 0.093453, 0.881925,
		-0.608968, -0.756367, -0.238885,
		0.644735, -0.647437, 0.406376,
		39.371887, 39.234161, 17.620235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580669, 39.139515, 17.604868>,  <38.920574, 39.687370, 17.335773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580669, 39.139515, 17.604868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925209, 39.194347, 17.800535>,  <39.131931, 39.227245, 17.917936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925209, 39.194347, 17.800535>,  <38.580669, 39.139515, 17.604868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925209, 39.194347, 17.800535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483139, -0.076567, 0.872189,
		0.157013, -0.987597, 0.000277,
		0.861350, 0.137079, 0.489168,
		39.183613, 39.235470, 17.947287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499615, 38.691906, 18.094980>,  <38.580669, 39.139515, 17.604868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499615, 38.691906, 18.094980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810234, 38.893219, 18.246603>,  <38.996605, 39.014008, 18.337576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810234, 38.893219, 18.246603>,  <38.499615, 38.691906, 18.094980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810234, 38.893219, 18.246603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387735, -0.092486, 0.917119,
		0.496628, -0.859158, 0.123321,
		0.776545, 0.503283, 0.379057,
		39.043198, 39.044205, 18.360321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544270, 38.398647, 18.735720>,  <38.499615, 38.691906, 18.094980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544270, 38.398647, 18.735720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765938, 38.727062, 18.790537>,  <38.898941, 38.924110, 18.823427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765938, 38.727062, 18.790537>,  <38.544270, 38.398647, 18.735720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765938, 38.727062, 18.790537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207400, -0.023252, 0.977980,
		0.806149, -0.570394, 0.157398,
		0.554174, 0.821042, 0.137044,
		38.932190, 38.973373, 18.831650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058899, 38.253696, 19.248478>,  <38.544270, 38.398647, 18.735720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058899, 38.253696, 19.248478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998642, 38.648304, 19.222914>,  <38.962486, 38.885071, 19.207575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998642, 38.648304, 19.222914>,  <39.058899, 38.253696, 19.248478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998642, 38.648304, 19.222914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235618, 0.026956, 0.971472,
		0.960100, 0.161402, 0.228382,
		-0.150641, 0.986521, -0.063910,
		38.953449, 38.944260, 19.203741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393173, 38.530567, 19.777252>,  <39.058899, 38.253696, 19.248478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393173, 38.530567, 19.777252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168354, 38.847736, 19.683128>,  <39.033463, 39.038036, 19.626654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168354, 38.847736, 19.683128>,  <39.393173, 38.530567, 19.777252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168354, 38.847736, 19.683128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005585, 0.280852, 0.959735,
		0.827083, 0.540736, -0.153425,
		-0.562052, 0.792923, -0.235308,
		38.999737, 39.085613, 19.612535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614712, 38.992634, 20.283970>,  <39.393173, 38.530567, 19.777252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614712, 38.992634, 20.283970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263718, 39.126709, 20.146761>,  <39.053120, 39.207153, 20.064436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263718, 39.126709, 20.146761>,  <39.614712, 38.992634, 20.283970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263718, 39.126709, 20.146761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281253, 0.219691, 0.934148,
		0.388474, 0.916180, -0.098503,
		-0.877487, 0.335188, -0.343023,
		39.000473, 39.227264, 20.043854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528301, 39.718628, 20.525362>,  <39.614712, 38.992634, 20.283970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528301, 39.718628, 20.525362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156738, 39.597828, 20.439638>,  <38.933800, 39.525349, 20.388205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156738, 39.597828, 20.439638>,  <39.528301, 39.718628, 20.525362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156738, 39.597828, 20.439638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291545, 0.239573, 0.926070,
		-0.228331, 0.922713, -0.310588,
		-0.928906, -0.302001, -0.214310,
		38.878067, 39.507229, 20.375345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.747993, 42.034924, 15.053804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713867, 41.636467, 15.061998>,  <37.693390, 41.397392, 15.066915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713867, 41.636467, 15.061998>,  <37.747993, 42.034924, 15.053804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713867, 41.636467, 15.061998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542238, -0.063669, -0.837809,
		0.835883, -0.060369, 0.545578,
		-0.085314, -0.996143, 0.020486,
		37.688274, 41.337624, 15.068144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433838, 41.774525, 14.826279>,  <37.747993, 42.034924, 15.053804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433838, 41.774525, 14.826279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222866, 41.437588, 14.781958>,  <38.096283, 41.235428, 14.755365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222866, 41.437588, 14.781958>,  <38.433838, 41.774525, 14.826279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222866, 41.437588, 14.781958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380614, -0.117670, -0.917217,
		0.759571, -0.525943, 0.382669,
		-0.527433, -0.842340, -0.110802,
		38.064636, 41.184887, 14.748717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906456, 41.235886, 14.604733>,  <38.433838, 41.774525, 14.826279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906456, 41.235886, 14.604733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.550148, 41.085781, 14.502205>,  <38.336361, 40.995716, 14.440688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.550148, 41.085781, 14.502205>,  <38.906456, 41.235886, 14.604733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550148, 41.085781, 14.502205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327587, -0.139304, -0.934495,
		0.314977, -0.916390, 0.247020,
		-0.890773, -0.375265, -0.256320,
		38.282917, 40.973202, 14.425309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059673, 40.582592, 14.242089>,  <38.906456, 41.235886, 14.604733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059673, 40.582592, 14.242089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707684, 40.730694, 14.123053>,  <38.496490, 40.819557, 14.051631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707684, 40.730694, 14.123053>,  <39.059673, 40.582592, 14.242089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707684, 40.730694, 14.123053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242578, -0.188374, -0.951668,
		-0.408422, -0.909628, 0.075947,
		-0.879970, 0.370259, -0.297592,
		38.443691, 40.841770, 14.033775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797012, 40.135490, 13.681372>,  <39.059673, 40.582592, 14.242089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797012, 40.135490, 13.681372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597073, 40.480820, 13.653613>,  <38.477108, 40.688019, 13.636958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597073, 40.480820, 13.653613>,  <38.797012, 40.135490, 13.681372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597073, 40.480820, 13.653613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139546, 0.001199, -0.990215,
		-0.854797, -0.504642, -0.121073,
		-0.499849, 0.863328, -0.069396,
		38.447117, 40.739819, 13.632794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207504, 40.042721, 13.183210>,  <38.797012, 40.135490, 13.681372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207504, 40.042721, 13.183210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259850, 40.439262, 13.186898>,  <38.291256, 40.677189, 13.189111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.259850, 40.439262, 13.186898>,  <38.207504, 40.042721, 13.183210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259850, 40.439262, 13.186898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224437, -0.020566, -0.974272,
		-0.965662, 0.129565, -0.225189,
		0.130863, 0.991358, 0.009220,
		38.299107, 40.736671, 13.189664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903183, 40.226257, 12.629671>,  <38.207504, 40.042721, 13.183210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903183, 40.226257, 12.629671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140274, 40.543148, 12.687712>,  <38.282528, 40.733280, 12.722536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140274, 40.543148, 12.687712>,  <37.903183, 40.226257, 12.629671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140274, 40.543148, 12.687712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205171, 0.025692, -0.978389,
		-0.778830, 0.609692, -0.147313,
		0.592731, 0.792222, 0.145101,
		38.318092, 40.780815, 12.731242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694408, 40.786106, 12.202983>,  <37.903183, 40.226257, 12.629671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694408, 40.786106, 12.202983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084049, 40.831139, 12.281410>,  <38.317833, 40.858158, 12.328466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084049, 40.831139, 12.281410>,  <37.694408, 40.786106, 12.202983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084049, 40.831139, 12.281410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192871, 0.038731, -0.980459,
		-0.117971, 0.992888, 0.016015,
		0.974107, 0.112577, 0.196068,
		38.376282, 40.864910, 12.340231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854259, 41.288643, 11.680243>,  <37.694408, 40.786106, 12.202983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854259, 41.288643, 11.680243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207043, 41.153584, 11.811783>,  <38.418713, 41.072548, 11.890707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207043, 41.153584, 11.811783>,  <37.854259, 41.288643, 11.680243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207043, 41.153584, 11.811783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324597, -0.070753, -0.943202,
		0.341738, 0.938610, 0.047198,
		0.881959, -0.337648, 0.328849,
		38.471630, 41.052288, 11.910438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363033, 41.630146, 11.200848>,  <37.854259, 41.288643, 11.680243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363033, 41.630146, 11.200848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571636, 41.331539, 11.366135>,  <38.696796, 41.152374, 11.465306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571636, 41.331539, 11.366135>,  <38.363033, 41.630146, 11.200848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571636, 41.331539, 11.366135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341766, -0.260983, -0.902820,
		0.781812, 0.612047, 0.119031,
		0.521503, -0.746516, 0.413216,
		38.728088, 41.107586, 11.490100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078976, 41.552471, 10.840006>,  <38.363033, 41.630146, 11.200848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078976, 41.552471, 10.840006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.977669, 41.205753, 11.011828>,  <38.916885, 40.997723, 11.114922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.977669, 41.205753, 11.011828>,  <39.078976, 41.552471, 10.840006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977669, 41.205753, 11.011828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168424, -0.476761, -0.862747,
		0.952621, -0.146161, 0.266739,
		-0.253270, -0.866796, 0.429556,
		38.901688, 40.945713, 11.140696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695862, 41.176014, 10.802108>,  <39.078976, 41.552471, 10.840006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695862, 41.176014, 10.802108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379715, 40.932674, 10.831027>,  <39.190025, 40.786671, 10.848378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379715, 40.932674, 10.831027>,  <39.695862, 41.176014, 10.802108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379715, 40.932674, 10.831027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161129, -0.320281, -0.933519,
		0.591061, -0.726176, 0.351163,
		-0.790370, -0.608349, 0.072297,
		39.142605, 40.750168, 10.852716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776310, 40.557945, 10.503983>,  <39.695862, 41.176014, 10.802108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776310, 40.557945, 10.503983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.382309, 40.600769, 10.449858>,  <39.145908, 40.626465, 10.417382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.382309, 40.600769, 10.449858>,  <39.776310, 40.557945, 10.503983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382309, 40.600769, 10.449858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099266, -0.289839, -0.951914,
		-0.141129, -0.951069, 0.274864,
		-0.985002, 0.107058, -0.135313,
		39.086807, 40.632885, 10.409264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633965, 39.960358, 10.199750>,  <39.776310, 40.557945, 10.503983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633965, 39.960358, 10.199750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385483, 40.254116, 10.090377>,  <39.236393, 40.430370, 10.024753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385483, 40.254116, 10.090377>,  <39.633965, 39.960358, 10.199750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385483, 40.254116, 10.090377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037505, -0.320661, -0.946451,
		-0.782752, -0.598193, 0.171652,
		-0.621203, 0.734399, -0.273434,
		39.199123, 40.474434, 10.008347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067898, 39.450508, 10.021461>,  <39.633965, 39.960358, 10.199750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067898, 39.450508, 10.021461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434219, 39.292454, 9.992711>,  <40.654011, 39.197620, 9.975462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434219, 39.292454, 9.992711>,  <40.067898, 39.450508, 10.021461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434219, 39.292454, 9.992711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034826, -0.256412, 0.965940,
		-0.400112, -0.882109, -0.248585,
		0.915804, -0.395141, -0.071873,
		40.708961, 39.173912, 9.971149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073494, 38.670757, 10.238904>,  <40.067898, 39.450508, 10.021461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073494, 38.670757, 10.238904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463337, 38.758816, 10.255292>,  <40.697243, 38.811649, 10.265124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463337, 38.758816, 10.255292>,  <40.073494, 38.670757, 10.238904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463337, 38.758816, 10.255292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022058, -0.276450, 0.960775,
		0.222837, -0.935474, -0.274285,
		0.974606, 0.220146, 0.040969,
		40.755718, 38.824860, 10.267583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207954, 38.261635, 10.731947>,  <40.073494, 38.670757, 10.238904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207954, 38.261635, 10.731947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511745, 38.518864, 10.692629>,  <40.694019, 38.673199, 10.669038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511745, 38.518864, 10.692629>,  <40.207954, 38.261635, 10.731947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511745, 38.518864, 10.692629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287880, -0.196732, 0.937242,
		0.583372, -0.740108, -0.334539,
		0.759475, 0.643068, -0.098294,
		40.739590, 38.711784, 10.663140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788975, 37.916828, 10.932941>,  <40.207954, 38.261635, 10.731947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788975, 37.916828, 10.932941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877048, 38.305019, 10.972338>,  <40.929893, 38.537933, 10.995975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877048, 38.305019, 10.972338>,  <40.788975, 37.916828, 10.932941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877048, 38.305019, 10.972338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178382, -0.139325, 0.974047,
		0.959010, -0.196898, -0.203792,
		0.220181, 0.970474, 0.098491,
		40.943104, 38.596161, 11.001885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414341, 37.914486, 11.340850>,  <40.788975, 37.916828, 10.932941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414341, 37.914486, 11.340850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227470, 38.266048, 11.379359>,  <41.115349, 38.476986, 11.402465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227470, 38.266048, 11.379359>,  <41.414341, 37.914486, 11.340850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227470, 38.266048, 11.379359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144300, -0.031634, 0.989028,
		0.872310, 0.475942, -0.112048,
		-0.467175, 0.878908, 0.096273,
		41.087318, 38.529720, 11.408241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764599, 38.318501, 11.865993>,  <41.414341, 37.914486, 11.340850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764599, 38.318501, 11.865993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399590, 38.482109, 11.866499>,  <41.180584, 38.580276, 11.866802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.399590, 38.482109, 11.866499>,  <41.764599, 38.318501, 11.865993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399590, 38.482109, 11.866499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081737, 0.179325, 0.980389,
		0.400775, 0.894730, -0.197071,
		-0.912523, 0.409023, 0.001264,
		41.125832, 38.604816, 11.866878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794098, 39.099026, 12.186025>,  <41.764599, 38.318501, 11.865993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794098, 39.099026, 12.186025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427288, 38.946884, 12.234029>,  <41.207203, 38.855598, 12.262831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.427288, 38.946884, 12.234029>,  <41.794098, 39.099026, 12.186025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427288, 38.946884, 12.234029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035280, 0.222361, 0.974326,
		-0.397274, 0.897712, -0.190491,
		-0.917022, -0.380354, 0.120010,
		41.152180, 38.832779, 12.270032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453884, 39.561691, 12.756644>,  <41.794098, 39.099026, 12.186025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453884, 39.561691, 12.756644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191818, 39.261971, 12.718047>,  <41.034580, 39.082138, 12.694889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191818, 39.261971, 12.718047>,  <41.453884, 39.561691, 12.756644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191818, 39.261971, 12.718047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115352, -0.027010, 0.992957,
		-0.746628, 0.661681, -0.068737,
		-0.655165, -0.749299, -0.096493,
		40.995270, 39.037182, 12.689099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871765, 39.816776, 13.091018>,  <41.453884, 39.561691, 12.756644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871765, 39.816776, 13.091018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834122, 39.418568, 13.094801>,  <40.811535, 39.179642, 13.097071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834122, 39.418568, 13.094801>,  <40.871765, 39.816776, 13.091018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834122, 39.418568, 13.094801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281621, 0.035731, 0.958861,
		-0.954900, 0.087570, -0.283721,
		-0.094106, -0.995518, 0.009458,
		40.805889, 39.119911, 13.097638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200607, 39.732620, 13.342941>,  <40.871765, 39.816776, 13.091018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200607, 39.732620, 13.342941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384064, 39.383110, 13.407654>,  <40.494137, 39.173405, 13.446482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384064, 39.383110, 13.407654>,  <40.200607, 39.732620, 13.342941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384064, 39.383110, 13.407654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348193, -0.009206, 0.937378,
		-0.817564, -0.486250, -0.308464,
		0.458639, -0.873771, 0.161782,
		40.521656, 39.120979, 13.456188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780415, 39.479382, 13.780729>,  <40.200607, 39.732620, 13.342941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780415, 39.479382, 13.780729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112228, 39.258942, 13.816858>,  <40.311317, 39.126678, 13.838535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112228, 39.258942, 13.816858>,  <39.780415, 39.479382, 13.780729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112228, 39.258942, 13.816858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127918, -0.030072, 0.991329,
		-0.543604, -0.833898, -0.095442,
		0.829537, -0.551099, 0.090323,
		40.361088, 39.093613, 13.843955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605095, 38.949158, 14.231149>,  <39.780415, 39.479382, 13.780729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605095, 38.949158, 14.231149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.004925, 38.953587, 14.241942>,  <40.244823, 38.956245, 14.248419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.004925, 38.953587, 14.241942>,  <39.605095, 38.949158, 14.231149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004925, 38.953587, 14.241942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026151, -0.069498, 0.997239,
		0.012921, -0.997521, -0.069179,
		0.999575, 0.011076, 0.026984,
		40.304798, 38.956909, 14.250037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750370, 38.417316, 14.682835>,  <39.605095, 38.949158, 14.231149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750370, 38.417316, 14.682835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.095074, 38.619915, 14.694375>,  <40.301895, 38.741474, 14.701300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.095074, 38.619915, 14.694375>,  <39.750370, 38.417316, 14.682835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095074, 38.619915, 14.694375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028239, -0.008891, 0.999562,
		0.506532, -0.862196, 0.006641,
		0.861758, 0.506497, 0.028851,
		40.353600, 38.771866, 14.703031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346138, 37.966244, 14.910330>,  <39.750370, 38.417316, 14.682835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346138, 37.966244, 14.910330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476463, 38.337704, 14.981278>,  <40.554661, 38.560577, 15.023848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476463, 38.337704, 14.981278>,  <40.346138, 37.966244, 14.910330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476463, 38.337704, 14.981278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175166, -0.125067, 0.976563,
		0.929064, -0.349250, 0.121918,
		0.325817, 0.928646, 0.177372,
		40.574207, 38.616299, 15.034490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531906, 37.329006, 15.251935>,  <40.346138, 37.966244, 14.910330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531906, 37.329006, 15.251935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.444317, 36.941059, 15.294654>,  <40.391762, 36.708290, 15.320285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.444317, 36.941059, 15.294654>,  <40.531906, 37.329006, 15.251935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444317, 36.941059, 15.294654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112496, -0.133817, -0.984600,
		0.969224, -0.203588, 0.138409,
		-0.218974, -0.969869, 0.106796,
		40.378624, 36.650097, 15.326693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026249, 36.926136, 14.901857>,  <40.531906, 37.329006, 15.251935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026249, 36.926136, 14.901857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721279, 36.668682, 14.928513>,  <40.538300, 36.514210, 14.944506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721279, 36.668682, 14.928513>,  <41.026249, 36.926136, 14.901857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721279, 36.668682, 14.928513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095829, -0.214158, -0.972087,
		0.639945, -0.734755, 0.224958,
		-0.762422, -0.643640, 0.066639,
		40.492554, 36.475590, 14.948504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221622, 36.488037, 14.490174>,  <41.026249, 36.926136, 14.901857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221622, 36.488037, 14.490174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834251, 36.389290, 14.504067>,  <40.601830, 36.330040, 14.512403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834251, 36.389290, 14.504067>,  <41.221622, 36.488037, 14.490174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834251, 36.389290, 14.504067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032151, -0.261826, -0.964580,
		0.247223, -0.933006, 0.261496,
		-0.968425, -0.246873, 0.034732,
		40.543724, 36.315228, 14.514487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164307, 35.818504, 14.177748>,  <41.221622, 36.488037, 14.490174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164307, 35.818504, 14.177748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794853, 35.971634, 14.185243>,  <40.573181, 36.063511, 14.189739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794853, 35.971634, 14.185243>,  <41.164307, 35.818504, 14.177748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794853, 35.971634, 14.185243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154498, -0.327122, -0.932267,
		-0.350778, -0.863960, 0.361286,
		-0.923626, 0.382837, 0.018733,
		40.517765, 36.086483, 14.190864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823765, 35.265282, 13.908592>,  <41.164307, 35.818504, 14.177748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823765, 35.265282, 13.908592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.586945, 35.584419, 13.863113>,  <40.444851, 35.775902, 13.835826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.586945, 35.584419, 13.863113>,  <40.823765, 35.265282, 13.908592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586945, 35.584419, 13.863113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246440, -0.313556, -0.917033,
		-0.767297, -0.514910, 0.382261,
		-0.592050, 0.797841, -0.113696,
		40.409328, 35.823772, 13.829004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273853, 35.060146, 13.521824>,  <40.823765, 35.265282, 13.908592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273853, 35.060146, 13.521824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.283566, 35.456451, 13.468460>,  <40.289394, 35.694233, 13.436441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.283566, 35.456451, 13.468460>,  <40.273853, 35.060146, 13.521824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283566, 35.456451, 13.468460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262965, -0.122419, -0.957008,
		-0.964500, 0.058321, 0.257563,
		0.024283, 0.990763, -0.133409,
		40.290852, 35.753681, 13.428437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661350, 35.158916, 13.156511>,  <40.273853, 35.060146, 13.521824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661350, 35.158916, 13.156511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.914566, 35.461811, 13.092197>,  <40.066494, 35.643547, 13.053609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.914566, 35.461811, 13.092197>,  <39.661350, 35.158916, 13.156511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914566, 35.461811, 13.092197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321032, 0.067803, -0.944638,
		-0.704413, 0.649611, 0.286020,
		0.633041, 0.757237, -0.160785,
		40.104477, 35.688984, 13.043962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972126, 35.453331, 13.274218>,  <39.661350, 35.158916, 13.156511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972126, 35.453331, 13.274218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614712, 35.286362, 13.208062>,  <38.400265, 35.186180, 13.168369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614712, 35.286362, 13.208062>,  <38.972126, 35.453331, 13.274218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614712, 35.286362, 13.208062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114983, -0.143331, 0.982973,
		-0.434023, 0.897336, 0.080074,
		-0.893534, -0.417425, -0.165388,
		38.346653, 35.161133, 13.158446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417839, 35.795254, 13.696496>,  <38.972126, 35.453331, 13.274218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417839, 35.795254, 13.696496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305904, 35.420460, 13.612823>,  <38.238743, 35.195583, 13.562620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305904, 35.420460, 13.612823>,  <38.417839, 35.795254, 13.696496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305904, 35.420460, 13.612823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244709, -0.141075, 0.959279,
		-0.928337, 0.319628, -0.189811,
		-0.279834, -0.936982, -0.209181,
		38.221954, 35.139366, 13.550069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960346, 35.707790, 14.269462>,  <38.417839, 35.795254, 13.696496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960346, 35.707790, 14.269462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974754, 35.345215, 14.101143>,  <37.983398, 35.127670, 14.000152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974754, 35.345215, 14.101143>,  <37.960346, 35.707790, 14.269462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974754, 35.345215, 14.101143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198561, -0.419167, 0.885930,
		-0.979426, 0.051642, -0.195082,
		0.036021, -0.906439, -0.420797,
		37.985561, 35.073284, 13.974904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358471, 35.379086, 14.348666>,  <37.960346, 35.707790, 14.269462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358471, 35.379086, 14.348666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 35.082386, 14.295315>,  <37.779133, 34.904366, 14.263304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621384, 35.082386, 14.295315>,  <37.358471, 35.379086, 14.348666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621384, 35.082386, 14.295315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286890, -0.409912, 0.865833,
		-0.696904, -0.530832, -0.482227,
		0.657282, -0.741748, -0.133379,
		37.818569, 34.859863, 14.255301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012257, 34.809517, 14.535868>,  <37.358471, 35.379086, 14.348666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012257, 34.809517, 14.535868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395870, 34.697960, 14.555720>,  <37.626038, 34.631023, 14.567632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.395870, 34.697960, 14.555720>,  <37.012257, 34.809517, 14.535868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395870, 34.697960, 14.555720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198720, -0.537499, 0.819515,
		-0.201881, -0.795810, -0.570904,
		0.959038, -0.278895, 0.049633,
		37.683582, 34.614292, 14.570610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995243, 34.036564, 14.663228>,  <37.012257, 34.809517, 14.535868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995243, 34.036564, 14.663228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341816, 34.185379, 14.796430>,  <37.549759, 34.274666, 14.876350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341816, 34.185379, 14.796430>,  <36.995243, 34.036564, 14.663228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341816, 34.185379, 14.796430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132747, -0.471298, 0.871927,
		0.481333, -0.799667, -0.358960,
		0.866428, 0.372036, 0.333004,
		37.601746, 34.296989, 14.896331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199432, 33.524590, 15.190978>,  <36.995243, 34.036564, 14.663228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199432, 33.524590, 15.190978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471027, 33.813248, 15.244956>,  <37.633984, 33.986443, 15.277343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471027, 33.813248, 15.244956>,  <37.199432, 33.524590, 15.190978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471027, 33.813248, 15.244956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111494, -0.283038, 0.952606,
		0.725637, -0.631759, -0.272637,
		0.678985, 0.721644, 0.134945,
		37.674725, 34.029739, 15.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.001347, 39.344162, 10.794034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369305, 39.436127, 10.921116>,  <36.590080, 39.491306, 10.997365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.369305, 39.436127, 10.921116>,  <36.001347, 39.344162, 10.794034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369305, 39.436127, 10.921116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323093, -0.014861, 0.946250,
		0.222280, -0.973097, 0.060614,
		0.919893, 0.229917, 0.317704,
		36.645271, 39.505100, 11.016427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154022, 38.789436, 11.362512>,  <36.001347, 39.344162, 10.794034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154022, 38.789436, 11.362512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343506, 39.141106, 11.383150>,  <36.457195, 39.352108, 11.395534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343506, 39.141106, 11.383150>,  <36.154022, 38.789436, 11.362512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343506, 39.141106, 11.383150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339736, 0.128372, 0.931719,
		0.812516, -0.458890, 0.359496,
		0.473706, 0.879170, 0.051597,
		36.485619, 39.404858, 11.398629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466709, 38.802643, 12.033550>,  <36.154022, 38.789436, 11.362512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466709, 38.802643, 12.033550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434772, 39.190174, 11.939741>,  <36.415611, 39.422691, 11.883455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.434772, 39.190174, 11.939741>,  <36.466709, 38.802643, 12.033550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434772, 39.190174, 11.939741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348444, 0.193306, 0.917180,
		0.933923, 0.154948, 0.322147,
		-0.079842, 0.968826, -0.234524,
		36.410820, 39.480824, 11.869384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648071, 39.088299, 12.593035>,  <36.466709, 38.802643, 12.033550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648071, 39.088299, 12.593035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463299, 39.400276, 12.424127>,  <36.352436, 39.587463, 12.322782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463299, 39.400276, 12.424127>,  <36.648071, 39.088299, 12.593035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463299, 39.400276, 12.424127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223778, 0.358215, 0.906425,
		0.858220, 0.513202, 0.009063,
		-0.461932, 0.779940, -0.422270,
		36.324718, 39.634258, 12.297445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786392, 39.617538, 13.048367>,  <36.648071, 39.088299, 12.593035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786392, 39.617538, 13.048367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.477104, 39.750584, 12.832401>,  <36.291531, 39.830410, 12.702822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.477104, 39.750584, 12.832401>,  <36.786392, 39.617538, 13.048367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477104, 39.750584, 12.832401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416703, 0.375289, 0.827959,
		0.478010, 0.865176, -0.151581,
		-0.773217, 0.332608, -0.539914,
		36.245140, 39.850365, 12.670427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791840, 40.322208, 13.217023>,  <36.786392, 39.617538, 13.048367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791840, 40.322208, 13.217023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427311, 40.266674, 13.061991>,  <36.208595, 40.233353, 12.968971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427311, 40.266674, 13.061991>,  <36.791840, 40.322208, 13.217023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427311, 40.266674, 13.061991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400533, 0.081253, 0.912673,
		-0.095217, 0.986977, -0.129655,
		-0.911322, -0.138833, -0.387580,
		36.153915, 40.225025, 12.945717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381298, 40.774799, 13.579635>,  <36.791840, 40.322208, 13.217023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381298, 40.774799, 13.579635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099323, 40.527454, 13.440675>,  <35.930138, 40.379047, 13.357299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.099323, 40.527454, 13.440675>,  <36.381298, 40.774799, 13.579635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099323, 40.527454, 13.440675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578913, 0.218649, 0.785527,
		-0.409785, 0.754861, -0.512114,
		-0.704937, -0.618367, -0.347400,
		35.887844, 40.341946, 13.336454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680565, 41.122429, 13.484192>,  <36.381298, 40.774799, 13.579635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680565, 41.122429, 13.484192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.601345, 40.731022, 13.507117>,  <35.553814, 40.496178, 13.520872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.601345, 40.731022, 13.507117>,  <35.680565, 41.122429, 13.484192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601345, 40.731022, 13.507117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527572, 0.155696, 0.835121,
		-0.826101, 0.135161, -0.547073,
		-0.198053, -0.978514, 0.057313,
		35.541927, 40.437469, 13.524311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035908, 41.078270, 13.731005>,  <35.680565, 41.122429, 13.484192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035908, 41.078270, 13.731005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163685, 40.704239, 13.792425>,  <35.240353, 40.479820, 13.829277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163685, 40.704239, 13.792425>,  <35.035908, 41.078270, 13.731005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163685, 40.704239, 13.792425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587036, -0.068077, 0.806693,
		-0.743870, -0.347835, -0.570673,
		0.319446, -0.935081, 0.153551,
		35.259518, 40.423714, 13.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445694, 40.675262, 13.896612>,  <35.035908, 41.078270, 13.731005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445694, 40.675262, 13.896612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772057, 40.502144, 14.049965>,  <34.967873, 40.398273, 14.141976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.772057, 40.502144, 14.049965>,  <34.445694, 40.675262, 13.896612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772057, 40.502144, 14.049965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530307, -0.295980, 0.794462,
		-0.230366, -0.851519, -0.471007,
		0.815908, -0.432795, 0.383383,
		35.016830, 40.372303, 14.164979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340919, 39.945168, 14.046238>,  <34.445694, 40.675262, 13.896612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340919, 39.945168, 14.046238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.627129, 40.060303, 14.300854>,  <34.798855, 40.129383, 14.453623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.627129, 40.060303, 14.300854>,  <34.340919, 39.945168, 14.046238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627129, 40.060303, 14.300854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540296, -0.349592, 0.765419,
		0.442846, -0.891591, -0.094622,
		0.715519, 0.287839, 0.636538,
		34.841785, 40.146656, 14.491816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252949, 39.429577, 14.626620>,  <34.340919, 39.945168, 14.046238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252949, 39.429577, 14.626620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505939, 39.697849, 14.781623>,  <34.657734, 39.858810, 14.874624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505939, 39.697849, 14.781623>,  <34.252949, 39.429577, 14.626620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505939, 39.697849, 14.781623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413210, -0.131002, 0.901163,
		0.655156, -0.730088, 0.194276,
		0.632478, 0.670679, 0.387506,
		34.695683, 39.899052, 14.897875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607334, 38.682251, 14.717338>,  <34.252949, 39.429577, 14.626620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607334, 38.682251, 14.717338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668140, 38.331482, 14.899722>,  <34.704624, 38.121021, 15.009152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.668140, 38.331482, 14.899722>,  <34.607334, 38.682251, 14.717338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668140, 38.331482, 14.899722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179055, -0.429256, -0.885256,
		0.972024, 0.216213, 0.091764,
		0.152014, -0.876921, 0.455962,
		34.713745, 38.068405, 15.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217831, 38.483017, 14.486136>,  <34.607334, 38.682251, 14.717338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217831, 38.483017, 14.486136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.029808, 38.148495, 14.599012>,  <34.916992, 37.947781, 14.666738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.029808, 38.148495, 14.599012>,  <35.217831, 38.483017, 14.486136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029808, 38.148495, 14.599012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382266, -0.481070, -0.788952,
		0.795560, -0.262983, 0.545824,
		-0.470060, -0.836308, 0.282190,
		34.888790, 37.897602, 14.683669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697475, 37.953362, 14.393633>,  <35.217831, 38.483017, 14.486136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697475, 37.953362, 14.393633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.341427, 37.771278, 14.384969>,  <35.127800, 37.662029, 14.379770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.341427, 37.771278, 14.384969>,  <35.697475, 37.953362, 14.393633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341427, 37.771278, 14.384969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254161, -0.456411, -0.852696,
		0.378271, -0.764507, 0.521958,
		-0.890120, -0.455212, -0.021661,
		35.074390, 37.634716, 14.378470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887600, 37.315247, 14.051867>,  <35.697475, 37.953362, 14.393633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887600, 37.315247, 14.051867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.487743, 37.314945, 14.041142>,  <35.247829, 37.314766, 14.034706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.487743, 37.314945, 14.041142>,  <35.887600, 37.315247, 14.051867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487743, 37.314945, 14.041142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023622, -0.498383, -0.866635,
		-0.012710, -0.866957, 0.498221,
		-0.999640, -0.000754, -0.026814,
		35.187851, 37.314720, 14.033097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653633, 36.619347, 13.927585>,  <35.887600, 37.315247, 14.051867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653633, 36.619347, 13.927585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360413, 36.853897, 13.789712>,  <35.184483, 36.994629, 13.706988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360413, 36.853897, 13.789712>,  <35.653633, 36.619347, 13.927585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360413, 36.853897, 13.789712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102758, -0.405463, -0.908317,
		-0.672371, -0.701258, 0.236969,
		-0.733047, 0.586376, -0.344681,
		35.140499, 37.029808, 13.686308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298695, 36.138374, 13.416677>,  <35.653633, 36.619347, 13.927585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298695, 36.138374, 13.416677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163719, 36.503086, 13.323047>,  <35.082733, 36.721912, 13.266868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163719, 36.503086, 13.323047>,  <35.298695, 36.138374, 13.416677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163719, 36.503086, 13.323047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085945, -0.277465, -0.956884,
		-0.937415, -0.302773, 0.171990,
		-0.337440, 0.911779, -0.234078,
		35.062489, 36.776619, 13.252824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847721, 36.004005, 12.919498>,  <35.298695, 36.138374, 13.416677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847721, 36.004005, 12.919498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943665, 36.387051, 12.855688>,  <35.001228, 36.616879, 12.817402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943665, 36.387051, 12.855688>,  <34.847721, 36.004005, 12.919498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943665, 36.387051, 12.855688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015665, -0.160484, -0.986914,
		-0.970682, 0.239216, -0.023492,
		0.239856, 0.957612, -0.159526,
		35.015621, 36.674335, 12.807830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458118, 36.208263, 12.274894>,  <34.847721, 36.004005, 12.919498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458118, 36.208263, 12.274894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.735390, 36.495865, 12.295072>,  <34.901752, 36.668427, 12.307178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.735390, 36.495865, 12.295072>,  <34.458118, 36.208263, 12.274894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735390, 36.495865, 12.295072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184990, -0.109830, -0.976584,
		-0.696625, 0.686276, -0.209140,
		0.693176, 0.719001, 0.050444,
		34.943344, 36.711567, 12.310205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445694, 36.557888, 11.589931>,  <34.458118, 36.208263, 12.274894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445694, 36.557888, 11.589931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.781612, 36.735481, 11.714910>,  <34.983162, 36.842037, 11.789897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.781612, 36.735481, 11.714910>,  <34.445694, 36.557888, 11.589931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781612, 36.735481, 11.714910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317695, 0.064800, -0.945976,
		-0.440248, 0.893687, -0.086634,
		0.839793, 0.443987, 0.312448,
		35.033550, 36.868679, 11.808644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578938, 37.228039, 11.142812>,  <34.445694, 36.557888, 11.589931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578938, 37.228039, 11.142812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.906544, 37.054432, 11.292928>,  <35.103107, 36.950268, 11.382998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.906544, 37.054432, 11.292928>,  <34.578938, 37.228039, 11.142812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906544, 37.054432, 11.292928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341484, -0.156905, -0.926698,
		0.461085, 0.887137, 0.019701,
		0.819017, -0.434014, 0.375290,
		35.152248, 36.924229, 11.405515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075298, 37.569859, 10.839748>,  <34.578938, 37.228039, 11.142812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075298, 37.569859, 10.839748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226795, 37.222309, 10.967254>,  <35.317692, 37.013779, 11.043756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226795, 37.222309, 10.967254>,  <35.075298, 37.569859, 10.839748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226795, 37.222309, 10.967254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381728, -0.167105, -0.909043,
		0.843113, 0.465974, 0.268384,
		0.378742, -0.868875, 0.318764,
		35.340416, 36.961647, 11.062882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769756, 37.591381, 10.779461>,  <35.075298, 37.569859, 10.839748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769756, 37.591381, 10.779461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696068, 37.198433, 10.792138>,  <35.651855, 36.962662, 10.799745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696068, 37.198433, 10.792138>,  <35.769756, 37.591381, 10.779461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696068, 37.198433, 10.792138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240313, -0.076286, -0.967693,
		0.953054, -0.170655, 0.250130,
		-0.184223, -0.982373, 0.031694,
		35.640800, 36.903721, 10.801646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324238, 37.175114, 10.636110>,  <35.769756, 37.591381, 10.779461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324238, 37.175114, 10.636110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013504, 36.958145, 10.508171>,  <35.827065, 36.827965, 10.431408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013504, 36.958145, 10.508171>,  <36.324238, 37.175114, 10.636110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013504, 36.958145, 10.508171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440335, -0.104833, -0.891692,
		0.450142, -0.833541, 0.320285,
		-0.776838, -0.542421, -0.319848,
		35.780453, 36.795418, 10.412217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534630, 36.487129, 10.553030>,  <36.324238, 37.175114, 10.636110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534630, 36.487129, 10.553030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.259792, 36.658890, 10.318589>,  <36.094891, 36.761948, 10.177925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.259792, 36.658890, 10.318589>,  <36.534630, 36.487129, 10.553030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259792, 36.658890, 10.318589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652901, 0.010976, -0.757364,
		-0.318781, -0.903047, -0.287899,
		-0.687095, 0.429402, -0.586101,
		36.053665, 36.787712, 10.142759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333290, 36.422977, 10.506529>,  <36.534630, 36.487129, 10.553030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333290, 36.422977, 10.506529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639839, 36.179474, 10.424464>,  <37.823769, 36.033371, 10.375225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639839, 36.179474, 10.424464>,  <37.333290, 36.422977, 10.506529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639839, 36.179474, 10.424464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118274, -0.447618, 0.886369,
		-0.631419, -0.655020, -0.415041,
		0.766369, -0.608759, -0.205163,
		37.869751, 35.996845, 10.362915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114223, 35.790440, 10.721295>,  <37.333290, 36.422977, 10.506529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114223, 35.790440, 10.721295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513828, 35.772717, 10.722962>,  <37.753590, 35.762085, 10.723963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513828, 35.772717, 10.722962>,  <37.114223, 35.790440, 10.721295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513828, 35.772717, 10.722962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022781, -0.428745, 0.903138,
		-0.038225, -0.902339, -0.429330,
		0.999009, -0.044303, 0.004167,
		37.813530, 35.759426, 10.724213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309795, 35.047115, 10.902122>,  <37.114223, 35.790440, 10.721295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309795, 35.047115, 10.902122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619125, 35.284382, 10.991668>,  <37.804726, 35.426743, 11.045395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619125, 35.284382, 10.991668>,  <37.309795, 35.047115, 10.902122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619125, 35.284382, 10.991668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165422, -0.529639, 0.831936,
		0.612044, -0.606329, -0.507708,
		0.773329, 0.593168, 0.223863,
		37.851124, 35.462334, 11.058826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736763, 34.565777, 11.239721>,  <37.309795, 35.047115, 10.902122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736763, 34.565777, 11.239721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902241, 34.915966, 11.339643>,  <38.001530, 35.126080, 11.399597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902241, 34.915966, 11.339643>,  <37.736763, 34.565777, 11.239721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902241, 34.915966, 11.339643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095260, -0.314506, 0.944464,
		0.905417, -0.366926, -0.213508,
		0.413698, 0.875472, 0.249806,
		38.026352, 35.178608, 11.414585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384617, 34.368687, 11.564173>,  <37.736763, 34.565777, 11.239721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384617, 34.368687, 11.564173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288994, 34.732166, 11.701068>,  <38.231621, 34.950253, 11.783205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288994, 34.732166, 11.701068>,  <38.384617, 34.368687, 11.564173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288994, 34.732166, 11.701068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238926, -0.286575, 0.927787,
		0.941152, 0.303561, -0.148604,
		-0.239054, 0.908695, 0.342239,
		38.217278, 35.004776, 11.803740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730312, 34.442749, 12.228300>,  <38.384617, 34.368687, 11.564173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730312, 34.442749, 12.228300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501312, 34.769825, 12.252381>,  <38.363911, 34.966072, 12.266829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501312, 34.769825, 12.252381>,  <38.730312, 34.442749, 12.228300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501312, 34.769825, 12.252381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004880, -0.076823, 0.997033,
		0.819890, 0.570507, 0.047972,
		-0.572500, 0.817692, 0.060202,
		38.329563, 35.015133, 12.270442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097363, 34.954891, 12.657841>,  <38.730312, 34.442749, 12.228300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097363, 34.954891, 12.657841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701031, 35.004314, 12.679700>,  <38.463230, 35.033970, 12.692815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701031, 35.004314, 12.679700>,  <39.097363, 34.954891, 12.657841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701031, 35.004314, 12.679700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042321, -0.100273, 0.994060,
		0.128305, 0.987258, 0.094125,
		-0.990831, 0.123560, 0.054647,
		38.403782, 35.041382, 12.696095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322506, 35.688427, 12.559013>,  <39.097363, 34.954891, 12.657841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322506, 35.688427, 12.559013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707188, 35.797817, 12.551597>,  <39.937996, 35.863449, 12.547147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.707188, 35.797817, 12.551597>,  <39.322506, 35.688427, 12.559013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707188, 35.797817, 12.551597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067211, 0.169698, -0.983201,
		-0.265732, 0.946792, 0.181579,
		0.961701, 0.273473, -0.018541,
		39.995697, 35.879860, 12.546035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361858, 36.364616, 12.255601>,  <39.322506, 35.688427, 12.559013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361858, 36.364616, 12.255601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711472, 36.175179, 12.212182>,  <39.921238, 36.061516, 12.186131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.711472, 36.175179, 12.212182>,  <39.361858, 36.364616, 12.255601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711472, 36.175179, 12.212182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047609, 0.138855, -0.989168,
		0.483534, 0.869730, 0.098816,
		0.874030, -0.473592, -0.108548,
		39.973682, 36.033100, 12.179618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607735, 36.608021, 11.627540>,  <39.361858, 36.364616, 12.255601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607735, 36.608021, 11.627540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875980, 36.315300, 11.676114>,  <40.036926, 36.139668, 11.705258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875980, 36.315300, 11.676114>,  <39.607735, 36.608021, 11.627540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875980, 36.315300, 11.676114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349256, 0.167052, -0.922016,
		0.654448, 0.660726, 0.367613,
		0.670611, -0.731802, 0.121435,
		40.077164, 36.095760, 11.712544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188648, 36.893040, 11.427974>,  <39.607735, 36.608021, 11.627540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188648, 36.893040, 11.427974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.237919, 36.498367, 11.385483>,  <40.267479, 36.261562, 11.359988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.237919, 36.498367, 11.385483>,  <40.188648, 36.893040, 11.427974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237919, 36.498367, 11.385483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359404, 0.144127, -0.921985,
		0.925018, 0.075384, 0.372371,
		0.123172, -0.986684, -0.106227,
		40.274872, 36.202362, 11.353615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847530, 36.690292, 11.042292>,  <40.188648, 36.893040, 11.427974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847530, 36.690292, 11.042292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679676, 36.328457, 11.012300>,  <40.578964, 36.111355, 10.994305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679676, 36.328457, 11.012300>,  <40.847530, 36.690292, 11.042292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679676, 36.328457, 11.012300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471202, -0.146494, -0.869775,
		0.775807, -0.400318, 0.487719,
		-0.419635, -0.904591, -0.074980,
		40.553787, 36.057079, 10.989805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375820, 36.158932, 10.894596>,  <40.847530, 36.690292, 11.042292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375820, 36.158932, 10.894596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027954, 36.007584, 10.767776>,  <40.819233, 35.916775, 10.691684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027954, 36.007584, 10.767776>,  <41.375820, 36.158932, 10.894596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027954, 36.007584, 10.767776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367896, -0.068541, -0.927337,
		0.329144, -0.923114, 0.198808,
		-0.869665, -0.378368, -0.317050,
		40.767056, 35.894073, 10.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565113, 35.538269, 10.584989>,  <41.375820, 36.158932, 10.894596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565113, 35.538269, 10.584989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.205757, 35.623520, 10.431376>,  <40.990143, 35.674671, 10.339210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.205757, 35.623520, 10.431376>,  <41.565113, 35.538269, 10.584989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205757, 35.623520, 10.431376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328084, -0.255664, -0.909394,
		-0.292001, -0.942980, 0.159761,
		-0.898385, 0.213129, -0.384031,
		40.936241, 35.687458, 10.316167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411953, 34.989506, 9.891964>,  <41.565113, 35.538269, 10.584989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411953, 34.989506, 9.891964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143276, 35.282482, 9.847500>,  <40.982071, 35.458267, 9.820821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143276, 35.282482, 9.847500>,  <41.411953, 34.989506, 9.891964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143276, 35.282482, 9.847500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096756, -0.062031, -0.993373,
		-0.734486, -0.677995, -0.029203,
		-0.671691, 0.732445, -0.111161,
		40.941769, 35.502216, 9.814152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933430, 34.873211, 9.308026>,  <41.411953, 34.989506, 9.891964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933430, 34.873211, 9.308026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962692, 35.271729, 9.326115>,  <40.980247, 35.510838, 9.336967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962692, 35.271729, 9.326115>,  <40.933430, 34.873211, 9.308026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962692, 35.271729, 9.326115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046824, 0.048722, -0.997714,
		-0.996221, 0.070869, 0.050215,
		0.073154, 0.996295, 0.045220,
		40.984638, 35.570618, 9.339681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.914772, 37.674061, 24.941595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012863, 38.044033, 24.825417>,  <37.071720, 38.266018, 24.755709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012863, 38.044033, 24.825417>,  <36.914772, 37.674061, 24.941595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012863, 38.044033, 24.825417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225051, -0.345724, -0.910949,
		-0.942981, 0.158028, -0.292939,
		0.245231, 0.924934, -0.290447,
		37.086433, 38.321514, 24.738283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615208, 37.730068, 24.259306>,  <36.914772, 37.674061, 24.941595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615208, 37.730068, 24.259306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904346, 38.005470, 24.282827>,  <37.077827, 38.170712, 24.296940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904346, 38.005470, 24.282827>,  <36.615208, 37.730068, 24.259306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904346, 38.005470, 24.282827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390083, -0.336328, -0.857157,
		-0.570378, 0.642531, -0.511686,
		0.722845, 0.688504, 0.058806,
		37.121201, 38.212021, 24.300468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543739, 37.997528, 23.565378>,  <36.615208, 37.730068, 24.259306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543739, 37.997528, 23.565378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884888, 38.132404, 23.724831>,  <37.089577, 38.213329, 23.820501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884888, 38.132404, 23.724831>,  <36.543739, 37.997528, 23.565378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884888, 38.132404, 23.724831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469173, -0.159960, -0.868498,
		-0.229087, 0.927747, -0.294628,
		0.852875, 0.337193, 0.398629,
		37.140751, 38.233562, 23.844419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862125, 38.357098, 23.131069>,  <36.543739, 37.997528, 23.565378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862125, 38.357098, 23.131069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173336, 38.237030, 23.351820>,  <37.360062, 38.164989, 23.484270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173336, 38.237030, 23.351820>,  <36.862125, 38.357098, 23.131069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173336, 38.237030, 23.351820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517612, -0.191535, -0.833902,
		0.356013, 0.934459, 0.006349,
		0.778031, -0.300167, 0.551876,
		37.406746, 38.146980, 23.517384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477615, 38.583736, 22.835018>,  <36.862125, 38.357098, 23.131069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477615, 38.583736, 22.835018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597649, 38.264633, 23.044218>,  <37.669670, 38.073170, 23.169737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597649, 38.264633, 23.044218>,  <37.477615, 38.583736, 22.835018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597649, 38.264633, 23.044218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511299, -0.328339, -0.794208,
		0.805308, 0.505739, 0.309364,
		0.300086, -0.797760, 0.522998,
		37.687675, 38.025307, 23.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240955, 38.455940, 22.758707>,  <37.477615, 38.583736, 22.835018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240955, 38.455940, 22.758707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112789, 38.098164, 22.883486>,  <38.035889, 37.883499, 22.958353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112789, 38.098164, 22.883486>,  <38.240955, 38.455940, 22.758707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112789, 38.098164, 22.883486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644384, -0.447185, -0.620318,
		0.694335, 0.002252, 0.719649,
		-0.320419, -0.894439, 0.311947,
		38.016663, 37.829830, 22.977070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764256, 38.135845, 22.721518>,  <38.240955, 38.455940, 22.758707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764256, 38.135845, 22.721518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508236, 37.831501, 22.764288>,  <38.354626, 37.648895, 22.789951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508236, 37.831501, 22.764288>,  <38.764256, 38.135845, 22.721518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508236, 37.831501, 22.764288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605728, -0.585299, -0.538998,
		0.472686, -0.280215, 0.835492,
		-0.640049, -0.760858, 0.106928,
		38.316223, 37.603245, 22.796366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112652, 37.546024, 22.801472>,  <38.764256, 38.135845, 22.721518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112652, 37.546024, 22.801472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763687, 37.432999, 22.641945>,  <38.554306, 37.365185, 22.546228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763687, 37.432999, 22.641945>,  <39.112652, 37.546024, 22.801472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763687, 37.432999, 22.641945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488387, -0.536211, -0.688445,
		-0.019323, -0.795385, 0.605797,
		-0.872413, -0.282560, -0.398817,
		38.501965, 37.348232, 22.522301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274494, 36.850384, 22.542831>,  <39.112652, 37.546024, 22.801472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274494, 36.850384, 22.542831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924191, 36.954754, 22.380367>,  <38.714008, 37.017376, 22.282888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924191, 36.954754, 22.380367>,  <39.274494, 36.850384, 22.542831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924191, 36.954754, 22.380367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238933, -0.496794, -0.834330,
		-0.419476, -0.827716, 0.372728,
		-0.875758, 0.260924, -0.406161,
		38.661465, 37.033031, 22.258518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013840, 36.238911, 22.238684>,  <39.274494, 36.850384, 22.542831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013840, 36.238911, 22.238684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808662, 36.531765, 22.059410>,  <38.685555, 36.707478, 21.951845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.808662, 36.531765, 22.059410>,  <39.013840, 36.238911, 22.238684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808662, 36.531765, 22.059410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157847, -0.432756, -0.887585,
		-0.843783, -0.526028, 0.106416,
		-0.512947, 0.732132, -0.448184,
		38.654778, 36.751404, 21.924955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441151, 35.969166, 21.858593>,  <39.013840, 36.238911, 22.238684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441151, 35.969166, 21.858593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500385, 36.323994, 21.683695>,  <38.535927, 36.536888, 21.578756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500385, 36.323994, 21.683695>,  <38.441151, 35.969166, 21.858593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500385, 36.323994, 21.683695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139949, -0.456469, -0.878664,
		-0.979022, 0.068929, -0.191742,
		0.148090, 0.887065, -0.437246,
		38.544811, 36.590115, 21.552521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990143, 36.089493, 21.254002>,  <38.441151, 35.969166, 21.858593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990143, 36.089493, 21.254002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.308197, 36.326981, 21.204607>,  <38.499031, 36.469475, 21.174971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.308197, 36.326981, 21.204607>,  <37.990143, 36.089493, 21.254002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308197, 36.326981, 21.204607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155621, -0.396585, -0.904711,
		-0.586120, 0.700153, -0.407736,
		0.795139, 0.593722, -0.123488,
		38.546738, 36.505096, 21.167561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247669, 36.121632, 21.128059>,  <37.990143, 36.089493, 21.254002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247669, 36.121632, 21.128059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997261, 35.813210, 21.081463>,  <36.847015, 35.628155, 21.053505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997261, 35.813210, 21.081463>,  <37.247669, 36.121632, 21.128059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997261, 35.813210, 21.081463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382579, 0.173512, 0.907484,
		-0.679511, 0.612667, -0.403612,
		-0.626017, -0.771059, -0.116491,
		36.809456, 35.581890, 21.046516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632442, 36.341244, 21.267033>,  <37.247669, 36.121632, 21.128059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632442, 36.341244, 21.267033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557659, 35.951298, 21.315512>,  <36.512787, 35.717331, 21.344599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557659, 35.951298, 21.315512>,  <36.632442, 36.341244, 21.267033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557659, 35.951298, 21.315512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448609, 0.194483, 0.872311,
		-0.873954, 0.108718, -0.473693,
		-0.186961, -0.974863, 0.121197,
		36.501572, 35.658840, 21.351871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953571, 36.334053, 21.461979>,  <36.632442, 36.341244, 21.267033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953571, 36.334053, 21.461979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119026, 35.994324, 21.593155>,  <36.218300, 35.790485, 21.671862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119026, 35.994324, 21.593155>,  <35.953571, 36.334053, 21.461979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119026, 35.994324, 21.593155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448479, 0.123388, 0.885236,
		-0.792319, -0.513243, -0.329867,
		0.413639, -0.849328, 0.327941,
		36.243118, 35.739525, 21.691538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414307, 36.104584, 21.769754>,  <35.953571, 36.334053, 21.461979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414307, 36.104584, 21.769754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710167, 35.887890, 21.929472>,  <35.887684, 35.757874, 22.025303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710167, 35.887890, 21.929472>,  <35.414307, 36.104584, 21.769754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710167, 35.887890, 21.929472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431478, 0.073592, 0.899117,
		-0.516468, -0.837321, -0.179315,
		0.739653, -0.541736, 0.399294,
		35.932064, 35.725368, 22.049259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048344, 35.611607, 22.094423>,  <35.414307, 36.104584, 21.769754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048344, 35.611607, 22.094423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413200, 35.633804, 22.256863>,  <35.632114, 35.647121, 22.354326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.413200, 35.633804, 22.256863>,  <35.048344, 35.611607, 22.094423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413200, 35.633804, 22.256863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407994, 0.028195, 0.912549,
		0.039222, -0.998059, 0.048372,
		0.912141, 0.055528, 0.406096,
		35.686844, 35.650452, 22.378693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054924, 35.082893, 22.588491>,  <35.048344, 35.611607, 22.094423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054924, 35.082893, 22.588491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338295, 35.352619, 22.671856>,  <35.508316, 35.514454, 22.721874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338295, 35.352619, 22.671856>,  <35.054924, 35.082893, 22.588491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338295, 35.352619, 22.671856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353692, 0.083646, 0.931614,
		0.610768, -0.733692, 0.297756,
		0.708425, 0.674314, 0.208413,
		35.550823, 35.554913, 22.734381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254440, 34.826233, 23.193121>,  <35.054924, 35.082893, 22.588491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254440, 34.826233, 23.193121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.368183, 35.205425, 23.135885>,  <35.436428, 35.432941, 23.101543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.368183, 35.205425, 23.135885>,  <35.254440, 34.826233, 23.193121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368183, 35.205425, 23.135885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117379, 0.182553, 0.976164,
		0.951506, -0.260783, 0.163183,
		0.284357, 0.947980, -0.143090,
		35.453491, 35.489819, 23.092958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627659, 35.058243, 23.696766>,  <35.254440, 34.826233, 23.193121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627659, 35.058243, 23.696766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477715, 35.405403, 23.566399>,  <35.387749, 35.613701, 23.488178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477715, 35.405403, 23.566399>,  <35.627659, 35.058243, 23.696766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477715, 35.405403, 23.566399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164275, 0.283807, 0.944705,
		0.912411, 0.407671, 0.036187,
		-0.374859, 0.867904, -0.325919,
		35.365257, 35.665775, 23.468622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803787, 35.438614, 24.265354>,  <35.627659, 35.058243, 23.696766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803787, 35.438614, 24.265354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556751, 35.679516, 24.063017>,  <35.408531, 35.824055, 23.941614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556751, 35.679516, 24.063017>,  <35.803787, 35.438614, 24.265354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556751, 35.679516, 24.063017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248949, 0.460396, 0.852091,
		0.746062, 0.652171, -0.134405,
		-0.617589, 0.602253, -0.505841,
		35.371475, 35.860191, 23.911264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875420, 36.105427, 24.543711>,  <35.803787, 35.438614, 24.265354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875420, 36.105427, 24.543711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519772, 36.137478, 24.363468>,  <35.306381, 36.156708, 24.255323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519772, 36.137478, 24.363468>,  <35.875420, 36.105427, 24.543711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519772, 36.137478, 24.363468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343663, 0.533340, 0.772945,
		0.302260, 0.842097, -0.446666,
		-0.889120, 0.080128, -0.450605,
		35.253036, 36.161518, 24.228287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709461, 36.802410, 24.541567>,  <35.875420, 36.105427, 24.543711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709461, 36.802410, 24.541567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337994, 36.672699, 24.469545>,  <35.115112, 36.594872, 24.426332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337994, 36.672699, 24.469545>,  <35.709461, 36.802410, 24.541567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337994, 36.672699, 24.469545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355099, 0.637064, 0.684146,
		-0.107145, 0.699282, -0.706771,
		-0.928668, -0.324276, -0.180056,
		35.059395, 36.575417, 24.415529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257607, 37.378532, 24.572645>,  <35.709461, 36.802410, 24.541567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257607, 37.378532, 24.572645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003906, 37.076134, 24.637398>,  <34.851688, 36.894695, 24.676249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003906, 37.076134, 24.637398>,  <35.257607, 37.378532, 24.572645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003906, 37.076134, 24.637398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319658, 0.447069, 0.835433,
		-0.703953, 0.478124, -0.525211,
		-0.634246, -0.755994, 0.161879,
		34.813633, 36.849335, 24.685961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635857, 37.719101, 24.789406>,  <35.257607, 37.378532, 24.572645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635857, 37.719101, 24.789406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615978, 37.341846, 24.920879>,  <34.604053, 37.115494, 24.999763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615978, 37.341846, 24.920879>,  <34.635857, 37.719101, 24.789406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615978, 37.341846, 24.920879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354767, 0.324297, 0.876910,
		-0.933633, -0.073030, -0.350708,
		-0.049693, -0.943132, 0.328683,
		34.601070, 37.058907, 25.019484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003529, 37.598320, 24.991259>,  <34.635857, 37.719101, 24.789406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003529, 37.598320, 24.991259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237453, 37.341534, 25.189602>,  <34.377808, 37.187462, 25.308609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237453, 37.341534, 25.189602>,  <34.003529, 37.598320, 24.991259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237453, 37.341534, 25.189602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352063, 0.349840, 0.868138,
		-0.730783, -0.682274, -0.021419,
		0.584814, -0.641961, 0.495860,
		34.412899, 37.148945, 25.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601055, 37.468052, 25.583941>,  <34.003529, 37.598320, 24.991259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601055, 37.468052, 25.583941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961956, 37.321526, 25.674938>,  <34.178497, 37.233608, 25.729538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961956, 37.321526, 25.674938>,  <33.601055, 37.468052, 25.583941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961956, 37.321526, 25.674938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141980, 0.245788, 0.958869,
		-0.407167, -0.897440, 0.169753,
		0.902250, -0.366319, 0.227495,
		34.232632, 37.211632, 25.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092686, 37.985760, 25.655174>,  <33.601055, 37.468052, 25.583941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092686, 37.985760, 25.655174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838078, 38.294224, 25.650372>,  <32.685310, 38.479301, 25.647490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838078, 38.294224, 25.650372>,  <33.092686, 37.985760, 25.655174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838078, 38.294224, 25.650372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158916, -0.146373, -0.976381,
		-0.754707, -0.619582, 0.215720,
		-0.636524, 0.771164, -0.012007,
		32.647121, 38.525574, 25.646769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352558, 37.738415, 25.465296>,  <33.092686, 37.985760, 25.655174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352558, 37.738415, 25.465296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396297, 38.114868, 25.337355>,  <32.422539, 38.340740, 25.260590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396297, 38.114868, 25.337355>,  <32.352558, 37.738415, 25.465296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396297, 38.114868, 25.337355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177599, -0.298105, -0.937866,
		-0.978010, 0.159355, 0.134549,
		0.109344, 0.941137, -0.319851,
		32.429100, 38.397209, 25.241400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857437, 37.876759, 25.049601>,  <32.352558, 37.738415, 25.465296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857437, 37.876759, 25.049601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139416, 38.136696, 24.935928>,  <32.308601, 38.292656, 24.867725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139416, 38.136696, 24.935928>,  <31.857437, 37.876759, 25.049601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139416, 38.136696, 24.935928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138802, -0.266525, -0.953781,
		-0.695546, 0.711809, -0.097686,
		0.704946, 0.649840, -0.284181,
		32.350899, 38.331650, 24.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637861, 38.088535, 24.404457>,  <31.857437, 37.876759, 25.049601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637861, 38.088535, 24.404457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998150, 38.261086, 24.384007>,  <32.214321, 38.364616, 24.371737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998150, 38.261086, 24.384007>,  <31.637861, 38.088535, 24.404457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998150, 38.261086, 24.384007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015563, -0.149666, -0.988614,
		-0.434120, 0.889669, -0.141521,
		0.900720, 0.431380, -0.051127,
		32.268368, 38.390499, 24.368668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658772, 38.606941, 23.815123>,  <31.637861, 38.088535, 24.404457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658772, 38.606941, 23.815123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044876, 38.518787, 23.871275>,  <32.276539, 38.465897, 23.904966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044876, 38.518787, 23.871275>,  <31.658772, 38.606941, 23.815123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044876, 38.518787, 23.871275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114855, -0.124707, -0.985523,
		0.234697, 0.967409, -0.095063,
		0.965259, -0.220381, 0.140380,
		32.334454, 38.452675, 23.913389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104862, 38.954849, 23.259087>,  <31.658772, 38.606941, 23.815123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104862, 38.954849, 23.259087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311390, 38.636116, 23.384605>,  <32.435307, 38.444874, 23.459917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.311390, 38.636116, 23.384605>,  <32.104862, 38.954849, 23.259087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311390, 38.636116, 23.384605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168766, -0.264557, -0.949488,
		0.839604, 0.543194, -0.002116,
		0.516316, -0.796837, 0.313796,
		32.466286, 38.397064, 23.478745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613663, 39.029697, 22.840405>,  <32.104862, 38.954849, 23.259087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613663, 39.029697, 22.840405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638119, 38.647156, 22.954702>,  <32.652790, 38.417629, 23.023281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638119, 38.647156, 22.954702>,  <32.613663, 39.029697, 22.840405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638119, 38.647156, 22.954702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169029, -0.272224, -0.947271,
		0.983713, 0.106212, 0.145009,
		0.061137, -0.956354, 0.285744,
		32.656460, 38.360249, 23.040426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152592, 38.808128, 22.580050>,  <32.613663, 39.029697, 22.840405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152592, 38.808128, 22.580050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945461, 38.474022, 22.654015>,  <32.821182, 38.273560, 22.698393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945461, 38.474022, 22.654015>,  <33.152592, 38.808128, 22.580050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945461, 38.474022, 22.654015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349629, -0.403902, -0.845354,
		0.780779, -0.373095, 0.501183,
		-0.517826, -0.835262, 0.184913,
		32.790112, 38.223442, 22.709488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709305, 38.329643, 22.408691>,  <33.152592, 38.808128, 22.580050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709305, 38.329643, 22.408691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370354, 38.117420, 22.400206>,  <33.166981, 37.990086, 22.395115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370354, 38.117420, 22.400206>,  <33.709305, 38.329643, 22.408691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370354, 38.117420, 22.400206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291956, -0.432182, -0.853217,
		0.443517, -0.729193, 0.521123,
		-0.847381, -0.530562, -0.021212,
		33.116138, 37.958252, 22.393843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854805, 37.636948, 22.316189>,  <33.709305, 38.329643, 22.408691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854805, 37.636948, 22.316189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484268, 37.692684, 22.176199>,  <33.261948, 37.726124, 22.092205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484268, 37.692684, 22.176199>,  <33.854805, 37.636948, 22.316189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484268, 37.692684, 22.176199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251768, -0.462060, -0.850361,
		-0.280197, -0.875834, 0.392943,
		-0.926339, 0.139338, -0.349975,
		33.206367, 37.734486, 22.071207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682224, 36.984829, 21.973112>,  <33.854805, 37.636948, 22.316189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682224, 36.984829, 21.973112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394913, 37.220287, 21.824749>,  <33.222527, 37.361561, 21.735731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394913, 37.220287, 21.824749>,  <33.682224, 36.984829, 21.973112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394913, 37.220287, 21.824749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126656, -0.413567, -0.901621,
		-0.684129, -0.694594, 0.222502,
		-0.718280, 0.588644, -0.370907,
		33.179428, 37.396881, 21.713476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332436, 36.612682, 21.472183>,  <33.682224, 36.984829, 21.973112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332436, 36.612682, 21.472183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235722, 36.984299, 21.360168>,  <33.177692, 37.207268, 21.292959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235722, 36.984299, 21.360168>,  <33.332436, 36.612682, 21.472183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235722, 36.984299, 21.360168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130958, -0.254717, -0.958107,
		-0.961451, -0.268332, -0.060078,
		-0.241788, 0.929041, -0.280038,
		33.163185, 37.263012, 21.276157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911766, 36.523354, 20.902607>,  <33.332436, 36.612682, 21.472183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911766, 36.523354, 20.902607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075768, 36.888130, 20.909029>,  <33.174168, 37.106995, 20.912882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075768, 36.888130, 20.909029>,  <32.911766, 36.523354, 20.902607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075768, 36.888130, 20.909029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279539, -0.108887, -0.953940,
		-0.868191, 0.395606, -0.299567,
		0.410003, 0.911943, 0.016053,
		33.198769, 37.161713, 20.913845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840195, 36.687683, 20.271996>,  <32.911766, 36.523354, 20.902607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840195, 36.687683, 20.271996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079041, 36.989788, 20.380091>,  <33.222347, 37.171051, 20.444948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079041, 36.989788, 20.380091>,  <32.840195, 36.687683, 20.271996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079041, 36.989788, 20.380091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369073, 0.040441, -0.928520,
		-0.712206, 0.654173, -0.254599,
		0.597116, 0.755263, 0.270240,
		33.258175, 37.216366, 20.461163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735157, 37.255344, 19.813963>,  <32.840195, 36.687683, 20.271996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735157, 37.255344, 19.813963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098682, 37.341736, 19.956747>,  <33.316795, 37.393570, 20.042418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098682, 37.341736, 19.956747>,  <32.735157, 37.255344, 19.813963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098682, 37.341736, 19.956747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326547, 0.164308, -0.930790,
		-0.259679, 0.962475, 0.078799,
		0.908809, 0.215975, 0.356960,
		33.371326, 37.406528, 20.063835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918037, 38.002636, 19.646002>,  <32.735157, 37.255344, 19.813963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918037, 38.002636, 19.646002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258759, 37.813957, 19.737160>,  <33.463192, 37.700748, 19.791855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258759, 37.813957, 19.737160>,  <32.918037, 38.002636, 19.646002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258759, 37.813957, 19.737160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412095, 0.334755, -0.847418,
		0.323435, 0.815746, 0.479529,
		0.851802, -0.471696, 0.227894,
		33.514297, 37.672447, 19.805529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450943, 38.497047, 19.570793>,  <32.918037, 38.002636, 19.646002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450943, 38.497047, 19.570793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665218, 38.160130, 19.546881>,  <33.793785, 37.957977, 19.532534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665218, 38.160130, 19.546881>,  <33.450943, 38.497047, 19.570793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665218, 38.160130, 19.546881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426216, 0.330826, -0.841959,
		0.728955, 0.425550, 0.536220,
		0.535691, -0.842295, -0.059781,
		33.825924, 37.907440, 19.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141029, 38.727314, 19.432459>,  <33.450943, 38.497047, 19.570793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141029, 38.727314, 19.432459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086205, 38.353722, 19.300457>,  <34.053310, 38.129566, 19.221256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086205, 38.353722, 19.300457>,  <34.141029, 38.727314, 19.432459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086205, 38.353722, 19.300457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415871, 0.248111, -0.874924,
		0.899037, -0.257154, 0.354408,
		-0.137057, -0.933977, -0.330004,
		34.045086, 38.073528, 19.201456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730461, 38.511726, 19.185951>,  <34.141029, 38.727314, 19.432459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730461, 38.511726, 19.185951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511547, 38.241608, 18.988184>,  <34.380199, 38.079536, 18.869522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511547, 38.241608, 18.988184>,  <34.730461, 38.511726, 19.185951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511547, 38.241608, 18.988184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557422, 0.146553, -0.817192,
		0.624305, -0.722840, 0.296218,
		-0.547288, -0.675296, -0.494420,
		34.347363, 38.039021, 18.839857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212097, 38.044918, 18.749588>,  <34.730461, 38.511726, 19.185951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212097, 38.044918, 18.749588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836861, 38.003403, 18.617397>,  <34.611717, 37.978493, 18.538082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836861, 38.003403, 18.617397>,  <35.212097, 38.044918, 18.749588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836861, 38.003403, 18.617397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339506, -0.086212, -0.936645,
		0.068721, -0.990856, 0.116111,
		-0.938090, -0.103788, -0.330477,
		34.555435, 37.972267, 18.518255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356197, 37.577946, 18.181526>,  <35.212097, 38.044918, 18.749588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356197, 37.577946, 18.181526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981258, 37.703278, 18.120588>,  <34.756294, 37.778477, 18.084026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981258, 37.703278, 18.120588>,  <35.356197, 37.577946, 18.181526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981258, 37.703278, 18.120588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126531, -0.101262, -0.986781,
		-0.324611, -0.944231, 0.055272,
		-0.937346, 0.313326, -0.152345,
		34.700054, 37.797276, 18.074884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215012, 37.286247, 17.625700>,  <35.356197, 37.577946, 18.181526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215012, 37.286247, 17.625700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940426, 37.576687, 17.641422>,  <34.775677, 37.750950, 17.650856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940426, 37.576687, 17.641422>,  <35.215012, 37.286247, 17.625700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940426, 37.576687, 17.641422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086373, -0.027750, -0.995876,
		-0.722018, -0.687025, 0.081765,
		-0.686461, 0.726103, 0.039304,
		34.734486, 37.794518, 17.653214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807560, 37.042736, 17.250534>,  <35.215012, 37.286247, 17.625700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807560, 37.042736, 17.250534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724064, 37.433891, 17.245415>,  <34.673965, 37.668583, 17.242342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724064, 37.433891, 17.245415>,  <34.807560, 37.042736, 17.250534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724064, 37.433891, 17.245415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003748, -0.013888, -0.999897,
		-0.977963, -0.208675, 0.006564,
		-0.208744, 0.977886, -0.012800,
		34.661442, 37.727257, 17.241575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377464, 37.115742, 16.655220>,  <34.807560, 37.042736, 17.250534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377464, 37.115742, 16.655220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506073, 37.491329, 16.704147>,  <34.583237, 37.716682, 16.733503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506073, 37.491329, 16.704147>,  <34.377464, 37.115742, 16.655220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506073, 37.491329, 16.704147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122966, 0.086682, -0.988618,
		-0.938886, 0.332899, -0.087592,
		0.321517, 0.938970, 0.122320,
		34.602528, 37.773022, 16.740843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852032, 37.566032, 16.271389>,  <34.377464, 37.115742, 16.655220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852032, 37.566032, 16.271389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195568, 37.763855, 16.324770>,  <34.401688, 37.882549, 16.356798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195568, 37.763855, 16.324770>,  <33.852032, 37.566032, 16.271389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195568, 37.763855, 16.324770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032790, 0.206910, -0.977810,
		-0.511196, 0.844157, 0.161486,
		0.858838, 0.494557, 0.133451,
		34.453220, 37.912224, 16.364805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752144, 38.258156, 16.011992>,  <33.852032, 37.566032, 16.271389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752144, 38.258156, 16.011992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131012, 38.131016, 15.994799>,  <34.358334, 38.054733, 15.984483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131012, 38.131016, 15.994799>,  <33.752144, 38.258156, 16.011992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131012, 38.131016, 15.994799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030003, 0.221227, -0.974761,
		0.319337, 0.921971, 0.219075,
		0.947166, -0.317850, -0.042984,
		34.415161, 38.035660, 15.981904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015232, 38.635387, 15.367308>,  <33.752144, 38.258156, 16.011992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015232, 38.635387, 15.367308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303284, 38.370934, 15.451518>,  <34.476112, 38.212261, 15.502045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303284, 38.370934, 15.451518>,  <34.015232, 38.635387, 15.367308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303284, 38.370934, 15.451518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264012, -0.019502, -0.964322,
		0.641651, 0.750015, 0.160503,
		0.720126, -0.661133, 0.210526,
		34.519321, 38.172592, 15.514676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516354, 39.205910, 15.516159>,  <34.015232, 38.635387, 15.367308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516354, 39.205910, 15.516159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613152, 39.589844, 15.459366>,  <34.671230, 39.820202, 15.425290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613152, 39.589844, 15.459366>,  <34.516354, 39.205910, 15.516159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613152, 39.589844, 15.459366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044660, 0.157195, 0.986557,
		0.969249, -0.232400, 0.080907,
		0.241994, 0.959833, -0.141982,
		34.685749, 39.877792, 15.416771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849728, 39.327847, 16.099157>,  <34.516354, 39.205910, 15.516159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849728, 39.327847, 16.099157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744320, 39.678894, 15.938988>,  <34.681076, 39.889523, 15.842886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744320, 39.678894, 15.938988>,  <34.849728, 39.327847, 16.099157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744320, 39.678894, 15.938988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117081, 0.382931, 0.916327,
		0.957523, 0.288351, 0.001843,
		-0.263518, 0.877620, -0.400426,
		34.665264, 39.942181, 15.818860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241100, 39.836559, 16.404785>,  <34.849728, 39.327847, 16.099157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241100, 39.836559, 16.404785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909702, 40.022938, 16.280531>,  <34.710865, 40.134766, 16.205978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909702, 40.022938, 16.280531>,  <35.241100, 39.836559, 16.404785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909702, 40.022938, 16.280531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093108, 0.432367, 0.896878,
		0.552209, 0.771977, -0.314829,
		-0.828490, 0.465951, -0.310634,
		34.661156, 40.162724, 16.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179073, 40.523529, 16.732359>,  <35.241100, 39.836559, 16.404785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179073, 40.523529, 16.732359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802589, 40.445103, 16.622318>,  <34.576698, 40.398045, 16.556293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802589, 40.445103, 16.622318>,  <35.179073, 40.523529, 16.732359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802589, 40.445103, 16.622318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335282, 0.442463, 0.831753,
		-0.041359, 0.875090, -0.482189,
		-0.941210, -0.196070, -0.275102,
		34.520226, 40.386280, 16.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818314, 41.061314, 17.080042>,  <35.179073, 40.523529, 16.732359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818314, 41.061314, 17.080042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517719, 40.813435, 16.989500>,  <34.337364, 40.664707, 16.935175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517719, 40.813435, 16.989500>,  <34.818314, 41.061314, 17.080042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517719, 40.813435, 16.989500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552827, 0.404226, 0.728686,
		-0.360069, 0.672734, -0.646358,
		-0.751487, -0.619701, -0.226356,
		34.292274, 40.627525, 16.921593>
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
