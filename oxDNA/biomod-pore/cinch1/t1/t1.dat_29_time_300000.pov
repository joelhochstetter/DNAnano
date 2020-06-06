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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.101204, 32.008629, 22.916462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475540, 32.106091, 22.814613>,  <42.700142, 32.164566, 22.753504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475540, 32.106091, 22.814613>,  <42.101204, 32.008629, 22.916462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475540, 32.106091, 22.814613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341047, 0.444074, -0.828544,
		-0.088805, 0.862225, 0.498680,
		0.935842, 0.243653, -0.254623,
		42.756294, 32.179188, 22.738226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049717, 32.691605, 22.663591>,  <42.101204, 32.008629, 22.916462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049717, 32.691605, 22.663591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381836, 32.543320, 22.497135>,  <42.581108, 32.454350, 22.397261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381836, 32.543320, 22.497135>,  <42.049717, 32.691605, 22.663591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381836, 32.543320, 22.497135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126874, 0.601355, -0.788844,
		0.542681, 0.707776, 0.452272,
		0.830301, -0.370710, -0.416142,
		42.630928, 32.432106, 22.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216881, 33.221584, 22.387154>,  <42.049717, 32.691605, 22.663591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216881, 33.221584, 22.387154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382046, 32.918701, 22.184715>,  <42.481144, 32.736973, 22.063251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382046, 32.918701, 22.184715>,  <42.216881, 33.221584, 22.387154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382046, 32.918701, 22.184715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114437, 0.508143, -0.853636,
		0.903551, 0.410396, 0.123167,
		0.412916, -0.757209, -0.506098,
		42.505920, 32.691540, 22.032887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800343, 33.412338, 22.002604>,  <42.216881, 33.221584, 22.387154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800343, 33.412338, 22.002604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602692, 33.117622, 21.818005>,  <42.484100, 32.940792, 21.707245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602692, 33.117622, 21.818005>,  <42.800343, 33.412338, 22.002604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602692, 33.117622, 21.818005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086804, 0.569990, -0.817053,
		0.865042, -0.363673, -0.345606,
		-0.494132, -0.736786, -0.461498,
		42.454453, 32.896587, 21.679556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383503, 33.740696, 21.640678>,  <42.800343, 33.412338, 22.002604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383503, 33.740696, 21.640678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150398, 33.484665, 21.440399>,  <43.010536, 33.331047, 21.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150398, 33.484665, 21.440399>,  <43.383503, 33.740696, 21.640678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150398, 33.484665, 21.440399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744492, -0.173520, -0.644688,
		0.325767, -0.748462, 0.577651,
		-0.582758, -0.640075, -0.500697,
		42.975571, 33.292641, 21.290190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651588, 33.097233, 21.685152>,  <43.383503, 33.740696, 21.640678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651588, 33.097233, 21.685152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449837, 33.179100, 21.349602>,  <43.328785, 33.228222, 21.148272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449837, 33.179100, 21.349602>,  <43.651588, 33.097233, 21.685152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449837, 33.179100, 21.349602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857571, 0.005271, -0.514339,
		-0.100847, -0.978817, -0.178176,
		-0.504383, 0.204668, -0.838873,
		43.298523, 33.240501, 21.097940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861778, 32.651848, 21.178646>,  <43.651588, 33.097233, 21.685152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861778, 32.651848, 21.178646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716030, 32.972633, 20.989296>,  <43.628582, 33.165104, 20.875685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716030, 32.972633, 20.989296>,  <43.861778, 32.651848, 21.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716030, 32.972633, 20.989296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894041, 0.158976, -0.418829,
		-0.260632, -0.575826, -0.774917,
		-0.364366, 0.801967, -0.473377,
		43.606720, 33.213223, 20.847282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036697, 32.554054, 20.513643>,  <43.861778, 32.651848, 21.178646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036697, 32.554054, 20.513643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965096, 32.947380, 20.526600>,  <43.922134, 33.183376, 20.534374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965096, 32.947380, 20.526600>,  <44.036697, 32.554054, 20.513643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965096, 32.947380, 20.526600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854612, 0.171722, -0.490051,
		-0.487436, -0.060041, -0.871092,
		-0.179009, 0.983314, 0.032391,
		43.911392, 33.242374, 20.536318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220757, 32.725121, 19.948755>,  <44.036697, 32.554054, 20.513643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220757, 32.725121, 19.948755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194435, 33.094040, 20.101086>,  <44.178642, 33.315392, 20.192484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194435, 33.094040, 20.101086>,  <44.220757, 32.725121, 19.948755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194435, 33.094040, 20.101086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798322, 0.277626, -0.534421,
		-0.598625, 0.268853, -0.754563,
		-0.065806, 0.922302, 0.380826,
		44.174694, 33.370731, 20.215334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108925, 33.170383, 19.418163>,  <44.220757, 32.725121, 19.948755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108925, 33.170383, 19.418163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262466, 33.389225, 19.715710>,  <44.354591, 33.520531, 19.894238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262466, 33.389225, 19.715710>,  <44.108925, 33.170383, 19.418163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262466, 33.389225, 19.715710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752531, 0.281498, -0.595361,
		-0.535119, 0.788315, -0.303656,
		0.383854, 0.547100, 0.743867,
		44.377621, 33.553356, 19.938869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084366, 33.880089, 19.262671>,  <44.108925, 33.170383, 19.418163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084366, 33.880089, 19.262671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375927, 33.804932, 19.526005>,  <44.550861, 33.759838, 19.684006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375927, 33.804932, 19.526005>,  <44.084366, 33.880089, 19.262671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375927, 33.804932, 19.526005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659470, 0.450944, -0.601455,
		-0.183863, 0.872551, 0.452602,
		0.728899, -0.187892, 0.658333,
		44.594597, 33.748566, 19.723505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622856, 34.332500, 19.044504>,  <44.084366, 33.880089, 19.262671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622856, 34.332500, 19.044504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824547, 34.100273, 19.300220>,  <44.945560, 33.960938, 19.453651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824547, 34.100273, 19.300220>,  <44.622856, 34.332500, 19.044504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824547, 34.100273, 19.300220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820194, 0.090288, -0.564916,
		0.270251, 0.809191, 0.521703,
		0.504229, -0.580567, 0.639293,
		44.975815, 33.926102, 19.492008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313641, 34.674236, 19.216766>,  <44.622856, 34.332500, 19.044504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313641, 34.674236, 19.216766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375050, 34.290348, 19.310886>,  <45.411896, 34.060017, 19.367359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375050, 34.290348, 19.310886>,  <45.313641, 34.674236, 19.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375050, 34.290348, 19.310886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867935, 0.017138, -0.496382,
		0.472355, 0.280432, 0.835606,
		0.153522, -0.959721, 0.235302,
		45.421104, 34.002430, 19.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930309, 34.702320, 19.458628>,  <45.313641, 34.674236, 19.216766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930309, 34.702320, 19.458628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860306, 34.321163, 19.359531>,  <45.818306, 34.092468, 19.300074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860306, 34.321163, 19.359531>,  <45.930309, 34.702320, 19.458628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860306, 34.321163, 19.359531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860782, -0.025934, -0.508313,
		0.477941, -0.302210, 0.824768,
		-0.175007, -0.952889, -0.247742,
		45.807804, 34.035297, 19.285208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672398, 34.378235, 19.313051>,  <45.930309, 34.702320, 19.458628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672398, 34.378235, 19.313051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438622, 34.090195, 19.163448>,  <46.298355, 33.917370, 19.073687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438622, 34.090195, 19.163448>,  <46.672398, 34.378235, 19.313051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438622, 34.090195, 19.163448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753646, -0.310891, -0.579107,
		0.300741, -0.620323, 0.724399,
		-0.584443, -0.720101, -0.374006,
		46.263290, 33.874165, 19.051247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023624, 33.731625, 19.327888>,  <46.672398, 34.378235, 19.313051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023624, 33.731625, 19.327888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756390, 33.682270, 19.034374>,  <46.596050, 33.652657, 18.858267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756390, 33.682270, 19.034374>,  <47.023624, 33.731625, 19.327888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756390, 33.682270, 19.034374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708256, -0.407779, -0.576273,
		-0.228118, -0.904706, 0.359819,
		-0.668084, -0.123386, -0.733784,
		46.555965, 33.645256, 18.814240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191330, 33.136887, 19.031666>,  <47.023624, 33.731625, 19.327888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191330, 33.136887, 19.031666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988087, 33.316216, 18.737499>,  <46.866142, 33.423813, 18.560999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988087, 33.316216, 18.737499>,  <47.191330, 33.136887, 19.031666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988087, 33.316216, 18.737499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643335, -0.370168, -0.670146,
		-0.572670, -0.813623, -0.100339,
		-0.508104, 0.448324, -0.735416,
		46.835655, 33.450714, 18.516874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326923, 32.661983, 18.529606>,  <47.191330, 33.136887, 19.031666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326923, 32.661983, 18.529606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169949, 32.990070, 18.363121>,  <47.075764, 33.186924, 18.263229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169949, 32.990070, 18.363121>,  <47.326923, 32.661983, 18.529606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169949, 32.990070, 18.363121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495225, -0.192900, -0.847078,
		-0.775078, -0.538544, -0.330492,
		-0.392437, 0.820219, -0.416213,
		47.052219, 33.236137, 18.238256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100159, 32.442005, 17.844225>,  <47.326923, 32.661983, 18.529606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100159, 32.442005, 17.844225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147690, 32.839058, 17.834671>,  <47.176208, 33.077290, 17.828938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147690, 32.839058, 17.834671>,  <47.100159, 32.442005, 17.844225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147690, 32.839058, 17.834671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436260, -0.073803, -0.896789,
		-0.891940, 0.096140, -0.441814,
		0.118824, 0.992628, -0.023886,
		47.183338, 33.136845, 17.827505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727669, 32.691704, 17.210295>,  <47.100159, 32.442005, 17.844225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727669, 32.691704, 17.210295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993305, 32.969147, 17.321934>,  <47.152687, 33.135612, 17.388918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993305, 32.969147, 17.321934>,  <46.727669, 32.691704, 17.210295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993305, 32.969147, 17.321934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400696, -0.015019, -0.916088,
		-0.631213, 0.720197, -0.287899,
		0.664088, 0.693607, 0.279100,
		47.192532, 33.177227, 17.405664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.694107, 33.265224, 16.682531>,  <46.727669, 32.691704, 17.210295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.694107, 33.265224, 16.682531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047199, 33.304737, 16.866280>,  <47.259056, 33.328445, 16.976528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047199, 33.304737, 16.866280>,  <46.694107, 33.265224, 16.682531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047199, 33.304737, 16.866280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459477, 0.023050, -0.887891,
		-0.098300, 0.994842, -0.025043,
		0.882733, 0.098786, 0.459372,
		47.312019, 33.334373, 17.004091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935558, 33.811806, 16.357138>,  <46.694107, 33.265224, 16.682531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935558, 33.811806, 16.357138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275288, 33.658096, 16.501907>,  <47.479126, 33.565872, 16.588768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275288, 33.658096, 16.501907>,  <46.935558, 33.811806, 16.357138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275288, 33.658096, 16.501907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460340, 0.203624, -0.864074,
		0.258345, 0.900483, 0.349839,
		0.849320, -0.384275, 0.361923,
		47.530083, 33.542812, 16.610485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411880, 34.206413, 16.064396>,  <46.935558, 33.811806, 16.357138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411880, 34.206413, 16.064396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593121, 33.862312, 16.157928>,  <47.701862, 33.655853, 16.214048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593121, 33.862312, 16.157928>,  <47.411880, 34.206413, 16.064396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593121, 33.862312, 16.157928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396724, -0.040315, -0.917052,
		0.798319, 0.508279, 0.323014,
		0.453096, -0.860248, 0.233831,
		47.729050, 33.604237, 16.228077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.008148, 34.294418, 15.703810>,  <47.411880, 34.206413, 16.064396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.008148, 34.294418, 15.703810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.015705, 33.907501, 15.804992>,  <48.020241, 33.675350, 15.865701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.015705, 33.907501, 15.804992>,  <48.008148, 34.294418, 15.703810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.015705, 33.907501, 15.804992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385122, -0.226436, -0.894655,
		0.922672, 0.114321, 0.368248,
		0.018893, -0.967294, 0.252954,
		48.021374, 33.617313, 15.880877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.655495, 34.036335, 15.591774>,  <48.008148, 34.294418, 15.703810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.655495, 34.036335, 15.591774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429382, 33.706619, 15.579061>,  <48.293716, 33.508789, 15.571433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429382, 33.706619, 15.579061>,  <48.655495, 34.036335, 15.591774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.429382, 33.706619, 15.579061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429554, -0.261247, -0.864426,
		0.704234, -0.502292, 0.501754,
		-0.565276, -0.824289, -0.031783,
		48.259800, 33.459332, 15.569526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.047657, 33.524311, 15.288031>,  <48.655495, 34.036335, 15.591774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.047657, 33.524311, 15.288031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.677437, 33.381725, 15.236983>,  <48.455303, 33.296173, 15.206355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.677437, 33.381725, 15.236983>,  <49.047657, 33.524311, 15.288031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.677437, 33.381725, 15.236983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179729, -0.116978, -0.976736,
		0.333247, -0.926956, 0.172336,
		-0.925551, -0.356469, -0.127618,
		48.399773, 33.274784, 15.198698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.064304, 32.762714, 15.031088>,  <49.047657, 33.524311, 15.288031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.064304, 32.762714, 15.031088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.739323, 32.980564, 14.947845>,  <48.544334, 33.111275, 14.897899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.739323, 32.980564, 14.947845>,  <49.064304, 32.762714, 15.031088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.739323, 32.980564, 14.947845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155675, -0.141340, -0.977644,
		-0.561859, -0.826687, 0.030048,
		-0.812453, 0.544620, -0.208108,
		48.495586, 33.143951, 14.885412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.673340, 32.332191, 14.527876>,  <49.064304, 32.762714, 15.031088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.673340, 32.332191, 14.527876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.603634, 32.724106, 14.488593>,  <48.561810, 32.959255, 14.465023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.603634, 32.724106, 14.488593>,  <48.673340, 32.332191, 14.527876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.603634, 32.724106, 14.488593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337409, -0.034283, -0.940733,
		-0.925088, -0.197069, -0.324616,
		-0.174261, 0.979790, -0.098208,
		48.551357, 33.018044, 14.459130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.237595, 32.367199, 13.943127>,  <48.673340, 32.332191, 14.527876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.237595, 32.367199, 13.943127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.424374, 32.718563, 13.983848>,  <48.536442, 32.929382, 14.008280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.424374, 32.718563, 13.983848>,  <48.237595, 32.367199, 13.943127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.424374, 32.718563, 13.983848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332930, -0.067982, -0.940498,
		-0.819219, 0.473054, -0.324192,
		0.466946, 0.878407, 0.101802,
		48.564457, 32.982086, 14.014388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.368198, 32.923168, 13.368377>,  <48.237595, 32.367199, 13.943127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.368198, 32.923168, 13.368377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679340, 33.030937, 13.595481>,  <48.866024, 33.095600, 13.731744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679340, 33.030937, 13.595481>,  <48.368198, 32.923168, 13.368377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.679340, 33.030937, 13.595481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543800, 0.164272, -0.822980,
		-0.315000, 0.948907, -0.018735,
		0.777854, 0.269427, 0.567761,
		48.912697, 33.111767, 13.765809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.060837, 32.876194, 12.996654>,  <48.368198, 32.923168, 13.368377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.060837, 32.876194, 12.996654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433960, 32.733166, 13.014607>,  <49.657833, 32.647350, 13.025379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433960, 32.733166, 13.014607>,  <49.060837, 32.876194, 12.996654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.433960, 32.733166, 13.014607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265386, 0.765842, 0.585710,
		-0.243808, -0.534443, 0.809277,
		0.932807, -0.357571, 0.044884,
		49.713802, 32.625893, 13.028072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.947556, 33.539745, 12.492531>,  <49.060837, 32.876194, 12.996654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.947556, 33.539745, 12.492531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856773, 33.343266, 12.156148>,  <48.802303, 33.225376, 11.954318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856773, 33.343266, 12.156148>,  <48.947556, 33.539745, 12.492531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.856773, 33.343266, 12.156148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970319, 0.040022, 0.238494,
		-0.083493, 0.870125, -0.485708,
		-0.226959, -0.491204, -0.840957,
		48.788685, 33.195904, 11.903861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.473320, 33.907745, 12.009562>,  <48.947556, 33.539745, 12.492531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.473320, 33.907745, 12.009562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429096, 33.510738, 11.988837>,  <48.402561, 33.272533, 11.976402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429096, 33.510738, 11.988837>,  <48.473320, 33.907745, 12.009562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.429096, 33.510738, 11.988837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865910, 0.070604, 0.495192,
		-0.487829, 0.099613, -0.867237,
		-0.110558, -0.992518, -0.051813,
		48.395927, 33.212982, 11.973293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748726, 33.583576, 11.772706>,  <48.473320, 33.907745, 12.009562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748726, 33.583576, 11.772706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931133, 33.323494, 12.015779>,  <48.040577, 33.167442, 12.161622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931133, 33.323494, 12.015779>,  <47.748726, 33.583576, 11.772706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.931133, 33.323494, 12.015779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726716, 0.122108, 0.675998,
		-0.513743, -0.749879, -0.416833,
		0.456018, -0.650209, 0.607681,
		48.067940, 33.128433, 12.198083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214924, 33.261726, 11.919185>,  <47.748726, 33.583576, 11.772706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214924, 33.261726, 11.919185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477207, 33.207123, 12.216214>,  <47.634575, 33.174362, 12.394432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477207, 33.207123, 12.216214>,  <47.214924, 33.261726, 11.919185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477207, 33.207123, 12.216214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751389, -0.021676, 0.659504,
		-0.073931, -0.990402, -0.116782,
		0.655705, -0.136507, 0.742574,
		47.673920, 33.166172, 12.438987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989651, 32.693565, 12.379444>,  <47.214924, 33.261726, 11.919185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989651, 32.693565, 12.379444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204311, 32.950016, 12.598886>,  <47.333107, 33.103886, 12.730551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204311, 32.950016, 12.598886>,  <46.989651, 32.693565, 12.379444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204311, 32.950016, 12.598886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771094, 0.108583, 0.627395,
		0.342670, -0.759715, 0.552639,
		0.536649, 0.641127, 0.548603,
		47.365307, 33.142353, 12.763467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044285, 32.448273, 13.089282>,  <46.989651, 32.693565, 12.379444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044285, 32.448273, 13.089282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097797, 32.844505, 13.100976>,  <47.129906, 33.082245, 13.107992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097797, 32.844505, 13.100976>,  <47.044285, 32.448273, 13.089282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097797, 32.844505, 13.100976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607311, 0.058638, 0.792298,
		0.783119, -0.123753, 0.609434,
		0.133785, 0.990579, 0.029236,
		47.137932, 33.141678, 13.109747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305687, 32.624546, 13.796827>,  <47.044285, 32.448273, 13.089282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305687, 32.624546, 13.796827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146751, 32.955093, 13.637208>,  <47.051392, 33.153423, 13.541436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146751, 32.955093, 13.637208>,  <47.305687, 32.624546, 13.796827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146751, 32.955093, 13.637208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610757, 0.086412, 0.787089,
		0.684906, 0.556463, 0.470375,
		-0.397340, 0.826367, -0.399048,
		47.027550, 33.203003, 13.517493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336109, 33.117123, 14.301058>,  <47.305687, 32.624546, 13.796827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336109, 33.117123, 14.301058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058582, 33.266273, 14.054620>,  <46.892067, 33.355766, 13.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058582, 33.266273, 14.054620>,  <47.336109, 33.117123, 14.301058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058582, 33.266273, 14.054620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576647, 0.224806, 0.785456,
		0.431383, 0.900235, 0.059046,
		-0.693820, 0.372881, -0.616095,
		46.850437, 33.378139, 13.869791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185318, 33.681419, 14.611526>,  <47.336109, 33.117123, 14.301058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185318, 33.681419, 14.611526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887886, 33.567295, 14.369641>,  <46.709427, 33.498821, 14.224510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887886, 33.567295, 14.369641>,  <47.185318, 33.681419, 14.611526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887886, 33.567295, 14.369641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661154, 0.178771, 0.728640,
		-0.099784, 0.941615, -0.321567,
		-0.743585, -0.285312, -0.604714,
		46.664810, 33.481701, 14.188227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723293, 34.233078, 14.586932>,  <47.185318, 33.681419, 14.611526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723293, 34.233078, 14.586932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523525, 33.901989, 14.484593>,  <46.403664, 33.703335, 14.423190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523525, 33.901989, 14.484593>,  <46.723293, 34.233078, 14.586932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523525, 33.901989, 14.484593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643264, 0.156460, 0.749488,
		-0.580337, 0.538886, -0.610583,
		-0.499420, -0.827721, -0.255846,
		46.373699, 33.653671, 14.407840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043583, 34.371941, 14.862782>,  <46.723293, 34.233078, 14.586932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043583, 34.371941, 14.862782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014233, 33.989799, 14.748303>,  <45.996624, 33.760513, 14.679616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014233, 33.989799, 14.748303>,  <46.043583, 34.371941, 14.862782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014233, 33.989799, 14.748303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536326, -0.204140, 0.818951,
		-0.840815, 0.213586, -0.497404,
		-0.073376, -0.955357, -0.286196,
		45.992218, 33.703194, 14.662445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294605, 34.274170, 14.944529>,  <46.043583, 34.371941, 14.862782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294605, 34.274170, 14.944529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457870, 33.909248, 14.957801>,  <45.555828, 33.690296, 14.965764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457870, 33.909248, 14.957801>,  <45.294605, 34.274170, 14.944529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457870, 33.909248, 14.957801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735574, -0.307130, 0.603823,
		-0.540681, -0.270864, -0.796428,
		0.408161, -0.912307, 0.033181,
		45.580318, 33.635555, 14.967755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736156, 33.904781, 14.985895>,  <45.294605, 34.274170, 14.944529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736156, 33.904781, 14.985895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026539, 33.655575, 15.102403>,  <45.200768, 33.506050, 15.172307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026539, 33.655575, 15.102403>,  <44.736156, 33.904781, 14.985895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026539, 33.655575, 15.102403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543949, -0.260983, 0.797501,
		-0.420842, -0.737385, -0.528352,
		0.725956, -0.623018, 0.291267,
		45.244328, 33.468670, 15.189783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428764, 33.194637, 14.952515>,  <44.736156, 33.904781, 14.985895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428764, 33.194637, 14.952515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753540, 33.176823, 15.185328>,  <44.948406, 33.166134, 15.325017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753540, 33.176823, 15.185328>,  <44.428764, 33.194637, 14.952515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753540, 33.176823, 15.185328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554292, -0.371494, 0.744817,
		0.183053, -0.927367, -0.326316,
		0.811943, -0.044534, 0.582035,
		44.997124, 33.163464, 15.359940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341522, 32.578609, 15.309972>,  <44.428764, 33.194637, 14.952515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341522, 32.578609, 15.309972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614025, 32.764240, 15.536427>,  <44.777527, 32.875618, 15.672300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614025, 32.764240, 15.536427>,  <44.341522, 32.578609, 15.309972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614025, 32.764240, 15.536427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447234, -0.348399, 0.823772,
		0.579539, -0.814399, -0.029797,
		0.681261, 0.464082, 0.566138,
		44.818405, 32.903465, 15.706269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324944, 32.185333, 15.780138>,  <44.341522, 32.578609, 15.309972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324944, 32.185333, 15.780138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495644, 32.509312, 15.941075>,  <44.598064, 32.703697, 16.037638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495644, 32.509312, 15.941075>,  <44.324944, 32.185333, 15.780138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495644, 32.509312, 15.941075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486266, -0.169607, 0.857193,
		0.762517, -0.561450, 0.321468,
		0.426748, 0.809943, 0.402342,
		44.623669, 32.752293, 16.061777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602394, 32.045742, 16.439779>,  <44.324944, 32.185333, 15.780138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602394, 32.045742, 16.439779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523746, 32.437199, 16.463806>,  <44.476559, 32.672073, 16.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523746, 32.437199, 16.463806>,  <44.602394, 32.045742, 16.439779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523746, 32.437199, 16.463806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469865, -0.147817, 0.870274,
		0.860563, 0.142888, 0.488891,
		-0.196618, 0.978638, 0.060068,
		44.464760, 32.730789, 16.481827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733185, 32.262058, 17.100283>,  <44.602394, 32.045742, 16.439779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733185, 32.262058, 17.100283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486050, 32.537937, 16.949238>,  <44.337769, 32.703465, 16.858612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486050, 32.537937, 16.949238>,  <44.733185, 32.262058, 17.100283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486050, 32.537937, 16.949238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518899, 0.003187, 0.854829,
		0.590781, 0.724087, 0.355917,
		-0.617836, 0.689702, -0.377610,
		44.300697, 32.744846, 16.835955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625561, 32.617714, 17.597244>,  <44.733185, 32.262058, 17.100283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625561, 32.617714, 17.597244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340469, 32.746777, 17.348114>,  <44.169415, 32.824215, 17.198635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340469, 32.746777, 17.348114>,  <44.625561, 32.617714, 17.597244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340469, 32.746777, 17.348114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632679, 0.087696, 0.769433,
		0.302882, 0.942445, 0.141635,
		-0.712727, 0.322657, -0.622826,
		44.126652, 32.843575, 17.161266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335342, 33.172119, 17.927284>,  <44.625561, 32.617714, 17.597244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335342, 33.172119, 17.927284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044582, 33.069042, 17.672661>,  <43.870125, 33.007195, 17.519886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044582, 33.069042, 17.672661>,  <44.335342, 33.172119, 17.927284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044582, 33.069042, 17.672661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670321, 0.064768, 0.739239,
		-0.149267, 0.964054, -0.219815,
		-0.726904, -0.257691, -0.636558,
		43.826511, 32.991734, 17.481693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760567, 33.713917, 18.042059>,  <44.335342, 33.172119, 17.927284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760567, 33.713917, 18.042059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605827, 33.378475, 17.888645>,  <43.512985, 33.177212, 17.796597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605827, 33.378475, 17.888645>,  <43.760567, 33.713917, 18.042059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605827, 33.378475, 17.888645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800088, 0.098442, 0.591751,
		-0.458486, 0.535778, -0.709037,
		-0.386846, -0.838601, -0.383535,
		43.489773, 33.126896, 17.773584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962643, 33.817890, 17.858917>,  <43.760567, 33.713917, 18.042059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962643, 33.817890, 17.858917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016407, 33.422531, 17.887203>,  <43.048664, 33.185314, 17.904175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016407, 33.422531, 17.887203>,  <42.962643, 33.817890, 17.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016407, 33.422531, 17.887203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794169, -0.064769, 0.604236,
		-0.592646, -0.137375, -0.793661,
		0.134412, -0.988399, 0.070714,
		43.056732, 33.126011, 17.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360260, 33.523331, 17.828548>,  <42.962643, 33.817890, 17.858917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360260, 33.523331, 17.828548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543255, 33.209808, 17.996529>,  <42.653053, 33.021694, 18.097317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543255, 33.209808, 17.996529>,  <42.360260, 33.523331, 17.828548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543255, 33.209808, 17.996529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821639, -0.192024, 0.536690,
		-0.340018, -0.590576, -0.731852,
		0.457489, -0.783802, 0.419949,
		42.680500, 32.974667, 18.122513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840508, 32.992374, 17.839577>,  <42.360260, 33.523331, 17.828548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840508, 32.992374, 17.839577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112400, 32.840919, 18.090843>,  <42.275536, 32.750046, 18.241602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112400, 32.840919, 18.090843>,  <41.840508, 32.992374, 17.839577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112400, 32.840919, 18.090843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731991, -0.296072, 0.613621,
		-0.046360, -0.876911, -0.478412,
		0.679735, -0.378640, 0.628165,
		42.316322, 32.727325, 18.279293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535069, 32.431713, 18.016911>,  <41.840508, 32.992374, 17.839577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535069, 32.431713, 18.016911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789021, 32.526543, 18.311047>,  <41.941391, 32.583443, 18.487528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789021, 32.526543, 18.311047>,  <41.535069, 32.431713, 18.016911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789021, 32.526543, 18.311047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657013, -0.335128, 0.675295,
		0.406531, -0.911857, -0.057002,
		0.634876, 0.237077, 0.735342,
		41.979485, 32.597664, 18.531649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525803, 31.894814, 18.508383>,  <41.535069, 32.431713, 18.016911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525803, 31.894814, 18.508383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671963, 32.212402, 18.702740>,  <41.759659, 32.402954, 18.819353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671963, 32.212402, 18.702740>,  <41.525803, 31.894814, 18.508383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671963, 32.212402, 18.702740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563355, -0.226911, 0.794445,
		0.741021, -0.564021, 0.364374,
		0.365403, 0.793972, 0.485890,
		41.781586, 32.450592, 18.848507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589478, 31.730932, 19.250219>,  <41.525803, 31.894814, 18.508383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589478, 31.730932, 19.250219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562359, 32.129036, 19.222321>,  <41.546089, 32.367897, 19.205582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562359, 32.129036, 19.222321>,  <41.589478, 31.730932, 19.250219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562359, 32.129036, 19.222321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574710, 0.018189, 0.818155,
		0.815544, 0.095550, 0.570752,
		-0.067793, 0.995258, -0.069748,
		41.542023, 32.427612, 19.201397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760559, 32.115608, 19.848648>,  <41.589478, 31.730932, 19.250219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760559, 32.115608, 19.848648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527451, 32.391434, 19.676659>,  <41.387585, 32.556931, 19.573465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527451, 32.391434, 19.676659>,  <41.760559, 32.115608, 19.848648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527451, 32.391434, 19.676659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528211, 0.080660, 0.845274,
		0.617552, 0.719719, 0.317229,
		-0.582772, 0.689564, -0.429975,
		41.352619, 32.598305, 19.547667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655762, 32.624393, 20.230751>,  <41.760559, 32.115608, 19.848648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655762, 32.624393, 20.230751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323948, 32.654636, 20.009422>,  <41.124859, 32.672783, 19.876625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323948, 32.654636, 20.009422>,  <41.655762, 32.624393, 20.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323948, 32.654636, 20.009422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546433, 0.094650, 0.832137,
		0.115286, 0.992635, -0.037201,
		-0.829530, 0.075606, -0.553321,
		41.075089, 32.677319, 19.843426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211506, 33.125961, 20.609924>,  <41.655762, 32.624393, 20.230751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211506, 33.125961, 20.609924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008736, 32.891254, 20.357346>,  <40.887074, 32.750431, 20.205797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008736, 32.891254, 20.357346>,  <41.211506, 33.125961, 20.609924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008736, 32.891254, 20.357346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651544, -0.218795, 0.726373,
		-0.564370, 0.779637, -0.271391,
		-0.506929, -0.586767, -0.631449,
		40.856659, 32.715225, 20.167912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604637, 33.160778, 20.864014>,  <41.211506, 33.125961, 20.609924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604637, 33.160778, 20.864014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550449, 32.862366, 20.603218>,  <40.517937, 32.683319, 20.446741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550449, 32.862366, 20.603218>,  <40.604637, 33.160778, 20.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550449, 32.862366, 20.603218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807972, -0.297680, 0.508495,
		-0.573436, 0.595675, -0.562443,
		-0.135469, -0.746028, -0.651990,
		40.509808, 32.638557, 20.407621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986061, 33.221485, 20.738379>,  <40.604637, 33.160778, 20.864014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986061, 33.221485, 20.738379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070896, 32.834000, 20.686832>,  <40.121799, 32.601509, 20.655905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070896, 32.834000, 20.686832>,  <39.986061, 33.221485, 20.738379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070896, 32.834000, 20.686832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766509, -0.246699, 0.592961,
		-0.606203, -0.026983, -0.794852,
		0.212089, -0.968716, -0.128867,
		40.134521, 32.543385, 20.648172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439186, 32.841805, 20.481220>,  <39.986061, 33.221485, 20.738379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439186, 32.841805, 20.481220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676384, 32.620468, 20.715202>,  <39.818703, 32.487667, 20.855591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676384, 32.620468, 20.715202>,  <39.439186, 32.841805, 20.481220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676384, 32.620468, 20.715202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736472, -0.079026, 0.671837,
		-0.325531, -0.829194, -0.454385,
		0.592991, -0.553346, 0.584953,
		39.854282, 32.454464, 20.890688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647293, 32.715408, 20.366724>,  <39.439186, 32.841805, 20.481220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647293, 32.715408, 20.366724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431297, 32.982944, 20.571102>,  <38.301701, 33.143467, 20.693729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431297, 32.982944, 20.571102>,  <38.647293, 32.715408, 20.366724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431297, 32.982944, 20.571102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249064, -0.706851, 0.662065,
		0.803978, 0.230249, 0.548275,
		-0.539988, 0.668841, 0.510946,
		38.269302, 33.183598, 20.724386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887585, 32.614780, 21.053944>,  <38.647293, 32.715408, 20.366724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887585, 32.614780, 21.053944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529377, 32.792336, 21.066593>,  <38.314453, 32.898869, 21.074183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529377, 32.792336, 21.066593>,  <38.887585, 32.614780, 21.053944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529377, 32.792336, 21.066593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261134, -0.581704, 0.770344,
		0.360345, 0.681602, 0.636844,
		-0.895522, 0.443891, 0.031625,
		38.260719, 32.925503, 21.076080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812553, 32.658989, 21.736193>,  <38.887585, 32.614780, 21.053944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812553, 32.658989, 21.736193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450069, 32.709030, 21.574638>,  <38.232578, 32.739056, 21.477705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450069, 32.709030, 21.574638>,  <38.812553, 32.658989, 21.736193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450069, 32.709030, 21.574638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405390, -0.528491, 0.745892,
		-0.120140, 0.839671, 0.529641,
		-0.906215, 0.125100, -0.403887,
		38.178204, 32.746559, 21.453472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314686, 32.701130, 22.243677>,  <38.812553, 32.658989, 21.736193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314686, 32.701130, 22.243677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089146, 32.599022, 21.929501>,  <37.953823, 32.537758, 21.740995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089146, 32.599022, 21.929501>,  <38.314686, 32.701130, 22.243677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089146, 32.599022, 21.929501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475194, -0.677563, 0.561337,
		-0.675475, 0.689744, 0.260741,
		-0.563848, -0.255267, -0.785439,
		37.919991, 32.522442, 21.693869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585381, 32.715500, 22.478415>,  <38.314686, 32.701130, 22.243677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585381, 32.715500, 22.478415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614674, 32.476875, 22.158726>,  <37.632248, 32.333702, 21.966913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614674, 32.476875, 22.158726>,  <37.585381, 32.715500, 22.478415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614674, 32.476875, 22.158726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416715, -0.746367, 0.518926,
		-0.906083, 0.295046, -0.303252,
		0.073230, -0.596560, -0.799221,
		37.636642, 32.297909, 21.918959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903599, 32.379093, 22.616335>,  <37.585381, 32.715500, 22.478415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903599, 32.379093, 22.616335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100929, 32.149422, 22.354969>,  <37.219326, 32.011620, 22.198149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100929, 32.149422, 22.354969>,  <36.903599, 32.379093, 22.616335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100929, 32.149422, 22.354969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438347, -0.812930, 0.383400,
		-0.751320, 0.097281, -0.652728,
		0.493325, -0.574178, -0.653414,
		37.248928, 31.977169, 22.158945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390682, 31.923538, 22.390686>,  <36.903599, 32.379093, 22.616335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390682, 31.923538, 22.390686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749374, 31.765602, 22.310719>,  <36.964592, 31.670839, 22.262739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749374, 31.765602, 22.310719>,  <36.390682, 31.923538, 22.390686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749374, 31.765602, 22.310719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349452, -0.908889, 0.227603,
		-0.271570, -0.134239, -0.953011,
		0.896735, -0.394842, -0.199917,
		37.018394, 31.647150, 22.250744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239334, 31.317778, 22.087736>,  <36.390682, 31.923538, 22.390686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239334, 31.317778, 22.087736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623940, 31.230858, 22.154991>,  <36.854702, 31.178705, 22.195345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623940, 31.230858, 22.154991>,  <36.239334, 31.317778, 22.087736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623940, 31.230858, 22.154991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246501, -0.952547, 0.178581,
		0.121355, -0.213154, -0.969452,
		0.961514, -0.217299, 0.168139,
		36.912395, 31.165668, 22.205433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384212, 30.754185, 21.711727>,  <36.239334, 31.317778, 22.087736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384212, 30.754185, 21.711727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661736, 30.768368, 21.999443>,  <36.828247, 30.776878, 22.172073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661736, 30.768368, 21.999443>,  <36.384212, 30.754185, 21.711727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661736, 30.768368, 21.999443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120070, -0.979112, 0.164081,
		0.710083, -0.200205, -0.675056,
		0.693805, 0.035457, 0.719289,
		36.869877, 30.779005, 22.215229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750046, 30.145422, 21.590708>,  <36.384212, 30.754185, 21.711727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750046, 30.145422, 21.590708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821819, 30.238659, 21.973011>,  <36.864883, 30.294601, 22.202393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821819, 30.238659, 21.973011>,  <36.750046, 30.145422, 21.590708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821819, 30.238659, 21.973011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148571, -0.953962, 0.260545,
		0.972487, -0.188748, -0.136541,
		0.179432, 0.233090, 0.955758,
		36.875648, 30.308586, 22.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061821, 29.512650, 21.828299>,  <36.750046, 30.145422, 21.590708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061821, 29.512650, 21.828299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939007, 29.721970, 22.146263>,  <36.865318, 29.847563, 22.337042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939007, 29.721970, 22.146263>,  <37.061821, 29.512650, 21.828299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939007, 29.721970, 22.146263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149151, -0.851393, 0.502875,
		0.939939, 0.035837, 0.339456,
		-0.307032, 0.523302, 0.794913,
		36.846897, 29.878960, 22.384737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513474, 29.369631, 22.392109>,  <37.061821, 29.512650, 21.828299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513474, 29.369631, 22.392109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176594, 29.518192, 22.548443>,  <36.974464, 29.607330, 22.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176594, 29.518192, 22.548443>,  <37.513474, 29.369631, 22.392109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176594, 29.518192, 22.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093585, -0.814593, 0.572433,
		0.530977, 0.445529, 0.720811,
		-0.842203, 0.371406, 0.390835,
		36.923931, 29.629614, 22.665693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508316, 29.206671, 23.128149>,  <37.513474, 29.369631, 22.392109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508316, 29.206671, 23.128149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130806, 29.312069, 23.048294>,  <36.904301, 29.375309, 23.000381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130806, 29.312069, 23.048294>,  <37.508316, 29.206671, 23.128149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130806, 29.312069, 23.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320604, -0.582298, 0.747089,
		0.080608, 0.769089, 0.634038,
		-0.943777, 0.263496, -0.199636,
		36.847672, 29.391117, 22.988403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254189, 29.438244, 23.796524>,  <37.508316, 29.206671, 23.128149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254189, 29.438244, 23.796524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934673, 29.341648, 23.576115>,  <36.742966, 29.283691, 23.443869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934673, 29.341648, 23.576115>,  <37.254189, 29.438244, 23.796524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934673, 29.341648, 23.576115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401132, -0.468823, 0.786955,
		-0.448373, 0.849641, 0.277620,
		-0.798783, -0.241487, -0.551025,
		36.695038, 29.269201, 23.410807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678040, 29.769506, 24.119917>,  <37.254189, 29.438244, 23.796524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678040, 29.769506, 24.119917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547417, 29.447201, 23.922291>,  <36.469044, 29.253817, 23.803715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547417, 29.447201, 23.922291>,  <36.678040, 29.769506, 24.119917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547417, 29.447201, 23.922291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400814, -0.355340, 0.844441,
		-0.855983, 0.473789, -0.206922,
		-0.326559, -0.805765, -0.494066,
		36.449448, 29.205471, 23.774071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994591, 29.650198, 24.344427>,  <36.678040, 29.769506, 24.119917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994591, 29.650198, 24.344427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069286, 29.287632, 24.192879>,  <36.114105, 29.070093, 24.101950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069286, 29.287632, 24.192879>,  <35.994591, 29.650198, 24.344427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069286, 29.287632, 24.192879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585601, -0.412352, 0.697880,
		-0.788796, 0.091544, -0.607800,
		0.186741, -0.906414, -0.378870,
		36.125309, 29.015707, 24.079218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340542, 29.363194, 24.378738>,  <35.994591, 29.650198, 24.344427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340542, 29.363194, 24.378738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607800, 29.069977, 24.327770>,  <35.768154, 28.894047, 24.297190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607800, 29.069977, 24.327770>,  <35.340542, 29.363194, 24.378738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607800, 29.069977, 24.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345754, -0.457542, 0.819213,
		-0.658816, -0.503295, -0.559156,
		0.668143, -0.733041, -0.127419,
		35.808243, 28.850065, 24.289545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990860, 28.761377, 24.483305>,  <35.340542, 29.363194, 24.378738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990860, 28.761377, 24.483305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363350, 28.628986, 24.544331>,  <35.586845, 28.549551, 24.580946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363350, 28.628986, 24.544331>,  <34.990860, 28.761377, 24.483305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363350, 28.628986, 24.544331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315180, -0.521183, 0.793114,
		-0.182988, -0.786652, -0.589656,
		0.931223, -0.330978, 0.152567,
		35.642715, 28.529694, 24.590101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872055, 28.163836, 24.709686>,  <34.990860, 28.761377, 24.483305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872055, 28.163836, 24.709686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256027, 28.227257, 24.802109>,  <35.486412, 28.265308, 24.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256027, 28.227257, 24.802109>,  <34.872055, 28.163836, 24.709686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256027, 28.227257, 24.802109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165671, -0.343906, 0.924274,
		0.226007, -0.925521, -0.303860,
		0.959934, 0.158551, 0.231057,
		35.544006, 28.274822, 24.871426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058838, 27.577164, 25.061954>,  <34.872055, 28.163836, 24.709686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058838, 27.577164, 25.061954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333035, 27.853844, 25.152863>,  <35.497551, 28.019852, 25.207409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333035, 27.853844, 25.152863>,  <35.058838, 27.577164, 25.061954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333035, 27.853844, 25.152863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107388, -0.212685, 0.971202,
		0.720119, -0.690155, -0.071513,
		0.685489, 0.691701, 0.227273,
		35.538681, 28.061354, 25.221045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574181, 27.231323, 25.352873>,  <35.058838, 27.577164, 25.061954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574181, 27.231323, 25.352873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596500, 27.608791, 25.483334>,  <35.609890, 27.835272, 25.561611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596500, 27.608791, 25.483334>,  <35.574181, 27.231323, 25.352873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596500, 27.608791, 25.483334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051785, -0.323488, 0.944814,
		0.997098, -0.069607, 0.030818,
		0.055796, 0.943668, 0.326154,
		35.613239, 27.891891, 25.581181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235416, 27.222019, 25.774977>,  <35.574181, 27.231323, 25.352873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235416, 27.222019, 25.774977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991203, 27.520748, 25.880428>,  <35.844673, 27.699986, 25.943699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991203, 27.520748, 25.880428>,  <36.235416, 27.222019, 25.774977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991203, 27.520748, 25.880428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002362, -0.331154, 0.943574,
		0.791984, 0.576710, 0.200418,
		-0.610537, 0.746822, 0.263631,
		35.808041, 27.744795, 25.959518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512856, 27.425167, 26.304659>,  <36.235416, 27.222019, 25.774977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512856, 27.425167, 26.304659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146091, 27.582565, 26.331299>,  <35.926033, 27.677004, 26.347282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146091, 27.582565, 26.331299>,  <36.512856, 27.425167, 26.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146091, 27.582565, 26.331299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039953, -0.256551, 0.965705,
		0.397086, 0.882804, 0.250956,
		-0.916911, 0.393494, 0.066602,
		35.871017, 27.700613, 26.351280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635109, 27.770460, 26.930632>,  <36.512856, 27.425167, 26.304659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635109, 27.770460, 26.930632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241192, 27.771255, 26.861149>,  <36.004841, 27.771732, 26.819460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241192, 27.771255, 26.861149>,  <36.635109, 27.770460, 26.930632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241192, 27.771255, 26.861149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173596, -0.048977, 0.983598,
		-0.006551, 0.998798, 0.048578,
		-0.984795, 0.001990, -0.173708,
		35.945755, 27.771852, 26.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337605, 28.273426, 27.311359>,  <36.635109, 27.770460, 26.930632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337605, 28.273426, 27.311359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060604, 27.993717, 27.240406>,  <35.894405, 27.825891, 27.197834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060604, 27.993717, 27.240406>,  <36.337605, 28.273426, 27.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060604, 27.993717, 27.240406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128660, -0.122228, 0.984128,
		-0.709852, 0.704331, -0.005325,
		-0.692501, -0.699270, -0.177383,
		35.852856, 27.783936, 27.187191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795589, 28.466896, 27.722755>,  <36.337605, 28.273426, 27.311359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795589, 28.466896, 27.722755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749741, 28.081112, 27.627529>,  <35.722229, 27.849642, 27.570393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749741, 28.081112, 27.627529>,  <35.795589, 28.466896, 27.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749741, 28.081112, 27.627529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121060, -0.224297, 0.966972,
		-0.986005, 0.139660, -0.091048,
		-0.114626, -0.964461, -0.238066,
		35.715351, 27.791773, 27.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342442, 28.172583, 28.310741>,  <35.795589, 28.466896, 27.722755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342442, 28.172583, 28.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473564, 27.831238, 28.148598>,  <35.552238, 27.626431, 28.051311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473564, 27.831238, 28.148598>,  <35.342442, 28.172583, 28.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473564, 27.831238, 28.148598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097822, -0.457419, 0.883854,
		-0.939667, -0.250080, -0.233423,
		0.327807, -0.853362, -0.405358,
		35.571907, 27.575230, 28.026991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022663, 27.726164, 28.714756>,  <35.342442, 28.172583, 28.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022663, 27.726164, 28.714756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267941, 27.493252, 28.501236>,  <35.415108, 27.353504, 28.373123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267941, 27.493252, 28.501236>,  <35.022663, 27.726164, 28.714756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267941, 27.493252, 28.501236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032090, -0.693559, 0.719684,
		-0.789283, -0.424173, -0.443970,
		0.613190, -0.582282, -0.533803,
		35.451897, 27.318567, 28.341095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754665, 27.001123, 28.766266>,  <35.022663, 27.726164, 28.714756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754665, 27.001123, 28.766266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144882, 26.991608, 28.678852>,  <35.379013, 26.985897, 28.626404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144882, 26.991608, 28.678852>,  <34.754665, 27.001123, 28.766266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144882, 26.991608, 28.678852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090944, -0.861384, 0.499747,
		-0.200133, -0.507397, -0.838150,
		0.975539, -0.023791, -0.218536,
		35.437546, 26.984470, 28.613291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797848, 26.313858, 28.631126>,  <34.754665, 27.001123, 28.766266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797848, 26.313858, 28.631126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166393, 26.454788, 28.696808>,  <35.387520, 26.539347, 28.736217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166393, 26.454788, 28.696808>,  <34.797848, 26.313858, 28.631126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166393, 26.454788, 28.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181833, -0.764022, 0.619037,
		0.343558, -0.540498, -0.768004,
		0.921360, 0.352324, 0.164205,
		35.442802, 26.560486, 28.746069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244247, 25.711784, 28.543287>,  <34.797848, 26.313858, 28.631126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244247, 25.711784, 28.543287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433819, 25.989040, 28.760525>,  <35.547562, 26.155394, 28.890867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433819, 25.989040, 28.760525>,  <35.244247, 25.711784, 28.543287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433819, 25.989040, 28.760525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183300, -0.680901, 0.709066,
		0.861276, -0.236495, -0.449749,
		0.473925, 0.693140, 0.543094,
		35.575996, 26.196983, 28.923452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929222, 25.467772, 28.652082>,  <35.244247, 25.711784, 28.543287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929222, 25.467772, 28.652082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871758, 25.745686, 28.933971>,  <35.837276, 25.912434, 29.103106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871758, 25.745686, 28.933971>,  <35.929222, 25.467772, 28.652082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871758, 25.745686, 28.933971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257776, -0.661256, 0.704480,
		0.955464, 0.282870, -0.084099,
		-0.143665, 0.694784, 0.704724,
		35.828659, 25.954121, 29.145388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472569, 25.343191, 29.030685>,  <35.929222, 25.467772, 28.652082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472569, 25.343191, 29.030685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209362, 25.540207, 29.258514>,  <36.051437, 25.658417, 29.395212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209362, 25.540207, 29.258514>,  <36.472569, 25.343191, 29.030685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209362, 25.540207, 29.258514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245438, -0.574805, 0.780615,
		0.711878, 0.653455, 0.257345,
		-0.658020, 0.492540, 0.569573,
		36.011955, 25.687969, 29.429386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825096, 25.545628, 29.651356>,  <36.472569, 25.343191, 29.030685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825096, 25.545628, 29.651356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430824, 25.528828, 29.716671>,  <36.194260, 25.518747, 29.755861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430824, 25.528828, 29.716671>,  <36.825096, 25.545628, 29.651356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430824, 25.528828, 29.716671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152018, -0.640276, 0.752952,
		0.072926, 0.766996, 0.637495,
		-0.985684, -0.042001, 0.163289,
		36.135120, 25.516228, 29.765657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791927, 25.568651, 30.330856>,  <36.825096, 25.545628, 29.651356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791927, 25.568651, 30.330856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444717, 25.402321, 30.222324>,  <36.236393, 25.302523, 30.157206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444717, 25.402321, 30.222324>,  <36.791927, 25.568651, 30.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444717, 25.402321, 30.222324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016403, -0.570186, 0.821352,
		-0.496249, 0.708504, 0.501757,
		-0.868025, -0.415825, -0.271332,
		36.184311, 25.277573, 30.140924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409641, 25.616222, 30.845476>,  <36.791927, 25.568651, 30.330856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409641, 25.616222, 30.845476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227074, 25.313797, 30.657837>,  <36.117535, 25.132341, 30.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227074, 25.313797, 30.657837>,  <36.409641, 25.616222, 30.845476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227074, 25.313797, 30.657837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103631, -0.478454, 0.871976,
		-0.883710, 0.446598, 0.140023,
		-0.456418, -0.756063, -0.469096,
		36.090149, 25.086979, 30.517109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743092, 25.492630, 31.189207>,  <36.409641, 25.616222, 30.845476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743092, 25.492630, 31.189207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818901, 25.155556, 30.987629>,  <35.864388, 24.953312, 30.866682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818901, 25.155556, 30.987629>,  <35.743092, 25.492630, 31.189207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818901, 25.155556, 30.987629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018693, -0.516252, 0.856233,
		-0.981699, -0.152854, -0.113593,
		0.189522, -0.842686, -0.503947,
		35.875759, 24.902750, 30.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195030, 25.064178, 31.275537>,  <35.743092, 25.492630, 31.189207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195030, 25.064178, 31.275537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523281, 24.842613, 31.219315>,  <35.720230, 24.709675, 31.185581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523281, 24.842613, 31.219315>,  <35.195030, 25.064178, 31.275537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523281, 24.842613, 31.219315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139684, -0.432918, 0.890545,
		-0.554134, -0.711169, -0.432635,
		0.820624, -0.553914, -0.140556,
		35.769470, 24.676439, 31.177149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066204, 24.554613, 31.720343>,  <35.195030, 25.064178, 31.275537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066204, 24.554613, 31.720343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457840, 24.500957, 31.659157>,  <35.692822, 24.468763, 31.622444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457840, 24.500957, 31.659157>,  <35.066204, 24.554613, 31.720343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457840, 24.500957, 31.659157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029765, -0.649326, 0.759927,
		-0.201260, -0.748587, -0.631753,
		0.979085, -0.134139, -0.152965,
		35.751564, 24.460716, 31.613268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108414, 23.843096, 31.806059>,  <35.066204, 24.554613, 31.720343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108414, 23.843096, 31.806059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476677, 23.999237, 31.807121>,  <35.697636, 24.092922, 31.807758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476677, 23.999237, 31.807121>,  <35.108414, 23.843096, 31.806059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476677, 23.999237, 31.807121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272289, -0.647042, 0.712177,
		0.279719, -0.654950, -0.701995,
		0.920661, 0.390355, 0.002655,
		35.752876, 24.116343, 31.807917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543335, 23.282499, 31.807568>,  <35.108414, 23.843096, 31.806059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543335, 23.282499, 31.807568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753929, 23.584358, 31.964191>,  <35.880283, 23.765474, 32.058167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753929, 23.584358, 31.964191>,  <35.543335, 23.282499, 31.807568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753929, 23.584358, 31.964191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219770, -0.565708, 0.794781,
		0.821290, -0.332385, -0.463684,
		0.526483, 0.754649, 0.391562,
		35.911873, 23.810753, 32.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124855, 22.936506, 32.024216>,  <35.543335, 23.282499, 31.807568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124855, 22.936506, 32.024216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102558, 23.290154, 32.209785>,  <36.089180, 23.502342, 32.321129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102558, 23.290154, 32.209785>,  <36.124855, 22.936506, 32.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102558, 23.290154, 32.209785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164689, -0.450145, 0.877637,
		0.984769, 0.125328, -0.120511,
		-0.055745, 0.884117, 0.463929,
		36.085835, 23.555389, 32.348965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817261, 23.115465, 32.474834>,  <36.124855, 22.936506, 32.024216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817261, 23.115465, 32.474834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467159, 23.262257, 32.600849>,  <36.257099, 23.350332, 32.676460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467159, 23.262257, 32.600849>,  <36.817261, 23.115465, 32.474834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467159, 23.262257, 32.600849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056403, -0.569480, 0.820068,
		0.480356, 0.735540, 0.477743,
		-0.875258, 0.366979, 0.315040,
		36.204582, 23.372351, 32.695362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905357, 23.272240, 33.209309>,  <36.817261, 23.115465, 32.474834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905357, 23.272240, 33.209309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521812, 23.199188, 33.122375>,  <36.291687, 23.155357, 33.070217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521812, 23.199188, 33.122375>,  <36.905357, 23.272240, 33.209309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521812, 23.199188, 33.122375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032147, -0.690798, 0.722333,
		-0.282050, 0.699603, 0.656508,
		-0.958861, -0.182629, -0.217330,
		36.234154, 23.144400, 33.057175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600159, 23.219122, 33.898045>,  <36.905357, 23.272240, 33.209309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600159, 23.219122, 33.898045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369003, 23.031311, 33.631035>,  <36.230312, 22.918625, 33.470829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369003, 23.031311, 33.631035>,  <36.600159, 23.219122, 33.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369003, 23.031311, 33.631035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035462, -0.802710, 0.595314,
		-0.815346, 0.367696, 0.447225,
		-0.577887, -0.469528, -0.667526,
		36.195637, 22.890453, 33.430779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851608, 22.975657, 34.069145>,  <36.600159, 23.219122, 33.898045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851608, 22.975657, 34.069145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002190, 22.707573, 33.813301>,  <36.092541, 22.546722, 33.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002190, 22.707573, 33.813301>,  <35.851608, 22.975657, 34.069145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002190, 22.707573, 33.813301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076916, -0.665407, 0.742508,
		-0.923236, -0.328717, -0.198947,
		0.376456, -0.670208, -0.639612,
		36.115128, 22.506512, 33.621418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464176, 22.308945, 34.147236>,  <35.851608, 22.975657, 34.069145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464176, 22.308945, 34.147236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841331, 22.276577, 34.017986>,  <36.067623, 22.257156, 33.940437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841331, 22.276577, 34.017986>,  <35.464176, 22.308945, 34.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841331, 22.276577, 34.017986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175099, -0.704817, 0.687440,
		-0.283372, -0.704760, -0.650396,
		0.942890, -0.080918, -0.323128,
		36.124199, 22.252302, 33.921047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768929, 22.626247, 34.208057>,  <35.464176, 22.308945, 34.147236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768929, 22.626247, 34.208057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407196, 22.777355, 34.128590>,  <34.190155, 22.868019, 34.080910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407196, 22.777355, 34.128590>,  <34.768929, 22.626247, 34.208057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407196, 22.777355, 34.128590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293737, 0.888532, 0.352463,
		0.309670, 0.260389, -0.914496,
		-0.904336, 0.377769, -0.198666,
		34.135895, 22.890686, 34.068989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704533, 23.269264, 33.765644>,  <34.768929, 22.626247, 34.208057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704533, 23.269264, 33.765644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421574, 23.276665, 34.048275>,  <34.251801, 23.281105, 34.217854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421574, 23.276665, 34.048275>,  <34.704533, 23.269264, 33.765644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421574, 23.276665, 34.048275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348181, 0.879076, 0.325569,
		-0.615112, 0.476323, -0.628295,
		-0.707395, 0.018499, 0.706576,
		34.209354, 23.282215, 34.260246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135044, 23.785793, 33.636425>,  <34.704533, 23.269264, 33.765644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135044, 23.785793, 33.636425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193417, 23.706299, 34.024075>,  <34.228439, 23.658602, 34.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193417, 23.706299, 34.024075>,  <34.135044, 23.785793, 33.636425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193417, 23.706299, 34.024075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357631, 0.923963, 0.135622,
		-0.922391, 0.326799, 0.205905,
		0.145928, -0.198734, 0.969128,
		34.237194, 23.646679, 34.314812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764988, 24.300661, 34.022129>,  <34.135044, 23.785793, 33.636425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764988, 24.300661, 34.022129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107250, 24.154701, 34.168938>,  <34.312607, 24.067125, 34.257023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107250, 24.154701, 34.168938>,  <33.764988, 24.300661, 34.022129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107250, 24.154701, 34.168938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331994, 0.931013, 0.151638,
		-0.397036, -0.007900, 0.917769,
		0.855653, -0.364900, 0.367023,
		34.363945, 24.045231, 34.279045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936367, 24.696383, 34.550095>,  <33.764988, 24.300661, 34.022129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936367, 24.696383, 34.550095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274078, 24.518864, 34.429935>,  <34.476704, 24.412354, 34.357838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274078, 24.518864, 34.429935>,  <33.936367, 24.696383, 34.550095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274078, 24.518864, 34.429935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479300, 0.876060, 0.052831,
		0.239724, -0.188586, 0.952349,
		0.844277, -0.443796, -0.300402,
		34.527363, 24.385725, 34.339813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471489, 24.778910, 35.115276>,  <33.936367, 24.696383, 34.550095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471489, 24.778910, 35.115276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605392, 24.741154, 34.740250>,  <34.685734, 24.718500, 34.515232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605392, 24.741154, 34.740250>,  <34.471489, 24.778910, 35.115276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605392, 24.741154, 34.740250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348509, 0.936821, 0.030121,
		0.875488, -0.336833, 0.346502,
		0.334756, -0.094389, -0.937566,
		34.705818, 24.712837, 34.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150887, 24.874746, 35.137924>,  <34.471489, 24.778910, 35.115276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150887, 24.874746, 35.137924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026905, 24.958214, 34.766895>,  <34.952518, 25.008295, 34.544277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026905, 24.958214, 34.766895>,  <35.150887, 24.874746, 35.137924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026905, 24.958214, 34.766895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480463, 0.876252, 0.036576,
		0.820418, -0.434326, -0.371853,
		-0.309951, 0.208669, -0.927571,
		34.933918, 25.020815, 34.488625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693588, 25.194283, 34.833698>,  <35.150887, 24.874746, 35.137924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693588, 25.194283, 34.833698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397102, 25.295597, 34.585037>,  <35.219212, 25.356386, 34.435841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397102, 25.295597, 34.585037>,  <35.693588, 25.194283, 34.833698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397102, 25.295597, 34.585037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316760, 0.948465, 0.008758,
		0.591831, -0.190422, -0.783247,
		-0.741215, 0.253284, -0.621649,
		35.174740, 25.371582, 34.398544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991798, 25.595579, 34.265549>,  <35.693588, 25.194283, 34.833698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991798, 25.595579, 34.265549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609020, 25.690205, 34.198273>,  <35.379353, 25.746979, 34.157906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609020, 25.690205, 34.198273>,  <35.991798, 25.595579, 34.265549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609020, 25.690205, 34.198273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280996, 0.900240, -0.332581,
		0.072734, -0.365523, -0.927956,
		-0.956949, 0.236562, -0.168188,
		35.321934, 25.761173, 34.147816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019260, 25.769423, 33.601551>,  <35.991798, 25.595579, 34.265549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019260, 25.769423, 33.601551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698666, 25.955826, 33.751465>,  <35.506310, 26.067667, 33.841412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698666, 25.955826, 33.751465>,  <36.019260, 25.769423, 33.601551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698666, 25.955826, 33.751465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179345, 0.785167, -0.592746,
		-0.570490, -0.407861, -0.712874,
		-0.801484, 0.466006, 0.374782,
		35.458221, 26.095627, 33.863899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684875, 25.969217, 33.051582>,  <36.019260, 25.769423, 33.601551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684875, 25.969217, 33.051582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497227, 26.214130, 33.306152>,  <35.384636, 26.361078, 33.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497227, 26.214130, 33.306152>,  <35.684875, 25.969217, 33.051582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497227, 26.214130, 33.306152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077042, 0.746268, -0.661172,
		-0.879767, -0.261139, -0.397262,
		-0.469122, 0.612283, 0.636423,
		35.356491, 26.397816, 33.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066486, 26.297037, 32.667221>,  <35.684875, 25.969217, 33.051582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066486, 26.297037, 32.667221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161613, 26.521652, 32.984238>,  <35.218689, 26.656422, 33.174446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161613, 26.521652, 32.984238>,  <35.066486, 26.297037, 32.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161613, 26.521652, 32.984238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073313, 0.803244, -0.591121,
		-0.968540, 0.198680, 0.149854,
		0.237814, 0.561538, 0.792540,
		35.232956, 26.690113, 33.222000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621265, 26.882517, 32.620068>,  <35.066486, 26.297037, 32.667221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621265, 26.882517, 32.620068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898834, 27.009865, 32.878403>,  <35.065376, 27.086273, 33.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898834, 27.009865, 32.878403>,  <34.621265, 26.882517, 32.620068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898834, 27.009865, 32.878403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018296, 0.888856, -0.457821,
		-0.719816, 0.329509, 0.610973,
		0.693923, 0.318369, 0.645841,
		35.107010, 27.105375, 33.072155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378212, 27.570593, 32.847378>,  <34.621265, 26.882517, 32.620068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378212, 27.570593, 32.847378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774147, 27.569130, 32.904243>,  <35.011707, 27.568253, 32.938362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774147, 27.569130, 32.904243>,  <34.378212, 27.570593, 32.847378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774147, 27.569130, 32.904243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071087, 0.878541, -0.472348,
		-0.123168, 0.477653, 0.869872,
		0.989836, -0.003658, 0.142163,
		35.071098, 27.568033, 32.946892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520607, 28.256273, 32.940769>,  <34.378212, 27.570593, 32.847378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520607, 28.256273, 32.940769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885464, 28.103661, 32.880863>,  <35.104378, 28.012093, 32.844921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885464, 28.103661, 32.880863>,  <34.520607, 28.256273, 32.940769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885464, 28.103661, 32.880863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215404, 0.757080, -0.616791,
		0.348708, 0.530342, 0.772748,
		0.912142, -0.381533, -0.149762,
		35.159107, 27.989201, 32.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016033, 28.883556, 33.027607>,  <34.520607, 28.256273, 32.940769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016033, 28.883556, 33.027607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213974, 28.603611, 32.821571>,  <35.332737, 28.435644, 32.697952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213974, 28.603611, 32.821571>,  <35.016033, 28.883556, 33.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213974, 28.603611, 32.821571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131597, 0.646268, -0.751678,
		0.858957, 0.304182, 0.411904,
		0.494848, -0.699865, -0.515087,
		35.362427, 28.393652, 32.667046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700874, 29.235180, 32.766628>,  <35.016033, 28.883556, 33.027607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700874, 29.235180, 32.766628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625973, 28.913090, 32.541576>,  <35.581032, 28.719835, 32.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625973, 28.913090, 32.541576>,  <35.700874, 29.235180, 32.766628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625973, 28.913090, 32.541576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171923, 0.537057, -0.825841,
		0.967150, -0.251368, 0.037872,
		-0.187251, -0.805223, -0.562630,
		35.569798, 28.671522, 32.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241447, 29.274359, 32.192635>,  <35.700874, 29.235180, 32.766628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241447, 29.274359, 32.192635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945095, 29.037609, 32.065655>,  <35.767284, 28.895559, 31.989468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945095, 29.037609, 32.065655>,  <36.241447, 29.274359, 32.192635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945095, 29.037609, 32.065655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059727, 0.412718, -0.908899,
		0.668972, -0.692348, -0.270425,
		-0.740884, -0.591876, -0.317448,
		35.722832, 28.860046, 31.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543941, 29.117077, 31.598457>,  <36.241447, 29.274359, 32.192635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543941, 29.117077, 31.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151062, 29.049011, 31.566650>,  <35.915333, 29.008171, 31.547567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151062, 29.049011, 31.566650>,  <36.543941, 29.117077, 31.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151062, 29.049011, 31.566650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010947, 0.474495, -0.880190,
		0.187505, -0.863655, -0.467913,
		-0.982203, -0.170163, -0.079516,
		35.856400, 28.997963, 31.542795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495918, 28.923569, 30.973484>,  <36.543941, 29.117077, 31.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495918, 28.923569, 30.973484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123909, 29.049629, 31.049095>,  <35.900703, 29.125265, 31.094461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123909, 29.049629, 31.049095>,  <36.495918, 28.923569, 30.973484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123909, 29.049629, 31.049095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040172, 0.424106, -0.904721,
		-0.365290, -0.849008, -0.381770,
		-0.930027, 0.315149, 0.189029,
		35.844902, 29.144175, 31.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177807, 28.922558, 30.448406>,  <36.495918, 28.923569, 30.973484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177807, 28.922558, 30.448406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924622, 29.190117, 30.604317>,  <35.772709, 29.350653, 30.697863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924622, 29.190117, 30.604317>,  <36.177807, 28.922558, 30.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924622, 29.190117, 30.604317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031468, 0.525285, -0.850344,
		-0.773539, -0.525974, -0.353537,
		-0.632966, 0.668900, 0.389777,
		35.734734, 29.390787, 30.721251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670597, 29.070124, 29.869970>,  <36.177807, 28.922558, 30.448406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670597, 29.070124, 29.869970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681751, 29.381714, 30.120544>,  <35.688442, 29.568668, 30.270889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681751, 29.381714, 30.120544>,  <35.670597, 29.070124, 29.869970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681751, 29.381714, 30.120544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105488, 0.620887, -0.776770,
		-0.994029, 0.087742, -0.064858,
		0.027886, 0.778974, 0.626436,
		35.690117, 29.615406, 30.308475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165222, 29.466267, 29.629883>,  <35.670597, 29.070124, 29.869970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165222, 29.466267, 29.629883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375061, 29.716267, 29.861115>,  <35.500965, 29.866266, 29.999853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375061, 29.716267, 29.861115>,  <35.165222, 29.466267, 29.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375061, 29.716267, 29.861115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033659, 0.693708, -0.719470,
		-0.850687, 0.357972, 0.384951,
		0.524594, 0.625001, 0.578079,
		35.532440, 29.903767, 30.034538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833092, 30.119429, 29.590782>,  <35.165222, 29.466267, 29.629883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833092, 30.119429, 29.590782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208538, 30.207176, 29.697273>,  <35.433807, 30.259825, 29.761168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208538, 30.207176, 29.697273>,  <34.833092, 30.119429, 29.590782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208538, 30.207176, 29.697273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043697, 0.841146, -0.539040,
		-0.342184, 0.494318, 0.799099,
		0.938616, 0.219369, 0.266226,
		35.490124, 30.272987, 29.777142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769981, 30.812281, 29.431713>,  <34.833092, 30.119429, 29.590782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769981, 30.812281, 29.431713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156307, 30.722534, 29.483650>,  <35.388103, 30.668686, 29.514812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156307, 30.722534, 29.483650>,  <34.769981, 30.812281, 29.431713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156307, 30.722534, 29.483650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255339, 0.736940, -0.625876,
		0.044739, 0.637635, 0.769038,
		0.965816, -0.224366, 0.129844,
		35.446053, 30.655224, 29.522604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939262, 31.436865, 29.673851>,  <34.769981, 30.812281, 29.431713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939262, 31.436865, 29.673851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242867, 31.220966, 29.528202>,  <35.425030, 31.091427, 29.440813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242867, 31.220966, 29.528202>,  <34.939262, 31.436865, 29.673851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242867, 31.220966, 29.528202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223807, 0.741464, -0.632567,
		0.611409, 0.398629, 0.683575,
		0.759006, -0.539746, -0.364122,
		35.470570, 31.059042, 29.418966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466099, 31.905172, 29.577419>,  <34.939262, 31.436865, 29.673851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466099, 31.905172, 29.577419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572193, 31.596806, 29.345787>,  <35.635849, 31.411785, 29.206808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572193, 31.596806, 29.345787>,  <35.466099, 31.905172, 29.577419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572193, 31.596806, 29.345787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208128, 0.632211, -0.746319,
		0.941453, 0.077428, 0.328134,
		0.265236, -0.770917, -0.579082,
		35.651764, 31.365530, 29.172062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015633, 32.163025, 29.246017>,  <35.466099, 31.905172, 29.577419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015633, 32.163025, 29.246017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945900, 31.828697, 29.037781>,  <35.904060, 31.628101, 28.912840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945900, 31.828697, 29.037781>,  <36.015633, 32.163025, 29.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945900, 31.828697, 29.037781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309497, 0.455383, -0.834768,
		0.934784, -0.306645, 0.179298,
		-0.174328, -0.835820, -0.520591,
		35.893600, 31.577951, 28.881603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612572, 31.984297, 28.969980>,  <36.015633, 32.163025, 29.246017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612572, 31.984297, 28.969980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322906, 31.836746, 28.736908>,  <36.149105, 31.748217, 28.597065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322906, 31.836746, 28.736908>,  <36.612572, 31.984297, 28.969980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322906, 31.836746, 28.736908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409855, 0.449303, -0.793817,
		0.554620, -0.813669, -0.174184,
		-0.724165, -0.368877, -0.582679,
		36.105656, 31.726084, 28.562105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030426, 31.853319, 28.365055>,  <36.612572, 31.984297, 28.969980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030426, 31.853319, 28.365055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645439, 31.851288, 28.256516>,  <36.414448, 31.850069, 28.191391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645439, 31.851288, 28.256516>,  <37.030426, 31.853319, 28.365055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645439, 31.851288, 28.256516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236204, 0.476727, -0.846723,
		0.133658, -0.879037, -0.457635,
		-0.962467, -0.005076, -0.271350,
		36.356697, 31.849766, 28.175110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919380, 31.562424, 27.639797>,  <37.030426, 31.853319, 28.365055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919380, 31.562424, 27.639797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587570, 31.778370, 27.696980>,  <36.388485, 31.907938, 27.731289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587570, 31.778370, 27.696980>,  <36.919380, 31.562424, 27.639797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587570, 31.778370, 27.696980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148773, 0.460349, -0.875183,
		-0.538290, -0.704717, -0.462187,
		-0.829524, 0.539863, 0.142958,
		36.338715, 31.940329, 27.739866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498825, 31.432932, 27.089304>,  <36.919380, 31.562424, 27.639797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498825, 31.432932, 27.089304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401150, 31.787270, 27.247116>,  <36.342545, 31.999872, 27.341803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401150, 31.787270, 27.247116>,  <36.498825, 31.432932, 27.089304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401150, 31.787270, 27.247116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061552, 0.420184, -0.905349,
		-0.967773, -0.196791, -0.157129,
		-0.244188, 0.885843, 0.394530,
		36.327892, 32.053024, 27.365475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951271, 31.708336, 26.639542>,  <36.498825, 31.432932, 27.089304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951271, 31.708336, 26.639542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088520, 32.007656, 26.866631>,  <36.170868, 32.187248, 27.002884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088520, 32.007656, 26.866631>,  <35.951271, 31.708336, 26.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088520, 32.007656, 26.866631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024664, 0.611386, -0.790948,
		-0.938967, 0.257390, 0.228237,
		0.343123, 0.748303, 0.567723,
		36.191456, 32.232147, 27.036947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641232, 32.221264, 26.385569>,  <35.951271, 31.708336, 26.639542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641232, 32.221264, 26.385569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920105, 32.417034, 26.595100>,  <36.087429, 32.534496, 26.720819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920105, 32.417034, 26.595100>,  <35.641232, 32.221264, 26.385569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920105, 32.417034, 26.595100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038358, 0.704184, -0.708980,
		-0.715863, 0.514384, 0.472174,
		0.697186, 0.489422, 0.523830,
		36.129261, 32.563862, 26.752249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355709, 32.893822, 26.464285>,  <35.641232, 32.221264, 26.385569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355709, 32.893822, 26.464285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755016, 32.893814, 26.487835>,  <35.994598, 32.893810, 26.501965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755016, 32.893814, 26.487835>,  <35.355709, 32.893822, 26.464285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755016, 32.893814, 26.487835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044886, 0.647364, -0.760858,
		-0.038099, 0.762181, 0.646242,
		0.998265, -0.000019, 0.058875,
		36.054497, 32.893810, 26.505497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535465, 33.625744, 26.618889>,  <35.355709, 32.893822, 26.464285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535465, 33.625744, 26.618889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818745, 33.407993, 26.439064>,  <35.988712, 33.277344, 26.331169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818745, 33.407993, 26.439064>,  <35.535465, 33.625744, 26.618889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818745, 33.407993, 26.439064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036083, 0.663841, -0.747002,
		0.705088, 0.512806, 0.489776,
		0.708201, -0.544375, -0.449563,
		36.031204, 33.244682, 26.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946499, 34.129230, 26.272734>,  <35.535465, 33.625744, 26.618889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946499, 34.129230, 26.272734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090008, 33.790886, 26.114849>,  <36.176113, 33.587879, 26.020119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090008, 33.790886, 26.114849>,  <35.946499, 34.129230, 26.272734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090008, 33.790886, 26.114849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064812, 0.444419, -0.893472,
		0.931172, 0.294972, 0.214267,
		0.358773, -0.845863, -0.394713,
		36.197639, 33.537128, 25.996435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531883, 34.333981, 26.034966>,  <35.946499, 34.129230, 26.272734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531883, 34.333981, 26.034966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470673, 33.994183, 25.832996>,  <36.433949, 33.790306, 25.711815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470673, 33.994183, 25.832996>,  <36.531883, 34.333981, 26.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470673, 33.994183, 25.832996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356780, 0.428989, -0.829865,
		0.921570, -0.307134, 0.237437,
		-0.153022, -0.849492, -0.504923,
		36.424767, 33.739334, 25.681519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106956, 34.096786, 25.683634>,  <36.531883, 34.333981, 26.034966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106956, 34.096786, 25.683634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829964, 33.905178, 25.467857>,  <36.663769, 33.790211, 25.338390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829964, 33.905178, 25.467857>,  <37.106956, 34.096786, 25.683634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829964, 33.905178, 25.467857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302190, 0.486378, -0.819828,
		0.655090, -0.730734, -0.192054,
		-0.692486, -0.479024, -0.539442,
		36.622219, 33.761471, 25.306025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446777, 33.779846, 25.133104>,  <37.106956, 34.096786, 25.683634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446777, 33.779846, 25.133104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066097, 33.772133, 25.010540>,  <36.837688, 33.767506, 24.937002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066097, 33.772133, 25.010540>,  <37.446777, 33.779846, 25.133104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066097, 33.772133, 25.010540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295039, 0.218615, -0.930140,
		0.084920, -0.975621, -0.202368,
		-0.951704, -0.019281, -0.306411,
		36.780586, 33.766350, 24.918617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444916, 33.414299, 24.572220>,  <37.446777, 33.779846, 25.133104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444916, 33.414299, 24.572220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126957, 33.656410, 24.555340>,  <36.936180, 33.801678, 24.545212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126957, 33.656410, 24.555340>,  <37.444916, 33.414299, 24.572220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126957, 33.656410, 24.555340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327443, 0.369392, -0.869673,
		-0.510803, -0.705118, -0.491822,
		-0.794897, 0.605275, -0.042199,
		36.888489, 33.837994, 24.542681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247124, 33.459969, 23.852720>,  <37.444916, 33.414299, 24.572220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247124, 33.459969, 23.852720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003586, 33.737713, 24.006172>,  <36.857464, 33.904362, 24.098244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003586, 33.737713, 24.006172>,  <37.247124, 33.459969, 23.852720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003586, 33.737713, 24.006172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002798, 0.481712, -0.876325,
		-0.793288, -0.534616, -0.291343,
		-0.608840, 0.694363, 0.383632,
		36.820934, 33.946022, 24.121262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573643, 33.421375, 23.505182>,  <37.247124, 33.459969, 23.852720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573643, 33.421375, 23.505182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644272, 33.788658, 23.647011>,  <36.686649, 34.009026, 23.732107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644272, 33.788658, 23.647011>,  <36.573643, 33.421375, 23.505182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644272, 33.788658, 23.647011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022636, 0.363925, -0.931153,
		-0.984026, 0.156394, 0.085046,
		0.176577, 0.918204, 0.354572,
		36.697247, 34.064121, 23.753382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097218, 33.793308, 23.179150>,  <36.573643, 33.421375, 23.505182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097218, 33.793308, 23.179150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368484, 34.057697, 23.307648>,  <36.531246, 34.216331, 23.384747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368484, 34.057697, 23.307648>,  <36.097218, 33.793308, 23.179150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368484, 34.057697, 23.307648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132990, 0.540285, -0.830906,
		-0.722773, 0.520772, 0.454308,
		0.678168, 0.660975, 0.321246,
		36.571934, 34.255989, 23.404022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904373, 34.399303, 22.874502>,  <36.097218, 33.793308, 23.179150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904373, 34.399303, 22.874502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275349, 34.497356, 22.987476>,  <36.497932, 34.556187, 23.055262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275349, 34.497356, 22.987476>,  <35.904373, 34.399303, 22.874502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275349, 34.497356, 22.987476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053070, 0.661315, -0.748228,
		-0.370194, 0.708924, 0.600319,
		0.927437, 0.245131, 0.282437,
		36.553581, 34.570896, 23.072208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309673, 34.033669, 22.727005>,  <35.904373, 34.399303, 22.874502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309673, 34.033669, 22.727005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935699, 33.981373, 22.595062>,  <34.711315, 33.949993, 22.515896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935699, 33.981373, 22.595062>,  <35.309673, 34.033669, 22.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935699, 33.981373, 22.595062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322066, -0.077440, 0.943545,
		-0.148904, 0.988387, 0.030294,
		-0.934934, -0.130741, -0.329858,
		34.655220, 33.942150, 22.496105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946430, 34.537342, 23.130085>,  <35.309673, 34.033669, 22.727005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946430, 34.537342, 23.130085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691814, 34.257648, 22.999924>,  <34.539047, 34.089832, 22.921827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691814, 34.257648, 22.999924>,  <34.946430, 34.537342, 23.130085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691814, 34.257648, 22.999924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335025, -0.129339, 0.933290,
		-0.694679, 0.703091, -0.151933,
		-0.636537, -0.699238, -0.325402,
		34.500854, 34.047878, 22.902304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187294, 34.706890, 23.402557>,  <34.946430, 34.537342, 23.130085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187294, 34.706890, 23.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190922, 34.314907, 23.322952>,  <34.193100, 34.079720, 23.275190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190922, 34.314907, 23.322952>,  <34.187294, 34.706890, 23.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190922, 34.314907, 23.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433163, -0.183229, 0.882495,
		-0.901270, 0.078199, -0.426142,
		0.009071, -0.979955, -0.199011,
		34.193642, 34.020920, 23.263248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517181, 34.463554, 23.552387>,  <34.187294, 34.706890, 23.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517181, 34.463554, 23.552387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740597, 34.131794, 23.548046>,  <33.874645, 33.932735, 23.545441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740597, 34.131794, 23.548046>,  <33.517181, 34.463554, 23.552387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740597, 34.131794, 23.548046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473076, -0.329275, 0.817177,
		-0.681344, -0.451293, -0.576285,
		0.558542, -0.829405, -0.010854,
		33.908161, 33.882973, 23.544790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080578, 33.934494, 23.610954>,  <33.517181, 34.463554, 23.552387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080578, 33.934494, 23.610954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419758, 33.761650, 23.733757>,  <33.623268, 33.657944, 23.807440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419758, 33.761650, 23.733757>,  <33.080578, 33.934494, 23.610954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419758, 33.761650, 23.733757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486977, -0.406304, 0.773156,
		-0.209351, -0.805107, -0.554956,
		0.847954, -0.432112, 0.307008,
		33.674145, 33.632015, 23.825859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931126, 33.315849, 23.785297>,  <33.080578, 33.934494, 23.610954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931126, 33.315849, 23.785297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283661, 33.344372, 23.972130>,  <33.495182, 33.361485, 24.084229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283661, 33.344372, 23.972130>,  <32.931126, 33.315849, 23.785297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283661, 33.344372, 23.972130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338003, -0.595596, 0.728711,
		0.330154, -0.800113, -0.500817,
		0.881335, 0.071309, 0.467079,
		33.548061, 33.365765, 24.112253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159950, 32.602036, 24.001740>,  <32.931126, 33.315849, 23.785297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159950, 32.602036, 24.001740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345940, 32.866074, 24.237732>,  <33.457531, 33.024498, 24.379328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345940, 32.866074, 24.237732>,  <33.159950, 32.602036, 24.001740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345940, 32.866074, 24.237732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196831, -0.572646, 0.795823,
		0.863168, -0.486161, -0.136337,
		0.464971, 0.660094, 0.589982,
		33.485432, 33.064102, 24.414726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502941, 32.222984, 24.517941>,  <33.159950, 32.602036, 24.001740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502941, 32.222984, 24.517941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504009, 32.575771, 24.706463>,  <33.504650, 32.787445, 24.819576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504009, 32.575771, 24.706463>,  <33.502941, 32.222984, 24.517941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504009, 32.575771, 24.706463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227639, -0.458395, 0.859101,
		0.973742, -0.109584, 0.199545,
		0.002673, 0.881967, 0.471304,
		33.504810, 32.840363, 24.847855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670673, 32.063198, 25.312107>,  <33.502941, 32.222984, 24.517941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670673, 32.063198, 25.312107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550739, 32.443954, 25.337406>,  <33.478779, 32.672409, 25.352585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550739, 32.443954, 25.337406>,  <33.670673, 32.063198, 25.312107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550739, 32.443954, 25.337406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280953, -0.151464, 0.947694,
		0.911682, 0.266381, 0.312851,
		-0.299834, 0.951893, 0.063246,
		33.460789, 32.729523, 25.356380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181061, 32.384285, 25.814724>,  <33.670673, 32.063198, 25.312107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181061, 32.384285, 25.814724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829269, 32.572414, 25.785580>,  <33.618195, 32.685291, 25.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829269, 32.572414, 25.785580>,  <34.181061, 32.384285, 25.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829269, 32.572414, 25.785580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065291, 0.032417, 0.997339,
		0.471431, 0.881900, 0.002197,
		-0.879483, 0.470320, -0.072863,
		33.565426, 32.713509, 25.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261322, 32.908939, 26.328436>,  <34.181061, 32.384285, 25.814724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261322, 32.908939, 26.328436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873032, 32.878590, 26.237286>,  <33.640057, 32.860378, 26.182596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873032, 32.878590, 26.237286>,  <34.261322, 32.908939, 26.328436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873032, 32.878590, 26.237286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221136, -0.087861, 0.971277,
		-0.093720, 0.993239, 0.068510,
		-0.970729, -0.075878, -0.227875,
		33.581814, 32.855827, 26.168922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932270, 33.202461, 26.796072>,  <34.261322, 32.908939, 26.328436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932270, 33.202461, 26.796072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620823, 32.996750, 26.652256>,  <33.433952, 32.873325, 26.565966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620823, 32.996750, 26.652256>,  <33.932270, 33.202461, 26.796072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620823, 32.996750, 26.652256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294037, -0.207154, 0.933075,
		-0.554338, 0.832231, 0.010079,
		-0.778622, -0.514275, -0.359540,
		33.387238, 32.842468, 26.544394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363857, 33.375999, 27.255703>,  <33.932270, 33.202461, 26.796072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363857, 33.375999, 27.255703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266327, 33.034935, 27.070873>,  <33.207809, 32.830296, 26.959974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266327, 33.034935, 27.070873>,  <33.363857, 33.375999, 27.255703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266327, 33.034935, 27.070873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165732, -0.432813, 0.886118,
		-0.955552, 0.292642, -0.035781,
		-0.243829, -0.852662, -0.462076,
		33.193180, 32.779137, 26.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764915, 33.303749, 27.600044>,  <33.363857, 33.375999, 27.255703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764915, 33.303749, 27.600044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896969, 32.949356, 27.469788>,  <32.976200, 32.736721, 27.391634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896969, 32.949356, 27.469788>,  <32.764915, 33.303749, 27.600044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896969, 32.949356, 27.469788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010321, -0.341575, 0.939798,
		-0.943879, -0.313617, -0.103620,
		0.330130, -0.885986, -0.325642,
		32.996010, 32.683559, 27.372095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516876, 32.851719, 28.115694>,  <32.764915, 33.303749, 27.600044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516876, 32.851719, 28.115694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769371, 32.616142, 27.913826>,  <32.920868, 32.474796, 27.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769371, 32.616142, 27.913826>,  <32.516876, 32.851719, 28.115694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769371, 32.616142, 27.913826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097870, -0.585005, 0.805103,
		-0.769394, -0.557599, -0.311634,
		0.631232, -0.588942, -0.504672,
		32.958740, 32.439461, 27.762424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247536, 32.194366, 28.162741>,  <32.516876, 32.851719, 28.115694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247536, 32.194366, 28.162741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635593, 32.146317, 28.078465>,  <32.868427, 32.117485, 28.027899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635593, 32.146317, 28.078465>,  <32.247536, 32.194366, 28.162741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635593, 32.146317, 28.078465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052988, -0.742752, 0.667466,
		-0.236672, -0.658702, -0.714211,
		0.970144, -0.120126, -0.210692,
		32.926636, 32.110279, 28.015257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335632, 31.468935, 28.039873>,  <32.247536, 32.194366, 28.162741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335632, 31.468935, 28.039873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694912, 31.627388, 28.116100>,  <32.910480, 31.722460, 28.161837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694912, 31.627388, 28.116100>,  <32.335632, 31.468935, 28.039873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694912, 31.627388, 28.116100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260118, -0.828426, 0.496033,
		0.354365, -0.395967, -0.847134,
		0.898200, 0.396132, 0.190567,
		32.964371, 31.746227, 28.173271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785225, 31.007759, 27.867636>,  <32.335632, 31.468935, 28.039873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785225, 31.007759, 27.867636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931259, 31.240025, 28.158714>,  <33.018879, 31.379383, 28.333361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931259, 31.240025, 28.158714>,  <32.785225, 31.007759, 27.867636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931259, 31.240025, 28.158714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178732, -0.810827, 0.557327,
		0.913654, -0.073412, -0.399808,
		0.365090, 0.580663, 0.727695,
		33.040787, 31.414223, 28.377024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283451, 30.541950, 28.053518>,  <32.785225, 31.007759, 27.867636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283451, 30.541950, 28.053518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294601, 30.812054, 28.348339>,  <33.301292, 30.974115, 28.525232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294601, 30.812054, 28.348339>,  <33.283451, 30.541950, 28.053518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294601, 30.812054, 28.348339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290723, -0.710942, 0.640345,
		0.956401, 0.196431, -0.216129,
		0.027872, 0.675260, 0.737053,
		33.302963, 31.014631, 28.569454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883316, 30.402428, 28.448605>,  <33.283451, 30.541950, 28.053518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883316, 30.402428, 28.448605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635269, 30.597229, 28.694626>,  <33.486443, 30.714109, 28.842237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635269, 30.597229, 28.694626>,  <33.883316, 30.402428, 28.448605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635269, 30.597229, 28.694626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205588, -0.655713, 0.726480,
		0.757095, 0.576947, 0.306494,
		-0.620113, 0.487003, 0.615051,
		33.449234, 30.743330, 28.879141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264378, 30.349003, 29.202093>,  <33.883316, 30.402428, 28.448605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264378, 30.349003, 29.202093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895351, 30.476433, 29.289169>,  <33.673935, 30.552891, 29.341415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895351, 30.476433, 29.289169>,  <34.264378, 30.349003, 29.202093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895351, 30.476433, 29.289169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024527, -0.611464, 0.790892,
		0.385069, 0.724308, 0.571927,
		-0.922562, 0.318576, 0.217691,
		33.618584, 30.572006, 29.354477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285789, 30.518414, 29.924810>,  <34.264378, 30.349003, 29.202093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285789, 30.518414, 29.924810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898079, 30.483093, 29.832977>,  <33.665451, 30.461901, 29.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898079, 30.483093, 29.832977>,  <34.285789, 30.518414, 29.924810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898079, 30.483093, 29.832977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166189, -0.453021, 0.875873,
		-0.181348, 0.887116, 0.424427,
		-0.969275, -0.088303, -0.229583,
		33.607296, 30.456602, 29.764103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842525, 30.767414, 30.538626>,  <34.285789, 30.518414, 29.924810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842525, 30.767414, 30.538626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592167, 30.536251, 30.329140>,  <33.441952, 30.397554, 30.203447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592167, 30.536251, 30.329140>,  <33.842525, 30.767414, 30.538626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592167, 30.536251, 30.329140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153536, -0.567067, 0.809235,
		-0.764643, 0.586908, 0.266196,
		-0.625897, -0.577906, -0.523715,
		33.404396, 30.362879, 30.172026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094589, 30.791252, 30.870508>,  <33.842525, 30.767414, 30.538626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094589, 30.791252, 30.870508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182716, 30.460697, 30.663223>,  <33.235592, 30.262365, 30.538853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182716, 30.460697, 30.663223>,  <33.094589, 30.791252, 30.870508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182716, 30.460697, 30.663223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147709, -0.553407, 0.819708,
		-0.964179, -0.104053, -0.243992,
		0.220320, -0.826386, -0.518214,
		33.248814, 30.212782, 30.507759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660915, 30.292276, 31.153723>,  <33.094589, 30.791252, 30.870508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660915, 30.292276, 31.153723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908356, 30.067776, 30.933784>,  <33.056820, 29.933075, 30.801821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908356, 30.067776, 30.933784>,  <32.660915, 30.292276, 31.153723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908356, 30.067776, 30.933784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184491, -0.784003, 0.592707,
		-0.763740, -0.265206, -0.588530,
		0.618598, -0.561253, -0.549846,
		33.093937, 29.899399, 30.768831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276810, 29.720587, 30.994907>,  <32.660915, 30.292276, 31.153723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276810, 29.720587, 30.994907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665943, 29.629364, 30.978958>,  <32.899422, 29.574631, 30.969389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665943, 29.629364, 30.978958>,  <32.276810, 29.720587, 30.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665943, 29.629364, 30.978958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189247, -0.882538, 0.430479,
		-0.133364, -0.411238, -0.901719,
		0.972831, -0.228058, -0.039873,
		32.957794, 29.560947, 30.966995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381134, 29.121302, 30.571077>,  <32.276810, 29.720587, 30.994907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381134, 29.121302, 30.571077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681473, 29.168327, 30.831047>,  <32.861675, 29.196543, 30.987030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681473, 29.168327, 30.831047>,  <32.381134, 29.121302, 30.571077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681473, 29.168327, 30.831047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257744, -0.853854, 0.452219,
		0.608106, -0.507063, -0.610814,
		0.750849, 0.117564, 0.649926,
		32.906727, 29.203596, 31.026026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547295, 28.474464, 30.699667>,  <32.381134, 29.121302, 30.571077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547295, 28.474464, 30.699667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767731, 28.640717, 30.989094>,  <32.899994, 28.740467, 31.162750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767731, 28.640717, 30.989094>,  <32.547295, 28.474464, 30.699667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767731, 28.640717, 30.989094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052955, -0.847956, 0.527414,
		0.832761, -0.328972, -0.445294,
		0.551094, 0.415630, 0.723566,
		32.933060, 28.765406, 31.206163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009544, 27.971474, 30.808340>,  <32.547295, 28.474464, 30.699667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009544, 27.971474, 30.808340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013298, 28.198402, 31.137718>,  <33.015549, 28.334558, 31.335344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013298, 28.198402, 31.137718>,  <33.009544, 27.971474, 30.808340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013298, 28.198402, 31.137718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123918, -0.816473, 0.563928,
		0.992248, -0.107330, 0.062641,
		0.009381, 0.567319, 0.823444,
		33.016113, 28.368599, 31.384752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377148, 27.560286, 31.311886>,  <33.009544, 27.971474, 30.808340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377148, 27.560286, 31.311886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179794, 27.832150, 31.529007>,  <33.061382, 27.995268, 31.659279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179794, 27.832150, 31.529007>,  <33.377148, 27.560286, 31.311886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179794, 27.832150, 31.529007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165207, -0.685909, 0.708686,
		0.853979, 0.259979, 0.450701,
		-0.493383, 0.679661, 0.542802,
		33.031780, 28.036049, 31.691847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660694, 27.550238, 32.109756>,  <33.377148, 27.560286, 31.311886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660694, 27.550238, 32.109756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300888, 27.721371, 32.145161>,  <33.085003, 27.824051, 32.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300888, 27.721371, 32.145161>,  <33.660694, 27.550238, 32.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300888, 27.721371, 32.145161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258996, -0.685344, 0.680606,
		0.351844, 0.589291, 0.727284,
		-0.899515, 0.427830, 0.088510,
		33.031033, 27.849720, 32.171715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464394, 27.559336, 32.871128>,  <33.660694, 27.550238, 32.109756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464394, 27.559336, 32.871128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125946, 27.606350, 32.663181>,  <32.922878, 27.634558, 32.538414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125946, 27.606350, 32.663181>,  <33.464394, 27.559336, 32.871128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125946, 27.606350, 32.663181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498024, -0.521807, 0.692596,
		-0.189868, 0.844928, 0.500047,
		-0.846122, 0.117533, -0.519868,
		32.872108, 27.641609, 32.507221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003666, 27.661201, 33.370152>,  <33.464394, 27.559336, 32.871128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003666, 27.661201, 33.370152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779060, 27.549419, 33.058613>,  <32.644295, 27.482349, 32.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779060, 27.549419, 33.058613>,  <33.003666, 27.661201, 33.370152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779060, 27.549419, 33.058613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508127, -0.626419, 0.591106,
		-0.653072, 0.727670, 0.209746,
		-0.561518, -0.279457, -0.778846,
		32.610603, 27.465582, 32.824959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462708, 27.443775, 33.688507>,  <33.003666, 27.661201, 33.370152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462708, 27.443775, 33.688507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375462, 27.273796, 33.337090>,  <32.323112, 27.171808, 33.126240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375462, 27.273796, 33.337090>,  <32.462708, 27.443775, 33.688507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375462, 27.273796, 33.337090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513965, -0.715248, 0.473561,
		-0.829618, 0.554833, -0.062403,
		-0.218114, -0.424948, -0.878547,
		32.310028, 27.146313, 33.073524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791809, 27.281885, 33.711029>,  <32.462708, 27.443775, 33.688507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791809, 27.281885, 33.711029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947180, 27.028439, 33.443401>,  <32.040401, 26.876369, 33.282825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947180, 27.028439, 33.443401>,  <31.791809, 27.281885, 33.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947180, 27.028439, 33.443401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461582, -0.762208, 0.453852,
		-0.797537, 0.132540, -0.588530,
		0.388428, -0.633619, -0.669067,
		32.063709, 26.838352, 33.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235394, 26.787334, 33.558945>,  <31.791809, 27.281885, 33.711029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235394, 26.787334, 33.558945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565723, 26.611668, 33.417442>,  <31.763922, 26.506268, 33.332539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565723, 26.611668, 33.417442>,  <31.235394, 26.787334, 33.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565723, 26.611668, 33.417442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378041, -0.896616, 0.230575,
		-0.418447, -0.056679, -0.906471,
		0.825825, -0.439166, -0.353759,
		31.813471, 26.479918, 33.311314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083378, 26.284367, 32.976765>,  <31.235394, 26.787334, 33.558945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083378, 26.284367, 32.976765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433907, 26.191967, 33.145855>,  <31.644224, 26.136528, 33.247311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433907, 26.191967, 33.145855>,  <31.083378, 26.284367, 32.976765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433907, 26.191967, 33.145855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367785, -0.887565, 0.277422,
		0.311112, -0.398584, -0.862752,
		0.876324, -0.230998, 0.422726,
		31.696804, 26.122667, 33.272671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296389, 25.634607, 32.617554>,  <31.083378, 26.284367, 32.976765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296389, 25.634607, 32.617554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489761, 25.656155, 32.967041>,  <31.605785, 25.669083, 33.176735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489761, 25.656155, 32.967041>,  <31.296389, 25.634607, 32.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489761, 25.656155, 32.967041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357577, -0.898885, 0.253268,
		0.799019, -0.434861, -0.415289,
		0.483433, 0.053869, 0.873722,
		31.634792, 25.672316, 33.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217785, 24.966669, 32.846039>,  <31.296389, 25.634607, 32.617554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217785, 24.966669, 32.846039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079966, 24.691319, 32.590721>,  <30.997274, 24.526108, 32.437531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079966, 24.691319, 32.590721>,  <31.217785, 24.966669, 32.846039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079966, 24.691319, 32.590721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252230, 0.587048, -0.769256,
		0.904250, -0.426042, -0.028636,
		-0.344546, -0.688377, -0.638299,
		30.976603, 24.484806, 32.399231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751873, 24.754633, 32.359612>,  <31.217785, 24.966669, 32.846039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751873, 24.754633, 32.359612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379456, 24.720554, 32.217682>,  <31.156006, 24.700108, 32.132523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379456, 24.720554, 32.217682>,  <31.751873, 24.754633, 32.359612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379456, 24.720554, 32.217682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271448, 0.488143, -0.829477,
		0.243873, -0.868595, -0.431356,
		-0.931043, -0.085196, -0.354824,
		31.100143, 24.694996, 32.111237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793110, 24.681654, 31.566099>,  <31.751873, 24.754633, 32.359612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793110, 24.681654, 31.566099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416670, 24.802925, 31.625988>,  <31.190805, 24.875689, 31.661921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416670, 24.802925, 31.625988>,  <31.793110, 24.681654, 31.566099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416670, 24.802925, 31.625988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073345, 0.615277, -0.784891,
		-0.330083, -0.727678, -0.601273,
		-0.941098, 0.303180, 0.149721,
		31.134340, 24.893879, 31.670904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531776, 24.522930, 30.915907>,  <31.793110, 24.681654, 31.566099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531776, 24.522930, 30.915907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276922, 24.775188, 31.093151>,  <31.124010, 24.926542, 31.199497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276922, 24.775188, 31.093151>,  <31.531776, 24.522930, 30.915907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276922, 24.775188, 31.093151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002953, 0.572903, -0.819618,
		-0.770745, -0.523517, -0.363155,
		-0.637136, 0.630644, 0.443108,
		31.085781, 24.964382, 31.226084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939856, 24.699629, 30.509283>,  <31.531776, 24.522930, 30.915907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939856, 24.699629, 30.509283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994127, 25.010971, 30.754478>,  <31.026690, 25.197777, 30.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994127, 25.010971, 30.754478>,  <30.939856, 24.699629, 30.509283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994127, 25.010971, 30.754478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091172, 0.606274, -0.790013,
		-0.986549, 0.163075, 0.011294,
		0.135679, 0.778356, 0.612987,
		31.034830, 25.244478, 30.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795660, 25.131256, 30.074518>,  <30.939856, 24.699629, 30.509283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795660, 25.131256, 30.074518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918200, 25.380779, 30.362133>,  <30.991724, 25.530493, 30.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918200, 25.380779, 30.362133>,  <30.795660, 25.131256, 30.074518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918200, 25.380779, 30.362133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369290, 0.618314, -0.693766,
		-0.877368, 0.478068, -0.040947,
		0.306349, 0.623810, 0.719035,
		31.010105, 25.567923, 30.577843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668177, 25.821449, 29.837381>,  <30.795660, 25.131256, 30.074518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668177, 25.821449, 29.837381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945467, 25.866016, 30.122204>,  <31.111841, 25.892756, 30.293098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945467, 25.866016, 30.122204>,  <30.668177, 25.821449, 29.837381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945467, 25.866016, 30.122204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456272, 0.696940, -0.553255,
		-0.557903, 0.708422, 0.432300,
		0.693225, 0.111416, 0.712057,
		31.153435, 25.899441, 30.335821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645407, 26.500156, 29.998745>,  <30.668177, 25.821449, 29.837381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645407, 26.500156, 29.998745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005980, 26.382870, 30.126148>,  <31.222322, 26.312498, 30.202589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005980, 26.382870, 30.126148>,  <30.645407, 26.500156, 29.998745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005980, 26.382870, 30.126148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405541, 0.829423, -0.384181,
		-0.151527, 0.475480, 0.866579,
		0.901430, -0.293219, 0.318506,
		31.276409, 26.294905, 30.221701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963428, 27.058062, 30.190069>,  <30.645407, 26.500156, 29.998745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963428, 27.058062, 30.190069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280638, 26.816074, 30.161419>,  <31.470963, 26.670883, 30.144228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280638, 26.816074, 30.161419>,  <30.963428, 27.058062, 30.190069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280638, 26.816074, 30.161419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535440, 0.748258, -0.391680,
		0.290548, 0.272259, 0.917309,
		0.793023, -0.604966, -0.071627,
		31.518545, 26.634584, 30.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484295, 27.546314, 30.412233>,  <30.963428, 27.058062, 30.190069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484295, 27.546314, 30.412233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649771, 27.234875, 30.223492>,  <31.749056, 27.048010, 30.110247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649771, 27.234875, 30.223492>,  <31.484295, 27.546314, 30.412233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649771, 27.234875, 30.223492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407387, 0.621809, -0.668872,
		0.814185, 0.084479, 0.574426,
		0.413689, -0.778600, -0.471852,
		31.773878, 27.001295, 30.081936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204254, 27.749317, 30.322638>,  <31.484295, 27.546314, 30.412233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204254, 27.749317, 30.322638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100586, 27.488152, 30.037952>,  <32.038383, 27.331451, 29.867142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100586, 27.488152, 30.037952>,  <32.204254, 27.749317, 30.322638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100586, 27.488152, 30.037952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447813, 0.571663, -0.687507,
		0.855742, -0.496894, 0.144226,
		-0.259170, -0.652915, -0.711712,
		32.022835, 27.292276, 29.824438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851265, 27.543480, 29.925976>,  <32.204254, 27.749317, 30.322638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851265, 27.543480, 29.925976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534531, 27.480469, 29.689945>,  <32.344490, 27.442661, 29.548326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534531, 27.480469, 29.689945>,  <32.851265, 27.543480, 29.925976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534531, 27.480469, 29.689945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501883, 0.382715, -0.775656,
		0.348012, -0.910339, -0.223990,
		-0.791834, -0.157521, -0.590073,
		32.296982, 27.433210, 29.512922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188545, 27.529879, 29.425375>,  <32.851265, 27.543480, 29.925976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188545, 27.529879, 29.425375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828861, 27.614738, 29.272324>,  <32.613049, 27.665655, 29.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828861, 27.614738, 29.272324>,  <33.188545, 27.529879, 29.425375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828861, 27.614738, 29.272324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425277, 0.218501, -0.878292,
		-0.102727, -0.952496, -0.286703,
		-0.899215, 0.212152, -0.382629,
		32.559097, 27.678385, 29.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210342, 27.278666, 28.680532>,  <33.188545, 27.529879, 29.425375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210342, 27.278666, 28.680532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875999, 27.497520, 28.698315>,  <32.675392, 27.628834, 28.708984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875999, 27.497520, 28.698315>,  <33.210342, 27.278666, 28.680532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875999, 27.497520, 28.698315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203254, 0.383703, -0.900811,
		-0.509927, -0.743916, -0.431930,
		-0.835860, 0.547139, 0.044457,
		32.625240, 27.661663, 28.711651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977467, 27.246197, 28.049129>,  <33.210342, 27.278666, 28.680532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977467, 27.246197, 28.049129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795589, 27.565109, 28.207924>,  <32.686462, 27.756456, 28.303200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795589, 27.565109, 28.207924>,  <32.977467, 27.246197, 28.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795589, 27.565109, 28.207924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159778, 0.511515, -0.844289,
		-0.876200, -0.320461, -0.359969,
		-0.454692, 0.797281, 0.396987,
		32.659184, 27.804293, 28.327021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472546, 27.467379, 27.544422>,  <32.977467, 27.246197, 28.049129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472546, 27.467379, 27.544422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562214, 27.776985, 27.781284>,  <32.616016, 27.962749, 27.923401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562214, 27.776985, 27.781284>,  <32.472546, 27.467379, 27.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562214, 27.776985, 27.781284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019713, 0.603892, -0.796822,
		-0.974351, 0.190297, 0.120117,
		0.224171, 0.774016, 0.592154,
		32.629463, 28.009190, 27.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947515, 27.899069, 27.528395>,  <32.472546, 27.467379, 27.544422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947515, 27.899069, 27.528395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241146, 28.151573, 27.628506>,  <32.417324, 28.303076, 27.688572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241146, 28.151573, 27.628506>,  <31.947515, 27.899069, 27.528395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241146, 28.151573, 27.628506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232950, 0.580291, -0.780382,
		-0.637860, 0.514558, 0.573031,
		0.734077, 0.631262, 0.250278,
		32.461369, 28.340952, 27.703588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604767, 28.595800, 27.452110>,  <31.947515, 27.899069, 27.528395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604767, 28.595800, 27.452110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000317, 28.645119, 27.418831>,  <32.237648, 28.674709, 27.398863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000317, 28.645119, 27.418831>,  <31.604767, 28.595800, 27.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000317, 28.645119, 27.418831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140345, 0.588189, -0.796453,
		-0.049262, 0.799270, 0.598950,
		0.988876, 0.123295, -0.083198,
		32.296978, 28.682108, 27.393871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732277, 29.298243, 27.352821>,  <31.604767, 28.595800, 27.452110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732277, 29.298243, 27.352821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073341, 29.122906, 27.239098>,  <32.277981, 29.017704, 27.170864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073341, 29.122906, 27.239098>,  <31.732277, 29.298243, 27.352821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073341, 29.122906, 27.239098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185707, 0.762898, -0.619273,
		0.488350, 0.475231, 0.731895,
		0.852659, -0.438340, -0.284307,
		32.329140, 28.991404, 27.153805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179672, 29.872480, 27.308958>,  <31.732277, 29.298243, 27.352821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179672, 29.872480, 27.308958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325443, 29.593479, 27.062160>,  <32.412907, 29.426079, 26.914082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325443, 29.593479, 27.062160>,  <32.179672, 29.872480, 27.308958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325443, 29.593479, 27.062160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061775, 0.679207, -0.731342,
		0.929180, 0.228407, 0.290611,
		0.364429, -0.697501, -0.616996,
		32.434772, 29.384230, 26.877062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580750, 30.244993, 26.968508>,  <32.179672, 29.872480, 27.308958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580750, 30.244993, 26.968508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542503, 29.917686, 26.741776>,  <32.519554, 29.721302, 26.605736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542503, 29.917686, 26.741776>,  <32.580750, 30.244993, 26.968508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542503, 29.917686, 26.741776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043589, 0.572336, -0.818860,
		0.994463, -0.053590, -0.090392,
		-0.095617, -0.818266, -0.566831,
		32.513817, 29.672207, 26.571726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075153, 30.314323, 26.387682>,  <32.580750, 30.244993, 26.968508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075153, 30.314323, 26.387682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786682, 30.057758, 26.282993>,  <32.613602, 29.903820, 26.220181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786682, 30.057758, 26.282993>,  <33.075153, 30.314323, 26.387682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786682, 30.057758, 26.282993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057530, 0.431947, -0.900062,
		0.690362, -0.634044, -0.348409,
		-0.721173, -0.641413, -0.261723,
		32.570332, 29.865335, 26.204477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176121, 30.079401, 25.693081>,  <33.075153, 30.314323, 26.387682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176121, 30.079401, 25.693081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787315, 30.024548, 25.769371>,  <32.554031, 29.991636, 25.815145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787315, 30.024548, 25.769371>,  <33.176121, 30.079401, 25.693081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787315, 30.024548, 25.769371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234399, 0.512800, -0.825889,
		0.015451, -0.847485, -0.530594,
		-0.972018, -0.137132, 0.190727,
		32.495708, 29.983408, 25.826590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839642, 30.149147, 25.068233>,  <33.176121, 30.079401, 25.693081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839642, 30.149147, 25.068233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543961, 30.197819, 25.333195>,  <32.366554, 30.227022, 25.492172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543961, 30.197819, 25.333195>,  <32.839642, 30.149147, 25.068233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543961, 30.197819, 25.333195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465623, 0.618288, -0.633178,
		-0.486601, -0.776475, -0.400382,
		-0.739198, 0.121678, 0.662405,
		32.322201, 30.234322, 25.531916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399506, 30.161484, 24.594700>,  <32.839642, 30.149147, 25.068233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399506, 30.161484, 24.594700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219757, 30.310760, 24.919365>,  <32.111908, 30.400328, 25.114164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219757, 30.310760, 24.919365>,  <32.399506, 30.161484, 24.594700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219757, 30.310760, 24.919365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432186, 0.704346, -0.563128,
		-0.781845, -0.603841, -0.155223,
		-0.449371, 0.373193, 0.811661,
		32.084946, 30.422718, 25.162863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728527, 30.295797, 24.419752>,  <32.399506, 30.161484, 24.594700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728527, 30.295797, 24.419752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746225, 30.518219, 24.751740>,  <31.756844, 30.651672, 24.950932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746225, 30.518219, 24.751740>,  <31.728527, 30.295797, 24.419752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746225, 30.518219, 24.751740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573293, 0.694506, -0.434736,
		-0.818155, -0.456581, 0.349509,
		0.044244, 0.556052, 0.829969,
		31.759499, 30.685034, 25.000731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997078, 30.503878, 24.501839>,  <31.728527, 30.295797, 24.419752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997078, 30.503878, 24.501839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251101, 30.748791, 24.690228>,  <31.403513, 30.895739, 24.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251101, 30.748791, 24.690228>,  <30.997078, 30.503878, 24.501839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251101, 30.748791, 24.690228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507988, 0.790340, -0.342506,
		-0.581938, -0.021738, 0.812942,
		0.635055, 0.612282, 0.470972,
		31.441618, 30.932476, 24.831518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607588, 31.140320, 24.853781>,  <30.997078, 30.503878, 24.501839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607588, 31.140320, 24.853781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991283, 31.241879, 24.804146>,  <31.221500, 31.302813, 24.774364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991283, 31.241879, 24.804146>,  <30.607588, 31.140320, 24.853781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991283, 31.241879, 24.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279557, 0.788328, -0.548075,
		-0.041332, 0.560425, 0.827173,
		0.959239, 0.253895, -0.124088,
		31.279055, 31.318047, 24.766920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575068, 31.878082, 24.858078>,  <30.607588, 31.140320, 24.853781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575068, 31.878082, 24.858078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940367, 31.827194, 24.703266>,  <31.159546, 31.796661, 24.610380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940367, 31.827194, 24.703266>,  <30.575068, 31.878082, 24.858078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940367, 31.827194, 24.703266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205483, 0.676464, -0.707229,
		0.351786, 0.725404, 0.591638,
		0.913249, -0.127221, -0.387029,
		31.214342, 31.789028, 24.587158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952524, 32.541077, 24.780870>,  <30.575068, 31.878082, 24.858078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952524, 32.541077, 24.780870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156723, 32.301857, 24.533733>,  <31.279243, 32.158325, 24.385450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156723, 32.301857, 24.533733>,  <30.952524, 32.541077, 24.780870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156723, 32.301857, 24.533733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260419, 0.577250, -0.773928,
		0.819496, 0.555987, 0.138943,
		0.510499, -0.598047, -0.617844,
		31.309872, 32.122444, 24.348381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366924, 32.986057, 24.215073>,  <30.952524, 32.541077, 24.780870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366924, 32.986057, 24.215073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311756, 32.624752, 24.052547>,  <31.278654, 32.407967, 23.955032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311756, 32.624752, 24.052547>,  <31.366924, 32.986057, 24.215073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311756, 32.624752, 24.052547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425539, 0.424480, -0.799208,
		0.894368, 0.062673, -0.442919,
		-0.137921, -0.903266, -0.406311,
		31.270380, 32.353771, 23.930655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651443, 33.081264, 23.546982>,  <31.366924, 32.986057, 24.215073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651443, 33.081264, 23.546982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456877, 32.736332, 23.490719>,  <31.340137, 32.529373, 23.456961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456877, 32.736332, 23.490719>,  <31.651443, 33.081264, 23.546982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456877, 32.736332, 23.490719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351420, 0.340479, -0.872111,
		0.799939, -0.374779, -0.468655,
		-0.486416, -0.862331, -0.140657,
		31.310951, 32.477634, 23.448523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779007, 32.871647, 22.836666>,  <31.651443, 33.081264, 23.546982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779007, 32.871647, 22.836666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445322, 32.686455, 22.956490>,  <31.245111, 32.575340, 23.028383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445322, 32.686455, 22.956490>,  <31.779007, 32.871647, 22.836666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445322, 32.686455, 22.956490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484448, 0.355789, -0.799202,
		0.263435, -0.811827, -0.521094,
		-0.834213, -0.462981, 0.299561,
		31.195059, 32.547562, 23.046358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477795, 32.711739, 22.205378>,  <31.779007, 32.871647, 22.836666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477795, 32.711739, 22.205378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176016, 32.661480, 22.463066>,  <30.994947, 32.631325, 22.617680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176016, 32.661480, 22.463066>,  <31.477795, 32.711739, 22.205378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176016, 32.661480, 22.463066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638563, 0.367514, -0.676144,
		-0.151808, -0.921492, -0.357501,
		-0.754448, -0.125643, 0.644222,
		30.949682, 32.623787, 22.656332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848606, 32.498070, 21.771202>,  <31.477795, 32.711739, 22.205378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848606, 32.498070, 21.771202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692312, 32.638924, 22.111397>,  <30.598536, 32.723434, 22.315514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692312, 32.638924, 22.111397>,  <30.848606, 32.498070, 21.771202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692312, 32.638924, 22.111397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808643, 0.310134, -0.499914,
		-0.439801, -0.883074, 0.163569,
		-0.390733, 0.352132, 0.850489,
		30.575092, 32.744564, 22.366543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131573, 32.105457, 21.880592>,  <30.848606, 32.498070, 21.771202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131573, 32.105457, 21.880592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133289, 32.458393, 22.068829>,  <30.134319, 32.670155, 22.181770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133289, 32.458393, 22.068829>,  <30.131573, 32.105457, 21.880592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133289, 32.458393, 22.068829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772941, 0.301504, -0.558263,
		-0.634463, -0.361345, 0.683291,
		0.004290, 0.882341, 0.470591,
		30.134577, 32.723095, 22.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485340, 32.285763, 21.799171>,  <30.131573, 32.105457, 21.880592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485340, 32.285763, 21.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639574, 32.630478, 21.931015>,  <29.732115, 32.837307, 22.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639574, 32.630478, 21.931015>,  <29.485340, 32.285763, 21.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639574, 32.630478, 21.931015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641558, 0.507157, -0.575495,
		-0.663120, 0.010439, 0.748441,
		0.385584, 0.861791, 0.329609,
		29.755249, 32.889015, 22.029898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940878, 32.685223, 21.806412>,  <29.485340, 32.285763, 21.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940878, 32.685223, 21.806412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253988, 32.933662, 21.821880>,  <29.441854, 33.082726, 21.831161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253988, 32.933662, 21.821880>,  <28.940878, 32.685223, 21.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253988, 32.933662, 21.821880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488155, 0.651391, -0.580856,
		-0.385962, 0.435802, 0.813087,
		0.782776, 0.621101, 0.038673,
		29.488821, 33.119991, 21.833483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684376, 33.403469, 21.927683>,  <28.940878, 32.685223, 21.806412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684376, 33.403469, 21.927683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053844, 33.444790, 21.780083>,  <29.275526, 33.469582, 21.691523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053844, 33.444790, 21.780083>,  <28.684376, 33.403469, 21.927683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053844, 33.444790, 21.780083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320679, 0.735524, -0.596799,
		0.209755, 0.669576, 0.712510,
		0.923671, 0.103306, -0.368999,
		29.330946, 33.475780, 21.669382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781443, 34.137756, 21.982365>,  <28.684376, 33.403469, 21.927683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781443, 34.137756, 21.982365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032219, 33.992741, 21.706535>,  <29.182684, 33.905731, 21.541037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032219, 33.992741, 21.706535>,  <28.781443, 34.137756, 21.982365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032219, 33.992741, 21.706535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300519, 0.704088, -0.643388,
		0.718772, 0.610597, 0.332473,
		0.626941, -0.362535, -0.689575,
		29.220301, 33.883980, 21.499662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256727, 34.532310, 22.451586>,  <28.781443, 34.137756, 21.982365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256727, 34.532310, 22.451586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073942, 34.763657, 22.181274>,  <27.964272, 34.902466, 22.019087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073942, 34.763657, 22.181274>,  <28.256727, 34.532310, 22.451586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073942, 34.763657, 22.181274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872785, -0.438083, 0.215245,
		-0.171556, 0.688168, 0.704977,
		-0.456964, 0.578367, -0.675778,
		27.936853, 34.937168, 21.978540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578568, 34.494759, 22.622299>,  <28.256727, 34.532310, 22.451586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578568, 34.494759, 22.622299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563332, 34.726681, 22.296753>,  <27.554190, 34.865833, 22.101425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563332, 34.726681, 22.296753>,  <27.578568, 34.494759, 22.622299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563332, 34.726681, 22.296753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989377, -0.136228, -0.050743,
		-0.140292, 0.803286, 0.578835,
		-0.038092, 0.579805, -0.813865,
		27.551905, 34.900623, 22.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102640, 35.072289, 22.747889>,  <27.578568, 34.494759, 22.622299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102640, 35.072289, 22.747889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159966, 34.973297, 22.364594>,  <27.194361, 34.913902, 22.134617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159966, 34.973297, 22.364594>,  <27.102640, 35.072289, 22.747889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159966, 34.973297, 22.364594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989278, -0.063326, -0.131604,
		-0.028113, 0.966822, -0.253898,
		0.143316, -0.247476, -0.958236,
		27.202961, 34.899055, 22.077124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728594, 35.522816, 22.182854>,  <27.102640, 35.072289, 22.747889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728594, 35.522816, 22.182854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786556, 35.134876, 22.104481>,  <26.821333, 34.902111, 22.057457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786556, 35.134876, 22.104481>,  <26.728594, 35.522816, 22.182854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786556, 35.134876, 22.104481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953654, -0.084121, -0.288907,
		0.263715, 0.228716, -0.937093,
		0.144907, -0.969852, -0.195932,
		26.830029, 34.843922, 22.045702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346125, 35.472382, 21.616835>,  <26.728594, 35.522816, 22.182854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346125, 35.472382, 21.616835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387877, 35.126072, 21.812603>,  <26.412928, 34.918285, 21.930063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387877, 35.126072, 21.812603>,  <26.346125, 35.472382, 21.616835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387877, 35.126072, 21.812603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898656, -0.292922, -0.326519,
		0.426055, -0.405739, -0.808612,
		0.104379, -0.865778, 0.489421,
		26.419189, 34.866337, 21.959429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571554, 35.314377, 21.397203>,  <26.346125, 35.472382, 21.616835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571554, 35.314377, 21.397203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200104, 35.329815, 21.249599>,  <24.977234, 35.339077, 21.161037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200104, 35.329815, 21.249599>,  <25.571554, 35.314377, 21.397203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200104, 35.329815, 21.249599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212067, -0.871317, 0.442531,
		-0.304443, 0.489199, 0.817312,
		-0.928624, 0.038600, -0.369009,
		24.921516, 35.341396, 21.138897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984026, 35.026878, 21.902620>,  <25.571554, 35.314377, 21.397203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984026, 35.026878, 21.902620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859463, 35.007225, 21.523018>,  <24.784725, 34.995434, 21.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859463, 35.007225, 21.523018>,  <24.984026, 35.026878, 21.902620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859463, 35.007225, 21.523018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441221, -0.877012, 0.190192,
		-0.841634, 0.477949, 0.251431,
		-0.311410, -0.049135, -0.949005,
		24.766039, 34.992485, 21.238316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482208, 34.646259, 21.776970>,  <24.984026, 35.026878, 21.902620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482208, 34.646259, 21.776970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108768, 34.774494, 21.840996>,  <23.884705, 34.851433, 21.879412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.108768, 34.774494, 21.840996>,  <24.482208, 34.646259, 21.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108768, 34.774494, 21.840996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233166, -0.204326, -0.950728,
		-0.272083, -0.924920, 0.265507,
		-0.933598, 0.320585, 0.160066,
		23.828690, 34.870670, 21.889015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100760, 34.093304, 21.700052>,  <24.482208, 34.646259, 21.776970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100760, 34.093304, 21.700052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.843798, 34.394825, 21.644775>,  <23.689621, 34.575737, 21.611609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.843798, 34.394825, 21.644775>,  <24.100760, 34.093304, 21.700052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.843798, 34.394825, 21.644775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227616, -0.359855, -0.904818,
		-0.731785, -0.549803, 0.402750,
		-0.642403, 0.753805, -0.138192,
		23.651077, 34.620968, 21.603317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.520977, 33.739719, 21.334780>,  <24.100760, 34.093304, 21.700052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.520977, 33.739719, 21.334780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467175, 34.131325, 21.273529>,  <23.434893, 34.366287, 21.236778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467175, 34.131325, 21.273529>,  <23.520977, 33.739719, 21.334780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467175, 34.131325, 21.273529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142054, -0.171986, -0.974803,
		-0.980677, -0.109366, 0.162205,
		-0.134508, 0.979009, -0.153127,
		23.426823, 34.425026, 21.227591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.035238, 33.774654, 20.750664>,  <23.520977, 33.739719, 21.334780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.035238, 33.774654, 20.750664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.199762, 34.139050, 20.762859>,  <23.298477, 34.357685, 20.770176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.199762, 34.139050, 20.762859>,  <23.035238, 33.774654, 20.750664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.199762, 34.139050, 20.762859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142440, 0.097277, -0.985012,
		-0.900297, 0.400803, 0.169772,
		0.411310, 0.910985, 0.030488,
		23.323154, 34.412346, 20.772005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.577490, 34.168285, 20.416922>,  <23.035238, 33.774654, 20.750664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.577490, 34.168285, 20.416922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936033, 34.342373, 20.383152>,  <23.151159, 34.446823, 20.362890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936033, 34.342373, 20.383152>,  <22.577490, 34.168285, 20.416922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936033, 34.342373, 20.383152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072280, -0.044416, -0.996395,
		-0.437397, 0.899230, -0.008355,
		0.896359, 0.435216, -0.084424,
		23.204941, 34.472939, 20.357824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.378157, 34.712101, 20.120337>,  <22.577490, 34.168285, 20.416922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.378157, 34.712101, 20.120337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767096, 34.633621, 20.069664>,  <23.000460, 34.586533, 20.039261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767096, 34.633621, 20.069664>,  <22.378157, 34.712101, 20.120337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767096, 34.633621, 20.069664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127385, 0.009078, -0.991812,
		0.195739, 0.980523, -0.016165,
		0.972347, -0.196195, -0.126681,
		23.058800, 34.574764, 20.031660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540630, 35.073650, 19.538668>,  <22.378157, 34.712101, 20.120337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540630, 35.073650, 19.538668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879297, 34.861710, 19.558292>,  <23.082499, 34.734543, 19.570066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879297, 34.861710, 19.558292>,  <22.540630, 35.073650, 19.538668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879297, 34.861710, 19.558292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104929, -0.256633, -0.960796,
		0.521672, 0.808328, -0.272880,
		0.846669, -0.529854, 0.049061,
		23.133297, 34.702755, 19.573011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923876, 35.290184, 18.881506>,  <22.540630, 35.073650, 19.538668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923876, 35.290184, 18.881506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085653, 34.937977, 18.980385>,  <23.182720, 34.726650, 19.039713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085653, 34.937977, 18.980385>,  <22.923876, 35.290184, 18.881506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085653, 34.937977, 18.980385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030051, -0.257350, -0.965851,
		0.914068, 0.398062, -0.077623,
		0.404445, -0.880521, 0.247198,
		23.206987, 34.673820, 19.054544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477608, 35.217922, 18.444296>,  <22.923876, 35.290184, 18.881506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477608, 35.217922, 18.444296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407654, 34.841274, 18.559368>,  <23.365681, 34.615284, 18.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407654, 34.841274, 18.559368>,  <23.477608, 35.217922, 18.444296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407654, 34.841274, 18.559368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033954, -0.297777, -0.954032,
		0.984003, -0.157080, 0.084049,
		-0.174887, -0.941624, 0.287680,
		23.355188, 34.558788, 18.645672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.860249, 34.807220, 18.029799>,  <23.477608, 35.217922, 18.444296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.860249, 34.807220, 18.029799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627970, 34.514286, 18.172050>,  <23.488604, 34.338524, 18.257402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627970, 34.514286, 18.172050>,  <23.860249, 34.807220, 18.029799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.627970, 34.514286, 18.172050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047427, -0.405658, -0.912794,
		0.812738, -0.546922, 0.200831,
		-0.580696, -0.732338, 0.355632,
		23.453760, 34.294586, 18.278740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119701, 34.116646, 17.769772>,  <23.860249, 34.807220, 18.029799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119701, 34.116646, 17.769772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736752, 34.061752, 17.871441>,  <23.506983, 34.028816, 17.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736752, 34.061752, 17.871441>,  <24.119701, 34.116646, 17.769772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736752, 34.061752, 17.871441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146859, -0.526473, -0.837412,
		0.248734, -0.839044, 0.483877,
		-0.957374, -0.137231, 0.254173,
		23.449539, 34.020584, 17.947693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046970, 33.474419, 17.593206>,  <24.119701, 34.116646, 17.769772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046970, 33.474419, 17.593206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667850, 33.595150, 17.634346>,  <23.440378, 33.667587, 17.659031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667850, 33.595150, 17.634346>,  <24.046970, 33.474419, 17.593206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667850, 33.595150, 17.634346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262283, -0.554493, -0.789776,
		-0.181347, -0.775524, 0.604712,
		-0.947798, 0.301829, 0.102851,
		23.383511, 33.685699, 17.665201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.809155, 32.792164, 17.518877>,  <24.046970, 33.474419, 17.593206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.809155, 32.792164, 17.518877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508234, 33.043991, 17.441219>,  <23.327682, 33.195087, 17.394625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508234, 33.043991, 17.441219>,  <23.809155, 32.792164, 17.518877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508234, 33.043991, 17.441219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329790, -0.614970, -0.716275,
		-0.570334, -0.474827, 0.670267,
		-0.752301, 0.629564, -0.194146,
		23.282543, 33.232861, 17.382977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195751, 32.387535, 17.505835>,  <23.809155, 32.792164, 17.518877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195751, 32.387535, 17.505835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122940, 32.719391, 17.294720>,  <23.079254, 32.918507, 17.168051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122940, 32.719391, 17.294720>,  <23.195751, 32.387535, 17.505835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122940, 32.719391, 17.294720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272380, -0.558292, -0.783657,
		-0.944815, 0.001112, 0.327602,
		-0.182026, 0.829644, -0.527786,
		23.068333, 32.968285, 17.136383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406292, 32.401817, 17.307556>,  <23.195751, 32.387535, 17.505835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406292, 32.401817, 17.307556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627020, 32.629627, 17.063873>,  <22.759457, 32.766315, 16.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627020, 32.629627, 17.063873>,  <22.406292, 32.401817, 17.307556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627020, 32.629627, 17.063873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427387, -0.434153, -0.793001,
		-0.716126, 0.697960, 0.003835,
		0.551819, 0.569528, -0.609208,
		22.792566, 32.800484, 16.881111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880728, 32.599586, 16.864145>,  <22.406292, 32.401817, 17.307556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880728, 32.599586, 16.864145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200232, 32.738380, 16.667542>,  <22.391933, 32.821659, 16.549580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200232, 32.738380, 16.667542>,  <21.880728, 32.599586, 16.864145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200232, 32.738380, 16.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419529, -0.264339, -0.868401,
		-0.431249, 0.899847, -0.065572,
		0.798761, 0.346988, -0.491508,
		22.439859, 32.842476, 16.520090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562223, 33.025059, 16.449553>,  <21.880728, 32.599586, 16.864145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562223, 33.025059, 16.449553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903246, 32.904171, 16.278996>,  <22.107861, 32.831638, 16.176661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903246, 32.904171, 16.278996>,  <21.562223, 33.025059, 16.449553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.903246, 32.904171, 16.278996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520539, -0.418069, -0.744484,
		0.046735, 0.856670, -0.513744,
		0.852558, -0.302217, -0.426392,
		22.159014, 32.813507, 16.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573883, 33.253799, 15.812037>,  <21.562223, 33.025059, 16.449553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573883, 33.253799, 15.812037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829933, 32.953304, 15.747682>,  <21.983564, 32.773006, 15.709068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829933, 32.953304, 15.747682>,  <21.573883, 33.253799, 15.812037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829933, 32.953304, 15.747682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605156, -0.364023, -0.708007,
		0.473311, 0.550577, -0.687635,
		0.640127, -0.751233, -0.160889,
		22.021971, 32.727936, 15.699415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.585546, 33.144352, 15.059551>,  <21.573883, 33.253799, 15.812037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.585546, 33.144352, 15.059551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723078, 32.804642, 15.219804>,  <21.805597, 32.600815, 15.315955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.723078, 32.804642, 15.219804>,  <21.585546, 33.144352, 15.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723078, 32.804642, 15.219804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628765, -0.525100, -0.573519,
		0.697450, -0.054712, -0.714541,
		0.343828, -0.849280, 0.400633,
		21.826225, 32.549858, 15.339993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.555161, 32.564857, 14.504251>,  <21.585546, 33.144352, 15.059551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.555161, 32.564857, 14.504251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.625278, 32.329292, 14.819833>,  <21.667349, 32.187954, 15.009182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.625278, 32.329292, 14.819833>,  <21.555161, 32.564857, 14.504251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.625278, 32.329292, 14.819833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602259, -0.698076, -0.387265,
		0.778817, -0.407271, -0.477047,
		0.175293, -0.588914, 0.788956,
		21.677866, 32.152618, 15.056520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823996, 31.930553, 14.249912>,  <21.555161, 32.564857, 14.504251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823996, 31.930553, 14.249912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640400, 31.851452, 14.596374>,  <21.530243, 31.803991, 14.804251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640400, 31.851452, 14.596374>,  <21.823996, 31.930553, 14.249912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640400, 31.851452, 14.596374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592705, -0.658097, -0.464336,
		0.661839, -0.726499, 0.184848,
		-0.458987, -0.197756, 0.866154,
		21.502703, 31.792126, 14.856220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821976, 31.259392, 14.250601>,  <21.823996, 31.930553, 14.249912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821976, 31.259392, 14.250601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546272, 31.359879, 14.522428>,  <21.380850, 31.420170, 14.685524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.546272, 31.359879, 14.522428>,  <21.821976, 31.259392, 14.250601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546272, 31.359879, 14.522428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565607, -0.772747, -0.288012,
		0.452780, -0.582883, 0.674713,
		-0.689260, 0.251216, 0.679567,
		21.339495, 31.435244, 14.726297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723110, 30.724129, 14.689025>,  <21.821976, 31.259392, 14.250601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723110, 30.724129, 14.689025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401680, 30.960079, 14.657252>,  <21.208822, 31.101650, 14.638188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401680, 30.960079, 14.657252>,  <21.723110, 30.724129, 14.689025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401680, 30.960079, 14.657252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567411, -0.799509, -0.197051,
		-0.179741, -0.113276, 0.977170,
		-0.803578, 0.589876, -0.079431,
		21.160606, 31.137041, 14.633423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035179, 30.388468, 15.056369>,  <21.723110, 30.724129, 14.689025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035179, 30.388468, 15.056369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946741, 30.624638, 14.745881>,  <20.893679, 30.766340, 14.559588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946741, 30.624638, 14.745881>,  <21.035179, 30.388468, 15.056369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946741, 30.624638, 14.745881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706535, -0.645607, -0.289828,
		-0.672254, 0.484347, 0.559895,
		-0.221095, 0.590424, -0.776220,
		20.880413, 30.801765, 14.513016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344673, 30.172491, 14.914813>,  <21.035179, 30.388468, 15.056369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344673, 30.172491, 14.914813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.529430, 30.325607, 14.594781>,  <20.640285, 30.417477, 14.402761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.529430, 30.325607, 14.594781>,  <20.344673, 30.172491, 14.914813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529430, 30.325607, 14.594781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464431, -0.664128, -0.585865,
		-0.755618, 0.642189, -0.128976,
		0.461893, 0.382789, -0.800080,
		20.667997, 30.440445, 14.354757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978413, 29.979336, 14.352718>,  <20.344673, 30.172491, 14.914813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978413, 29.979336, 14.352718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679296, 29.910389, 14.096250>,  <19.499826, 29.869020, 13.942369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679296, 29.910389, 14.096250>,  <19.978413, 29.979336, 14.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679296, 29.910389, 14.096250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076948, -0.936704, 0.341562,
		-0.659463, 0.304754, 0.687193,
		-0.747788, -0.172369, -0.641172,
		19.454960, 29.858679, 13.903898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584597, 29.577015, 14.757969>,  <19.978413, 29.979336, 14.352718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584597, 29.577015, 14.757969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.510778, 29.965687, 14.698936>,  <19.466488, 30.198891, 14.663516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.510778, 29.965687, 14.698936>,  <19.584597, 29.577015, 14.757969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.510778, 29.965687, 14.698936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280538, 0.091835, 0.955440,
		0.941935, 0.217726, 0.255645,
		-0.184547, 0.971680, -0.147583,
		19.455414, 30.257191, 14.654660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758598, 29.764307, 15.370390>,  <19.584597, 29.577015, 14.757969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758598, 29.764307, 15.370390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530016, 30.035019, 15.184741>,  <19.392866, 30.197447, 15.073352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.530016, 30.035019, 15.184741>,  <19.758598, 29.764307, 15.370390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530016, 30.035019, 15.184741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490440, 0.171800, 0.854373,
		0.657958, 0.715860, 0.233744,
		-0.571454, 0.676779, -0.464123,
		19.358580, 30.238052, 15.045504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746323, 30.491116, 15.574132>,  <19.758598, 29.764307, 15.370390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746323, 30.491116, 15.574132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387533, 30.360241, 15.455213>,  <19.172260, 30.281715, 15.383861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387533, 30.360241, 15.455213>,  <19.746323, 30.491116, 15.574132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387533, 30.360241, 15.455213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337319, 0.071852, 0.938644,
		-0.285751, 0.942224, -0.174815,
		-0.896974, -0.327187, -0.297298,
		19.118441, 30.262085, 15.366023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256424, 31.006641, 15.817968>,  <19.746323, 30.491116, 15.574132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256424, 31.006641, 15.817968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107210, 30.636581, 15.789853>,  <19.017683, 30.414545, 15.772985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.107210, 30.636581, 15.789853>,  <19.256424, 31.006641, 15.817968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107210, 30.636581, 15.789853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306265, 0.051272, 0.950565,
		-0.875813, 0.376118, -0.302467,
		-0.373033, -0.925152, -0.070287,
		18.995300, 30.359035, 15.768767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516762, 31.055536, 16.000235>,  <19.256424, 31.006641, 15.817968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516762, 31.055536, 16.000235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711966, 30.731010, 16.128994>,  <18.829088, 30.536295, 16.206249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711966, 30.731010, 16.128994>,  <18.516762, 31.055536, 16.000235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711966, 30.731010, 16.128994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108460, 0.309568, 0.944672,
		-0.866073, -0.495922, 0.063077,
		0.488010, -0.811313, 0.321896,
		18.858368, 30.487616, 16.225563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288521, 30.653841, 16.546404>,  <18.516762, 31.055536, 16.000235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288521, 30.653841, 16.546404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686405, 30.691505, 16.562836>,  <18.925135, 30.714104, 16.572695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686405, 30.691505, 16.562836>,  <18.288521, 30.653841, 16.546404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686405, 30.691505, 16.562836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072836, 0.364410, 0.928386,
		0.072448, -0.926466, 0.369341,
		0.994709, 0.094161, 0.041079,
		18.984818, 30.719753, 16.575159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424051, 30.523252, 17.299471>,  <18.288521, 30.653841, 16.546404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424051, 30.523252, 17.299471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750069, 30.688164, 17.136631>,  <18.945679, 30.787111, 17.038927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750069, 30.688164, 17.136631>,  <18.424051, 30.523252, 17.299471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750069, 30.688164, 17.136631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168230, 0.503961, 0.847185,
		0.554439, -0.758979, 0.341393,
		0.815044, 0.412280, -0.407099,
		18.994581, 30.811848, 17.014502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008461, 30.282141, 17.786255>,  <18.424051, 30.523252, 17.299471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008461, 30.282141, 17.786255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057085, 30.619011, 17.576126>,  <19.086260, 30.821133, 17.450048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057085, 30.619011, 17.576126>,  <19.008461, 30.282141, 17.786255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057085, 30.619011, 17.576126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171261, 0.503513, 0.846844,
		0.977698, -0.192909, -0.083025,
		0.121560, 0.842176, -0.525321,
		19.093554, 30.871664, 17.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582071, 30.488268, 18.033491>,  <19.008461, 30.282141, 17.786255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582071, 30.488268, 18.033491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378834, 30.789207, 17.865772>,  <19.256891, 30.969770, 17.765141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.378834, 30.789207, 17.865772>,  <19.582071, 30.488268, 18.033491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378834, 30.789207, 17.865772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029849, 0.501908, 0.864406,
		0.860784, 0.426685, -0.277474,
		-0.508095, 0.752348, -0.419299,
		19.226406, 31.014912, 17.739983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856560, 31.053772, 18.289982>,  <19.582071, 30.488268, 18.033491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856560, 31.053772, 18.289982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522951, 31.224663, 18.150333>,  <19.322786, 31.327196, 18.066545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522951, 31.224663, 18.150333>,  <19.856560, 31.053772, 18.289982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522951, 31.224663, 18.150333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166359, 0.798050, 0.579173,
		0.526052, 0.424964, -0.736665,
		-0.834023, 0.427226, -0.349119,
		19.272745, 31.352831, 18.045597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192144, 31.720091, 18.142084>,  <19.856560, 31.053772, 18.289982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192144, 31.720091, 18.142084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795145, 31.768993, 18.141346>,  <19.556946, 31.798336, 18.140903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795145, 31.768993, 18.141346>,  <20.192144, 31.720091, 18.142084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795145, 31.768993, 18.141346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097531, 0.800685, 0.591093,
		0.073743, 0.586478, -0.806602,
		-0.992497, 0.122257, -0.001845,
		19.497396, 31.805670, 18.140793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100109, 32.450409, 18.009350>,  <20.192144, 31.720091, 18.142084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100109, 32.450409, 18.009350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767742, 32.311352, 18.183117>,  <19.568321, 32.227917, 18.287376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767742, 32.311352, 18.183117>,  <20.100109, 32.450409, 18.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767742, 32.311352, 18.183117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090090, 0.854534, 0.511524,
		-0.549052, 0.385898, -0.741367,
		-0.830919, -0.347643, 0.434418,
		19.518467, 32.207058, 18.313442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696245, 33.032024, 18.081755>,  <20.100109, 32.450409, 18.009350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696245, 33.032024, 18.081755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.539757, 32.768013, 18.338287>,  <19.445864, 32.609608, 18.492207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.539757, 32.768013, 18.338287>,  <19.696245, 33.032024, 18.081755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.539757, 32.768013, 18.338287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051547, 0.711499, 0.700794,
		-0.918852, 0.241107, -0.312376,
		-0.391222, -0.660028, 0.641333,
		19.422390, 32.570004, 18.530687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024857, 33.270088, 18.413061>,  <19.696245, 33.032024, 18.081755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024857, 33.270088, 18.413061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189337, 33.006454, 18.664940>,  <19.288025, 32.848274, 18.816067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189337, 33.006454, 18.664940>,  <19.024857, 33.270088, 18.413061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189337, 33.006454, 18.664940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055057, 0.707500, 0.704565,
		-0.909880, -0.255049, 0.327212,
		0.411201, -0.659085, 0.629698,
		19.312696, 32.808727, 18.853849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762653, 33.457642, 19.074081>,  <19.024857, 33.270088, 18.413061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762653, 33.457642, 19.074081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071787, 33.234234, 19.194599>,  <19.257267, 33.100189, 19.266911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071787, 33.234234, 19.194599>,  <18.762653, 33.457642, 19.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071787, 33.234234, 19.194599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158482, 0.629595, 0.760587,
		-0.614499, -0.540059, 0.575089,
		0.772835, -0.558522, 0.301296,
		19.303638, 33.066677, 19.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686357, 33.291279, 19.823042>,  <18.762653, 33.457642, 19.074081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686357, 33.291279, 19.823042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073030, 33.235634, 19.737087>,  <19.305035, 33.202248, 19.685514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073030, 33.235634, 19.737087>,  <18.686357, 33.291279, 19.823042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073030, 33.235634, 19.737087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255979, 0.518937, 0.815585,
		-0.001943, -0.843417, 0.537256,
		0.966681, -0.139110, -0.214889,
		19.363035, 33.193901, 19.672621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955025, 33.134041, 20.465185>,  <18.686357, 33.291279, 19.823042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955025, 33.134041, 20.465185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268000, 33.217819, 20.230606>,  <19.455786, 33.268085, 20.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268000, 33.217819, 20.230606>,  <18.955025, 33.134041, 20.465185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268000, 33.217819, 20.230606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382259, 0.581898, 0.717825,
		0.491595, -0.785830, 0.375240,
		0.782440, 0.209440, -0.586449,
		19.502731, 33.280651, 20.054670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572954, 32.973934, 20.839621>,  <18.955025, 33.134041, 20.465185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572954, 32.973934, 20.839621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695572, 33.246353, 20.573627>,  <19.769142, 33.409805, 20.414032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695572, 33.246353, 20.573627>,  <19.572954, 32.973934, 20.839621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695572, 33.246353, 20.573627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404015, 0.539467, 0.738748,
		0.861860, -0.495120, -0.109785,
		0.306544, 0.681052, -0.664980,
		19.787535, 33.450668, 20.374134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277893, 33.062546, 20.894541>,  <19.572954, 32.973934, 20.839621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277893, 33.062546, 20.894541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166304, 33.401329, 20.713505>,  <20.099350, 33.604599, 20.604883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166304, 33.401329, 20.713505>,  <20.277893, 33.062546, 20.894541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166304, 33.401329, 20.713505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519482, 0.529490, 0.670655,
		0.807659, -0.048019, -0.587692,
		-0.278973, 0.846956, -0.452592,
		20.082611, 33.655415, 20.577726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768663, 33.503197, 21.051325>,  <20.277893, 33.062546, 20.894541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768663, 33.503197, 21.051325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505198, 33.788033, 20.954090>,  <20.347118, 33.958935, 20.895750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505198, 33.788033, 20.954090>,  <20.768663, 33.503197, 21.051325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505198, 33.788033, 20.954090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536119, 0.670825, 0.512416,
		0.527953, 0.207188, -0.823613,
		-0.658667, 0.712086, -0.243087,
		20.307598, 34.001659, 20.881165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.201063, 34.086571, 20.916117>,  <20.768663, 33.503197, 21.051325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.201063, 34.086571, 20.916117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847095, 34.270233, 20.947327>,  <20.634714, 34.380432, 20.966053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847095, 34.270233, 20.947327>,  <21.201063, 34.086571, 20.916117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847095, 34.270233, 20.947327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428081, 0.735874, 0.524630,
		0.183470, 0.497658, -0.847747,
		-0.884921, 0.459159, 0.078027,
		20.581619, 34.407982, 20.970736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288591, 34.776592, 20.794445>,  <21.201063, 34.086571, 20.916117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288591, 34.776592, 20.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938040, 34.795918, 20.986122>,  <20.727709, 34.807514, 21.101128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938040, 34.795918, 20.986122>,  <21.288591, 34.776592, 20.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938040, 34.795918, 20.986122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357746, 0.731440, 0.580528,
		-0.322454, 0.680192, -0.658303,
		-0.876379, 0.048312, 0.479192,
		20.675125, 34.810410, 21.129879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.030956, 35.541065, 20.798075>,  <21.288591, 34.776592, 20.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.030956, 35.541065, 20.798075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882788, 35.311703, 21.090374>,  <20.793886, 35.174084, 21.265753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882788, 35.311703, 21.090374>,  <21.030956, 35.541065, 20.798075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882788, 35.311703, 21.090374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330726, 0.653736, 0.680624,
		-0.867990, 0.493796, -0.052519,
		-0.370423, -0.573406, 0.730748,
		20.771660, 35.139683, 21.309599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811468, 36.026474, 21.252712>,  <21.030956, 35.541065, 20.798075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811468, 36.026474, 21.252712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.810898, 35.708527, 21.495426>,  <20.810556, 35.517757, 21.641054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.810898, 35.708527, 21.495426>,  <20.811468, 36.026474, 21.252712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.810898, 35.708527, 21.495426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246845, 0.587727, 0.770484,
		-0.969054, 0.150879, 0.195371,
		-0.001425, -0.794867, 0.606783,
		20.810471, 35.470066, 21.677462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.421825, 36.175247, 21.857019>,  <20.811468, 36.026474, 21.252712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.421825, 36.175247, 21.857019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638897, 35.858269, 21.968391>,  <20.769140, 35.668079, 22.035215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638897, 35.858269, 21.968391>,  <20.421825, 36.175247, 21.857019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638897, 35.858269, 21.968391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365088, 0.521079, 0.771484,
		-0.756447, -0.317015, 0.572092,
		0.542677, -0.792451, 0.278430,
		20.801701, 35.620533, 22.051920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168159, 36.091133, 22.532488>,  <20.421825, 36.175247, 21.857019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168159, 36.091133, 22.532488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525490, 35.913284, 22.506317>,  <20.739887, 35.806576, 22.490614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525490, 35.913284, 22.506317>,  <20.168159, 36.091133, 22.532488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525490, 35.913284, 22.506317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342621, 0.579576, 0.739393,
		-0.290832, -0.682935, 0.670087,
		0.893324, -0.444625, -0.065428,
		20.793488, 35.779896, 22.486689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678379, 36.356792, 22.046021>,  <20.168159, 36.091133, 22.532488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678379, 36.356792, 22.046021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731358, 36.444752, 22.432617>,  <19.763145, 36.497528, 22.664576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731358, 36.444752, 22.432617>,  <19.678379, 36.356792, 22.046021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731358, 36.444752, 22.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981408, -0.107555, 0.158963,
		0.138906, -0.969577, 0.201560,
		0.132448, 0.219894, 0.966491,
		19.771091, 36.510719, 22.722565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021292, 36.668262, 21.890015>,  <19.678379, 36.356792, 22.046021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021292, 36.668262, 21.890015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.123634, 37.013878, 22.063442>,  <19.185040, 37.221245, 22.167500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.123634, 37.013878, 22.063442>,  <19.021292, 36.668262, 21.890015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.123634, 37.013878, 22.063442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802726, -0.060025, 0.593319,
		0.538673, -0.499842, 0.678226,
		0.255855, 0.864034, 0.433570,
		19.200392, 37.273087, 22.193514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752691, 36.658718, 22.516033>,  <19.021292, 36.668262, 21.890015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752691, 36.658718, 22.516033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840935, 37.045708, 22.565548>,  <18.893881, 37.277901, 22.595257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840935, 37.045708, 22.565548>,  <18.752691, 36.658718, 22.516033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840935, 37.045708, 22.565548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801910, 0.107665, 0.587663,
		0.555222, -0.228909, 0.799581,
		0.220609, 0.967475, 0.123786,
		18.907118, 37.335949, 22.602684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973894, 36.936497, 23.160913>,  <18.752691, 36.658718, 22.516033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973894, 36.936497, 23.160913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.745247, 37.195412, 22.959213>,  <18.608059, 37.350761, 22.838194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.745247, 37.195412, 22.959213>,  <18.973894, 36.936497, 23.160913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745247, 37.195412, 22.959213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782929, -0.246393, 0.571239,
		0.245514, 0.721322, 0.647625,
		-0.571617, 0.647291, -0.504250,
		18.573761, 37.389599, 22.807938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592194, 37.533745, 23.609930>,  <18.973894, 36.936497, 23.160913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592194, 37.533745, 23.609930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396671, 37.411133, 23.283222>,  <18.279358, 37.337566, 23.087198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396671, 37.411133, 23.283222>,  <18.592194, 37.533745, 23.609930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396671, 37.411133, 23.283222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746875, -0.336783, 0.573371,
		-0.450827, 0.890291, -0.064316,
		-0.488807, -0.306527, -0.816767,
		18.250029, 37.319176, 23.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.525299, 25.396051, 24.409945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.888149, 25.485615, 24.552486>,  <34.105858, 25.539352, 24.638012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.888149, 25.485615, 24.552486>,  <33.525299, 25.396051, 24.409945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888149, 25.485615, 24.552486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016516, 0.865015, -0.501474,
		-0.420537, 0.449015, 0.788374,
		0.907125, 0.223909, 0.356355,
		34.160286, 25.552788, 24.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528416, 26.128023, 24.599695>,  <33.525299, 25.396051, 24.409945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528416, 26.128023, 24.599695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918064, 26.048985, 24.555794>,  <34.151852, 26.001562, 24.529453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918064, 26.048985, 24.555794>,  <33.528416, 26.128023, 24.599695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918064, 26.048985, 24.555794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105511, 0.826934, -0.552310,
		0.199891, 0.526437, 0.826383,
		0.974121, -0.197594, -0.109751,
		34.210300, 25.989706, 24.522869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798744, 26.732302, 24.461836>,  <33.528416, 26.128023, 24.599695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798744, 26.732302, 24.461836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105694, 26.508087, 24.337299>,  <34.289864, 26.373558, 24.262577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105694, 26.508087, 24.337299>,  <33.798744, 26.732302, 24.461836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105694, 26.508087, 24.337299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297756, 0.741554, -0.601198,
		0.567869, 0.368642, 0.735954,
		0.767376, -0.560537, -0.311340,
		34.335907, 26.339926, 24.243898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380451, 27.161840, 24.483339>,  <33.798744, 26.732302, 24.461836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380451, 27.161840, 24.483339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500336, 26.871132, 24.236122>,  <34.572266, 26.696707, 24.087791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500336, 26.871132, 24.236122>,  <34.380451, 27.161840, 24.483339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500336, 26.871132, 24.236122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366801, 0.685810, -0.628587,
		0.880700, -0.038306, 0.472124,
		0.299708, -0.726772, -0.618043,
		34.590248, 26.653101, 24.050709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099209, 27.353060, 24.215338>,  <34.380451, 27.161840, 24.483339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099209, 27.353060, 24.215338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925762, 27.085896, 23.973389>,  <34.821693, 26.925598, 23.828218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925762, 27.085896, 23.973389>,  <35.099209, 27.353060, 24.215338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925762, 27.085896, 23.973389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269756, 0.544260, -0.794363,
		0.859770, -0.507620, -0.055830,
		-0.433621, -0.667909, -0.604872,
		34.795677, 26.885523, 23.791927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553211, 27.318171, 23.723661>,  <35.099209, 27.353060, 24.215338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553211, 27.318171, 23.723661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194073, 27.208817, 23.585602>,  <34.978588, 27.143204, 23.502766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194073, 27.208817, 23.585602>,  <35.553211, 27.318171, 23.723661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194073, 27.208817, 23.585602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130897, 0.582717, -0.802064,
		0.420398, -0.765311, -0.487406,
		-0.897849, -0.273386, -0.345150,
		34.924717, 27.126801, 23.482058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609531, 27.149748, 22.955877>,  <35.553211, 27.318171, 23.723661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609531, 27.149748, 22.955877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219028, 27.224274, 23.000061>,  <34.984726, 27.268990, 23.026571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219028, 27.224274, 23.000061>,  <35.609531, 27.149748, 22.955877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219028, 27.224274, 23.000061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006821, 0.536166, -0.844085,
		-0.216488, -0.823295, -0.524709,
		-0.976262, 0.186313, 0.110458,
		34.926151, 27.280169, 23.033199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457787, 27.234390, 22.275290>,  <35.609531, 27.149748, 22.955877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457787, 27.234390, 22.275290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133530, 27.375183, 22.462463>,  <34.938976, 27.459658, 22.574768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133530, 27.375183, 22.462463>,  <35.457787, 27.234390, 22.275290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133530, 27.375183, 22.462463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000093, 0.799233, -0.601022,
		-0.585538, -0.487172, -0.647926,
		-0.810645, 0.351981, 0.467936,
		34.890335, 27.480778, 22.602844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108997, 27.482651, 21.741131>,  <35.457787, 27.234390, 22.275290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108997, 27.482651, 21.741131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928448, 27.645767, 22.058613>,  <34.820118, 27.743637, 22.249102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928448, 27.645767, 22.058613>,  <35.108997, 27.482651, 21.741131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928448, 27.645767, 22.058613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220880, 0.810731, -0.542151,
		-0.864564, -0.420028, -0.275873,
		-0.451377, 0.407789, 0.793704,
		34.793034, 27.768105, 22.296724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413544, 27.748346, 21.575771>,  <35.108997, 27.482651, 21.741131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413544, 27.748346, 21.575771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550495, 27.957783, 21.887829>,  <34.632668, 28.083445, 22.075064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550495, 27.957783, 21.887829>,  <34.413544, 27.748346, 21.575771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550495, 27.957783, 21.887829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169715, 0.851135, -0.496755,
		-0.924105, 0.037678, 0.380276,
		0.342383, 0.523592, 0.780144,
		34.653210, 28.114861, 22.121872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945526, 28.121010, 21.953640>,  <34.413544, 27.748346, 21.575771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945526, 28.121010, 21.953640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305141, 28.295261, 21.935898>,  <34.520908, 28.399813, 21.925253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305141, 28.295261, 21.935898>,  <33.945526, 28.121010, 21.953640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305141, 28.295261, 21.935898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404123, 0.786455, -0.467089,
		-0.168592, 0.437855, 0.883097,
		0.899034, 0.435627, -0.044357,
		34.574852, 28.425949, 21.922590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832790, 28.815550, 22.247213>,  <33.945526, 28.121010, 21.953640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832790, 28.815550, 22.247213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177147, 28.837780, 22.044918>,  <34.383762, 28.851118, 21.923540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177147, 28.837780, 22.044918>,  <33.832790, 28.815550, 22.247213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177147, 28.837780, 22.044918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255631, 0.906690, -0.335509,
		0.439900, 0.418120, 0.794773,
		0.860895, 0.055578, -0.505738,
		34.435417, 28.854454, 21.893196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130928, 29.402878, 22.412136>,  <33.832790, 28.815550, 22.247213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130928, 29.402878, 22.412136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301544, 29.312508, 22.061817>,  <34.403915, 29.258286, 21.851625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301544, 29.312508, 22.061817>,  <34.130928, 29.402878, 22.412136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301544, 29.312508, 22.061817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306561, 0.874871, -0.374994,
		0.850930, 0.428436, 0.303910,
		0.426543, -0.225927, -0.875796,
		34.429508, 29.244730, 21.799078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548645, 30.037119, 22.225897>,  <34.130928, 29.402878, 22.412136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548645, 30.037119, 22.225897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490448, 29.826252, 21.891010>,  <34.455532, 29.699732, 21.690079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490448, 29.826252, 21.891010>,  <34.548645, 30.037119, 22.225897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490448, 29.826252, 21.891010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197816, 0.844632, -0.497460,
		0.969382, 0.093240, -0.227167,
		-0.145489, -0.527166, -0.837215,
		34.446800, 29.668102, 21.639845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934097, 30.340109, 21.791468>,  <34.548645, 30.037119, 22.225897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934097, 30.340109, 21.791468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649334, 30.148945, 21.585640>,  <34.478474, 30.034246, 21.462143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649334, 30.148945, 21.585640>,  <34.934097, 30.340109, 21.791468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649334, 30.148945, 21.585640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122423, 0.805960, -0.579172,
		0.691514, -0.349326, -0.632281,
		-0.711914, -0.477912, -0.514567,
		34.435760, 30.005571, 21.431269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965641, 30.679815, 21.195395>,  <34.934097, 30.340109, 21.791468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965641, 30.679815, 21.195395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611778, 30.493820, 21.181686>,  <34.399460, 30.382223, 21.173462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611778, 30.493820, 21.181686>,  <34.965641, 30.679815, 21.195395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611778, 30.493820, 21.181686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295129, 0.615361, -0.730910,
		0.360951, -0.636489, -0.681613,
		-0.884654, -0.464987, -0.034269,
		34.346382, 30.354324, 21.171406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796555, 30.719728, 20.568474>,  <34.965641, 30.679815, 21.195395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796555, 30.719728, 20.568474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431911, 30.612110, 20.692791>,  <34.213127, 30.547539, 20.767382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431911, 30.612110, 20.692791>,  <34.796555, 30.719728, 20.568474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431911, 30.612110, 20.692791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406244, 0.705144, -0.581152,
		-0.062798, -0.656039, -0.752110,
		-0.911604, -0.269045, 0.310794,
		34.158432, 30.531397, 20.786030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288723, 30.593924, 19.938454>,  <34.796555, 30.719728, 20.568474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288723, 30.593924, 19.938454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055885, 30.694885, 20.247635>,  <33.916183, 30.755463, 20.433144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055885, 30.694885, 20.247635>,  <34.288723, 30.593924, 19.938454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055885, 30.694885, 20.247635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476246, 0.664656, -0.575693,
		-0.659056, -0.703224, -0.266685,
		-0.582095, 0.252407, 0.772953,
		33.881256, 30.770607, 20.479521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658566, 30.639025, 19.629065>,  <34.288723, 30.593924, 19.938454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658566, 30.639025, 19.629065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 30.827381, 19.980873>,  <33.614685, 30.940395, 20.191959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 30.827381, 19.980873>,  <33.658566, 30.639025, 19.629065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631142, 30.827381, 19.980873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524569, 0.732874, -0.433269,
		-0.848603, -0.491077, 0.196767,
		-0.068563, 0.470892, 0.879523,
		33.610573, 30.968649, 20.244730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993176, 30.831926, 19.771286>,  <33.658566, 30.639025, 19.629065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993176, 30.831926, 19.771286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194054, 31.082043, 20.010223>,  <33.314579, 31.232113, 20.153585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194054, 31.082043, 20.010223>,  <32.993176, 30.831926, 19.771286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194054, 31.082043, 20.010223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436595, 0.779594, -0.449019,
		-0.746451, -0.035303, 0.664503,
		0.502191, 0.625290, 0.597341,
		33.344711, 31.269630, 20.189426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521069, 31.348492, 19.988035>,  <32.993176, 30.831926, 19.771286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521069, 31.348492, 19.988035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.866127, 31.514069, 20.104309>,  <33.073162, 31.613415, 20.174074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.866127, 31.514069, 20.104309>,  <32.521069, 31.348492, 19.988035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866127, 31.514069, 20.104309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330852, 0.896472, -0.294746,
		-0.382600, 0.158087, 0.910289,
		0.862644, 0.413941, 0.290686,
		33.124920, 31.638250, 20.191515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294941, 31.879736, 20.476669>,  <32.521069, 31.348492, 19.988035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294941, 31.879736, 20.476669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657734, 32.001225, 20.359959>,  <32.875408, 32.074120, 20.289932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.657734, 32.001225, 20.359959>,  <32.294941, 31.879736, 20.476669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657734, 32.001225, 20.359959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357543, 0.921395, -0.152296,
		0.222587, 0.242453, 0.944284,
		0.906983, 0.303723, -0.291778,
		32.929829, 32.092342, 20.272425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788822, 31.926819, 19.826359>,  <32.294941, 31.879736, 20.476669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788822, 31.926819, 19.826359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404287, 31.875603, 19.923878>,  <31.173567, 31.844873, 19.982389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404287, 31.875603, 19.923878>,  <31.788822, 31.926819, 19.826359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404287, 31.875603, 19.923878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274829, -0.390335, 0.878696,
		-0.017344, 0.911726, 0.410432,
		-0.961337, -0.128039, 0.243799,
		31.115887, 31.837191, 19.997017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631784, 32.193363, 20.502050>,  <31.788822, 31.926819, 19.826359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631784, 32.193363, 20.502050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.364729, 31.905998, 20.423935>,  <31.204496, 31.733578, 20.377066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.364729, 31.905998, 20.423935>,  <31.631784, 32.193363, 20.502050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364729, 31.905998, 20.423935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061582, -0.314708, 0.947189,
		-0.741935, 0.620353, 0.254353,
		-0.667638, -0.718416, -0.195290,
		31.164438, 31.690474, 20.365347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325157, 31.969637, 21.150442>,  <31.631784, 32.193363, 20.502050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325157, 31.969637, 21.150442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.182348, 31.662853, 20.937160>,  <31.096663, 31.478783, 20.809191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.182348, 31.662853, 20.937160>,  <31.325157, 31.969637, 21.150442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182348, 31.662853, 20.937160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132750, -0.606693, 0.783774,
		-0.924614, 0.209043, 0.318418,
		-0.357024, -0.766958, -0.533206,
		31.075241, 31.432766, 20.777199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884283, 31.599491, 21.708221>,  <31.325157, 31.969637, 21.150442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884283, 31.599491, 21.708221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931574, 31.339977, 21.407528>,  <30.959948, 31.184269, 21.227112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931574, 31.339977, 21.407528>,  <30.884283, 31.599491, 21.708221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931574, 31.339977, 21.407528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245736, -0.714377, 0.655194,
		-0.962100, -0.262189, 0.074971,
		0.118227, -0.648785, -0.751731,
		30.967043, 31.145342, 21.182009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468054, 31.014912, 21.803543>,  <30.884283, 31.599491, 21.708221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468054, 31.014912, 21.803543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.745329, 30.876587, 21.550591>,  <30.911694, 30.793592, 21.398819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.745329, 30.876587, 21.550591>,  <30.468054, 31.014912, 21.803543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745329, 30.876587, 21.550591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086684, -0.831015, 0.549454,
		-0.715525, -0.435692, -0.546074,
		0.693188, -0.345812, -0.632380,
		30.953285, 30.772842, 21.360876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200983, 30.315567, 21.683285>,  <30.468054, 31.014912, 21.803543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200983, 30.315567, 21.683285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.582191, 30.302643, 21.562813>,  <30.810917, 30.294888, 21.490530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.582191, 30.302643, 21.562813>,  <30.200983, 30.315567, 21.683285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582191, 30.302643, 21.562813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137647, -0.839513, 0.525615,
		-0.269829, -0.542378, -0.795625,
		0.953019, -0.032311, -0.301181,
		30.868097, 30.292950, 21.472458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384714, 29.668531, 21.304369>,  <30.200983, 30.315567, 21.683285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384714, 29.668531, 21.304369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.737679, 29.814781, 21.422806>,  <30.949457, 29.902531, 21.493868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.737679, 29.814781, 21.422806>,  <30.384714, 29.668531, 21.304369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737679, 29.814781, 21.422806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259492, -0.903184, 0.341939,
		0.392446, -0.224898, -0.891856,
		0.882411, 0.365623, 0.296092,
		31.002401, 29.924467, 21.511633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729954, 29.245386, 20.961025>,  <30.384714, 29.668531, 21.304369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729954, 29.245386, 20.961025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962557, 29.402916, 21.245770>,  <31.102119, 29.497435, 21.416616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962557, 29.402916, 21.245770>,  <30.729954, 29.245386, 20.961025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962557, 29.402916, 21.245770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229679, -0.918898, 0.320741,
		0.780445, -0.023014, -0.624801,
		0.581510, 0.393824, 0.711863,
		31.137011, 29.521063, 21.459328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423330, 28.913704, 20.947468>,  <30.729954, 29.245386, 20.961025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423330, 28.913704, 20.947468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.395538, 29.061993, 21.317924>,  <31.378862, 29.150967, 21.540197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.395538, 29.061993, 21.317924>,  <31.423330, 28.913704, 20.947468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395538, 29.061993, 21.317924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148213, -0.914244, 0.377081,
		0.986512, 0.163466, 0.008578,
		-0.069482, 0.370724, 0.926140,
		31.374693, 29.173210, 21.595766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867207, 28.573023, 21.317759>,  <31.423330, 28.913704, 20.947468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867207, 28.573023, 21.317759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616753, 28.704605, 21.600529>,  <31.466480, 28.783554, 21.770191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616753, 28.704605, 21.600529>,  <31.867207, 28.573023, 21.317759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616753, 28.704605, 21.600529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158235, -0.834172, 0.528317,
		0.763490, 0.442658, 0.470252,
		-0.626135, 0.328955, 0.706926,
		31.428911, 28.803291, 21.812607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108658, 28.285381, 21.848415>,  <31.867207, 28.573023, 21.317759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108658, 28.285381, 21.848415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731853, 28.380814, 21.942810>,  <31.505770, 28.438074, 21.999447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731853, 28.380814, 21.942810>,  <32.108658, 28.285381, 21.848415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731853, 28.380814, 21.942810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107499, -0.880716, 0.461285,
		0.317893, 0.409168, 0.855293,
		-0.942013, 0.238582, 0.235988,
		31.449249, 28.452389, 22.013607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905790, 28.168589, 22.628502>,  <32.108658, 28.285381, 21.848415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905790, 28.168589, 22.628502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605289, 28.125397, 22.368053>,  <31.424990, 28.099482, 22.211784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605289, 28.125397, 22.368053>,  <31.905790, 28.168589, 22.628502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605289, 28.125397, 22.368053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227156, -0.883957, 0.408681,
		-0.619693, 0.454929, 0.639547,
		-0.751253, -0.107980, -0.651122,
		31.379913, 28.093002, 22.172716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171024, 28.147852, 22.871031>,  <31.905790, 28.168589, 22.628502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171024, 28.147852, 22.871031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240248, 27.922188, 22.548100>,  <31.281782, 27.786789, 22.354342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240248, 27.922188, 22.548100>,  <31.171024, 28.147852, 22.871031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240248, 27.922188, 22.548100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259801, -0.816811, 0.515096,
		-0.950029, 0.120604, -0.287923,
		0.173056, -0.564158, -0.807327,
		31.292164, 27.752941, 22.305901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560816, 27.787634, 22.778837>,  <31.171024, 28.147852, 22.871031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560816, 27.787634, 22.778837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.871639, 27.585495, 22.628742>,  <31.058134, 27.464211, 22.538685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.871639, 27.585495, 22.628742>,  <30.560816, 27.787634, 22.778837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871639, 27.585495, 22.628742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234662, -0.785767, 0.572281,
		-0.584049, -0.356642, -0.729173,
		0.777059, -0.505349, -0.375236,
		31.104757, 27.433889, 22.516171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358871, 27.098906, 22.865168>,  <30.560816, 27.787634, 22.778837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358871, 27.098906, 22.865168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.755470, 27.084095, 22.815273>,  <30.993429, 27.075209, 22.785337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.755470, 27.084095, 22.815273>,  <30.358871, 27.098906, 22.865168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755470, 27.084095, 22.815273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038733, -0.831208, 0.554611,
		-0.124217, -0.554728, -0.822707,
		0.991499, -0.037026, -0.124736,
		31.052919, 27.072987, 22.777853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511444, 26.374350, 22.911617>,  <30.358871, 27.098906, 22.865168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511444, 26.374350, 22.911617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.872807, 26.542763, 22.944084>,  <31.089624, 26.643810, 22.963564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.872807, 26.542763, 22.944084>,  <30.511444, 26.374350, 22.911617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872807, 26.542763, 22.944084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256638, -0.682583, 0.684264,
		0.343500, -0.597338, -0.724703,
		0.903407, 0.421031, 0.081168,
		31.143829, 26.669071, 22.968435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941143, 25.859085, 22.910814>,  <30.511444, 26.374350, 22.911617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941143, 25.859085, 22.910814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.184206, 26.131954, 23.073486>,  <31.330044, 26.295675, 23.171089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.184206, 26.131954, 23.073486>,  <30.941143, 25.859085, 22.910814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184206, 26.131954, 23.073486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292795, -0.668420, 0.683729,
		0.738256, -0.296400, -0.605908,
		0.607659, 0.682174, 0.406681,
		31.366503, 26.336607, 23.195490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573168, 25.520582, 23.074791>,  <30.941143, 25.859085, 22.910814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573168, 25.520582, 23.074791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540031, 25.824425, 23.332825>,  <31.520149, 26.006731, 23.487644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.540031, 25.824425, 23.332825>,  <31.573168, 25.520582, 23.074791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540031, 25.824425, 23.332825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209445, -0.619582, 0.756473,
		0.974305, 0.197778, -0.107768,
		-0.082843, 0.759607, 0.645085,
		31.515179, 26.052307, 23.526350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.110546, 25.325119, 23.629955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907606, 25.610348, 23.823502>,  <31.785843, 25.781485, 23.939631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907606, 25.610348, 23.823502>,  <32.110546, 25.325119, 23.629955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907606, 25.610348, 23.823502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052880, -0.534679, 0.843399,
		0.860118, 0.453482, 0.233560,
		-0.507346, 0.713073, 0.483867,
		31.755402, 25.824270, 23.968662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438305, 25.390306, 24.279106>,  <32.110546, 25.325119, 23.629955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438305, 25.390306, 24.279106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063248, 25.522575, 24.321980>,  <31.838215, 25.601936, 24.347704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063248, 25.522575, 24.321980>,  <32.438305, 25.390306, 24.279106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063248, 25.522575, 24.321980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004788, -0.296028, 0.955167,
		0.347579, 0.896115, 0.275984,
		-0.937638, 0.330675, 0.107184,
		31.781956, 25.621778, 24.354136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431767, 25.862726, 24.877739>,  <32.438305, 25.390306, 24.279106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431767, 25.862726, 24.877739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057137, 25.728981, 24.835728>,  <31.832359, 25.648733, 24.810522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057137, 25.728981, 24.835728>,  <32.431767, 25.862726, 24.877739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057137, 25.728981, 24.835728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000912, -0.301996, 0.953309,
		-0.350469, 0.892749, 0.283147,
		-0.936574, -0.334363, -0.105026,
		31.776165, 25.628672, 24.804220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127293, 25.998852, 25.473877>,  <32.431767, 25.862726, 24.877739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127293, 25.998852, 25.473877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876780, 25.735058, 25.307575>,  <31.726473, 25.576780, 25.207794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876780, 25.735058, 25.307575>,  <32.127293, 25.998852, 25.473877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876780, 25.735058, 25.307575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072245, -0.481903, 0.873241,
		-0.776243, 0.576930, 0.254162,
		-0.626280, -0.659486, -0.415755,
		31.688896, 25.537212, 25.182848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622147, 25.853224, 25.934053>,  <32.127293, 25.998852, 25.473877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622147, 25.853224, 25.934053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628273, 25.532207, 25.695492>,  <31.631948, 25.339598, 25.552355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628273, 25.532207, 25.695492>,  <31.622147, 25.853224, 25.934053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628273, 25.532207, 25.695492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131220, -0.589700, 0.796891,
		-0.991235, -0.090466, 0.096277,
		0.015317, -0.802540, -0.596402,
		31.632868, 25.291445, 25.516571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154402, 25.442776, 26.281120>,  <31.622147, 25.853224, 25.934053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154402, 25.442776, 26.281120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381952, 25.224751, 26.034775>,  <31.518482, 25.093935, 25.886967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381952, 25.224751, 26.034775>,  <31.154402, 25.442776, 26.281120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381952, 25.224751, 26.034775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086658, -0.704946, 0.703947,
		-0.817847, -0.453827, -0.353790,
		0.568873, -0.545062, -0.615866,
		31.552614, 25.061232, 25.850016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853872, 24.785650, 26.395515>,  <31.154402, 25.442776, 26.281120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853872, 24.785650, 26.395515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211359, 24.713814, 26.231068>,  <31.425850, 24.670712, 26.132399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211359, 24.713814, 26.231068>,  <30.853872, 24.785650, 26.395515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211359, 24.713814, 26.231068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149541, -0.744725, 0.650401,
		-0.422978, -0.642753, -0.638716,
		0.893715, -0.179591, -0.411121,
		31.479473, 24.659937, 26.107731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863989, 24.089857, 26.258358>,  <30.853872, 24.785650, 26.395515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863989, 24.089857, 26.258358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255568, 24.145977, 26.199062>,  <31.490515, 24.179649, 26.163485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255568, 24.145977, 26.199062>,  <30.863989, 24.089857, 26.258358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255568, 24.145977, 26.199062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202722, -0.752805, 0.626250,
		-0.023730, -0.643118, -0.765399,
		0.978949, 0.140302, -0.148239,
		31.549252, 24.188068, 26.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244919, 23.399609, 26.068401>,  <30.863989, 24.089857, 26.258358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244919, 23.399609, 26.068401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460344, 23.673576, 26.264702>,  <31.589600, 23.837957, 26.382483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460344, 23.673576, 26.264702>,  <31.244919, 23.399609, 26.068401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460344, 23.673576, 26.264702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223448, -0.677676, 0.700590,
		0.812418, -0.267654, -0.518014,
		0.538562, 0.684921, 0.490749,
		31.621912, 23.879053, 26.411926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425934, 23.013733, 26.546640>,  <31.244919, 23.399609, 26.068401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425934, 23.013733, 26.546640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593355, 23.350006, 26.684082>,  <31.693808, 23.551771, 26.766546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593355, 23.350006, 26.684082>,  <31.425934, 23.013733, 26.546640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593355, 23.350006, 26.684082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377333, -0.505110, 0.776198,
		0.826095, -0.195227, -0.528634,
		0.418553, 0.840684, 0.343604,
		31.718922, 23.602211, 26.787163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153393, 22.947758, 26.848312>,  <31.425934, 23.013733, 26.546640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153393, 22.947758, 26.848312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996641, 23.270775, 27.024632>,  <31.902590, 23.464584, 27.130423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996641, 23.270775, 27.024632>,  <32.153393, 22.947758, 26.848312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996641, 23.270775, 27.024632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228073, -0.378892, 0.896897,
		0.891297, 0.452013, -0.035697,
		-0.391883, 0.807543, 0.440797,
		31.879076, 23.513039, 27.156870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541538, 22.893114, 27.451063>,  <32.153393, 22.947758, 26.848312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541538, 22.893114, 27.451063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260269, 23.162525, 27.542194>,  <32.091507, 23.324171, 27.596874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260269, 23.162525, 27.542194>,  <32.541538, 22.893114, 27.451063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260269, 23.162525, 27.542194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033019, -0.289150, 0.956714,
		0.710249, 0.680261, 0.181084,
		-0.703176, 0.673526, 0.227830,
		32.049316, 23.364582, 27.610544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719780, 23.164341, 28.199381>,  <32.541538, 22.893114, 27.451063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719780, 23.164341, 28.199381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.331482, 23.198322, 28.109547>,  <32.098503, 23.218710, 28.055645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.331482, 23.198322, 28.109547>,  <32.719780, 23.164341, 28.199381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331482, 23.198322, 28.109547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239983, -0.312056, 0.919255,
		0.008008, 0.946258, 0.323314,
		-0.970744, 0.084951, -0.224587,
		32.040260, 23.223808, 28.042171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437614, 23.477686, 28.777597>,  <32.719780, 23.164341, 28.199381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437614, 23.477686, 28.777597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131306, 23.305176, 28.586769>,  <31.947521, 23.201670, 28.472273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131306, 23.305176, 28.586769>,  <32.437614, 23.477686, 28.777597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131306, 23.305176, 28.586769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304293, -0.410543, 0.859569,
		-0.566568, 0.803403, 0.183149,
		-0.765772, -0.431274, -0.477071,
		31.901575, 23.175795, 28.443647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877045, 23.592443, 29.153877>,  <32.437614, 23.477686, 28.777597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877045, 23.592443, 29.153877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730068, 23.286755, 28.941856>,  <31.641882, 23.103342, 28.814644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730068, 23.286755, 28.941856>,  <31.877045, 23.592443, 29.153877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730068, 23.286755, 28.941856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260080, -0.462750, 0.847479,
		-0.892942, 0.449255, -0.028725,
		-0.367441, -0.764220, -0.530051,
		31.619835, 23.057489, 28.782841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248817, 23.579733, 29.329344>,  <31.877045, 23.592443, 29.153877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248817, 23.579733, 29.329344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374275, 23.218952, 29.210613>,  <31.449551, 23.002483, 29.139374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374275, 23.218952, 29.210613>,  <31.248817, 23.579733, 29.329344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374275, 23.218952, 29.210613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343296, -0.399168, 0.850184,
		-0.885310, -0.164757, -0.434835,
		0.313646, -0.901953, -0.296828,
		31.468369, 22.948366, 29.121565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680300, 23.138536, 29.447292>,  <31.248817, 23.579733, 29.329344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680300, 23.138536, 29.447292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974834, 22.872513, 29.397488>,  <31.151556, 22.712898, 29.367605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974834, 22.872513, 29.397488>,  <30.680300, 23.138536, 29.447292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974834, 22.872513, 29.397488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285187, -0.471935, 0.834234,
		-0.613577, -0.578768, -0.537170,
		0.736336, -0.665061, -0.124511,
		31.195736, 22.672995, 29.360134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376005, 22.518978, 29.638931>,  <30.680300, 23.138536, 29.447292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376005, 22.518978, 29.638931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765888, 22.431007, 29.654804>,  <30.999819, 22.378225, 29.664328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765888, 22.431007, 29.654804>,  <30.376005, 22.518978, 29.638931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765888, 22.431007, 29.654804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169780, -0.613258, 0.771421,
		-0.145319, -0.758648, -0.635087,
		0.974709, -0.219927, 0.039685,
		31.058300, 22.365028, 29.666710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412926, 21.776747, 29.779375>,  <30.376005, 22.518978, 29.638931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412926, 21.776747, 29.779375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737524, 21.974194, 29.904476>,  <30.932283, 22.092663, 29.979536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737524, 21.974194, 29.904476>,  <30.412926, 21.776747, 29.779375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737524, 21.974194, 29.904476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001477, -0.533473, 0.845816,
		0.584355, -0.686839, -0.432183,
		0.811497, 0.493618, 0.312752,
		30.980972, 22.122278, 29.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816105, 21.232967, 30.018003>,  <30.412926, 21.776747, 29.779375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816105, 21.232967, 30.018003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958435, 21.574665, 30.169613>,  <31.043833, 21.779684, 30.260578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958435, 21.574665, 30.169613>,  <30.816105, 21.232967, 30.018003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958435, 21.574665, 30.169613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095093, -0.370368, 0.924005,
		0.929702, -0.364826, -0.050553,
		0.355824, 0.854242, 0.379025,
		31.065182, 21.830938, 30.283319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143631, 20.972389, 30.520182>,  <30.816105, 21.232967, 30.018003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143631, 20.972389, 30.520182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146664, 21.357525, 30.628170>,  <31.148483, 21.588606, 30.692963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146664, 21.357525, 30.628170>,  <31.143631, 20.972389, 30.520182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146664, 21.357525, 30.628170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126903, -0.268723, 0.954821,
		0.991886, 0.027022, -0.124225,
		0.007581, 0.962838, 0.269972,
		31.148937, 21.646376, 30.709162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822079, 21.174206, 30.854868>,  <31.143631, 20.972389, 30.520182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822079, 21.174206, 30.854868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.518246, 21.391068, 30.998592>,  <31.335947, 21.521185, 31.084827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.518246, 21.391068, 30.998592>,  <31.822079, 21.174206, 30.854868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518246, 21.391068, 30.998592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231532, -0.290857, 0.928329,
		0.607807, 0.788333, 0.095403,
		-0.759582, 0.542156, 0.359309,
		31.290371, 21.553715, 31.106384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012848, 21.637693, 31.355009>,  <31.822079, 21.174206, 30.854868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012848, 21.637693, 31.355009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632339, 21.543327, 31.434437>,  <31.404036, 21.486708, 31.482094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632339, 21.543327, 31.434437>,  <32.012848, 21.637693, 31.355009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632339, 21.543327, 31.434437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262083, -0.279259, 0.923757,
		-0.162476, 0.930784, 0.327480,
		-0.951270, -0.235916, 0.198570,
		31.346958, 21.472553, 31.494007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147427, 22.144659, 31.823318>,  <32.012848, 21.637693, 31.355009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147427, 22.144659, 31.823318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888617, 22.104118, 31.521038>,  <31.733332, 22.079794, 31.339670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888617, 22.104118, 31.521038>,  <32.147427, 22.144659, 31.823318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888617, 22.104118, 31.521038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254599, -0.962958, -0.088835,
		-0.718706, -0.249879, 0.648861,
		-0.647024, -0.101353, -0.755703,
		31.694510, 22.073713, 31.294327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632450, 22.768156, 32.162510>,  <32.147427, 22.144659, 31.823318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632450, 22.768156, 32.162510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024708, 22.704250, 32.117222>,  <33.260063, 22.665907, 32.090050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024708, 22.704250, 32.117222>,  <32.632450, 22.768156, 32.162510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024708, 22.704250, 32.117222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037748, 0.413100, -0.909903,
		0.192140, 0.896562, 0.399072,
		0.980641, -0.159765, -0.113216,
		33.318901, 22.656321, 32.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889328, 23.267735, 31.793493>,  <32.632450, 22.768156, 32.162510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889328, 23.267735, 31.793493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213013, 23.034313, 31.766235>,  <33.407223, 22.894260, 31.749880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213013, 23.034313, 31.766235>,  <32.889328, 23.267735, 31.793493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213013, 23.034313, 31.766235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250523, 0.447642, -0.858402,
		0.531428, 0.677556, 0.508431,
		0.809211, -0.583553, -0.068146,
		33.455776, 22.859247, 31.745792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492340, 23.649525, 31.649809>,  <32.889328, 23.267735, 31.793493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492340, 23.649525, 31.649809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589172, 23.284603, 31.517685>,  <33.647270, 23.065651, 31.438412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589172, 23.284603, 31.517685>,  <33.492340, 23.649525, 31.649809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589172, 23.284603, 31.517685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297590, 0.393838, -0.869673,
		0.923493, 0.112231, 0.366831,
		0.242076, -0.912302, -0.330308,
		33.661797, 23.010912, 31.418592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068401, 23.734135, 31.284174>,  <33.492340, 23.649525, 31.649809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068401, 23.734135, 31.284174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957836, 23.375076, 31.146866>,  <33.891499, 23.159641, 31.064482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957836, 23.375076, 31.146866>,  <34.068401, 23.734135, 31.284174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957836, 23.375076, 31.146866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435523, 0.201403, -0.877358,
		0.856691, -0.392011, 0.335275,
		-0.276408, -0.897644, -0.343270,
		33.874912, 23.105783, 31.043884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598740, 23.541664, 30.899227>,  <34.068401, 23.734135, 31.284174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598740, 23.541664, 30.899227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325287, 23.288475, 30.753906>,  <34.161213, 23.136562, 30.666714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325287, 23.288475, 30.753906>,  <34.598740, 23.541664, 30.899227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325287, 23.288475, 30.753906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329854, 0.176078, -0.927466,
		0.651030, -0.753885, 0.088415,
		-0.683635, -0.632972, -0.363304,
		34.120197, 23.098583, 30.644915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993740, 22.995289, 30.464787>,  <34.598740, 23.541664, 30.899227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993740, 22.995289, 30.464787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619522, 23.045715, 30.332809>,  <34.394993, 23.075972, 30.253622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619522, 23.045715, 30.332809>,  <34.993740, 22.995289, 30.464787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619522, 23.045715, 30.332809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347145, 0.155828, -0.924775,
		-0.065170, -0.979706, -0.189548,
		-0.935545, 0.126068, -0.329945,
		34.338860, 23.083536, 30.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954910, 22.661171, 29.818989>,  <34.993740, 22.995289, 30.464787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954910, 22.661171, 29.818989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660030, 22.931381, 29.813347>,  <34.483101, 23.093508, 29.809961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660030, 22.931381, 29.813347>,  <34.954910, 22.661171, 29.818989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660030, 22.931381, 29.813347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137639, 0.129707, -0.981953,
		-0.661504, -0.725840, -0.188598,
		-0.737203, 0.675524, -0.014102,
		34.438869, 23.134039, 29.809116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587654, 22.520721, 29.122025>,  <34.954910, 22.661171, 29.818989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587654, 22.520721, 29.122025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478344, 22.883701, 29.249683>,  <34.412758, 23.101490, 29.326279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.478344, 22.883701, 29.249683>,  <34.587654, 22.520721, 29.122025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478344, 22.883701, 29.249683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026639, 0.338790, -0.940485,
		-0.961568, -0.248506, -0.116755,
		-0.273272, 0.907450, 0.319149,
		34.396362, 23.155937, 29.345428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172203, 22.787529, 28.660395>,  <34.587654, 22.520721, 29.122025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172203, 22.787529, 28.660395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228268, 23.144691, 28.831543>,  <34.261906, 23.358990, 28.934233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.228268, 23.144691, 28.831543>,  <34.172203, 22.787529, 28.660395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228268, 23.144691, 28.831543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173603, 0.447604, -0.877219,
		-0.974790, 0.048673, 0.217748,
		0.140162, 0.892906, 0.427870,
		34.270317, 23.412563, 28.959904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625790, 23.204933, 28.429300>,  <34.172203, 22.787529, 28.660395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625790, 23.204933, 28.429300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907490, 23.455956, 28.562088>,  <34.076511, 23.606569, 28.641762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907490, 23.455956, 28.562088>,  <33.625790, 23.204933, 28.429300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907490, 23.455956, 28.562088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124609, 0.569600, -0.812421,
		-0.698931, 0.530781, 0.479340,
		0.704250, 0.627556, 0.331971,
		34.118763, 23.644222, 28.661678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315285, 23.911852, 28.417931>,  <33.625790, 23.204933, 28.429300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315285, 23.911852, 28.417931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713058, 23.953995, 28.417049>,  <33.951721, 23.979280, 28.416521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.713058, 23.953995, 28.417049>,  <33.315285, 23.911852, 28.417931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713058, 23.953995, 28.417049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071703, 0.661155, -0.746815,
		-0.077227, 0.742815, 0.665028,
		0.994432, 0.105359, -0.002203,
		34.011387, 23.985603, 28.416389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406105, 24.592791, 28.368385>,  <33.315285, 23.911852, 28.417931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406105, 24.592791, 28.368385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753117, 24.433159, 28.249638>,  <33.961323, 24.337379, 28.178389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753117, 24.433159, 28.249638>,  <33.406105, 24.592791, 28.368385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753117, 24.433159, 28.249638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041479, 0.536727, -0.842736,
		0.495653, 0.743412, 0.449073,
		0.867529, -0.399078, -0.296867,
		34.013374, 24.313437, 28.160578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798813, 25.088047, 28.091801>,  <33.406105, 24.592791, 28.368385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798813, 25.088047, 28.091801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968990, 24.764893, 27.928673>,  <34.071095, 24.570999, 27.830795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968990, 24.764893, 27.928673>,  <33.798813, 25.088047, 28.091801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968990, 24.764893, 27.928673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187086, 0.519417, -0.833789,
		0.885438, 0.278430, 0.372126,
		0.425440, -0.807888, -0.407821,
		34.096622, 24.522526, 27.806326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414036, 25.300547, 27.768820>,  <33.798813, 25.088047, 28.091801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414036, 25.300547, 27.768820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345001, 24.945156, 27.598728>,  <34.303581, 24.731922, 27.496674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345001, 24.945156, 27.598728>,  <34.414036, 25.300547, 27.768820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345001, 24.945156, 27.598728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154291, 0.401995, -0.902549,
		0.972836, -0.221374, 0.067706,
		-0.172583, -0.888478, -0.425231,
		34.293224, 24.678612, 27.471159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929413, 25.220608, 27.363867>,  <34.414036, 25.300547, 27.768820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929413, 25.220608, 27.363867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656105, 24.973690, 27.207870>,  <34.492123, 24.825539, 27.114273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656105, 24.973690, 27.207870>,  <34.929413, 25.220608, 27.363867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656105, 24.973690, 27.207870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133497, 0.419494, -0.897888,
		0.717862, -0.665559, -0.204219,
		-0.683266, -0.617297, -0.389990,
		34.451126, 24.788502, 27.090874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231255, 24.992331, 26.723837>,  <34.929413, 25.220608, 27.363867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231255, 24.992331, 26.723837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850166, 24.876511, 26.686996>,  <34.621513, 24.807018, 26.664892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.850166, 24.876511, 26.686996>,  <35.231255, 24.992331, 26.723837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850166, 24.876511, 26.686996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048709, 0.153651, -0.986924,
		0.299917, -0.944749, -0.132283,
		-0.952721, -0.289552, -0.092101,
		34.564350, 24.789644, 26.659367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273193, 24.521730, 26.171520>,  <35.231255, 24.992331, 26.723837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273193, 24.521730, 26.171520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897758, 24.658447, 26.190395>,  <34.672497, 24.740477, 26.201719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897758, 24.658447, 26.190395>,  <35.273193, 24.521730, 26.171520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897758, 24.658447, 26.190395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087723, 0.368655, -0.925418,
		-0.333697, -0.864448, -0.375999,
		-0.938590, 0.341792, 0.047187,
		34.616180, 24.760984, 26.204552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963905, 24.290277, 25.486731>,  <35.273193, 24.521730, 26.171520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963905, 24.290277, 25.486731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738747, 24.590290, 25.625637>,  <34.603649, 24.770298, 25.708981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.738747, 24.590290, 25.625637>,  <34.963905, 24.290277, 25.486731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738747, 24.590290, 25.625637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070363, 0.462114, -0.884025,
		-0.823524, -0.473184, -0.312899,
		-0.562901, 0.750032, 0.347267,
		34.569878, 24.815300, 25.729816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455536, 24.299662, 25.013432>,  <34.963905, 24.290277, 25.486731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455536, 24.299662, 25.013432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487339, 24.660606, 25.182865>,  <34.506420, 24.877172, 25.284525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487339, 24.660606, 25.182865>,  <34.455536, 24.299662, 25.013432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487339, 24.660606, 25.182865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028856, 0.422670, -0.905824,
		-0.996417, 0.084243, 0.007567,
		0.079508, 0.902360, 0.423586,
		34.511192, 24.931314, 25.309940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002178, 24.667629, 24.571804>,  <34.455536, 24.299662, 25.013432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002178, 24.667629, 24.571804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209232, 24.952747, 24.761108>,  <34.333466, 25.123819, 24.874691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209232, 24.952747, 24.761108>,  <34.002178, 24.667629, 24.571804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209232, 24.952747, 24.761108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056096, 0.580216, -0.812529,
		-0.853763, 0.394043, 0.340323,
		0.517632, 0.712798, 0.473262,
		34.364521, 25.166586, 24.903088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.121147, 31.464357, 16.075548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238720, 31.566154, 15.707019>,  <21.309263, 31.627234, 15.485901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238720, 31.566154, 15.707019>,  <21.121147, 31.464357, 16.075548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238720, 31.566154, 15.707019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730695, 0.561567, 0.388236,
		0.616189, -0.787321, -0.020896,
		0.293932, 0.254495, -0.921323,
		21.326900, 31.642504, 15.430622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837370, 31.322855, 16.026791>,  <21.121147, 31.464357, 16.075548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837370, 31.322855, 16.026791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774946, 31.600090, 15.745288>,  <21.737492, 31.766432, 15.576386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774946, 31.600090, 15.745288>,  <21.837370, 31.322855, 16.026791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774946, 31.600090, 15.745288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779518, 0.523995, 0.343193,
		0.606628, -0.495033, -0.622049,
		-0.156058, 0.693089, -0.703757,
		21.728128, 31.808016, 15.534161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.488649, 31.527948, 15.784357>,  <21.837370, 31.322855, 16.026791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.488649, 31.527948, 15.784357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274111, 31.837639, 15.649949>,  <22.145388, 32.023453, 15.569304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274111, 31.837639, 15.649949>,  <22.488649, 31.527948, 15.784357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.274111, 31.837639, 15.649949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714987, 0.628350, 0.306545,
		0.448473, -0.075835, -0.890573,
		-0.536345, 0.774225, -0.336019,
		22.113207, 32.069908, 15.549143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.934057, 31.912542, 15.397388>,  <22.488649, 31.527948, 15.784357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.934057, 31.912542, 15.397388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.638020, 32.148056, 15.527368>,  <22.460396, 32.289364, 15.605355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.638020, 32.148056, 15.527368>,  <22.934057, 31.912542, 15.397388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.638020, 32.148056, 15.527368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640218, 0.468945, 0.608450,
		0.205863, 0.658349, -0.724014,
		-0.740096, 0.588784, 0.324948,
		22.415991, 32.324692, 15.624852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.313320, 32.484238, 15.551418>,  <22.934057, 31.912542, 15.397388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.313320, 32.484238, 15.551418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.980024, 32.599606, 15.740109>,  <22.780046, 32.668827, 15.853324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.980024, 32.599606, 15.740109>,  <23.313320, 32.484238, 15.551418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980024, 32.599606, 15.740109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547598, 0.548486, 0.631901,
		-0.076483, 0.784841, -0.614959,
		-0.833239, 0.288421, 0.471727,
		22.730053, 32.686131, 15.881628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.514231, 33.024010, 15.887329>,  <23.313320, 32.484238, 15.551418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.514231, 33.024010, 15.887329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.164042, 32.984489, 16.076553>,  <22.953928, 32.960777, 16.190088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.164042, 32.984489, 16.076553>,  <23.514231, 33.024010, 15.887329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.164042, 32.984489, 16.076553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348723, 0.548535, 0.759935,
		-0.334574, 0.830269, -0.445772,
		-0.875473, -0.098803, 0.473060,
		22.901400, 32.954849, 16.218472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.345016, 33.680714, 16.061111>,  <23.514231, 33.024010, 15.887329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.345016, 33.680714, 16.061111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154245, 33.434074, 16.311661>,  <23.039782, 33.286091, 16.461990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.154245, 33.434074, 16.311661>,  <23.345016, 33.680714, 16.061111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.154245, 33.434074, 16.311661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248798, 0.588790, 0.769042,
		-0.842994, 0.522619, -0.127402,
		-0.476929, -0.616600, 0.626373,
		23.011168, 33.249096, 16.499573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935812, 34.127712, 16.512880>,  <23.345016, 33.680714, 16.061111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935812, 34.127712, 16.512880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954575, 33.775791, 16.702087>,  <22.965832, 33.564640, 16.815613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954575, 33.775791, 16.702087>,  <22.935812, 34.127712, 16.512880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954575, 33.775791, 16.702087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055301, 0.475102, 0.878191,
		-0.997367, -0.015034, 0.070939,
		0.046906, -0.879802, 0.473020,
		22.968647, 33.511852, 16.843994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558155, 34.244045, 17.035742>,  <22.935812, 34.127712, 16.512880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558155, 34.244045, 17.035742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752726, 33.917370, 17.159946>,  <22.869469, 33.721367, 17.234468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752726, 33.917370, 17.159946>,  <22.558155, 34.244045, 17.035742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752726, 33.917370, 17.159946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148735, 0.427601, 0.891647,
		-0.860969, -0.387536, 0.329466,
		0.486426, -0.816684, 0.310511,
		22.898653, 33.672363, 17.253099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188725, 34.160172, 17.702169>,  <22.558155, 34.244045, 17.035742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188725, 34.160172, 17.702169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.551445, 33.991825, 17.711792>,  <22.769077, 33.890816, 17.717566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.551445, 33.991825, 17.711792>,  <22.188725, 34.160172, 17.702169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.551445, 33.991825, 17.711792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091878, 0.253009, 0.963091,
		-0.411421, -0.871123, 0.268098,
		0.906803, -0.420868, 0.024056,
		22.823486, 33.865566, 17.719009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179167, 33.831520, 18.357330>,  <22.188725, 34.160172, 17.702169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179167, 33.831520, 18.357330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.555534, 33.883068, 18.232071>,  <22.781355, 33.913998, 18.156916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.555534, 33.883068, 18.232071>,  <22.179167, 33.831520, 18.357330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.555534, 33.883068, 18.232071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274186, 0.252743, 0.927870,
		0.198722, -0.958912, 0.202477,
		0.940921, 0.128872, -0.313146,
		22.837811, 33.921730, 18.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.582361, 33.524418, 18.753880>,  <22.179167, 33.831520, 18.357330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.582361, 33.524418, 18.753880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856413, 33.770744, 18.598255>,  <23.020844, 33.918541, 18.504881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856413, 33.770744, 18.598255>,  <22.582361, 33.524418, 18.753880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856413, 33.770744, 18.598255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380415, 0.152996, 0.912073,
		0.621195, -0.772891, -0.129445,
		0.685128, 0.615818, -0.389060,
		23.061951, 33.955490, 18.481537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.256506, 33.316208, 19.015192>,  <22.582361, 33.524418, 18.753880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.256506, 33.316208, 19.015192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.256834, 33.707462, 18.932011>,  <23.257030, 33.942215, 18.882101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.256834, 33.707462, 18.932011>,  <23.256506, 33.316208, 19.015192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256834, 33.707462, 18.932011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289220, 0.198833, 0.936385,
		0.957263, -0.060914, -0.282733,
		0.000822, 0.978139, -0.207953,
		23.257080, 34.000904, 18.869625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.660196, 33.548794, 19.549290>,  <23.256506, 33.316208, 19.015192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.660196, 33.548794, 19.549290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.519957, 33.887901, 19.390106>,  <23.435812, 34.091366, 19.294596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.519957, 33.887901, 19.390106>,  <23.660196, 33.548794, 19.549290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.519957, 33.887901, 19.390106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026752, 0.433822, 0.900602,
		0.936144, 0.305104, -0.174777,
		-0.350599, 0.847768, -0.397957,
		23.414778, 34.142231, 19.270720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188303, 33.943504, 19.691662>,  <23.660196, 33.548794, 19.549290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188303, 33.943504, 19.691662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.865730, 34.176697, 19.652069>,  <23.672186, 34.316612, 19.628313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.865730, 34.176697, 19.652069>,  <24.188303, 33.943504, 19.691662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.865730, 34.176697, 19.652069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085559, 0.280667, 0.955984,
		0.585106, 0.762466, -0.276218,
		-0.806431, 0.582985, -0.098984,
		23.623800, 34.351593, 19.622374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.331755, 34.622440, 19.829756>,  <24.188303, 33.943504, 19.691662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.331755, 34.622440, 19.829756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938833, 34.589882, 19.897228>,  <23.703081, 34.570347, 19.937712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938833, 34.589882, 19.897228>,  <24.331755, 34.622440, 19.829756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.938833, 34.589882, 19.897228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137014, 0.301756, 0.943489,
		-0.127697, 0.949904, -0.285264,
		-0.982304, -0.081395, 0.168684,
		23.644142, 34.565464, 19.947834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.353497, 35.046104, 20.335123>,  <24.331755, 34.622440, 19.829756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.353497, 35.046104, 20.335123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.001766, 34.856060, 20.348122>,  <23.790728, 34.742035, 20.355921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.001766, 34.856060, 20.348122>,  <24.353497, 35.046104, 20.335123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001766, 34.856060, 20.348122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128445, 0.302321, 0.944512,
		-0.458573, 0.826360, -0.326864,
		-0.879325, -0.475112, 0.032494,
		23.737968, 34.713528, 20.357870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.960958, 35.555099, 20.605160>,  <24.353497, 35.046104, 20.335123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.960958, 35.555099, 20.605160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.768856, 35.208122, 20.657166>,  <23.653595, 34.999935, 20.688370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.768856, 35.208122, 20.657166>,  <23.960958, 35.555099, 20.605160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768856, 35.208122, 20.657166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189650, 0.247414, 0.950168,
		-0.856381, 0.431666, -0.283331,
		-0.480255, -0.867439, 0.130015,
		23.624779, 34.947891, 20.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394276, 35.721634, 20.973501>,  <23.960958, 35.555099, 20.605160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394276, 35.721634, 20.973501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444641, 35.330837, 21.042366>,  <23.474861, 35.096359, 21.083685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.444641, 35.330837, 21.042366>,  <23.394276, 35.721634, 20.973501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.444641, 35.330837, 21.042366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039123, 0.178300, 0.983198,
		-0.991270, -0.117062, 0.060674,
		0.125913, -0.976988, 0.172164,
		23.482414, 35.037743, 21.094015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803261, 35.534966, 21.325788>,  <23.394276, 35.721634, 20.973501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803261, 35.534966, 21.325788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088583, 35.271679, 21.422073>,  <23.259777, 35.113705, 21.479845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088583, 35.271679, 21.422073>,  <22.803261, 35.534966, 21.325788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088583, 35.271679, 21.422073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106296, 0.237882, 0.965460,
		-0.692746, -0.714254, 0.099716,
		0.713305, -0.658220, 0.240715,
		23.302574, 35.074215, 21.494287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.580547, 35.223118, 21.926695>,  <22.803261, 35.534966, 21.325788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.580547, 35.223118, 21.926695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.969215, 35.128628, 21.929676>,  <23.202415, 35.071934, 21.931465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.969215, 35.128628, 21.929676>,  <22.580547, 35.223118, 21.926695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969215, 35.128628, 21.929676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046602, 0.222425, 0.973835,
		-0.231701, -0.945899, 0.227132,
		0.971670, -0.236223, 0.007455,
		23.260717, 35.057762, 21.931913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927448, 35.206478, 22.287325>,  <22.580547, 35.223118, 21.926695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927448, 35.206478, 22.287325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583530, 35.381695, 22.392303>,  <21.377180, 35.486824, 22.455290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583530, 35.381695, 22.392303>,  <21.927448, 35.206478, 22.287325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583530, 35.381695, 22.392303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509665, -0.704378, -0.494057,
		-0.031555, -0.558547, 0.828873,
		-0.859794, 0.438037, 0.262445,
		21.325592, 35.513107, 22.471037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539522, 34.670948, 22.467133>,  <21.927448, 35.206478, 22.287325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539522, 34.670948, 22.467133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.292988, 34.965843, 22.356415>,  <21.145067, 35.142780, 22.289984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.292988, 34.965843, 22.356415>,  <21.539522, 34.670948, 22.467133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292988, 34.965843, 22.356415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551658, -0.655046, -0.516322,
		-0.561961, -0.165534, 0.810431,
		-0.616338, 0.737234, -0.276792,
		21.108086, 35.187012, 22.273376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812241, 34.430737, 22.419327>,  <21.539522, 34.670948, 22.467133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812241, 34.430737, 22.419327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.814405, 34.749645, 22.177887>,  <20.815704, 34.940990, 22.033024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.814405, 34.749645, 22.177887>,  <20.812241, 34.430737, 22.419327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814405, 34.749645, 22.177887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620806, -0.470523, -0.627063,
		-0.783946, 0.378111, 0.492404,
		0.005412, 0.797271, -0.603598,
		20.816029, 34.988827, 21.996807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086819, 34.508083, 22.280033>,  <20.812241, 34.430737, 22.419327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086819, 34.508083, 22.280033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.294184, 34.702381, 21.998524>,  <20.418604, 34.818958, 21.829618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.294184, 34.702381, 21.998524>,  <20.086819, 34.508083, 22.280033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294184, 34.702381, 21.998524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629618, -0.340084, -0.698516,
		-0.578643, 0.805230, 0.129529,
		0.518415, 0.485745, -0.703774,
		20.449709, 34.848106, 21.787392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577606, 34.727085, 21.787809>,  <20.086819, 34.508083, 22.280033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577606, 34.727085, 21.787809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916201, 34.758305, 21.577145>,  <20.119356, 34.777035, 21.450747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916201, 34.758305, 21.577145>,  <19.577606, 34.727085, 21.787809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916201, 34.758305, 21.577145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444372, -0.441280, -0.779619,
		-0.293254, 0.893969, -0.338853,
		0.846484, 0.078049, -0.526662,
		20.170145, 34.781719, 21.419146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334295, 34.903667, 21.138420>,  <19.577606, 34.727085, 21.787809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334295, 34.903667, 21.138420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.701181, 34.750900, 21.093060>,  <19.921312, 34.659241, 21.065844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.701181, 34.750900, 21.093060>,  <19.334295, 34.903667, 21.138420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701181, 34.750900, 21.093060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242197, -0.308535, -0.919862,
		0.316321, 0.871176, -0.375492,
		0.917214, -0.381914, -0.113400,
		19.976345, 34.636326, 21.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472534, 34.966808, 20.500092>,  <19.334295, 34.903667, 21.138420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472534, 34.966808, 20.500092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720192, 34.671875, 20.608158>,  <19.868788, 34.494915, 20.672998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720192, 34.671875, 20.608158>,  <19.472534, 34.966808, 20.500092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720192, 34.671875, 20.608158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372013, -0.578393, -0.725995,
		0.691567, 0.348991, -0.632409,
		0.619146, -0.737338, 0.270168,
		19.905935, 34.450672, 20.689209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722857, 34.718395, 19.914921>,  <19.472534, 34.966808, 20.500092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722857, 34.718395, 19.914921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.816200, 34.383522, 20.112778>,  <19.872208, 34.182598, 20.231491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.816200, 34.383522, 20.112778>,  <19.722857, 34.718395, 19.914921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816200, 34.383522, 20.112778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145625, -0.533037, -0.833466,
		0.961424, 0.122467, -0.246304,
		0.233361, -0.837182, 0.494640,
		19.886209, 34.132366, 20.261169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164047, 34.364494, 19.537123>,  <19.722857, 34.718395, 19.914921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164047, 34.364494, 19.537123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.024456, 34.085945, 19.787971>,  <19.940702, 33.918816, 19.938480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.024456, 34.085945, 19.787971>,  <20.164047, 34.364494, 19.537123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024456, 34.085945, 19.787971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164904, -0.613121, -0.772586,
		0.922508, -0.373030, 0.099130,
		-0.348976, -0.696370, 0.627124,
		19.919764, 33.877033, 19.976109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466618, 33.758018, 19.379128>,  <20.164047, 34.364494, 19.537123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466618, 33.758018, 19.379128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.150324, 33.631420, 19.588726>,  <19.960548, 33.555462, 19.714485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.150324, 33.631420, 19.588726>,  <20.466618, 33.758018, 19.379128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.150324, 33.631420, 19.588726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087792, -0.788495, -0.608743,
		0.605833, -0.527356, 0.595703,
		-0.790733, -0.316499, 0.523995,
		19.913103, 33.536472, 19.745924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529030, 33.039097, 19.283918>,  <20.466618, 33.758018, 19.379128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529030, 33.039097, 19.283918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166090, 33.074825, 19.448231>,  <19.948326, 33.096264, 19.546818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166090, 33.074825, 19.448231>,  <20.529030, 33.039097, 19.283918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166090, 33.074825, 19.448231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326024, -0.766400, -0.553480,
		0.265381, -0.636123, 0.724514,
		-0.907348, 0.089326, 0.410780,
		19.893885, 33.101624, 19.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309555, 32.275703, 19.433290>,  <20.529030, 33.039097, 19.283918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309555, 32.275703, 19.433290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.985283, 32.509800, 19.426468>,  <19.790720, 32.650257, 19.422375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.985283, 32.509800, 19.426468>,  <20.309555, 32.275703, 19.433290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985283, 32.509800, 19.426468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461377, -0.656496, -0.596779,
		-0.360458, -0.475927, 0.802224,
		-0.810680, 0.585241, -0.017057,
		19.742079, 32.685371, 19.421350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725323, 31.886114, 19.636961>,  <20.309555, 32.275703, 19.433290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725323, 31.886114, 19.636961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.600761, 32.187637, 19.405514>,  <19.526024, 32.368553, 19.266645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.600761, 32.187637, 19.405514>,  <19.725323, 31.886114, 19.636961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600761, 32.187637, 19.405514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565983, -0.636240, -0.524272,
		-0.763342, 0.164229, 0.624770,
		-0.311403, 0.753808, -0.578620,
		19.507339, 32.413780, 19.231928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.064842, 31.645397, 19.380150>,  <19.725323, 31.886114, 19.636961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.064842, 31.645397, 19.380150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.176840, 31.931122, 19.123600>,  <19.244038, 32.102558, 18.969669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.176840, 31.931122, 19.123600>,  <19.064842, 31.645397, 19.380150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176840, 31.931122, 19.123600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427338, -0.505517, -0.749556,
		-0.859643, 0.483955, 0.163712,
		0.279992, 0.714311, -0.641376,
		19.260838, 32.145416, 18.931187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427801, 31.873346, 18.960880>,  <19.064842, 31.645397, 19.380150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427801, 31.873346, 18.960880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.754269, 31.972351, 18.752033>,  <18.950150, 32.031754, 18.626724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.754269, 31.972351, 18.752033>,  <18.427801, 31.873346, 18.960880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754269, 31.972351, 18.752033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393923, -0.422720, -0.816169,
		-0.422720, 0.871807, -0.247511,
		0.816169, 0.247511, -0.522117,
		18.999119, 32.046604, 18.595398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172998, 31.978216, 18.365017>,  <18.427801, 31.873346, 18.960880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172998, 31.978216, 18.365017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.557301, 31.925388, 18.267441>,  <18.787882, 31.893692, 18.208895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.557301, 31.925388, 18.267441>,  <18.172998, 31.978216, 18.365017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.557301, 31.925388, 18.267441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277214, -0.425165, -0.861619,
		0.010079, 0.895429, -0.445091,
		0.960755, -0.132070, -0.243940,
		18.845528, 31.885767, 18.194260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229162, 31.988737, 17.617146>,  <18.172998, 31.978216, 18.365017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229162, 31.988737, 17.617146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.563265, 31.813541, 17.750122>,  <18.763725, 31.708424, 17.829908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.563265, 31.813541, 17.750122>,  <18.229162, 31.988737, 17.617146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563265, 31.813541, 17.750122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007993, -0.594853, -0.803795,
		0.549805, 0.674031, -0.493353,
		0.835255, -0.437987, 0.332441,
		18.813841, 31.682146, 17.849854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727259, 32.061893, 17.077089>,  <18.229162, 31.988737, 17.617146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.727259, 32.061893, 17.077089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.843493, 31.741722, 17.286804>,  <18.913233, 31.549620, 17.412634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.843493, 31.741722, 17.286804>,  <18.727259, 32.061893, 17.077089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843493, 31.741722, 17.286804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032312, -0.539410, -0.841423,
		0.956304, 0.261446, -0.130881,
		0.290585, -0.800427, 0.524287,
		18.930668, 31.501595, 17.444090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092943, 31.645235, 16.613680>,  <18.727259, 32.061893, 17.077089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092943, 31.645235, 16.613680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.268526, 31.456562, 16.919579>,  <19.373875, 31.343359, 17.103117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.268526, 31.456562, 16.919579>,  <19.092943, 31.645235, 16.613680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268526, 31.456562, 16.919579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260840, -0.747577, -0.610812,
		0.859814, 0.467595, -0.205120,
		0.438956, -0.471681, 0.764745,
		19.400213, 31.315058, 17.149002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877754, 31.600828, 16.677576>,  <19.092943, 31.645235, 16.613680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877754, 31.600828, 16.677576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658239, 31.288174, 16.796154>,  <19.526531, 31.100582, 16.867300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658239, 31.288174, 16.796154>,  <19.877754, 31.600828, 16.677576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658239, 31.288174, 16.796154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166647, -0.449786, -0.877451,
		0.819183, -0.432132, 0.377094,
		-0.548787, -0.781635, 0.296444,
		19.493603, 31.053682, 16.885088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.301085, 30.822498, 16.610880>,  <19.877754, 31.600828, 16.677576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.301085, 30.822498, 16.610880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.902830, 30.785255, 16.613445>,  <19.663877, 30.762909, 16.614985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.902830, 30.785255, 16.613445>,  <20.301085, 30.822498, 16.610880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902830, 30.785255, 16.613445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058799, -0.679143, -0.731647,
		0.072477, -0.728077, 0.681653,
		-0.995636, -0.093108, 0.006412,
		19.604139, 30.757322, 16.615370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.118448, 28.101797, 21.995916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490866, 28.123905, 22.140198>,  <30.714315, 28.137169, 22.226767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490866, 28.123905, 22.140198>,  <30.118448, 28.101797, 21.995916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490866, 28.123905, 22.140198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056739, 0.954516, -0.292710,
		-0.360473, 0.292991, 0.885559,
		0.931042, 0.055269, 0.360702,
		30.770178, 28.140486, 22.248407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214432, 28.657534, 22.365177>,  <30.118448, 28.101797, 21.995916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214432, 28.657534, 22.365177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600216, 28.607742, 22.271946>,  <30.831686, 28.577868, 22.216007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600216, 28.607742, 22.271946>,  <30.214432, 28.657534, 22.365177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600216, 28.607742, 22.271946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078109, 0.976974, -0.198549,
		0.252427, 0.173286, 0.951973,
		0.964458, -0.124477, -0.233079,
		30.889553, 28.570400, 22.202023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650896, 29.197258, 22.773186>,  <30.214432, 28.657534, 22.365177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650896, 29.197258, 22.773186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873758, 29.094570, 22.457294>,  <31.007475, 29.032957, 22.267759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873758, 29.094570, 22.457294>,  <30.650896, 29.197258, 22.773186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873758, 29.094570, 22.457294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212792, 0.963397, -0.163049,
		0.802681, -0.077204, 0.591390,
		0.557156, -0.256720, -0.789729,
		31.040905, 29.017553, 22.220375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113064, 29.749729, 22.693342>,  <30.650896, 29.197258, 22.773186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113064, 29.749729, 22.693342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162802, 29.552582, 22.348873>,  <31.192644, 29.434294, 22.142193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162802, 29.552582, 22.348873>,  <31.113064, 29.749729, 22.693342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162802, 29.552582, 22.348873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336722, 0.837365, -0.430626,
		0.933358, -0.236429, 0.270083,
		0.124345, -0.492871, -0.861172,
		31.200106, 29.404720, 22.090521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782084, 29.960155, 22.513296>,  <31.113064, 29.749729, 22.693342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782084, 29.960155, 22.513296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598696, 29.835396, 22.180424>,  <31.488663, 29.760540, 21.980700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598696, 29.835396, 22.180424>,  <31.782084, 29.960155, 22.513296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598696, 29.835396, 22.180424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252506, 0.852083, -0.458470,
		0.852083, -0.420325, -0.311899,
		0.458470, 0.311899, 0.832180,
		31.461155, 29.741827, 21.930769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191395, 30.206839, 21.860418>,  <31.782084, 29.960155, 22.513296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191395, 30.206839, 21.860418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815672, 30.126991, 21.748806>,  <31.590239, 30.079082, 21.681839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815672, 30.126991, 21.748806>,  <32.191395, 30.206839, 21.860418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815672, 30.126991, 21.748806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002496, 0.817261, -0.576262,
		0.343075, -0.540589, -0.768156,
		-0.939305, -0.199619, -0.279033,
		31.533880, 30.067106, 21.665096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134968, 30.397209, 21.230440>,  <32.191395, 30.206839, 21.860418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134968, 30.397209, 21.230440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740545, 30.378220, 21.294243>,  <31.503893, 30.366825, 21.332523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740545, 30.378220, 21.294243>,  <32.134968, 30.397209, 21.230440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740545, 30.378220, 21.294243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146767, 0.699904, -0.698994,
		-0.078454, -0.712657, -0.697112,
		-0.986055, -0.047474, 0.159505,
		31.444729, 30.363977, 21.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842409, 30.332197, 20.565607>,  <32.134968, 30.397209, 21.230440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842409, 30.332197, 20.565607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566467, 30.470398, 20.820080>,  <31.400902, 30.553318, 20.972763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566467, 30.470398, 20.820080>,  <31.842409, 30.332197, 20.565607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566467, 30.470398, 20.820080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237501, 0.722125, -0.649714,
		-0.683881, -0.599303, -0.416106,
		-0.689856, 0.345501, 0.636182,
		31.359510, 30.574049, 21.010935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310221, 30.438526, 20.152065>,  <31.842409, 30.332197, 20.565607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310221, 30.438526, 20.152065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202700, 30.643867, 20.478062>,  <31.138187, 30.767073, 20.673660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202700, 30.643867, 20.478062>,  <31.310221, 30.438526, 20.152065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202700, 30.643867, 20.478062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480804, 0.661663, -0.575352,
		-0.834610, -0.546507, 0.068967,
		-0.268801, 0.513354, 0.814993,
		31.122059, 30.797874, 20.722559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631502, 30.518118, 20.030771>,  <31.310221, 30.438526, 20.152065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631502, 30.518118, 20.030771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763454, 30.799652, 20.282421>,  <30.842627, 30.968573, 20.433411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763454, 30.799652, 20.282421>,  <30.631502, 30.518118, 20.030771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763454, 30.799652, 20.282421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275662, 0.709201, -0.648879,
		-0.902878, 0.040628, 0.427973,
		0.329881, 0.703835, 0.629123,
		30.862419, 31.010803, 20.471157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160904, 31.016150, 20.091002>,  <30.631502, 30.518118, 20.030771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160904, 31.016150, 20.091002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475769, 31.234783, 20.205276>,  <30.664688, 31.365963, 20.273842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475769, 31.234783, 20.205276>,  <30.160904, 31.016150, 20.091002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475769, 31.234783, 20.205276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308457, 0.750031, -0.585071,
		-0.534066, 0.372424, 0.758995,
		0.787164, 0.546584, 0.285690,
		30.711918, 31.398758, 20.290983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942448, 31.626892, 20.498901>,  <30.160904, 31.016150, 20.091002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942448, 31.626892, 20.498901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290730, 31.678928, 20.309185>,  <30.499699, 31.710150, 20.195356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290730, 31.678928, 20.309185>,  <29.942448, 31.626892, 20.498901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290730, 31.678928, 20.309185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440213, 0.636151, -0.633659,
		0.219285, 0.760518, 0.611168,
		0.870704, 0.130092, -0.474289,
		30.551941, 31.717957, 20.166899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886396, 32.241501, 20.316940>,  <29.942448, 31.626892, 20.498901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886396, 32.241501, 20.316940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200993, 32.147770, 20.088371>,  <30.389750, 32.091530, 19.951229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200993, 32.147770, 20.088371>,  <29.886396, 32.241501, 20.316940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200993, 32.147770, 20.088371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310353, 0.649973, -0.693697,
		0.533962, 0.722929, 0.438474,
		0.786490, -0.234326, -0.571424,
		30.436939, 32.077473, 19.916945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225988, 32.874271, 20.070030>,  <29.886396, 32.241501, 20.316940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225988, 32.874271, 20.070030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255125, 32.575966, 19.805141>,  <30.272606, 32.396984, 19.646208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255125, 32.575966, 19.805141>,  <30.225988, 32.874271, 20.070030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255125, 32.575966, 19.805141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238552, 0.631683, -0.737610,
		0.968394, 0.211702, -0.131891,
		0.072840, -0.745761, -0.662220,
		30.276978, 32.352238, 19.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067274, 33.586128, 20.503500>,  <30.225988, 32.874271, 20.070030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067274, 33.586128, 20.503500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827450, 33.679543, 20.809700>,  <29.683556, 33.735592, 20.993420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827450, 33.679543, 20.809700>,  <30.067274, 33.586128, 20.503500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827450, 33.679543, 20.809700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656214, -0.404101, 0.637249,
		0.458157, 0.884401, 0.089036,
		-0.599563, 0.233533, 0.765498,
		29.647581, 33.749603, 21.039349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466084, 33.547211, 21.108566>,  <30.067274, 33.586128, 20.503500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466084, 33.547211, 21.108566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113026, 33.545841, 21.296577>,  <29.901190, 33.545021, 21.409384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113026, 33.545841, 21.296577>,  <30.466084, 33.547211, 21.108566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113026, 33.545841, 21.296577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464835, -0.154745, 0.871769,
		0.069750, 0.987948, 0.138177,
		-0.882645, -0.003424, 0.470027,
		29.848232, 33.544815, 21.437586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476557, 33.945911, 21.693090>,  <30.466084, 33.547211, 21.108566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476557, 33.945911, 21.693090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179155, 33.685478, 21.754143>,  <30.000715, 33.529217, 21.790773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179155, 33.685478, 21.754143>,  <30.476557, 33.945911, 21.693090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179155, 33.685478, 21.754143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389705, -0.236364, 0.890091,
		-0.543446, 0.721266, 0.429467,
		-0.743503, -0.651082, 0.152630,
		29.956104, 33.490154, 21.799932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333725, 34.033104, 22.303442>,  <30.476557, 33.945911, 21.693090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333725, 34.033104, 22.303442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186604, 33.671814, 22.214981>,  <30.098331, 33.455040, 22.161905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186604, 33.671814, 22.214981>,  <30.333725, 34.033104, 22.303442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186604, 33.671814, 22.214981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460640, -0.383560, 0.800432,
		-0.807794, 0.192530, 0.557136,
		-0.367803, -0.903224, -0.221151,
		30.076263, 33.400848, 22.148636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152739, 33.790188, 22.937849>,  <30.333725, 34.033104, 22.303442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152739, 33.790188, 22.937849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157393, 33.469242, 22.699162>,  <30.160185, 33.276672, 22.555950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157393, 33.469242, 22.699162>,  <30.152739, 33.790188, 22.937849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157393, 33.469242, 22.699162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489585, -0.515763, 0.703061,
		-0.871878, -0.300325, 0.386825,
		0.011636, -0.802367, -0.596717,
		30.160883, 33.228531, 22.520145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018421, 33.249149, 23.385376>,  <30.152739, 33.790188, 22.937849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018421, 33.249149, 23.385376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183722, 33.073761, 23.066135>,  <30.282902, 32.968529, 22.874592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183722, 33.073761, 23.066135>,  <30.018421, 33.249149, 23.385376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183722, 33.073761, 23.066135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577738, -0.551212, 0.601984,
		-0.703876, -0.709864, 0.025533,
		0.413252, -0.438474, -0.798100,
		30.307697, 32.942219, 22.826706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915953, 32.577923, 23.496023>,  <30.018421, 33.249149, 23.385376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915953, 32.577923, 23.496023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226597, 32.595783, 23.244663>,  <30.412983, 32.606499, 23.093847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226597, 32.595783, 23.244663>,  <29.915953, 32.577923, 23.496023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226597, 32.595783, 23.244663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514151, -0.621334, 0.591263,
		-0.364042, -0.782272, -0.505494,
		0.776610, 0.044656, -0.628397,
		30.459579, 32.609180, 23.056145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144070, 31.951761, 23.510592>,  <29.915953, 32.577923, 23.496023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144070, 31.951761, 23.510592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467802, 32.135811, 23.364567>,  <30.662041, 32.246239, 23.276951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467802, 32.135811, 23.364567>,  <30.144070, 31.951761, 23.510592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467802, 32.135811, 23.364567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583644, -0.560269, 0.587757,
		0.065907, -0.688757, -0.721991,
		0.809331, 0.460122, -0.365063,
		30.710602, 32.273846, 23.255049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618889, 31.354073, 23.527548>,  <30.144070, 31.951761, 23.510592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618889, 31.354073, 23.527548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814194, 31.701710, 23.495869>,  <30.931377, 31.910294, 23.476862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814194, 31.701710, 23.495869>,  <30.618889, 31.354073, 23.527548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814194, 31.701710, 23.495869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663371, -0.310650, 0.680760,
		0.567043, -0.384928, -0.728212,
		0.488263, 0.869096, -0.079198,
		30.960672, 31.962439, 23.472109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314140, 31.207611, 23.381163>,  <30.618889, 31.354073, 23.527548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314140, 31.207611, 23.381163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268721, 31.551449, 23.580441>,  <31.241468, 31.757751, 23.700008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268721, 31.551449, 23.580441>,  <31.314140, 31.207611, 23.381163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268721, 31.551449, 23.580441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585084, -0.347414, 0.732789,
		0.802984, 0.374696, -0.463487,
		-0.113551, 0.859596, 0.498197,
		31.234655, 31.809328, 23.729900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991385, 31.422571, 23.520369>,  <31.314140, 31.207611, 23.381163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991385, 31.422571, 23.520369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750051, 31.609577, 23.778801>,  <31.605251, 31.721781, 23.933861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750051, 31.609577, 23.778801>,  <31.991385, 31.422571, 23.520369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750051, 31.609577, 23.778801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584344, -0.292158, 0.757090,
		0.542709, 0.834310, -0.096921,
		-0.603331, 0.467516, 0.646081,
		31.569052, 31.749832, 23.972626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404686, 31.517641, 24.034883>,  <31.991385, 31.422571, 23.520369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404686, 31.517641, 24.034883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047516, 31.598877, 24.195602>,  <31.833214, 31.647619, 24.292034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047516, 31.598877, 24.195602>,  <32.404686, 31.517641, 24.034883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047516, 31.598877, 24.195602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228010, -0.565545, 0.792572,
		0.388199, 0.799320, 0.458682,
		-0.892924, 0.203092, 0.401797,
		31.779638, 31.659805, 24.316141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539612, 31.692850, 24.750725>,  <32.404686, 31.517641, 24.034883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539612, 31.692850, 24.750725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153915, 31.587288, 24.741016>,  <31.922497, 31.523951, 24.735191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153915, 31.587288, 24.741016>,  <32.539612, 31.692850, 24.750725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153915, 31.587288, 24.741016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160668, -0.654949, 0.738395,
		-0.210760, 0.708094, 0.673931,
		-0.964244, -0.263904, -0.024269,
		31.864643, 31.508118, 24.733736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208622, 31.796715, 25.448277>,  <32.539612, 31.692850, 24.750725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208622, 31.796715, 25.448277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967607, 31.540581, 25.257732>,  <31.822998, 31.386900, 25.143406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967607, 31.540581, 25.257732>,  <32.208622, 31.796715, 25.448277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967607, 31.540581, 25.257732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038326, -0.619400, 0.784139,
		-0.797168, 0.454218, 0.397755,
		-0.602540, -0.640335, -0.476358,
		31.786846, 31.348480, 25.114824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351997, 32.264423, 25.984306>,  <32.208622, 31.796715, 25.448277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351997, 32.264423, 25.984306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665684, 32.439999, 26.159733>,  <32.853893, 32.545345, 26.264988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665684, 32.439999, 26.159733>,  <32.351997, 32.264423, 25.984306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665684, 32.439999, 26.159733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102620, 0.605322, -0.789338,
		-0.611946, 0.664016, 0.429658,
		0.784214, 0.438941, 0.438565,
		32.900948, 32.571682, 26.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282986, 32.922993, 25.969145>,  <32.351997, 32.264423, 25.984306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282986, 32.922993, 25.969145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680565, 32.906822, 26.009991>,  <32.919113, 32.897118, 26.034498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680565, 32.906822, 26.009991>,  <32.282986, 32.922993, 25.969145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680565, 32.906822, 26.009991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109335, 0.452233, -0.885173,
		-0.010393, 0.890983, 0.453918,
		0.993950, -0.040430, 0.102116,
		32.978748, 32.894691, 26.040625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507298, 33.492054, 25.630720>,  <32.282986, 32.922993, 25.969145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507298, 33.492054, 25.630720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836685, 33.269611, 25.675713>,  <33.034317, 33.136147, 25.702709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836685, 33.269611, 25.675713>,  <32.507298, 33.492054, 25.630720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836685, 33.269611, 25.675713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306506, 0.269192, -0.913011,
		0.477451, 0.786310, 0.392120,
		0.823465, -0.556105, 0.112482,
		33.083725, 33.102779, 25.709457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036385, 33.944069, 25.625990>,  <32.507298, 33.492054, 25.630720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036385, 33.944069, 25.625990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175976, 33.583366, 25.523968>,  <33.259731, 33.366947, 25.462753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175976, 33.583366, 25.523968>,  <33.036385, 33.944069, 25.625990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175976, 33.583366, 25.523968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343479, 0.376309, -0.860473,
		0.871914, 0.212683, 0.441058,
		0.348982, -0.901752, -0.255057,
		33.280670, 33.312840, 25.447451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649719, 34.063377, 25.221888>,  <33.036385, 33.944069, 25.625990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649719, 34.063377, 25.221888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632954, 33.673866, 25.132450>,  <33.622894, 33.440159, 25.078789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632954, 33.673866, 25.132450>,  <33.649719, 34.063377, 25.221888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632954, 33.673866, 25.132450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507500, 0.172017, -0.844306,
		0.860631, -0.148865, 0.486984,
		-0.041918, -0.973781, -0.223592,
		33.620377, 33.381733, 25.065372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325264, 33.797699, 25.099966>,  <33.649719, 34.063377, 25.221888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325264, 33.797699, 25.099966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060555, 33.572155, 24.902332>,  <33.901730, 33.436829, 24.783752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060555, 33.572155, 24.902332>,  <34.325264, 33.797699, 25.099966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060555, 33.572155, 24.902332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385450, 0.309367, -0.869322,
		0.643032, -0.765735, 0.012611,
		-0.661769, -0.563863, -0.494085,
		33.862022, 33.402996, 24.754107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781666, 33.460442, 24.575268>,  <34.325264, 33.797699, 25.099966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781666, 33.460442, 24.575268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403320, 33.415173, 24.453590>,  <34.176311, 33.388012, 24.380583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403320, 33.415173, 24.453590>,  <34.781666, 33.460442, 24.575268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403320, 33.415173, 24.453590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300608, 0.047927, -0.952543,
		0.122378, -0.992419, -0.011313,
		-0.945864, -0.113170, -0.304195,
		34.119560, 33.381222, 24.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826065, 32.978470, 24.028173>,  <34.781666, 33.460442, 24.575268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826065, 32.978470, 24.028173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484100, 33.180080, 23.979053>,  <34.278919, 33.301048, 23.949581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484100, 33.180080, 23.979053>,  <34.826065, 32.978470, 24.028173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484100, 33.180080, 23.979053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224510, 0.146071, -0.963462,
		-0.467673, -0.851246, -0.238037,
		-0.854914, 0.504027, -0.122800,
		34.227627, 33.331287, 23.942213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543350, 32.730888, 23.425173>,  <34.826065, 32.978470, 24.028173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543350, 32.730888, 23.425173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369171, 33.087097, 23.477882>,  <34.264664, 33.300823, 23.509508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369171, 33.087097, 23.477882>,  <34.543350, 32.730888, 23.425173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369171, 33.087097, 23.477882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026184, 0.158847, -0.986956,
		-0.899834, -0.426316, -0.092487,
		-0.435446, 0.890518, 0.131773,
		34.238537, 33.354252, 23.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960758, 32.793724, 23.012791>,  <34.543350, 32.730888, 23.425173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960758, 32.793724, 23.012791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072720, 33.169289, 23.092888>,  <34.139896, 33.394627, 23.140945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072720, 33.169289, 23.092888>,  <33.960758, 32.793724, 23.012791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072720, 33.169289, 23.092888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099167, 0.179189, -0.978804,
		-0.954894, 0.293824, -0.042954,
		0.279899, 0.938914, 0.200244,
		34.156689, 33.450962, 23.152962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867619, 33.047184, 22.380878>,  <33.960758, 32.793724, 23.012791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867619, 33.047184, 22.380878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019772, 33.377922, 22.546593>,  <34.111061, 33.576366, 22.646021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019772, 33.377922, 22.546593>,  <33.867619, 33.047184, 22.380878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019772, 33.377922, 22.546593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176745, 0.374712, -0.910139,
		-0.907784, 0.419422, -0.003608,
		0.380381, 0.826847, 0.414288,
		34.133884, 33.625977, 22.670879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439198, 33.712486, 22.093527>,  <33.867619, 33.047184, 22.380878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439198, 33.712486, 22.093527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813244, 33.802341, 22.203140>,  <34.037674, 33.856255, 22.268908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813244, 33.802341, 22.203140>,  <33.439198, 33.712486, 22.093527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813244, 33.802341, 22.203140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197099, 0.312924, -0.929102,
		-0.294459, 0.922832, 0.248346,
		0.935118, 0.224634, 0.274033,
		34.093781, 33.869732, 22.285351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.340076, 30.894512, 29.530508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.722149, 30.792442, 29.470482>,  <32.951393, 30.731201, 29.434465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.722149, 30.792442, 29.470482>,  <32.340076, 30.894512, 29.530508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722149, 30.792442, 29.470482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118383, 0.793889, -0.596427,
		0.271329, 0.551929, 0.788514,
		0.955178, -0.255175, -0.150066,
		33.008701, 30.715889, 29.425463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714573, 31.534981, 29.601942>,  <32.340076, 30.894512, 29.530508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714573, 31.534981, 29.601942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962631, 31.288765, 29.407406>,  <33.111465, 31.141035, 29.290684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962631, 31.288765, 29.407406>,  <32.714573, 31.534981, 29.601942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962631, 31.288765, 29.407406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200347, 0.723662, -0.660435,
		0.758471, 0.312130, 0.572098,
		0.620147, -0.615539, -0.486343,
		33.148674, 31.104103, 29.261503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314533, 31.924446, 29.534782>,  <32.714573, 31.534981, 29.601942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314533, 31.924446, 29.534782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.308979, 31.660007, 29.234715>,  <33.305645, 31.501345, 29.054674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.308979, 31.660007, 29.234715>,  <33.314533, 31.924446, 29.534782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308979, 31.660007, 29.234715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005501, 0.750283, -0.661094,
		0.999888, -0.005055, -0.014057,
		-0.013889, -0.661097, -0.750172,
		33.304813, 31.461678, 29.009663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872391, 32.162991, 29.081964>,  <33.314533, 31.924446, 29.534782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872391, 32.162991, 29.081964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631763, 31.930038, 28.863262>,  <33.487385, 31.790266, 28.732040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631763, 31.930038, 28.863262>,  <33.872391, 32.162991, 29.081964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631763, 31.930038, 28.863262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102545, 0.622491, -0.775880,
		0.792210, -0.522814, -0.314751,
		-0.601571, -0.582384, -0.546756,
		33.451290, 31.755323, 28.699236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116333, 32.116375, 28.445929>,  <33.872391, 32.162991, 29.081964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116333, 32.116375, 28.445929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737419, 32.014812, 28.367771>,  <33.510071, 31.953875, 28.320877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737419, 32.014812, 28.367771>,  <34.116333, 32.116375, 28.445929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737419, 32.014812, 28.367771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048458, 0.489310, -0.870762,
		0.316700, -0.834330, -0.451213,
		-0.947287, -0.253905, -0.195395,
		33.453232, 31.938641, 28.309153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165203, 31.882843, 27.751879>,  <34.116333, 32.116375, 28.445929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165203, 31.882843, 27.751879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784218, 31.967163, 27.839859>,  <33.555626, 32.017754, 27.892647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784218, 31.967163, 27.839859>,  <34.165203, 31.882843, 27.751879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784218, 31.967163, 27.839859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111947, 0.429296, -0.896199,
		-0.283342, -0.878219, -0.385290,
		-0.952463, 0.210799, 0.219952,
		33.498478, 32.030403, 27.905844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860172, 31.771454, 27.181576>,  <34.165203, 31.882843, 27.751879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860172, 31.771454, 27.181576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.535984, 31.940861, 27.343449>,  <33.341469, 32.042503, 27.440573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.535984, 31.940861, 27.343449>,  <33.860172, 31.771454, 27.181576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535984, 31.940861, 27.343449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265884, 0.349609, -0.898376,
		-0.521958, -0.835708, -0.170742,
		-0.810473, 0.423517, 0.404683,
		33.292843, 32.067917, 27.464853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290005, 31.509748, 26.842489>,  <33.860172, 31.771454, 27.181576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290005, 31.509748, 26.842489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202518, 31.864967, 27.004250>,  <33.150028, 32.078098, 27.101305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202518, 31.864967, 27.004250>,  <33.290005, 31.509748, 26.842489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202518, 31.864967, 27.004250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224115, 0.357638, -0.906569,
		-0.949704, -0.288910, 0.120805,
		-0.218713, 0.888046, 0.404399,
		33.136906, 32.131382, 27.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676853, 31.735596, 26.393927>,  <33.290005, 31.509748, 26.842489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676853, 31.735596, 26.393927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841522, 32.065884, 26.548180>,  <32.940323, 32.264057, 26.640732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841522, 32.065884, 26.548180>,  <32.676853, 31.735596, 26.393927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841522, 32.065884, 26.548180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095676, 0.381658, -0.919339,
		-0.906294, 0.415365, 0.078118,
		0.411675, 0.825718, 0.385635,
		32.965023, 32.313599, 26.663870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939909, 31.443573, 26.050718>,  <32.676853, 31.735596, 26.393927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939909, 31.443573, 26.050718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858038, 31.214935, 25.732880>,  <31.808916, 31.077753, 25.542175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.858038, 31.214935, 25.732880>,  <31.939909, 31.443573, 26.050718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858038, 31.214935, 25.732880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168956, -0.820230, 0.546513,
		-0.964137, -0.022394, 0.264456,
		-0.204676, -0.571596, -0.794598,
		31.796635, 31.043457, 25.494501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524805, 30.854177, 26.332516>,  <31.939909, 31.443573, 26.050718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524805, 30.854177, 26.332516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702913, 30.751801, 25.989300>,  <31.809778, 30.690374, 25.783371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702913, 30.751801, 25.989300>,  <31.524805, 30.854177, 26.332516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702913, 30.751801, 25.989300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301895, -0.859253, 0.412969,
		-0.842969, -0.442919, -0.305330,
		0.445268, -0.255942, -0.858038,
		31.836494, 30.675018, 25.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217718, 30.289200, 26.232275>,  <31.524805, 30.854177, 26.332516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217718, 30.289200, 26.232275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.552309, 30.266621, 26.014240>,  <31.753063, 30.253073, 25.883419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.552309, 30.266621, 26.014240>,  <31.217718, 30.289200, 26.232275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552309, 30.266621, 26.014240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259208, -0.835615, 0.484312,
		-0.482822, -0.546407, -0.684341,
		0.836477, -0.056450, -0.545086,
		31.803251, 30.249685, 25.850714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269718, 29.534681, 26.025909>,  <31.217718, 30.289200, 26.232275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269718, 29.534681, 26.025909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637259, 29.677883, 25.959518>,  <31.857782, 29.763803, 25.919683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.637259, 29.677883, 25.959518>,  <31.269718, 29.534681, 26.025909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637259, 29.677883, 25.959518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388459, -0.746655, 0.540005,
		0.069396, -0.560659, -0.825134,
		0.918849, 0.358005, -0.165978,
		31.912912, 29.785284, 25.909725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758226, 28.949291, 25.722961>,  <31.269718, 29.534681, 26.025909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758226, 28.949291, 25.722961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.963194, 29.242134, 25.902493>,  <32.086174, 29.417839, 26.010210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.963194, 29.242134, 25.902493>,  <31.758226, 28.949291, 25.722961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963194, 29.242134, 25.902493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308051, -0.644586, 0.699724,
		0.801580, -0.220291, -0.555825,
		0.512420, 0.732107, 0.448827,
		32.116920, 29.461765, 26.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418232, 28.601295, 25.844233>,  <31.758226, 28.949291, 25.722961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418232, 28.601295, 25.844233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437965, 28.937866, 26.059479>,  <32.449806, 29.139809, 26.188625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.437965, 28.937866, 26.059479>,  <32.418232, 28.601295, 25.844233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437965, 28.937866, 26.059479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380239, -0.514022, 0.768895,
		0.923571, 0.166679, -0.345303,
		0.049335, 0.841427, 0.538114,
		32.452766, 29.190294, 26.220913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075760, 28.539242, 26.158558>,  <32.418232, 28.601295, 25.844233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075760, 28.539242, 26.158558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857960, 28.783985, 26.388042>,  <32.727280, 28.930832, 26.525734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857960, 28.783985, 26.388042>,  <33.075760, 28.539242, 26.158558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857960, 28.783985, 26.388042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292113, -0.502846, 0.813521,
		0.786248, 0.610554, 0.095070,
		-0.544504, 0.611858, 0.573712,
		32.694607, 28.967543, 26.560156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373085, 28.407562, 26.762650>,  <33.075760, 28.539242, 26.158558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373085, 28.407562, 26.762650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057045, 28.611568, 26.898663>,  <32.867420, 28.733973, 26.980270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.057045, 28.611568, 26.898663>,  <33.373085, 28.407562, 26.762650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057045, 28.611568, 26.898663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159977, -0.363929, 0.917585,
		0.591732, 0.779383, 0.205950,
		-0.790102, 0.510018, 0.340032,
		32.820015, 28.764574, 27.000671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560204, 28.880663, 27.346506>,  <33.373085, 28.407562, 26.762650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560204, 28.880663, 27.346506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163834, 28.836800, 27.377579>,  <32.926010, 28.810482, 27.396223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163834, 28.836800, 27.377579>,  <33.560204, 28.880663, 27.346506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163834, 28.836800, 27.377579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113288, -0.370701, 0.921817,
		-0.072290, 0.922255, 0.379762,
		-0.990929, -0.109660, 0.077683,
		32.866554, 28.803902, 27.400883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351418, 29.190186, 27.991669>,  <33.560204, 28.880663, 27.346506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351418, 29.190186, 27.991669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.081131, 28.910778, 27.897446>,  <32.918961, 28.743134, 27.840912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.081131, 28.910778, 27.897446>,  <33.351418, 29.190186, 27.991669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081131, 28.910778, 27.897446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007613, -0.326141, 0.945290,
		-0.737126, 0.636951, 0.225695,
		-0.675712, -0.698516, -0.235558,
		32.878418, 28.701223, 27.826778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770409, 29.139402, 28.570251>,  <33.351418, 29.190186, 27.991669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770409, 29.139402, 28.570251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.730217, 28.784908, 28.389366>,  <32.706100, 28.572212, 28.280836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.730217, 28.784908, 28.389366>,  <32.770409, 29.139402, 28.570251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730217, 28.784908, 28.389366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343845, -0.395576, 0.851640,
		-0.933635, 0.241062, -0.264980,
		-0.100479, -0.886233, -0.452211,
		32.700073, 28.519039, 28.253702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081554, 28.941904, 28.714018>,  <32.770409, 29.139402, 28.570251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081554, 28.941904, 28.714018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253849, 28.601360, 28.594246>,  <32.357224, 28.397034, 28.522383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.253849, 28.601360, 28.594246>,  <32.081554, 28.941904, 28.714018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253849, 28.601360, 28.594246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500462, -0.501427, 0.705769,
		-0.751004, -0.154145, -0.642053,
		0.430733, -0.851358, -0.299430,
		32.383068, 28.345953, 28.504417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621849, 28.498405, 28.685066>,  <32.081554, 28.941904, 28.714018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621849, 28.498405, 28.685066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.927191, 28.244061, 28.730610>,  <32.110397, 28.091454, 28.757936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.927191, 28.244061, 28.730610>,  <31.621849, 28.498405, 28.685066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927191, 28.244061, 28.730610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544721, -0.538877, 0.642566,
		-0.347228, -0.552528, -0.757724,
		0.763356, -0.635865, 0.113860,
		32.156197, 28.053301, 28.764769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327473, 27.747787, 28.681158>,  <31.621849, 28.498405, 28.685066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327473, 27.747787, 28.681158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698896, 27.724079, 28.827724>,  <31.921751, 27.709854, 28.915665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698896, 27.724079, 28.827724>,  <31.327473, 27.747787, 28.681158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698896, 27.724079, 28.827724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319903, -0.628434, 0.709037,
		0.188246, -0.775602, -0.602499,
		0.928561, -0.059269, 0.366417,
		31.977465, 27.706299, 28.937649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.451420, 26.690374, 27.876522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124851, 26.880795, 28.007267>,  <35.928909, 26.995047, 28.085714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124851, 26.880795, 28.007267>,  <36.451420, 26.690374, 27.876522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124851, 26.880795, 28.007267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171326, 0.340864, -0.924370,
		-0.551460, -0.810672, -0.196728,
		-0.816418, 0.476049, 0.326862,
		35.879925, 27.023609, 28.105326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913151, 26.446972, 27.501167>,  <36.451420, 26.690374, 27.876522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913151, 26.446972, 27.501167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.797169, 26.804234, 27.638687>,  <35.727581, 27.018591, 27.721199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.797169, 26.804234, 27.638687>,  <35.913151, 26.446972, 27.501167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797169, 26.804234, 27.638687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125831, 0.320536, -0.938841,
		-0.948733, -0.315481, 0.019447,
		-0.289953, 0.893156, 0.343801,
		35.710182, 27.072180, 27.741827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248230, 26.628565, 27.237473>,  <35.913151, 26.446972, 27.501167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248230, 26.628565, 27.237473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410732, 26.979050, 27.341171>,  <35.508232, 27.189341, 27.403391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410732, 26.979050, 27.341171>,  <35.248230, 26.628565, 27.237473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410732, 26.979050, 27.341171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046914, 0.303342, -0.951726,
		-0.912554, 0.374483, 0.164342,
		0.406257, 0.876211, 0.259247,
		35.532608, 27.241913, 27.418945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787964, 27.077654, 26.992796>,  <35.248230, 26.628565, 27.237473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787964, 27.077654, 26.992796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132812, 27.274326, 27.041775>,  <35.339722, 27.392330, 27.071161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132812, 27.274326, 27.041775>,  <34.787964, 27.077654, 26.992796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132812, 27.274326, 27.041775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135609, 0.456732, -0.879208,
		-0.488216, 0.741380, 0.460435,
		0.862122, 0.491683, 0.122446,
		35.391449, 27.421831, 27.078508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598862, 27.691748, 26.814627>,  <34.787964, 27.077654, 26.992796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598862, 27.691748, 26.814627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997871, 27.701138, 26.788120>,  <35.237278, 27.706772, 26.772217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997871, 27.701138, 26.788120>,  <34.598862, 27.691748, 26.814627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997871, 27.701138, 26.788120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067555, 0.580859, -0.811196,
		0.019449, 0.813666, 0.581008,
		0.997526, 0.023473, -0.066264,
		35.297131, 27.708179, 26.768242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798199, 28.387741, 26.583603>,  <34.598862, 27.691748, 26.814627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798199, 28.387741, 26.583603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118958, 28.162025, 26.505081>,  <35.311413, 28.026596, 26.457968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118958, 28.162025, 26.505081>,  <34.798199, 28.387741, 26.583603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118958, 28.162025, 26.505081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115325, 0.468578, -0.875862,
		0.586224, 0.679714, 0.440829,
		0.801899, -0.564290, -0.196304,
		35.359528, 27.992739, 26.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281570, 28.836067, 26.340088>,  <34.798199, 28.387741, 26.583603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281570, 28.836067, 26.340088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397316, 28.482563, 26.192989>,  <35.466763, 28.270460, 26.104731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397316, 28.482563, 26.192989>,  <35.281570, 28.836067, 26.340088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397316, 28.482563, 26.192989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241630, 0.439178, -0.865296,
		0.926219, 0.161531, 0.340627,
		0.289368, -0.883759, -0.367744,
		35.484127, 28.217436, 26.082666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962700, 29.008928, 26.142115>,  <35.281570, 28.836067, 26.340088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962700, 29.008928, 26.142115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845299, 28.677509, 25.951382>,  <35.774860, 28.478659, 25.836941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845299, 28.677509, 25.951382>,  <35.962700, 29.008928, 26.142115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845299, 28.677509, 25.951382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229765, 0.423039, -0.876497,
		0.927937, -0.366810, 0.066209,
		-0.293498, -0.828546, -0.476833,
		35.757248, 28.428946, 25.808332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426960, 28.975164, 25.607105>,  <35.962700, 29.008928, 26.142115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426960, 28.975164, 25.607105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160271, 28.702736, 25.486031>,  <36.000256, 28.539278, 25.413385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160271, 28.702736, 25.486031>,  <36.426960, 28.975164, 25.607105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160271, 28.702736, 25.486031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186374, 0.240866, -0.952496,
		0.721626, -0.691464, -0.033657,
		-0.666724, -0.681073, -0.302686,
		35.960255, 28.498413, 25.395226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766720, 28.535004, 25.232197>,  <36.426960, 28.975164, 25.607105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766720, 28.535004, 25.232197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383144, 28.480518, 25.132694>,  <36.153000, 28.447826, 25.072992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.383144, 28.480518, 25.132694>,  <36.766720, 28.535004, 25.232197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383144, 28.480518, 25.132694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249320, 0.013200, -0.968331,
		0.135186, -0.990591, 0.021304,
		-0.958939, -0.136216, -0.248759,
		36.095463, 28.439653, 25.058067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857765, 28.082222, 24.718189>,  <36.766720, 28.535004, 25.232197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857765, 28.082222, 24.718189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.490482, 28.237656, 24.687496>,  <36.270111, 28.330915, 24.669081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.490482, 28.237656, 24.687496>,  <36.857765, 28.082222, 24.718189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490482, 28.237656, 24.687496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129973, 0.112596, -0.985104,
		-0.374159, -0.914507, -0.153892,
		-0.918211, 0.388587, -0.076732,
		36.215019, 28.354231, 24.664476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584671, 27.857878, 24.176857>,  <36.857765, 28.082222, 24.718189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584671, 27.857878, 24.176857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347221, 28.175636, 24.228310>,  <36.204750, 28.366291, 24.259182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347221, 28.175636, 24.228310>,  <36.584671, 27.857878, 24.176857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347221, 28.175636, 24.228310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089135, 0.223766, -0.970558,
		-0.799791, -0.564681, -0.203642,
		-0.593624, 0.794395, 0.128633,
		36.169136, 28.413956, 24.266899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276482, 27.846882, 23.571352>,  <36.584671, 27.857878, 24.176857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276482, 27.846882, 23.571352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250267, 28.217075, 23.720581>,  <36.234539, 28.439192, 23.810118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250267, 28.217075, 23.720581>,  <36.276482, 27.846882, 23.571352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250267, 28.217075, 23.720581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147269, 0.378751, -0.913707,
		-0.986923, -0.004937, -0.161117,
		-0.065534, 0.925486, 0.373071,
		36.230606, 28.494720, 23.832502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842770, 28.277067, 23.059719>,  <36.276482, 27.846882, 23.571352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842770, 28.277067, 23.059719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038639, 28.555866, 23.269260>,  <36.156158, 28.723145, 23.394985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038639, 28.555866, 23.269260>,  <35.842770, 28.277067, 23.059719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038639, 28.555866, 23.269260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080553, 0.562077, -0.823153,
		-0.868179, 0.445271, 0.219087,
		0.489670, 0.696996, 0.523851,
		36.185539, 28.764965, 23.426416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084949, 28.632656, 23.220722>,  <35.842770, 28.277067, 23.059719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084949, 28.632656, 23.220722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910919, 28.506443, 22.883404>,  <34.806503, 28.430716, 22.681013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910919, 28.506443, 22.883404>,  <35.084949, 28.632656, 23.220722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910919, 28.506443, 22.883404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111670, -0.910445, 0.398271,
		-0.893444, 0.267448, 0.360874,
		-0.435073, -0.315534, -0.843297,
		34.780396, 28.411783, 22.630415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322609, 28.458349, 23.290131>,  <35.084949, 28.632656, 23.220722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322609, 28.458349, 23.290131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477097, 28.253223, 22.983444>,  <34.569790, 28.130148, 22.799433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477097, 28.253223, 22.983444>,  <34.322609, 28.458349, 23.290131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477097, 28.253223, 22.983444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108179, -0.850659, 0.514467,
		-0.916040, -0.115756, -0.384019,
		0.386222, -0.512815, -0.766716,
		34.592964, 28.099379, 22.753429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801964, 27.960335, 23.198473>,  <34.322609, 28.458349, 23.290131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801964, 27.960335, 23.198473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123592, 27.810616, 23.013702>,  <34.316570, 27.720785, 22.902840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123592, 27.810616, 23.013702>,  <33.801964, 27.960335, 23.198473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123592, 27.810616, 23.013702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113021, -0.859015, 0.499320,
		-0.583697, -0.349279, -0.733009,
		0.804067, -0.374297, -0.461928,
		34.364811, 27.698326, 22.875124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630196, 27.287737, 22.983820>,  <33.801964, 27.960335, 23.198473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630196, 27.287737, 22.983820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028919, 27.288811, 23.015732>,  <34.268154, 27.289455, 23.034880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028919, 27.288811, 23.015732>,  <33.630196, 27.287737, 22.983820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028919, 27.288811, 23.015732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025523, -0.936263, 0.350372,
		0.075636, -0.351291, -0.933206,
		0.996809, 0.002682, 0.079781,
		34.327961, 27.289616, 23.039665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856091, 26.574825, 23.005695>,  <33.630196, 27.287737, 22.983820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856091, 26.574825, 23.005695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212135, 26.725288, 23.108624>,  <34.425762, 26.815567, 23.170380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212135, 26.725288, 23.108624>,  <33.856091, 26.574825, 23.005695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212135, 26.725288, 23.108624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165372, -0.792701, 0.586751,
		0.424688, -0.479719, -0.767796,
		0.890108, 0.376158, 0.257318,
		34.479168, 26.838135, 23.185820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320511, 26.028957, 22.965635>,  <33.856091, 26.574825, 23.005695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320511, 26.028957, 22.965635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437912, 26.294834, 23.240456>,  <34.508354, 26.454361, 23.405348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437912, 26.294834, 23.240456>,  <34.320511, 26.028957, 22.965635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437912, 26.294834, 23.240456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113034, -0.737795, 0.665494,
		0.949252, -0.117665, -0.291678,
		0.293504, 0.664691, 0.687053,
		34.525963, 26.494242, 23.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865238, 25.677870, 23.255285>,  <34.320511, 26.028957, 22.965635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865238, 25.677870, 23.255285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774109, 25.980366, 23.500626>,  <34.719433, 26.161863, 23.647829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774109, 25.980366, 23.500626>,  <34.865238, 25.677870, 23.255285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774109, 25.980366, 23.500626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111720, -0.605453, 0.788001,
		0.967273, 0.248046, 0.053447,
		-0.227821, 0.756240, 0.613350,
		34.705761, 26.207237, 23.684631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254410, 25.522474, 23.842585>,  <34.865238, 25.677870, 23.255285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254410, 25.522474, 23.842585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987652, 25.791016, 23.971909>,  <34.827595, 25.952141, 24.049503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987652, 25.791016, 23.971909>,  <35.254410, 25.522474, 23.842585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987652, 25.791016, 23.971909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002725, -0.431687, 0.902019,
		0.745145, 0.602435, 0.286061,
		-0.666897, 0.671355, 0.323311,
		34.787582, 25.992422, 24.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421581, 25.536200, 24.485250>,  <35.254410, 25.522474, 23.842585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421581, 25.536200, 24.485250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051159, 25.684849, 24.458958>,  <34.828907, 25.774038, 24.443182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051159, 25.684849, 24.458958>,  <35.421581, 25.536200, 24.485250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051159, 25.684849, 24.458958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219771, -0.389448, 0.894444,
		0.306798, 0.842749, 0.442322,
		-0.926054, 0.371624, -0.065730,
		34.773342, 25.796335, 24.439240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336536, 25.904432, 25.070677>,  <35.421581, 25.536200, 24.485250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336536, 25.904432, 25.070677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976410, 25.787529, 24.941666>,  <34.760334, 25.717388, 24.864260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976410, 25.787529, 24.941666>,  <35.336536, 25.904432, 25.070677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976410, 25.787529, 24.941666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163610, -0.459430, 0.873015,
		-0.403324, 0.838755, 0.365814,
		-0.900312, -0.292257, -0.322528,
		34.706318, 25.699852, 24.844908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982590, 25.972258, 25.804335>,  <35.336536, 25.904432, 25.070677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982590, 25.972258, 25.804335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793633, 25.762875, 25.520691>,  <34.680256, 25.637245, 25.350504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793633, 25.762875, 25.520691>,  <34.982590, 25.972258, 25.804335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793633, 25.762875, 25.520691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495233, -0.507890, 0.704834,
		-0.729100, 0.684135, -0.019308,
		-0.472396, -0.523456, -0.709109,
		34.651913, 25.605839, 25.307959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331944, 26.096329, 25.851675>,  <34.982590, 25.972258, 25.804335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331944, 26.096329, 25.851675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396439, 25.729668, 25.705387>,  <34.435135, 25.509672, 25.617615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396439, 25.729668, 25.705387>,  <34.331944, 26.096329, 25.851675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396439, 25.729668, 25.705387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410982, -0.399274, 0.819557,
		-0.897272, 0.018163, -0.441105,
		0.161236, -0.916652, -0.365722,
		34.444809, 25.454672, 25.595671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746891, 25.740995, 25.993080>,  <34.331944, 26.096329, 25.851675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746891, 25.740995, 25.993080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022972, 25.457592, 25.934242>,  <34.188622, 25.287550, 25.898939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022972, 25.457592, 25.934242>,  <33.746891, 25.740995, 25.993080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022972, 25.457592, 25.934242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293768, -0.460123, 0.837847,
		-0.661302, -0.535073, -0.525715,
		0.690203, -0.708508, -0.147094,
		34.230034, 25.245039, 25.890114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353260, 25.162457, 26.194126>,  <33.746891, 25.740995, 25.993080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353260, 25.162457, 26.194126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735512, 25.046112, 26.212765>,  <33.964863, 24.976305, 26.223948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.735512, 25.046112, 26.212765>,  <33.353260, 25.162457, 26.194126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735512, 25.046112, 26.212765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211221, -0.566352, 0.796638,
		-0.205319, -0.771133, -0.602659,
		0.955630, -0.290859, 0.046597,
		34.022202, 24.958855, 26.226744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674644, 24.795296, 26.180969>,  <33.353260, 25.162457, 26.194126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674644, 24.795296, 26.180969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327106, 24.600304, 26.215557>,  <32.118584, 24.483309, 26.236311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327106, 24.600304, 26.215557>,  <32.674644, 24.795296, 26.180969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327106, 24.600304, 26.215557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249949, 0.281132, -0.926547,
		0.427364, -0.826636, -0.366105,
		-0.868842, -0.487480, 0.086472,
		32.066452, 24.454060, 26.241499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606018, 24.279554, 25.550402>,  <32.674644, 24.795296, 26.180969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606018, 24.279554, 25.550402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260315, 24.398354, 25.712811>,  <32.052895, 24.469633, 25.810255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260315, 24.398354, 25.712811>,  <32.606018, 24.279554, 25.550402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260315, 24.398354, 25.712811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254714, 0.437647, -0.862314,
		-0.433798, -0.848680, -0.302590,
		-0.864257, 0.296996, 0.406021,
		32.001038, 24.487452, 25.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087418, 24.213123, 25.000114>,  <32.606018, 24.279554, 25.550402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087418, 24.213123, 25.000114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921091, 24.453400, 25.273251>,  <31.821295, 24.597565, 25.437132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921091, 24.453400, 25.273251>,  <32.087418, 24.213123, 25.000114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921091, 24.453400, 25.273251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425726, 0.534918, -0.729808,
		-0.803652, -0.594168, 0.033302,
		-0.415814, 0.600689, 0.682840,
		31.796347, 24.633606, 25.478102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465120, 24.228661, 24.771055>,  <32.087418, 24.213123, 25.000114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465120, 24.228661, 24.771055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535030, 24.551468, 24.996681>,  <31.576977, 24.745153, 25.132057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535030, 24.551468, 24.996681>,  <31.465120, 24.228661, 24.771055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535030, 24.551468, 24.996681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137106, 0.587251, -0.797708,
		-0.975016, 0.062082, 0.213285,
		0.174775, 0.807020, 0.564067,
		31.587463, 24.793573, 25.165901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968346, 24.739145, 24.487206>,  <31.465120, 24.228661, 24.771055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968346, 24.739145, 24.487206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179674, 24.974735, 24.731823>,  <31.306471, 25.116089, 24.878593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179674, 24.974735, 24.731823>,  <30.968346, 24.739145, 24.487206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179674, 24.974735, 24.731823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051808, 0.741296, -0.669176,
		-0.847463, 0.321857, 0.422155,
		0.528320, 0.588973, 0.611546,
		31.338171, 25.151426, 24.915287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562014, 25.333811, 24.499126>,  <30.968346, 24.739145, 24.487206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562014, 25.333811, 24.499126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933064, 25.434155, 24.609821>,  <31.155693, 25.494362, 24.676239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933064, 25.434155, 24.609821>,  <30.562014, 25.333811, 24.499126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933064, 25.434155, 24.609821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009724, 0.724427, -0.689283,
		-0.373391, 0.642086, 0.669556,
		0.927623, 0.250861, 0.276738,
		31.211351, 25.509413, 24.692842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563391, 26.072847, 24.540565>,  <30.562014, 25.333811, 24.499126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563391, 26.072847, 24.540565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933294, 25.931442, 24.484215>,  <31.155237, 25.846600, 24.450405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933294, 25.931442, 24.484215>,  <30.563391, 26.072847, 24.540565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933294, 25.931442, 24.484215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108364, 0.599491, -0.793012,
		0.364795, 0.718080, 0.592693,
		0.924760, -0.353514, -0.140877,
		31.210722, 25.825388, 24.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925671, 26.686829, 24.519199>,  <30.563391, 26.072847, 24.540565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925671, 26.686829, 24.519199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171072, 26.420551, 24.349274>,  <31.318314, 26.260784, 24.247318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171072, 26.420551, 24.349274>,  <30.925671, 26.686829, 24.519199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171072, 26.420551, 24.349274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329379, 0.704630, -0.628494,
		0.717720, 0.245660, 0.651559,
		0.613504, -0.665693, -0.424812,
		31.355124, 26.220844, 24.221830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618378, 26.996458, 24.350288>,  <30.925671, 26.686829, 24.519199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618378, 26.996458, 24.350288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545723, 26.693970, 24.098850>,  <31.502131, 26.512476, 23.947987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545723, 26.693970, 24.098850>,  <31.618378, 26.996458, 24.350288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545723, 26.693970, 24.098850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457960, 0.500628, -0.734604,
		0.870218, -0.421305, 0.255387,
		-0.181638, -0.756223, -0.628597,
		31.491232, 26.467102, 23.910271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001778, 27.241289, 23.786747>,  <31.618378, 26.996458, 24.350288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001778, 27.241289, 23.786747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813543, 26.942959, 23.598156>,  <31.700603, 26.763960, 23.485001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813543, 26.942959, 23.598156>,  <32.001778, 27.241289, 23.786747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813543, 26.942959, 23.598156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166340, 0.449774, -0.877516,
		0.866533, -0.491372, -0.087596,
		-0.470585, -0.745826, -0.471479,
		31.672367, 26.719212, 23.456713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371826, 26.959312, 23.143431>,  <32.001778, 27.241289, 23.786747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371826, 26.959312, 23.143431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979731, 26.894981, 23.097359>,  <31.744473, 26.856382, 23.069715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979731, 26.894981, 23.097359>,  <32.371826, 26.959312, 23.143431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979731, 26.894981, 23.097359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002245, 0.591259, -0.806479,
		0.197807, -0.790283, -0.579936,
		-0.980238, -0.160829, -0.115181,
		31.685659, 26.846733, 23.062805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321678, 26.875727, 22.463980>,  <32.371826, 26.959312, 23.143431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321678, 26.875727, 22.463980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931433, 26.932838, 22.530674>,  <31.697287, 26.967106, 22.570690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931433, 26.932838, 22.530674>,  <32.321678, 26.875727, 22.463980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931433, 26.932838, 22.530674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055577, 0.574158, -0.816856,
		-0.212362, -0.806199, -0.552219,
		-0.975609, 0.142778, 0.166735,
		31.638750, 26.975672, 22.580694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973679, 26.676462, 21.874607>,  <32.321678, 26.875727, 22.463980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973679, 26.676462, 21.874607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720804, 26.920734, 22.065357>,  <31.569078, 27.067297, 22.179808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720804, 26.920734, 22.065357>,  <31.973679, 26.676462, 21.874607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720804, 26.920734, 22.065357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035710, 0.637777, -0.769393,
		-0.773992, -0.469371, -0.425002,
		-0.632187, 0.610681, 0.476873,
		31.531147, 27.103939, 22.208420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554546, 26.863443, 21.326551>,  <31.973679, 26.676462, 21.874607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554546, 26.863443, 21.326551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519569, 27.143654, 21.609852>,  <31.498583, 27.311781, 21.779831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519569, 27.143654, 21.609852>,  <31.554546, 26.863443, 21.326551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519569, 27.143654, 21.609852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072059, 0.713558, -0.696880,
		-0.993560, -0.009903, -0.112876,
		-0.087444, 0.700526, 0.708249,
		31.493336, 27.353811, 21.822327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<47.270107, 32.788330, 15.089307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.658146, 32.864609, 15.149360>,  <47.890968, 32.910378, 15.185391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.658146, 32.864609, 15.149360>,  <47.270107, 32.788330, 15.089307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658146, 32.864609, 15.149360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163101, 0.054148, 0.985122,
		0.179732, -0.980154, 0.083632,
		0.970100, 0.190699, 0.150132,
		47.949177, 32.921818, 15.194400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530544, 32.397522, 15.642722>,  <47.270107, 32.788330, 15.089307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530544, 32.397522, 15.642722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.777355, 32.711536, 15.620849>,  <47.925442, 32.899944, 15.607724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.777355, 32.711536, 15.620849>,  <47.530544, 32.397522, 15.642722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777355, 32.711536, 15.620849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031916, 0.094396, 0.995023,
		0.786295, -0.612210, 0.083301,
		0.617026, 0.785041, -0.054684,
		47.962463, 32.947048, 15.604444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.987728, 32.295013, 16.156248>,  <47.530544, 32.397522, 15.642722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.987728, 32.295013, 16.156248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.972065, 32.686729, 16.076786>,  <47.962666, 32.921757, 16.029110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.972065, 32.686729, 16.076786>,  <47.987728, 32.295013, 16.156248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.972065, 32.686729, 16.076786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056512, 0.196318, 0.978911,
		0.997634, 0.049557, 0.047655,
		-0.039157, 0.979287, -0.198654,
		47.960320, 32.980515, 16.017189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.497437, 32.650951, 16.586403>,  <47.987728, 32.295013, 16.156248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.497437, 32.650951, 16.586403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.237862, 32.939003, 16.488174>,  <48.082119, 33.111832, 16.429237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.237862, 32.939003, 16.488174>,  <48.497437, 32.650951, 16.586403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.237862, 32.939003, 16.488174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071511, 0.263602, 0.961977,
		0.757476, 0.641821, -0.119563,
		-0.648934, 0.720125, -0.245569,
		48.043182, 33.155041, 16.414503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.652191, 33.117847, 17.035372>,  <48.497437, 32.650951, 16.586403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.652191, 33.117847, 17.035372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.286369, 33.220760, 16.910542>,  <48.066875, 33.282509, 16.835644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.286369, 33.220760, 16.910542>,  <48.652191, 33.117847, 17.035372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.286369, 33.220760, 16.910542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272889, 0.176982, 0.945626,
		0.298521, 0.949992, -0.091652,
		-0.914558, 0.257278, -0.312075,
		48.012001, 33.297943, 16.816919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.453465, 33.685768, 17.474281>,  <48.652191, 33.117847, 17.035372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.453465, 33.685768, 17.474281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.097366, 33.566868, 17.336239>,  <47.883705, 33.495529, 17.253412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.097366, 33.566868, 17.336239>,  <48.453465, 33.685768, 17.474281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.097366, 33.566868, 17.336239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382877, 0.077998, 0.920501,
		-0.246701, 0.951608, -0.183248,
		-0.890249, -0.297250, -0.345107,
		47.830292, 33.477692, 17.232706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981140, 34.177689, 17.794067>,  <48.453465, 33.685768, 17.474281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981140, 34.177689, 17.794067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.747623, 33.882404, 17.658871>,  <47.607513, 33.705235, 17.577753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.747623, 33.882404, 17.658871>,  <47.981140, 34.177689, 17.794067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747623, 33.882404, 17.658871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622773, 0.140062, 0.769763,
		-0.520906, 0.659873, -0.541503,
		-0.583790, -0.738208, -0.337992,
		47.572487, 33.660942, 17.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269970, 34.460907, 17.820566>,  <47.981140, 34.177689, 17.794067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269970, 34.460907, 17.820566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.246147, 34.062225, 17.798546>,  <47.231853, 33.823017, 17.785334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.246147, 34.062225, 17.798546>,  <47.269970, 34.460907, 17.820566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246147, 34.062225, 17.798546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701836, 0.002593, 0.712334,
		-0.709844, 0.081063, -0.699678,
		-0.059558, -0.996705, -0.055053,
		47.228279, 33.763214, 17.782030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672810, 34.306732, 17.582016>,  <47.269970, 34.460907, 17.820566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672810, 34.306732, 17.582016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.779884, 33.977440, 17.782269>,  <46.844128, 33.779865, 17.902420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.779884, 33.977440, 17.782269>,  <46.672810, 34.306732, 17.582016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779884, 33.977440, 17.782269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888878, -0.010491, 0.458024,
		-0.371808, -0.567606, -0.734562,
		0.267683, -0.823233, 0.500632,
		46.860188, 33.730469, 17.932459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076546, 34.051441, 17.668230>,  <46.672810, 34.306732, 17.582016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076546, 34.051441, 17.668230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.289032, 33.834393, 17.928497>,  <46.416523, 33.704163, 18.084658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.289032, 33.834393, 17.928497>,  <46.076546, 34.051441, 17.668230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289032, 33.834393, 17.928497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818369, -0.129864, 0.559828,
		-0.219279, -0.829875, -0.513055,
		0.531214, -0.542627, 0.650667,
		46.448395, 33.671604, 18.123697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740055, 33.392879, 17.887547>,  <46.076546, 34.051441, 17.668230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740055, 33.392879, 17.887547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.996117, 33.480995, 18.181942>,  <46.149754, 33.533863, 18.358580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.996117, 33.480995, 18.181942>,  <45.740055, 33.392879, 17.887547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996117, 33.480995, 18.181942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683510, -0.274064, 0.676538,
		0.350742, -0.936142, -0.024873,
		0.640152, 0.220289, 0.735988,
		46.188164, 33.547081, 18.402739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693878, 32.886177, 18.413731>,  <45.740055, 33.392879, 17.887547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693878, 32.886177, 18.413731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.821625, 33.211838, 18.607704>,  <45.898273, 33.407234, 18.724089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.821625, 33.211838, 18.607704>,  <45.693878, 32.886177, 18.413731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821625, 33.211838, 18.607704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606660, -0.217465, 0.764639,
		0.727989, -0.538391, 0.424462,
		0.319369, 0.814153, 0.484932,
		45.917435, 33.456085, 18.753183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447174, 32.836567, 18.967897>,  <45.693878, 32.886177, 18.413731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447174, 32.836567, 18.967897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.570103, 33.200230, 19.080318>,  <45.643860, 33.418427, 19.147772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.570103, 33.200230, 19.080318>,  <45.447174, 32.836567, 18.967897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570103, 33.200230, 19.080318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667698, -0.004429, 0.744419,
		0.678038, -0.416432, 0.605681,
		0.307317, 0.909157, 0.281054,
		45.662296, 33.472977, 19.164635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548958, 32.725533, 19.646500>,  <45.447174, 32.836567, 18.967897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548958, 32.725533, 19.646500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.504292, 33.116993, 19.577488>,  <45.477489, 33.351871, 19.536081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.504292, 33.116993, 19.577488>,  <45.548958, 32.725533, 19.646500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504292, 33.116993, 19.577488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654524, 0.058205, 0.753797,
		0.747749, 0.197101, 0.634053,
		-0.111669, 0.978654, -0.172530,
		45.470791, 33.410587, 19.525728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630444, 33.111221, 20.221968>,  <45.548958, 32.725533, 19.646500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630444, 33.111221, 20.221968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.415947, 33.356762, 19.990231>,  <45.287251, 33.504086, 19.851189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.415947, 33.356762, 19.990231>,  <45.630444, 33.111221, 20.221968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415947, 33.356762, 19.990231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644584, 0.145315, 0.750596,
		0.544942, 0.775932, 0.317755,
		-0.536237, 0.613851, -0.579342,
		45.255077, 33.540916, 19.816427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447491, 33.760910, 20.687674>,  <45.630444, 33.111221, 20.221968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447491, 33.760910, 20.687674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.187119, 33.722603, 20.386444>,  <45.030895, 33.699619, 20.205706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.187119, 33.722603, 20.386444>,  <45.447491, 33.760910, 20.687674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187119, 33.722603, 20.386444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757582, 0.145429, 0.636333,
		0.048576, 0.984722, -0.167218,
		-0.650929, -0.095771, -0.753073,
		44.991840, 33.693871, 20.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886272, 34.104843, 20.986717>,  <45.447491, 33.760910, 20.687674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886272, 34.104843, 20.986717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.730835, 33.947968, 20.653206>,  <44.637573, 33.853844, 20.453100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.730835, 33.947968, 20.653206>,  <44.886272, 34.104843, 20.986717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730835, 33.947968, 20.653206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902225, -0.021739, 0.430718,
		-0.187048, 0.919627, -0.345396,
		-0.388591, -0.392190, -0.833777,
		44.614258, 33.830311, 20.403072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346645, 34.422710, 20.914881>,  <44.886272, 34.104843, 20.986717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346645, 34.422710, 20.914881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279678, 34.099632, 20.688747>,  <44.239498, 33.905785, 20.553066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279678, 34.099632, 20.688747>,  <44.346645, 34.422710, 20.914881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279678, 34.099632, 20.688747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938655, -0.044773, 0.341939,
		-0.301493, 0.587901, -0.750649,
		-0.167418, -0.807693, -0.565334,
		44.229454, 33.857323, 20.519148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668888, 34.522881, 20.663443>,  <44.346645, 34.422710, 20.914881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668888, 34.522881, 20.663443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.745018, 34.132568, 20.620300>,  <43.790695, 33.898380, 20.594416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.745018, 34.132568, 20.620300>,  <43.668888, 34.522881, 20.663443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745018, 34.132568, 20.620300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951750, -0.210333, 0.223454,
		-0.240727, 0.060122, -0.968729,
		0.190321, -0.975780, -0.107854,
		43.802113, 33.839836, 20.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167942, 34.255108, 20.287006>,  <43.668888, 34.522881, 20.663443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167942, 34.255108, 20.287006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.312080, 33.920052, 20.451202>,  <43.398563, 33.719017, 20.549721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.312080, 33.920052, 20.451202>,  <43.167942, 34.255108, 20.287006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312080, 33.920052, 20.451202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905852, -0.209178, 0.368342,
		-0.222677, -0.504569, -0.834161,
		0.360342, -0.837648, 0.410486,
		43.420185, 33.668758, 20.574350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659870, 33.736172, 20.071699>,  <43.167942, 34.255108, 20.287006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659870, 33.736172, 20.071699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865730, 33.606525, 20.389210>,  <42.989246, 33.528736, 20.579716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865730, 33.606525, 20.389210>,  <42.659870, 33.736172, 20.071699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865730, 33.606525, 20.389210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851707, -0.299757, 0.429815,
		0.098631, -0.897271, -0.430321,
		0.514652, -0.324114, 0.793778,
		43.020126, 33.509293, 20.627342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218594, 33.477779, 19.457285>,  <42.659870, 33.736172, 20.071699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218594, 33.477779, 19.457285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107914, 33.124763, 19.305195>,  <42.041508, 32.912956, 19.213942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107914, 33.124763, 19.305195>,  <42.218594, 33.477779, 19.457285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107914, 33.124763, 19.305195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776979, 0.027359, -0.628932,
		0.565457, -0.469450, 0.678141,
		-0.276698, -0.882535, -0.380223,
		42.024906, 32.860004, 19.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885029, 32.919346, 19.416906>,  <42.218594, 33.477779, 19.457285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885029, 32.919346, 19.416906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603806, 32.827461, 19.147701>,  <42.435074, 32.772331, 18.986177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603806, 32.827461, 19.147701>,  <42.885029, 32.919346, 19.416906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603806, 32.827461, 19.147701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683927, 0.040864, -0.728405,
		0.194828, -0.972400, 0.128379,
		-0.703054, -0.229716, -0.673012,
		42.392891, 32.758549, 18.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106728, 32.270573, 19.162359>,  <42.885029, 32.919346, 19.416906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106728, 32.270573, 19.162359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865772, 32.444122, 18.894363>,  <42.721199, 32.548252, 18.733566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865772, 32.444122, 18.894363>,  <43.106728, 32.270573, 19.162359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865772, 32.444122, 18.894363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681479, -0.157479, -0.714693,
		-0.415594, -0.887106, -0.200811,
		-0.602385, 0.433871, -0.669991,
		42.685059, 32.574284, 18.693365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205742, 31.895147, 18.551153>,  <43.106728, 32.270573, 19.162359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205742, 31.895147, 18.551153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.034340, 32.222385, 18.397736>,  <42.931499, 32.418728, 18.305685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.034340, 32.222385, 18.397736>,  <43.205742, 31.895147, 18.551153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034340, 32.222385, 18.397736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723820, 0.056735, -0.687652,
		-0.540805, -0.572276, -0.616466,
		-0.428502, 0.818096, -0.383543,
		42.905788, 32.467815, 18.282673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178463, 31.837429, 17.862591>,  <43.205742, 31.895147, 18.551153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178463, 31.837429, 17.862591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.143257, 32.234791, 17.891979>,  <43.122135, 32.473209, 17.909613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.143257, 32.234791, 17.891979>,  <43.178463, 31.837429, 17.862591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143257, 32.234791, 17.891979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680145, 0.113816, -0.724188,
		-0.727775, -0.013767, -0.685677,
		-0.088011, 0.993406, 0.073469,
		43.116852, 32.532814, 17.914021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898617, 32.097958, 17.240740>,  <43.178463, 31.837429, 17.862591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898617, 32.097958, 17.240740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.090984, 32.398693, 17.421165>,  <43.206406, 32.579136, 17.529421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.090984, 32.398693, 17.421165>,  <42.898617, 32.097958, 17.240740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090984, 32.398693, 17.421165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610722, 0.081865, -0.787602,
		-0.629075, 0.654247, -0.419793,
		0.480920, 0.751837, 0.451062,
		43.235260, 32.624245, 17.556484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915596, 32.614643, 16.691641>,  <42.898617, 32.097958, 17.240740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915596, 32.614643, 16.691641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.203495, 32.737576, 16.940643>,  <43.376232, 32.811337, 17.090044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.203495, 32.737576, 16.940643>,  <42.915596, 32.614643, 16.691641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203495, 32.737576, 16.940643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641330, 0.048995, -0.765699,
		-0.265823, 0.950340, -0.161837,
		0.719745, 0.307332, 0.622506,
		43.419418, 32.829777, 17.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168507, 33.218113, 16.361996>,  <42.915596, 32.614643, 16.691641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168507, 33.218113, 16.361996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.472725, 33.116608, 16.601051>,  <43.655258, 33.055706, 16.744484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.472725, 33.116608, 16.601051>,  <43.168507, 33.218113, 16.361996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472725, 33.116608, 16.601051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621687, 0.019130, -0.783032,
		0.187269, 0.967078, 0.172308,
		0.760550, -0.253759, 0.597638,
		43.700890, 33.040482, 16.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612808, 33.748154, 16.396957>,  <43.168507, 33.218113, 16.361996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612808, 33.748154, 16.396957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.829815, 33.435669, 16.520500>,  <43.960018, 33.248180, 16.594625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.829815, 33.435669, 16.520500>,  <43.612808, 33.748154, 16.396957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829815, 33.435669, 16.520500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709669, 0.229482, -0.666114,
		0.449497, 0.580561, 0.678897,
		0.542514, -0.781208, 0.308855,
		43.992569, 33.201305, 16.613157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324394, 33.996311, 16.478724>,  <43.612808, 33.748154, 16.396957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324394, 33.996311, 16.478724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354336, 33.597458, 16.474281>,  <44.372303, 33.358147, 16.471617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354336, 33.597458, 16.474281>,  <44.324394, 33.996311, 16.478724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354336, 33.597458, 16.474281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779937, 0.065483, -0.622423,
		0.621365, 0.037933, 0.782603,
		0.074858, -0.997132, -0.011103,
		44.376793, 33.298317, 16.470951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036774, 33.876213, 16.569563>,  <44.324394, 33.996311, 16.478724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036774, 33.876213, 16.569563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.899734, 33.525494, 16.434597>,  <44.817513, 33.315060, 16.353619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.899734, 33.525494, 16.434597>,  <45.036774, 33.876213, 16.569563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899734, 33.525494, 16.434597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709080, -0.005719, -0.705106,
		0.616308, -0.480817, 0.623682,
		-0.342594, -0.876802, -0.337413,
		44.796955, 33.262451, 16.333372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628822, 33.713070, 16.277824>,  <45.036774, 33.876213, 16.569563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628822, 33.713070, 16.277824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.371765, 33.439850, 16.139000>,  <45.217529, 33.275917, 16.055706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.371765, 33.439850, 16.139000>,  <45.628822, 33.713070, 16.277824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371765, 33.439850, 16.139000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548746, -0.094221, -0.830662,
		0.534686, -0.724266, 0.435373,
		-0.642642, -0.683053, -0.347059,
		45.178974, 33.234936, 16.034882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014771, 33.072796, 16.174923>,  <45.628822, 33.713070, 16.277824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014771, 33.072796, 16.174923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.701050, 33.089291, 15.927320>,  <45.512817, 33.099190, 15.778758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.701050, 33.089291, 15.927320>,  <46.014771, 33.072796, 16.174923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701050, 33.089291, 15.927320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618414, 0.131337, -0.774800,
		0.049346, -0.990480, -0.128510,
		-0.784302, 0.041239, -0.619008,
		45.465759, 33.101662, 15.741617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134480, 32.580429, 15.646023>,  <46.014771, 33.072796, 16.174923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134480, 32.580429, 15.646023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.892647, 32.863583, 15.499938>,  <45.747547, 33.033474, 15.412287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.892647, 32.863583, 15.499938>,  <46.134480, 32.580429, 15.646023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892647, 32.863583, 15.499938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669048, 0.202470, -0.715109,
		-0.432272, -0.676685, -0.596019,
		-0.604579, 0.707886, -0.365213,
		45.711273, 33.075947, 15.390374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216866, 32.490993, 14.969027>,  <46.134480, 32.580429, 15.646023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216866, 32.490993, 14.969027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.987148, 32.817841, 14.948972>,  <45.849319, 33.013950, 14.936939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.987148, 32.817841, 14.948972>,  <46.216866, 32.490993, 14.969027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987148, 32.817841, 14.948972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448468, 0.262776, -0.854298,
		-0.684886, -0.513098, -0.517360,
		-0.574289, 0.817116, -0.050136,
		45.814861, 33.062977, 14.933931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934132, 32.424850, 14.353092>,  <46.216866, 32.490993, 14.969027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934132, 32.424850, 14.353092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.914352, 32.813931, 14.443786>,  <45.902485, 33.047379, 14.498201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.914352, 32.813931, 14.443786>,  <45.934132, 32.424850, 14.353092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914352, 32.813931, 14.443786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413805, 0.226564, -0.881722,
		-0.909021, 0.050220, -0.413712,
		-0.049453, 0.972701, 0.226733,
		45.899517, 33.105740, 14.511806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706184, 32.714035, 13.845040>,  <45.934132, 32.424850, 14.353092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706184, 32.714035, 13.845040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.923077, 32.998734, 14.023658>,  <46.053211, 33.169552, 14.130828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.923077, 32.998734, 14.023658>,  <45.706184, 32.714035, 13.845040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923077, 32.998734, 14.023658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482018, 0.171807, -0.859151,
		-0.688221, 0.681097, -0.249918,
		0.542227, 0.711751, 0.446543,
		46.085743, 33.212257, 14.157620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636250, 33.325104, 13.353575>,  <45.706184, 32.714035, 13.845040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636250, 33.325104, 13.353575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.940010, 33.386330, 13.606521>,  <46.122265, 33.423065, 13.758288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.940010, 33.386330, 13.606521>,  <45.636250, 33.325104, 13.353575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940010, 33.386330, 13.606521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613231, 0.156374, -0.774271,
		-0.217396, 0.975766, 0.024889,
		0.759399, 0.153060, 0.632365,
		46.167831, 33.432247, 13.796230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949432, 33.887287, 13.133986>,  <45.636250, 33.325104, 13.353575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949432, 33.887287, 13.133986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.237446, 33.730907, 13.363318>,  <46.410255, 33.637081, 13.500918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.237446, 33.730907, 13.363318>,  <45.949432, 33.887287, 13.133986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237446, 33.730907, 13.363318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668314, 0.168233, -0.724606,
		0.186829, 0.904908, 0.382409,
		0.720036, -0.390947, 0.573332,
		46.453457, 33.613625, 13.535318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561012, 34.248772, 12.898265>,  <45.949432, 33.887287, 13.133986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561012, 34.248772, 12.898265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.711266, 33.940083, 13.103534>,  <46.801418, 33.754871, 13.226695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.711266, 33.940083, 13.103534>,  <46.561012, 34.248772, 12.898265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711266, 33.940083, 13.103534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737048, -0.086925, -0.670227,
		0.561835, 0.629993, 0.536144,
		0.375634, -0.771721, 0.513173,
		46.823956, 33.708565, 13.257485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321339, 34.424088, 13.064840>,  <46.561012, 34.248772, 12.898265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321339, 34.424088, 13.064840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.259907, 34.030651, 13.102704>,  <47.223049, 33.794590, 13.125422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.259907, 34.030651, 13.102704>,  <47.321339, 34.424088, 13.064840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259907, 34.030651, 13.102704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875231, -0.179872, -0.449017,
		0.458677, 0.013890, 0.888495,
		-0.153579, -0.983592, 0.094660,
		47.213833, 33.735573, 13.131103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.414217, 26.983793, 28.704144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687294, 27.127323, 28.958755>,  <31.851141, 27.213442, 29.111523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687294, 27.127323, 28.958755>,  <31.414217, 26.983793, 28.704144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687294, 27.127323, 28.958755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169033, -0.769941, 0.615320,
		0.710884, -0.527671, -0.464981,
		0.682695, 0.358824, 0.636532,
		31.892103, 27.234970, 29.149715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545769, 26.362829, 29.065083>,  <31.414217, 26.983793, 28.704144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545769, 26.362829, 29.065083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696795, 26.657570, 29.289402>,  <31.787411, 26.834414, 29.423994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696795, 26.657570, 29.289402>,  <31.545769, 26.362829, 29.065083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696795, 26.657570, 29.289402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184176, -0.533768, 0.825331,
		0.907483, -0.414901, -0.065821,
		0.377564, 0.736851, 0.560800,
		31.810064, 26.878626, 29.457642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182564, 26.037691, 29.301718>,  <31.545769, 26.362829, 29.065083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182564, 26.037691, 29.301718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062847, 26.336548, 29.539104>,  <31.991016, 26.515862, 29.681536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062847, 26.336548, 29.539104>,  <32.182564, 26.037691, 29.301718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062847, 26.336548, 29.539104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183497, -0.655438, 0.732618,
		0.936350, 0.110370, 0.333267,
		-0.299295, 0.747141, 0.593467,
		31.973059, 26.560690, 29.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514706, 25.898367, 29.949200>,  <32.182564, 26.037691, 29.301718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514706, 25.898367, 29.949200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202396, 26.132545, 30.036518>,  <32.015011, 26.273052, 30.088909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202396, 26.132545, 30.036518>,  <32.514706, 25.898367, 29.949200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202396, 26.132545, 30.036518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313461, -0.669239, 0.673692,
		0.540501, 0.457571, 0.706036,
		-0.780769, 0.585446, 0.218294,
		31.968166, 26.308180, 30.102007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479053, 25.979383, 30.709999>,  <32.514706, 25.898367, 29.949200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479053, 25.979383, 30.709999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118614, 26.101543, 30.586868>,  <31.902351, 26.174839, 30.512989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118614, 26.101543, 30.586868>,  <32.479053, 25.979383, 30.709999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118614, 26.101543, 30.586868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433169, -0.666416, 0.606840,
		-0.019813, 0.680162, 0.732794,
		-0.901095, 0.305400, -0.307829,
		31.848286, 26.193163, 30.494520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075298, 26.156599, 31.232084>,  <32.479053, 25.979383, 30.709999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075298, 26.156599, 31.232084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812078, 26.067532, 30.944366>,  <31.654146, 26.014091, 30.771736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812078, 26.067532, 30.944366>,  <32.075298, 26.156599, 31.232084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812078, 26.067532, 30.944366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500988, -0.583667, 0.639018,
		-0.562118, 0.780865, 0.272529,
		-0.658053, -0.222670, -0.719294,
		31.614662, 26.000731, 30.728579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459982, 26.461460, 31.539663>,  <32.075298, 26.156599, 31.232084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459982, 26.461460, 31.539663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350105, 26.193611, 31.263649>,  <31.284180, 26.032902, 31.098042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350105, 26.193611, 31.263649>,  <31.459982, 26.461460, 31.539663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350105, 26.193611, 31.263649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471503, -0.531628, 0.703602,
		-0.837991, 0.518627, -0.169696,
		-0.274692, -0.669625, -0.690034,
		31.267698, 25.992723, 31.056639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748106, 26.282883, 31.723032>,  <31.459982, 26.461460, 31.539663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748106, 26.282883, 31.723032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856012, 25.978809, 31.486610>,  <30.920755, 25.796366, 31.344757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856012, 25.978809, 31.486610>,  <30.748106, 26.282883, 31.723032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856012, 25.978809, 31.486610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582939, -0.617481, 0.528109,
		-0.766425, 0.202083, -0.609717,
		0.269766, -0.760184, -0.591055,
		30.936943, 25.750753, 31.309294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204979, 25.799711, 31.727749>,  <30.748106, 26.282883, 31.723032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204979, 25.799711, 31.727749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472240, 25.546616, 31.571178>,  <30.632597, 25.394758, 31.477236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472240, 25.546616, 31.571178>,  <30.204979, 25.799711, 31.727749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472240, 25.546616, 31.571178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221802, -0.671565, 0.706968,
		-0.710195, -0.385542, -0.589050,
		0.668151, -0.632738, -0.391428,
		30.672688, 25.356794, 31.453751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879309, 25.133707, 31.625761>,  <30.204979, 25.799711, 31.727749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879309, 25.133707, 31.625761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273712, 25.086456, 31.672806>,  <30.510355, 25.058105, 31.701033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273712, 25.086456, 31.672806>,  <29.879309, 25.133707, 31.625761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273712, 25.086456, 31.672806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166626, -0.718640, 0.675124,
		0.004771, -0.685275, -0.728269,
		0.986008, -0.118128, 0.117613,
		30.569515, 25.051018, 31.708090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920776, 24.447861, 31.660267>,  <29.879309, 25.133707, 31.625761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920776, 24.447861, 31.660267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279358, 24.543034, 31.809803>,  <30.494507, 24.600138, 31.899525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279358, 24.543034, 31.809803>,  <29.920776, 24.447861, 31.660267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279358, 24.543034, 31.809803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059289, -0.771642, 0.633288,
		0.439150, -0.589879, -0.677635,
		0.896455, 0.237932, 0.373840,
		30.548294, 24.614412, 31.921955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273064, 23.833387, 31.598787>,  <29.920776, 24.447861, 31.660267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273064, 23.833387, 31.598787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470100, 24.043911, 31.876019>,  <30.588322, 24.170225, 32.042358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470100, 24.043911, 31.876019>,  <30.273064, 23.833387, 31.598787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470100, 24.043911, 31.876019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103935, -0.755121, 0.647294,
		0.864033, -0.390885, -0.317263,
		0.492590, 0.526309, 0.693076,
		30.617878, 24.201803, 32.083942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704882, 23.246630, 31.603849>,  <30.273064, 23.833387, 31.598787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704882, 23.246630, 31.603849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765474, 23.241428, 31.208500>,  <29.801830, 23.238308, 30.971291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765474, 23.241428, 31.208500>,  <29.704882, 23.246630, 31.603849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765474, 23.241428, 31.208500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486346, -0.871487, -0.063074,
		-0.860535, 0.490247, -0.138337,
		0.151481, -0.013003, -0.988375,
		29.810919, 23.237528, 30.911987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129042, 22.921263, 32.025028>,  <29.704882, 23.246630, 31.603849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129042, 22.921263, 32.025028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.729494, 22.908131, 32.011250>,  <29.489765, 22.900251, 32.002983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.729494, 22.908131, 32.011250>,  <30.129042, 22.921263, 32.025028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729494, 22.908131, 32.011250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043281, -0.325777, -0.944455,
		0.019786, -0.944876, 0.326829,
		-0.998867, -0.032832, -0.034449,
		29.429834, 22.898281, 32.000916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506187, 22.586967, 31.489849>,  <30.129042, 22.921263, 32.025028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506187, 22.586967, 31.489849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731915, 22.288269, 31.349041>,  <30.867352, 22.109051, 31.264557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731915, 22.288269, 31.349041>,  <30.506187, 22.586967, 31.489849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731915, 22.288269, 31.349041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160542, 0.517525, -0.840473,
		0.809797, 0.417780, 0.411932,
		0.564318, -0.746745, -0.352019,
		30.901211, 22.064245, 31.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928396, 22.879086, 31.093498>,  <30.506187, 22.586967, 31.489849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928396, 22.879086, 31.093498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993771, 22.508850, 30.956928>,  <31.032995, 22.286709, 30.874987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993771, 22.508850, 30.956928>,  <30.928396, 22.879086, 31.093498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993771, 22.508850, 30.956928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328295, 0.377379, -0.865914,
		0.930329, 0.029433, 0.365544,
		0.163435, -0.925591, -0.341424,
		31.042801, 22.231173, 30.854502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684824, 22.780846, 30.848444>,  <30.928396, 22.879086, 31.093498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684824, 22.780846, 30.848444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465973, 22.497593, 30.669918>,  <31.334661, 22.327641, 30.562803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465973, 22.497593, 30.669918>,  <31.684824, 22.780846, 30.848444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465973, 22.497593, 30.669918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486820, 0.164550, -0.857863,
		0.680923, -0.686636, 0.254704,
		-0.547128, -0.708134, -0.446314,
		31.301834, 22.285152, 30.536024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124043, 22.637924, 30.350733>,  <31.684824, 22.780846, 30.848444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124043, 22.637924, 30.350733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.783243, 22.466179, 30.230904>,  <31.578764, 22.363131, 30.159006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.783243, 22.466179, 30.230904>,  <32.124043, 22.637924, 30.350733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783243, 22.466179, 30.230904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193266, 0.273851, -0.942154,
		0.486567, -0.860611, -0.150339,
		-0.851998, -0.429365, -0.299573,
		31.527643, 22.337370, 30.141031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315281, 22.076981, 29.718914>,  <32.124043, 22.637924, 30.350733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315281, 22.076981, 29.718914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924257, 22.158127, 29.696175>,  <31.689644, 22.206816, 29.682531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924257, 22.158127, 29.696175>,  <32.315281, 22.076981, 29.718914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924257, 22.158127, 29.696175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090131, 0.158786, -0.983190,
		-0.190430, -0.966246, -0.173506,
		-0.977555, 0.202868, -0.056851,
		31.630991, 22.218987, 29.679119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033955, 21.699270, 29.076632>,  <32.315281, 22.076981, 29.718914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033955, 21.699270, 29.076632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787813, 22.001228, 29.167385>,  <31.640129, 22.182404, 29.221838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.787813, 22.001228, 29.167385>,  <32.033955, 21.699270, 29.076632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787813, 22.001228, 29.167385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067289, 0.337088, -0.939065,
		-0.785376, -0.562588, -0.258224,
		-0.615352, 0.754895, 0.226885,
		31.603209, 22.227697, 29.235451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691563, 21.769548, 28.547224>,  <32.033955, 21.699270, 29.076632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691563, 21.769548, 28.547224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637955, 22.118591, 28.735096>,  <31.605791, 22.328016, 28.847818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637955, 22.118591, 28.735096>,  <31.691563, 21.769548, 28.547224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637955, 22.118591, 28.735096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139805, 0.452565, -0.880704,
		-0.981067, -0.183694, 0.061343,
		-0.134018, 0.872606, 0.469679,
		31.597750, 22.380373, 28.875999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200659, 22.109406, 28.080629>,  <31.691563, 21.769548, 28.547224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200659, 22.109406, 28.080629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340759, 22.406994, 28.308254>,  <31.424820, 22.585546, 28.444830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340759, 22.406994, 28.308254>,  <31.200659, 22.109406, 28.080629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340759, 22.406994, 28.308254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001980, 0.608135, -0.793831,
		-0.936654, 0.276913, 0.214473,
		0.350250, 0.743970, 0.569064,
		31.445835, 22.630184, 28.478973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789879, 22.669735, 27.954519>,  <31.200659, 22.109406, 28.080629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789879, 22.669735, 27.954519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138544, 22.818142, 28.082615>,  <31.347742, 22.907187, 28.159472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138544, 22.818142, 28.082615>,  <30.789879, 22.669735, 27.954519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138544, 22.818142, 28.082615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006105, 0.661568, -0.749860,
		-0.490071, 0.651669, 0.578928,
		0.871661, 0.371019, 0.320237,
		31.400042, 22.929447, 28.178686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751162, 23.439821, 27.891405>,  <30.789879, 22.669735, 27.954519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751162, 23.439821, 27.891405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142870, 23.370068, 27.932617>,  <31.377895, 23.328215, 27.957344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142870, 23.370068, 27.932617>,  <30.751162, 23.439821, 27.891405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142870, 23.370068, 27.932617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186730, 0.580232, -0.792756,
		0.078464, 0.795563, 0.600768,
		0.979273, -0.174385, 0.103028,
		31.436651, 23.317753, 27.963526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989943, 24.084463, 27.910624>,  <30.751162, 23.439821, 27.891405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989943, 24.084463, 27.910624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313248, 23.861958, 27.833389>,  <31.507231, 23.728455, 27.787048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313248, 23.861958, 27.833389>,  <30.989943, 24.084463, 27.910624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313248, 23.861958, 27.833389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247487, 0.618485, -0.745806,
		0.534286, 0.555021, 0.637566,
		0.808263, -0.556263, -0.193087,
		31.555727, 23.695078, 27.775463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472807, 24.585268, 27.706831>,  <30.989943, 24.084463, 27.910624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472807, 24.585268, 27.706831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591705, 24.243618, 27.536133>,  <31.663044, 24.038628, 27.433714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.591705, 24.243618, 27.536133>,  <31.472807, 24.585268, 27.706831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591705, 24.243618, 27.536133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260403, 0.502524, -0.824415,
		0.918605, 0.133927, 0.371790,
		0.297244, -0.854127, -0.426747,
		31.680880, 23.987379, 27.408110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179928, 24.639868, 27.397158>,  <31.472807, 24.585268, 27.706831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179928, 24.639868, 27.397158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011497, 24.333084, 27.203472>,  <31.910439, 24.149014, 27.087261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011497, 24.333084, 27.203472>,  <32.179928, 24.639868, 27.397158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011497, 24.333084, 27.203472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372297, 0.340661, -0.863334,
		0.827097, -0.543801, 0.142094,
		-0.421076, -0.766962, -0.484216,
		31.885174, 24.102995, 27.058207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616295, 24.541767, 26.852993>,  <32.179928, 24.639868, 27.397158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616295, 24.541767, 26.852993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263409, 24.389881, 26.741631>,  <32.051678, 24.298750, 26.674812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263409, 24.389881, 26.741631>,  <32.616295, 24.541767, 26.852993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263409, 24.389881, 26.741631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044394, 0.521578, -0.852048,
		0.468743, -0.764052, -0.443289,
		-0.882219, -0.379712, -0.278405,
		31.998743, 24.275967, 26.658110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294014, 24.568859, 26.579985>,  <32.616295, 24.541767, 26.852993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294014, 24.568859, 26.579985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692799, 24.591633, 26.558758>,  <33.932072, 24.605297, 26.546021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692799, 24.591633, 26.558758>,  <33.294014, 24.568859, 26.579985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692799, 24.591633, 26.558758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075464, -0.540103, 0.838209,
		0.019061, -0.839671, -0.542761,
		0.996966, 0.056936, -0.053070,
		33.991890, 24.608713, 26.542837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550980, 23.898085, 26.629885>,  <33.294014, 24.568859, 26.579985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550980, 23.898085, 26.629885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823345, 24.152931, 26.774345>,  <33.986767, 24.305840, 26.861023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823345, 24.152931, 26.774345>,  <33.550980, 23.898085, 26.629885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823345, 24.152931, 26.774345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104183, -0.572390, 0.813336,
		0.724911, -0.516190, -0.456127,
		0.680918, 0.637117, 0.361154,
		34.027622, 24.344067, 26.882692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180115, 23.493395, 26.943228>,  <33.550980, 23.898085, 26.629885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180115, 23.493395, 26.943228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221977, 23.863293, 27.089596>,  <34.247097, 24.085232, 27.177416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221977, 23.863293, 27.089596>,  <34.180115, 23.493395, 26.943228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221977, 23.863293, 27.089596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208966, -0.380173, 0.901000,
		0.972306, -0.017834, -0.233028,
		0.104659, 0.924743, 0.365918,
		34.253376, 24.140717, 27.199371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822636, 23.587315, 27.293419>,  <34.180115, 23.493395, 26.943228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822636, 23.587315, 27.293419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583092, 23.856239, 27.467484>,  <34.439365, 24.017595, 27.571922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583092, 23.856239, 27.467484>,  <34.822636, 23.587315, 27.293419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583092, 23.856239, 27.467484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380929, -0.238841, 0.893223,
		0.704461, 0.700678, -0.113072,
		-0.598855, 0.672313, 0.435163,
		34.403435, 24.057934, 27.598032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206451, 23.771236, 27.888168>,  <34.822636, 23.587315, 27.293419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206451, 23.771236, 27.888168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848595, 23.927128, 27.975559>,  <34.633881, 24.020662, 28.027994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848595, 23.927128, 27.975559>,  <35.206451, 23.771236, 27.888168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848595, 23.927128, 27.975559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142819, -0.213881, 0.966363,
		0.423348, 0.895749, 0.135685,
		-0.894639, 0.389729, 0.218476,
		34.580204, 24.044046, 28.041101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230686, 24.287575, 28.542408>,  <35.206451, 23.771236, 27.888168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230686, 24.287575, 28.542408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866344, 24.140190, 28.468029>,  <34.647739, 24.051760, 28.423401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866344, 24.140190, 28.468029>,  <35.230686, 24.287575, 28.542408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866344, 24.140190, 28.468029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046894, -0.355228, 0.933603,
		-0.410049, 0.859099, 0.306283,
		-0.910857, -0.368460, -0.185947,
		34.593086, 24.029652, 28.412245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033394, 24.514000, 29.105356>,  <35.230686, 24.287575, 28.542408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033394, 24.514000, 29.105356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790863, 24.235661, 28.951389>,  <34.645344, 24.068657, 28.859009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790863, 24.235661, 28.951389>,  <35.033394, 24.514000, 29.105356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790863, 24.235661, 28.951389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159073, -0.368123, 0.916068,
		-0.779141, 0.616668, 0.112513,
		-0.606329, -0.695849, -0.384915,
		34.608963, 24.026905, 28.835915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959927, 24.983442, 29.768896>,  <35.033394, 24.514000, 29.105356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959927, 24.983442, 29.768896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333164, 25.065861, 29.886795>,  <35.557106, 25.115311, 29.957535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333164, 25.065861, 29.886795>,  <34.959927, 24.983442, 29.768896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333164, 25.065861, 29.886795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039814, 0.873744, -0.484754,
		-0.357414, 0.440588, 0.823491,
		0.933097, 0.206045, 0.294747,
		35.613094, 25.127674, 29.975220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909939, 25.591940, 30.133137>,  <34.959927, 24.983442, 29.768896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909939, 25.591940, 30.133137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278915, 25.548210, 29.985001>,  <35.500301, 25.521973, 29.896120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278915, 25.548210, 29.985001>,  <34.909939, 25.591940, 30.133137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278915, 25.548210, 29.985001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066520, 0.899756, -0.431294,
		0.380365, 0.422479, 0.822700,
		0.922441, -0.109323, -0.370339,
		35.555649, 25.515413, 29.873899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127369, 26.223148, 30.291443>,  <34.909939, 25.591940, 30.133137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127369, 26.223148, 30.291443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361477, 26.059101, 30.011654>,  <35.501942, 25.960672, 29.843781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361477, 26.059101, 30.011654>,  <35.127369, 26.223148, 30.291443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361477, 26.059101, 30.011654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028150, 0.851856, -0.523018,
		0.810351, 0.325796, 0.487020,
		0.585268, -0.410119, -0.699474,
		35.537056, 25.936066, 29.801811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587193, 26.735723, 30.101158>,  <35.127369, 26.223148, 30.291443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587193, 26.735723, 30.101158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627708, 26.478962, 29.797131>,  <35.652020, 26.324905, 29.614714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627708, 26.478962, 29.797131>,  <35.587193, 26.735723, 30.101158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627708, 26.478962, 29.797131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007555, 0.763478, -0.645789,
		0.994828, 0.071154, 0.072483,
		0.101290, -0.641902, -0.760068,
		35.658096, 26.286392, 29.569111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156769, 27.041935, 29.711349>,  <35.587193, 26.735723, 30.101158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156769, 27.041935, 29.711349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969757, 26.780018, 29.473808>,  <35.857552, 26.622868, 29.331284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969757, 26.780018, 29.473808>,  <36.156769, 27.041935, 29.711349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969757, 26.780018, 29.473808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065120, 0.695484, -0.715585,
		0.881578, -0.295881, -0.367796,
		-0.467524, -0.654795, -0.593855,
		35.829498, 26.583580, 29.295652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546230, 27.125977, 29.065969>,  <36.156769, 27.041935, 29.711349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546230, 27.125977, 29.065969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189213, 26.966873, 28.980968>,  <35.975002, 26.871412, 28.929968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189213, 26.966873, 28.980968>,  <36.546230, 27.125977, 29.065969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189213, 26.966873, 28.980968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049862, 0.555376, -0.830103,
		0.448197, -0.730307, -0.515530,
		-0.892543, -0.397755, -0.212503,
		35.921452, 26.847546, 28.917217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703300, 26.968889, 28.461966>,  <36.546230, 27.125977, 29.065969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703300, 26.968889, 28.461966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304916, 26.978180, 28.496658>,  <36.065887, 26.983753, 28.517473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304916, 26.978180, 28.496658>,  <36.703300, 26.968889, 28.461966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304916, 26.978180, 28.496658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067914, 0.436986, -0.896901,
		-0.058730, -0.899169, -0.433644,
		-0.995961, 0.023225, 0.086730,
		36.006126, 26.985147, 28.522676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.440201, 25.977219, 34.232807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224186, 25.852875, 33.919956>,  <32.094578, 25.778269, 33.732246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224186, 25.852875, 33.919956>,  <32.440201, 25.977219, 34.232807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224186, 25.852875, 33.919956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394716, 0.727210, -0.561573,
		0.743346, -0.611987, -0.270014,
		-0.540032, -0.310865, -0.782131,
		32.062176, 25.759617, 33.685318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868942, 25.753908, 33.642803>,  <32.440201, 25.977219, 34.232807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868942, 25.753908, 33.642803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.507114, 25.860767, 33.509911>,  <32.290016, 25.924883, 33.430176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.507114, 25.860767, 33.509911>,  <32.868942, 25.753908, 33.642803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507114, 25.860767, 33.509911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415010, 0.730125, -0.542848,
		0.097551, -0.628926, -0.771321,
		-0.904572, 0.267150, -0.332234,
		32.235744, 25.940912, 33.410240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896034, 25.825314, 32.930500>,  <32.868942, 25.753908, 33.642803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896034, 25.825314, 32.930500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573238, 26.026371, 33.054504>,  <32.379559, 26.147005, 33.128906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573238, 26.026371, 33.054504>,  <32.896034, 25.825314, 32.930500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573238, 26.026371, 33.054504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221549, 0.744285, -0.630044,
		-0.547428, -0.439758, -0.711994,
		-0.806993, 0.502646, 0.310014,
		32.331139, 26.177164, 33.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464275, 26.026834, 32.311630>,  <32.896034, 25.825314, 32.930500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464275, 26.026834, 32.311630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337326, 26.277256, 32.596539>,  <32.261158, 26.427509, 32.767483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337326, 26.277256, 32.596539>,  <32.464275, 26.026834, 32.311630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337326, 26.277256, 32.596539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109108, 0.770223, -0.628372,
		-0.942003, -0.121714, -0.312756,
		-0.317373, 0.626053, 0.712272,
		32.242115, 26.465073, 32.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984739, 26.451408, 32.016075>,  <32.464275, 26.026834, 32.311630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984739, 26.451408, 32.016075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121170, 26.668972, 32.322754>,  <32.203030, 26.799511, 32.506763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121170, 26.668972, 32.322754>,  <31.984739, 26.451408, 32.016075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121170, 26.668972, 32.322754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203719, 0.753456, -0.625143,
		-0.917695, 0.369413, 0.146181,
		0.341077, 0.543911, 0.766699,
		32.223492, 26.832146, 32.552765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859772, 27.134874, 31.803535>,  <31.984739, 26.451408, 32.016075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859772, 27.134874, 31.803535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081306, 27.238461, 32.120068>,  <32.214226, 27.300611, 32.309986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081306, 27.238461, 32.120068>,  <31.859772, 27.134874, 31.803535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081306, 27.238461, 32.120068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321031, 0.810503, -0.489922,
		-0.768247, 0.525378, 0.365752,
		0.553838, 0.258963, 0.791329,
		32.247459, 27.316149, 32.357468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811188, 27.878241, 31.861807>,  <31.859772, 27.134874, 31.803535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811188, 27.878241, 31.861807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.136467, 27.793819, 32.078754>,  <32.331635, 27.743166, 32.208923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.136467, 27.793819, 32.078754>,  <31.811188, 27.878241, 31.861807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136467, 27.793819, 32.078754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407618, 0.871718, -0.271947,
		-0.415399, 0.442227, 0.794908,
		0.813198, -0.211053, 0.542370,
		32.380428, 27.730503, 32.241467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893543, 28.424681, 32.286552>,  <31.811188, 27.878241, 31.861807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893543, 28.424681, 32.286552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.247162, 28.247013, 32.228340>,  <32.459332, 28.140413, 32.193413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.247162, 28.247013, 32.228340>,  <31.893543, 28.424681, 32.286552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247162, 28.247013, 32.228340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415346, 0.889336, -0.191229,
		0.214365, 0.108608, 0.970697,
		0.884045, -0.444168, -0.145533,
		32.512375, 28.113762, 32.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409622, 28.864784, 32.540688>,  <31.893543, 28.424681, 32.286552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409622, 28.864784, 32.540688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624043, 28.635937, 32.292389>,  <32.752697, 28.498629, 32.143410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624043, 28.635937, 32.292389>,  <32.409622, 28.864784, 32.540688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624043, 28.635937, 32.292389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411166, 0.819153, -0.399913,
		0.737284, -0.040856, 0.674346,
		0.536054, -0.572118, -0.620747,
		32.784859, 28.464302, 32.106163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012985, 29.110584, 32.447056>,  <32.409622, 28.864784, 32.540688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012985, 29.110584, 32.447056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018490, 28.885262, 32.116604>,  <33.021793, 28.750069, 31.918331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.018490, 28.885262, 32.116604>,  <33.012985, 29.110584, 32.447056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018490, 28.885262, 32.116604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461831, 0.736386, -0.494416,
		0.886861, -0.374729, 0.270288,
		0.013765, -0.563306, -0.826134,
		33.022617, 28.716270, 31.868763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647068, 29.228083, 32.154892>,  <33.012985, 29.110584, 32.447056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647068, 29.228083, 32.154892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419098, 29.092510, 31.855476>,  <33.282314, 29.011168, 31.675827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419098, 29.092510, 31.855476>,  <33.647068, 29.228083, 32.154892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419098, 29.092510, 31.855476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589035, 0.466633, -0.659766,
		0.572907, -0.816934, -0.066305,
		-0.569925, -0.338929, -0.748540,
		33.248119, 28.990831, 31.630915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065331, 29.046719, 31.649548>,  <33.647068, 29.228083, 32.154892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065331, 29.046719, 31.649548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712849, 29.107765, 31.470577>,  <33.501362, 29.144392, 31.363195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712849, 29.107765, 31.470577>,  <34.065331, 29.046719, 31.649548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712849, 29.107765, 31.470577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443591, 0.594132, -0.670995,
		0.163427, -0.789757, -0.591249,
		-0.881203, 0.152614, -0.447426,
		33.448486, 29.153549, 31.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643036, 28.798906, 31.253357>,  <34.065331, 29.046719, 31.649548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643036, 28.798906, 31.253357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024490, 28.863083, 31.355213>,  <35.253361, 28.901588, 31.416327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024490, 28.863083, 31.355213>,  <34.643036, 28.798906, 31.253357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024490, 28.863083, 31.355213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043091, -0.764565, 0.643105,
		0.297867, -0.624260, -0.722202,
		0.953634, 0.160440, 0.254639,
		35.310581, 28.911215, 31.431604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781841, 28.145472, 31.424799>,  <34.643036, 28.798906, 31.253357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781841, 28.145472, 31.424799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088814, 28.349827, 31.579739>,  <35.272999, 28.472441, 31.672703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.088814, 28.349827, 31.579739>,  <34.781841, 28.145472, 31.424799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088814, 28.349827, 31.579739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000805, -0.604932, 0.796276,
		0.641129, -0.610777, -0.464656,
		0.767432, 0.510890, 0.387348,
		35.319042, 28.503094, 31.695944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158096, 27.608006, 31.850121>,  <34.781841, 28.145472, 31.424799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158096, 27.608006, 31.850121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341187, 27.943443, 31.968269>,  <35.451042, 28.144705, 32.039158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341187, 27.943443, 31.968269>,  <35.158096, 27.608006, 31.850121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341187, 27.943443, 31.968269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263298, -0.445171, 0.855860,
		0.849210, -0.313981, -0.424568,
		0.457729, 0.838593, 0.295373,
		35.478504, 28.195021, 32.056881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966263, 27.501015, 31.982121>,  <35.158096, 27.608006, 31.850121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966263, 27.501015, 31.982121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797733, 27.789349, 32.202259>,  <35.696617, 27.962349, 32.334343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797733, 27.789349, 32.202259>,  <35.966263, 27.501015, 31.982121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797733, 27.789349, 32.202259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102045, -0.565304, 0.818547,
		0.901151, 0.401033, 0.164618,
		-0.421324, 0.720836, 0.550347,
		35.671337, 28.005600, 32.367363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374870, 27.586182, 32.536640>,  <35.966263, 27.501015, 31.982121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374870, 27.586182, 32.536640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000198, 27.697887, 32.621151>,  <35.775394, 27.764912, 32.671860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000198, 27.697887, 32.621151>,  <36.374870, 27.586182, 32.536640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000198, 27.697887, 32.621151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025233, -0.655602, 0.754685,
		0.349272, 0.701568, 0.621136,
		-0.936681, 0.279264, 0.211280,
		35.719193, 27.781666, 32.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333637, 27.594585, 33.242096>,  <36.374870, 27.586182, 32.536640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333637, 27.594585, 33.242096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941872, 27.580875, 33.162518>,  <35.706814, 27.572649, 33.114769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941872, 27.580875, 33.162518>,  <36.333637, 27.594585, 33.242096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941872, 27.580875, 33.162518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107991, -0.743676, 0.659760,
		-0.170563, 0.667661, 0.724663,
		-0.979411, -0.034273, -0.198945,
		35.648048, 27.570593, 33.102833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088604, 27.414942, 33.838722>,  <36.333637, 27.594585, 33.242096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088604, 27.414942, 33.838722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.767067, 27.340179, 33.612835>,  <35.574146, 27.295322, 33.477303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.767067, 27.340179, 33.612835>,  <36.088604, 27.414942, 33.838722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767067, 27.340179, 33.612835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276447, -0.723226, 0.632868,
		-0.526708, 0.664839, 0.529687,
		-0.803839, -0.186906, -0.564721,
		35.525917, 27.284107, 33.443420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553131, 27.494797, 34.241299>,  <36.088604, 27.414942, 33.838722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553131, 27.494797, 34.241299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.467422, 27.239841, 33.945236>,  <35.415997, 27.086868, 33.767601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.467422, 27.239841, 33.945236>,  <35.553131, 27.494797, 34.241299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467422, 27.239841, 33.945236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221752, -0.706223, 0.672365,
		-0.951269, 0.308201, 0.009983,
		-0.214274, -0.637386, -0.740152,
		35.403141, 27.048626, 33.723190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012955, 27.159035, 34.496326>,  <35.553131, 27.494797, 34.241299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012955, 27.159035, 34.496326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.098442, 26.908390, 34.196545>,  <35.149734, 26.758003, 34.016678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.098442, 26.908390, 34.196545>,  <35.012955, 27.159035, 34.496326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098442, 26.908390, 34.196545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352120, -0.765021, 0.539216,
		-0.911227, 0.148654, -0.384145,
		0.213723, -0.626613, -0.749452,
		35.162560, 26.720406, 33.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451416, 26.710573, 34.398533>,  <35.012955, 27.159035, 34.496326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451416, 26.710573, 34.398533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.756371, 26.522942, 34.220215>,  <34.939342, 26.410362, 34.113224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.756371, 26.522942, 34.220215>,  <34.451416, 26.710573, 34.398533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756371, 26.522942, 34.220215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422930, -0.882577, 0.205396,
		-0.489794, 0.031948, -0.871252,
		0.762386, -0.469080, -0.445793,
		34.985085, 26.382217, 34.086475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096489, 26.112743, 34.069012>,  <34.451416, 26.710573, 34.398533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096489, 26.112743, 34.069012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480923, 26.002251, 34.070347>,  <34.711582, 25.935955, 34.071148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480923, 26.002251, 34.070347>,  <34.096489, 26.112743, 34.069012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480923, 26.002251, 34.070347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275565, -0.957766, 0.082153,
		-0.019495, -0.079876, -0.996614,
		0.961085, -0.276234, 0.003340,
		34.769249, 25.919380, 34.071350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265804, 25.648947, 33.488083>,  <34.096489, 26.112743, 34.069012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265804, 25.648947, 33.488083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557980, 25.565353, 33.748169>,  <34.733284, 25.515198, 33.904221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557980, 25.565353, 33.748169>,  <34.265804, 25.648947, 33.488083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557980, 25.565353, 33.748169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202718, -0.975472, -0.085793,
		0.652195, -0.069143, -0.754891,
		0.730443, -0.208984, 0.650215,
		34.777111, 25.502659, 33.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847828, 25.197273, 33.208961>,  <34.265804, 25.648947, 33.488083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847828, 25.197273, 33.208961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850830, 25.142273, 33.605152>,  <34.852631, 25.109274, 33.842865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850830, 25.142273, 33.605152>,  <34.847828, 25.197273, 33.208961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850830, 25.142273, 33.605152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164348, -0.977202, -0.134412,
		0.986374, -0.161774, -0.029931,
		0.007504, -0.137499, 0.990474,
		34.853081, 25.101023, 33.902294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243053, 24.596645, 33.268375>,  <34.847828, 25.197273, 33.208961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243053, 24.596645, 33.268375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065491, 24.628616, 33.625378>,  <34.958954, 24.647799, 33.839577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.065491, 24.628616, 33.625378>,  <35.243053, 24.596645, 33.268375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065491, 24.628616, 33.625378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041980, -0.996775, 0.068388,
		0.895091, -0.007110, 0.445826,
		-0.443902, 0.079930, 0.892503,
		34.932320, 24.652596, 33.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872658, 24.685343, 32.983402>,  <35.243053, 24.596645, 33.268375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872658, 24.685343, 32.983402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984356, 24.343121, 32.809025>,  <36.051376, 24.137787, 32.704399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984356, 24.343121, 32.809025>,  <35.872658, 24.685343, 32.983402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984356, 24.343121, 32.809025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057881, 0.438176, -0.897024,
		0.958473, 0.275724, 0.072839,
		0.279247, -0.855557, -0.435940,
		36.068130, 24.086454, 32.678242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461113, 24.808332, 32.540535>,  <35.872658, 24.685343, 32.983402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461113, 24.808332, 32.540535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319809, 24.472122, 32.376232>,  <36.235027, 24.270395, 32.277649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319809, 24.472122, 32.376232>,  <36.461113, 24.808332, 32.540535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319809, 24.472122, 32.376232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004914, 0.437395, -0.899256,
		0.935514, -0.319687, -0.150382,
		-0.353256, -0.840527, -0.410760,
		36.213833, 24.219963, 32.253006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953747, 24.572504, 32.001427>,  <36.461113, 24.808332, 32.540535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953747, 24.572504, 32.001427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587902, 24.434734, 31.916706>,  <36.368397, 24.352074, 31.865873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587902, 24.434734, 31.916706>,  <36.953747, 24.572504, 32.001427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587902, 24.434734, 31.916706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071007, 0.378876, -0.922719,
		0.398058, -0.858966, -0.322066,
		-0.914608, -0.344426, -0.211807,
		36.313519, 24.331408, 31.853165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982666, 24.052940, 31.376564>,  <36.953747, 24.572504, 32.001427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982666, 24.052940, 31.376564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610806, 24.193768, 31.420006>,  <36.387688, 24.278265, 31.446072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610806, 24.193768, 31.420006>,  <36.982666, 24.052940, 31.376564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610806, 24.193768, 31.420006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074098, 0.110087, -0.991156,
		-0.360913, -0.929477, -0.076255,
		-0.929651, 0.352071, 0.108604,
		36.331909, 24.299389, 31.452587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646206, 23.859079, 30.745117>,  <36.982666, 24.052940, 31.376564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646206, 23.859079, 30.745117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.360565, 24.090630, 30.902576>,  <36.189178, 24.229561, 30.997051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.360565, 24.090630, 30.902576>,  <36.646206, 23.859079, 30.745117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360565, 24.090630, 30.902576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313121, 0.238805, -0.919199,
		-0.626108, -0.779663, 0.010727,
		-0.714104, 0.578877, 0.393646,
		36.146336, 24.264292, 31.020670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167496, 23.764778, 30.264894>,  <36.646206, 23.859079, 30.745117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167496, 23.764778, 30.264894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069698, 24.113766, 30.434135>,  <36.011021, 24.323158, 30.535681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.069698, 24.113766, 30.434135>,  <36.167496, 23.764778, 30.264894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069698, 24.113766, 30.434135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150956, 0.396777, -0.905417,
		-0.957828, -0.285242, 0.034694,
		-0.244497, 0.872471, 0.423102,
		35.996349, 24.375507, 30.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628334, 24.042171, 29.882013>,  <36.167496, 23.764778, 30.264894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628334, 24.042171, 29.882013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748764, 24.371658, 30.074200>,  <35.821022, 24.569349, 30.189510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748764, 24.371658, 30.074200>,  <35.628334, 24.042171, 29.882013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748764, 24.371658, 30.074200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049181, 0.516585, -0.854822,
		-0.952331, 0.233736, 0.196042,
		0.301075, 0.823715, 0.480465,
		35.839088, 24.618773, 30.218340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818127, 24.205286, 29.774616>,  <35.628334, 24.042171, 29.882013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818127, 24.205286, 29.774616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627792, 24.002674, 29.487003>,  <34.513592, 23.881107, 29.314436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627792, 24.002674, 29.487003>,  <34.818127, 24.205286, 29.774616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627792, 24.002674, 29.487003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479827, -0.535646, 0.694874,
		-0.737121, 0.675657, 0.011833,
		-0.475835, -0.506528, -0.719034,
		34.485043, 23.850716, 29.271294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987511, 24.315491, 29.748585>,  <34.818127, 24.205286, 29.774616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987511, 24.315491, 29.748585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098309, 23.954311, 29.617157>,  <34.164787, 23.737604, 29.538300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098309, 23.954311, 29.617157>,  <33.987511, 24.315491, 29.748585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098309, 23.954311, 29.617157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574704, -0.429727, 0.696456,
		-0.770059, -0.004082, -0.637959,
		0.276991, -0.902950, -0.328569,
		34.181404, 23.683426, 29.518587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435108, 23.980864, 29.764814>,  <33.987511, 24.315491, 29.748585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435108, 23.980864, 29.764814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702209, 23.683144, 29.760380>,  <33.862469, 23.504511, 29.757719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702209, 23.683144, 29.760380>,  <33.435108, 23.980864, 29.764814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702209, 23.683144, 29.760380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444341, -0.410503, 0.796272,
		-0.597219, -0.526784, -0.604838,
		0.667751, -0.744302, -0.011089,
		33.902534, 23.459852, 29.757053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135838, 23.260828, 29.778872>,  <33.435108, 23.980864, 29.764814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135838, 23.260828, 29.778872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498524, 23.194534, 29.933994>,  <33.716137, 23.154758, 30.027069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498524, 23.194534, 29.933994>,  <33.135838, 23.260828, 29.778872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498524, 23.194534, 29.933994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415823, -0.504787, 0.756493,
		0.070385, -0.847185, -0.526615,
		0.906718, -0.165733, 0.387808,
		33.770538, 23.144814, 30.050337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199520, 22.505743, 29.905476>,  <33.135838, 23.260828, 29.778872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199520, 22.505743, 29.905476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463345, 22.695667, 30.138557>,  <33.621639, 22.809622, 30.278406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463345, 22.695667, 30.138557>,  <33.199520, 22.505743, 29.905476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463345, 22.695667, 30.138557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326376, -0.517426, 0.791042,
		0.677099, -0.711918, -0.186306,
		0.659556, 0.474809, 0.582702,
		33.661213, 22.838110, 30.313368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365845, 22.070452, 30.488184>,  <33.199520, 22.505743, 29.905476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365845, 22.070452, 30.488184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542805, 22.387932, 30.655190>,  <33.648983, 22.578421, 30.755392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542805, 22.387932, 30.655190>,  <33.365845, 22.070452, 30.488184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542805, 22.387932, 30.655190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167627, -0.384163, 0.907921,
		0.881011, -0.471654, -0.036909,
		0.442404, 0.793701, 0.417514,
		33.675526, 22.626041, 30.780443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910339, 21.814388, 30.969120>,  <33.365845, 22.070452, 30.488184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910339, 21.814388, 30.969120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823078, 22.177502, 31.112419>,  <33.770721, 22.395369, 31.198399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823078, 22.177502, 31.112419>,  <33.910339, 21.814388, 30.969120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823078, 22.177502, 31.112419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123053, -0.389746, 0.912664,
		0.968126, 0.155014, 0.196728,
		-0.218150, 0.907782, 0.358248,
		33.757633, 22.449837, 31.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371231, 21.996284, 31.592825>,  <33.910339, 21.814388, 30.969120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371231, 21.996284, 31.592825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077866, 22.265251, 31.632751>,  <33.901848, 22.426632, 31.656708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077866, 22.265251, 31.632751>,  <34.371231, 21.996284, 31.592825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077866, 22.265251, 31.632751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018668, -0.166702, 0.985831,
		0.679530, 0.721155, 0.134814,
		-0.733410, 0.672418, 0.099816,
		33.857841, 22.466976, 31.662697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627975, 22.459148, 32.077198>,  <34.371231, 21.996284, 31.592825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627975, 22.459148, 32.077198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230991, 22.504906, 32.059608>,  <33.992802, 22.532360, 32.049053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.230991, 22.504906, 32.059608>,  <34.627975, 22.459148, 32.077198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230991, 22.504906, 32.059608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044613, -0.003030, 0.999000,
		0.114146, 0.993431, 0.008110,
		-0.992462, 0.114394, -0.043974,
		33.933254, 22.539225, 32.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.089046, 32.458122, 19.844992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732182, 32.354309, 19.992874>,  <33.518063, 32.292023, 20.081604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732182, 32.354309, 19.992874>,  <34.089046, 32.458122, 19.844992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732182, 32.354309, 19.992874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373141, -0.884702, 0.279406,
		0.254567, 0.387230, 0.886143,
		-0.892167, -0.259529, 0.369707,
		33.464531, 32.276451, 20.103786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228207, 32.246288, 20.449442>,  <34.089046, 32.458122, 19.844992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228207, 32.246288, 20.449442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887177, 32.061272, 20.352146>,  <33.682556, 31.950262, 20.293768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887177, 32.061272, 20.352146>,  <34.228207, 32.246288, 20.449442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887177, 32.061272, 20.352146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339143, -0.843819, 0.415875,
		-0.397611, 0.272073, 0.876289,
		-0.852577, -0.462544, -0.243240,
		33.631405, 31.922508, 20.279175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797096, 32.079296, 21.102266>,  <34.228207, 32.246288, 20.449442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797096, 32.079296, 21.102266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688541, 31.820675, 20.817081>,  <33.623409, 31.665501, 20.645971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688541, 31.820675, 20.817081>,  <33.797096, 32.079296, 21.102266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688541, 31.820675, 20.817081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268261, -0.762221, 0.589114,
		-0.924328, -0.031379, 0.380306,
		-0.271392, -0.646556, -0.712960,
		33.607124, 31.626709, 20.603193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607552, 31.523254, 21.453388>,  <33.797096, 32.079296, 21.102266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607552, 31.523254, 21.453388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604565, 31.372940, 21.082718>,  <33.602772, 31.282751, 20.860315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604565, 31.372940, 21.082718>,  <33.607552, 31.523254, 21.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604565, 31.372940, 21.082718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133611, -0.918768, 0.371503,
		-0.991006, -0.121039, 0.057073,
		-0.007470, -0.375787, -0.926676,
		33.602322, 31.260204, 20.804714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027447, 31.006136, 21.410112>,  <33.607552, 31.523254, 21.453388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027447, 31.006136, 21.410112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295963, 30.918858, 21.126774>,  <33.457073, 30.866489, 20.956770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295963, 30.918858, 21.126774>,  <33.027447, 31.006136, 21.410112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295963, 30.918858, 21.126774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114674, -0.913604, 0.390099,
		-0.732268, -0.343100, -0.588273,
		0.671292, -0.218198, -0.708348,
		33.497353, 30.853397, 20.914268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985474, 30.233128, 21.206337>,  <33.027447, 31.006136, 21.410112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985474, 30.233128, 21.206337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353062, 30.335678, 21.086494>,  <33.573616, 30.397207, 21.014589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353062, 30.335678, 21.086494>,  <32.985474, 30.233128, 21.206337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353062, 30.335678, 21.086494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323762, -0.924291, 0.202147,
		-0.225097, -0.282768, -0.932402,
		0.918972, 0.256374, -0.299605,
		33.628754, 30.412590, 20.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252724, 29.650108, 20.837391>,  <32.985474, 30.233128, 21.206337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252724, 29.650108, 20.837391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584923, 29.854187, 20.926804>,  <33.784245, 29.976635, 20.980452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584923, 29.854187, 20.926804>,  <33.252724, 29.650108, 20.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584923, 29.854187, 20.926804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469447, -0.857102, 0.212119,
		0.299814, -0.071228, -0.951335,
		0.830500, 0.510198, 0.223534,
		33.834072, 30.007246, 20.993864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719124, 29.302399, 20.574926>,  <33.252724, 29.650108, 20.837391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719124, 29.302399, 20.574926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961567, 29.526833, 20.800426>,  <34.107033, 29.661493, 20.935726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961567, 29.526833, 20.800426>,  <33.719124, 29.302399, 20.574926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961567, 29.526833, 20.800426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543112, -0.809774, 0.222024,
		0.581087, 0.171610, -0.795543,
		0.606108, 0.561084, 0.563752,
		34.143398, 29.695158, 20.969553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271832, 28.874323, 20.586157>,  <33.719124, 29.302399, 20.574926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271832, 28.874323, 20.586157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338108, 29.122871, 20.892475>,  <34.377876, 29.272001, 21.076265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338108, 29.122871, 20.892475>,  <34.271832, 28.874323, 20.586157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338108, 29.122871, 20.892475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510617, -0.718390, 0.472425,
		0.843691, 0.312749, -0.436318,
		0.165695, 0.621372, 0.765795,
		34.387817, 29.309282, 21.122213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098671, 29.065872, 20.671061>,  <34.271832, 28.874323, 20.586157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098671, 29.065872, 20.671061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896538, 29.114674, 21.012764>,  <34.775257, 29.143955, 21.217787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896538, 29.114674, 21.012764>,  <35.098671, 29.065872, 20.671061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896538, 29.114674, 21.012764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562929, -0.703698, 0.433497,
		0.654029, 0.699945, 0.286920,
		-0.505329, 0.122004, 0.854258,
		34.744938, 29.151276, 21.269041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584812, 28.924515, 21.245792>,  <35.098671, 29.065872, 20.671061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584812, 28.924515, 21.245792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228718, 28.911869, 21.427551>,  <35.015060, 28.904282, 21.536606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228718, 28.911869, 21.427551>,  <35.584812, 28.924515, 21.245792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228718, 28.911869, 21.427551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377717, -0.608773, 0.697657,
		0.254567, 0.792715, 0.553895,
		-0.890239, -0.031615, 0.454395,
		34.961647, 28.902384, 21.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749199, 28.865505, 22.002977>,  <35.584812, 28.924515, 21.245792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749199, 28.865505, 22.002977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369614, 28.752541, 21.946823>,  <35.141861, 28.684761, 21.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369614, 28.752541, 21.946823>,  <35.749199, 28.865505, 22.002977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369614, 28.752541, 21.946823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157035, -0.809143, 0.566240,
		-0.273504, 0.515297, 0.812197,
		-0.948966, -0.282412, -0.140384,
		35.084923, 28.667816, 21.904707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611763, 28.936361, 22.758284>,  <35.749199, 28.865505, 22.002977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611763, 28.936361, 22.758284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939610, 29.043125, 22.961060>,  <36.136318, 29.107183, 23.082726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939610, 29.043125, 22.961060>,  <35.611763, 28.936361, 22.758284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939610, 29.043125, 22.961060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186217, 0.712691, -0.676310,
		-0.541806, 0.648715, 0.534430,
		0.819616, 0.266908, 0.506942,
		36.185493, 29.123198, 23.113142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563675, 29.674543, 22.839312>,  <35.611763, 28.936361, 22.758284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563675, 29.674543, 22.839312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950058, 29.581573, 22.884754>,  <36.181889, 29.525791, 22.912020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950058, 29.581573, 22.884754>,  <35.563675, 29.674543, 22.839312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950058, 29.581573, 22.884754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253582, 0.763682, -0.593705,
		0.051233, 0.602302, 0.796623,
		0.965956, -0.232426, 0.113607,
		36.239845, 29.511845, 22.918837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891663, 30.327055, 22.986261>,  <35.563675, 29.674543, 22.839312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891663, 30.327055, 22.986261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207199, 30.092060, 22.914051>,  <36.396523, 29.951063, 22.870726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207199, 30.092060, 22.914051>,  <35.891663, 30.327055, 22.986261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207199, 30.092060, 22.914051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526653, 0.797554, -0.294185,
		0.316808, 0.136991, 0.938545,
		0.788841, -0.587487, -0.180524,
		36.443851, 29.915813, 22.859894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422489, 30.576771, 23.451014>,  <35.891663, 30.327055, 22.986261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422489, 30.576771, 23.451014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561920, 30.371159, 23.137512>,  <36.645576, 30.247791, 22.949411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561920, 30.371159, 23.137512>,  <36.422489, 30.576771, 23.451014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561920, 30.371159, 23.137512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607705, 0.760565, -0.228549,
		0.713576, -0.396625, 0.577493,
		0.348573, -0.514032, -0.783752,
		36.666492, 30.216949, 22.902386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088001, 30.655064, 23.515984>,  <36.422489, 30.576771, 23.451014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088001, 30.655064, 23.515984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041046, 30.535168, 23.137276>,  <37.012871, 30.463230, 22.910051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041046, 30.535168, 23.137276>,  <37.088001, 30.655064, 23.515984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041046, 30.535168, 23.137276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555905, 0.770164, -0.312755,
		0.822915, -0.563030, 0.076216,
		-0.117391, -0.299740, -0.946771,
		37.005829, 30.445246, 22.853245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793770, 30.696249, 23.110023>,  <37.088001, 30.655064, 23.515984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793770, 30.696249, 23.110023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505016, 30.730015, 22.835285>,  <37.331764, 30.750275, 22.670443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505016, 30.730015, 22.835285>,  <37.793770, 30.696249, 23.110023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505016, 30.730015, 22.835285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515683, 0.727490, -0.452581,
		0.461469, -0.680905, -0.568696,
		-0.721885, 0.084415, -0.686845,
		37.288452, 30.755339, 22.629232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171753, 30.964581, 22.539667>,  <37.793770, 30.696249, 23.110023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171753, 30.964581, 22.539667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790714, 31.034939, 22.440376>,  <37.562092, 31.077154, 22.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790714, 31.034939, 22.440376>,  <38.171753, 30.964581, 22.539667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790714, 31.034939, 22.440376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287655, 0.786384, -0.546676,
		0.099045, -0.592167, -0.799706,
		-0.952599, 0.175894, -0.248227,
		37.504936, 31.087708, 22.365908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215118, 31.147049, 21.895393>,  <38.171753, 30.964581, 22.539667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215118, 31.147049, 21.895393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864738, 31.289074, 22.026016>,  <37.654510, 31.374289, 22.104389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864738, 31.289074, 22.026016>,  <38.215118, 31.147049, 21.895393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864738, 31.289074, 22.026016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088788, 0.784043, -0.614323,
		-0.474158, -0.509123, -0.718310,
		-0.875952, 0.355064, 0.326556,
		37.601952, 31.395594, 22.123983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965427, 31.244642, 21.331858>,  <38.215118, 31.147049, 21.895393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965427, 31.244642, 21.331858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757660, 31.467926, 21.590656>,  <37.632999, 31.601896, 21.745935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757660, 31.467926, 21.590656>,  <37.965427, 31.244642, 21.331858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757660, 31.467926, 21.590656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046861, 0.774613, -0.630696,
		-0.853232, -0.297278, -0.428509,
		-0.519421, 0.558211, 0.646994,
		37.601833, 31.635389, 21.784754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542912, 31.628448, 20.835337>,  <37.965427, 31.244642, 21.331858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542912, 31.628448, 20.835337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558006, 31.827633, 21.181889>,  <37.567062, 31.947144, 21.389820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558006, 31.827633, 21.181889>,  <37.542912, 31.628448, 20.835337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558006, 31.827633, 21.181889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082837, 0.862453, -0.499312,
		-0.995849, 0.090609, -0.008706,
		0.037733, 0.497961, 0.866378,
		37.569324, 31.977020, 21.441803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120510, 32.252487, 20.661928>,  <37.542912, 31.628448, 20.835337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120510, 32.252487, 20.661928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353790, 32.348152, 20.972458>,  <37.493759, 32.405552, 21.158775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353790, 32.348152, 20.972458>,  <37.120510, 32.252487, 20.661928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353790, 32.348152, 20.972458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239867, 0.862364, -0.445862,
		-0.776108, 0.446241, 0.445562,
		0.583199, 0.239162, 0.776325,
		37.528751, 32.419899, 21.205355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962166, 32.912086, 20.868982>,  <37.120510, 32.252487, 20.661928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962166, 32.912086, 20.868982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323147, 32.857876, 21.032547>,  <37.539734, 32.825348, 21.130686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323147, 32.857876, 21.032547>,  <36.962166, 32.912086, 20.868982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323147, 32.857876, 21.032547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259643, 0.928560, -0.265258,
		-0.343750, 0.345554, 0.873171,
		0.902453, -0.135530, 0.408913,
		37.593884, 32.817215, 21.155222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089161, 33.518425, 21.126150>,  <36.962166, 32.912086, 20.868982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089161, 33.518425, 21.126150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440536, 33.331104, 21.088116>,  <37.651363, 33.218712, 21.065296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440536, 33.331104, 21.088116>,  <37.089161, 33.518425, 21.126150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440536, 33.331104, 21.088116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436725, 0.867536, -0.238019,
		0.193953, 0.167559, 0.966595,
		0.878438, -0.468300, -0.095084,
		37.704067, 33.190613, 21.059591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537861, 33.859303, 21.577114>,  <37.089161, 33.518425, 21.126150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537861, 33.859303, 21.577114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767864, 33.674194, 21.307236>,  <37.905865, 33.563129, 21.145309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767864, 33.674194, 21.307236>,  <37.537861, 33.859303, 21.577114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767864, 33.674194, 21.307236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401516, 0.878137, -0.260115,
		0.712847, -0.121332, 0.690745,
		0.575008, -0.462768, -0.674694,
		37.940365, 33.535362, 21.104828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459152, 34.339561, 22.219069>,  <37.537861, 33.859303, 21.577114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459152, 34.339561, 22.219069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347801, 34.689373, 22.377918>,  <37.280991, 34.899261, 22.473228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347801, 34.689373, 22.377918>,  <37.459152, 34.339561, 22.219069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347801, 34.689373, 22.377918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089674, -0.435324, 0.895796,
		0.956277, 0.213754, 0.199605,
		-0.278373, 0.874530, 0.397122,
		37.264290, 34.951733, 22.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846504, 34.466824, 22.825756>,  <37.459152, 34.339561, 22.219069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846504, 34.466824, 22.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507103, 34.675323, 22.862293>,  <37.303463, 34.800423, 22.884214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507103, 34.675323, 22.862293>,  <37.846504, 34.466824, 22.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507103, 34.675323, 22.862293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203759, -0.481099, 0.852658,
		0.488393, 0.704870, 0.514423,
		-0.848502, 0.521250, 0.091341,
		37.252552, 34.831699, 22.889696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824558, 34.759289, 23.518354>,  <37.846504, 34.466824, 22.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824558, 34.759289, 23.518354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447731, 34.716846, 23.391075>,  <37.221634, 34.691380, 23.314709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447731, 34.716846, 23.391075>,  <37.824558, 34.759289, 23.518354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447731, 34.716846, 23.391075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253488, -0.396043, 0.882550,
		-0.219664, 0.912081, 0.346203,
		-0.942068, -0.106106, -0.318197,
		37.165112, 34.685013, 23.295616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394089, 35.146408, 23.986622>,  <37.824558, 34.759289, 23.518354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394089, 35.146408, 23.986622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192883, 34.854401, 23.801563>,  <37.072159, 34.679195, 23.690527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192883, 34.854401, 23.801563>,  <37.394089, 35.146408, 23.986622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192883, 34.854401, 23.801563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497562, -0.193094, 0.845664,
		-0.706688, 0.655578, -0.266102,
		-0.503016, -0.730022, -0.462648,
		37.041977, 34.635395, 23.662769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833664, 35.185509, 24.385935>,  <37.394089, 35.146408, 23.986622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833664, 35.185509, 24.385935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792664, 34.847984, 24.175228>,  <36.768063, 34.645470, 24.048803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792664, 34.847984, 24.175228>,  <36.833664, 35.185509, 24.385935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792664, 34.847984, 24.175228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479761, -0.421958, 0.769273,
		-0.871391, 0.331573, -0.361575,
		-0.102500, -0.843808, -0.526766,
		36.761913, 34.594841, 24.017199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172497, 34.989067, 24.570337>,  <36.833664, 35.185509, 24.385935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172497, 34.989067, 24.570337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363880, 34.668316, 24.427189>,  <36.478710, 34.475864, 24.341301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363880, 34.668316, 24.427189>,  <36.172497, 34.989067, 24.570337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363880, 34.668316, 24.427189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467790, -0.577659, 0.668941,
		-0.743136, -0.152652, -0.651496,
		0.478458, -0.801877, -0.357870,
		36.507416, 34.427753, 24.319828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690750, 34.445744, 24.526711>,  <36.172497, 34.989067, 24.570337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690750, 34.445744, 24.526711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038918, 34.248852, 24.530373>,  <36.247818, 34.130718, 24.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038918, 34.248852, 24.530373>,  <35.690750, 34.445744, 24.526711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038918, 34.248852, 24.530373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391184, -0.680215, 0.619906,
		-0.298907, -0.543159, -0.784623,
		0.870419, -0.492226, 0.009154,
		36.300045, 34.101185, 24.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595966, 33.635921, 24.493433>,  <35.690750, 34.445744, 24.526711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595966, 33.635921, 24.493433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960106, 33.692043, 24.649170>,  <36.178589, 33.725716, 24.742613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960106, 33.692043, 24.649170>,  <35.595966, 33.635921, 24.493433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960106, 33.692043, 24.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207127, -0.660018, 0.722133,
		0.358291, -0.738033, -0.571783,
		0.910344, 0.140302, 0.389345,
		36.233208, 33.734135, 24.765974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657959, 33.062309, 24.760599>,  <35.595966, 33.635921, 24.493433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657959, 33.062309, 24.760599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944752, 33.292038, 24.918633>,  <36.116829, 33.429874, 25.013453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944752, 33.292038, 24.918633>,  <35.657959, 33.062309, 24.760599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944752, 33.292038, 24.918633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080618, -0.494641, 0.865350,
		0.692415, -0.652291, -0.308348,
		0.716981, 0.574323, 0.395083,
		36.159847, 33.464336, 25.037157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167427, 32.634274, 25.001116>,  <35.657959, 33.062309, 24.760599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167427, 32.634274, 25.001116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208370, 32.967194, 25.219032>,  <36.232937, 33.166946, 25.349781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208370, 32.967194, 25.219032>,  <36.167427, 32.634274, 25.001116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208370, 32.967194, 25.219032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188982, -0.553962, 0.810809,
		0.976631, 0.019961, -0.213994,
		0.102360, 0.832302, 0.544789,
		36.239079, 33.216885, 25.382469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698704, 32.403732, 25.574953>,  <36.167427, 32.634274, 25.001116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698704, 32.403732, 25.574953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558689, 32.764099, 25.677574>,  <36.474678, 32.980320, 25.739147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558689, 32.764099, 25.677574>,  <36.698704, 32.403732, 25.574953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558689, 32.764099, 25.677574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197053, -0.196932, 0.960410,
		0.915774, 0.386737, -0.108594,
		-0.350041, 0.900917, 0.256553,
		36.453678, 33.034374, 25.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259735, 32.843521, 25.965816>,  <36.698704, 32.403732, 25.574953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259735, 32.843521, 25.965816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883492, 32.930630, 26.069988>,  <36.657745, 32.982895, 26.132492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883492, 32.930630, 26.069988>,  <37.259735, 32.843521, 25.965816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883492, 32.930630, 26.069988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200524, -0.262605, 0.943837,
		0.273930, 0.940008, 0.203342,
		-0.940613, 0.217770, 0.260430,
		36.601307, 32.995960, 26.148117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273323, 33.058029, 26.681801>,  <37.259735, 32.843521, 25.965816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273323, 33.058029, 26.681801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883183, 32.986195, 26.630512>,  <36.649097, 32.943092, 26.599739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883183, 32.986195, 26.630512>,  <37.273323, 33.058029, 26.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883183, 32.986195, 26.630512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058893, -0.348133, 0.935594,
		-0.212658, 0.920083, 0.328975,
		-0.975350, -0.179587, -0.128220,
		36.590576, 32.932320, 26.592047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172295, 33.055687, 27.341217>,  <37.273323, 33.058029, 26.681801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172295, 33.055687, 27.341217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836529, 32.924854, 27.167599>,  <36.635067, 32.846355, 27.063427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836529, 32.924854, 27.167599>,  <37.172295, 33.055687, 27.341217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836529, 32.924854, 27.167599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284796, -0.415479, 0.863868,
		-0.462891, 0.848761, 0.255609,
		-0.839418, -0.327080, -0.434046,
		36.584702, 32.826729, 27.037384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624378, 33.261841, 27.727448>,  <37.172295, 33.055687, 27.341217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624378, 33.261841, 27.727448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477047, 32.955555, 27.516537>,  <36.388649, 32.771786, 27.389990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477047, 32.955555, 27.516537>,  <36.624378, 33.261841, 27.727448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477047, 32.955555, 27.516537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430323, -0.362322, 0.826768,
		-0.824109, 0.531423, -0.196049,
		-0.368330, -0.765711, -0.527276,
		36.366547, 32.725842, 27.358355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993713, 33.141159, 28.036028>,  <36.624378, 33.261841, 27.727448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993713, 33.141159, 28.036028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084694, 32.819427, 27.816460>,  <36.139282, 32.626389, 27.684719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084694, 32.819427, 27.816460>,  <35.993713, 33.141159, 28.036028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084694, 32.819427, 27.816460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427432, -0.588954, 0.685883,
		-0.874968, 0.078621, -0.477756,
		0.227451, -0.804334, -0.548920,
		36.152931, 32.578129, 27.651783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385818, 32.746403, 28.040813>,  <35.993713, 33.141159, 28.036028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385818, 32.746403, 28.040813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667122, 32.482723, 27.934322>,  <35.835903, 32.324516, 27.870428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667122, 32.482723, 27.934322>,  <35.385818, 32.746403, 28.040813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667122, 32.482723, 27.934322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302319, -0.616229, 0.727231,
		-0.643452, -0.430945, -0.632658,
		0.703259, -0.659203, -0.266231,
		35.878101, 32.284962, 27.854454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050407, 32.064415, 27.818968>,  <35.385818, 32.746403, 28.040813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050407, 32.064415, 27.818968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429111, 32.002575, 27.931919>,  <35.656334, 31.965471, 27.999689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429111, 32.002575, 27.931919>,  <35.050407, 32.064415, 27.818968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429111, 32.002575, 27.931919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299471, -0.744816, 0.596294,
		0.118132, -0.649113, -0.751463,
		0.946764, -0.154601, 0.282377,
		35.713142, 31.956194, 28.016632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100231, 31.322451, 27.858093>,  <35.050407, 32.064415, 27.818968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100231, 31.322451, 27.858093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416992, 31.450218, 28.066269>,  <35.607048, 31.526878, 28.191174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416992, 31.450218, 28.066269>,  <35.100231, 31.322451, 27.858093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416992, 31.450218, 28.066269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050503, -0.815101, 0.577114,
		0.608551, -0.483304, -0.629351,
		0.791906, 0.319419, 0.520439,
		35.654564, 31.546043, 28.222401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561050, 30.660109, 27.993851>,  <35.100231, 31.322451, 27.858093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561050, 30.660109, 27.993851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682892, 30.920658, 28.271824>,  <35.755997, 31.076988, 28.438608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682892, 30.920658, 28.271824>,  <35.561050, 30.660109, 27.993851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682892, 30.920658, 28.271824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190324, -0.673265, 0.714486,
		0.933270, -0.349898, -0.081108,
		0.304604, 0.651372, 0.694932,
		35.774273, 31.116070, 28.480303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957294, 30.320045, 28.420040>,  <35.561050, 30.660109, 27.993851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957294, 30.320045, 28.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868992, 30.642490, 28.639660>,  <35.816010, 30.835957, 28.771431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868992, 30.642490, 28.639660>,  <35.957294, 30.320045, 28.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868992, 30.642490, 28.639660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154373, -0.584718, 0.796413,
		0.963035, 0.091052, 0.253520,
		-0.220752, 0.806111, 0.549048,
		35.802765, 30.884323, 28.804375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443371, 30.366808, 28.945150>,  <35.957294, 30.320045, 28.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443371, 30.366808, 28.945150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112820, 30.549965, 29.076260>,  <35.914490, 30.659859, 29.154926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112820, 30.549965, 29.076260>,  <36.443371, 30.366808, 28.945150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112820, 30.549965, 29.076260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013493, -0.565803, 0.824430,
		0.562956, 0.685712, 0.461388,
		-0.826376, 0.457892, 0.327775,
		35.864906, 30.687332, 29.174593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655487, 30.243490, 29.591969>,  <36.443371, 30.366808, 28.945150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655487, 30.243490, 29.591969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298935, 30.423820, 29.610752>,  <36.085003, 30.532019, 29.622023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298935, 30.423820, 29.610752>,  <36.655487, 30.243490, 29.591969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298935, 30.423820, 29.610752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184863, -0.456183, 0.870473,
		0.413852, 0.767238, 0.489972,
		-0.891377, 0.450824, 0.046958,
		36.031521, 30.559069, 29.624840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602501, 30.535028, 30.287489>,  <36.655487, 30.243490, 29.591969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602501, 30.535028, 30.287489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237057, 30.479271, 30.134708>,  <36.017792, 30.445816, 30.043041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237057, 30.479271, 30.134708>,  <36.602501, 30.535028, 30.287489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237057, 30.479271, 30.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286498, -0.445864, 0.848012,
		-0.288506, 0.884180, 0.367409,
		-0.913610, -0.139395, -0.381950,
		35.962975, 30.437452, 30.020123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087311, 30.769037, 30.803600>,  <36.602501, 30.535028, 30.287489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087311, 30.769037, 30.803600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908913, 30.502254, 30.564850>,  <35.801872, 30.342186, 30.421600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908913, 30.502254, 30.564850>,  <36.087311, 30.769037, 30.803600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908913, 30.502254, 30.564850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449641, -0.409653, 0.793730,
		-0.773894, 0.622378, -0.117188,
		-0.445994, -0.666955, -0.596875,
		35.775116, 30.302168, 30.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448353, 30.567320, 31.160404>,  <36.087311, 30.769037, 30.803600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448353, 30.567320, 31.160404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530964, 30.269535, 30.906437>,  <35.580532, 30.090864, 30.754057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530964, 30.269535, 30.906437>,  <35.448353, 30.567320, 31.160404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530964, 30.269535, 30.906437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390031, -0.657764, 0.644378,
		-0.897342, 0.114556, -0.426210,
		0.206528, -0.744462, -0.634920,
		35.592922, 30.046196, 30.715961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830132, 30.158989, 31.110525>,  <35.448353, 30.567320, 31.160404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830132, 30.158989, 31.110525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135601, 29.919819, 31.013130>,  <35.318882, 29.776318, 30.954693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135601, 29.919819, 31.013130>,  <34.830132, 30.158989, 31.110525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135601, 29.919819, 31.013130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344264, -0.696207, 0.629904,
		-0.546155, -0.397216, -0.737519,
		0.763674, -0.597926, -0.243489,
		35.364704, 29.740440, 30.940083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564453, 29.551750, 31.261982>,  <34.830132, 30.158989, 31.110525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564453, 29.551750, 31.261982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950989, 29.453789, 31.230476>,  <35.182911, 29.395012, 31.211573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950989, 29.453789, 31.230476>,  <34.564453, 29.551750, 31.261982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950989, 29.453789, 31.230476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153679, -0.795081, 0.586710,
		-0.206310, -0.554859, -0.805958,
		0.966343, -0.244902, -0.078763,
		35.240891, 29.380318, 31.206848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164097, 29.137970, 30.807161>,  <34.564453, 29.551750, 31.261982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164097, 29.137970, 30.807161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797421, 29.275368, 30.888832>,  <33.577415, 29.357807, 30.937834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797421, 29.275368, 30.888832>,  <34.164097, 29.137970, 30.807161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797421, 29.275368, 30.888832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041745, 0.590479, -0.805973,
		-0.397409, -0.730305, -0.555626,
		-0.916691, 0.343496, 0.204175,
		33.522411, 29.378416, 30.950085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876507, 28.998177, 30.224310>,  <34.164097, 29.137970, 30.807161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876507, 28.998177, 30.224310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654068, 29.286121, 30.390469>,  <33.520603, 29.458889, 30.490164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654068, 29.286121, 30.390469>,  <33.876507, 28.998177, 30.224310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654068, 29.286121, 30.390469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027825, 0.515649, -0.856348,
		-0.830650, -0.464655, -0.306782,
		-0.556098, 0.719862, 0.415395,
		33.487240, 29.502081, 30.515087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344372, 29.218819, 29.710546>,  <33.876507, 28.998177, 30.224310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344372, 29.218819, 29.710546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273006, 29.522987, 29.960323>,  <33.230186, 29.705488, 30.110189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273006, 29.522987, 29.960323>,  <33.344372, 29.218819, 29.710546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273006, 29.522987, 29.960323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040629, 0.628389, -0.776838,
		-0.983117, -0.163965, -0.081215,
		-0.178409, 0.760423, 0.624442,
		33.219482, 29.751114, 30.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778774, 29.577164, 29.359234>,  <33.344372, 29.218819, 29.710546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778774, 29.577164, 29.359234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961632, 29.811321, 29.627064>,  <33.071346, 29.951817, 29.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961632, 29.811321, 29.627064>,  <32.778774, 29.577164, 29.359234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961632, 29.811321, 29.627064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050820, 0.734424, -0.676786,
		-0.887940, 0.343416, 0.305988,
		0.457144, 0.585395, 0.669576,
		33.098774, 29.986940, 29.827936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325294, 30.182529, 29.401846>,  <32.778774, 29.577164, 29.359234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325294, 30.182529, 29.401846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710964, 30.243046, 29.488998>,  <32.942368, 30.279356, 29.541290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710964, 30.243046, 29.488998>,  <32.325294, 30.182529, 29.401846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710964, 30.243046, 29.488998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056067, 0.686606, -0.724864,
		-0.259265, 0.711114, 0.653528,
		0.964177, 0.151290, 0.217883,
		33.000217, 30.288433, 29.554363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
