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
	<24.216501, 34.445850, 34.767628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364265, 34.802769, 34.871429>,  <24.452925, 35.016918, 34.933712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364265, 34.802769, 34.871429>,  <24.216501, 34.445850, 34.767628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364265, 34.802769, 34.871429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206013, 0.193670, -0.959193,
		-0.906142, 0.407799, -0.112281,
		0.369412, 0.892296, 0.259504,
		24.475090, 35.070457, 34.949280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.948408, 34.994560, 34.259472>,  <24.216501, 34.445850, 34.767628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.948408, 34.994560, 34.259472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293312, 35.162189, 34.373234>,  <24.500254, 35.262768, 34.441490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293312, 35.162189, 34.373234>,  <23.948408, 34.994560, 34.259472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293312, 35.162189, 34.373234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191150, 0.250730, -0.948998,
		-0.469012, 0.872645, 0.136087,
		0.862259, 0.419078, 0.284401,
		24.551991, 35.287914, 34.458553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997782, 35.580257, 33.954308>,  <23.948408, 34.994560, 34.259472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997782, 35.580257, 33.954308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371902, 35.481102, 34.055317>,  <24.596375, 35.421608, 34.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.371902, 35.481102, 34.055317>,  <23.997782, 35.580257, 33.954308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371902, 35.481102, 34.055317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316551, 0.267199, -0.910165,
		0.158142, 0.931213, 0.328379,
		0.935300, -0.247884, 0.252521,
		24.652493, 35.406738, 34.131073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377438, 36.012936, 33.699944>,  <23.997782, 35.580257, 33.954308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377438, 36.012936, 33.699944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656364, 35.726360, 33.708553>,  <24.823721, 35.554417, 33.713718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656364, 35.726360, 33.708553>,  <24.377438, 36.012936, 33.699944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656364, 35.726360, 33.708553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199994, 0.165640, -0.965694,
		0.688295, 0.677702, 0.258787,
		0.697318, -0.716438, 0.021527,
		24.865561, 35.511429, 33.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020452, 36.237762, 33.427311>,  <24.377438, 36.012936, 33.699944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020452, 36.237762, 33.427311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974882, 35.845108, 33.366100>,  <24.947540, 35.609516, 33.329376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974882, 35.845108, 33.366100>,  <25.020452, 36.237762, 33.427311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974882, 35.845108, 33.366100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097438, 0.142244, -0.985024,
		0.988699, -0.127132, 0.079442,
		-0.113928, -0.981633, -0.153024,
		24.940704, 35.550617, 33.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158020, 36.139771, 32.657288>,  <25.020452, 36.237762, 33.427311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158020, 36.139771, 32.657288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036221, 35.774166, 32.764515>,  <24.963140, 35.554802, 32.828854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036221, 35.774166, 32.764515>,  <25.158020, 36.139771, 32.657288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036221, 35.774166, 32.764515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035983, -0.292274, -0.955657,
		0.951833, -0.281349, 0.121885,
		-0.304497, -0.914012, 0.268072,
		24.944872, 35.499962, 32.844936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475355, 35.526604, 32.292362>,  <25.158020, 36.139771, 32.657288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475355, 35.526604, 32.292362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108364, 35.433605, 32.421471>,  <24.888170, 35.377804, 32.498936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108364, 35.433605, 32.421471>,  <25.475355, 35.526604, 32.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108364, 35.433605, 32.421471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308462, -0.096506, -0.946329,
		0.251169, -0.967797, 0.016826,
		-0.917478, -0.232499, 0.322768,
		24.833120, 35.363857, 32.518299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484367, 34.784496, 31.866598>,  <25.475355, 35.526604, 32.292362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484367, 34.784496, 31.866598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702120, 34.617401, 32.157566>,  <25.832771, 34.517143, 32.332146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702120, 34.617401, 32.157566>,  <25.484367, 34.784496, 31.866598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702120, 34.617401, 32.157566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507737, -0.526185, -0.682153,
		0.667722, 0.740690, -0.074341,
		0.544381, -0.417742, 0.727421,
		25.865435, 34.492077, 32.375793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235498, 34.850353, 31.691866>,  <25.484367, 34.784496, 31.866598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235498, 34.850353, 31.691866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193050, 34.481991, 31.841887>,  <26.167582, 34.260971, 31.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193050, 34.481991, 31.841887>,  <26.235498, 34.850353, 31.691866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193050, 34.481991, 31.841887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531361, -0.371333, -0.761425,
		0.840472, 0.118486, 0.528741,
		-0.106121, -0.920909, 0.375054,
		26.161215, 34.205719, 31.954403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899326, 35.107265, 31.716940>,  <26.235498, 34.850353, 31.691866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899326, 35.107265, 31.716940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806887, 34.767242, 31.906252>,  <26.751423, 34.563229, 32.019840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806887, 34.767242, 31.906252>,  <26.899326, 35.107265, 31.716940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806887, 34.767242, 31.906252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959158, -0.117495, 0.257314,
		-0.163123, 0.513416, 0.842493,
		-0.231098, -0.850058, 0.473281,
		26.737556, 34.512226, 32.048237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307499, 35.111950, 31.038687>,  <26.899326, 35.107265, 31.716940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307499, 35.111950, 31.038687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918476, 35.083687, 30.950016>,  <26.685062, 35.066730, 30.896814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918476, 35.083687, 30.950016>,  <27.307499, 35.111950, 31.038687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918476, 35.083687, 30.950016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042240, 0.883321, -0.466861,
		0.228797, -0.463413, -0.856096,
		-0.972557, -0.070655, -0.221676,
		26.626709, 35.062492, 30.883512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071299, 35.127636, 30.284990>,  <27.307499, 35.111950, 31.038687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071299, 35.127636, 30.284990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804079, 35.279602, 30.540920>,  <26.643747, 35.370781, 30.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804079, 35.279602, 30.540920>,  <27.071299, 35.127636, 30.284990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804079, 35.279602, 30.540920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146340, 0.910131, -0.387616,
		-0.729584, -0.165315, -0.663609,
		-0.668050, 0.379911, 0.639825,
		26.603664, 35.393574, 30.732868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438005, 35.410149, 29.972115>,  <27.071299, 35.127636, 30.284990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438005, 35.410149, 29.972115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482042, 35.614601, 30.313084>,  <26.508465, 35.737274, 30.517666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482042, 35.614601, 30.313084>,  <26.438005, 35.410149, 29.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482042, 35.614601, 30.313084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042032, 0.854474, -0.517791,
		-0.993032, 0.092835, 0.072588,
		0.110094, 0.511132, 0.852422,
		26.515070, 35.767941, 30.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508879, 35.465240, 29.276388>,  <26.438005, 35.410149, 29.972115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508879, 35.465240, 29.276388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435816, 35.783733, 29.045685>,  <26.391977, 35.974831, 28.907263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435816, 35.783733, 29.045685>,  <26.508879, 35.465240, 29.276388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435816, 35.783733, 29.045685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957333, 0.277658, 0.080129,
		0.223943, -0.537514, -0.812975,
		-0.182658, 0.796232, -0.576759,
		26.381018, 36.022602, 28.872658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158188, 35.747437, 29.268805>,  <26.508879, 35.465240, 29.276388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158188, 35.747437, 29.268805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925476, 36.004932, 29.069954>,  <26.785849, 36.159428, 28.950644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925476, 36.004932, 29.069954>,  <27.158188, 35.747437, 29.268805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925476, 36.004932, 29.069954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619388, 0.746798, 0.242180,
		0.527154, -0.167020, -0.833194,
		-0.581779, 0.643737, -0.497128,
		26.750942, 36.198055, 28.920816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641874, 36.091969, 28.773264>,  <27.158188, 35.747437, 29.268805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641874, 36.091969, 28.773264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308710, 36.267258, 28.908447>,  <27.108812, 36.372433, 28.989557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308710, 36.267258, 28.908447>,  <27.641874, 36.091969, 28.773264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308710, 36.267258, 28.908447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552952, 0.634234, 0.540363,
		0.022456, 0.636949, -0.770579,
		-0.832910, 0.438228, 0.337960,
		27.058838, 36.398727, 29.009834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513161, 36.841335, 28.455658>,  <27.641874, 36.091969, 28.773264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513161, 36.841335, 28.455658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343714, 36.803501, 28.816013>,  <27.242044, 36.780800, 29.032227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343714, 36.803501, 28.816013>,  <27.513161, 36.841335, 28.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343714, 36.803501, 28.816013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455005, 0.837746, 0.301913,
		-0.783274, 0.537805, -0.311846,
		-0.423618, -0.094589, 0.900889,
		27.216629, 36.775124, 29.086281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079399, 37.391197, 28.637535>,  <27.513161, 36.841335, 28.455658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079399, 37.391197, 28.637535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201496, 37.228683, 28.982037>,  <27.274754, 37.131176, 29.188738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201496, 37.228683, 28.982037>,  <27.079399, 37.391197, 28.637535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201496, 37.228683, 28.982037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435852, 0.863733, 0.252981,
		-0.846676, 0.298159, 0.440727,
		0.305242, -0.406284, 0.861255,
		27.293068, 37.106800, 29.240414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874529, 37.807938, 29.191090>,  <27.079399, 37.391197, 28.637535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874529, 37.807938, 29.191090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207685, 37.601414, 29.270805>,  <27.407579, 37.477497, 29.318634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207685, 37.601414, 29.270805>,  <26.874529, 37.807938, 29.191090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207685, 37.601414, 29.270805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484137, 0.854190, 0.189658,
		-0.268154, -0.061481, 0.961412,
		0.832889, -0.516313, 0.199289,
		27.457552, 37.446522, 29.330591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292477, 38.163208, 29.753857>,  <26.874529, 37.807938, 29.191090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292477, 38.163208, 29.753857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572243, 37.941456, 29.573420>,  <27.740103, 37.808407, 29.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572243, 37.941456, 29.573420>,  <27.292477, 38.163208, 29.753857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572243, 37.941456, 29.573420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622594, 0.782536, 0.003616,
		0.350991, -0.283377, 0.892470,
		0.699415, -0.554377, -0.451093,
		27.782066, 37.775143, 29.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897526, 38.422066, 29.879896>,  <27.292477, 38.163208, 29.753857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897526, 38.422066, 29.879896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006170, 38.224224, 29.549660>,  <28.071358, 38.105518, 29.351519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006170, 38.224224, 29.549660>,  <27.897526, 38.422066, 29.879896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006170, 38.224224, 29.549660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812295, 0.577878, -0.078961,
		0.516144, -0.649176, 0.558719,
		0.271612, -0.494600, -0.825590,
		28.087654, 38.075844, 29.301983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701632, 38.396313, 29.918442>,  <27.897526, 38.422066, 29.879896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701632, 38.396313, 29.918442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602051, 38.329700, 29.536806>,  <28.542303, 38.289734, 29.307825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602051, 38.329700, 29.536806>,  <28.701632, 38.396313, 29.918442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602051, 38.329700, 29.536806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869861, 0.394718, -0.295870,
		0.425869, -0.903585, 0.046593,
		-0.248952, -0.166531, -0.954091,
		28.527365, 38.279739, 29.250578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293213, 37.977814, 29.627211>,  <28.701632, 38.396313, 29.918442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293213, 37.977814, 29.627211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099623, 38.190346, 29.349087>,  <28.983469, 38.317863, 29.182213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099623, 38.190346, 29.349087>,  <29.293213, 37.977814, 29.627211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099623, 38.190346, 29.349087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867996, 0.392387, -0.304327,
		0.111133, -0.750815, -0.651096,
		-0.483975, 0.531329, -0.695312,
		28.954430, 38.349743, 29.140493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810408, 38.225647, 29.386276>,  <29.293213, 37.977814, 29.627211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810408, 38.225647, 29.386276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558361, 38.364796, 29.108589>,  <29.407133, 38.448284, 28.941977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558361, 38.364796, 29.108589>,  <29.810408, 38.225647, 29.386276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558361, 38.364796, 29.108589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711162, 0.617501, -0.336067,
		0.311770, -0.705462, -0.636493,
		-0.630117, 0.347874, -0.694216,
		29.369326, 38.469158, 28.900324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217827, 38.312500, 28.914333>,  <29.810408, 38.225647, 29.386276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217827, 38.312500, 28.914333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926159, 38.519489, 28.735209>,  <29.751158, 38.643681, 28.627733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926159, 38.519489, 28.735209>,  <30.217827, 38.312500, 28.914333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926159, 38.519489, 28.735209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681977, 0.603739, -0.412803,
		0.056749, -0.606401, -0.793131,
		-0.729168, 0.517471, -0.447813,
		29.707409, 38.674732, 28.600864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222593, 38.411606, 28.162516>,  <30.217827, 38.312500, 28.914333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222593, 38.411606, 28.162516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048525, 38.715347, 28.356010>,  <29.944084, 38.897594, 28.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048525, 38.715347, 28.356010>,  <30.222593, 38.411606, 28.162516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048525, 38.715347, 28.356010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629204, 0.640796, -0.439867,
		-0.643994, 0.112952, -0.756646,
		-0.435172, 0.759356, 0.483739,
		29.917973, 38.943153, 28.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070719, 38.937843, 27.554628>,  <30.222593, 38.411606, 28.162516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070719, 38.937843, 27.554628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120983, 39.063133, 27.931160>,  <30.151142, 39.138309, 28.157078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120983, 39.063133, 27.931160>,  <30.070719, 38.937843, 27.554628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120983, 39.063133, 27.931160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540061, 0.774334, -0.329758,
		-0.832191, 0.549813, -0.071858,
		0.125663, 0.313229, 0.941327,
		30.158682, 39.157101, 28.213558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481409, 39.532967, 27.381491>,  <30.070719, 38.937843, 27.554628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481409, 39.532967, 27.381491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546865, 39.404022, 27.754436>,  <30.586140, 39.326656, 27.978205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546865, 39.404022, 27.754436>,  <30.481409, 39.532967, 27.381491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546865, 39.404022, 27.754436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853503, 0.520220, 0.030062,
		-0.494726, 0.790858, 0.360264,
		0.163642, -0.322359, 0.932366,
		30.595959, 39.307316, 28.034145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398342, 40.110249, 27.803194>,  <30.481409, 39.532967, 27.381491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398342, 40.110249, 27.803194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651833, 39.821251, 27.913748>,  <30.803926, 39.647850, 27.980080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651833, 39.821251, 27.913748>,  <30.398342, 40.110249, 27.803194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651833, 39.821251, 27.913748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753087, 0.657884, -0.006997,
		-0.176773, 0.212576, 0.961022,
		0.633728, -0.722496, 0.276384,
		30.841951, 39.604504, 27.996662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779648, 40.378090, 28.373125>,  <30.398342, 40.110249, 27.803194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779648, 40.378090, 28.373125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994024, 40.097580, 28.185091>,  <31.122650, 39.929276, 28.072271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994024, 40.097580, 28.185091>,  <30.779648, 40.378090, 28.373125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994024, 40.097580, 28.185091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751320, 0.650139, -0.113305,
		0.385077, -0.292458, 0.875319,
		0.535942, -0.701276, -0.470083,
		31.154806, 39.887196, 28.044065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413408, 40.371643, 28.726460>,  <30.779648, 40.378090, 28.373125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413408, 40.371643, 28.726460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421759, 40.221970, 28.355612>,  <31.426769, 40.132164, 28.133102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421759, 40.221970, 28.355612>,  <31.413408, 40.371643, 28.726460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421759, 40.221970, 28.355612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660549, 0.701261, -0.268156,
		0.750492, -0.606809, 0.261808,
		0.020876, -0.374186, -0.927118,
		31.428022, 40.109715, 28.077477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088074, 40.095627, 28.718740>,  <31.413408, 40.371643, 28.726460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088074, 40.095627, 28.718740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906298, 40.216984, 28.383734>,  <31.797232, 40.289799, 28.182730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906298, 40.216984, 28.383734>,  <32.088074, 40.095627, 28.718740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906298, 40.216984, 28.383734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675523, 0.730250, -0.102002,
		0.580651, -0.612116, -0.536804,
		-0.454438, 0.303396, -0.837518,
		31.769966, 40.308002, 28.132479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723946, 40.494854, 28.556171>,  <32.088074, 40.095627, 28.718740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723946, 40.494854, 28.556171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754650, 40.163612, 28.334057>,  <32.773071, 39.964867, 28.200788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754650, 40.163612, 28.334057>,  <32.723946, 40.494854, 28.556171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754650, 40.163612, 28.334057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991254, 0.123349, -0.046922,
		0.107350, -0.546829, 0.830333,
		0.076763, -0.828108, -0.555288,
		32.777679, 39.915180, 28.167471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242554, 39.921082, 28.804417>,  <32.723946, 40.494854, 28.556171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242554, 39.921082, 28.804417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177551, 39.949951, 28.410791>,  <33.138550, 39.967274, 28.174616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177551, 39.949951, 28.410791>,  <33.242554, 39.921082, 28.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177551, 39.949951, 28.410791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964472, 0.222153, -0.142974,
		0.208295, -0.972337, -0.105708,
		-0.162503, 0.072172, -0.984065,
		33.128799, 39.971603, 28.115572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608929, 39.396107, 28.491117>,  <33.242554, 39.921082, 28.804417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608929, 39.396107, 28.491117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581547, 39.717190, 28.254143>,  <33.565117, 39.909840, 28.111958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581547, 39.717190, 28.254143>,  <33.608929, 39.396107, 28.491117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581547, 39.717190, 28.254143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995718, 0.091956, 0.009537,
		0.062133, -0.589244, -0.805562,
		-0.068457, 0.802705, -0.592434,
		33.561008, 39.958000, 28.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224964, 39.242310, 28.695570>,  <33.608929, 39.396107, 28.491117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224964, 39.242310, 28.695570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460903, 39.416641, 28.967491>,  <34.602467, 39.521240, 29.130644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460903, 39.416641, 28.967491>,  <34.224964, 39.242310, 28.695570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460903, 39.416641, 28.967491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269730, 0.687158, -0.674582,
		-0.761134, 0.581264, 0.287762,
		0.589848, 0.435829, 0.679803,
		34.637859, 39.547390, 29.171432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867039, 39.478565, 28.489635>,  <34.224964, 39.242310, 28.695570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867039, 39.478565, 28.489635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877323, 39.471615, 28.089828>,  <34.883495, 39.467445, 27.849943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877323, 39.471615, 28.089828>,  <34.867039, 39.478565, 28.489635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877323, 39.471615, 28.089828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979932, -0.197264, 0.028638,
		-0.197666, -0.980196, 0.011952,
		0.025713, -0.017373, -0.999518,
		34.885036, 39.466404, 27.789972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039696, 38.793835, 28.326662>,  <34.867039, 39.478565, 28.489635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039696, 38.793835, 28.326662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141647, 39.107384, 28.100182>,  <35.202816, 39.295513, 27.964293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141647, 39.107384, 28.100182>,  <35.039696, 38.793835, 28.326662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141647, 39.107384, 28.100182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965495, -0.173926, 0.193827,
		0.053458, -0.596066, -0.801154,
		0.254876, 0.783871, -0.566201,
		35.218109, 39.342545, 27.930321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520317, 38.602634, 27.838627>,  <35.039696, 38.793835, 28.326662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520317, 38.602634, 27.838627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569019, 38.995831, 27.893639>,  <35.598240, 39.231747, 27.926645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569019, 38.995831, 27.893639>,  <35.520317, 38.602634, 27.838627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569019, 38.995831, 27.893639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991882, -0.115375, -0.053479,
		-0.036702, 0.142925, -0.989053,
		0.121755, 0.982986, 0.137530,
		35.605545, 39.290726, 27.934898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063587, 38.848103, 27.378363>,  <35.520317, 38.602634, 27.838627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063587, 38.848103, 27.378363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021828, 39.094044, 27.691044>,  <35.996773, 39.241608, 27.878653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021828, 39.094044, 27.691044>,  <36.063587, 38.848103, 27.378363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021828, 39.094044, 27.691044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994046, 0.039875, 0.101398,
		0.031175, 0.787634, -0.615354,
		-0.104402, 0.614852, 0.781702,
		35.990509, 39.278500, 27.925554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517788, 39.573277, 27.425419>,  <36.063587, 38.848103, 27.378363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517788, 39.573277, 27.425419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446247, 39.462856, 27.803162>,  <36.403324, 39.396603, 28.029808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446247, 39.462856, 27.803162>,  <36.517788, 39.573277, 27.425419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446247, 39.462856, 27.803162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970997, 0.105271, 0.214668,
		-0.158673, 0.955361, 0.249215,
		-0.178850, -0.276049, 0.944357,
		36.392593, 39.380043, 28.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284595, 39.607769, 27.621870>,  <36.517788, 39.573277, 27.425419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284595, 39.607769, 27.621870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078598, 39.587521, 27.964149>,  <36.954998, 39.575371, 28.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078598, 39.587521, 27.964149>,  <37.284595, 39.607769, 27.621870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078598, 39.587521, 27.964149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827720, 0.230153, 0.511770,
		-0.222850, 0.971837, -0.076623,
		-0.514992, -0.050626, 0.855699,
		36.924099, 39.572334, 28.220860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645061, 40.076633, 28.122044>,  <37.284595, 39.607769, 27.621870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645061, 40.076633, 28.122044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423367, 39.842125, 28.358385>,  <37.290348, 39.701420, 28.500191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423367, 39.842125, 28.358385>,  <37.645061, 40.076633, 28.122044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423367, 39.842125, 28.358385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520204, 0.310166, 0.795729,
		-0.649773, 0.748389, 0.133072,
		-0.554241, -0.586268, 0.590853,
		37.257095, 39.666245, 28.535641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381516, 40.436790, 28.661144>,  <37.645061, 40.076633, 28.122044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381516, 40.436790, 28.661144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395836, 40.088448, 28.857235>,  <37.404427, 39.879440, 28.974890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395836, 40.088448, 28.857235>,  <37.381516, 40.436790, 28.661144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395836, 40.088448, 28.857235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286507, 0.478891, 0.829806,
		-0.957409, 0.110748, 0.266651,
		0.035798, -0.870861, 0.490225,
		37.406574, 39.827190, 29.004303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921696, 40.439373, 29.365528>,  <37.381516, 40.436790, 28.661144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921696, 40.439373, 29.365528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218658, 40.172092, 29.384850>,  <37.396835, 40.011723, 29.396442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218658, 40.172092, 29.384850>,  <36.921696, 40.439373, 29.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218658, 40.172092, 29.384850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310645, 0.407226, 0.858875,
		-0.593574, -0.622630, 0.509902,
		0.742407, -0.668205, 0.048302,
		37.441380, 39.971630, 29.399340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166813, 40.077682, 30.056499>,  <36.921696, 40.439373, 29.365528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166813, 40.077682, 30.056499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929256, 40.266972, 30.316759>,  <36.786720, 40.380547, 30.472916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929256, 40.266972, 30.316759>,  <37.166813, 40.077682, 30.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929256, 40.266972, 30.316759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744457, 0.016575, 0.667464,
		0.305076, 0.880786, -0.362140,
		-0.593896, 0.473225, 0.650650,
		36.751087, 40.408939, 30.511953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547100, 40.728180, 30.300505>,  <37.166813, 40.077682, 30.056499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547100, 40.728180, 30.300505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265289, 40.633598, 30.568155>,  <37.096203, 40.576851, 30.728746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265289, 40.633598, 30.568155>,  <37.547100, 40.728180, 30.300505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265289, 40.633598, 30.568155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695533, -0.042771, 0.717220,
		-0.140967, 0.970702, 0.194591,
		-0.704529, -0.236449, 0.669126,
		37.053932, 40.562664, 30.768892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376331, 41.272614, 30.909290>,  <37.547100, 40.728180, 30.300505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376331, 41.272614, 30.909290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372280, 40.882710, 30.998501>,  <37.369850, 40.648766, 31.052027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372280, 40.882710, 30.998501>,  <37.376331, 41.272614, 30.909290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372280, 40.882710, 30.998501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696362, 0.153186, 0.701153,
		-0.717620, 0.162410, 0.677233,
		-0.010132, -0.974760, 0.223025,
		37.369240, 40.590282, 31.065409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287422, 41.060658, 31.601906>,  <37.376331, 41.272614, 30.909290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287422, 41.060658, 31.601906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490940, 40.746162, 31.461639>,  <37.613052, 40.557465, 31.377480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490940, 40.746162, 31.461639>,  <37.287422, 41.060658, 31.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490940, 40.746162, 31.461639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638878, 0.071817, 0.765949,
		-0.577030, -0.613742, 0.538847,
		0.508793, -0.786233, -0.350666,
		37.643578, 40.510292, 31.356440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389023, 40.566570, 32.102238>,  <37.287422, 41.060658, 31.601906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389023, 40.566570, 32.102238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693314, 40.570522, 31.842640>,  <37.875889, 40.572895, 31.686880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693314, 40.570522, 31.842640>,  <37.389023, 40.566570, 32.102238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693314, 40.570522, 31.842640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645812, 0.088573, 0.758341,
		0.064980, -0.996020, 0.060996,
		0.760726, 0.009885, -0.648998,
		37.921532, 40.573486, 31.647942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821526, 40.065083, 32.242302>,  <37.389023, 40.566570, 32.102238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821526, 40.065083, 32.242302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044170, 40.344254, 32.062046>,  <38.177757, 40.511757, 31.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044170, 40.344254, 32.062046>,  <37.821526, 40.065083, 32.242302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044170, 40.344254, 32.062046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628561, 0.000895, 0.777760,
		0.543224, -0.716167, -0.438192,
		0.556614, 0.697928, -0.450641,
		38.211155, 40.553631, 31.926853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608822, 40.002434, 32.266876>,  <37.821526, 40.065083, 32.242302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608822, 40.002434, 32.266876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567928, 40.400028, 32.251137>,  <38.543392, 40.638584, 32.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567928, 40.400028, 32.251137>,  <38.608822, 40.002434, 32.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567928, 40.400028, 32.251137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675227, 0.098389, 0.731019,
		0.730491, 0.048166, -0.681222,
		-0.102235, 0.993982, -0.039349,
		38.537258, 40.698223, 32.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262363, 39.896358, 32.747177>,  <38.608822, 40.002434, 32.266876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262363, 39.896358, 32.747177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613255, 39.821407, 32.923973>,  <39.823792, 39.776436, 33.030052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613255, 39.821407, 32.923973>,  <39.262363, 39.896358, 32.747177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613255, 39.821407, 32.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466808, -0.547848, 0.694228,
		0.112061, -0.815323, -0.568059,
		0.877230, -0.187379, 0.441992,
		39.876423, 39.765194, 33.056572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308334, 39.193207, 32.856876>,  <39.262363, 39.896358, 32.747177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308334, 39.193207, 32.856876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570522, 39.349384, 33.115459>,  <39.727837, 39.443092, 33.270611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570522, 39.349384, 33.115459>,  <39.308334, 39.193207, 32.856876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570522, 39.349384, 33.115459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398049, -0.548827, 0.735082,
		0.641805, -0.739147, -0.204323,
		0.655472, 0.390449, 0.646457,
		39.767162, 39.466518, 33.309395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239521, 38.566078, 33.107201>,  <39.308334, 39.193207, 32.856876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239521, 38.566078, 33.107201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420593, 38.821304, 33.356346>,  <39.529236, 38.974442, 33.505833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420593, 38.821304, 33.356346>,  <39.239521, 38.566078, 33.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420593, 38.821304, 33.356346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498522, -0.398054, 0.770083,
		0.739296, -0.659109, 0.137899,
		0.452678, 0.638065, 0.622861,
		39.556396, 39.012722, 33.543205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221413, 38.163345, 33.758957>,  <39.239521, 38.566078, 33.107201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221413, 38.163345, 33.758957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305412, 38.551453, 33.807091>,  <39.355812, 38.784317, 33.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305412, 38.551453, 33.807091>,  <39.221413, 38.163345, 33.758957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305412, 38.551453, 33.807091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245742, -0.066749, 0.967034,
		0.946314, -0.232651, 0.224418,
		0.210002, 0.970267, 0.120337,
		39.368412, 38.842533, 33.843193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346603, 38.281757, 34.411484>,  <39.221413, 38.163345, 33.758957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346603, 38.281757, 34.411484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366207, 38.669231, 34.314129>,  <39.377972, 38.901718, 34.255714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366207, 38.669231, 34.314129>,  <39.346603, 38.281757, 34.411484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366207, 38.669231, 34.314129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269374, 0.247472, 0.930696,
		0.961788, 0.019947, 0.273069,
		0.049012, 0.968690, -0.243388,
		39.380909, 38.959839, 34.241112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625065, 38.665462, 34.890610>,  <39.346603, 38.281757, 34.411484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625065, 38.665462, 34.890610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412033, 38.960472, 34.724514>,  <39.284214, 39.137478, 34.624855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412033, 38.960472, 34.724514>,  <39.625065, 38.665462, 34.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412033, 38.960472, 34.724514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443700, 0.174504, 0.879022,
		0.720760, 0.652386, 0.234303,
		-0.532575, 0.737524, -0.415239,
		39.252262, 39.181728, 34.599941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718212, 39.206127, 35.364834>,  <39.625065, 38.665462, 34.890610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718212, 39.206127, 35.364834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394432, 39.276356, 35.140705>,  <39.200165, 39.318493, 35.006229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394432, 39.276356, 35.140705>,  <39.718212, 39.206127, 35.364834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394432, 39.276356, 35.140705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554454, 0.085602, 0.827800,
		0.193303, 0.980738, 0.028056,
		-0.809453, 0.175572, -0.560321,
		39.151596, 39.329029, 34.972610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393974, 39.633068, 35.715641>,  <39.718212, 39.206127, 35.364834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393974, 39.633068, 35.715641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103027, 39.517773, 35.466530>,  <38.928459, 39.448593, 35.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103027, 39.517773, 35.466530>,  <39.393974, 39.633068, 35.715641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103027, 39.517773, 35.466530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646895, -0.014892, 0.762434,
		-0.229040, 0.957442, -0.175630,
		-0.727370, -0.288242, -0.622775,
		38.884815, 39.431301, 35.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744514, 39.940647, 35.971474>,  <39.393974, 39.633068, 35.715641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744514, 39.940647, 35.971474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607784, 39.653847, 35.728470>,  <38.525745, 39.481766, 35.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607784, 39.653847, 35.728470>,  <38.744514, 39.940647, 35.971474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607784, 39.653847, 35.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720124, -0.215504, 0.659530,
		-0.603801, 0.662929, -0.442662,
		-0.341826, -0.716996, -0.607513,
		38.505238, 39.438747, 35.546215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011364, 40.072750, 35.738266>,  <38.744514, 39.940647, 35.971474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011364, 40.072750, 35.738266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098618, 39.682392, 35.735466>,  <38.150970, 39.448177, 35.733784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098618, 39.682392, 35.735466>,  <38.011364, 40.072750, 35.738266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098618, 39.682392, 35.735466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676807, -0.156447, 0.719345,
		-0.703099, -0.152176, -0.694618,
		0.218138, -0.975893, -0.007003,
		38.164059, 39.389626, 35.733364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444904, 39.744381, 35.792728>,  <38.011364, 40.072750, 35.738266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444904, 39.744381, 35.792728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688095, 39.453094, 35.919262>,  <37.834011, 39.278324, 35.995182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688095, 39.453094, 35.919262>,  <37.444904, 39.744381, 35.792728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688095, 39.453094, 35.919262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751688, -0.399696, 0.524602,
		-0.255585, -0.556731, -0.790396,
		0.607981, -0.728212, 0.316332,
		37.870491, 39.234631, 36.014160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404232, 39.032818, 35.496277>,  <37.444904, 39.744381, 35.792728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404232, 39.032818, 35.496277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486271, 39.054211, 35.887188>,  <37.535492, 39.067047, 36.121735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486271, 39.054211, 35.887188>,  <37.404232, 39.032818, 35.496277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486271, 39.054211, 35.887188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744570, -0.639560, 0.191255,
		0.635257, -0.766879, -0.091349,
		0.205093, 0.053480, 0.977280,
		37.547798, 39.070255, 36.180370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470955, 38.285614, 35.845718>,  <37.404232, 39.032818, 35.496277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470955, 38.285614, 35.845718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325375, 38.582169, 36.071243>,  <37.238026, 38.760101, 36.206558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325375, 38.582169, 36.071243>,  <37.470955, 38.285614, 35.845718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325375, 38.582169, 36.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801104, -0.557970, 0.216571,
		0.475155, -0.372855, 0.796999,
		-0.363952, 0.741383, 0.563817,
		37.216190, 38.804585, 36.240387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479202, 38.106274, 36.529255>,  <37.470955, 38.285614, 35.845718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479202, 38.106274, 36.529255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183052, 38.352203, 36.420567>,  <37.005363, 38.499763, 36.355354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183052, 38.352203, 36.420567>,  <37.479202, 38.106274, 36.529255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183052, 38.352203, 36.420567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667872, -0.718597, 0.193815,
		-0.076096, 0.324971, 0.942657,
		-0.740375, 0.614827, -0.271722,
		36.960941, 38.536652, 36.339050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021046, 38.035950, 37.086575>,  <37.479202, 38.106274, 36.529255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021046, 38.035950, 37.086575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850388, 38.154976, 36.744949>,  <36.747993, 38.226391, 36.539974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850388, 38.154976, 36.744949>,  <37.021046, 38.035950, 37.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850388, 38.154976, 36.744949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578858, -0.815413, 0.005069,
		-0.694908, 0.496546, 0.520140,
		-0.426646, 0.297564, -0.854066,
		36.722393, 38.244244, 36.488731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379795, 37.883018, 37.330200>,  <37.021046, 38.035950, 37.086575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379795, 37.883018, 37.330200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424961, 37.886112, 36.932770>,  <36.452061, 37.887966, 36.694313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424961, 37.886112, 36.932770>,  <36.379795, 37.883018, 37.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424961, 37.886112, 36.932770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652184, -0.753830, -0.079979,
		-0.749605, 0.657024, -0.080074,
		0.112911, 0.007730, -0.993575,
		36.458836, 37.888432, 36.634697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694489, 37.777946, 37.068470>,  <36.379795, 37.883018, 37.330200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694489, 37.777946, 37.068470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955471, 37.665169, 36.787098>,  <36.112061, 37.597504, 36.618275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955471, 37.665169, 36.787098>,  <35.694489, 37.777946, 37.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955471, 37.665169, 36.787098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628731, -0.719597, -0.294751,
		-0.423083, 0.634579, -0.646769,
		0.652456, -0.281940, -0.703428,
		36.151207, 37.580585, 36.576069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256176, 37.502491, 36.562050>,  <35.694489, 37.777946, 37.068470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256176, 37.502491, 36.562050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615280, 37.360321, 36.457977>,  <35.830742, 37.275017, 36.395535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615280, 37.360321, 36.457977>,  <35.256176, 37.502491, 36.562050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615280, 37.360321, 36.457977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423369, -0.859307, -0.286968,
		-0.121577, 0.367781, -0.921931,
		0.897763, -0.355428, -0.260179,
		35.884609, 37.253693, 36.379925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150284, 37.176907, 35.918716>,  <35.256176, 37.502491, 36.562050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150284, 37.176907, 35.918716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478626, 37.007267, 36.071732>,  <35.675632, 36.905483, 36.163540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478626, 37.007267, 36.071732>,  <35.150284, 37.176907, 35.918716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478626, 37.007267, 36.071732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338902, -0.900812, -0.271447,
		0.459718, 0.093175, -0.883163,
		0.820856, -0.424095, 0.382542,
		35.724884, 36.880039, 36.186493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324848, 36.730068, 35.473167>,  <35.150284, 37.176907, 35.918716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324848, 36.730068, 35.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527618, 36.594421, 35.790161>,  <35.649281, 36.513035, 35.980358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527618, 36.594421, 35.790161>,  <35.324848, 36.730068, 35.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527618, 36.594421, 35.790161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216956, -0.939962, -0.263441,
		0.834238, -0.038388, -0.550066,
		0.506928, -0.339113, 0.792481,
		35.679695, 36.492687, 36.027905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738342, 36.195797, 35.230766>,  <35.324848, 36.730068, 35.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738342, 36.195797, 35.230766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693516, 36.110481, 35.618984>,  <35.666618, 36.059292, 35.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693516, 36.110481, 35.618984>,  <35.738342, 36.195797, 35.230766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693516, 36.110481, 35.618984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066780, -0.972868, -0.221512,
		0.991454, -0.089637, 0.094783,
		-0.112067, -0.213290, 0.970540,
		35.659897, 36.046494, 35.910145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316212, 35.679295, 35.407326>,  <35.738342, 36.195797, 35.230766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316212, 35.679295, 35.407326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013390, 35.645813, 35.666512>,  <35.831696, 35.625725, 35.822021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013390, 35.645813, 35.666512>,  <36.316212, 35.679295, 35.407326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013390, 35.645813, 35.666512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041322, -0.983640, -0.175343,
		0.652040, -0.159520, 0.741214,
		-0.757058, -0.083702, 0.647964,
		35.786274, 35.620701, 35.860901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409302, 35.071175, 35.664406>,  <36.316212, 35.679295, 35.407326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409302, 35.071175, 35.664406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027737, 35.140724, 35.762234>,  <35.798798, 35.182453, 35.820930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027737, 35.140724, 35.762234>,  <36.409302, 35.071175, 35.664406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027737, 35.140724, 35.762234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188274, -0.981434, -0.036614,
		0.233663, -0.080972, 0.968940,
		-0.953915, 0.173871, 0.244570,
		35.741562, 35.192886, 35.835606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216526, 34.493988, 35.988667>,  <36.409302, 35.071175, 35.664406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216526, 34.493988, 35.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858181, 34.650890, 35.905178>,  <35.643173, 34.745033, 35.855083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858181, 34.650890, 35.905178>,  <36.216526, 34.493988, 35.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858181, 34.650890, 35.905178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363837, -0.917237, -0.162171,
		-0.255060, -0.069342, 0.964436,
		-0.895861, 0.392260, -0.208721,
		35.589424, 34.768570, 35.842564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651550, 34.065216, 36.283482>,  <36.216526, 34.493988, 35.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651550, 34.065216, 36.283482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486343, 34.287071, 35.994541>,  <35.387218, 34.420185, 35.821178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486343, 34.287071, 35.994541>,  <35.651550, 34.065216, 36.283482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486343, 34.287071, 35.994541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472883, -0.808463, -0.350385,
		-0.778334, 0.196875, 0.596185,
		-0.413011, 0.554642, -0.722353,
		35.362438, 34.453465, 35.777836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004795, 33.783348, 36.129181>,  <35.651550, 34.065216, 36.283482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004795, 33.783348, 36.129181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077694, 33.991940, 35.795750>,  <35.121433, 34.117096, 35.595692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077694, 33.991940, 35.795750>,  <35.004795, 33.783348, 36.129181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077694, 33.991940, 35.795750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471158, -0.697788, -0.539538,
		-0.863017, 0.491073, 0.118532,
		0.182243, 0.521478, -0.833576,
		35.132366, 34.148384, 35.545677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537472, 33.563942, 35.742256>,  <35.004795, 33.783348, 36.129181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537472, 33.563942, 35.742256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763573, 33.734993, 35.460087>,  <34.899231, 33.837624, 35.290783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763573, 33.734993, 35.460087>,  <34.537472, 33.563942, 35.742256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763573, 33.734993, 35.460087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335501, -0.662053, -0.670168,
		-0.753613, 0.615484, -0.230755,
		0.565249, 0.427628, -0.705427,
		34.933147, 33.863281, 35.248459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037151, 33.700748, 35.150539>,  <34.537472, 33.563942, 35.742256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037151, 33.700748, 35.150539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414665, 33.717773, 35.019417>,  <34.641174, 33.727989, 34.940742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414665, 33.717773, 35.019417>,  <34.037151, 33.700748, 35.150539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414665, 33.717773, 35.019417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263465, -0.502071, -0.823718,
		-0.199641, 0.863779, -0.462634,
		0.943785, 0.042560, -0.327809,
		34.697800, 33.730541, 34.921074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073364, 33.936218, 34.481617>,  <34.037151, 33.700748, 35.150539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073364, 33.936218, 34.481617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423805, 33.744011, 34.497345>,  <34.634071, 33.628685, 34.506783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423805, 33.744011, 34.497345>,  <34.073364, 33.936218, 34.481617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423805, 33.744011, 34.497345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221618, -0.473803, -0.852289,
		0.428170, 0.737979, -0.521592,
		0.876103, -0.480519, 0.039319,
		34.686638, 33.599854, 34.509140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328350, 34.089073, 33.844589>,  <34.073364, 33.936218, 34.481617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328350, 34.089073, 33.844589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473064, 33.742439, 33.982075>,  <34.559895, 33.534458, 34.064568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473064, 33.742439, 33.982075>,  <34.328350, 34.089073, 33.844589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473064, 33.742439, 33.982075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188557, -0.429091, -0.883361,
		0.912992, 0.254781, -0.318641,
		0.361789, -0.866584, 0.343716,
		34.581600, 33.482464, 34.085190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540218, 33.764214, 33.273987>,  <34.328350, 34.089073, 33.844589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540218, 33.764214, 33.273987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544891, 33.449482, 33.520809>,  <34.547695, 33.260643, 33.668903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544891, 33.449482, 33.520809>,  <34.540218, 33.764214, 33.273987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544891, 33.449482, 33.520809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188665, -0.607751, -0.771391,
		0.981972, -0.107405, -0.155548,
		0.011683, -0.786831, 0.617058,
		34.548397, 33.213432, 33.705925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815273, 33.282433, 32.904926>,  <34.540218, 33.764214, 33.273987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815273, 33.282433, 32.904926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669006, 33.062695, 33.205460>,  <34.581245, 32.930851, 33.385780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669006, 33.062695, 33.205460>,  <34.815273, 33.282433, 32.904926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669006, 33.062695, 33.205460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199167, -0.742360, -0.639714,
		0.909186, -0.383564, 0.162045,
		-0.365667, -0.549345, 0.751338,
		34.559307, 32.897892, 33.430862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138824, 32.614178, 32.859818>,  <34.815273, 33.282433, 32.904926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138824, 32.614178, 32.859818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784409, 32.589947, 33.043671>,  <34.571758, 32.575409, 33.153980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784409, 32.589947, 33.043671>,  <35.138824, 32.614178, 32.859818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784409, 32.589947, 33.043671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263720, -0.749532, -0.607168,
		0.381291, -0.659190, 0.648140,
		-0.886042, -0.060580, 0.459631,
		34.518597, 32.571774, 33.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026531, 31.956844, 32.755825>,  <35.138824, 32.614178, 32.859818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026531, 31.956844, 32.755825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669682, 32.096676, 32.870296>,  <34.455570, 32.180576, 32.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669682, 32.096676, 32.870296>,  <35.026531, 31.956844, 32.755825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669682, 32.096676, 32.870296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451762, -0.696171, -0.557904,
		0.004201, -0.627009, 0.779000,
		-0.892128, 0.349579, 0.286183,
		34.402042, 32.201550, 32.956150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590687, 31.374331, 32.936291>,  <35.026531, 31.956844, 32.755825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590687, 31.374331, 32.936291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308643, 31.652332, 32.880016>,  <34.139416, 31.819134, 32.846252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308643, 31.652332, 32.880016>,  <34.590687, 31.374331, 32.936291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308643, 31.652332, 32.880016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486633, -0.618579, -0.616886,
		-0.515763, -0.366509, 0.774377,
		-0.705108, 0.695004, -0.140685,
		34.097111, 31.860834, 32.837811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982368, 31.047028, 32.841072>,  <34.590687, 31.374331, 32.936291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982368, 31.047028, 32.841072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850868, 31.393311, 32.690090>,  <33.771969, 31.601080, 32.599499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850868, 31.393311, 32.690090>,  <33.982368, 31.047028, 32.841072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850868, 31.393311, 32.690090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608073, -0.499836, -0.616775,
		-0.722613, 0.026757, 0.690734,
		-0.328750, 0.865707, -0.377458,
		33.752243, 31.653023, 32.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188225, 30.996027, 32.876778>,  <33.982368, 31.047028, 32.841072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188225, 30.996027, 32.876778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308472, 31.269941, 32.611237>,  <33.380619, 31.434290, 32.451912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308472, 31.269941, 32.611237>,  <33.188225, 30.996027, 32.876778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308472, 31.269941, 32.611237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582444, -0.419362, -0.696343,
		-0.755240, 0.595989, 0.272782,
		0.300619, 0.684787, -0.663849,
		33.398659, 31.475378, 32.412083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592922, 31.318115, 32.634438>,  <33.188225, 30.996027, 32.876778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592922, 31.318115, 32.634438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870949, 31.388582, 32.355629>,  <33.037766, 31.430862, 32.188343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870949, 31.388582, 32.355629>,  <32.592922, 31.318115, 32.634438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870949, 31.388582, 32.355629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651030, -0.257100, -0.714185,
		-0.305021, 0.950192, -0.064011,
		0.695070, 0.176168, -0.697024,
		33.079472, 31.441433, 32.146523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223450, 31.759533, 32.147495>,  <32.592922, 31.318115, 32.634438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223450, 31.759533, 32.147495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523354, 31.540602, 31.998743>,  <32.703297, 31.409243, 31.909491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523354, 31.540602, 31.998743>,  <32.223450, 31.759533, 32.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523354, 31.540602, 31.998743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654222, -0.528804, -0.540703,
		0.099290, 0.648689, -0.754549,
		0.749757, -0.547329, -0.371882,
		32.748280, 31.376404, 31.887178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966539, 31.660486, 31.473120>,  <32.223450, 31.759533, 32.147495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966539, 31.660486, 31.473120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275105, 31.408640, 31.510017>,  <32.460243, 31.257532, 31.532156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275105, 31.408640, 31.510017>,  <31.966539, 31.660486, 31.473120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275105, 31.408640, 31.510017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462729, -0.654536, -0.597883,
		0.436813, 0.418530, -0.796258,
		0.771412, -0.629615, 0.092244,
		32.506527, 31.219755, 31.537691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906708, 31.311844, 30.819357>,  <31.966539, 31.660486, 31.473120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906708, 31.311844, 30.819357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161209, 31.094528, 31.038454>,  <32.313911, 30.964138, 31.169912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161209, 31.094528, 31.038454>,  <31.906708, 31.311844, 30.819357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161209, 31.094528, 31.038454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305095, -0.829301, -0.468163,
		0.708591, 0.130756, -0.693399,
		0.636252, -0.543289, 0.547742,
		32.352085, 30.931541, 31.202776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234924, 30.983236, 30.342382>,  <31.906708, 31.311844, 30.819357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234924, 30.983236, 30.342382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291843, 30.773796, 30.678381>,  <32.325996, 30.648132, 30.879980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291843, 30.773796, 30.678381>,  <32.234924, 30.983236, 30.342382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291843, 30.773796, 30.678381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303346, -0.830866, -0.466521,
		0.942195, -0.188424, -0.277063,
		0.142299, -0.523600, 0.839996,
		32.334534, 30.616716, 30.930380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550526, 30.363913, 30.098577>,  <32.234924, 30.983236, 30.342382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550526, 30.363913, 30.098577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392136, 30.303343, 30.460854>,  <32.297100, 30.267000, 30.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392136, 30.303343, 30.460854>,  <32.550526, 30.363913, 30.098577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392136, 30.303343, 30.460854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446462, -0.830133, -0.333993,
		0.802417, -0.536609, 0.261109,
		-0.395979, -0.151426, 0.905688,
		32.273342, 30.257915, 30.732559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666233, 29.653824, 30.239172>,  <32.550526, 30.363913, 30.098577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666233, 29.653824, 30.239172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360596, 29.776310, 30.466290>,  <32.177212, 29.849802, 30.602560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360596, 29.776310, 30.466290>,  <32.666233, 29.653824, 30.239172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360596, 29.776310, 30.466290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495379, -0.842315, -0.212381,
		0.413229, -0.443553, 0.795300,
		-0.764095, 0.306214, 0.567795,
		32.131367, 29.868174, 30.636629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437332, 29.064507, 30.591173>,  <32.666233, 29.653824, 30.239172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437332, 29.064507, 30.591173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126472, 29.311827, 30.638067>,  <31.939957, 29.460218, 30.666204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126472, 29.311827, 30.638067>,  <32.437332, 29.064507, 30.591173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126472, 29.311827, 30.638067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577580, -0.626802, -0.522992,
		-0.249884, -0.474154, 0.844237,
		-0.777148, 0.618301, 0.117235,
		31.893328, 29.497316, 30.673237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928957, 28.631603, 30.883928>,  <32.437332, 29.064507, 30.591173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928957, 28.631603, 30.883928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778006, 28.954796, 30.702930>,  <31.687435, 29.148712, 30.594332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778006, 28.954796, 30.702930>,  <31.928957, 28.631603, 30.883928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778006, 28.954796, 30.702930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537326, -0.589009, -0.603614,
		-0.754233, 0.015347, 0.656428,
		-0.377378, 0.807981, -0.452496,
		31.664791, 29.197189, 30.567183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177818, 28.371815, 30.724712>,  <31.928957, 28.631603, 30.883928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177818, 28.371815, 30.724712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209358, 28.715446, 30.522419>,  <31.228283, 28.921625, 30.401043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209358, 28.715446, 30.522419>,  <31.177818, 28.371815, 30.724712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209358, 28.715446, 30.522419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407553, -0.435201, -0.802808,
		-0.909771, 0.269417, 0.315803,
		0.078852, 0.859078, -0.505735,
		31.233013, 28.973169, 30.370699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498949, 28.524828, 30.443611>,  <31.177818, 28.371815, 30.724712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498949, 28.524828, 30.443611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795832, 28.673166, 30.220327>,  <30.973961, 28.762169, 30.086357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795832, 28.673166, 30.220327>,  <30.498949, 28.524828, 30.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795832, 28.673166, 30.220327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407616, -0.411351, -0.815254,
		-0.531956, 0.832624, -0.154144,
		0.742207, 0.370848, -0.558212,
		31.018494, 28.784420, 30.052864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178600, 28.778164, 29.784332>,  <30.498949, 28.524828, 30.443611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178600, 28.778164, 29.784332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566463, 28.758041, 29.688643>,  <30.799181, 28.745968, 29.631227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566463, 28.758041, 29.688643>,  <30.178600, 28.778164, 29.784332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566463, 28.758041, 29.688643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235259, -0.457971, -0.857272,
		-0.066430, 0.887542, -0.455912,
		0.969660, -0.050309, -0.239225,
		30.857361, 28.742949, 29.616875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230570, 29.099285, 29.186934>,  <30.178600, 28.778164, 29.784332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230570, 29.099285, 29.186934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538712, 28.844978, 29.206343>,  <30.723597, 28.692394, 29.217989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538712, 28.844978, 29.206343>,  <30.230570, 29.099285, 29.186934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538712, 28.844978, 29.206343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177834, -0.287315, -0.941183,
		0.612316, 0.716414, -0.334395,
		0.770353, -0.635768, 0.048525,
		30.769817, 28.654247, 29.220900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597143, 29.274357, 28.597422>,  <30.230570, 29.099285, 29.186934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597143, 29.274357, 28.597422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704367, 28.914907, 28.736341>,  <30.768702, 28.699238, 28.819695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704367, 28.914907, 28.736341>,  <30.597143, 29.274357, 28.597422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704367, 28.914907, 28.736341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209226, -0.406191, -0.889513,
		0.940409, 0.165778, -0.296899,
		0.268060, -0.898625, 0.347301,
		30.784784, 28.645321, 28.840532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773375, 28.945292, 27.948748>,  <30.597143, 29.274357, 28.597422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773375, 28.945292, 27.948748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715164, 28.656170, 28.218969>,  <30.680239, 28.482697, 28.381102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715164, 28.656170, 28.218969>,  <30.773375, 28.945292, 27.948748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715164, 28.656170, 28.218969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467097, -0.551735, -0.690948,
		0.872148, -0.416100, -0.257329,
		-0.145526, -0.722806, 0.675554,
		30.671507, 28.439327, 28.421635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939676, 28.348656, 27.665533>,  <30.773375, 28.945292, 27.948748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939676, 28.348656, 27.665533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704121, 28.203760, 27.954529>,  <30.562788, 28.116823, 28.127926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704121, 28.203760, 27.954529>,  <30.939676, 28.348656, 27.665533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704121, 28.203760, 27.954529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394517, -0.651360, -0.648141,
		0.705384, -0.666718, 0.240669,
		-0.588889, -0.362240, 0.722490,
		30.527454, 28.095089, 28.171276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987715, 27.704885, 27.577263>,  <30.939676, 28.348656, 27.665533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987715, 27.704885, 27.577263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651222, 27.753006, 27.788113>,  <30.449327, 27.781878, 27.914623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651222, 27.753006, 27.788113>,  <30.987715, 27.704885, 27.577263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651222, 27.753006, 27.788113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477382, -0.622994, -0.619665,
		0.253850, -0.772920, 0.581510,
		-0.841229, 0.120300, 0.527126,
		30.398853, 27.789097, 27.946251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781096, 27.010832, 27.710966>,  <30.987715, 27.704885, 27.577263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781096, 27.010832, 27.710966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459578, 27.247288, 27.737719>,  <30.266666, 27.389160, 27.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459578, 27.247288, 27.737719>,  <30.781096, 27.010832, 27.710966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459578, 27.247288, 27.737719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525945, -0.653570, -0.544268,
		-0.278027, -0.472654, 0.836241,
		-0.803793, 0.591138, 0.066880,
		30.218439, 27.424629, 27.757782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231373, 26.635107, 27.918077>,  <30.781096, 27.010832, 27.710966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231373, 26.635107, 27.918077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061357, 26.949976, 27.739325>,  <29.959349, 27.138897, 27.632072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061357, 26.949976, 27.739325>,  <30.231373, 26.635107, 27.918077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061357, 26.949976, 27.739325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594530, -0.615051, -0.517925,
		-0.682552, 0.045548, 0.729417,
		-0.425038, 0.787171, -0.446884,
		29.933846, 27.186127, 27.605259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546234, 26.320478, 27.835760>,  <30.231373, 26.635107, 27.918077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546234, 26.320478, 27.835760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598234, 26.638880, 27.599295>,  <29.629435, 26.829922, 27.457415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598234, 26.638880, 27.599295>,  <29.546234, 26.320478, 27.835760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598234, 26.638880, 27.599295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498873, -0.462748, -0.732796,
		-0.856870, 0.390180, 0.336949,
		0.130000, 0.796005, -0.591165,
		29.637234, 26.877682, 27.421946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986471, 26.329601, 27.380993>,  <29.546234, 26.320478, 27.835760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986471, 26.329601, 27.380993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247482, 26.562586, 27.187109>,  <29.404089, 26.702377, 27.070778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247482, 26.562586, 27.187109>,  <28.986471, 26.329601, 27.380993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247482, 26.562586, 27.187109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395974, -0.283280, -0.873474,
		-0.646074, 0.761900, 0.045791,
		0.652528, 0.582461, -0.484712,
		29.443241, 26.737324, 27.041695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864197, 27.025898, 27.025311>,  <28.986471, 26.329601, 27.380993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864197, 27.025898, 27.025311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114206, 26.779297, 26.833782>,  <29.264212, 26.631336, 26.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114206, 26.779297, 26.833782>,  <28.864197, 27.025898, 27.025311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114206, 26.779297, 26.833782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658967, -0.087886, -0.747020,
		0.418457, 0.782433, -0.461185,
		0.625025, -0.616502, -0.478821,
		29.301714, 26.594347, 26.690136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859505, 27.217506, 26.376219>,  <28.864197, 27.025898, 27.025311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859505, 27.217506, 26.376219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979372, 26.835972, 26.368298>,  <29.051292, 26.607050, 26.363544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979372, 26.835972, 26.368298>,  <28.859505, 27.217506, 26.376219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979372, 26.835972, 26.368298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639654, -0.185472, -0.745951,
		0.707843, 0.236205, -0.665706,
		0.299668, -0.953838, -0.019804,
		29.069273, 26.549820, 26.362356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453699, 27.843554, 25.918039>,  <28.859505, 27.217506, 26.376219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453699, 27.843554, 25.918039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643671, 28.033051, 25.621389>,  <28.757654, 28.146749, 25.443399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643671, 28.033051, 25.621389>,  <28.453699, 27.843554, 25.918039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643671, 28.033051, 25.621389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389635, -0.642434, -0.659897,
		-0.789068, 0.602367, -0.120523,
		0.474928, 0.473744, -0.741627,
		28.786150, 28.175173, 25.398901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026350, 28.053450, 25.256329>,  <28.453699, 27.843554, 25.918039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026350, 28.053450, 25.256329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406008, 27.983139, 25.151850>,  <28.633802, 27.940952, 25.089163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406008, 27.983139, 25.151850>,  <28.026350, 28.053450, 25.256329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406008, 27.983139, 25.151850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300354, -0.754267, -0.583840,
		-0.094385, 0.632601, -0.768706,
		0.949146, -0.175778, -0.261196,
		28.690752, 27.930407, 25.073490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996572, 27.854973, 24.546757>,  <28.026350, 28.053450, 25.256329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996572, 27.854973, 24.546757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373312, 27.772717, 24.653061>,  <28.599356, 27.723362, 24.716845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373312, 27.772717, 24.653061>,  <27.996572, 27.854973, 24.546757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373312, 27.772717, 24.653061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080404, -0.629994, -0.772427,
		0.326271, 0.748879, -0.576825,
		0.941850, -0.205642, 0.265762,
		28.655867, 27.711023, 24.732790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446222, 27.185644, 24.425468>,  <27.996572, 27.854973, 24.546757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446222, 27.185644, 24.425468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419897, 27.553555, 24.270716>,  <28.404102, 27.774302, 24.177864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419897, 27.553555, 24.270716>,  <28.446222, 27.185644, 24.425468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419897, 27.553555, 24.270716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019054, 0.388813, 0.921120,
		0.997650, 0.053250, -0.043115,
		-0.065813, 0.919777, -0.386884,
		28.400152, 27.829487, 24.154650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031157, 27.416945, 24.370354>,  <28.446222, 27.185644, 24.425468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031157, 27.416945, 24.370354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801579, 27.743895, 24.390295>,  <28.663832, 27.940065, 24.402260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801579, 27.743895, 24.390295>,  <29.031157, 27.416945, 24.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801579, 27.743895, 24.390295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578927, 0.361947, 0.730642,
		0.579166, 0.448208, -0.680938,
		-0.573943, 0.817376, 0.049852,
		28.629396, 27.989107, 24.405251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410477, 27.979841, 24.490191>,  <29.031157, 27.416945, 24.370354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410477, 27.979841, 24.490191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067278, 28.120424, 24.640028>,  <28.861359, 28.204773, 24.729931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067278, 28.120424, 24.640028>,  <29.410477, 27.979841, 24.490191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067278, 28.120424, 24.640028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506828, 0.460761, 0.728577,
		0.083465, 0.814971, -0.573460,
		-0.857997, 0.351457, 0.374593,
		28.809879, 28.225861, 24.752405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452841, 28.746523, 24.435640>,  <29.410477, 27.979841, 24.490191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452841, 28.746523, 24.435640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243406, 28.572449, 24.728617>,  <29.117744, 28.468004, 24.904402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243406, 28.572449, 24.728617>,  <29.452841, 28.746523, 24.435640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243406, 28.572449, 24.728617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419269, 0.616778, 0.666181,
		-0.741666, 0.655894, -0.140477,
		-0.523588, -0.435187, 0.732440,
		29.086330, 28.441893, 24.948349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126080, 29.276178, 24.756157>,  <29.452841, 28.746523, 24.435640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126080, 29.276178, 24.756157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124083, 28.970152, 25.013731>,  <29.122885, 28.786537, 25.168276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124083, 28.970152, 25.013731>,  <29.126080, 29.276178, 24.756157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124083, 28.970152, 25.013731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433287, 0.578700, 0.690918,
		-0.901242, 0.282456, 0.328605,
		-0.004990, -0.765065, 0.643934,
		29.122585, 28.740633, 25.206911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688560, 29.547310, 25.296270>,  <29.126080, 29.276178, 24.756157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688560, 29.547310, 25.296270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909058, 29.255175, 25.457636>,  <29.041355, 29.079893, 25.554455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909058, 29.255175, 25.457636>,  <28.688560, 29.547310, 25.296270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909058, 29.255175, 25.457636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263150, 0.611015, 0.746601,
		-0.791761, -0.305399, 0.529004,
		0.551241, -0.730337, 0.403412,
		29.074430, 29.036074, 25.578659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559711, 29.549059, 26.069473>,  <28.688560, 29.547310, 25.296270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559711, 29.549059, 26.069473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898060, 29.339764, 26.028055>,  <29.101068, 29.214186, 26.003204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898060, 29.339764, 26.028055>,  <28.559711, 29.549059, 26.069473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898060, 29.339764, 26.028055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385656, 0.465849, 0.796401,
		-0.368471, -0.713587, 0.595839,
		0.845872, -0.523239, -0.103547,
		29.151821, 29.182793, 25.996990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800444, 29.331333, 26.782866>,  <28.559711, 29.549059, 26.069473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800444, 29.331333, 26.782866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124622, 29.306881, 26.549820>,  <29.319130, 29.292210, 26.409992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124622, 29.306881, 26.549820>,  <28.800444, 29.331333, 26.782866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124622, 29.306881, 26.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516393, 0.544161, 0.661231,
		0.276613, -0.836750, 0.472582,
		0.810447, -0.061133, -0.582614,
		29.367756, 29.288542, 26.375036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420029, 29.169733, 27.226730>,  <28.800444, 29.331333, 26.782866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420029, 29.169733, 27.226730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577044, 29.347940, 26.904879>,  <29.671253, 29.454865, 26.711767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577044, 29.347940, 26.904879>,  <29.420029, 29.169733, 27.226730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577044, 29.347940, 26.904879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586986, 0.552159, 0.592089,
		0.708070, -0.704722, -0.044772,
		0.392536, 0.445521, -0.804628,
		29.694805, 29.481596, 26.663490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122892, 28.980190, 27.220873>,  <29.420029, 29.169733, 27.226730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122892, 28.980190, 27.220873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080019, 29.306971, 26.994207>,  <30.054295, 29.503038, 26.858208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080019, 29.306971, 26.994207>,  <30.122892, 28.980190, 27.220873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080019, 29.306971, 26.994207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655992, 0.486393, 0.577145,
		0.747119, -0.309866, -0.588045,
		-0.107184, 0.816949, -0.566663,
		30.047863, 29.552055, 26.824209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757727, 29.341816, 27.236727>,  <30.122892, 28.980190, 27.220873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757727, 29.341816, 27.236727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530954, 29.638462, 27.093287>,  <30.394892, 29.816450, 27.007221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530954, 29.638462, 27.093287>,  <30.757727, 29.341816, 27.236727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530954, 29.638462, 27.093287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551887, 0.665123, 0.503022,
		0.611564, 0.087270, -0.786367,
		-0.566930, 0.741616, -0.358602,
		30.360876, 29.860947, 26.985706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200613, 29.880606, 26.840849>,  <30.757727, 29.341816, 27.236727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200613, 29.880606, 26.840849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875494, 30.086582, 26.949800>,  <30.680422, 30.210169, 27.015171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875494, 30.086582, 26.949800>,  <31.200613, 29.880606, 26.840849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875494, 30.086582, 26.949800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581640, 0.743388, 0.330257,
		-0.032421, 0.426859, -0.903737,
		-0.812800, 0.514943, 0.272380,
		30.631655, 30.241064, 27.031515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341724, 30.478571, 26.646950>,  <31.200613, 29.880606, 26.840849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341724, 30.478571, 26.646950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050716, 30.534897, 26.915543>,  <30.876112, 30.568691, 27.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050716, 30.534897, 26.915543>,  <31.341724, 30.478571, 26.646950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050716, 30.534897, 26.915543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532501, 0.733025, 0.423222,
		-0.432617, 0.665467, -0.608274,
		-0.727520, 0.140813, 0.671481,
		30.832460, 30.577141, 27.116987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176262, 31.267445, 26.645267>,  <31.341724, 30.478571, 26.646950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176262, 31.267445, 26.645267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038553, 31.121836, 26.991438>,  <30.955929, 31.034470, 27.199141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038553, 31.121836, 26.991438>,  <31.176262, 31.267445, 26.645267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038553, 31.121836, 26.991438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387105, 0.784742, 0.484076,
		-0.855353, 0.501664, -0.129248,
		-0.344270, -0.364023, 0.865428,
		30.935272, 31.012629, 27.251066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856735, 31.860170, 26.967150>,  <31.176262, 31.267445, 26.645267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856735, 31.860170, 26.967150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902637, 31.596018, 27.263994>,  <30.930180, 31.437527, 27.442101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902637, 31.596018, 27.263994>,  <30.856735, 31.860170, 26.967150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902637, 31.596018, 27.263994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443450, 0.702537, 0.556592,
		-0.888922, 0.265216, 0.373466,
		0.114757, -0.660380, 0.742111,
		30.937065, 31.397903, 27.486628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626684, 32.191753, 27.560871>,  <30.856735, 31.860170, 26.967150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626684, 32.191753, 27.560871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869560, 31.904953, 27.697823>,  <31.015285, 31.732872, 27.779993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869560, 31.904953, 27.697823>,  <30.626684, 32.191753, 27.560871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869560, 31.904953, 27.697823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584822, 0.694993, 0.418292,
		-0.537869, -0.053753, 0.841313,
		0.607191, -0.717005, 0.342379,
		31.051718, 31.689852, 27.800537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799236, 32.309078, 28.213646>,  <30.626684, 32.191753, 27.560871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799236, 32.309078, 28.213646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094250, 32.046066, 28.152060>,  <31.271257, 31.888260, 28.115107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094250, 32.046066, 28.152060>,  <30.799236, 32.309078, 28.213646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094250, 32.046066, 28.152060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566713, 0.478632, 0.670632,
		-0.367264, -0.581868, 0.725635,
		0.737532, -0.657526, -0.153968,
		31.315510, 31.848808, 28.105869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107122, 32.180546, 28.833620>,  <30.799236, 32.309078, 28.213646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107122, 32.180546, 28.833620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403952, 32.084843, 28.583155>,  <31.582050, 32.027420, 28.432875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403952, 32.084843, 28.583155>,  <31.107122, 32.180546, 28.833620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403952, 32.084843, 28.583155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666322, 0.365136, 0.650146,
		0.073079, -0.899683, 0.430383,
		0.742074, -0.239262, -0.626163,
		31.626574, 32.013065, 28.395306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639805, 31.892262, 29.204000>,  <31.107122, 32.180546, 28.833620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639805, 31.892262, 29.204000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826874, 32.027515, 28.877335>,  <31.939116, 32.108669, 28.681335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826874, 32.027515, 28.877335>,  <31.639805, 31.892262, 29.204000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826874, 32.027515, 28.877335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674338, 0.460835, 0.576974,
		0.571445, -0.820545, -0.012499,
		0.467673, 0.338137, -0.816667,
		31.967176, 32.128956, 28.632334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302212, 32.070225, 29.442451>,  <31.639805, 31.892262, 29.204000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302212, 32.070225, 29.442451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265495, 32.263634, 29.094250>,  <32.243465, 32.379681, 28.885328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265495, 32.263634, 29.094250>,  <32.302212, 32.070225, 29.442451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265495, 32.263634, 29.094250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651234, 0.690478, 0.314858,
		0.753305, -0.538000, -0.378269,
		-0.091793, 0.483525, -0.870504,
		32.237957, 32.408691, 28.833099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016041, 32.112057, 29.171637>,  <32.302212, 32.070225, 29.442451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016041, 32.112057, 29.171637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777180, 32.386501, 29.005428>,  <32.633862, 32.551167, 28.905704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777180, 32.386501, 29.005428>,  <33.016041, 32.112057, 29.171637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777180, 32.386501, 29.005428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630616, 0.721707, 0.285415,
		0.495709, -0.091596, -0.863645,
		-0.597156, 0.686111, -0.415519,
		32.598034, 32.592335, 28.880772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434963, 32.651501, 28.931988>,  <33.016041, 32.112057, 29.171637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434963, 32.651501, 28.931988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083233, 32.840996, 28.912561>,  <32.872196, 32.954693, 28.900906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083233, 32.840996, 28.912561>,  <33.434963, 32.651501, 28.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083233, 32.840996, 28.912561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404040, 0.796138, 0.450463,
		0.252064, 0.376482, -0.891473,
		-0.879327, 0.473736, -0.048564,
		32.819435, 32.983116, 28.897993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527195, 33.369755, 28.752836>,  <33.434963, 32.651501, 28.931988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527195, 33.369755, 28.752836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171398, 33.389328, 28.934563>,  <32.957920, 33.401070, 29.043598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171398, 33.389328, 28.934563>,  <33.527195, 33.369755, 28.752836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171398, 33.389328, 28.934563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288690, 0.830862, 0.475737,
		-0.354197, 0.554323, -0.753174,
		-0.889496, 0.048929, 0.454316,
		32.904549, 33.404007, 29.070858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423874, 34.140831, 28.924990>,  <33.527195, 33.369755, 28.752836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423874, 34.140831, 28.924990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131012, 33.972160, 29.138956>,  <32.955296, 33.870956, 29.267336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131012, 33.972160, 29.138956>,  <33.423874, 34.140831, 28.924990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131012, 33.972160, 29.138956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239221, 0.576112, 0.781580,
		-0.637745, 0.700203, -0.320932,
		-0.732158, -0.421675, 0.534916,
		32.911366, 33.845657, 29.299431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031685, 34.667538, 29.214172>,  <33.423874, 34.140831, 28.924990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031685, 34.667538, 29.214172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974365, 34.358585, 29.461687>,  <32.939972, 34.173214, 29.610195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974365, 34.358585, 29.461687>,  <33.031685, 34.667538, 29.214172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974365, 34.358585, 29.461687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126633, 0.605789, 0.785483,
		-0.981544, 0.190919, 0.010999,
		-0.143300, -0.772379, 0.618785,
		32.931374, 34.126873, 29.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594734, 34.995930, 29.697659>,  <33.031685, 34.667538, 29.214172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594734, 34.995930, 29.697659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728714, 34.657394, 29.863319>,  <32.809101, 34.454273, 29.962717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728714, 34.657394, 29.863319>,  <32.594734, 34.995930, 29.697659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728714, 34.657394, 29.863319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071611, 0.461137, 0.884434,
		-0.939511, -0.266583, 0.215065,
		0.334950, -0.846336, 0.414153,
		32.829201, 34.403492, 29.987566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239082, 34.874100, 30.377663>,  <32.594734, 34.995930, 29.697659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239082, 34.874100, 30.377663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582928, 34.669720, 30.377016>,  <32.789234, 34.547092, 30.376629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582928, 34.669720, 30.377016>,  <32.239082, 34.874100, 30.377663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582928, 34.669720, 30.377016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289333, 0.484161, 0.825757,
		-0.421137, -0.710296, 0.564024,
		0.859610, -0.510948, -0.001615,
		32.840813, 34.516434, 30.376532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369263, 34.718254, 31.133785>,  <32.239082, 34.874100, 30.377663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369263, 34.718254, 31.133785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 34.663315, 30.962753>,  <32.941093, 34.630352, 30.860134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726658, 34.663315, 30.962753>,  <32.369263, 34.718254, 31.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726658, 34.663315, 30.962753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419008, 0.597569, 0.683626,
		0.161614, -0.789967, 0.591467,
		0.893484, -0.137346, -0.427578,
		32.994701, 34.622112, 30.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731503, 34.572968, 31.620184>,  <32.369263, 34.718254, 31.133785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731503, 34.572968, 31.620184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987911, 34.679775, 31.332354>,  <33.141758, 34.743858, 31.159657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987911, 34.679775, 31.332354>,  <32.731503, 34.572968, 31.620184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987911, 34.679775, 31.332354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633229, 0.345791, 0.692423,
		0.433713, -0.899516, 0.052575,
		0.641025, 0.267021, -0.719574,
		33.180218, 34.759880, 31.116482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454838, 34.376083, 31.856714>,  <32.731503, 34.572968, 31.620184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454838, 34.376083, 31.856714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472572, 34.664486, 31.580111>,  <33.483215, 34.837528, 31.414148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472572, 34.664486, 31.580111>,  <33.454838, 34.376083, 31.856714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472572, 34.664486, 31.580111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887940, 0.288765, 0.358018,
		0.457817, -0.629893, -0.627407,
		0.044340, 0.721006, -0.691509,
		33.485874, 34.880787, 31.372658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245792, 34.432587, 31.593531>,  <33.454838, 34.376083, 31.856714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245792, 34.432587, 31.593531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 34.768978, 31.542742>,  <33.909176, 34.970814, 31.512268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 34.768978, 31.542742>,  <34.245792, 34.432587, 31.593531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035408, 34.768978, 31.542742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728958, 0.522651, 0.442104,
		0.438163, 0.139971, -0.887931,
		-0.525959, 0.840978, -0.126973,
		33.877621, 35.021271, 31.504650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808998, 34.957531, 31.600838>,  <34.245792, 34.432587, 31.593531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808998, 34.957531, 31.600838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469433, 35.166649, 31.631897>,  <34.265694, 35.292118, 31.650532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469433, 35.166649, 31.631897>,  <34.808998, 34.957531, 31.600838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469433, 35.166649, 31.631897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466717, 0.672558, 0.574319,
		0.248028, 0.523787, -0.814941,
		-0.848916, 0.522794, 0.077647,
		34.214760, 35.323486, 31.655191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901287, 35.620857, 31.279884>,  <34.808998, 34.957531, 31.600838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901287, 35.620857, 31.279884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610744, 35.659897, 31.552025>,  <34.436417, 35.683323, 31.715309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610744, 35.659897, 31.552025>,  <34.901287, 35.620857, 31.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610744, 35.659897, 31.552025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612018, 0.542320, 0.575607,
		-0.312788, 0.834483, -0.453653,
		-0.726360, 0.097601, 0.680350,
		34.392838, 35.689178, 31.756130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099735, 36.191376, 31.505341>,  <34.901287, 35.620857, 31.279884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099735, 36.191376, 31.505341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827656, 36.076824, 31.775248>,  <34.664406, 36.008091, 31.937191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827656, 36.076824, 31.775248>,  <35.099735, 36.191376, 31.505341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827656, 36.076824, 31.775248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429060, 0.590810, 0.683266,
		-0.594334, 0.754274, -0.278995,
		-0.680202, -0.286383, 0.674767,
		34.623596, 35.990910, 31.977678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811062, 36.871529, 31.894619>,  <35.099735, 36.191376, 31.505341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811062, 36.871529, 31.894619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763817, 36.556885, 32.137039>,  <34.735470, 36.368099, 32.282494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763817, 36.556885, 32.137039>,  <34.811062, 36.871529, 31.894619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763817, 36.556885, 32.137039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379154, 0.528357, 0.759659,
		-0.917764, 0.319516, 0.235837,
		-0.118117, -0.786606, 0.606053,
		34.728382, 36.320904, 32.318855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395878, 37.037670, 32.352703>,  <34.811062, 36.871529, 31.894619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395878, 37.037670, 32.352703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570541, 36.745792, 32.563179>,  <34.675339, 36.570667, 32.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570541, 36.745792, 32.563179>,  <34.395878, 37.037670, 32.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570541, 36.745792, 32.563179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065042, 0.608979, 0.790515,
		-0.897272, -0.310961, 0.313377,
		0.436660, -0.729690, 0.526194,
		34.701538, 36.526886, 32.721039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011459, 37.145378, 32.917515>,  <34.395878, 37.037670, 32.352703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011459, 37.145378, 32.917515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362038, 36.964298, 32.983112>,  <34.572384, 36.855648, 33.022472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362038, 36.964298, 32.983112>,  <34.011459, 37.145378, 32.917515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362038, 36.964298, 32.983112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242815, 0.709679, 0.661359,
		-0.415785, -0.539827, 0.731922,
		0.876449, -0.452704, 0.163996,
		34.624973, 36.828487, 33.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085068, 37.341599, 33.531826>,  <34.011459, 37.145378, 32.917515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085068, 37.341599, 33.531826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436951, 37.175888, 33.438446>,  <34.648079, 37.076462, 33.382420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436951, 37.175888, 33.438446>,  <34.085068, 37.341599, 33.531826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436951, 37.175888, 33.438446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436767, 0.509807, 0.741169,
		-0.188034, -0.753971, 0.629421,
		0.879703, -0.414275, -0.233449,
		34.700863, 37.051605, 33.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403091, 37.072376, 34.072922>,  <34.085068, 37.341599, 33.531826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403091, 37.072376, 34.072922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718506, 37.148376, 33.838959>,  <34.907753, 37.193977, 33.698582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718506, 37.148376, 33.838959>,  <34.403091, 37.072376, 34.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718506, 37.148376, 33.838959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446126, 0.477913, 0.756684,
		0.423308, -0.857611, 0.292083,
		0.788531, 0.190005, -0.584908,
		34.955067, 37.205376, 33.663486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960609, 36.960155, 34.450874>,  <34.403091, 37.072376, 34.072922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960609, 36.960155, 34.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086086, 37.192623, 34.150517>,  <35.161373, 37.332104, 33.970303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086086, 37.192623, 34.150517>,  <34.960609, 36.960155, 34.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086086, 37.192623, 34.150517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561724, 0.523998, 0.640228,
		0.765548, -0.622627, -0.162086,
		0.313691, 0.581173, -0.750890,
		35.180195, 37.366974, 33.925251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680695, 37.065704, 34.616367>,  <34.960609, 36.960155, 34.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680695, 37.065704, 34.616367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584816, 37.357723, 34.360374>,  <35.527287, 37.532936, 34.206779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584816, 37.357723, 34.360374>,  <35.680695, 37.065704, 34.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584816, 37.357723, 34.360374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671620, 0.600699, 0.433689,
		0.701050, -0.325870, -0.634301,
		-0.239698, 0.730047, -0.639981,
		35.512905, 37.576736, 34.168381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308628, 37.344067, 34.498047>,  <35.680695, 37.065704, 34.616367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308628, 37.344067, 34.498047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033161, 37.615494, 34.395844>,  <35.867882, 37.778351, 34.334522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033161, 37.615494, 34.395844>,  <36.308628, 37.344067, 34.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033161, 37.615494, 34.395844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589647, 0.729188, 0.347277,
		0.421965, 0.088499, -0.902283,
		-0.688667, 0.678566, -0.255509,
		35.826561, 37.819065, 34.319191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689224, 37.918633, 34.173470>,  <36.308628, 37.344067, 34.498047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689224, 37.918633, 34.173470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346886, 38.083530, 34.298420>,  <36.141483, 38.182468, 34.373390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346886, 38.083530, 34.298420>,  <36.689224, 37.918633, 34.173470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346886, 38.083530, 34.298420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501492, 0.809214, 0.306071,
		-0.126601, 0.418603, -0.899302,
		-0.855849, 0.412244, 0.312373,
		36.090130, 38.207203, 34.392132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726128, 38.696442, 33.961597>,  <36.689224, 37.918633, 34.173470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726128, 38.696442, 33.961597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445454, 38.662876, 34.244610>,  <36.277050, 38.642738, 34.414417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445454, 38.662876, 34.244610>,  <36.726128, 38.696442, 33.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445454, 38.662876, 34.244610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390414, 0.785401, 0.480335,
		-0.595999, 0.613273, -0.518345,
		-0.701686, -0.083910, 0.707529,
		36.234947, 38.637703, 34.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350872, 38.203613, 33.498268>,  <36.726128, 38.696442, 33.961597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350872, 38.203613, 33.498268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729012, 38.229137, 33.370365>,  <36.955894, 38.244450, 33.293625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729012, 38.229137, 33.370365>,  <36.350872, 38.203613, 33.498268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729012, 38.229137, 33.370365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267158, -0.410619, -0.871790,
		-0.186923, 0.909572, -0.371132,
		0.945350, 0.063807, -0.319753,
		37.012615, 38.248280, 33.274441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286060, 38.423840, 32.863285>,  <36.350872, 38.203613, 33.498268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286060, 38.423840, 32.863285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660339, 38.285110, 32.837425>,  <36.884907, 38.201874, 32.821911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660339, 38.285110, 32.837425>,  <36.286060, 38.423840, 32.863285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660339, 38.285110, 32.837425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251861, -0.528379, -0.810791,
		0.247042, 0.774939, -0.581756,
		0.935701, -0.346820, -0.064645,
		36.941051, 38.181065, 32.818031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457344, 38.584900, 32.138371>,  <36.286060, 38.423840, 32.863285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457344, 38.584900, 32.138371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714333, 38.309837, 32.273636>,  <36.868526, 38.144798, 32.354797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714333, 38.309837, 32.273636>,  <36.457344, 38.584900, 32.138371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714333, 38.309837, 32.273636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127363, -0.530976, -0.837761,
		0.755652, 0.495167, -0.428718,
		0.642471, -0.687659, 0.338167,
		36.907074, 38.103539, 32.375088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950344, 38.512726, 31.626255>,  <36.457344, 38.584900, 32.138371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950344, 38.512726, 31.626255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011173, 38.167892, 31.819618>,  <37.047668, 37.960991, 31.935637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011173, 38.167892, 31.819618>,  <36.950344, 38.512726, 31.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011173, 38.167892, 31.819618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147318, -0.503401, -0.851401,
		0.977329, 0.058257, -0.203553,
		0.152069, -0.862086, 0.483406,
		37.056793, 37.909267, 31.964640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466301, 38.157410, 31.236607>,  <36.950344, 38.512726, 31.626255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466301, 38.157410, 31.236607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234776, 37.902046, 31.439550>,  <37.095860, 37.748829, 31.561317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234776, 37.902046, 31.439550>,  <37.466301, 38.157410, 31.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234776, 37.902046, 31.439550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021099, -0.610244, -0.791932,
		0.815187, -0.469086, 0.339748,
		-0.578813, -0.638405, 0.507361,
		37.061131, 37.710526, 31.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767807, 37.532227, 31.072977>,  <37.466301, 38.157410, 31.236607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767807, 37.532227, 31.072977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417347, 37.399574, 31.212914>,  <37.207073, 37.319984, 31.296875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417347, 37.399574, 31.212914>,  <37.767807, 37.532227, 31.072977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417347, 37.399574, 31.212914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, -0.516509, -0.844477,
		0.460751, -0.789455, 0.405547,
		-0.876145, -0.331630, 0.349843,
		37.154503, 37.300087, 31.317867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671291, 36.891739, 30.800911>,  <37.767807, 37.532227, 31.072977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671291, 36.891739, 30.800911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297310, 36.992767, 30.900564>,  <37.072922, 37.053383, 30.960356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297310, 36.992767, 30.900564>,  <37.671291, 36.891739, 30.800911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297310, 36.992767, 30.900564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354738, -0.656708, -0.665504,
		-0.004475, -0.710594, 0.703588,
		-0.934955, 0.252568, 0.249136,
		37.016823, 37.068539, 30.975306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298740, 36.272400, 31.040852>,  <37.671291, 36.891739, 30.800911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298740, 36.272400, 31.040852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015682, 36.532787, 30.930952>,  <36.845848, 36.689018, 30.865013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015682, 36.532787, 30.930952>,  <37.298740, 36.272400, 31.040852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015682, 36.532787, 30.930952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371562, -0.673581, -0.638928,
		-0.600985, -0.350047, 0.718529,
		-0.707643, 0.650965, -0.274748,
		36.803391, 36.728077, 30.848528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601250, 35.953156, 31.087358>,  <37.298740, 36.272400, 31.040852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601250, 35.953156, 31.087358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577614, 36.253399, 30.824120>,  <36.563431, 36.433544, 30.666176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577614, 36.253399, 30.824120>,  <36.601250, 35.953156, 31.087358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577614, 36.253399, 30.824120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389913, -0.624235, -0.676977,
		-0.918954, 0.216598, 0.329559,
		-0.059090, 0.750610, -0.658098,
		36.559887, 36.478580, 30.626690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948761, 35.877972, 30.746260>,  <36.601250, 35.953156, 31.087358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948761, 35.877972, 30.746260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172882, 36.107517, 30.507345>,  <36.307354, 36.245243, 30.363997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172882, 36.107517, 30.507345>,  <35.948761, 35.877972, 30.746260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172882, 36.107517, 30.507345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336129, -0.501528, -0.797174,
		-0.757021, 0.647421, -0.088115,
		0.560300, 0.573860, -0.597285,
		36.340973, 36.279675, 30.328159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598312, 35.759804, 30.159222>,  <35.948761, 35.877972, 30.746260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598312, 35.759804, 30.159222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928883, 35.920498, 30.001419>,  <36.127224, 36.016914, 29.906738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928883, 35.920498, 30.001419>,  <35.598312, 35.759804, 30.159222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928883, 35.920498, 30.001419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298564, -0.281373, -0.911969,
		-0.477372, 0.871458, -0.112590,
		0.826423, 0.401734, -0.394506,
		36.176811, 36.041019, 29.883068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331108, 36.142685, 29.632904>,  <35.598312, 35.759804, 30.159222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331108, 36.142685, 29.632904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716515, 36.097393, 29.535902>,  <35.947758, 36.070217, 29.477701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716515, 36.097393, 29.535902>,  <35.331108, 36.142685, 29.632904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716515, 36.097393, 29.535902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265300, -0.284618, -0.921199,
		0.035290, 0.951930, -0.304276,
		0.963520, -0.113234, -0.242503,
		36.005569, 36.063423, 29.463152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448193, 36.403976, 28.999620>,  <35.331108, 36.142685, 29.632904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448193, 36.403976, 28.999620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756054, 36.152538, 29.044331>,  <35.940773, 36.001675, 29.071157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756054, 36.152538, 29.044331>,  <35.448193, 36.403976, 28.999620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756054, 36.152538, 29.044331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145944, -0.343655, -0.927686,
		0.621553, 0.697688, -0.356236,
		0.769657, -0.628596, 0.111777,
		35.986950, 35.963959, 29.077864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766167, 36.270737, 28.338428>,  <35.448193, 36.403976, 28.999620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766167, 36.270737, 28.338428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903660, 35.962189, 28.552654>,  <35.986156, 35.777061, 28.681190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903660, 35.962189, 28.552654>,  <35.766167, 36.270737, 28.338428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903660, 35.962189, 28.552654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074733, -0.590979, -0.803218,
		0.936087, 0.236072, -0.260788,
		0.343737, -0.771371, 0.535566,
		36.006783, 35.730778, 28.713324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291336, 35.863781, 27.952440>,  <35.766167, 36.270737, 28.338428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291336, 35.863781, 27.952440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114223, 35.638222, 28.231283>,  <36.007954, 35.502888, 28.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114223, 35.638222, 28.231283>,  <36.291336, 35.863781, 27.952440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114223, 35.638222, 28.231283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364149, -0.597375, -0.714520,
		0.819352, -0.570230, 0.059166,
		-0.442785, -0.563898, 0.697109,
		35.981388, 35.469051, 28.440416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348164, 35.286224, 27.632500>,  <36.291336, 35.863781, 27.952440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348164, 35.286224, 27.632500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097107, 35.207428, 27.933767>,  <35.946472, 35.160149, 28.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097107, 35.207428, 27.933767>,  <36.348164, 35.286224, 27.632500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097107, 35.207428, 27.933767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329271, -0.809491, -0.486113,
		0.705444, -0.553100, 0.443204,
		-0.627638, -0.196991, 0.753170,
		35.908813, 35.148331, 28.159718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461357, 34.578735, 27.843266>,  <36.348164, 35.286224, 27.632500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461357, 34.578735, 27.843266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087234, 34.659458, 27.959518>,  <35.862759, 34.707890, 28.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087234, 34.659458, 27.959518>,  <36.461357, 34.578735, 27.843266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087234, 34.659458, 27.959518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310047, -0.863217, -0.398407,
		0.170480, -0.462745, 0.869945,
		-0.935311, 0.201803, 0.290634,
		35.806641, 34.719997, 28.046709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159077, 33.947441, 28.218426>,  <36.461357, 34.578735, 27.843266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159077, 33.947441, 28.218426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845856, 34.173470, 28.114487>,  <35.657925, 34.309086, 28.052124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845856, 34.173470, 28.114487>,  <36.159077, 33.947441, 28.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845856, 34.173470, 28.114487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437060, -0.797186, -0.416501,
		-0.442499, -0.212575, 0.871210,
		-0.783054, 0.565072, -0.259846,
		35.610939, 34.342991, 28.036533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579586, 33.557865, 28.481077>,  <36.159077, 33.947441, 28.218426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579586, 33.557865, 28.481077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480656, 33.808228, 28.185221>,  <35.421299, 33.958447, 28.007706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480656, 33.808228, 28.185221>,  <35.579586, 33.557865, 28.481077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480656, 33.808228, 28.185221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462791, -0.746967, -0.477353,
		-0.851266, 0.224238, 0.474408,
		-0.247326, 0.625906, -0.739643,
		35.406456, 33.995998, 27.963327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866478, 33.461792, 28.442942>,  <35.579586, 33.557865, 28.481077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866478, 33.461792, 28.442942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980564, 33.599915, 28.085302>,  <35.049015, 33.682789, 27.870718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980564, 33.599915, 28.085302>,  <34.866478, 33.461792, 28.442942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980564, 33.599915, 28.085302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391082, -0.809733, -0.437479,
		-0.875046, 0.474443, -0.095909,
		0.285219, 0.345306, -0.894099,
		35.066132, 33.703506, 27.817072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304634, 33.301228, 28.066851>,  <34.866478, 33.461792, 28.442942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304634, 33.301228, 28.066851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560543, 33.388428, 27.772051>,  <34.714088, 33.440746, 27.595171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560543, 33.388428, 27.772051>,  <34.304634, 33.301228, 28.066851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560543, 33.388428, 27.772051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459421, -0.660275, -0.594113,
		-0.616137, 0.718690, -0.322272,
		0.639771, 0.217996, -0.737001,
		34.752476, 33.453827, 27.550951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936653, 33.652275, 27.451170>,  <34.304634, 33.301228, 28.066851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936653, 33.652275, 27.451170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266785, 33.449604, 27.351490>,  <34.464863, 33.327999, 27.291681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266785, 33.449604, 27.351490>,  <33.936653, 33.652275, 27.451170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266785, 33.449604, 27.351490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546129, -0.604211, -0.580234,
		0.143425, 0.614981, -0.775388,
		0.825332, -0.506682, -0.249200,
		34.514385, 33.297600, 27.276730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928722, 33.556923, 26.835192>,  <33.936653, 33.652275, 27.451170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928722, 33.556923, 26.835192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188194, 33.273193, 26.945518>,  <34.343880, 33.102955, 27.011715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188194, 33.273193, 26.945518>,  <33.928722, 33.556923, 26.835192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188194, 33.273193, 26.945518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559411, -0.690118, -0.459126,
		0.516014, 0.143532, -0.844469,
		0.648683, -0.709320, 0.275817,
		34.382797, 33.060398, 27.028263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907692, 33.095497, 26.315781>,  <33.928722, 33.556923, 26.835192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907692, 33.095497, 26.315781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112900, 32.884785, 26.586872>,  <34.236023, 32.758358, 26.749527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112900, 32.884785, 26.586872>,  <33.907692, 33.095497, 26.315781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112900, 32.884785, 26.586872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276889, -0.848898, -0.450227,
		0.812493, 0.043319, -0.581359,
		0.513018, -0.526778, 0.677729,
		34.266804, 32.726749, 26.790192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457367, 32.651283, 25.975992>,  <33.907692, 33.095497, 26.315781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457367, 32.651283, 25.975992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313671, 32.481457, 26.308422>,  <34.227455, 32.379559, 26.507879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313671, 32.481457, 26.308422>,  <34.457367, 32.651283, 25.975992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313671, 32.481457, 26.308422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369010, -0.753328, -0.544361,
		0.857192, -0.502231, 0.113955,
		-0.359241, -0.424571, 0.831075,
		34.205898, 32.354084, 26.557745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514248, 31.963015, 25.931370>,  <34.457367, 32.651283, 25.975992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514248, 31.963015, 25.931370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255489, 31.945335, 26.235888>,  <34.100235, 31.934729, 26.418598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255489, 31.945335, 26.235888>,  <34.514248, 31.963015, 25.931370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255489, 31.945335, 26.235888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417817, -0.814594, -0.402325,
		0.637926, -0.578345, 0.508495,
		-0.646900, -0.044196, 0.761293,
		34.061420, 31.932077, 26.464275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477924, 31.284843, 26.400944>,  <34.514248, 31.963015, 25.931370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477924, 31.284843, 26.400944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116863, 31.456474, 26.414242>,  <33.900227, 31.559452, 26.422220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116863, 31.456474, 26.414242>,  <34.477924, 31.284843, 26.400944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116863, 31.456474, 26.414242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417867, -0.855351, -0.306205,
		-0.102949, -0.290290, 0.951385,
		-0.902657, 0.429075, 0.033245,
		33.846066, 31.585197, 26.424215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029892, 30.760540, 26.601120>,  <34.477924, 31.284843, 26.400944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029892, 30.760540, 26.601120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750740, 31.019285, 26.478136>,  <33.583248, 31.174532, 26.404345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750740, 31.019285, 26.478136>,  <34.029892, 30.760540, 26.601120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750740, 31.019285, 26.478136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509569, -0.750110, -0.421515,
		-0.503291, -0.137494, 0.853108,
		-0.697880, 0.646862, -0.307461,
		33.541374, 31.213345, 26.385899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416763, 30.526165, 26.718830>,  <34.029892, 30.760540, 26.601120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416763, 30.526165, 26.718830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294415, 30.768682, 26.425203>,  <33.221004, 30.914192, 26.249027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294415, 30.768682, 26.425203>,  <33.416763, 30.526165, 26.718830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294415, 30.768682, 26.425203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495672, -0.759694, -0.420922,
		-0.812867, 0.235108, 0.532890,
		-0.305871, 0.606292, -0.734066,
		33.202652, 30.950571, 26.204983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763977, 30.290667, 26.709225>,  <33.416763, 30.526165, 26.718830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763977, 30.290667, 26.709225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811607, 30.521812, 26.386265>,  <32.840187, 30.660500, 26.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811607, 30.521812, 26.386265>,  <32.763977, 30.290667, 26.709225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811607, 30.521812, 26.386265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466841, -0.685104, -0.559188,
		-0.876288, 0.443512, 0.188193,
		0.119075, 0.577866, -0.807398,
		32.847328, 30.695171, 26.144045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191368, 30.241423, 26.377361>,  <32.763977, 30.290667, 26.709225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191368, 30.241423, 26.377361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438263, 30.352446, 26.082886>,  <32.586399, 30.419060, 25.906200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438263, 30.352446, 26.082886>,  <32.191368, 30.241423, 26.377361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438263, 30.352446, 26.082886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494635, -0.590763, -0.637445,
		-0.611841, 0.757602, -0.227354,
		0.617242, 0.277558, -0.736189,
		32.623436, 30.435713, 25.862028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755947, 30.258923, 25.721746>,  <32.191368, 30.241423, 26.377361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755947, 30.258923, 25.721746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134914, 30.227053, 25.597776>,  <32.362293, 30.207932, 25.523394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134914, 30.227053, 25.597776>,  <31.755947, 30.258923, 25.721746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134914, 30.227053, 25.597776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297748, -0.574351, -0.762540,
		-0.117252, 0.814723, -0.567872,
		0.947416, -0.079674, -0.309926,
		32.419140, 30.203150, 25.504799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681900, 30.213072, 25.035269>,  <31.755947, 30.258923, 25.721746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681900, 30.213072, 25.035269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053013, 30.081793, 25.106264>,  <32.275681, 30.003025, 25.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053013, 30.081793, 25.106264>,  <31.681900, 30.213072, 25.035269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053013, 30.081793, 25.106264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081871, -0.643165, -0.761339,
		0.364024, 0.691827, -0.623588,
		0.927784, -0.328199, 0.177487,
		32.331348, 29.983334, 25.159510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026237, 30.104973, 24.390463>,  <31.681900, 30.213072, 25.035269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026237, 30.104973, 24.390463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243202, 29.868742, 24.629465>,  <32.373379, 29.727003, 24.772867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243202, 29.868742, 24.629465>,  <32.026237, 30.104973, 24.390463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243202, 29.868742, 24.629465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061694, -0.737299, -0.672744,
		0.837846, 0.328039, -0.436352,
		0.542409, -0.590577, 0.597505,
		32.405926, 29.691568, 24.808716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354855, 29.660143, 23.915413>,  <32.026237, 30.104973, 24.390463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354855, 29.660143, 23.915413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376030, 29.500164, 24.281416>,  <32.388737, 29.404177, 24.501019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376030, 29.500164, 24.281416>,  <32.354855, 29.660143, 23.915413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376030, 29.500164, 24.281416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336572, -0.869825, -0.360726,
		0.940168, -0.288869, -0.180661,
		0.052941, -0.399949, 0.915007,
		32.391911, 29.380180, 24.555918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580830, 29.045446, 23.818075>,  <32.354855, 29.660143, 23.915413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580830, 29.045446, 23.818075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420444, 28.999866, 24.181667>,  <32.324215, 28.972519, 24.399822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420444, 28.999866, 24.181667>,  <32.580830, 29.045446, 23.818075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420444, 28.999866, 24.181667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356539, -0.894591, -0.269420,
		0.843865, -0.432114, 0.318070,
		-0.400962, -0.113950, 0.908980,
		32.300156, 28.965681, 24.454361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762581, 28.271236, 23.955114>,  <32.580830, 29.045446, 23.818075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762581, 28.271236, 23.955114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466503, 28.393560, 24.194645>,  <32.288857, 28.466955, 24.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466503, 28.393560, 24.194645>,  <32.762581, 28.271236, 23.955114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466503, 28.393560, 24.194645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435148, -0.896808, -0.079890,
		0.512600, -0.319712, 0.796885,
		-0.740194, 0.305811, 0.598826,
		32.244446, 28.485304, 24.374292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660362, 27.821590, 24.558554>,  <32.762581, 28.271236, 23.955114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660362, 27.821590, 24.558554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303810, 28.000732, 24.530659>,  <32.089878, 28.108217, 24.513922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303810, 28.000732, 24.530659>,  <32.660362, 27.821590, 24.558554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303810, 28.000732, 24.530659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447017, -0.894085, -0.028077,
		-0.074925, 0.006146, 0.997170,
		-0.891382, 0.447856, -0.069737,
		32.036396, 28.135090, 24.509737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244953, 27.677389, 24.150883>,  <32.660362, 27.821590, 24.558554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244953, 27.677389, 24.150883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612522, 27.525064, 24.109776>,  <33.833065, 27.433670, 24.085112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612522, 27.525064, 24.109776>,  <33.244953, 27.677389, 24.150883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612522, 27.525064, 24.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373470, 0.756230, 0.537249,
		-0.126875, -0.532072, 0.837140,
		0.918925, -0.380810, -0.102766,
		33.888199, 27.410822, 24.078945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564396, 27.796642, 24.802290>,  <33.244953, 27.677389, 24.150883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564396, 27.796642, 24.802290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841248, 27.757095, 24.516300>,  <34.007359, 27.733368, 24.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841248, 27.757095, 24.516300>,  <33.564396, 27.796642, 24.802290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841248, 27.757095, 24.516300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503659, 0.775691, 0.380303,
		0.516998, -0.623320, 0.586672,
		0.692127, -0.098867, -0.714972,
		34.048885, 27.727436, 24.301809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135422, 27.955269, 25.038427>,  <33.564396, 27.796642, 24.802290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135422, 27.955269, 25.038427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257156, 27.991703, 24.659147>,  <34.330196, 28.013563, 24.431580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257156, 27.991703, 24.659147>,  <34.135422, 27.955269, 25.038427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257156, 27.991703, 24.659147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614870, 0.741486, 0.268578,
		0.727540, -0.664758, 0.169657,
		0.304337, 0.091085, -0.948200,
		34.348457, 28.019028, 24.374687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824463, 28.023523, 25.139904>,  <34.135422, 27.955269, 25.038427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824463, 28.023523, 25.139904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773327, 28.144276, 24.762011>,  <34.742645, 28.216726, 24.535275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773327, 28.144276, 24.762011>,  <34.824463, 28.023523, 25.139904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773327, 28.144276, 24.762011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656728, 0.739571, 0.147453,
		0.743212, -0.601583, -0.292804,
		-0.127844, 0.301881, -0.944735,
		34.734974, 28.234840, 24.478590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500637, 28.090361, 24.814762>,  <34.824463, 28.023523, 25.139904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500637, 28.090361, 24.814762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244659, 28.326880, 24.618458>,  <35.091072, 28.468790, 24.500675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244659, 28.326880, 24.618458>,  <35.500637, 28.090361, 24.814762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244659, 28.326880, 24.618458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580540, 0.790447, 0.195363,
		0.503436, -0.159884, -0.849111,
		-0.639942, 0.591296, -0.490758,
		35.052677, 28.504269, 24.471230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975414, 28.526535, 24.388294>,  <35.500637, 28.090361, 24.814762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975414, 28.526535, 24.388294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616428, 28.702396, 24.402473>,  <35.401035, 28.807913, 24.410982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616428, 28.702396, 24.402473>,  <35.975414, 28.526535, 24.388294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616428, 28.702396, 24.402473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440111, 0.887282, 0.137958,
		0.029199, 0.139415, -0.989804,
		-0.897468, 0.439652, 0.035450,
		35.347187, 28.834291, 24.413109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016827, 29.170889, 23.994801>,  <35.975414, 28.526535, 24.388294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016827, 29.170889, 23.994801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714043, 29.235725, 24.248014>,  <35.532372, 29.274628, 24.399942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714043, 29.235725, 24.248014>,  <36.016827, 29.170889, 23.994801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714043, 29.235725, 24.248014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378063, 0.898783, 0.221939,
		-0.532987, 0.407327, -0.741627,
		-0.756963, 0.162091, 0.633035,
		35.486954, 29.284353, 24.437925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895859, 29.879608, 23.890835>,  <36.016827, 29.170889, 23.994801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895859, 29.879608, 23.890835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731033, 29.774790, 24.239901>,  <35.632137, 29.711899, 24.449339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731033, 29.774790, 24.239901>,  <35.895859, 29.879608, 23.890835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731033, 29.774790, 24.239901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244787, 0.890704, 0.383047,
		-0.877659, 0.371455, -0.302878,
		-0.412060, -0.262044, 0.872662,
		35.607414, 29.696177, 24.501699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537807, 30.527390, 24.175112>,  <35.895859, 29.879608, 23.890835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537807, 30.527390, 24.175112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562672, 30.278648, 24.487377>,  <35.577591, 30.129404, 24.674736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562672, 30.278648, 24.487377>,  <35.537807, 30.527390, 24.175112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562672, 30.278648, 24.487377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473425, 0.706952, 0.525440,
		-0.878638, 0.336927, 0.338342,
		0.062156, -0.621851, 0.780665,
		35.581318, 30.092093, 24.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297668, 30.914566, 24.678310>,  <35.537807, 30.527390, 24.175112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297668, 30.914566, 24.678310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517910, 30.640144, 24.868536>,  <35.650055, 30.475491, 24.982672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517910, 30.640144, 24.868536>,  <35.297668, 30.914566, 24.678310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517910, 30.640144, 24.868536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439018, 0.722535, 0.534046,
		-0.709997, -0.085267, 0.699023,
		0.550605, -0.686055, 0.475565,
		35.683090, 30.434328, 25.011206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310043, 31.188358, 25.354065>,  <35.297668, 30.914566, 24.678310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310043, 31.188358, 25.354065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621700, 30.938133, 25.338055>,  <35.808697, 30.787998, 25.328449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621700, 30.938133, 25.338055>,  <35.310043, 31.188358, 25.354065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621700, 30.938133, 25.338055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564853, 0.672977, 0.477538,
		-0.271795, -0.394680, 0.877699,
		0.779146, -0.625563, -0.040024,
		35.855446, 30.750463, 25.326048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462620, 31.120607, 25.969709>,  <35.310043, 31.188358, 25.354065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462620, 31.120607, 25.969709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799351, 31.023079, 25.777096>,  <36.001389, 30.964561, 25.661528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799351, 31.023079, 25.777096>,  <35.462620, 31.120607, 25.969709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799351, 31.023079, 25.777096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533185, 0.514308, 0.671714,
		0.083877, -0.822215, 0.562963,
		0.841830, -0.243822, -0.481532,
		36.051899, 30.949932, 25.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864548, 30.811453, 26.500456>,  <35.462620, 31.120607, 25.969709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864548, 30.811453, 26.500456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133003, 30.894976, 26.215929>,  <36.294075, 30.945089, 26.045212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133003, 30.894976, 26.215929>,  <35.864548, 30.811453, 26.500456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133003, 30.894976, 26.215929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587445, 0.435487, 0.682099,
		0.452203, -0.875641, 0.169603,
		0.671134, 0.208815, -0.711319,
		36.334343, 30.957619, 26.002533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529915, 30.752571, 26.848253>,  <35.864548, 30.811453, 26.500456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529915, 30.752571, 26.848253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606136, 30.971785, 26.522469>,  <36.651867, 31.103312, 26.326998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606136, 30.971785, 26.522469>,  <36.529915, 30.752571, 26.848253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606136, 30.971785, 26.522469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676746, 0.527678, 0.513391,
		0.711130, -0.649012, -0.270330,
		0.190550, 0.548032, -0.814464,
		36.663300, 31.136194, 26.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321571, 30.789608, 26.808920>,  <36.529915, 30.752571, 26.848253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321571, 30.789608, 26.808920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189137, 31.094107, 26.585890>,  <37.109676, 31.276806, 26.452072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189137, 31.094107, 26.585890>,  <37.321571, 30.789608, 26.808920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189137, 31.094107, 26.585890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655451, 0.610613, 0.444451,
		0.678797, -0.218309, -0.701125,
		-0.331088, 0.761244, -0.557573,
		37.089809, 31.322479, 26.418617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886749, 31.097919, 26.523014>,  <37.321571, 30.789608, 26.808920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886749, 31.097919, 26.523014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621323, 31.396173, 26.498663>,  <37.462067, 31.575127, 26.484053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621323, 31.396173, 26.498663>,  <37.886749, 31.097919, 26.523014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621323, 31.396173, 26.498663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661356, 0.622701, 0.418152,
		0.349697, 0.237211, -0.906335,
		-0.663566, 0.745637, -0.060876,
		37.422253, 31.619865, 26.480400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271236, 31.790714, 26.469326>,  <37.886749, 31.097919, 26.523014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271236, 31.790714, 26.469326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906445, 31.892033, 26.598408>,  <37.687569, 31.952824, 26.675858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906445, 31.892033, 26.598408>,  <38.271236, 31.790714, 26.469326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906445, 31.892033, 26.598408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402513, 0.704439, 0.584593,
		-0.079253, 0.663029, -0.744387,
		-0.911977, 0.253295, 0.322707,
		37.632851, 31.968021, 26.695219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346962, 32.506531, 26.658472>,  <38.271236, 31.790714, 26.469326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346962, 32.506531, 26.658472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005524, 32.407261, 26.841679>,  <37.800659, 32.347698, 26.951603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005524, 32.407261, 26.841679>,  <38.346962, 32.506531, 26.658472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005524, 32.407261, 26.841679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224418, 0.618263, 0.753251,
		-0.470111, 0.745762, -0.472054,
		-0.853600, -0.248174, 0.458015,
		37.749443, 32.332809, 26.979082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171047, 33.159744, 26.859737>,  <38.346962, 32.506531, 26.658472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171047, 33.159744, 26.859737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957863, 32.916004, 27.094563>,  <37.829952, 32.769760, 27.235458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957863, 32.916004, 27.094563>,  <38.171047, 33.159744, 26.859737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957863, 32.916004, 27.094563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171205, 0.601806, 0.780076,
		-0.828637, 0.516261, -0.216417,
		-0.532964, -0.609348, 0.587064,
		37.797974, 32.733200, 27.270681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672455, 33.490059, 27.208672>,  <38.171047, 33.159744, 26.859737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672455, 33.490059, 27.208672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700550, 33.166386, 27.442009>,  <37.717407, 32.972183, 27.582012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700550, 33.166386, 27.442009>,  <37.672455, 33.490059, 27.208672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700550, 33.166386, 27.442009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205414, 0.583988, 0.785343,
		-0.976151, 0.064666, 0.207236,
		0.070238, -0.809183, 0.583344,
		37.721622, 32.923630, 27.617012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279919, 33.660851, 27.816641>,  <37.672455, 33.490059, 27.208672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279919, 33.660851, 27.816641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538967, 33.371624, 27.912775>,  <37.694397, 33.198090, 27.970455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538967, 33.371624, 27.912775>,  <37.279919, 33.660851, 27.816641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538967, 33.371624, 27.912775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194690, 0.461974, 0.865261,
		-0.736670, -0.513571, 0.439958,
		0.647622, -0.723067, 0.240335,
		37.733253, 33.154705, 27.984875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097889, 33.584732, 28.548107>,  <37.279919, 33.660851, 27.816641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097889, 33.584732, 28.548107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450790, 33.407455, 28.484591>,  <37.662529, 33.301090, 28.446482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450790, 33.407455, 28.484591>,  <37.097889, 33.584732, 28.548107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450790, 33.407455, 28.484591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346351, 0.382584, 0.856546,
		-0.318862, -0.810686, 0.491034,
		0.882252, -0.443190, -0.158790,
		37.715466, 33.274498, 28.436953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368763, 33.241360, 29.177856>,  <37.097889, 33.584732, 28.548107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368763, 33.241360, 29.177856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674408, 33.337933, 28.938580>,  <37.857796, 33.395878, 28.795013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674408, 33.337933, 28.938580>,  <37.368763, 33.241360, 29.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674408, 33.337933, 28.938580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375491, 0.587562, 0.716783,
		0.524531, -0.772322, 0.358310,
		0.764117, 0.241432, -0.598194,
		37.903645, 33.410362, 28.759121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021847, 33.343861, 29.635956>,  <37.368763, 33.241360, 29.177856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021847, 33.343861, 29.635956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070946, 33.543030, 29.292559>,  <38.100403, 33.662533, 29.086521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070946, 33.543030, 29.292559>,  <38.021847, 33.343861, 29.635956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070946, 33.543030, 29.292559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420017, 0.757682, 0.499505,
		0.899178, -0.421892, -0.116135,
		0.122743, 0.497922, -0.858492,
		38.107769, 33.692406, 29.035011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653309, 33.747215, 29.718153>,  <38.021847, 33.343861, 29.635956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653309, 33.747215, 29.718153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479797, 33.927658, 29.406168>,  <38.375690, 34.035923, 29.218977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479797, 33.927658, 29.406168>,  <38.653309, 33.747215, 29.718153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479797, 33.927658, 29.406168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414901, 0.868411, 0.271511,
		0.799808, -0.205832, -0.563862,
		-0.433779, 0.451104, -0.779962,
		38.349663, 34.062988, 29.172180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130230, 34.194145, 29.477861>,  <38.653309, 33.747215, 29.718153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130230, 34.194145, 29.477861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788483, 34.335037, 29.325029>,  <38.583435, 34.419571, 29.233330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788483, 34.335037, 29.325029>,  <39.130230, 34.194145, 29.477861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788483, 34.335037, 29.325029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274085, 0.930093, 0.244551,
		0.441508, 0.104215, -0.891184,
		-0.854370, 0.352232, -0.382080,
		38.532173, 34.440708, 29.210405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300323, 34.616219, 28.921675>,  <39.130230, 34.194145, 29.477861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300323, 34.616219, 28.921675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941360, 34.699123, 29.077471>,  <38.725983, 34.748867, 29.170948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941360, 34.699123, 29.077471>,  <39.300323, 34.616219, 28.921675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941360, 34.699123, 29.077471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317337, 0.916533, 0.243445,
		-0.306525, 0.342069, -0.888274,
		-0.897407, 0.207260, 0.389492,
		38.672138, 34.761303, 29.194319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059219, 35.249004, 28.606951>,  <39.300323, 34.616219, 28.921675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059219, 35.249004, 28.606951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837975, 35.247242, 28.940189>,  <38.705227, 35.246185, 29.140133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837975, 35.247242, 28.940189>,  <39.059219, 35.249004, 28.606951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837975, 35.247242, 28.940189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348560, 0.907033, 0.236213,
		-0.756687, 0.421036, -0.500154,
		-0.553110, -0.004405, 0.833096,
		38.672043, 35.245922, 29.190119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726315, 35.948765, 28.586964>,  <39.059219, 35.249004, 28.606951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726315, 35.948765, 28.586964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722336, 35.810207, 28.962179>,  <38.719948, 35.727074, 29.187307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722336, 35.810207, 28.962179>,  <38.726315, 35.948765, 28.586964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722336, 35.810207, 28.962179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355148, 0.875700, 0.327139,
		-0.934757, 0.336397, 0.114305,
		-0.009951, -0.346390, 0.938038,
		38.719349, 35.706291, 29.243591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610542, 36.618561, 29.069164>,  <38.726315, 35.948765, 28.586964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610542, 36.618561, 29.069164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765003, 36.327759, 29.296270>,  <38.857681, 36.153278, 29.432533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765003, 36.327759, 29.296270>,  <38.610542, 36.618561, 29.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765003, 36.327759, 29.296270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463997, 0.685054, 0.561612,
		-0.797242, 0.046573, 0.601861,
		0.386151, -0.727002, 0.567764,
		38.880848, 36.109657, 29.466599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324459, 36.798637, 29.704636>,  <38.610542, 36.618561, 29.069164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324459, 36.798637, 29.704636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638702, 36.562859, 29.779869>,  <38.827248, 36.421391, 29.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638702, 36.562859, 29.779869>,  <38.324459, 36.798637, 29.704636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638702, 36.562859, 29.779869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448678, 0.752047, 0.482818,
		-0.426043, -0.294916, 0.855285,
		0.785605, -0.589448, 0.188082,
		38.874386, 36.386024, 29.836294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468914, 36.637943, 30.476885>,  <38.324459, 36.798637, 29.704636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468914, 36.637943, 30.476885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828270, 36.556797, 30.321074>,  <39.043884, 36.508110, 30.227587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828270, 36.556797, 30.321074>,  <38.468914, 36.637943, 30.476885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828270, 36.556797, 30.321074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421595, 0.646877, 0.635458,
		0.123064, -0.735116, 0.666679,
		0.898394, -0.202867, -0.389528,
		39.097790, 36.495937, 30.204214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918774, 36.336254, 31.022839>,  <38.468914, 36.637943, 30.476885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918774, 36.336254, 31.022839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163689, 36.480240, 30.741262>,  <39.310638, 36.566631, 30.572317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163689, 36.480240, 30.741262>,  <38.918774, 36.336254, 31.022839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163689, 36.480240, 30.741262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463284, 0.558136, 0.688369,
		0.640685, -0.747602, 0.174971,
		0.612283, 0.359966, -0.703942,
		39.347374, 36.588230, 30.530081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655128, 36.344673, 31.387938>,  <38.918774, 36.336254, 31.022839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655128, 36.344673, 31.387938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697750, 36.576012, 31.064415>,  <39.723324, 36.714813, 30.870302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697750, 36.576012, 31.064415>,  <39.655128, 36.344673, 31.387938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697750, 36.576012, 31.064415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624341, 0.594164, 0.507116,
		0.773850, -0.559006, -0.297772,
		0.106555, 0.578343, -0.808805,
		39.729717, 36.749516, 30.821774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325912, 36.368515, 31.118526>,  <39.655128, 36.344673, 31.387938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325912, 36.368515, 31.118526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173553, 36.718105, 30.997803>,  <40.082138, 36.927860, 30.925369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173553, 36.718105, 30.997803>,  <40.325912, 36.368515, 31.118526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173553, 36.718105, 30.997803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785695, 0.478023, 0.392653,
		0.487440, -0.087568, -0.868755,
		-0.380901, 0.873971, -0.301809,
		40.059284, 36.980297, 30.907259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933754, 36.753777, 30.818996>,  <40.325912, 36.368515, 31.118526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933754, 36.753777, 30.818996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648586, 37.023159, 30.897186>,  <40.477486, 37.184788, 30.944099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648586, 37.023159, 30.897186>,  <40.933754, 36.753777, 30.818996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648586, 37.023159, 30.897186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677440, 0.589395, 0.440101,
		0.181175, 0.446178, -0.876414,
		-0.712917, 0.673453, 0.195475,
		40.434711, 37.225197, 30.955828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341690, 37.305622, 30.794279>,  <40.933754, 36.753777, 30.818996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341690, 37.305622, 30.794279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011921, 37.428867, 30.984180>,  <40.814060, 37.502815, 31.098122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011921, 37.428867, 30.984180>,  <41.341690, 37.305622, 30.794279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011921, 37.428867, 30.984180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554929, 0.604949, 0.571043,
		-0.111257, 0.734237, -0.669715,
		-0.824425, 0.308112, 0.474754,
		40.764595, 37.521301, 31.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259434, 38.077427, 30.740776>,  <41.341690, 37.305622, 30.794279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259434, 38.077427, 30.740776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079567, 37.942570, 31.071625>,  <40.971645, 37.861656, 31.270134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079567, 37.942570, 31.071625>,  <41.259434, 38.077427, 30.740776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079567, 37.942570, 31.071625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556066, 0.619018, 0.554624,
		-0.698991, 0.709332, -0.090879,
		-0.449669, -0.337143, 0.827123,
		40.944668, 37.841427, 31.319761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226818, 38.589195, 31.082102>,  <41.259434, 38.077427, 30.740776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226818, 38.589195, 31.082102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187725, 38.297199, 31.352676>,  <41.164268, 38.122002, 31.515022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187725, 38.297199, 31.352676>,  <41.226818, 38.589195, 31.082102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187725, 38.297199, 31.352676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497442, 0.552863, 0.668501,
		-0.861974, 0.401825, 0.309091,
		-0.097736, -0.729985, 0.676438,
		41.158405, 38.078205, 31.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950146, 39.004787, 31.640314>,  <41.226818, 38.589195, 31.082102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950146, 39.004787, 31.640314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104095, 38.668106, 31.791790>,  <41.196465, 38.466099, 31.882675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104095, 38.668106, 31.791790>,  <40.950146, 39.004787, 31.640314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104095, 38.668106, 31.791790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422053, 0.525384, 0.738811,
		-0.820818, -0.124522, 0.557451,
		0.384875, -0.841704, 0.378690,
		41.219559, 38.415596, 31.905397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704391, 38.874043, 32.417534>,  <40.950146, 39.004787, 31.640314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704391, 38.874043, 32.417534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072582, 38.782520, 32.290802>,  <41.293495, 38.727608, 32.214764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072582, 38.782520, 32.290802>,  <40.704391, 38.874043, 32.417534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072582, 38.782520, 32.290802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390185, 0.583706, 0.712070,
		0.022010, -0.779062, 0.626561,
		0.920473, -0.228802, -0.316825,
		41.348724, 38.713879, 32.195755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383579, 38.707382, 32.715614>,  <40.704391, 38.874043, 32.417534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383579, 38.707382, 32.715614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564201, 38.445641, 32.958241>,  <41.672573, 38.288597, 33.103817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564201, 38.445641, 32.958241>,  <41.383579, 38.707382, 32.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564201, 38.445641, 32.958241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468234, -0.404901, -0.785373,
		0.759512, 0.638651, 0.123558,
		0.451551, -0.654354, 0.606566,
		41.699665, 38.249332, 33.140209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107098, 38.825859, 32.799530>,  <41.383579, 38.707382, 32.715614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107098, 38.825859, 32.799530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027061, 38.434937, 32.827347>,  <41.979038, 38.200382, 32.844036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027061, 38.434937, 32.827347>,  <42.107098, 38.825859, 32.799530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027061, 38.434937, 32.827347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568100, -0.173555, -0.804451,
		0.798264, -0.121456, 0.589935,
		-0.200092, -0.977306, 0.069543,
		41.967033, 38.141747, 32.848209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196396, 38.926613, 33.501194>,  <42.107098, 38.825859, 32.799530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196396, 38.926613, 33.501194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453724, 39.215755, 33.602077>,  <42.608120, 39.389240, 33.662609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453724, 39.215755, 33.602077>,  <42.196396, 38.926613, 33.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453724, 39.215755, 33.602077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437529, 0.076791, 0.895919,
		0.628258, -0.686713, 0.365674,
		0.643320, 0.722862, 0.252212,
		42.646721, 39.432613, 33.677742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474720, 38.689831, 34.171589>,  <42.196396, 38.926613, 33.501194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474720, 38.689831, 34.171589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534199, 39.084976, 34.153606>,  <42.569885, 39.322063, 34.142818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534199, 39.084976, 34.153606>,  <42.474720, 38.689831, 34.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534199, 39.084976, 34.153606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340748, 0.093862, 0.935458,
		0.928322, -0.123778, 0.350569,
		0.148694, 0.987861, -0.044957,
		42.578808, 39.381336, 34.140118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048439, 38.944679, 34.631245>,  <42.474720, 38.689831, 34.171589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048439, 38.944679, 34.631245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760742, 39.213814, 34.561974>,  <42.588123, 39.375294, 34.520412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760742, 39.213814, 34.561974>,  <43.048439, 38.944679, 34.631245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760742, 39.213814, 34.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163199, 0.078665, 0.983452,
		0.675323, 0.735598, 0.053227,
		-0.719239, 0.672835, -0.173173,
		42.544971, 39.415665, 34.510021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009174, 39.372223, 35.116783>,  <43.048439, 38.944679, 34.631245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009174, 39.372223, 35.116783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643520, 39.417076, 34.960941>,  <42.424129, 39.443989, 34.867435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643520, 39.417076, 34.960941>,  <43.009174, 39.372223, 35.116783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643520, 39.417076, 34.960941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388093, 0.035908, 0.920920,
		0.117255, 0.993044, 0.010694,
		-0.914130, 0.112133, -0.389604,
		42.369282, 39.450718, 34.844059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962547, 39.854862, 35.669449>,  <43.009174, 39.372223, 35.116783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962547, 39.854862, 35.669449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014416, 40.248100, 35.721142>,  <43.045536, 40.484043, 35.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014416, 40.248100, 35.721142>,  <42.962547, 39.854862, 35.669449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014416, 40.248100, 35.721142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985110, 0.112890, 0.129670,
		0.112890, -0.144123, 0.983099,
		-0.129670, -0.983099, -0.129233,
		43.053318, 40.543030, 35.759911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720009, 40.022030, 36.308163>,  <42.962547, 39.854862, 35.669449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720009, 40.022030, 36.308163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697823, 40.348858, 36.078613>,  <42.684513, 40.544952, 35.940884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697823, 40.348858, 36.078613>,  <42.720009, 40.022030, 36.308163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697823, 40.348858, 36.078613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997243, -0.016957, 0.072235,
		0.049290, 0.576294, 0.815755,
		-0.055461, 0.817066, -0.573870,
		42.681183, 40.593979, 35.906452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331272, 40.579414, 36.579407>,  <42.720009, 40.022030, 36.308163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331272, 40.579414, 36.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304829, 40.588943, 36.180397>,  <42.288963, 40.594662, 35.940990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304829, 40.588943, 36.180397>,  <42.331272, 40.579414, 36.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304829, 40.588943, 36.180397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985516, -0.158021, 0.061542,
		-0.156165, 0.987148, 0.033920,
		-0.066111, 0.023818, -0.997528,
		42.284996, 40.596088, 35.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747997, 40.928654, 36.374924>,  <42.331272, 40.579414, 36.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747997, 40.928654, 36.374924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819912, 40.652950, 36.094181>,  <41.863060, 40.487530, 35.925735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819912, 40.652950, 36.094181>,  <41.747997, 40.928654, 36.374924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819912, 40.652950, 36.094181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957205, -0.287072, 0.036727,
		-0.226797, 0.665216, -0.711372,
		0.179783, -0.689258, -0.701855,
		41.873848, 40.446175, 35.883625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146557, 40.829384, 35.922894>,  <41.747997, 40.928654, 36.374924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146557, 40.829384, 35.922894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373814, 40.502529, 35.883907>,  <41.510170, 40.306416, 35.860516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373814, 40.502529, 35.883907>,  <41.146557, 40.829384, 35.922894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373814, 40.502529, 35.883907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809644, -0.576235, 0.111487,
		-0.147264, 0.015573, -0.988975,
		0.568146, -0.817135, -0.097468,
		41.544258, 40.257389, 35.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692928, 40.411011, 35.356346>,  <41.146557, 40.829384, 35.922894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692928, 40.411011, 35.356346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926655, 40.182289, 35.586689>,  <41.066891, 40.045055, 35.724895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926655, 40.182289, 35.586689>,  <40.692928, 40.411011, 35.356346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926655, 40.182289, 35.586689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755555, -0.642277, 0.128904,
		0.296152, -0.510413, -0.807324,
		0.584321, -0.571803, 0.575857,
		41.101952, 40.010750, 35.759445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882698, 39.654781, 35.107670>,  <40.692928, 40.411011, 35.356346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882698, 39.654781, 35.107670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898117, 39.663361, 35.507282>,  <40.907368, 39.668510, 35.747047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898117, 39.663361, 35.507282>,  <40.882698, 39.654781, 35.107670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898117, 39.663361, 35.507282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756016, -0.653126, 0.043194,
		0.653417, -0.756945, -0.008957,
		0.038546, 0.021452, 0.999027,
		40.909679, 39.669796, 35.806992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022339, 38.878609, 35.387085>,  <40.882698, 39.654781, 35.107670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022339, 38.878609, 35.387085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806137, 39.121586, 35.619938>,  <40.676414, 39.267372, 35.759647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806137, 39.121586, 35.619938>,  <41.022339, 38.878609, 35.387085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806137, 39.121586, 35.619938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722214, -0.689909, 0.049333,
		0.431582, -0.393756, 0.811599,
		-0.540504, 0.607439, 0.582128,
		40.643986, 39.303818, 35.794575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921558, 38.437450, 35.894428>,  <41.022339, 38.878609, 35.387085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921558, 38.437450, 35.894428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631901, 38.693192, 35.791008>,  <40.458107, 38.846638, 35.728954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631901, 38.693192, 35.791008>,  <40.921558, 38.437450, 35.894428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631901, 38.693192, 35.791008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659859, -0.751326, -0.009790,
		-0.200514, 0.163517, 0.965948,
		-0.724141, 0.639352, -0.258550,
		40.414658, 38.884998, 35.713444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275822, 38.404709, 36.312748>,  <40.921558, 38.437450, 35.894428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275822, 38.404709, 36.312748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154755, 38.481861, 35.939400>,  <40.082115, 38.528152, 35.715389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154755, 38.481861, 35.939400>,  <40.275822, 38.404709, 36.312748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154755, 38.481861, 35.939400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551435, -0.834193, 0.006429,
		-0.777375, 0.516642, 0.358845,
		-0.302667, 0.192882, -0.933375,
		40.063953, 38.539726, 35.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516796, 38.529171, 36.247234>,  <40.275822, 38.404709, 36.312748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516796, 38.529171, 36.247234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694061, 38.348492, 35.937504>,  <39.800419, 38.240086, 35.751667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694061, 38.348492, 35.937504>,  <39.516796, 38.529171, 36.247234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694061, 38.348492, 35.937504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569695, -0.808825, 0.145771,
		-0.692138, 0.376528, -0.615769,
		0.443163, -0.451694, -0.774325,
		39.827011, 38.212982, 35.705208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065865, 38.213165, 35.840923>,  <39.516796, 38.529171, 36.247234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065865, 38.213165, 35.840923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380775, 37.974403, 35.779087>,  <39.569721, 37.831146, 35.741985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380775, 37.974403, 35.779087>,  <39.065865, 38.213165, 35.840923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380775, 37.974403, 35.779087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610436, -0.789869, -0.058942,
		-0.086920, 0.140770, -0.986219,
		0.787282, -0.596900, -0.154587,
		39.616959, 37.795334, 35.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381222, 38.179947, 35.509151>,  <39.065865, 38.213165, 35.840923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381222, 38.179947, 35.509151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287346, 38.567642, 35.538799>,  <38.231022, 38.800259, 35.556587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287346, 38.567642, 35.538799>,  <38.381222, 38.179947, 35.509151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287346, 38.567642, 35.538799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731793, 0.226354, -0.642840,
		-0.639844, -0.096624, -0.762406,
		-0.234687, 0.969241, 0.074123,
		38.216938, 38.858414, 35.561035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104248, 38.482246, 34.761433>,  <38.381222, 38.179947, 35.509151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104248, 38.482246, 34.761433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240852, 38.758846, 35.016052>,  <38.322815, 38.924809, 35.168823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240852, 38.758846, 35.016052>,  <38.104248, 38.482246, 34.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240852, 38.758846, 35.016052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602727, 0.358539, -0.712860,
		-0.721172, 0.627115, -0.294342,
		0.341512, 0.691503, 0.636548,
		38.343307, 38.966297, 35.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920437, 39.069653, 34.459904>,  <38.104248, 38.482246, 34.761433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920437, 39.069653, 34.459904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227966, 39.158020, 34.699936>,  <38.412483, 39.211040, 34.843956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227966, 39.158020, 34.699936>,  <37.920437, 39.069653, 34.459904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227966, 39.158020, 34.699936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550649, 0.248373, -0.796929,
		-0.325100, 0.943136, 0.069308,
		0.768827, 0.220918, 0.600083,
		38.458614, 39.224297, 34.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228310, 39.646477, 34.206188>,  <37.920437, 39.069653, 34.459904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228310, 39.646477, 34.206188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518559, 39.498604, 34.438328>,  <38.692707, 39.409878, 34.577614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518559, 39.498604, 34.438328>,  <38.228310, 39.646477, 34.206188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518559, 39.498604, 34.438328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681881, 0.273222, -0.678519,
		0.092273, 0.888078, 0.450336,
		0.725619, -0.369684, 0.580353,
		38.736244, 39.387699, 34.612434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734226, 40.195850, 34.054180>,  <38.228310, 39.646477, 34.206188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734226, 40.195850, 34.054180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906284, 39.865536, 34.200085>,  <39.009518, 39.667347, 34.287628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906284, 39.865536, 34.200085>,  <38.734226, 40.195850, 34.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906284, 39.865536, 34.200085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676421, 0.027233, -0.736012,
		0.597857, 0.563321, 0.570295,
		0.430141, -0.825789, 0.364760,
		39.035328, 39.617798, 34.309513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400818, 40.264782, 34.126846>,  <38.734226, 40.195850, 34.054180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400818, 40.264782, 34.126846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398907, 39.864796, 34.123936>,  <39.397762, 39.624805, 34.122189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398907, 39.864796, 34.123936>,  <39.400818, 40.264782, 34.126846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398907, 39.864796, 34.123936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758576, 0.001120, -0.651584,
		0.651568, -0.008633, 0.758542,
		-0.004775, -0.999962, -0.007279,
		39.397472, 39.564808, 34.121754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075214, 39.982773, 34.295933>,  <39.400818, 40.264782, 34.126846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075214, 39.982773, 34.295933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865448, 39.736469, 34.060707>,  <39.739586, 39.588688, 33.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865448, 39.736469, 34.060707>,  <40.075214, 39.982773, 34.295933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865448, 39.736469, 34.060707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653152, 0.152159, -0.741782,
		0.546239, -0.773102, 0.322390,
		-0.524419, -0.615760, -0.588069,
		39.708122, 39.551743, 33.884285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611870, 40.328064, 34.581245>,  <40.075214, 39.982773, 34.295933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611870, 40.328064, 34.581245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693245, 40.623367, 34.838490>,  <40.742069, 40.800549, 34.992836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693245, 40.623367, 34.838490>,  <40.611870, 40.328064, 34.581245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693245, 40.623367, 34.838490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910028, -0.384893, 0.153969,
		0.361198, 0.553925, -0.750135,
		0.203434, 0.738257, 0.643110,
		40.754276, 40.844845, 35.031422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399426, 40.325867, 34.770527>,  <40.611870, 40.328064, 34.581245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399426, 40.325867, 34.770527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363735, 40.638424, 35.017578>,  <41.342323, 40.825958, 35.165810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363735, 40.638424, 35.017578>,  <41.399426, 40.325867, 34.770527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363735, 40.638424, 35.017578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982476, -0.032836, 0.183471,
		0.163644, 0.623174, -0.764771,
		-0.089222, 0.781394, 0.617627,
		41.336967, 40.872841, 35.202866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064342, 40.746002, 34.700390>,  <41.399426, 40.325867, 34.770527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064342, 40.746002, 34.700390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893341, 40.830532, 35.051979>,  <41.790741, 40.881252, 35.262932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893341, 40.830532, 35.051979>,  <42.064342, 40.746002, 34.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893341, 40.830532, 35.051979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902736, 0.048081, 0.427499,
		0.048081, 0.976232, -0.211327,
		-0.427499, 0.211327, 0.878968,
		41.765091, 40.893929, 35.315670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334843, 41.262348, 34.885933>,  <42.064342, 40.746002, 34.700390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334843, 41.262348, 34.885933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279903, 41.090141, 35.242760>,  <42.246941, 40.986816, 35.456856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279903, 41.090141, 35.242760>,  <42.334843, 41.262348, 34.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279903, 41.090141, 35.242760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935199, 0.240408, 0.260011,
		-0.326401, 0.869975, 0.369603,
		-0.137347, -0.430520, 0.892069,
		42.238701, 40.960983, 35.510380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772869, 41.759541, 35.286373>,  <42.334843, 41.262348, 34.885933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772869, 41.759541, 35.286373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740540, 41.404430, 35.467625>,  <42.721142, 41.191364, 35.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740540, 41.404430, 35.467625>,  <42.772869, 41.759541, 35.286373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740540, 41.404430, 35.467625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956235, 0.059198, 0.286548,
		-0.281214, 0.456462, 0.844133,
		-0.080827, -0.887771, 0.453133,
		42.716290, 41.138100, 35.603565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132446, 41.829895, 35.976288>,  <42.772869, 41.759541, 35.286373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132446, 41.829895, 35.976288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107315, 41.443306, 35.876701>,  <43.092236, 41.211353, 35.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107315, 41.443306, 35.876701>,  <43.132446, 41.829895, 35.976288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107315, 41.443306, 35.876701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991105, -0.089740, 0.098268,
		-0.117315, -0.240582, 0.963513,
		-0.062824, -0.966471, -0.248970,
		43.088467, 41.153366, 35.802010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544525, 41.454792, 36.378609>,  <43.132446, 41.829895, 35.976288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544525, 41.454792, 36.378609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504791, 41.245945, 36.039783>,  <43.480949, 41.120636, 35.836487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504791, 41.245945, 36.039783>,  <43.544525, 41.454792, 36.378609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504791, 41.245945, 36.039783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993120, -0.105076, -0.051699,
		-0.062014, -0.846375, 0.528965,
		-0.099338, -0.522120, -0.847067,
		43.474991, 41.089310, 35.785664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918236, 40.761089, 36.467113>,  <43.544525, 41.454792, 36.378609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918236, 40.761089, 36.467113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885284, 40.892719, 36.090832>,  <43.865513, 40.971699, 35.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885284, 40.892719, 36.090832>,  <43.918236, 40.761089, 36.467113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885284, 40.892719, 36.090832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949951, -0.259482, -0.173960,
		-0.301342, -0.907952, -0.291233,
		-0.082377, 0.329079, -0.940702,
		43.860573, 40.991444, 35.808620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441799, 40.319019, 36.019749>,  <43.918236, 40.761089, 36.467113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441799, 40.319019, 36.019749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363079, 40.623505, 35.772579>,  <44.315849, 40.806194, 35.624279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363079, 40.623505, 35.772579>,  <44.441799, 40.319019, 36.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363079, 40.623505, 35.772579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919346, -0.075734, -0.386093,
		-0.340697, -0.644064, -0.684914,
		-0.196797, 0.761213, -0.617920,
		44.304039, 40.851868, 35.587204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435894, 40.106277, 35.293221>,  <44.441799, 40.319019, 36.019749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435894, 40.106277, 35.293221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570988, 40.473602, 35.375813>,  <44.652046, 40.693996, 35.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570988, 40.473602, 35.375813>,  <44.435894, 40.106277, 35.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570988, 40.473602, 35.375813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929816, -0.291436, -0.224739,
		-0.146204, 0.267894, -0.952290,
		0.337738, 0.918313, 0.206483,
		44.672310, 40.749096, 35.437756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727501, 40.478806, 34.706657>,  <44.435894, 40.106277, 35.293221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727501, 40.478806, 34.706657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918358, 40.577065, 35.044174>,  <45.032871, 40.636021, 35.246685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918358, 40.577065, 35.044174>,  <44.727501, 40.478806, 34.706657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918358, 40.577065, 35.044174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863541, -0.309345, -0.398249,
		0.163194, 0.918673, -0.359732,
		0.477142, 0.245652, 0.843795,
		45.061501, 40.650761, 35.297314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354988, 41.014389, 34.665531>,  <44.727501, 40.478806, 34.706657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354988, 41.014389, 34.665531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364174, 40.730789, 34.947464>,  <45.369686, 40.560627, 35.116623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364174, 40.730789, 34.947464>,  <45.354988, 41.014389, 34.665531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364174, 40.730789, 34.947464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863588, -0.341123, -0.371282,
		0.503675, 0.617213, 0.604450,
		0.022968, -0.709002, 0.704833,
		45.371063, 40.518089, 35.158913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248917, 41.721218, 34.939400>,  <45.354988, 41.014389, 34.665531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248917, 41.721218, 34.939400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597679, 41.607613, 34.779846>,  <45.806938, 41.539448, 34.684113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597679, 41.607613, 34.779846>,  <45.248917, 41.721218, 34.939400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597679, 41.607613, 34.779846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467086, 0.237884, 0.851611,
		-0.146984, -0.928841, 0.340074,
		0.871910, -0.284017, -0.398883,
		45.859253, 41.522408, 34.660183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905914, 41.576401, 35.409126>,  <45.248917, 41.721218, 34.939400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905914, 41.576401, 35.409126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890480, 41.215054, 35.579975>,  <45.881218, 40.998245, 35.682484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890480, 41.215054, 35.579975>,  <45.905914, 41.576401, 35.409126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890480, 41.215054, 35.579975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830774, -0.266529, -0.488648,
		0.555270, 0.335988, 0.760781,
		-0.038590, -0.903368, 0.427126,
		45.878902, 40.944042, 35.708115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536522, 41.412830, 35.677963>,  <45.905914, 41.576401, 35.409126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536522, 41.412830, 35.677963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335049, 41.083626, 35.572922>,  <46.214165, 40.886105, 35.509895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335049, 41.083626, 35.572922>,  <46.536522, 41.412830, 35.677963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335049, 41.083626, 35.572922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770542, -0.290552, -0.567313,
		0.390604, -0.488092, 0.780509,
		-0.503680, -0.823010, -0.262605,
		46.183945, 40.836723, 35.494141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034130, 41.026001, 35.555008>,  <46.536522, 41.412830, 35.677963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034130, 41.026001, 35.555008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725166, 40.836487, 35.385815>,  <46.539787, 40.722778, 35.284298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725166, 40.836487, 35.385815>,  <47.034130, 41.026001, 35.555008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725166, 40.836487, 35.385815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597501, -0.316243, -0.736874,
		0.215355, -0.821899, 0.527355,
		-0.772409, -0.473785, -0.422981,
		46.493443, 40.694351, 35.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037663, 40.267002, 35.270130>,  <47.034130, 41.026001, 35.555008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037663, 40.267002, 35.270130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764114, 40.466667, 35.057281>,  <46.599983, 40.586468, 34.929573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764114, 40.466667, 35.057281>,  <47.037663, 40.267002, 35.270130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764114, 40.466667, 35.057281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493709, -0.220387, -0.841237,
		-0.537187, -0.838014, -0.095724,
		-0.683872, 0.499162, -0.532124,
		46.558952, 40.616417, 34.897644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950264, 39.880932, 34.600807>,  <47.037663, 40.267002, 35.270130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950264, 39.880932, 34.600807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825771, 40.253757, 34.526638>,  <46.751076, 40.477455, 34.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825771, 40.253757, 34.526638>,  <46.950264, 39.880932, 34.600807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825771, 40.253757, 34.526638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448233, -0.028071, -0.893476,
		-0.837986, -0.361193, -0.409047,
		-0.311235, 0.932069, -0.185422,
		46.732399, 40.533379, 34.471012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405937, 39.773956, 34.967239>,  <46.950264, 39.880932, 34.600807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405937, 39.773956, 34.967239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759304, 39.588715, 34.938660>,  <46.971325, 39.477570, 34.921513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759304, 39.588715, 34.938660>,  <46.405937, 39.773956, 34.967239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759304, 39.588715, 34.938660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318827, 0.705800, -0.632610,
		0.343388, 0.536083, 0.771168,
		0.883422, -0.463100, -0.071446,
		47.024330, 39.449783, 34.917225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846928, 39.756851, 35.496479>,  <46.405937, 39.773956, 34.967239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846928, 39.756851, 35.496479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542271, 40.005421, 35.569942>,  <45.359478, 40.154564, 35.614021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542271, 40.005421, 35.569942>,  <45.846928, 39.756851, 35.496479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542271, 40.005421, 35.569942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595434, -0.782980, 0.180002,
		0.255662, 0.027738, 0.966368,
		-0.761640, 0.621428, 0.183662,
		45.313778, 40.191849, 35.625042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673923, 39.614277, 36.158989>,  <45.846928, 39.756851, 35.496479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673923, 39.614277, 36.158989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358501, 39.783642, 35.980598>,  <45.169247, 39.885262, 35.873566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358501, 39.783642, 35.980598>,  <45.673923, 39.614277, 36.158989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358501, 39.783642, 35.980598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588077, -0.731285, 0.345524,
		-0.179836, 0.534734, 0.825662,
		-0.788558, 0.423416, -0.445976,
		45.121933, 39.910667, 35.846806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773106, 39.153339, 36.760418>,  <45.673923, 39.614277, 36.158989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773106, 39.153339, 36.760418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776241, 39.144299, 37.160305>,  <45.778122, 39.138874, 37.400238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776241, 39.144299, 37.160305>,  <45.773106, 39.153339, 36.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776241, 39.144299, 37.160305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113271, -0.993290, -0.023340,
		0.993533, 0.113422, -0.005228,
		0.007840, -0.022597, 0.999714,
		45.778591, 39.137520, 37.460220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357113, 38.710976, 37.070259>,  <45.773106, 39.153339, 36.760418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357113, 38.710976, 37.070259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038528, 38.708027, 37.312115>,  <45.847378, 38.706257, 37.457230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038528, 38.708027, 37.312115>,  <46.357113, 38.710976, 37.070259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038528, 38.708027, 37.312115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045306, -0.996387, -0.071830,
		0.602988, -0.084604, 0.793251,
		-0.796463, -0.007374, 0.604643,
		45.799591, 38.705814, 37.493507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392460, 38.185516, 37.590847>,  <46.357113, 38.710976, 37.070259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392460, 38.185516, 37.590847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007767, 38.237946, 37.494598>,  <45.776951, 38.269405, 37.436852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007767, 38.237946, 37.494598>,  <46.392460, 38.185516, 37.590847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007767, 38.237946, 37.494598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109216, -0.988761, -0.102097,
		-0.251296, -0.071910, 0.965235,
		-0.961729, 0.131076, -0.240617,
		45.719250, 38.277267, 37.422413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928131, 37.790684, 37.983532>,  <46.392460, 38.185516, 37.590847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928131, 37.790684, 37.983532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761337, 37.859631, 37.626564>,  <45.661263, 37.901001, 37.412384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761337, 37.859631, 37.626564>,  <45.928131, 37.790684, 37.983532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761337, 37.859631, 37.626564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068189, -0.985019, -0.158394,
		-0.906353, -0.005194, 0.422489,
		-0.416982, 0.172370, -0.892420,
		45.636242, 37.911343, 37.358837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337879, 37.273174, 37.928421>,  <45.928131, 37.790684, 37.983532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337879, 37.273174, 37.928421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482059, 37.392647, 37.574955>,  <45.568569, 37.464329, 37.362877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482059, 37.392647, 37.574955>,  <45.337879, 37.273174, 37.928421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482059, 37.392647, 37.574955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039568, -0.941600, -0.334401,
		-0.931938, 0.155501, -0.327584,
		0.360453, 0.298679, -0.883665,
		45.590195, 37.482250, 37.309856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933617, 36.911419, 37.418625>,  <45.337879, 37.273174, 37.928421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933617, 36.911419, 37.418625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265244, 37.018700, 37.222378>,  <45.464222, 37.083069, 37.104630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265244, 37.018700, 37.222378>,  <44.933617, 36.911419, 37.418625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265244, 37.018700, 37.222378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057926, -0.913929, -0.401720,
		-0.556135, 0.304634, -0.773248,
		0.829071, 0.268202, -0.490622,
		45.513966, 37.099159, 37.075191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786739, 36.819878, 36.657829>,  <44.933617, 36.911419, 37.418625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786739, 36.819878, 36.657829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168415, 36.765549, 36.764465>,  <45.397423, 36.732952, 36.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168415, 36.765549, 36.764465>,  <44.786739, 36.819878, 36.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168415, 36.765549, 36.764465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018060, -0.915543, -0.401814,
		0.298647, 0.378593, -0.876058,
		0.954193, -0.135822, 0.266587,
		45.454674, 36.724800, 36.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274715, 36.591423, 36.171715>,  <44.786739, 36.819878, 36.657829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274715, 36.591423, 36.171715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467384, 36.444286, 36.489880>,  <45.582985, 36.356007, 36.680779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467384, 36.444286, 36.489880>,  <45.274715, 36.591423, 36.171715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467384, 36.444286, 36.489880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061755, -0.891142, -0.449503,
		0.874172, 0.265635, -0.406524,
		0.481674, -0.367838, 0.795415,
		45.611885, 36.333935, 36.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047009, 36.255497, 36.001316>,  <45.274715, 36.591423, 36.171715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047009, 36.255497, 36.001316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871445, 36.078724, 36.314251>,  <45.766106, 35.972660, 36.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871445, 36.078724, 36.314251>,  <46.047009, 36.255497, 36.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871445, 36.078724, 36.314251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114042, -0.891043, -0.439360,
		0.891265, -0.103619, 0.441485,
		-0.438908, -0.441934, 0.782339,
		45.739773, 35.946144, 36.548954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378162, 35.681652, 36.450882>,  <46.047009, 36.255497, 36.001316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378162, 35.681652, 36.450882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990974, 35.681458, 36.350452>,  <45.758663, 35.681339, 36.290195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990974, 35.681458, 36.350452>,  <46.378162, 35.681652, 36.450882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990974, 35.681458, 36.350452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163609, -0.759751, -0.629293,
		-0.190444, -0.650214, 0.735496,
		-0.967969, -0.000488, -0.251071,
		45.700584, 35.681313, 36.275131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897068, 35.076324, 36.513824>,  <46.378162, 35.681652, 36.450882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897068, 35.076324, 36.513824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717529, 35.282677, 36.221962>,  <45.609806, 35.406487, 36.046844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717529, 35.282677, 36.221962>,  <45.897068, 35.076324, 36.513824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717529, 35.282677, 36.221962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087893, -0.787087, -0.610547,
		-0.889275, -0.338176, 0.307941,
		-0.448849, 0.515878, -0.729660,
		45.582874, 35.437439, 36.003063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249668, 34.822041, 36.276436>,  <45.897068, 35.076324, 36.513824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249668, 34.822041, 36.276436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459961, 35.003902, 35.988853>,  <45.586136, 35.113022, 35.816303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459961, 35.003902, 35.988853>,  <45.249668, 34.822041, 36.276436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459961, 35.003902, 35.988853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063116, -0.822001, -0.565978,
		-0.848308, 0.342928, -0.403453,
		0.525729, 0.454659, -0.718954,
		45.617680, 35.140301, 35.773167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181881, 34.209167, 35.818523>,  <45.249668, 34.822041, 36.276436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181881, 34.209167, 35.818523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413708, 34.471310, 35.624775>,  <45.552803, 34.628593, 35.508526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413708, 34.471310, 35.624775>,  <45.181881, 34.209167, 35.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413708, 34.471310, 35.624775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065387, -0.629856, -0.773954,
		-0.812297, 0.416887, -0.407896,
		0.579567, 0.655352, -0.484371,
		45.587578, 34.667915, 35.479462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017635, 34.210964, 35.107555>,  <45.181881, 34.209167, 35.818523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017635, 34.210964, 35.107555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400204, 34.312843, 35.164673>,  <45.629745, 34.373970, 35.198944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400204, 34.312843, 35.164673>,  <45.017635, 34.210964, 35.107555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400204, 34.312843, 35.164673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272361, -0.601856, -0.750726,
		-0.105269, 0.756900, -0.644997,
		0.956419, 0.254700, 0.142793,
		45.687130, 34.389252, 35.207512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297401, 34.269772, 34.543560>,  <45.017635, 34.210964, 35.107555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297401, 34.269772, 34.543560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648087, 34.266548, 34.735939>,  <45.858498, 34.264614, 34.851368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648087, 34.266548, 34.735939>,  <45.297401, 34.269772, 34.543560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648087, 34.266548, 34.735939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450724, -0.335459, -0.827233,
		0.168008, 0.942020, -0.290467,
		0.876710, -0.008061, 0.480951,
		45.911098, 34.264130, 34.880226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842422, 34.374775, 33.942905>,  <45.297401, 34.269772, 34.543560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842422, 34.374775, 33.942905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010963, 34.203976, 34.262939>,  <46.112087, 34.101498, 34.454960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010963, 34.203976, 34.262939>,  <45.842422, 34.374775, 33.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010963, 34.203976, 34.262939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615387, -0.513413, -0.598085,
		0.666155, 0.744366, 0.046442,
		0.421350, -0.426997, 0.800086,
		46.137367, 34.075878, 34.502964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589123, 34.548740, 33.954079>,  <45.842422, 34.374775, 33.942905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589123, 34.548740, 33.954079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485687, 34.191406, 34.101097>,  <46.423626, 33.977005, 34.189308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485687, 34.191406, 34.101097>,  <46.589123, 34.548740, 33.954079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485687, 34.191406, 34.101097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523496, -0.449368, -0.723893,
		0.811841, 0.005223, 0.583856,
		-0.258585, -0.893332, 0.367549,
		46.408112, 33.923409, 34.211361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183430, 34.083263, 34.228867>,  <46.589123, 34.548740, 33.954079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183430, 34.083263, 34.228867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860317, 33.917168, 34.061504>,  <46.666451, 33.817509, 33.961086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860317, 33.917168, 34.061504>,  <47.183430, 34.083263, 34.228867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.860317, 33.917168, 34.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488163, -0.073351, -0.869665,
		0.330428, -0.906751, 0.261956,
		-0.807783, -0.415239, -0.418405,
		46.617981, 33.792595, 33.935982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666180, 34.251987, 34.789761>,  <47.183430, 34.083263, 34.228867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666180, 34.251987, 34.789761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841766, 34.605801, 34.726627>,  <47.947117, 34.818089, 34.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.841766, 34.605801, 34.726627>,  <47.666180, 34.251987, 34.789761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.841766, 34.605801, 34.726627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898501, 0.431597, -0.080126,
		-0.002754, 0.176985, 0.984210,
		0.438963, 0.884534, -0.157833,
		47.973454, 34.871162, 34.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691341, 34.800316, 35.374218>,  <47.666180, 34.251987, 34.789761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691341, 34.800316, 35.374218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666069, 34.948589, 35.003574>,  <47.650906, 35.037552, 34.781189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666069, 34.948589, 35.003574>,  <47.691341, 34.800316, 35.374218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666069, 34.948589, 35.003574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893127, 0.393313, 0.218240,
		0.445344, 0.841369, 0.306214,
		-0.063182, 0.370680, -0.926609,
		47.647114, 35.059792, 34.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.888222, 29.448490, 31.457315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639431, 29.391079, 31.765223>,  <35.490158, 29.356632, 31.949966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639431, 29.391079, 31.765223>,  <35.888222, 29.448490, 31.457315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639431, 29.391079, 31.765223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345542, 0.831853, 0.434305,
		-0.702671, 0.536115, -0.467797,
		-0.621976, -0.143530, 0.769770,
		35.452839, 29.348021, 31.996153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629742, 30.084562, 31.590664>,  <35.888222, 29.448490, 31.457315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629742, 30.084562, 31.590664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589878, 29.873098, 31.927849>,  <35.565960, 29.746220, 32.130161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589878, 29.873098, 31.927849>,  <35.629742, 30.084562, 31.590664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589878, 29.873098, 31.927849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355977, 0.772167, 0.526344,
		-0.929166, 0.352528, 0.111241,
		-0.099654, -0.528660, 0.842963,
		35.559982, 29.714500, 32.180737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190880, 30.477364, 32.044716>,  <35.629742, 30.084562, 31.590664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190880, 30.477364, 32.044716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.212805, 32.300083>,  <35.442833, 30.054070, 32.453304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348351, 30.212805, 32.300083>,  <35.190880, 30.477364, 32.044716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348351, 30.212805, 32.300083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329972, 0.749885, 0.573403,
		-0.857986, -0.015075, 0.513452,
		0.393674, -0.661396, 0.638417,
		35.466454, 30.014385, 32.491608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998016, 30.670668, 32.721073>,  <35.190880, 30.477364, 32.044716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998016, 30.670668, 32.721073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337322, 30.459446, 32.737099>,  <35.540905, 30.332712, 32.746716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337322, 30.459446, 32.737099>,  <34.998016, 30.670668, 32.721073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337322, 30.459446, 32.737099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372194, 0.648284, 0.664228,
		-0.376721, -0.548530, 0.746455,
		0.848264, -0.528056, 0.040063,
		35.591801, 30.301029, 32.749119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151279, 30.457499, 33.414337>,  <34.998016, 30.670668, 32.721073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151279, 30.457499, 33.414337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497318, 30.467037, 33.213924>,  <35.704941, 30.472761, 33.093678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497318, 30.467037, 33.213924>,  <35.151279, 30.457499, 33.414337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497318, 30.467037, 33.213924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410872, 0.539280, 0.735092,
		0.287728, -0.841788, 0.456733,
		0.865099, 0.023848, -0.501033,
		35.756847, 30.474192, 33.063614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643761, 30.736441, 33.871185>,  <35.151279, 30.457499, 33.414337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643761, 30.736441, 33.871185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866669, 30.750776, 33.539364>,  <36.000416, 30.759378, 33.340271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866669, 30.750776, 33.539364>,  <35.643761, 30.736441, 33.871185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866669, 30.750776, 33.539364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511296, 0.772376, 0.376844,
		0.654235, -0.634153, 0.412100,
		0.557273, 0.035839, -0.829556,
		36.033852, 30.761528, 33.290497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338688, 30.913555, 34.092220>,  <35.643761, 30.736441, 33.871185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338688, 30.913555, 34.092220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374668, 31.016108, 33.707268>,  <36.396255, 31.077639, 33.476295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374668, 31.016108, 33.707268>,  <36.338688, 30.913555, 34.092220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374668, 31.016108, 33.707268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557188, 0.787971, 0.261998,
		0.825500, -0.559794, -0.071974,
		0.089952, 0.256382, -0.962381,
		36.401653, 31.093021, 33.418552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980717, 31.142237, 34.142452>,  <36.338688, 30.913555, 34.092220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980717, 31.142237, 34.142452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830269, 31.306234, 33.810081>,  <36.740002, 31.404633, 33.610657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830269, 31.306234, 33.810081>,  <36.980717, 31.142237, 34.142452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830269, 31.306234, 33.810081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406492, 0.878883, 0.249658,
		0.832647, -0.243866, -0.497221,
		-0.376116, 0.409993, -0.830929,
		36.717434, 31.429232, 33.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491371, 31.495701, 33.813068>,  <36.980717, 31.142237, 34.142452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491371, 31.495701, 33.813068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172108, 31.669260, 33.645893>,  <36.980549, 31.773396, 33.545586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172108, 31.669260, 33.645893>,  <37.491371, 31.495701, 33.813068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172108, 31.669260, 33.645893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443658, 0.892665, 0.079476,
		0.407566, -0.121989, -0.904991,
		-0.798159, 0.433898, -0.417941,
		36.932659, 31.799429, 33.520512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788975, 32.098793, 33.532459>,  <37.491371, 31.495701, 33.813068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788975, 32.098793, 33.532459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 32.190254, 33.510574>,  <37.166916, 32.245132, 33.497444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 32.190254, 33.510574>,  <37.788975, 32.098793, 33.532459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400188, 32.190254, 33.510574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224833, 0.972015, 0.068098,
		0.068754, 0.053887, -0.996177,
		-0.971969, 0.228656, -0.054714,
		37.108597, 32.258850, 33.494160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558430, 32.561161, 32.923298>,  <37.788975, 32.098793, 33.532459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558430, 32.561161, 32.923298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277977, 32.602440, 33.205505>,  <37.109703, 32.627209, 33.374832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277977, 32.602440, 33.205505>,  <37.558430, 32.561161, 32.923298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277977, 32.602440, 33.205505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322472, 0.928391, 0.184667,
		-0.635943, 0.356988, -0.684205,
		-0.701134, 0.103199, 0.705522,
		37.067638, 32.633400, 33.417164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182571, 33.152847, 32.838646>,  <37.558430, 32.561161, 32.923298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182571, 33.152847, 32.838646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170959, 33.075123, 33.230850>,  <37.163994, 33.028488, 33.466171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170959, 33.075123, 33.230850>,  <37.182571, 33.152847, 32.838646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170959, 33.075123, 33.230850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527063, 0.830505, 0.180186,
		-0.849331, 0.522021, 0.078306,
		-0.029027, -0.194310, 0.980511,
		37.162251, 33.016830, 33.525002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059948, 33.850780, 33.041302>,  <37.182571, 33.152847, 32.838646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059948, 33.850780, 33.041302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170792, 33.655460, 33.372307>,  <37.237297, 33.538269, 33.570908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170792, 33.655460, 33.372307>,  <37.059948, 33.850780, 33.041302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170792, 33.655460, 33.372307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376253, 0.847606, 0.374163,
		-0.884107, 0.207671, 0.418602,
		0.277107, -0.488300, 0.827511,
		37.253925, 33.508972, 33.620560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858925, 34.245831, 33.576374>,  <37.059948, 33.850780, 33.041302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858925, 34.245831, 33.576374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153053, 34.018936, 33.724720>,  <37.329533, 33.882797, 33.813728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153053, 34.018936, 33.724720>,  <36.858925, 34.245831, 33.576374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153053, 34.018936, 33.724720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574881, 0.811865, 0.101916,
		-0.358901, 0.138260, 0.923079,
		0.735324, -0.567238, 0.370863,
		37.373650, 33.848766, 33.835979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004696, 34.612686, 34.228111>,  <36.858925, 34.245831, 33.576374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004696, 34.612686, 34.228111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329792, 34.384220, 34.182117>,  <37.524849, 34.247139, 34.154522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329792, 34.384220, 34.182117>,  <37.004696, 34.612686, 34.228111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329792, 34.384220, 34.182117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579029, 0.813734, 0.050625,
		0.064650, -0.107723, 0.992077,
		0.812740, -0.571168, -0.114982,
		37.573612, 34.212872, 34.147621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540211, 34.863823, 34.750217>,  <37.004696, 34.612686, 34.228111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540211, 34.863823, 34.750217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746067, 34.680130, 34.460598>,  <37.869579, 34.569912, 34.286827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746067, 34.680130, 34.460598>,  <37.540211, 34.863823, 34.750217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746067, 34.680130, 34.460598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636158, 0.770688, -0.036649,
		0.574848, -0.441749, 0.688773,
		0.514639, -0.459236, -0.724050,
		37.900459, 34.542358, 34.243382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276855, 34.756702, 34.956970>,  <37.540211, 34.863823, 34.750217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276855, 34.756702, 34.956970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266602, 34.757225, 34.557102>,  <38.260448, 34.757538, 34.317181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266602, 34.757225, 34.557102>,  <38.276855, 34.756702, 34.956970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266602, 34.757225, 34.557102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732228, 0.680824, -0.017887,
		0.680577, -0.732446, -0.018401,
		-0.025629, 0.001300, -0.999670,
		38.258911, 34.757618, 34.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944393, 34.885586, 34.808109>,  <38.276855, 34.756702, 34.956970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944393, 34.885586, 34.808109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813221, 34.950378, 34.435825>,  <38.734520, 34.989254, 34.212456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813221, 34.950378, 34.435825>,  <38.944393, 34.885586, 34.808109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813221, 34.950378, 34.435825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496174, 0.867897, -0.023772,
		0.803913, -0.469592, -0.364977,
		-0.327926, 0.161981, -0.930713,
		38.714844, 34.998974, 34.156612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580116, 34.925503, 34.406586>,  <38.944393, 34.885586, 34.808109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580116, 34.925503, 34.406586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282852, 35.108116, 34.210915>,  <39.104496, 35.217682, 34.093510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282852, 35.108116, 34.210915>,  <39.580116, 34.925503, 34.406586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282852, 35.108116, 34.210915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554120, 0.829696, -0.067491,
		0.375059, -0.321222, -0.869567,
		-0.743156, 0.456531, -0.489181,
		39.059906, 35.245075, 34.064159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906742, 35.309044, 33.922024>,  <39.580116, 34.925503, 34.406586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906742, 35.309044, 33.922024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541168, 35.471329, 33.926262>,  <39.321823, 35.568699, 33.928806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541168, 35.471329, 33.926262>,  <39.906742, 35.309044, 33.922024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541168, 35.471329, 33.926262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398927, 0.902844, -0.160408,
		-0.074646, -0.142376, -0.986994,
		-0.913939, 0.405712, 0.010596,
		39.266987, 35.593044, 33.929440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011303, 35.993420, 33.703243>,  <39.906742, 35.309044, 33.922024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011303, 35.993420, 33.703243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634460, 36.037865, 33.829792>,  <39.408356, 36.064529, 33.905724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634460, 36.037865, 33.829792>,  <40.011303, 35.993420, 33.703243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634460, 36.037865, 33.829792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079710, 0.990668, -0.110554,
		-0.325705, -0.078935, -0.942171,
		-0.942105, 0.111109, 0.316374,
		39.351830, 36.071198, 33.924706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734081, 35.979683, 33.879803>,  <40.011303, 35.993420, 33.703243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734081, 35.979683, 33.879803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070080, 36.057526, 33.677204>,  <41.271679, 36.104233, 33.555645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.070080, 36.057526, 33.677204>,  <40.734081, 35.979683, 33.879803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070080, 36.057526, 33.677204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376492, -0.463138, -0.802345,
		-0.390721, 0.864656, -0.315764,
		0.839995, 0.194610, -0.506493,
		41.322079, 36.115910, 33.525257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583763, 36.082767, 33.244297>,  <40.734081, 35.979683, 33.879803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583763, 36.082767, 33.244297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975594, 36.054501, 33.169006>,  <41.210693, 36.037540, 33.123833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.975594, 36.054501, 33.169006>,  <40.583763, 36.082767, 33.244297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975594, 36.054501, 33.169006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201053, -0.344630, -0.916956,
		-0.000068, 0.936075, -0.351801,
		0.979580, -0.070669, -0.188224,
		41.269466, 36.033298, 33.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728054, 36.481102, 32.701538>,  <40.583763, 36.082767, 33.244297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728054, 36.481102, 32.701538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.012184, 36.199993, 32.717216>,  <41.182663, 36.031326, 32.726624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.012184, 36.199993, 32.717216>,  <40.728054, 36.481102, 32.701538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012184, 36.199993, 32.717216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331365, -0.383021, -0.862260,
		0.620990, 0.599500, -0.504947,
		0.710330, -0.702777, 0.039199,
		41.225285, 35.989159, 32.728977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941631, 36.445126, 32.068829>,  <40.728054, 36.481102, 32.701538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941631, 36.445126, 32.068829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.026367, 36.095322, 32.243347>,  <41.077209, 35.885437, 32.348057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.026367, 36.095322, 32.243347>,  <40.941631, 36.445126, 32.068829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026367, 36.095322, 32.243347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409434, -0.484775, -0.772889,
		0.887405, -0.014906, -0.460749,
		0.211839, -0.874512, 0.436295,
		41.089920, 35.832970, 32.374237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944847, 36.017254, 31.525553>,  <40.941631, 36.445126, 32.068829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944847, 36.017254, 31.525553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938358, 35.750343, 31.823406>,  <40.934467, 35.590199, 32.002117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938358, 35.750343, 31.823406>,  <40.944847, 36.017254, 31.525553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938358, 35.750343, 31.823406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448945, -0.660582, -0.601731,
		0.893412, -0.344059, -0.288856,
		-0.016218, -0.667274, 0.744636,
		40.933495, 35.550159, 32.046799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113892, 35.339931, 31.269440>,  <40.944847, 36.017254, 31.525553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113892, 35.339931, 31.269440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941837, 35.257408, 31.620989>,  <40.838604, 35.207893, 31.831919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941837, 35.257408, 31.620989>,  <41.113892, 35.339931, 31.269440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941837, 35.257408, 31.620989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503460, -0.753264, -0.423227,
		0.749339, -0.624524, 0.220139,
		-0.430138, -0.206310, 0.878873,
		40.812798, 35.195515, 31.884651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033428, 34.524311, 31.314356>,  <41.113892, 35.339931, 31.269440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033428, 34.524311, 31.314356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761215, 34.650681, 31.578800>,  <40.597885, 34.726501, 31.737467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761215, 34.650681, 31.578800>,  <41.033428, 34.524311, 31.314356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761215, 34.650681, 31.578800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693809, -0.567947, -0.442792,
		0.235588, -0.760019, 0.605698,
		-0.680534, 0.315922, 0.661110,
		40.557056, 34.745457, 31.777134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724632, 33.960922, 31.606926>,  <41.033428, 34.524311, 31.314356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724632, 33.960922, 31.606926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444626, 34.241508, 31.660467>,  <40.276623, 34.409863, 31.692593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444626, 34.241508, 31.660467>,  <40.724632, 33.960922, 31.606926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444626, 34.241508, 31.660467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704899, -0.648695, -0.286901,
		-0.114421, -0.295190, 0.948562,
		-0.700018, 0.701468, 0.133854,
		40.234619, 34.451950, 31.700623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236324, 33.668285, 32.053478>,  <40.724632, 33.960922, 31.606926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236324, 33.668285, 32.053478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026558, 33.953075, 31.866680>,  <39.900700, 34.123951, 31.754602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026558, 33.953075, 31.866680>,  <40.236324, 33.668285, 32.053478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026558, 33.953075, 31.866680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756752, -0.641119, -0.127643,
		-0.390275, 0.286458, 0.875001,
		-0.524415, 0.711975, -0.466991,
		39.869232, 34.166668, 31.726583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664749, 33.490215, 32.299355>,  <40.236324, 33.668285, 32.053478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664749, 33.490215, 32.299355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581532, 33.745384, 32.002769>,  <39.531601, 33.898487, 31.824818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581532, 33.745384, 32.002769>,  <39.664749, 33.490215, 32.299355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581532, 33.745384, 32.002769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829309, -0.516976, -0.212090,
		-0.518619, 0.570787, 0.636582,
		-0.208039, 0.637917, -0.741473,
		39.519119, 33.936760, 31.780331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030472, 33.785786, 32.524815>,  <39.664749, 33.490215, 32.299355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030472, 33.785786, 32.524815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073925, 33.833775, 32.130089>,  <39.099998, 33.862568, 31.893253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073925, 33.833775, 32.130089>,  <39.030472, 33.785786, 32.524815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073925, 33.833775, 32.130089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792114, -0.589340, -0.158849,
		-0.600628, 0.798927, 0.031010,
		0.108633, 0.119973, -0.986816,
		39.106514, 33.869766, 31.834044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356945, 33.754158, 32.254707>,  <39.030472, 33.785786, 32.524815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356945, 33.754158, 32.254707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586811, 33.654243, 31.942972>,  <38.724731, 33.594296, 31.755932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586811, 33.654243, 31.942972>,  <38.356945, 33.754158, 32.254707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586811, 33.654243, 31.942972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700812, -0.641986, -0.310993,
		-0.422642, 0.724885, -0.543982,
		0.574663, -0.249790, -0.779338,
		38.759209, 33.579308, 31.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879707, 33.828232, 31.681768>,  <38.356945, 33.754158, 32.254707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879707, 33.828232, 31.681768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181400, 33.589874, 31.571465>,  <38.362415, 33.446857, 31.505281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181400, 33.589874, 31.571465>,  <37.879707, 33.828232, 31.681768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181400, 33.589874, 31.571465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656289, -0.697275, -0.288256,
		-0.020510, 0.398391, -0.916986,
		0.754231, -0.595896, -0.275761,
		38.407669, 33.411106, 31.488737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664433, 33.516933, 31.058279>,  <37.879707, 33.828232, 31.681768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664433, 33.516933, 31.058279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979713, 33.299816, 31.174284>,  <38.168884, 33.169544, 31.243887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979713, 33.299816, 31.174284>,  <37.664433, 33.516933, 31.058279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979713, 33.299816, 31.174284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457866, -0.832105, -0.312986,
		0.411207, 0.113912, -0.904397,
		0.788206, -0.542794, 0.290011,
		38.216175, 33.136978, 31.261288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820499, 33.066700, 30.510050>,  <37.664433, 33.516933, 31.058279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820499, 33.066700, 30.510050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999516, 32.879627, 30.814938>,  <38.106926, 32.767384, 30.997869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999516, 32.879627, 30.814938>,  <37.820499, 33.066700, 30.510050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999516, 32.879627, 30.814938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315648, -0.880097, -0.354677,
		0.836704, -0.081860, -0.541503,
		0.447541, -0.467684, 0.762219,
		38.133778, 32.739323, 31.043604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305893, 32.509579, 30.171227>,  <37.820499, 33.066700, 30.510050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305893, 32.509579, 30.171227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267899, 32.388847, 30.550674>,  <38.245102, 32.316410, 30.778343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267899, 32.388847, 30.550674>,  <38.305893, 32.509579, 30.171227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267899, 32.388847, 30.550674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169748, -0.934061, -0.314191,
		0.980899, -0.190870, 0.037489,
		-0.094987, -0.301826, 0.948619,
		38.239403, 32.298298, 30.835260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747913, 31.986866, 30.266819>,  <38.305893, 32.509579, 30.171227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747913, 31.986866, 30.266819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443874, 31.960207, 30.525372>,  <38.261452, 31.944212, 30.680504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443874, 31.960207, 30.525372>,  <38.747913, 31.986866, 30.266819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443874, 31.960207, 30.525372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173118, -0.938006, -0.300290,
		0.626323, -0.340151, 0.701439,
		-0.760098, -0.066647, 0.646381,
		38.215843, 31.940212, 30.719286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869583, 31.338354, 30.705671>,  <38.747913, 31.986866, 30.266819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869583, 31.338354, 30.705671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478878, 31.421833, 30.725170>,  <38.244453, 31.471920, 30.736870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478878, 31.421833, 30.725170>,  <38.869583, 31.338354, 30.705671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478878, 31.421833, 30.725170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213051, -0.920880, -0.326479,
		-0.023244, -0.329279, 0.943946,
		-0.976765, 0.208697, 0.048748,
		38.185848, 31.484442, 30.739794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598793, 30.836319, 31.008572>,  <38.869583, 31.338354, 30.705671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598793, 30.836319, 31.008572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266632, 30.988440, 30.845697>,  <38.067337, 31.079712, 30.747972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266632, 30.988440, 30.845697>,  <38.598793, 30.836319, 31.008572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266632, 30.988440, 30.845697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205585, -0.888395, -0.410474,
		-0.517847, -0.257147, 0.815911,
		-0.830403, 0.380301, -0.407187,
		38.017509, 31.102530, 30.723541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.031219, 30.362852, 31.208719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845901, 30.565811, 30.918089>,  <37.734711, 30.687586, 30.743711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845901, 30.565811, 30.918089>,  <38.031219, 30.362852, 31.208719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845901, 30.565811, 30.918089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394693, -0.852205, -0.343459,
		-0.793459, 0.127651, 0.595086,
		-0.463292, 0.507397, -0.726573,
		37.706913, 30.718031, 30.700117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392902, 30.065561, 31.123667>,  <38.031219, 30.362852, 31.208719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392902, 30.065561, 31.123667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419762, 30.263735, 30.777248>,  <37.435875, 30.382639, 30.569397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419762, 30.263735, 30.777248>,  <37.392902, 30.065561, 31.123667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419762, 30.263735, 30.777248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612167, -0.664968, -0.427866,
		-0.787873, 0.558893, 0.258640,
		0.067144, 0.495435, -0.866046,
		37.439903, 30.412365, 30.517435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671883, 30.296274, 31.033617>,  <37.392902, 30.065561, 31.123667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671883, 30.296274, 31.033617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889442, 30.292040, 30.697985>,  <37.019978, 30.289499, 30.496605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889442, 30.292040, 30.697985>,  <36.671883, 30.296274, 31.033617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889442, 30.292040, 30.697985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631779, -0.663270, -0.401158,
		-0.552291, 0.748305, -0.367442,
		0.543902, -0.010586, -0.839082,
		37.052612, 30.288864, 30.446260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202778, 30.314440, 30.562235>,  <36.671883, 30.296274, 31.033617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202778, 30.314440, 30.562235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522823, 30.174940, 30.367016>,  <36.714851, 30.091240, 30.249886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522823, 30.174940, 30.367016>,  <36.202778, 30.314440, 30.562235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522823, 30.174940, 30.367016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565271, -0.710615, -0.418921,
		-0.200714, 0.611063, -0.765712,
		0.800114, -0.348751, -0.488047,
		36.762859, 30.070314, 30.220602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945454, 30.183310, 29.945803>,  <36.202778, 30.314440, 30.562235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945454, 30.183310, 29.945803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271736, 29.953953, 29.976360>,  <36.467506, 29.816338, 29.994696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271736, 29.953953, 29.976360>,  <35.945454, 30.183310, 29.945803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271736, 29.953953, 29.976360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466550, -0.730213, -0.499120,
		0.341977, 0.371495, -0.863159,
		0.815710, -0.573394, 0.076395,
		36.516449, 29.781935, 29.999279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199841, 30.051901, 29.343901>,  <35.945454, 30.183310, 29.945803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199841, 30.051901, 29.343901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337132, 29.750305, 29.567934>,  <36.419506, 29.569347, 29.702354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337132, 29.750305, 29.567934>,  <36.199841, 30.051901, 29.343901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337132, 29.750305, 29.567934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511595, -0.650164, -0.561744,
		0.787696, -0.093728, -0.608893,
		0.343229, -0.753990, 0.560083,
		36.440102, 29.524109, 29.735958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300129, 29.574791, 28.748680>,  <36.199841, 30.051901, 29.343901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300129, 29.574791, 28.748680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316769, 29.362087, 29.087029>,  <36.326752, 29.234465, 29.290037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316769, 29.362087, 29.087029>,  <36.300129, 29.574791, 28.748680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316769, 29.362087, 29.087029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178368, -0.836957, -0.517385,
		0.983084, -0.129354, -0.129666,
		0.041599, -0.531762, 0.845872,
		36.329247, 29.202559, 29.340790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656841, 29.035799, 28.580845>,  <36.300129, 29.574791, 28.748680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656841, 29.035799, 28.580845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467701, 28.936644, 28.919067>,  <36.354218, 28.877151, 29.122000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467701, 28.936644, 28.919067>,  <36.656841, 29.035799, 28.580845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467701, 28.936644, 28.919067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184078, -0.910649, -0.369911,
		0.861700, -0.330561, 0.384972,
		-0.472852, -0.247887, 0.845554,
		36.325844, 28.862278, 29.172733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905567, 28.370365, 28.705290>,  <36.656841, 29.035799, 28.580845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905567, 28.370365, 28.705290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561062, 28.417093, 28.903109>,  <36.354359, 28.445129, 29.021801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561062, 28.417093, 28.903109>,  <36.905567, 28.370365, 28.705290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561062, 28.417093, 28.903109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389470, -0.776870, -0.494758,
		0.326402, -0.618729, 0.714588,
		-0.861264, 0.116821, 0.494548,
		36.302681, 28.452139, 29.051474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770493, 27.614698, 28.975525>,  <36.905567, 28.370365, 28.705290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770493, 27.614698, 28.975525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427029, 27.819429, 28.986408>,  <36.220951, 27.942268, 28.992939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.427029, 27.819429, 28.986408>,  <36.770493, 27.614698, 28.975525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427029, 27.819429, 28.986408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431452, -0.693118, -0.577439,
		-0.276692, -0.507561, 0.815980,
		-0.858657, 0.511829, 0.027208,
		36.169434, 27.972979, 28.994570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228233, 27.108580, 29.065521>,  <36.770493, 27.614698, 28.975525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228233, 27.108580, 29.065521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026390, 27.441877, 28.975122>,  <35.905285, 27.641855, 28.920883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026390, 27.441877, 28.975122>,  <36.228233, 27.108580, 29.065521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026390, 27.441877, 28.975122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593633, -0.524939, -0.609950,
		-0.626871, -0.173627, 0.759530,
		-0.504611, 0.833242, -0.225998,
		35.875008, 27.691851, 28.907324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492931, 26.970764, 29.188259>,  <36.228233, 27.108580, 29.065521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492931, 26.970764, 29.188259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545853, 27.250555, 28.907337>,  <35.577606, 27.418428, 28.738785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545853, 27.250555, 28.907337>,  <35.492931, 26.970764, 29.188259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545853, 27.250555, 28.907337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556636, -0.533828, -0.636540,
		-0.820154, 0.475143, 0.318727,
		0.132302, 0.699476, -0.702303,
		35.585545, 27.460398, 28.696646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886078, 26.936567, 28.782221>,  <35.492931, 26.970764, 29.188259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886078, 26.936567, 28.782221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102806, 27.170713, 28.540964>,  <35.232845, 27.311201, 28.396210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102806, 27.170713, 28.540964>,  <34.886078, 26.936567, 28.782221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102806, 27.170713, 28.540964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538431, -0.309284, -0.783860,
		-0.645385, 0.749462, 0.147601,
		0.541822, 0.585364, -0.603140,
		35.265354, 27.346323, 28.360022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368176, 27.171768, 28.307161>,  <34.886078, 26.936567, 28.782221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368176, 27.171768, 28.307161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723545, 27.249088, 28.140627>,  <34.936768, 27.295481, 28.040707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723545, 27.249088, 28.140627>,  <34.368176, 27.171768, 28.307161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723545, 27.249088, 28.140627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371316, -0.230592, -0.899417,
		-0.269863, 0.953657, -0.133087,
		0.888424, 0.193302, -0.416337,
		34.990074, 27.307079, 28.015726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237217, 27.533993, 27.772371>,  <34.368176, 27.171768, 28.307161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237217, 27.533993, 27.772371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588623, 27.382895, 27.655397>,  <34.799465, 27.292236, 27.585213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588623, 27.382895, 27.655397>,  <34.237217, 27.533993, 27.772371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588623, 27.382895, 27.655397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362627, -0.128820, -0.922988,
		0.310983, 0.916905, -0.250151,
		0.878516, -0.377745, -0.292433,
		34.852177, 27.269571, 27.567667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493649, 27.801386, 27.108721>,  <34.237217, 27.533993, 27.772371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493649, 27.801386, 27.108721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651012, 27.435747, 27.148029>,  <34.745430, 27.216364, 27.171614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651012, 27.435747, 27.148029>,  <34.493649, 27.801386, 27.108721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651012, 27.435747, 27.148029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432975, -0.278507, -0.857301,
		0.811026, 0.294719, -0.505348,
		0.393406, -0.914098, 0.098271,
		34.769035, 27.161518, 27.177511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568306, 27.631611, 26.462692>,  <34.493649, 27.801386, 27.108721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568306, 27.631611, 26.462692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662399, 27.281672, 26.632071>,  <34.718857, 27.071709, 26.733698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662399, 27.281672, 26.632071>,  <34.568306, 27.631611, 26.462692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662399, 27.281672, 26.632071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295907, -0.479454, -0.826174,
		0.925799, 0.069044, -0.371658,
		0.235235, -0.874847, 0.423447,
		34.732971, 27.019217, 26.759104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015381, 27.323357, 26.025822>,  <34.568306, 27.631611, 26.462692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015381, 27.323357, 26.025822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855953, 27.024652, 26.238798>,  <34.760296, 26.845430, 26.366583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855953, 27.024652, 26.238798>,  <35.015381, 27.323357, 26.025822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855953, 27.024652, 26.238798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287176, -0.449734, -0.845736,
		0.871020, -0.489985, -0.035204,
		-0.398565, -0.746763, 0.532439,
		34.736385, 26.800623, 26.398529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080467, 26.687696, 25.567745>,  <35.015381, 27.323357, 26.025822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080467, 26.687696, 25.567745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814598, 26.574160, 25.844193>,  <34.655075, 26.506037, 26.010061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814598, 26.574160, 25.844193>,  <35.080467, 26.687696, 25.567745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814598, 26.574160, 25.844193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417641, -0.625854, -0.658698,
		0.619506, -0.726457, 0.297442,
		-0.664671, -0.283844, 0.691119,
		34.615196, 26.489006, 26.051529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095802, 25.942110, 25.494152>,  <35.080467, 26.687696, 25.567745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095802, 25.942110, 25.494152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754883, 26.032614, 25.682789>,  <34.550331, 26.086916, 25.795971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754883, 26.032614, 25.682789>,  <35.095802, 25.942110, 25.494152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754883, 26.032614, 25.682789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519434, -0.472124, -0.712241,
		0.061500, -0.852001, 0.519915,
		-0.852294, 0.226259, 0.471594,
		34.499195, 26.100492, 25.824266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830933, 25.301157, 25.770670>,  <35.095802, 25.942110, 25.494152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830933, 25.301157, 25.770670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539143, 25.571421, 25.728056>,  <34.364067, 25.733580, 25.702488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539143, 25.571421, 25.728056>,  <34.830933, 25.301157, 25.770670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539143, 25.571421, 25.728056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506436, -0.638201, -0.579847,
		-0.459770, -0.369031, 0.807730,
		-0.729476, 0.675659, -0.106535,
		34.320301, 25.774118, 25.696095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209255, 24.882940, 25.799995>,  <34.830933, 25.301157, 25.770670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209255, 24.882940, 25.799995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118164, 25.211039, 25.590103>,  <34.063511, 25.407898, 25.464169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118164, 25.211039, 25.590103>,  <34.209255, 24.882940, 25.799995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118164, 25.211039, 25.590103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630036, -0.535002, -0.562874,
		-0.742426, 0.202418, 0.638616,
		-0.227725, 0.820243, -0.524730,
		34.049847, 25.457111, 25.432684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467804, 24.981070, 25.797894>,  <34.209255, 24.882940, 25.799995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467804, 24.981070, 25.797894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614059, 25.142483, 25.462400>,  <33.701813, 25.239330, 25.261105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614059, 25.142483, 25.462400>,  <33.467804, 24.981070, 25.797894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614059, 25.142483, 25.462400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718069, -0.451038, -0.530039,
		-0.592189, 0.796069, 0.124848,
		0.365636, 0.403533, -0.838732,
		33.723751, 25.263542, 25.210781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981525, 25.352243, 25.513901>,  <33.467804, 24.981070, 25.797894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981525, 25.352243, 25.513901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220764, 25.289770, 25.199478>,  <33.364307, 25.252287, 25.010824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220764, 25.289770, 25.199478>,  <32.981525, 25.352243, 25.513901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220764, 25.289770, 25.199478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757574, -0.430166, -0.490956,
		-0.261456, 0.889136, -0.375603,
		0.598099, -0.156184, -0.786056,
		33.400192, 25.242914, 24.963661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232796, 25.154596, 25.635313>,  <32.981525, 25.352243, 25.513901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232796, 25.154596, 25.635313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057850, 24.998238, 25.959267>,  <31.952883, 24.904423, 26.153639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057850, 24.998238, 25.959267>,  <32.232796, 25.154596, 25.635313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057850, 24.998238, 25.959267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290952, 0.790641, 0.538734,
		-0.850916, 0.471260, -0.232067,
		-0.437366, -0.390897, 0.809883,
		31.926640, 24.880968, 26.202232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829615, 25.741583, 25.997871>,  <32.232796, 25.154596, 25.635313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829615, 25.741583, 25.997871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.887066, 25.467390, 26.283384>,  <31.921535, 25.302874, 26.454691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.887066, 25.467390, 26.283384>,  <31.829615, 25.741583, 25.997871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887066, 25.467390, 26.283384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081505, 0.727002, 0.681781,
		-0.986270, -0.039745, 0.160288,
		0.143627, -0.685484, 0.713781,
		31.930155, 25.261745, 26.497519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485010, 26.023279, 26.533060>,  <31.829615, 25.741583, 25.997871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485010, 26.023279, 26.533060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699139, 25.747950, 26.728874>,  <31.827616, 25.582752, 26.846363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699139, 25.747950, 26.728874>,  <31.485010, 26.023279, 26.533060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699139, 25.747950, 26.728874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216513, 0.672032, 0.708163,
		-0.816427, -0.273104, 0.508783,
		0.535321, -0.688322, 0.489535,
		31.859735, 25.541452, 26.875734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146217, 25.868813, 27.180092>,  <31.485010, 26.023279, 26.533060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146217, 25.868813, 27.180092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531963, 25.776052, 27.231035>,  <31.763411, 25.720396, 27.261600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531963, 25.776052, 27.231035>,  <31.146217, 25.868813, 27.180092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531963, 25.776052, 27.231035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037973, 0.597705, 0.800816,
		-0.261833, -0.767444, 0.585212,
		0.964366, -0.231902, 0.127357,
		31.821274, 25.706482, 27.269241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169884, 26.015221, 27.799334>,  <31.146217, 25.868813, 27.180092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169884, 26.015221, 27.799334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.565710, 26.009277, 27.742012>,  <31.803205, 26.005711, 27.707619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.565710, 26.009277, 27.742012>,  <31.169884, 26.015221, 27.799334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565710, 26.009277, 27.742012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128117, 0.545749, 0.828097,
		0.065904, -0.837817, 0.541959,
		0.989567, -0.014859, -0.143306,
		31.862579, 26.004820, 27.699020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516060, 25.800543, 28.462280>,  <31.169884, 26.015221, 27.799334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516060, 25.800543, 28.462280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801250, 25.966288, 28.236017>,  <31.972364, 26.065735, 28.100260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.801250, 25.966288, 28.236017>,  <31.516060, 25.800543, 28.462280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801250, 25.966288, 28.236017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421882, 0.390859, 0.818074,
		0.560071, -0.821908, 0.103862,
		0.712977, 0.414362, -0.565657,
		32.015144, 26.090595, 28.066320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185814, 25.707281, 28.851284>,  <31.516060, 25.800543, 28.462280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185814, 25.707281, 28.851284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.273933, 26.007427, 28.601990>,  <32.326805, 26.187515, 28.452414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.273933, 26.007427, 28.601990>,  <32.185814, 25.707281, 28.851284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273933, 26.007427, 28.601990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489467, 0.467628, 0.736033,
		0.843736, -0.467199, -0.264262,
		0.220298, 0.750365, -0.623234,
		32.340023, 26.232536, 28.415020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837975, 25.815838, 29.045721>,  <32.185814, 25.707281, 28.851284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837975, 25.815838, 29.045721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760735, 26.139711, 28.824045>,  <32.714390, 26.334036, 28.691040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760735, 26.139711, 28.824045>,  <32.837975, 25.815838, 29.045721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760735, 26.139711, 28.824045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508002, 0.565723, 0.649531,
		0.839433, -0.156107, -0.520560,
		-0.193097, 0.809684, -0.554190,
		32.702805, 26.382616, 28.657787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439674, 26.201057, 28.933706>,  <32.837975, 25.815838, 29.045721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439674, 26.201057, 28.933706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158356, 26.480200, 28.879492>,  <32.989563, 26.647684, 28.846962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158356, 26.480200, 28.879492>,  <33.439674, 26.201057, 28.933706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158356, 26.480200, 28.879492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578454, 0.672603, 0.461514,
		0.413232, 0.246180, -0.876718,
		-0.703299, 0.697854, -0.135537,
		32.947365, 26.689556, 28.838831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765720, 26.752966, 28.707527>,  <33.439674, 26.201057, 28.933706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765720, 26.752966, 28.707527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435005, 26.841848, 28.914234>,  <33.236576, 26.895178, 29.038258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435005, 26.841848, 28.914234>,  <33.765720, 26.752966, 28.707527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435005, 26.841848, 28.914234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539444, 0.573604, 0.616424,
		-0.159448, 0.788419, -0.594115,
		-0.826787, 0.222204, 0.516768,
		33.186970, 26.908510, 29.069263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834461, 27.467037, 28.720434>,  <33.765720, 26.752966, 28.707527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834461, 27.467037, 28.720434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570969, 27.356108, 29.000195>,  <33.412872, 27.289551, 29.168051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570969, 27.356108, 29.000195>,  <33.834461, 27.467037, 28.720434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570969, 27.356108, 29.000195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457633, 0.590173, 0.665033,
		-0.597197, 0.758148, -0.261854,
		-0.658732, -0.277322, 0.699403,
		33.373348, 27.272911, 29.210016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013954, 27.938372, 29.203548>,  <33.834461, 27.467037, 28.720434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013954, 27.938372, 29.203548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783695, 27.686985, 29.412798>,  <33.645538, 27.536152, 29.538347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783695, 27.686985, 29.412798>,  <34.013954, 27.938372, 29.203548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783695, 27.686985, 29.412798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310662, 0.423692, 0.850867,
		-0.756386, 0.652313, -0.048656,
		-0.575647, -0.628468, 0.523124,
		33.611000, 27.498446, 29.569735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497643, 28.330347, 29.680557>,  <34.013954, 27.938372, 29.203548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497643, 28.330347, 29.680557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561340, 27.966848, 29.834866>,  <33.599560, 27.748749, 29.927450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561340, 27.966848, 29.834866>,  <33.497643, 28.330347, 29.680557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561340, 27.966848, 29.834866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376658, 0.417125, 0.827125,
		-0.912563, 0.013592, 0.408710,
		0.159240, -0.908747, 0.385773,
		33.609112, 27.694223, 29.950598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226475, 28.398741, 30.399561>,  <33.497643, 28.330347, 29.680557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226475, 28.398741, 30.399561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475693, 28.085867, 30.399727>,  <33.625225, 27.898144, 30.399826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475693, 28.085867, 30.399727>,  <33.226475, 28.398741, 30.399561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475693, 28.085867, 30.399727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448240, 0.357480, 0.819323,
		-0.641008, -0.510292, 0.573333,
		0.623049, -0.782183, 0.000414,
		33.662609, 27.851212, 30.399851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536453, 28.527691, 31.047293>,  <33.226475, 28.398741, 30.399561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536453, 28.527691, 31.047293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746281, 28.220352, 30.900614>,  <33.872177, 28.035948, 30.812607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746281, 28.220352, 30.900614>,  <33.536453, 28.527691, 31.047293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746281, 28.220352, 30.900614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697704, 0.141147, 0.702343,
		-0.487886, -0.624274, 0.610122,
		0.524572, -0.768348, -0.366695,
		33.903652, 27.989847, 30.790606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648075, 28.030226, 31.619839>,  <33.536453, 28.527691, 31.047293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648075, 28.030226, 31.619839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932442, 28.003231, 31.339828>,  <34.103062, 27.987034, 31.171822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.932442, 28.003231, 31.339828>,  <33.648075, 28.030226, 31.619839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932442, 28.003231, 31.339828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702179, 0.123609, 0.701188,
		0.039209, -0.990033, 0.135264,
		0.710920, -0.067487, -0.700028,
		34.145718, 27.982985, 31.129820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175144, 27.596153, 31.859846>,  <33.648075, 28.030226, 31.619839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175144, 27.596153, 31.859846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341995, 27.872072, 31.623140>,  <34.442104, 28.037624, 31.481117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341995, 27.872072, 31.623140>,  <34.175144, 27.596153, 31.859846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341995, 27.872072, 31.623140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624874, 0.255134, 0.737861,
		0.659954, -0.677559, -0.324613,
		0.417125, 0.689797, -0.591766,
		34.467133, 28.079012, 31.445610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867313, 27.585806, 32.017246>,  <34.175144, 27.596153, 31.859846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867313, 27.585806, 32.017246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844627, 27.927921, 31.811232>,  <34.831017, 28.133190, 31.687622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844627, 27.927921, 31.811232>,  <34.867313, 27.585806, 32.017246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844627, 27.927921, 31.811232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563732, 0.453203, 0.690517,
		0.824008, -0.251180, -0.507858,
		-0.056719, 0.855287, -0.515041,
		34.827610, 28.184507, 31.656719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562092, 27.910162, 31.996519>,  <34.867313, 27.585806, 32.017246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562092, 27.910162, 31.996519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310772, 28.208418, 31.907742>,  <35.159981, 28.387371, 31.854475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310772, 28.208418, 31.907742>,  <35.562092, 27.910162, 31.996519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310772, 28.208418, 31.907742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467891, 0.590094, 0.657926,
		0.621544, 0.309529, -0.719635,
		-0.628300, 0.745641, -0.221943,
		35.122284, 28.432110, 31.841158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991604, 28.478611, 31.770294>,  <35.562092, 27.910162, 31.996519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991604, 28.478611, 31.770294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642216, 28.636309, 31.884567>,  <35.432583, 28.730927, 31.953131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642216, 28.636309, 31.884567>,  <35.991604, 28.478611, 31.770294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642216, 28.636309, 31.884567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483224, 0.630321, 0.607610,
		0.059476, 0.668780, -0.741078,
		-0.873474, 0.394245, 0.285681,
		35.380173, 28.754581, 31.970272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.380138, 32.611732, 31.137524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092949, 32.860737, 31.262096>,  <38.920635, 33.010139, 31.336840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092949, 32.860737, 31.262096>,  <39.380138, 32.611732, 31.137524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092949, 32.860737, 31.262096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658008, 0.752915, 0.011986,
		-0.227022, 0.213532, -0.950192,
		-0.717974, 0.622513, 0.311434,
		38.877556, 33.047489, 31.355526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429787, 33.238468, 30.692434>,  <39.380138, 32.611732, 31.137524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429787, 33.238468, 30.692434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232391, 33.347012, 31.022970>,  <39.113956, 33.412140, 31.221291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232391, 33.347012, 31.022970>,  <39.429787, 33.238468, 30.692434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232391, 33.347012, 31.022970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517287, 0.855352, 0.028034,
		-0.699203, 0.441289, -0.562475,
		-0.493486, 0.271360, 0.826339,
		39.084347, 33.428421, 31.270872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434307, 33.987045, 30.518618>,  <39.429787, 33.238468, 30.692434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434307, 33.987045, 30.518618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327724, 33.917435, 30.897821>,  <39.263775, 33.875668, 31.125343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327724, 33.917435, 30.897821>,  <39.434307, 33.987045, 30.518618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327724, 33.917435, 30.897821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445248, 0.850108, 0.281196,
		-0.854843, 0.497024, -0.149034,
		-0.266456, -0.174022, 0.948007,
		39.247787, 33.865227, 31.182224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131065, 34.588428, 30.730074>,  <39.434307, 33.987045, 30.518618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131065, 34.588428, 30.730074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250599, 34.401855, 31.063093>,  <39.322319, 34.289913, 31.262905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250599, 34.401855, 31.063093>,  <39.131065, 34.588428, 30.730074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250599, 34.401855, 31.063093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482151, 0.826671, 0.290077,
		-0.823546, 0.314729, 0.471930,
		0.298835, -0.466434, 0.832549,
		39.340248, 34.261925, 31.312859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197021, 35.113628, 31.197754>,  <39.131065, 34.588428, 30.730074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197021, 35.113628, 31.197754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.416401, 34.816147, 31.350651>,  <39.548027, 34.637657, 31.442389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.416401, 34.816147, 31.350651>,  <39.197021, 35.113628, 31.197754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416401, 34.816147, 31.350651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654679, 0.666289, 0.357008,
		-0.520191, 0.054445, 0.852313,
		0.548450, -0.743703, 0.382241,
		39.580936, 34.593037, 31.465322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322487, 35.321114, 31.871313>,  <39.197021, 35.113628, 31.197754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322487, 35.321114, 31.871313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598679, 35.037399, 31.814548>,  <39.764393, 34.867168, 31.780489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598679, 35.037399, 31.814548>,  <39.322487, 35.321114, 31.871313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598679, 35.037399, 31.814548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667278, 0.548849, 0.503493,
		-0.279235, -0.442348, 0.852265,
		0.690484, -0.709291, -0.141911,
		39.805824, 34.824612, 31.771975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709702, 35.371880, 32.491066>,  <39.322487, 35.321114, 31.871313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709702, 35.371880, 32.491066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966087, 35.156048, 32.272705>,  <40.119919, 35.026546, 32.141689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966087, 35.156048, 32.272705>,  <39.709702, 35.371880, 32.491066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966087, 35.156048, 32.272705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761996, 0.361776, 0.537103,
		-0.092317, -0.760243, 0.643046,
		0.640968, -0.539582, -0.545904,
		40.158379, 34.994175, 32.108932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184761, 35.004013, 32.987633>,  <39.709702, 35.371880, 32.491066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184761, 35.004013, 32.987633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393330, 35.030537, 32.647346>,  <40.518471, 35.046452, 32.443172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393330, 35.030537, 32.647346>,  <40.184761, 35.004013, 32.987633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393330, 35.030537, 32.647346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725265, 0.490823, 0.482787,
		0.449566, -0.868732, 0.207834,
		0.521423, 0.066310, -0.850718,
		40.549755, 35.050430, 32.392132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831989, 34.683228, 32.997219>,  <40.184761, 35.004013, 32.987633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831989, 34.683228, 32.997219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880146, 34.945869, 32.699390>,  <40.909039, 35.103455, 32.520695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880146, 34.945869, 32.699390>,  <40.831989, 34.683228, 32.997219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880146, 34.945869, 32.699390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728833, 0.450777, 0.515367,
		0.674025, -0.604711, -0.424283,
		0.120391, 0.656601, -0.744568,
		40.916264, 35.142849, 32.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513645, 34.655449, 32.749828>,  <40.831989, 34.683228, 32.997219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513645, 34.655449, 32.749828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376244, 35.015320, 32.642067>,  <41.293804, 35.231243, 32.577408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376244, 35.015320, 32.642067>,  <41.513645, 34.655449, 32.749828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376244, 35.015320, 32.642067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651992, 0.434918, 0.621090,
		0.675953, 0.037694, -0.735980,
		-0.343502, 0.899681, -0.269408,
		41.273193, 35.285225, 32.561245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142952, 35.054749, 32.650280>,  <41.513645, 34.655449, 32.749828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142952, 35.054749, 32.650280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840275, 35.315033, 32.675537>,  <41.658669, 35.471203, 32.690693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840275, 35.315033, 32.675537>,  <42.142952, 35.054749, 32.650280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840275, 35.315033, 32.675537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523602, 0.545366, 0.654535,
		0.391474, 0.528348, -0.753389,
		-0.756696, 0.650710, 0.063148,
		41.613266, 35.510246, 32.694481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433445, 35.613945, 33.073215>,  <42.142952, 35.054749, 32.650280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433445, 35.613945, 33.073215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060673, 35.752048, 33.028831>,  <41.837009, 35.834911, 33.002201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060673, 35.752048, 33.028831>,  <42.433445, 35.613945, 33.073215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060673, 35.752048, 33.028831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161946, 0.669971, 0.724508,
		0.324478, 0.657219, -0.680277,
		-0.931927, 0.345255, -0.110957,
		41.781094, 35.855625, 32.995544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422096, 36.360703, 32.888794>,  <42.433445, 35.613945, 33.073215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422096, 36.360703, 32.888794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087410, 36.265495, 33.086075>,  <41.886597, 36.208370, 33.204445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.087410, 36.265495, 33.086075>,  <42.422096, 36.360703, 32.888794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087410, 36.265495, 33.086075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245429, 0.642119, 0.726256,
		-0.489557, 0.728718, -0.478857,
		-0.836719, -0.238018, 0.493203,
		41.836395, 36.194088, 33.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965378, 37.032227, 32.947464>,  <42.422096, 36.360703, 32.888794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965378, 37.032227, 32.947464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920017, 36.766640, 33.243107>,  <41.892799, 36.607288, 33.420494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920017, 36.766640, 33.243107>,  <41.965378, 37.032227, 32.947464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920017, 36.766640, 33.243107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210757, 0.710903, 0.670969,
		-0.970938, 0.231864, 0.059316,
		-0.113405, -0.663971, 0.739109,
		41.885994, 36.567448, 33.464840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679176, 37.229500, 32.272385>,  <41.965378, 37.032227, 32.947464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679176, 37.229500, 32.272385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515099, 37.588673, 32.208557>,  <41.416653, 37.804176, 32.170261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515099, 37.588673, 32.208557>,  <41.679176, 37.229500, 32.272385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515099, 37.588673, 32.208557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785295, -0.436724, -0.438844,
		-0.463742, -0.054696, 0.884280,
		-0.410189, 0.897931, -0.159574,
		41.392040, 37.858051, 32.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952717, 37.178349, 32.429371>,  <41.679176, 37.229500, 32.272385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952717, 37.178349, 32.429371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967625, 37.489891, 32.178936>,  <40.976570, 37.676819, 32.028675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.967625, 37.489891, 32.178936>,  <40.952717, 37.178349, 32.429371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967625, 37.489891, 32.178936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864513, -0.289119, -0.411130,
		-0.501227, 0.556586, 0.662558,
		0.037271, 0.778860, -0.626090,
		40.978806, 37.723549, 31.991110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230568, 37.495567, 32.338676>,  <40.952717, 37.178349, 32.429371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230568, 37.495567, 32.338676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460567, 37.571331, 32.020306>,  <40.598568, 37.616791, 31.829283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460567, 37.571331, 32.020306>,  <40.230568, 37.495567, 32.338676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460567, 37.571331, 32.020306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775400, -0.184217, -0.604003,
		-0.261028, 0.964463, 0.040944,
		0.574995, 0.189409, -0.795930,
		40.633064, 37.628155, 31.781527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779758, 37.857182, 31.879292>,  <40.230568, 37.495567, 32.338676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779758, 37.857182, 31.879292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077957, 37.771687, 31.626770>,  <40.256878, 37.720390, 31.475256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077957, 37.771687, 31.626770>,  <39.779758, 37.857182, 31.879292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077957, 37.771687, 31.626770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660295, -0.365865, -0.655861,
		-0.090789, 0.905792, -0.413883,
		0.745499, -0.213740, -0.631306,
		40.301605, 37.707565, 31.437378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516075, 38.081795, 31.166576>,  <39.779758, 37.857182, 31.879292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516075, 38.081795, 31.166576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808926, 37.816807, 31.103174>,  <39.984638, 37.657814, 31.065134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808926, 37.816807, 31.103174>,  <39.516075, 38.081795, 31.166576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808926, 37.816807, 31.103174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540414, -0.423251, -0.727194,
		0.414656, 0.618058, -0.667881,
		0.732129, -0.662467, -0.158504,
		40.028564, 37.618065, 31.055622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489079, 37.968361, 30.414274>,  <39.516075, 38.081795, 31.166576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489079, 37.968361, 30.414274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696068, 37.659000, 30.560741>,  <39.820259, 37.473385, 30.648623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696068, 37.659000, 30.560741>,  <39.489079, 37.968361, 30.414274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696068, 37.659000, 30.560741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381709, -0.591613, -0.710136,
		0.765847, 0.227705, -0.601355,
		0.517471, -0.773398, 0.366168,
		39.851311, 37.426979, 30.670591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895321, 37.645817, 29.890018>,  <39.489079, 37.968361, 30.414274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895321, 37.645817, 29.890018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823315, 37.363884, 30.164478>,  <39.780109, 37.194725, 30.329155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823315, 37.363884, 30.164478>,  <39.895321, 37.645817, 29.890018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823315, 37.363884, 30.164478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313984, -0.619884, -0.719137,
		0.932207, -0.344895, -0.109718,
		-0.180015, -0.704834, 0.686151,
		39.769310, 37.152435, 30.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202354, 36.968842, 29.622744>,  <39.895321, 37.645817, 29.890018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202354, 36.968842, 29.622744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938000, 36.848156, 29.897608>,  <39.779385, 36.775745, 30.062527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938000, 36.848156, 29.897608>,  <40.202354, 36.968842, 29.622744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938000, 36.848156, 29.897608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387039, -0.647444, -0.656519,
		0.642981, -0.699846, 0.311114,
		-0.660891, -0.301716, 0.687161,
		39.739731, 36.757641, 30.103756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149284, 36.238682, 29.534945>,  <40.202354, 36.968842, 29.622744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149284, 36.238682, 29.534945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825508, 36.304893, 29.760298>,  <39.631241, 36.344620, 29.895510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825508, 36.304893, 29.760298>,  <40.149284, 36.238682, 29.534945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825508, 36.304893, 29.760298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438323, -0.808769, -0.392130,
		0.390736, -0.564351, 0.727209,
		-0.809443, 0.165533, 0.563384,
		39.582676, 36.354553, 29.929314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963448, 35.603420, 29.949697>,  <40.149284, 36.238682, 29.534945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963448, 35.603420, 29.949697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641773, 35.839455, 29.921177>,  <39.448769, 35.981075, 29.904064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641773, 35.839455, 29.921177>,  <39.963448, 35.603420, 29.949697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641773, 35.839455, 29.921177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548782, -0.783211, -0.292266,
		-0.228306, -0.195906, 0.953675,
		-0.804185, 0.590086, -0.071302,
		39.400517, 36.016479, 29.899786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319504, 35.224297, 30.298214>,  <39.963448, 35.603420, 29.949697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319504, 35.224297, 30.298214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180195, 35.487980, 30.031635>,  <39.096607, 35.646191, 29.871689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180195, 35.487980, 30.031635>,  <39.319504, 35.224297, 30.298214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180195, 35.487980, 30.031635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615177, -0.697172, -0.368115,
		-0.707291, 0.281776, 0.648338,
		-0.348277, 0.659207, -0.666446,
		39.075710, 35.685741, 29.831701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648632, 35.221466, 30.475416>,  <39.319504, 35.224297, 30.298214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648632, 35.221466, 30.475416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664940, 35.377991, 30.107676>,  <38.674725, 35.471905, 29.887032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664940, 35.377991, 30.107676>,  <38.648632, 35.221466, 30.475416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664940, 35.377991, 30.107676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753991, -0.591698, -0.285291,
		-0.655618, 0.704817, 0.270922,
		0.040774, 0.391315, -0.919353,
		38.677174, 35.495384, 29.831869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973476, 35.305447, 30.263124>,  <38.648632, 35.221466, 30.475416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973476, 35.305447, 30.263124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178768, 35.295322, 29.919973>,  <38.301945, 35.289249, 29.714083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178768, 35.295322, 29.919973>,  <37.973476, 35.305447, 30.263124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178768, 35.295322, 29.919973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515145, -0.808566, -0.284336,
		-0.686452, 0.587861, -0.428022,
		0.513234, -0.025310, -0.857875,
		38.332737, 35.287731, 29.662611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490669, 35.164200, 29.745991>,  <37.973476, 35.305447, 30.263124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490669, 35.164200, 29.745991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.838272, 35.039951, 29.591934>,  <38.046833, 34.965401, 29.499500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.838272, 35.039951, 29.591934>,  <37.490669, 35.164200, 29.745991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838272, 35.039951, 29.591934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461876, -0.788422, -0.406276,
		-0.177456, 0.530946, -0.828617,
		0.869011, -0.310622, -0.385142,
		38.098976, 34.946766, 29.476391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247513, 35.792526, 29.302301>,  <37.490669, 35.164200, 29.745991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247513, 35.792526, 29.302301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866665, 35.909939, 29.336493>,  <36.638157, 35.980385, 29.357008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866665, 35.909939, 29.336493>,  <37.247513, 35.792526, 29.302301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866665, 35.909939, 29.336493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231628, 0.510119, 0.828328,
		0.199534, 0.808467, -0.553685,
		-0.952121, 0.293529, 0.085478,
		36.581028, 35.997997, 29.362135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352074, 36.417130, 29.495522>,  <37.247513, 35.792526, 29.302301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352074, 36.417130, 29.495522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 36.337902, 29.605942>,  <36.750145, 36.290367, 29.672194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 36.337902, 29.605942>,  <37.352074, 36.417130, 29.495522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975868, 36.337902, 29.605942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138905, 0.517325, 0.844441,
		-0.310066, 0.832552, -0.459039,
		-0.940513, -0.198069, 0.276051,
		36.693714, 36.278481, 29.688757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028004, 37.086258, 29.610455>,  <37.352074, 36.417130, 29.495522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028004, 37.086258, 29.610455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826515, 36.817253, 29.827341>,  <36.705624, 36.655849, 29.957472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826515, 36.817253, 29.827341>,  <37.028004, 37.086258, 29.610455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826515, 36.817253, 29.827341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005859, 0.624987, 0.780613,
		-0.863847, 0.396388, -0.310879,
		-0.503721, -0.672508, 0.542215,
		36.675400, 36.615501, 29.990005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230194, 37.310642, 29.735214>,  <37.028004, 37.086258, 29.610455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230194, 37.310642, 29.735214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373158, 37.079144, 30.028418>,  <36.458935, 36.940243, 30.204340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.373158, 37.079144, 30.028418>,  <36.230194, 37.310642, 29.735214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373158, 37.079144, 30.028418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169509, 0.731619, 0.660304,
		-0.918436, -0.360252, 0.163385,
		0.357411, -0.578751, 0.733010,
		36.480381, 36.905518, 30.248322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049053, 37.684101, 30.371887>,  <36.230194, 37.310642, 29.735214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049053, 37.684101, 30.371887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.287518, 37.391529, 30.504309>,  <36.430595, 37.215984, 30.583761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.287518, 37.391529, 30.504309>,  <36.049053, 37.684101, 30.371887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287518, 37.391529, 30.504309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056713, 0.449678, 0.891388,
		-0.800856, -0.512640, 0.309564,
		0.596165, -0.731430, 0.331054,
		36.466366, 37.172100, 30.603624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796501, 37.412407, 31.126390>,  <36.049053, 37.684101, 30.371887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796501, 37.412407, 31.126390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183281, 37.317455, 31.089153>,  <36.415348, 37.260483, 31.066811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.183281, 37.317455, 31.089153>,  <35.796501, 37.412407, 31.126390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183281, 37.317455, 31.089153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177065, 0.362394, 0.915051,
		-0.183481, -0.901288, 0.392448,
		0.966945, -0.237383, -0.093095,
		36.473366, 37.246239, 31.061224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982418, 37.049129, 31.737787>,  <35.796501, 37.412407, 31.126390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982418, 37.049129, 31.737787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341530, 37.152508, 31.595131>,  <36.556995, 37.214535, 31.509537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.341530, 37.152508, 31.595131>,  <35.982418, 37.049129, 31.737787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341530, 37.152508, 31.595131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249488, 0.368893, 0.895362,
		0.362956, -0.892821, 0.266710,
		0.897785, 0.258436, -0.356640,
		36.610863, 37.230042, 31.488138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410347, 36.879131, 32.294853>,  <35.982418, 37.049129, 31.737787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410347, 36.879131, 32.294853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617279, 37.143570, 32.077480>,  <36.741436, 37.302235, 31.947056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617279, 37.143570, 32.077480>,  <36.410347, 36.879131, 32.294853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617279, 37.143570, 32.077480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400896, 0.373815, 0.836388,
		0.756079, -0.650546, -0.071648,
		0.517326, 0.661099, -0.543436,
		36.772476, 37.341900, 31.914450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070782, 36.845669, 32.644890>,  <36.410347, 36.879131, 32.294853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070782, 36.845669, 32.644890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092789, 37.174217, 32.417797>,  <37.105995, 37.371346, 32.281540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.092789, 37.174217, 32.417797>,  <37.070782, 36.845669, 32.644890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092789, 37.174217, 32.417797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350709, 0.516470, 0.781192,
		0.934867, -0.242092, -0.259646,
		0.055021, 0.821370, -0.567735,
		37.109295, 37.420628, 32.247475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750710, 37.215889, 32.744312>,  <37.070782, 36.845669, 32.644890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750710, 37.215889, 32.744312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508457, 37.508965, 32.620136>,  <37.363106, 37.684811, 32.545631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508457, 37.508965, 32.620136>,  <37.750710, 37.215889, 32.744312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508457, 37.508965, 32.620136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304221, 0.573680, 0.760487,
		0.735298, 0.366131, -0.570338,
		-0.605629, 0.732694, -0.310441,
		37.326767, 37.728771, 32.527004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173302, 37.805035, 32.690872>,  <37.750710, 37.215889, 32.744312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173302, 37.805035, 32.690872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 37.921761, 32.740692>,  <37.566368, 37.991795, 32.770584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 37.921761, 32.740692>,  <38.173302, 37.805035, 32.690872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793968, 37.921761, 32.740692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284857, 0.610193, 0.739271,
		0.139733, 0.736551, -0.661791,
		-0.948331, 0.291816, 0.124547,
		37.509468, 38.009304, 32.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168568, 38.503857, 32.761333>,  <38.173302, 37.805035, 32.690872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168568, 38.503857, 32.761333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822727, 38.393120, 32.929058>,  <37.615223, 38.326675, 33.029694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822727, 38.393120, 32.929058>,  <38.168568, 38.503857, 32.761333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822727, 38.393120, 32.929058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113438, 0.705417, 0.699656,
		-0.489483, 0.652490, -0.578501,
		-0.864603, -0.276845, 0.419307,
		37.563347, 38.310066, 33.054852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.702686, 33.532204, 26.659168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389965, 33.535152, 26.908560>,  <35.202332, 33.536922, 27.058195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389965, 33.535152, 26.908560>,  <35.702686, 33.532204, 26.659168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389965, 33.535152, 26.908560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276276, 0.900509, 0.335791,
		-0.558973, 0.434776, -0.706058,
		-0.781806, 0.007369, 0.623479,
		35.155422, 33.537365, 27.095604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299931, 34.269711, 26.659210>,  <35.702686, 33.532204, 26.659168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299931, 34.269711, 26.659210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 34.083817, 27.005989>,  <35.184677, 33.972282, 27.214056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 34.083817, 27.005989>,  <35.299931, 34.269711, 26.659210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227898, 34.083817, 27.005989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147943, 0.858533, 0.490952,
		-0.972462, 0.216672, -0.085855,
		-0.180085, -0.464731, 0.866946,
		35.173874, 33.944397, 27.266073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025063, 34.808475, 27.028334>,  <35.299931, 34.269711, 26.659210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025063, 34.808475, 27.028334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130001, 34.546268, 27.311590>,  <35.192966, 34.388943, 27.481544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130001, 34.546268, 27.311590>,  <35.025063, 34.808475, 27.028334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130001, 34.546268, 27.311590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010012, 0.731957, 0.681277,
		-0.964921, -0.185822, 0.185465,
		0.262349, -0.655522, 0.708141,
		35.208706, 34.349613, 27.524033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645161, 35.019222, 27.628328>,  <35.025063, 34.808475, 27.028334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645161, 35.019222, 27.628328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962837, 34.806339, 27.745644>,  <35.153442, 34.678612, 27.816032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962837, 34.806339, 27.745644>,  <34.645161, 35.019222, 27.628328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962837, 34.806339, 27.745644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080321, 0.570353, 0.817463,
		-0.602335, -0.625665, 0.495717,
		0.794192, -0.532203, 0.293290,
		35.201096, 34.646679, 27.833630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566166, 34.896645, 28.416641>,  <34.645161, 35.019222, 27.628328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566166, 34.896645, 28.416641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943928, 34.875523, 28.286840>,  <35.170586, 34.862850, 28.208960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943928, 34.875523, 28.286840>,  <34.566166, 34.896645, 28.416641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943928, 34.875523, 28.286840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258769, 0.728243, 0.634588,
		0.202806, -0.683282, 0.701425,
		0.944409, -0.052809, -0.324504,
		35.227249, 34.859680, 28.189489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994923, 34.784664, 28.980597>,  <34.566166, 34.896645, 28.416641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994923, 34.784664, 28.980597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266384, 34.938446, 28.730280>,  <35.429260, 35.030716, 28.580090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266384, 34.938446, 28.730280>,  <34.994923, 34.784664, 28.980597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266384, 34.938446, 28.730280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525809, 0.340560, 0.779451,
		0.512784, -0.858028, 0.028973,
		0.678658, 0.384456, -0.625793,
		35.469982, 35.053783, 28.542542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511208, 34.724140, 29.343372>,  <34.994923, 34.784664, 28.980597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511208, 34.724140, 29.343372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653694, 34.969765, 29.061653>,  <35.739185, 35.117138, 28.892622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653694, 34.969765, 29.061653>,  <35.511208, 34.724140, 29.343372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653694, 34.969765, 29.061653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504280, 0.508215, 0.698154,
		0.786645, -0.603858, -0.128625,
		0.356217, 0.614063, -0.704299,
		35.760559, 35.153984, 28.850363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283100, 34.743832, 29.457678>,  <35.511208, 34.724140, 29.343372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283100, 34.743832, 29.457678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197273, 35.067001, 29.238144>,  <36.145775, 35.260902, 29.106422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197273, 35.067001, 29.238144>,  <36.283100, 34.743832, 29.457678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197273, 35.067001, 29.238144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603101, 0.551599, 0.576201,
		0.768263, -0.207367, -0.605616,
		-0.214572, 0.807921, -0.548837,
		36.132900, 35.309380, 29.073492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949276, 35.055187, 29.213345>,  <36.283100, 34.743832, 29.457678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949276, 35.055187, 29.213345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654804, 35.325558, 29.226973>,  <36.478119, 35.487778, 29.235149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654804, 35.325558, 29.226973>,  <36.949276, 35.055187, 29.213345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654804, 35.325558, 29.226973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554554, 0.573606, 0.602865,
		0.387948, 0.462713, -0.797116,
		-0.736183, 0.675924, 0.034070,
		36.433949, 35.528336, 29.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613956, 34.984013, 28.749146>,  <36.949276, 35.055187, 29.213345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613956, 34.984013, 28.749146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964439, 34.791245, 28.747604>,  <38.174728, 34.675583, 28.746679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964439, 34.791245, 28.747604>,  <37.613956, 34.984013, 28.749146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964439, 34.791245, 28.747604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469929, -0.852587, -0.228610,
		0.106887, 0.202121, -0.973510,
		0.876209, -0.481916, -0.003852,
		38.227303, 34.646671, 28.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714680, 34.549805, 28.155195>,  <37.613956, 34.984013, 28.749146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714680, 34.549805, 28.155195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937527, 34.407745, 28.455458>,  <38.071236, 34.322510, 28.635616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937527, 34.407745, 28.455458>,  <37.714680, 34.549805, 28.155195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937527, 34.407745, 28.455458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282032, -0.931127, -0.231214,
		0.781073, -0.082895, -0.618913,
		0.557120, -0.355148, 0.750658,
		38.104664, 34.301201, 28.680655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343731, 34.235001, 27.901657>,  <37.714680, 34.549805, 28.155195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343731, 34.235001, 27.901657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285690, 34.062622, 28.257912>,  <38.250866, 33.959194, 28.471664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285690, 34.062622, 28.257912>,  <38.343731, 34.235001, 27.901657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285690, 34.062622, 28.257912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029602, -0.897870, -0.439265,
		0.988974, -0.090102, 0.117523,
		-0.145099, -0.430943, 0.890637,
		38.242161, 33.933338, 28.525103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821404, 33.616528, 27.851734>,  <38.343731, 34.235001, 27.901657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821404, 33.616528, 27.851734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548328, 33.553310, 28.137098>,  <38.384483, 33.515381, 28.308317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548328, 33.553310, 28.137098>,  <38.821404, 33.616528, 27.851734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548328, 33.553310, 28.137098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242223, -0.872178, -0.425010,
		0.689391, -0.462955, 0.557147,
		-0.682692, -0.158044, 0.713410,
		38.343521, 33.505898, 28.351122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884586, 32.818340, 28.077028>,  <38.821404, 33.616528, 27.851734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884586, 32.818340, 28.077028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528717, 32.968716, 28.180683>,  <38.315197, 33.058941, 28.242876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528717, 32.968716, 28.180683>,  <38.884586, 32.818340, 28.077028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528717, 32.968716, 28.180683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447273, -0.831671, -0.329043,
		0.091815, -0.408645, 0.908063,
		-0.889672, 0.375941, 0.259136,
		38.261814, 33.081497, 28.258425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567810, 32.268284, 28.405191>,  <38.884586, 32.818340, 28.077028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567810, 32.268284, 28.405191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309025, 32.538109, 28.262978>,  <38.153755, 32.700005, 28.177649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309025, 32.538109, 28.262978>,  <38.567810, 32.268284, 28.405191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309025, 32.538109, 28.262978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476276, -0.721605, -0.502442,
		-0.595485, -0.155728, 0.788129,
		-0.646962, 0.674563, -0.355535,
		38.114937, 32.740479, 28.156317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891563, 31.889660, 28.397959>,  <38.567810, 32.268284, 28.405191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891563, 31.889660, 28.397959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855133, 32.204510, 28.153946>,  <37.833275, 32.393417, 28.007538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855133, 32.204510, 28.153946>,  <37.891563, 31.889660, 28.397959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855133, 32.204510, 28.153946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560722, -0.546780, -0.621790,
		-0.822980, 0.285426, 0.491158,
		-0.091080, 0.787123, -0.610034,
		37.827808, 32.440647, 27.970936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311901, 31.824722, 28.119352>,  <37.891563, 31.889660, 28.397959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311901, 31.824722, 28.119352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469864, 32.079201, 27.854235>,  <37.564644, 32.231888, 27.695164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469864, 32.079201, 27.854235>,  <37.311901, 31.824722, 28.119352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469864, 32.079201, 27.854235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616336, -0.351541, -0.704662,
		-0.681304, 0.686784, 0.253284,
		0.394911, 0.636197, -0.662796,
		37.588337, 32.270061, 27.655396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755733, 32.274654, 27.771862>,  <37.311901, 31.824722, 28.119352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755733, 32.274654, 27.771862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050579, 32.252090, 27.502499>,  <37.227486, 32.238552, 27.340881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050579, 32.252090, 27.502499>,  <36.755733, 32.274654, 27.771862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050579, 32.252090, 27.502499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643197, -0.364199, -0.673540,
		-0.207263, 0.929611, -0.304737,
		0.737116, -0.056406, -0.673408,
		37.271713, 32.235168, 27.300476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444530, 32.379917, 27.104170>,  <36.755733, 32.274654, 27.771862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444530, 32.379917, 27.104170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795547, 32.239677, 26.973324>,  <37.006157, 32.155533, 26.894815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795547, 32.239677, 26.973324>,  <36.444530, 32.379917, 27.104170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795547, 32.239677, 26.973324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438591, -0.311146, -0.843105,
		0.193809, 0.883329, -0.426812,
		0.877540, -0.350597, -0.327117,
		37.058811, 32.134499, 26.875189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404606, 32.472218, 26.401085>,  <36.444530, 32.379917, 27.104170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404606, 32.472218, 26.401085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691837, 32.200108, 26.459848>,  <36.864178, 32.036842, 26.495108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691837, 32.200108, 26.459848>,  <36.404606, 32.472218, 26.401085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691837, 32.200108, 26.459848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319960, -0.510148, -0.798357,
		0.618052, 0.526278, -0.583989,
		0.718079, -0.680280, 0.146910,
		36.907261, 31.996023, 26.503922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550640, 32.295467, 25.750919>,  <36.404606, 32.472218, 26.401085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550640, 32.295467, 25.750919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696930, 31.998404, 25.975313>,  <36.784702, 31.820166, 26.109949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696930, 31.998404, 25.975313>,  <36.550640, 32.295467, 25.750919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696930, 31.998404, 25.975313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384923, -0.669470, -0.635330,
		0.847397, 0.016418, -0.530706,
		0.365723, -0.742658, 0.560987,
		36.806648, 31.775606, 26.143610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982548, 31.950907, 25.331856>,  <36.550640, 32.295467, 25.750919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982548, 31.950907, 25.331856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888569, 31.678633, 25.609407>,  <36.832184, 31.515268, 25.775938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888569, 31.678633, 25.609407>,  <36.982548, 31.950907, 25.331856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888569, 31.678633, 25.609407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323311, -0.618491, -0.716198,
		0.916663, -0.392605, -0.074763,
		-0.234942, -0.680684, 0.693881,
		36.818085, 31.474428, 25.817572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143253, 31.241785, 25.074718>,  <36.982548, 31.950907, 25.331856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143253, 31.241785, 25.074718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868782, 31.173735, 25.357622>,  <36.704098, 31.132904, 25.527365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868782, 31.173735, 25.357622>,  <37.143253, 31.241785, 25.074718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868782, 31.173735, 25.357622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529296, -0.550188, -0.645863,
		0.499003, -0.817527, 0.287481,
		-0.686179, -0.170125, 0.707259,
		36.662930, 31.122698, 25.569799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.658222, 29.874619, 31.824694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831799, 30.038048, 31.503504>,  <31.935944, 30.136105, 31.310791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831799, 30.038048, 31.503504>,  <31.658222, 29.874619, 31.824694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831799, 30.038048, 31.503504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577003, 0.558459, 0.595979,
		0.691929, -0.721936, 0.006589,
		0.433939, 0.408573, -0.802973,
		31.961981, 30.160620, 31.262611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328953, 29.957340, 32.030308>,  <31.658222, 29.874619, 31.824694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328953, 29.957340, 32.030308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.349510, 30.171768, 31.693264>,  <32.361843, 30.300425, 31.491039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.349510, 30.171768, 31.693264>,  <32.328953, 29.957340, 32.030308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349510, 30.171768, 31.693264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656463, 0.617696, 0.433022,
		0.752606, -0.575394, -0.320166,
		0.051393, 0.536072, -0.842606,
		32.364929, 30.332590, 31.440481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004887, 30.062220, 31.972940>,  <32.328953, 29.957340, 32.030308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004887, 30.062220, 31.972940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834782, 30.331524, 31.730989>,  <32.732719, 30.493107, 31.585819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834782, 30.331524, 31.730989>,  <33.004887, 30.062220, 31.972940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834782, 30.331524, 31.730989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602840, 0.709198, 0.365545,
		0.675083, -0.209192, -0.707461,
		-0.425261, 0.673259, -0.604877,
		32.707203, 30.533501, 31.549526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503922, 30.342276, 31.540686>,  <33.004887, 30.062220, 31.972940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503922, 30.342276, 31.540686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.217201, 30.621138, 31.545923>,  <33.045170, 30.788454, 31.549067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.217201, 30.621138, 31.545923>,  <33.503922, 30.342276, 31.540686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217201, 30.621138, 31.545923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642584, 0.653170, 0.400568,
		0.270704, 0.295543, -0.916174,
		-0.716802, 0.697154, 0.013096,
		33.002159, 30.830284, 31.549852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794064, 30.976603, 31.189863>,  <33.503922, 30.342276, 31.540686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794064, 30.976603, 31.189863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484470, 31.099134, 31.411535>,  <33.298714, 31.172653, 31.544538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484470, 31.099134, 31.411535>,  <33.794064, 30.976603, 31.189863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484470, 31.099134, 31.411535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569533, 0.719275, 0.397838,
		-0.276739, 0.623543, -0.731170,
		-0.773982, 0.306328, 0.554180,
		33.252277, 31.191032, 31.577789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983253, 31.614397, 31.192236>,  <33.794064, 30.976603, 31.189863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983253, 31.614397, 31.192236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707539, 31.573275, 31.479097>,  <33.542110, 31.548601, 31.651215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707539, 31.573275, 31.479097>,  <33.983253, 31.614397, 31.192236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707539, 31.573275, 31.479097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460626, 0.701859, 0.543339,
		-0.559200, 0.704858, -0.436430,
		-0.689289, -0.102804, 0.717155,
		33.500751, 31.542433, 31.694244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868179, 32.293442, 31.526583>,  <33.983253, 31.614397, 31.192236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868179, 32.293442, 31.526583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719250, 32.038250, 31.796204>,  <33.629890, 31.885134, 31.957977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719250, 32.038250, 31.796204>,  <33.868179, 32.293442, 31.526583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719250, 32.038250, 31.796204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326323, 0.589909, 0.738594,
		-0.868841, 0.494958, -0.011451,
		-0.372328, -0.637984, 0.674054,
		33.607552, 31.846855, 31.998419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335030, 32.660374, 31.922302>,  <33.868179, 32.293442, 31.526583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335030, 32.660374, 31.922302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487083, 32.352325, 32.127209>,  <33.578316, 32.167496, 32.250153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487083, 32.352325, 32.127209>,  <33.335030, 32.660374, 31.922302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487083, 32.352325, 32.127209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380668, 0.635023, 0.672188,
		-0.842965, -0.060519, 0.534554,
		0.380134, -0.770119, 0.512265,
		33.601124, 32.121288, 32.280888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208820, 32.747284, 32.635239>,  <33.335030, 32.660374, 31.922302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208820, 32.747284, 32.635239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496227, 32.474224, 32.688484>,  <33.668671, 32.310387, 32.720432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496227, 32.474224, 32.688484>,  <33.208820, 32.747284, 32.635239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496227, 32.474224, 32.688484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416590, 0.575680, 0.703595,
		-0.556944, -0.450089, 0.698021,
		0.718517, -0.682651, 0.133119,
		33.711781, 32.269428, 32.728420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264339, 32.622719, 33.370754>,  <33.208820, 32.747284, 32.635239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264339, 32.622719, 33.370754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.621899, 32.510586, 33.230835>,  <33.836433, 32.443306, 33.146881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.621899, 32.510586, 33.230835>,  <33.264339, 32.622719, 33.370754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621899, 32.510586, 33.230835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433711, 0.343607, 0.832964,
		-0.113310, -0.896298, 0.428732,
		0.893899, -0.280329, -0.349800,
		33.890068, 32.426487, 33.125896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522736, 32.333450, 33.956318>,  <33.264339, 32.622719, 33.370754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522736, 32.333450, 33.956318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830666, 32.418484, 33.715591>,  <34.015423, 32.469501, 33.571156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.830666, 32.418484, 33.715591>,  <33.522736, 32.333450, 33.956318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830666, 32.418484, 33.715591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533736, 0.302636, 0.789644,
		0.349994, -0.929097, 0.119514,
		0.769825, 0.212582, -0.601813,
		34.061611, 32.482258, 33.535046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020248, 32.038486, 34.272461>,  <33.522736, 32.333450, 33.956318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020248, 32.038486, 34.272461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157166, 32.330498, 34.035854>,  <34.239315, 32.505703, 33.893890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.157166, 32.330498, 34.035854>,  <34.020248, 32.038486, 34.272461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157166, 32.330498, 34.035854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585186, 0.326908, 0.742084,
		0.735113, -0.600161, -0.315301,
		0.342295, 0.730026, -0.591520,
		34.259853, 32.549507, 33.858398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697903, 32.181072, 34.473728>,  <34.020248, 32.038486, 34.272461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697903, 32.181072, 34.473728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667877, 32.501034, 34.235561>,  <34.649860, 32.693008, 34.092659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667877, 32.501034, 34.235561>,  <34.697903, 32.181072, 34.473728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667877, 32.501034, 34.235561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437618, 0.562959, 0.701119,
		0.896022, -0.207936, -0.392310,
		-0.075067, 0.799900, -0.595420,
		34.645359, 32.741005, 34.056934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322384, 32.489685, 34.435001>,  <34.697903, 32.181072, 34.473728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322384, 32.489685, 34.435001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.050797, 32.771317, 34.351791>,  <34.887844, 32.940296, 34.301865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.050797, 32.771317, 34.351791>,  <35.322384, 32.489685, 34.435001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050797, 32.771317, 34.351791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329686, 0.545573, 0.770491,
		0.655978, 0.454558, -0.602553,
		-0.678969, 0.704079, -0.208023,
		34.847107, 32.982540, 34.289383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853718, 32.602703, 33.827244>,  <35.322384, 32.489685, 34.435001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853718, 32.602703, 33.827244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218781, 32.494049, 33.705086>,  <36.437820, 32.428856, 33.631790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218781, 32.494049, 33.705086>,  <35.853718, 32.602703, 33.827244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218781, 32.494049, 33.705086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393593, -0.785501, -0.477570,
		-0.110160, 0.556059, -0.823810,
		0.912661, -0.271637, -0.305391,
		36.492580, 32.412560, 33.613468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794163, 32.324459, 33.144016>,  <35.853718, 32.602703, 33.827244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794163, 32.324459, 33.144016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145676, 32.177822, 33.266235>,  <36.356583, 32.089840, 33.339569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145676, 32.177822, 33.266235>,  <35.794163, 32.324459, 33.144016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145676, 32.177822, 33.266235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204893, -0.868067, -0.452193,
		0.431006, 0.334773, -0.837950,
		0.878779, -0.366588, 0.305550,
		36.409309, 32.067844, 33.357899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103661, 32.036442, 32.567142>,  <35.794163, 32.324459, 33.144016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103661, 32.036442, 32.567142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291065, 31.849092, 32.866776>,  <36.403507, 31.736683, 33.046555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291065, 31.849092, 32.866776>,  <36.103661, 32.036442, 32.567142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291065, 31.849092, 32.866776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027892, -0.855316, -0.517355,
		0.883018, 0.221493, -0.413788,
		0.468510, -0.468375, 0.749081,
		36.431618, 31.708580, 33.091499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485760, 31.551369, 32.212868>,  <36.103661, 32.036442, 32.567142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485760, 31.551369, 32.212868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454716, 31.405043, 32.583847>,  <36.436089, 31.317247, 32.806435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454716, 31.405043, 32.583847>,  <36.485760, 31.551369, 32.212868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454716, 31.405043, 32.583847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234929, -0.897346, -0.373603,
		0.968909, -0.246878, -0.016299,
		-0.077609, -0.365817, 0.927445,
		36.431435, 31.295298, 32.862080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824520, 30.938461, 32.258045>,  <36.485760, 31.551369, 32.212868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824520, 30.938461, 32.258045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564148, 30.894844, 32.558552>,  <36.407925, 30.868673, 32.738853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.564148, 30.894844, 32.558552>,  <36.824520, 30.938461, 32.258045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564148, 30.894844, 32.558552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249694, -0.903812, -0.347530,
		0.716896, -0.413805, 0.561093,
		-0.650932, -0.109042, 0.751263,
		36.368870, 30.862131, 32.783932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891548, 30.127253, 32.486889>,  <36.824520, 30.938461, 32.258045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891548, 30.127253, 32.486889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554192, 30.255342, 32.659470>,  <36.351776, 30.332197, 32.763020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554192, 30.255342, 32.659470>,  <36.891548, 30.127253, 32.486889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554192, 30.255342, 32.659470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422885, -0.890967, -0.165365,
		0.331455, -0.321921, 0.886851,
		-0.843390, 0.320225, 0.431451,
		36.301174, 30.351410, 32.788906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616955, 29.573120, 32.900082>,  <36.891548, 30.127253, 32.486889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616955, 29.573120, 32.900082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278572, 29.781366, 32.853939>,  <36.075542, 29.906315, 32.826252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278572, 29.781366, 32.853939>,  <36.616955, 29.573120, 32.900082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278572, 29.781366, 32.853939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514369, -0.853742, -0.080930,
		-0.140621, -0.009126, 0.990021,
		-0.845962, 0.520616, -0.115359,
		36.024784, 29.937551, 32.819332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121052, 29.145376, 33.185810>,  <36.616955, 29.573120, 32.900082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121052, 29.145376, 33.185810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915581, 29.418381, 32.977840>,  <35.792297, 29.582184, 32.853058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915581, 29.418381, 32.977840>,  <36.121052, 29.145376, 33.185810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915581, 29.418381, 32.977840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569701, -0.724433, -0.388121,
		-0.641544, 0.096831, 0.760950,
		-0.513675, 0.682510, -0.519920,
		35.761478, 29.623135, 32.821865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304382, 29.082609, 33.281639>,  <36.121052, 29.145376, 33.185810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304382, 29.082609, 33.281639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392014, 29.265364, 32.936790>,  <35.444592, 29.375017, 32.729881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392014, 29.265364, 32.936790>,  <35.304382, 29.082609, 33.281639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392014, 29.265364, 32.936790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722665, -0.517688, -0.457989,
		-0.655561, 0.723363, 0.216763,
		0.219077, 0.456887, -0.862125,
		35.457737, 29.402430, 32.678154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643295, 29.346098, 32.953835>,  <35.304382, 29.082609, 33.281639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643295, 29.346098, 32.953835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930737, 29.291924, 32.680992>,  <35.103203, 29.259418, 32.517288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.930737, 29.291924, 32.680992>,  <34.643295, 29.346098, 32.953835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930737, 29.291924, 32.680992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646010, -0.493121, -0.582668,
		-0.257446, 0.859353, -0.441852,
		0.718604, -0.135435, -0.682104,
		35.146317, 29.251293, 32.476360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391579, 29.499609, 32.283726>,  <34.643295, 29.346098, 32.953835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391579, 29.499609, 32.283726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685287, 29.252117, 32.171997>,  <34.861511, 29.103622, 32.104958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.685287, 29.252117, 32.171997>,  <34.391579, 29.499609, 32.283726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685287, 29.252117, 32.171997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561903, -0.323049, -0.761514,
		0.380935, 0.716111, -0.584871,
		0.734271, -0.618728, -0.279324,
		34.905567, 29.066498, 32.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393044, 29.438763, 31.521105>,  <34.391579, 29.499609, 32.283726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393044, 29.438763, 31.521105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623981, 29.122868, 31.604040>,  <34.762543, 28.933331, 31.653801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623981, 29.122868, 31.604040>,  <34.393044, 29.438763, 31.521105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623981, 29.122868, 31.604040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301284, -0.442066, -0.844870,
		0.758884, 0.425311, -0.493159,
		0.577342, -0.789739, 0.207338,
		34.797184, 28.885946, 31.666241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664776, 29.254084, 30.883226>,  <34.393044, 29.438763, 31.521105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664776, 29.254084, 30.883226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.710220, 28.934282, 31.119156>,  <34.737488, 28.742401, 31.260714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.710220, 28.934282, 31.119156>,  <34.664776, 29.254084, 30.883226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710220, 28.934282, 31.119156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428088, -0.575123, -0.697119,
		0.896568, -0.173297, -0.407595,
		0.113608, -0.799501, 0.589823,
		34.744305, 28.694431, 31.296103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974709, 28.710670, 30.447641>,  <34.664776, 29.254084, 30.883226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974709, 28.710670, 30.447641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.799622, 28.517128, 30.750767>,  <34.694569, 28.401003, 30.932642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.799622, 28.517128, 30.750767>,  <34.974709, 28.710670, 30.447641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799622, 28.517128, 30.750767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422361, -0.633410, -0.648385,
		0.793732, -0.603884, 0.072895,
		-0.437721, -0.483856, 0.757815,
		34.668304, 28.371971, 30.978111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738422, 28.439972, 30.249546>,  <34.974709, 28.710670, 30.447641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738422, 28.439972, 30.249546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935715, 28.552113, 29.920153>,  <36.054089, 28.619398, 29.722517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.935715, 28.552113, 29.920153>,  <35.738422, 28.439972, 30.249546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935715, 28.552113, 29.920153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571299, 0.609482, 0.549681,
		0.656004, -0.741574, 0.140448,
		0.493230, 0.280355, -0.823483,
		36.083683, 28.636219, 29.673107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467289, 28.462461, 30.431044>,  <35.738422, 28.439972, 30.249546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467289, 28.462461, 30.431044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.433342, 28.686577, 30.101469>,  <36.412971, 28.821047, 29.903725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.433342, 28.686577, 30.101469>,  <36.467289, 28.462461, 30.431044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433342, 28.686577, 30.101469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718992, 0.606928, 0.338659,
		0.689817, -0.563662, -0.454354,
		-0.084871, 0.560289, -0.823937,
		36.407879, 28.854664, 29.854288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098476, 28.560921, 30.224049>,  <36.467289, 28.462461, 30.431044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098476, 28.560921, 30.224049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885773, 28.855204, 30.056253>,  <36.758152, 29.031775, 29.955576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885773, 28.855204, 30.056253>,  <37.098476, 28.560921, 30.224049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885773, 28.855204, 30.056253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689153, 0.663796, 0.290591,
		0.492243, -0.134566, -0.859993,
		-0.531756, 0.735708, -0.419486,
		36.726246, 29.075916, 29.930408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604839, 29.062298, 30.077909>,  <37.098476, 28.560921, 30.224049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604839, 29.062298, 30.077909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264614, 29.271585, 30.056810>,  <37.060478, 29.397158, 30.044151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264614, 29.271585, 30.056810>,  <37.604839, 29.062298, 30.077909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264614, 29.271585, 30.056810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512300, 0.847077, 0.141453,
		0.118692, 0.093292, -0.988539,
		-0.850565, 0.523217, -0.052748,
		37.009445, 29.428551, 30.040987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813999, 29.640779, 29.625238>,  <37.604839, 29.062298, 30.077909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813999, 29.640779, 29.625238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484951, 29.757132, 29.820658>,  <37.287521, 29.826942, 29.937910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484951, 29.757132, 29.820658>,  <37.813999, 29.640779, 29.625238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484951, 29.757132, 29.820658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391357, 0.912977, 0.115382,
		-0.412472, 0.286113, -0.864873,
		-0.822622, 0.290882, 0.488550,
		37.238163, 29.844397, 29.967222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766247, 30.234062, 29.322613>,  <37.813999, 29.640779, 29.625238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766247, 30.234062, 29.322613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548729, 30.273287, 29.656000>,  <37.418217, 30.296822, 29.856033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548729, 30.273287, 29.656000>,  <37.766247, 30.234062, 29.322613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548729, 30.273287, 29.656000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396189, 0.905508, 0.151955,
		-0.739811, 0.412843, -0.531263,
		-0.543797, 0.098062, 0.833468,
		37.385590, 30.302706, 29.906040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517441, 30.934818, 29.328892>,  <37.766247, 30.234062, 29.322613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517441, 30.934818, 29.328892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492397, 30.785294, 29.699047>,  <37.477371, 30.695580, 29.921141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492397, 30.785294, 29.699047>,  <37.517441, 30.934818, 29.328892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492397, 30.785294, 29.699047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352054, 0.859334, 0.370950,
		-0.933883, 0.349013, 0.077798,
		-0.062612, -0.373812, 0.925389,
		37.473614, 30.673149, 29.976664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294910, 31.480083, 29.696779>,  <37.517441, 30.934818, 29.328892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294910, 31.480083, 29.696779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401161, 31.236246, 29.995533>,  <37.464912, 31.089943, 30.174786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401161, 31.236246, 29.995533>,  <37.294910, 31.480083, 29.696779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401161, 31.236246, 29.995533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032783, 0.779979, 0.624946,
		-0.963517, -0.141520, 0.227171,
		0.265631, -0.609594, 0.746884,
		37.480850, 31.053368, 30.219599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898556, 31.675913, 30.249611>,  <37.294910, 31.480083, 29.696779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898556, 31.675913, 30.249611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223747, 31.497250, 30.399048>,  <37.418861, 31.390053, 30.488710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223747, 31.497250, 30.399048>,  <36.898556, 31.675913, 30.249611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223747, 31.497250, 30.399048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164492, 0.791606, 0.588474,
		-0.558582, -0.416962, 0.717028,
		0.812975, -0.446656, 0.373590,
		37.467640, 31.363253, 30.511126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949223, 31.859684, 30.984495>,  <36.898556, 31.675913, 30.249611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949223, 31.859684, 30.984495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326588, 31.750357, 30.909367>,  <37.553005, 31.684761, 30.864290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326588, 31.750357, 30.909367>,  <36.949223, 31.859684, 30.984495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326588, 31.750357, 30.909367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329705, 0.712061, 0.619890,
		-0.035689, -0.646735, 0.761879,
		0.943409, -0.273318, -0.187819,
		37.609612, 31.668362, 30.853022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283440, 31.950108, 31.656855>,  <36.949223, 31.859684, 30.984495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283440, 31.950108, 31.656855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575371, 31.928137, 31.384287>,  <37.750530, 31.914953, 31.220745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575371, 31.928137, 31.384287>,  <37.283440, 31.950108, 31.656855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575371, 31.928137, 31.384287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462661, 0.773501, 0.433176,
		0.503285, -0.631411, 0.589936,
		0.729828, -0.054929, -0.681420,
		37.794319, 31.911657, 31.179861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871269, 32.048225, 32.021633>,  <37.283440, 31.950108, 31.656855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871269, 32.048225, 32.021633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977978, 32.109558, 31.641041>,  <38.042004, 32.146358, 31.412685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977978, 32.109558, 31.641041>,  <37.871269, 32.048225, 32.021633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977978, 32.109558, 31.641041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681464, 0.668105, 0.298736,
		0.681497, -0.728096, 0.073739,
		0.266774, 0.153337, -0.951482,
		38.058010, 32.155560, 31.355597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563507, 32.001610, 32.032600>,  <37.871269, 32.048225, 32.021633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563507, 32.001610, 32.032600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439068, 32.241085, 31.737362>,  <38.364403, 32.384769, 31.560219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439068, 32.241085, 31.737362>,  <38.563507, 32.001610, 32.032600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439068, 32.241085, 31.737362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667935, 0.690216, 0.278324,
		0.676077, -0.406416, -0.614610,
		-0.311099, 0.598688, -0.738099,
		38.345737, 32.420692, 31.515932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154484, 32.325474, 31.762209>,  <38.563507, 32.001610, 32.032600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154484, 32.325474, 31.762209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871078, 32.572319, 31.625282>,  <38.701035, 32.720425, 31.543127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871078, 32.572319, 31.625282>,  <39.154484, 32.325474, 31.762209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871078, 32.572319, 31.625282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646460, 0.762105, 0.035857,
		0.283008, -0.195888, -0.938901,
		-0.708517, 0.617110, -0.342315,
		38.658524, 32.757450, 31.522587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.031776, 30.516844, 24.912241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734650, 30.637438, 25.151348>,  <36.556374, 30.709795, 25.294811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734650, 30.637438, 25.151348>,  <37.031776, 30.516844, 24.912241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734650, 30.637438, 25.151348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588622, -0.719498, -0.368574,
		0.318972, -0.625643, 0.711918,
		-0.742820, 0.301486, 0.597767,
		36.511803, 30.727884, 25.330679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838936, 29.919519, 25.164408>,  <37.031776, 30.516844, 24.912241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838936, 29.919519, 25.164408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547039, 30.189674, 25.206972>,  <36.371899, 30.351768, 25.232512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547039, 30.189674, 25.206972>,  <36.838936, 29.919519, 25.164408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547039, 30.189674, 25.206972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677684, -0.693855, -0.243534,
		-0.090647, -0.249831, 0.964037,
		-0.729745, 0.675388, 0.106411,
		36.328117, 30.392290, 25.238895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416969, 29.579933, 25.682831>,  <36.838936, 29.919519, 25.164408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416969, 29.579933, 25.682831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199322, 29.843731, 25.475370>,  <36.068733, 30.002010, 25.350893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.199322, 29.843731, 25.475370>,  <36.416969, 29.579933, 25.682831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199322, 29.843731, 25.475370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674228, -0.711618, -0.197526,
		-0.499350, 0.242212, 0.831855,
		-0.544120, 0.659495, -0.518652,
		36.036087, 30.041580, 25.319775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778633, 29.281530, 25.718241>,  <36.416969, 29.579933, 25.682831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778633, 29.281530, 25.718241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695915, 29.558636, 25.441889>,  <35.646282, 29.724899, 25.276077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695915, 29.558636, 25.441889>,  <35.778633, 29.281530, 25.718241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695915, 29.558636, 25.441889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760486, -0.558082, -0.331973,
		-0.615546, 0.456753, 0.642246,
		-0.206797, 0.692764, -0.690879,
		35.633877, 29.766464, 25.234625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076645, 29.483976, 25.715052>,  <35.778633, 29.281530, 25.718241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076645, 29.483976, 25.715052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224525, 29.552700, 25.349800>,  <35.313251, 29.593933, 25.130650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224525, 29.552700, 25.349800>,  <35.076645, 29.483976, 25.715052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224525, 29.552700, 25.349800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771679, -0.490608, -0.404740,
		-0.517526, 0.854274, -0.048797,
		0.369699, 0.171808, -0.913129,
		35.335434, 29.604242, 25.075861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565094, 29.641470, 25.218466>,  <35.076645, 29.483976, 25.715052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565094, 29.641470, 25.218466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860886, 29.507544, 24.984863>,  <35.038361, 29.427187, 24.844702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860886, 29.507544, 24.984863>,  <34.565094, 29.641470, 25.218466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860886, 29.507544, 24.984863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623194, -0.668533, -0.405825,
		-0.254549, 0.664049, -0.703025,
		0.739483, -0.334818, -0.584005,
		35.082729, 29.407099, 24.809662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238926, 29.514404, 24.543707>,  <34.565094, 29.641470, 25.218466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238926, 29.514404, 24.543707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574661, 29.298267, 24.519897>,  <34.776100, 29.168585, 24.505611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574661, 29.298267, 24.519897>,  <34.238926, 29.514404, 24.543707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574661, 29.298267, 24.519897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518738, -0.763373, -0.384931,
		0.162558, 0.353963, -0.921024,
		0.839336, -0.540344, -0.059522,
		34.826462, 29.136164, 24.502041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215424, 29.265816, 23.816488>,  <34.238926, 29.514404, 24.543707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215424, 29.265816, 23.816488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460804, 29.020288, 24.015247>,  <34.608032, 28.872972, 24.134502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460804, 29.020288, 24.015247>,  <34.215424, 29.265816, 23.816488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460804, 29.020288, 24.015247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265295, -0.752802, -0.602419,
		0.743840, 0.237730, -0.624649,
		0.613450, -0.613819, 0.496896,
		34.644840, 28.836143, 24.164316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507080, 28.810869, 23.307802>,  <34.215424, 29.265816, 23.816488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507080, 28.810869, 23.307802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560749, 28.624182, 23.657469>,  <34.592949, 28.512169, 23.867270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560749, 28.624182, 23.657469>,  <34.507080, 28.810869, 23.307802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560749, 28.624182, 23.657469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079296, -0.884373, -0.459997,
		0.987780, -0.007600, -0.155666,
		0.134171, -0.466720, 0.874169,
		34.601002, 28.484165, 23.919720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598595, 28.122864, 23.143974>,  <34.507080, 28.810869, 23.307802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598595, 28.122864, 23.143974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534935, 28.075106, 23.535978>,  <34.496738, 28.046452, 23.771181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534935, 28.075106, 23.535978>,  <34.598595, 28.122864, 23.143974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534935, 28.075106, 23.535978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247022, -0.956269, -0.156618,
		0.955851, -0.267009, 0.122699,
		-0.159152, -0.119394, 0.980008,
		34.487190, 28.039288, 23.829981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035259, 27.661964, 23.474003>,  <34.598595, 28.122864, 23.143974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035259, 27.661964, 23.474003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720749, 27.634712, 23.719645>,  <34.532043, 27.618361, 23.867029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720749, 27.634712, 23.719645>,  <35.035259, 27.661964, 23.474003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720749, 27.634712, 23.719645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047243, -0.984364, -0.169695,
		0.616062, -0.162440, 0.770766,
		-0.786280, -0.068130, 0.614103,
		34.484863, 27.614273, 23.903875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160965, 27.082512, 23.950827>,  <35.035259, 27.661964, 23.474003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160965, 27.082512, 23.950827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770985, 27.171457, 23.949066>,  <34.536995, 27.224825, 23.948009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770985, 27.171457, 23.949066>,  <35.160965, 27.082512, 23.950827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770985, 27.171457, 23.949066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220111, -0.967544, -0.124134,
		-0.031862, -0.120056, 0.992256,
		-0.974954, 0.222361, -0.004402,
		34.478497, 27.238165, 23.947746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678688, 26.731173, 24.499384>,  <35.160965, 27.082512, 23.950827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678688, 26.731173, 24.499384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532673, 26.792181, 24.132017>,  <34.445065, 26.828785, 23.911598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532673, 26.792181, 24.132017>,  <34.678688, 26.731173, 24.499384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532673, 26.792181, 24.132017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163482, -0.981662, -0.098046,
		-0.916528, 0.114355, 0.383275,
		-0.365035, 0.152520, -0.918416,
		34.423164, 26.837936, 23.856493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011272, 26.499964, 24.448256>,  <34.678688, 26.731173, 24.499384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011272, 26.499964, 24.448256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157238, 26.460407, 24.077946>,  <34.244816, 26.436674, 23.855759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.157238, 26.460407, 24.077946>,  <34.011272, 26.499964, 24.448256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157238, 26.460407, 24.077946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209427, -0.977580, 0.021874,
		-0.907183, 0.185900, -0.377439,
		0.364910, -0.098889, -0.925776,
		34.266712, 26.430740, 23.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553368, 26.619188, 25.092466>,  <34.011272, 26.499964, 24.448256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553368, 26.619188, 25.092466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664978, 26.252102, 25.205559>,  <33.731945, 26.031849, 25.273415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664978, 26.252102, 25.205559>,  <33.553368, 26.619188, 25.092466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664978, 26.252102, 25.205559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122520, 0.326041, 0.937383,
		-0.952435, -0.226916, 0.203413,
		0.279028, -0.917718, 0.282731,
		33.748688, 25.976786, 25.290379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220299, 26.482698, 25.687479>,  <33.553368, 26.619188, 25.092466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220299, 26.482698, 25.687479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559353, 26.270731, 25.698030>,  <33.762787, 26.143551, 25.704361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559353, 26.270731, 25.698030>,  <33.220299, 26.482698, 25.687479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559353, 26.270731, 25.698030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296475, 0.514289, 0.804742,
		-0.440015, -0.674309, 0.593039,
		0.847637, -0.529920, 0.026379,
		33.813644, 26.111755, 25.705944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377865, 26.451225, 26.423592>,  <33.220299, 26.482698, 25.687479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377865, 26.451225, 26.423592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714085, 26.344753, 26.234861>,  <33.915817, 26.280870, 26.121624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714085, 26.344753, 26.234861>,  <33.377865, 26.451225, 26.423592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714085, 26.344753, 26.234861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538905, 0.322057, 0.778370,
		-0.055235, -0.908530, 0.414153,
		0.840553, -0.266182, -0.471823,
		33.966251, 26.264898, 26.093315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716187, 26.207195, 26.881823>,  <33.377865, 26.451225, 26.423592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716187, 26.207195, 26.881823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994225, 26.293959, 26.607658>,  <34.161049, 26.346018, 26.443159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.994225, 26.293959, 26.607658>,  <33.716187, 26.207195, 26.881823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994225, 26.293959, 26.607658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591944, 0.368351, 0.716882,
		0.407972, -0.904028, 0.127639,
		0.695098, 0.216913, -0.685411,
		34.202755, 26.359032, 26.402035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230007, 25.843279, 27.154871>,  <33.716187, 26.207195, 26.881823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230007, 25.843279, 27.154871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401154, 26.124121, 26.927195>,  <34.503841, 26.292625, 26.790588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.401154, 26.124121, 26.927195>,  <34.230007, 25.843279, 27.154871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401154, 26.124121, 26.927195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495761, 0.344259, 0.797313,
		0.755748, -0.623323, -0.200781,
		0.427862, 0.702107, -0.569192,
		34.529510, 26.334753, 26.756437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886028, 25.935509, 27.416531>,  <34.230007, 25.843279, 27.154871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886028, 25.935509, 27.416531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854351, 26.264015, 27.190523>,  <34.835342, 26.461119, 27.054918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854351, 26.264015, 27.190523>,  <34.886028, 25.935509, 27.416531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854351, 26.264015, 27.190523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364615, 0.551390, 0.750350,
		0.927784, -0.146590, -0.343114,
		-0.079196, 0.821268, -0.565020,
		34.830593, 26.510395, 27.021017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423782, 26.138477, 27.474892>,  <34.886028, 25.935509, 27.416531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423782, 26.138477, 27.474892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235863, 26.470407, 27.354445>,  <35.123112, 26.669565, 27.282175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235863, 26.470407, 27.354445>,  <35.423782, 26.138477, 27.474892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235863, 26.470407, 27.354445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470916, 0.524104, 0.709615,
		0.746675, 0.191577, -0.637004,
		-0.469803, 0.829827, -0.301119,
		35.094921, 26.719355, 27.264109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994678, 26.608162, 27.455471>,  <35.423782, 26.138477, 27.474892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994678, 26.608162, 27.455471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665451, 26.834373, 27.476419>,  <35.467915, 26.970100, 27.488989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665451, 26.834373, 27.476419>,  <35.994678, 26.608162, 27.455471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665451, 26.834373, 27.476419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452977, 0.598031, 0.661189,
		0.342600, 0.567926, -0.748389,
		-0.823066, 0.565526, 0.052372,
		35.418530, 27.004032, 27.492130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243893, 27.300589, 27.474709>,  <35.994678, 26.608162, 27.455471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243893, 27.300589, 27.474709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870415, 27.311224, 27.617544>,  <35.646328, 27.317606, 27.703245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870415, 27.311224, 27.617544>,  <36.243893, 27.300589, 27.474709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870415, 27.311224, 27.617544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304554, 0.583451, 0.752882,
		-0.188327, 0.811713, -0.552861,
		-0.933691, 0.026588, 0.357090,
		35.590309, 27.319201, 27.724670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000122, 27.993355, 27.514761>,  <36.243893, 27.300589, 27.474709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000122, 27.993355, 27.514761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776188, 27.809364, 27.790443>,  <35.641827, 27.698969, 27.955853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776188, 27.809364, 27.790443>,  <36.000122, 27.993355, 27.514761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776188, 27.809364, 27.790443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345238, 0.626646, 0.698660,
		-0.753256, 0.629075, -0.192017,
		-0.559836, -0.459978, 0.689205,
		35.608238, 27.671371, 27.997206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707405, 28.528561, 27.894201>,  <36.000122, 27.993355, 27.514761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707405, 28.528561, 27.894201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689568, 28.198818, 28.119926>,  <35.678867, 28.000973, 28.255362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689568, 28.198818, 28.119926>,  <35.707405, 28.528561, 27.894201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689568, 28.198818, 28.119926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312824, 0.524946, 0.791564,
		-0.948764, 0.211829, 0.234470,
		-0.044592, -0.824355, 0.564315,
		35.676189, 27.951511, 28.289221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518482, 28.844049, 28.422010>,  <35.707405, 28.528561, 27.894201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518482, 28.844049, 28.422010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581257, 28.473631, 28.559305>,  <35.618919, 28.251379, 28.641682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581257, 28.473631, 28.559305>,  <35.518482, 28.844049, 28.422010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581257, 28.473631, 28.559305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350392, 0.377141, 0.857316,
		-0.923362, -0.014273, 0.383664,
		0.156932, -0.926046, 0.343237,
		35.628338, 28.195818, 28.662275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146091, 28.793175, 29.046398>,  <35.518482, 28.844049, 28.422010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146091, 28.793175, 29.046398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448784, 28.531717, 29.042263>,  <35.630402, 28.374844, 29.039782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448784, 28.531717, 29.042263>,  <35.146091, 28.793175, 29.046398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448784, 28.531717, 29.042263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391611, 0.440598, 0.807784,
		-0.523446, -0.615325, 0.589388,
		0.756733, -0.653642, -0.010339,
		35.675804, 28.335625, 29.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170456, 28.585785, 29.764202>,  <35.146091, 28.793175, 29.046398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170456, 28.585785, 29.764202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506905, 28.530710, 29.554989>,  <35.708775, 28.497665, 29.429461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506905, 28.530710, 29.554989>,  <35.170456, 28.585785, 29.764202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506905, 28.530710, 29.554989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492859, 0.593371, 0.636396,
		0.222729, -0.793066, 0.566954,
		0.841119, -0.137685, -0.523031,
		35.759239, 28.489405, 29.398079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050537, 28.024126, 30.276951>,  <35.170456, 28.585785, 29.764202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050537, 28.024126, 30.276951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764957, 28.027243, 30.557013>,  <34.593609, 28.029112, 30.725050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764957, 28.027243, 30.557013>,  <35.050537, 28.024126, 30.276951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764957, 28.027243, 30.557013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486426, -0.724775, -0.487946,
		0.503652, -0.688942, 0.521242,
		-0.713950, 0.007791, 0.700154,
		34.550774, 28.029579, 30.767059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923939, 27.339636, 30.335121>,  <35.050537, 28.024126, 30.276951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923939, 27.339636, 30.335121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595139, 27.522915, 30.470402>,  <34.397858, 27.632881, 30.551569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595139, 27.522915, 30.470402>,  <34.923939, 27.339636, 30.335121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595139, 27.522915, 30.470402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566904, -0.601777, -0.562569,
		-0.054246, -0.654156, 0.754412,
		-0.821996, 0.458196, 0.338200,
		34.348541, 27.660374, 30.571861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547592, 26.807617, 30.533936>,  <34.923939, 27.339636, 30.335121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547592, 26.807617, 30.533936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281864, 27.094189, 30.448702>,  <34.122425, 27.266132, 30.397562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281864, 27.094189, 30.448702>,  <34.547592, 26.807617, 30.533936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281864, 27.094189, 30.448702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488748, -0.632056, -0.601357,
		-0.565509, -0.295353, 0.770043,
		-0.664323, 0.716430, -0.213080,
		34.082569, 27.309118, 30.384777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861431, 26.503590, 30.419115>,  <34.547592, 26.807617, 30.533936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861431, 26.503590, 30.419115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778309, 26.870407, 30.282967>,  <33.728436, 27.090498, 30.201277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778309, 26.870407, 30.282967>,  <33.861431, 26.503590, 30.419115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778309, 26.870407, 30.282967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530495, -0.398005, -0.748443,
		-0.821823, 0.025038, 0.569192,
		-0.207802, 0.917041, -0.340372,
		33.715969, 27.145519, 30.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140934, 26.472137, 30.236250>,  <33.861431, 26.503590, 30.419115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140934, 26.472137, 30.236250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289032, 26.787989, 30.040533>,  <33.377892, 26.977499, 29.923103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289032, 26.787989, 30.040533>,  <33.140934, 26.472137, 30.236250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289032, 26.787989, 30.040533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608921, -0.191475, -0.769774,
		-0.701522, 0.582946, 0.409928,
		0.370246, 0.789628, -0.489292,
		33.400105, 27.024878, 29.893745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493328, 26.838730, 30.104729>,  <33.140934, 26.472137, 30.236250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493328, 26.838730, 30.104729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773727, 26.969517, 29.851210>,  <32.941967, 27.047989, 29.699099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773727, 26.969517, 29.851210>,  <32.493328, 26.838730, 30.104729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773727, 26.969517, 29.851210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633902, -0.121526, -0.763806,
		-0.326762, 0.937189, 0.122076,
		0.700995, 0.326968, -0.633796,
		32.984028, 27.067608, 29.661070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100468, 27.222006, 29.600897>,  <32.493328, 26.838730, 30.104729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100468, 27.222006, 29.600897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442451, 27.141859, 29.409527>,  <32.647644, 27.093771, 29.294704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442451, 27.141859, 29.409527>,  <32.100468, 27.222006, 29.600897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442451, 27.141859, 29.409527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518682, -0.335592, -0.786350,
		-0.002996, 0.920451, -0.390846,
		0.854962, -0.200369, -0.478427,
		32.698940, 27.081749, 29.265999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805292, 27.897905, 29.383242>,  <32.100468, 27.222006, 29.600897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805292, 27.897905, 29.383242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496737, 28.143036, 29.314648>,  <31.311604, 28.290113, 29.273491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496737, 28.143036, 29.314648>,  <31.805292, 27.897905, 29.383242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496737, 28.143036, 29.314648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363209, 0.645256, 0.672104,
		0.522532, 0.456169, -0.720326,
		-0.771388, 0.612825, -0.171483,
		31.265320, 28.326883, 29.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090046, 28.519550, 29.339851>,  <31.805292, 27.897905, 29.383242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090046, 28.519550, 29.339851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706257, 28.599699, 29.419117>,  <31.475985, 28.647789, 29.466677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706257, 28.599699, 29.419117>,  <32.090046, 28.519550, 29.339851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706257, 28.599699, 29.419117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281801, 0.688326, 0.668428,
		-0.002465, 0.697179, -0.716893,
		-0.959470, 0.200373, 0.198163,
		31.418415, 28.659811, 29.478565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090218, 29.267960, 29.481804>,  <32.090046, 28.519550, 29.339851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090218, 29.267960, 29.481804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752678, 29.120373, 29.637640>,  <31.550154, 29.031820, 29.731142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752678, 29.120373, 29.637640>,  <32.090218, 29.267960, 29.481804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752678, 29.120373, 29.637640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021319, 0.702434, 0.711429,
		-0.536156, 0.608645, -0.584883,
		-0.843850, -0.368968, 0.389590,
		31.499523, 29.009682, 29.754517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579657, 29.861389, 29.489975>,  <32.090218, 29.267960, 29.481804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579657, 29.861389, 29.489975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480307, 29.598261, 29.774391>,  <31.420696, 29.440384, 29.945042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480307, 29.598261, 29.774391>,  <31.579657, 29.861389, 29.489975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480307, 29.598261, 29.774391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182350, 0.689167, 0.701282,
		-0.951346, 0.303838, -0.051217,
		-0.248373, -0.657823, 0.711041,
		31.405794, 29.400913, 29.987703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131023, 30.204533, 29.981533>,  <31.579657, 29.861389, 29.489975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131023, 30.204533, 29.981533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338301, 29.897682, 30.132792>,  <31.462667, 29.713572, 30.223547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338301, 29.897682, 30.132792>,  <31.131023, 30.204533, 29.981533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338301, 29.897682, 30.132792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251646, 0.559323, 0.789830,
		-0.817404, -0.314127, 0.482882,
		0.518194, -0.767126, 0.378144,
		31.493759, 29.667545, 30.246235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951387, 30.288595, 30.641321>,  <31.131023, 30.204533, 29.981533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951387, 30.288595, 30.641321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283083, 30.065039, 30.640488>,  <31.482100, 29.930904, 30.639988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283083, 30.065039, 30.640488>,  <30.951387, 30.288595, 30.641321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283083, 30.065039, 30.640488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304522, 0.448698, 0.840200,
		-0.468645, -0.697361, 0.542272,
		0.829239, -0.558890, -0.002081,
		31.531855, 29.897371, 30.639864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104618, 30.234774, 31.419466>,  <30.951387, 30.288595, 30.641321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104618, 30.234774, 31.419466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421099, 30.148771, 31.190460>,  <31.610987, 30.097170, 31.053057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421099, 30.148771, 31.190460>,  <31.104618, 30.234774, 31.419466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421099, 30.148771, 31.190460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583528, 0.545578, 0.601531,
		0.183020, -0.810011, 0.557123,
		0.791201, -0.215005, -0.572515,
		31.658459, 30.084270, 31.018705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.023924, 28.966761, 24.531357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330566, 28.710218, 24.518850>,  <31.514551, 28.556293, 24.511347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.330566, 28.710218, 24.518850>,  <31.023924, 28.966761, 24.531357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330566, 28.710218, 24.518850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582632, 0.674294, 0.453726,
		-0.269917, -0.366045, 0.890593,
		0.766606, -0.641356, -0.031266,
		31.560549, 28.517811, 24.509470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265137, 28.822216, 25.217646>,  <31.023924, 28.966761, 24.531357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265137, 28.822216, 25.217646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565498, 28.716400, 24.975601>,  <31.745716, 28.652910, 24.830376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565498, 28.716400, 24.975601>,  <31.265137, 28.822216, 25.217646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565498, 28.716400, 24.975601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557031, 0.745913, 0.365144,
		0.354764, -0.611254, 0.707469,
		0.750906, -0.264542, -0.605110,
		31.790770, 28.637037, 24.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824072, 28.827587, 25.629047>,  <31.265137, 28.822216, 25.217646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824072, 28.827587, 25.629047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.961674, 28.874678, 25.256424>,  <32.044235, 28.902931, 25.032850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.961674, 28.874678, 25.256424>,  <31.824072, 28.827587, 25.629047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961674, 28.874678, 25.256424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596569, 0.738731, 0.313659,
		0.725096, -0.663640, 0.183898,
		0.344007, 0.117725, -0.931557,
		32.064877, 28.909996, 24.976957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506554, 28.824387, 25.724573>,  <31.824072, 28.827587, 25.629047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506554, 28.824387, 25.724573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.456280, 29.005415, 25.371441>,  <32.426117, 29.114031, 25.159561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.456280, 29.005415, 25.371441>,  <32.506554, 28.824387, 25.724573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456280, 29.005415, 25.371441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536389, 0.779597, 0.323288,
		0.834560, -0.432909, -0.340733,
		-0.125680, 0.452569, -0.882829,
		32.418575, 29.141186, 25.106592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179966, 28.965031, 25.526707>,  <32.506554, 28.824387, 25.724573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179966, 28.965031, 25.526707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930904, 29.197115, 25.316694>,  <32.781467, 29.336365, 25.190687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930904, 29.197115, 25.316694>,  <33.179966, 28.965031, 25.526707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930904, 29.197115, 25.316694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464295, 0.814036, 0.348964,
		0.629868, -0.026487, -0.776251,
		-0.622653, 0.580210, -0.525033,
		32.744110, 29.371178, 25.159184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587612, 29.558681, 25.314713>,  <33.179966, 28.965031, 25.526707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587612, 29.558681, 25.314713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.211437, 29.687979, 25.272573>,  <32.985733, 29.765556, 25.247290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.211437, 29.687979, 25.272573>,  <33.587612, 29.558681, 25.314713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211437, 29.687979, 25.272573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271536, 0.900608, 0.339372,
		0.204576, 0.290551, -0.934735,
		-0.940435, 0.323241, -0.105347,
		32.929306, 29.784950, 25.240969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525368, 30.221222, 24.905823>,  <33.587612, 29.558681, 25.314713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525368, 30.221222, 24.905823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.184074, 30.210024, 25.114134>,  <32.979298, 30.203306, 25.239120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.184074, 30.210024, 25.114134>,  <33.525368, 30.221222, 24.905823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184074, 30.210024, 25.114134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173970, 0.926087, 0.334810,
		-0.491657, 0.376271, -0.785299,
		-0.853234, -0.027993, 0.520777,
		32.928104, 30.201626, 25.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232300, 30.888088, 24.833288>,  <33.525368, 30.221222, 24.905823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232300, 30.888088, 24.833288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045319, 30.743052, 25.155783>,  <32.933132, 30.656031, 25.349279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.045319, 30.743052, 25.155783>,  <33.232300, 30.888088, 24.833288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045319, 30.743052, 25.155783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127681, 0.874758, 0.467435,
		-0.874751, 0.321443, -0.362609,
		-0.467449, -0.362590, 0.806238,
		32.905083, 30.634274, 25.397654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942032, 31.390150, 25.012413>,  <33.232300, 30.888088, 24.833288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942032, 31.390150, 25.012413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.917282, 31.189852, 25.357765>,  <32.902431, 31.069672, 25.564976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.917282, 31.189852, 25.357765>,  <32.942032, 31.390150, 25.012413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917282, 31.189852, 25.357765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283580, 0.820566, 0.496239,
		-0.956950, 0.275541, 0.091231,
		-0.061873, -0.500747, 0.863379,
		32.898720, 31.039627, 25.616779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598133, 31.812433, 25.487511>,  <32.942032, 31.390150, 25.012413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598133, 31.812433, 25.487511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.805485, 31.543341, 25.698687>,  <32.929893, 31.381886, 25.825392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.805485, 31.543341, 25.698687>,  <32.598133, 31.812433, 25.487511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805485, 31.543341, 25.698687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379078, 0.734160, 0.563301,
		-0.766541, -0.091872, 0.635589,
		0.518376, -0.672732, 0.527938,
		32.960999, 31.341520, 25.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634899, 32.072708, 26.121370>,  <32.598133, 31.812433, 25.487511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634899, 32.072708, 26.121370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925308, 31.805128, 26.185118>,  <33.099556, 31.644581, 26.223366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925308, 31.805128, 26.185118>,  <32.634899, 32.072708, 26.121370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925308, 31.805128, 26.185118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492338, 0.667446, 0.558676,
		-0.480094, -0.327150, 0.813930,
		0.726026, -0.668946, 0.159368,
		33.143116, 31.604445, 26.232927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728352, 32.048874, 26.861605>,  <32.634899, 32.072708, 26.121370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728352, 32.048874, 26.861605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.071533, 31.934216, 26.691074>,  <33.277443, 31.865419, 26.588757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.071533, 31.934216, 26.691074>,  <32.728352, 32.048874, 26.861605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071533, 31.934216, 26.691074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513187, 0.516432, 0.685519,
		0.023665, -0.806926, 0.590178,
		0.857950, -0.286649, -0.426326,
		33.328918, 31.848221, 26.563177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566589, 31.680424, 27.589918>,  <32.728352, 32.048874, 26.861605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566589, 31.680424, 27.589918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.273129, 31.807795, 27.830038>,  <32.097054, 31.884218, 27.974110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.273129, 31.807795, 27.830038>,  <32.566589, 31.680424, 27.589918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273129, 31.807795, 27.830038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568180, -0.772020, -0.284878,
		0.372730, -0.550080, 0.747318,
		-0.733650, 0.318429, 0.600300,
		32.053032, 31.903324, 28.010128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284733, 31.043694, 27.882444>,  <32.566589, 31.680424, 27.589918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284733, 31.043694, 27.882444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.976755, 31.283146, 27.970831>,  <31.791969, 31.426817, 28.023863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.976755, 31.283146, 27.970831>,  <32.284733, 31.043694, 27.882444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976755, 31.283146, 27.970831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627649, -0.648023, -0.431420,
		-0.115071, -0.470858, 0.874672,
		-0.769945, 0.598631, 0.220965,
		31.745771, 31.462736, 28.037121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746559, 30.631023, 28.130754>,  <32.284733, 31.043694, 27.882444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746559, 30.631023, 28.130754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551054, 30.970457, 28.049747>,  <31.433750, 31.174118, 28.001143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.551054, 30.970457, 28.049747>,  <31.746559, 30.631023, 28.130754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551054, 30.970457, 28.049747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742180, -0.526458, -0.414742,
		-0.458560, -0.052408, 0.887116,
		-0.488765, 0.848584, -0.202516,
		31.404425, 31.225033, 27.988993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106430, 30.460604, 28.379122>,  <31.746559, 30.631023, 28.130754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106430, 30.460604, 28.379122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.059616, 30.741436, 28.098156>,  <31.031528, 30.909935, 27.929577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.059616, 30.741436, 28.098156>,  <31.106430, 30.460604, 28.379122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059616, 30.741436, 28.098156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726896, -0.542483, -0.421112,
		-0.676702, 0.461298, 0.573828,
		-0.117034, 0.702080, -0.702415,
		31.024506, 30.952061, 27.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346148, 30.716944, 28.334702>,  <31.106430, 30.460604, 28.379122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346148, 30.716944, 28.334702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539732, 30.785515, 27.991447>,  <30.655882, 30.826656, 27.785496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.539732, 30.785515, 27.991447>,  <30.346148, 30.716944, 28.334702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539732, 30.785515, 27.991447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681881, -0.540743, -0.492580,
		-0.548472, 0.823535, -0.144806,
		0.483960, 0.171426, -0.858135,
		30.684919, 30.836943, 27.734007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828798, 30.832481, 27.929098>,  <30.346148, 30.716944, 28.334702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828798, 30.832481, 27.929098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126972, 30.752989, 27.674591>,  <30.305876, 30.705294, 27.521887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126972, 30.752989, 27.674591>,  <29.828798, 30.832481, 27.929098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126972, 30.752989, 27.674591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619078, -0.560280, -0.550299,
		-0.247125, 0.804110, -0.540682,
		0.745434, -0.198732, -0.636265,
		30.350603, 30.693369, 27.483711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494495, 30.807226, 27.285467>,  <29.828798, 30.832481, 27.929098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494495, 30.807226, 27.285467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850937, 30.644360, 27.205317>,  <30.064802, 30.546638, 27.157227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850937, 30.644360, 27.205317>,  <29.494495, 30.807226, 27.285467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850937, 30.644360, 27.205317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447848, -0.717748, -0.533171,
		0.073271, 0.564848, -0.821936,
		0.891103, -0.407168, -0.200376,
		30.118267, 30.522209, 27.145205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527353, 30.688717, 26.527084>,  <29.494495, 30.807226, 27.285467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527353, 30.688717, 26.527084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808414, 30.446482, 26.676506>,  <29.977051, 30.301140, 26.766159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808414, 30.446482, 26.676506>,  <29.527353, 30.688717, 26.527084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808414, 30.446482, 26.676506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282597, -0.719333, -0.634586,
		0.653006, 0.340329, -0.676579,
		0.702654, -0.605587, 0.373553,
		30.019211, 30.264805, 26.788572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996883, 30.587976, 26.024437>,  <29.527353, 30.688717, 26.527084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996883, 30.587976, 26.024437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996107, 30.280464, 26.280241>,  <29.995642, 30.095957, 26.433723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996107, 30.280464, 26.280241>,  <29.996883, 30.587976, 26.024437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996107, 30.280464, 26.280241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270679, -0.615235, -0.740418,
		0.962668, -0.174540, -0.206898,
		-0.001942, -0.768779, 0.639511,
		29.995525, 30.049831, 26.472094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135180, 29.990074, 25.547190>,  <29.996883, 30.587976, 26.024437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135180, 29.990074, 25.547190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002136, 29.827698, 25.887680>,  <29.922310, 29.730272, 26.091974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002136, 29.827698, 25.887680>,  <30.135180, 29.990074, 25.547190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002136, 29.827698, 25.887680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363577, -0.777644, -0.512915,
		0.870163, -0.480085, 0.111059,
		-0.332608, -0.405941, 0.851225,
		29.902353, 29.705915, 26.143047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402182, 29.350636, 25.614561>,  <30.135180, 29.990074, 25.547190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402182, 29.350636, 25.614561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067080, 29.344326, 25.832890>,  <29.866018, 29.340540, 25.963886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067080, 29.344326, 25.832890>,  <30.402182, 29.350636, 25.614561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067080, 29.344326, 25.832890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316142, -0.801002, -0.508379,
		0.445222, -0.598453, 0.666056,
		-0.837754, -0.015773, 0.545820,
		29.815754, 29.339594, 25.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328491, 28.704964, 25.734055>,  <30.402182, 29.350636, 25.614561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328491, 28.704964, 25.734055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965952, 28.860773, 25.799541>,  <29.748428, 28.954260, 25.838833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965952, 28.860773, 25.799541>,  <30.328491, 28.704964, 25.734055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965952, 28.860773, 25.799541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422467, -0.842164, -0.335084,
		0.007352, -0.372867, 0.927856,
		-0.906349, 0.389525, 0.163715,
		29.694048, 28.977631, 25.848656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941013, 28.174026, 26.074173>,  <30.328491, 28.704964, 25.734055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941013, 28.174026, 26.074173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673265, 28.431629, 25.926010>,  <29.512617, 28.586191, 25.837112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673265, 28.431629, 25.926010>,  <29.941013, 28.174026, 26.074173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673265, 28.431629, 25.926010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446148, -0.747113, -0.492720,
		-0.594049, -0.164557, 0.787418,
		-0.669371, 0.644005, -0.370405,
		29.472454, 28.624830, 25.814888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221300, 27.901339, 26.201412>,  <29.941013, 28.174026, 26.074173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221300, 27.901339, 26.201412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197403, 28.140013, 25.881313>,  <29.183064, 28.283218, 25.689255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197403, 28.140013, 25.881313>,  <29.221300, 27.901339, 26.201412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197403, 28.140013, 25.881313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470002, -0.724071, -0.504798,
		-0.880641, 0.345959, 0.323702,
		-0.059744, 0.596686, -0.800248,
		29.179480, 28.319019, 25.641239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706945, 27.940632, 26.746683>,  <29.221300, 27.901339, 26.201412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706945, 27.940632, 26.746683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613472, 27.610687, 26.952595>,  <29.557388, 27.412722, 27.076141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613472, 27.610687, 26.952595>,  <29.706945, 27.940632, 26.746683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613472, 27.610687, 26.952595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356586, 0.419843, 0.834613,
		-0.904565, 0.378599, 0.196023,
		-0.233685, -0.824860, 0.514779,
		29.543367, 27.363230, 27.107029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227293, 28.161766, 27.218426>,  <29.706945, 27.940632, 26.746683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227293, 28.161766, 27.218426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442272, 27.854952, 27.358603>,  <29.571260, 27.670864, 27.442709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442272, 27.854952, 27.358603>,  <29.227293, 28.161766, 27.218426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442272, 27.854952, 27.358603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343269, 0.578562, 0.739887,
		-0.770270, -0.277356, 0.574246,
		0.537449, -0.767033, 0.350441,
		29.603506, 27.624842, 27.463736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166063, 28.217083, 27.918131>,  <29.227293, 28.161766, 27.218426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166063, 28.217083, 27.918131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.492893, 27.994671, 27.857178>,  <29.688992, 27.861223, 27.820606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.492893, 27.994671, 27.857178>,  <29.166063, 28.217083, 27.918131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492893, 27.994671, 27.857178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468026, 0.485365, 0.738494,
		-0.336663, -0.674723, 0.656816,
		0.817074, -0.556030, -0.152384,
		29.738016, 27.827862, 27.811462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317188, 27.978193, 28.662493>,  <29.166063, 28.217083, 27.918131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317188, 27.978193, 28.662493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642447, 27.938080, 28.433149>,  <29.837601, 27.914011, 28.295544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642447, 27.938080, 28.433149>,  <29.317188, 27.978193, 28.662493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642447, 27.938080, 28.433149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567454, 0.355875, 0.742529,
		0.129579, -0.929137, 0.346285,
		0.813145, -0.100285, -0.573357,
		29.886391, 27.907995, 28.261143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788534, 27.589111, 29.087149>,  <29.317188, 27.978193, 28.662493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788534, 27.589111, 29.087149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017134, 27.774094, 28.815994>,  <30.154293, 27.885082, 28.653301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017134, 27.774094, 28.815994>,  <29.788534, 27.589111, 29.087149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017134, 27.774094, 28.815994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583565, 0.351738, 0.731937,
		0.576926, -0.813889, -0.068855,
		0.571497, 0.462455, -0.677884,
		30.188583, 27.912830, 28.612629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454138, 27.474239, 29.274452>,  <29.788534, 27.589111, 29.087149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454138, 27.474239, 29.274452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525854, 27.766087, 29.010479>,  <30.568884, 27.941195, 28.852095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525854, 27.766087, 29.010479>,  <30.454138, 27.474239, 29.274452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525854, 27.766087, 29.010479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549381, 0.482213, 0.682387,
		0.816110, -0.484900, -0.314382,
		0.179290, 0.729618, -0.659934,
		30.579641, 27.984972, 28.812498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191225, 27.456451, 29.126055>,  <30.454138, 27.474239, 29.274452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191225, 27.456451, 29.126055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.094162, 27.834936, 29.040453>,  <31.035925, 28.062027, 28.989092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.094162, 27.834936, 29.040453>,  <31.191225, 27.456451, 29.126055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094162, 27.834936, 29.040453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696832, 0.323482, 0.640144,
		0.674939, 0.006211, -0.737847,
		-0.242656, 0.946214, -0.214002,
		31.021366, 28.118801, 28.976252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972874, 27.527031, 28.806271>,  <31.191225, 27.456451, 29.126055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972874, 27.527031, 28.806271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.273258, 27.262922, 28.810259>,  <32.453487, 27.104458, 28.812653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.273258, 27.262922, 28.810259>,  <31.972874, 27.527031, 28.806271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273258, 27.262922, 28.810259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385722, -0.450859, -0.804950,
		0.535983, 0.600639, -0.593259,
		0.750960, -0.660272, 0.009973,
		32.498547, 27.064840, 28.813251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370388, 27.536167, 28.209244>,  <31.972874, 27.527031, 28.806271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370388, 27.536167, 28.209244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464916, 27.167213, 28.331461>,  <32.521633, 26.945841, 28.404791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464916, 27.167213, 28.331461>,  <32.370388, 27.536167, 28.209244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464916, 27.167213, 28.331461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357574, -0.374940, -0.855313,
		0.903489, 0.092875, -0.418428,
		0.236323, -0.922385, 0.305545,
		32.535812, 26.890497, 28.423124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621647, 27.183264, 27.630148>,  <32.370388, 27.536167, 28.209244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621647, 27.183264, 27.630148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561852, 26.882055, 27.886465>,  <32.525974, 26.701330, 28.040255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561852, 26.882055, 27.886465>,  <32.621647, 27.183264, 27.630148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561852, 26.882055, 27.886465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281473, -0.588852, -0.757645,
		0.947854, -0.293623, -0.123930,
		-0.149486, -0.753020, 0.640793,
		32.517006, 26.656149, 28.078703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964409, 26.597486, 27.328800>,  <32.621647, 27.183264, 27.630148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964409, 26.597486, 27.328800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668972, 26.462162, 27.562046>,  <32.491711, 26.380966, 27.701994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.668972, 26.462162, 27.562046>,  <32.964409, 26.597486, 27.328800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668972, 26.462162, 27.562046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269776, -0.644360, -0.715556,
		0.617818, -0.685816, 0.384652,
		-0.738595, -0.338313, 0.583114,
		32.447395, 26.360668, 27.736980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114845, 25.897057, 27.497309>,  <32.964409, 26.597486, 27.328800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114845, 25.897057, 27.497309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721199, 25.950733, 27.543798>,  <32.485012, 25.982939, 27.571693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721199, 25.950733, 27.543798>,  <33.114845, 25.897057, 27.497309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721199, 25.950733, 27.543798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177520, -0.749862, -0.637333,
		0.001629, -0.647842, 0.761773,
		-0.984116, 0.134191, 0.116227,
		32.425964, 25.990990, 27.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051777, 25.319914, 27.205311>,  <33.114845, 25.897057, 27.497309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051777, 25.319914, 27.205311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669395, 25.428141, 27.250830>,  <32.439968, 25.493076, 27.278141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.669395, 25.428141, 27.250830>,  <33.051777, 25.319914, 27.205311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669395, 25.428141, 27.250830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286462, -0.775469, -0.562660,
		-0.063992, -0.570475, 0.818819,
		-0.955952, 0.270566, 0.113795,
		32.382610, 25.509310, 27.284967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714298, 24.765755, 27.369417>,  <33.051777, 25.319914, 27.205311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714298, 24.765755, 27.369417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412926, 24.988434, 27.229456>,  <32.232101, 25.122042, 27.145479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.412926, 24.988434, 27.229456>,  <32.714298, 24.765755, 27.369417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412926, 24.988434, 27.229456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288524, -0.758088, -0.584856,
		-0.590843, -0.339694, 0.731787,
		-0.753431, 0.556696, -0.349902,
		32.186897, 25.155443, 27.124485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138268, 24.350967, 27.402565>,  <32.714298, 24.765755, 27.369417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138268, 24.350967, 27.402565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068542, 24.636787, 27.131556>,  <32.026707, 24.808279, 26.968950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.068542, 24.636787, 27.131556>,  <32.138268, 24.350967, 27.402565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068542, 24.636787, 27.131556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598249, -0.623358, -0.503510,
		-0.782121, 0.317559, 0.536136,
		-0.174311, 0.714549, -0.677522,
		32.016251, 24.851152, 26.928299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400101, 24.490879, 27.284012>,  <32.138268, 24.350967, 27.402565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400101, 24.490879, 27.284012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569195, 24.599224, 26.938080>,  <31.670650, 24.664232, 26.730520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.569195, 24.599224, 26.938080>,  <31.400101, 24.490879, 27.284012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569195, 24.599224, 26.938080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695283, -0.515148, -0.501203,
		-0.581272, 0.813177, -0.029443,
		0.422734, 0.270863, -0.864829,
		31.696014, 24.680483, 26.678631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.176968, 35.532234, 34.554195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000206, 35.535877, 34.913002>,  <37.894150, 35.538063, 35.128284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000206, 35.535877, 34.913002>,  <38.176968, 35.532234, 34.554195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000206, 35.535877, 34.913002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129939, 0.990053, 0.053961,
		-0.887601, 0.140403, -0.438693,
		-0.441906, 0.009107, 0.897015,
		37.867634, 35.538609, 35.182106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711105, 36.072544, 34.591198>,  <38.176968, 35.532234, 34.554195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711105, 36.072544, 34.591198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842796, 36.017132, 34.964809>,  <37.921810, 35.983887, 35.188976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842796, 36.017132, 34.964809>,  <37.711105, 36.072544, 34.591198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842796, 36.017132, 34.964809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019848, 0.989977, 0.139829,
		-0.944040, -0.027498, 0.328681,
		0.329232, -0.138528, 0.934032,
		37.941566, 35.975574, 35.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089607, 36.173630, 33.851181>,  <37.711105, 36.072544, 34.591198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089607, 36.173630, 33.851181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448242, 35.997562, 33.870678>,  <38.663425, 35.891922, 33.882374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448242, 35.997562, 33.870678>,  <38.089607, 36.173630, 33.851181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448242, 35.997562, 33.870678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442143, -0.895962, 0.041965,
		0.025196, -0.059175, -0.997930,
		0.896591, -0.440170, 0.048739,
		38.717220, 35.865513, 33.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056175, 35.719944, 33.297955>,  <38.089607, 36.173630, 33.851181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056175, 35.719944, 33.297955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352089, 35.585358, 33.531025>,  <38.529636, 35.504604, 33.670868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.352089, 35.585358, 33.531025>,  <38.056175, 35.719944, 33.297955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352089, 35.585358, 33.531025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403921, -0.914665, -0.015345,
		0.538114, -0.224002, -0.812562,
		0.739785, -0.336468, 0.582673,
		38.574024, 35.484417, 33.705826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365299, 35.136063, 32.939087>,  <38.056175, 35.719944, 33.297955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365299, 35.136063, 32.939087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419609, 35.108322, 33.334412>,  <38.452194, 35.091679, 33.571606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419609, 35.108322, 33.334412>,  <38.365299, 35.136063, 32.939087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419609, 35.108322, 33.334412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443356, -0.896343, -0.001989,
		0.886003, -0.437903, -0.152445,
		0.135772, -0.069350, 0.988310,
		38.460342, 35.087517, 33.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275158, 34.482342, 32.924156>,  <38.365299, 35.136063, 32.939087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275158, 34.482342, 32.924156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288559, 34.551853, 33.317841>,  <38.296600, 34.593559, 33.554050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288559, 34.551853, 33.317841>,  <38.275158, 34.482342, 32.924156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288559, 34.551853, 33.317841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332013, -0.926906, 0.174966,
		0.942680, -0.332633, 0.026645,
		0.033502, 0.173783, 0.984214,
		38.298611, 34.603989, 33.613106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571102, 33.941254, 33.264336>,  <38.275158, 34.482342, 32.924156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571102, 33.941254, 33.264336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370163, 34.096672, 33.573315>,  <38.249599, 34.189922, 33.758701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370163, 34.096672, 33.573315>,  <38.571102, 33.941254, 33.264336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370163, 34.096672, 33.573315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483767, -0.866742, 0.121359,
		0.716666, -0.312721, 0.623374,
		-0.502353, 0.388541, 0.772449,
		38.219456, 34.213234, 33.805050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524105, 33.413567, 33.760685>,  <38.571102, 33.941254, 33.264336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524105, 33.413567, 33.760685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.239063, 33.666870, 33.881466>,  <38.068039, 33.818851, 33.953934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.239063, 33.666870, 33.881466>,  <38.524105, 33.413567, 33.760685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239063, 33.666870, 33.881466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616907, -0.770569, 0.160153,
		0.334094, -0.072151, 0.939774,
		-0.712606, 0.633260, 0.301953,
		38.025280, 33.856850, 33.972054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281151, 33.150143, 34.404949>,  <38.524105, 33.413567, 33.760685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281151, 33.150143, 34.404949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989357, 33.364990, 34.235546>,  <37.814281, 33.493900, 34.133904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989357, 33.364990, 34.235546>,  <38.281151, 33.150143, 34.404949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989357, 33.364990, 34.235546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609107, -0.791814, 0.044945,
		-0.311201, 0.290750, 0.904775,
		-0.729482, 0.537118, -0.423511,
		37.770512, 33.526127, 34.108494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652473, 32.886723, 34.712132>,  <38.281151, 33.150143, 34.404949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652473, 32.886723, 34.712132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517906, 33.067631, 34.381733>,  <37.437168, 33.176178, 34.183495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517906, 33.067631, 34.381733>,  <37.652473, 32.886723, 34.712132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517906, 33.067631, 34.381733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732009, -0.677397, -0.072773,
		-0.592442, 0.580157, 0.558955,
		-0.336415, 0.452273, -0.825999,
		37.416981, 33.203312, 34.133934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902279, 32.886719, 34.766167>,  <37.652473, 32.886723, 34.712132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902279, 32.886719, 34.766167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995518, 32.926750, 34.379250>,  <37.051460, 32.950768, 34.147099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995518, 32.926750, 34.379250>,  <36.902279, 32.886719, 34.766167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995518, 32.926750, 34.379250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652824, -0.721133, -0.231924,
		-0.720756, 0.685530, -0.102758,
		0.233093, 0.100078, -0.967291,
		37.065445, 32.956772, 34.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363457, 32.656425, 34.516174>,  <36.902279, 32.886719, 34.766167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363457, 32.656425, 34.516174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561066, 32.685081, 34.169579>,  <36.679630, 32.702274, 33.961620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561066, 32.685081, 34.169579>,  <36.363457, 32.656425, 34.516174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561066, 32.685081, 34.169579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505362, -0.787300, -0.353225,
		-0.707494, 0.612394, -0.352739,
		0.494025, 0.071644, -0.866491,
		36.709274, 32.706573, 33.909630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771564, 33.028183, 34.727325>,  <36.363457, 32.656425, 34.516174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771564, 33.028183, 34.727325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429348, 33.212254, 34.632423>,  <35.224018, 33.322697, 34.575481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429348, 33.212254, 34.632423>,  <35.771564, 33.028183, 34.727325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429348, 33.212254, 34.632423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197609, 0.713800, 0.671893,
		0.478542, 0.527947, -0.701619,
		-0.855540, 0.460175, -0.237256,
		35.172688, 33.350307, 34.561245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946857, 33.714859, 34.412033>,  <35.771564, 33.028183, 34.727325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946857, 33.714859, 34.412033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577972, 33.732746, 34.565670>,  <35.356644, 33.743477, 34.657852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577972, 33.732746, 34.565670>,  <35.946857, 33.714859, 34.412033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577972, 33.732746, 34.565670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219176, 0.878771, 0.423937,
		-0.318577, 0.475144, -0.820212,
		-0.922210, 0.044714, 0.384097,
		35.301308, 33.746159, 34.680901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666885, 34.398994, 34.363136>,  <35.946857, 33.714859, 34.412033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666885, 34.398994, 34.363136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428795, 34.233242, 34.638523>,  <35.285938, 34.133793, 34.803757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428795, 34.233242, 34.638523>,  <35.666885, 34.398994, 34.363136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428795, 34.233242, 34.638523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019023, 0.849273, 0.527611,
		-0.803329, 0.327147, -0.497631,
		-0.595231, -0.414379, 0.688469,
		35.250225, 34.108929, 34.845062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134705, 34.907768, 34.441750>,  <35.666885, 34.398994, 34.363136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134705, 34.907768, 34.441750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152298, 34.688282, 34.775692>,  <35.162853, 34.556591, 34.976055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152298, 34.688282, 34.775692>,  <35.134705, 34.907768, 34.441750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152298, 34.688282, 34.775692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237001, 0.817536, 0.524848,
		-0.970513, 0.174775, 0.166006,
		0.043986, -0.548715, 0.834851,
		35.165493, 34.523666, 35.026146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614162, 35.149605, 35.011307>,  <35.134705, 34.907768, 34.441750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614162, 35.149605, 35.011307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850147, 34.931740, 35.249733>,  <34.991737, 34.801022, 35.392788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850147, 34.931740, 35.249733>,  <34.614162, 35.149605, 35.011307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850147, 34.931740, 35.249733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022617, 0.749080, 0.662093,
		-0.807114, -0.377129, 0.454248,
		0.589962, -0.544658, 0.596063,
		35.027138, 34.768341, 35.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397148, 35.325924, 35.572807>,  <34.614162, 35.149605, 35.011307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397148, 35.325924, 35.572807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750534, 35.157738, 35.655464>,  <34.962566, 35.056824, 35.705059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750534, 35.157738, 35.655464>,  <34.397148, 35.325924, 35.572807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750534, 35.157738, 35.655464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213144, 0.753498, 0.621941,
		-0.417209, -0.505418, 0.755307,
		0.883463, -0.420468, 0.206639,
		35.015572, 35.031597, 35.717457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537067, 35.384064, 36.243633>,  <34.397148, 35.325924, 35.572807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537067, 35.384064, 36.243633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914837, 35.317303, 36.130348>,  <35.141499, 35.277245, 36.062378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914837, 35.317303, 36.130348>,  <34.537067, 35.384064, 36.243633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914837, 35.317303, 36.130348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299764, 0.790882, 0.533523,
		0.134942, -0.588768, 0.796958,
		0.944422, -0.166904, -0.283215,
		35.198162, 35.267231, 36.045383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919472, 35.549149, 36.836266>,  <34.537067, 35.384064, 36.243633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919472, 35.549149, 36.836266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186722, 35.569641, 36.539352>,  <35.347073, 35.581936, 36.361206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186722, 35.569641, 36.539352>,  <34.919472, 35.549149, 36.836266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186722, 35.569641, 36.539352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402751, 0.813934, 0.418692,
		0.625617, -0.578694, 0.523179,
		0.668128, 0.051230, -0.742281,
		35.387161, 35.585011, 36.316669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551369, 35.729530, 37.150627>,  <34.919472, 35.549149, 36.836266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551369, 35.729530, 37.150627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594151, 35.838371, 36.768105>,  <35.619820, 35.903675, 36.538589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.594151, 35.838371, 36.768105>,  <35.551369, 35.729530, 37.150627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594151, 35.838371, 36.768105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516693, 0.806537, 0.287274,
		0.849463, -0.524843, -0.054328,
		0.106956, 0.272100, -0.956307,
		35.626236, 35.920002, 36.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310856, 36.050602, 37.048450>,  <35.551369, 35.729530, 37.150627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310856, 36.050602, 37.048450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121517, 36.172848, 36.717987>,  <36.007915, 36.246197, 36.519707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121517, 36.172848, 36.717987>,  <36.310856, 36.050602, 37.048450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121517, 36.172848, 36.717987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544571, 0.838713, -0.001749,
		0.692377, -0.450731, -0.563432,
		-0.473346, 0.305618, -0.826161,
		35.979515, 36.264534, 36.470139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809601, 36.430607, 36.701202>,  <36.310856, 36.050602, 37.048450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809601, 36.430607, 36.701202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461456, 36.558498, 36.551399>,  <36.252571, 36.635231, 36.461517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461456, 36.558498, 36.551399>,  <36.809601, 36.430607, 36.701202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461456, 36.558498, 36.551399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372501, 0.924908, -0.076080,
		0.322057, -0.205720, -0.924099,
		-0.870357, 0.319726, -0.374504,
		36.200348, 36.654415, 36.439049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965691, 36.691551, 35.966686>,  <36.809601, 36.430607, 36.701202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965691, 36.691551, 35.966686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648689, 36.871292, 36.131626>,  <36.458488, 36.979137, 36.230591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648689, 36.871292, 36.131626>,  <36.965691, 36.691551, 35.966686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648689, 36.871292, 36.131626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433616, 0.890601, -0.137140,
		-0.428862, 0.070118, -0.900645,
		-0.792499, 0.449348, 0.412349,
		36.410938, 37.006096, 36.255329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866714, 37.289959, 35.534649>,  <36.965691, 36.691551, 35.966686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866714, 37.289959, 35.534649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658901, 37.369530, 35.867039>,  <36.534214, 37.417271, 36.066471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658901, 37.369530, 35.867039>,  <36.866714, 37.289959, 35.534649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658901, 37.369530, 35.867039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306553, 0.951171, -0.036041,
		-0.797566, 0.236013, -0.555146,
		-0.519532, 0.198927, 0.830972,
		36.503040, 37.429207, 36.116329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536983, 37.916889, 35.366451>,  <36.866714, 37.289959, 35.534649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536983, 37.916889, 35.366451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531872, 37.889881, 35.765507>,  <36.528805, 37.873676, 36.004940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531872, 37.889881, 35.765507>,  <36.536983, 37.916889, 35.366451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531872, 37.889881, 35.765507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307791, 0.949008, 0.068172,
		-0.951368, 0.307935, 0.008654,
		-0.012780, -0.067521, 0.997636,
		36.528038, 37.869625, 36.064796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705517, 38.650703, 35.325253>,  <36.536983, 37.916889, 35.366451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705517, 38.650703, 35.325253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509327, 38.964325, 35.173092>,  <36.391613, 39.152496, 35.081795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509327, 38.964325, 35.173092>,  <36.705517, 38.650703, 35.325253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509327, 38.964325, 35.173092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651177, -0.619825, -0.437934,
		-0.579141, 0.032910, 0.814563,
		-0.490475, 0.784050, -0.380396,
		36.362186, 39.199539, 35.058971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929993, 38.482491, 35.467926>,  <36.705517, 38.650703, 35.325253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929993, 38.482491, 35.467926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032253, 38.697277, 35.146355>,  <36.093609, 38.826149, 34.953411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032253, 38.697277, 35.146355>,  <35.929993, 38.482491, 35.467926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032253, 38.697277, 35.146355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623281, -0.544130, -0.561644,
		-0.739029, 0.644660, 0.195575,
		0.255651, 0.536969, -0.803932,
		36.108948, 38.858368, 34.905174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268642, 38.680359, 35.309792>,  <35.929993, 38.482491, 35.467926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268642, 38.680359, 35.309792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551098, 38.650875, 35.028099>,  <35.720570, 38.633186, 34.859085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551098, 38.650875, 35.028099>,  <35.268642, 38.680359, 35.309792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551098, 38.650875, 35.028099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583245, -0.624482, -0.519468,
		-0.401490, 0.777553, -0.483959,
		0.706138, -0.073706, -0.704228,
		35.762939, 38.628765, 34.816830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882481, 38.750317, 34.720921>,  <35.268642, 38.680359, 35.309792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882481, 38.750317, 34.720921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229027, 38.589710, 34.602127>,  <35.436954, 38.493347, 34.530853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229027, 38.589710, 34.602127>,  <34.882481, 38.750317, 34.720921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229027, 38.589710, 34.602127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498300, -0.655287, -0.567711,
		0.033338, 0.639830, -0.767793,
		0.866363, -0.401518, -0.296982,
		35.488937, 38.469254, 34.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934875, 38.765072, 34.021412>,  <34.882481, 38.750317, 34.720921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934875, 38.765072, 34.021412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194794, 38.478901, 34.124123>,  <35.350746, 38.307198, 34.185749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194794, 38.478901, 34.124123>,  <34.934875, 38.765072, 34.021412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194794, 38.478901, 34.124123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370143, -0.592878, -0.715185,
		0.663896, 0.369681, -0.650059,
		0.649796, -0.715424, 0.256774,
		35.389732, 38.264275, 34.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141483, 38.557095, 33.421894>,  <34.934875, 38.765072, 34.021412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141483, 38.557095, 33.421894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257065, 38.255058, 33.657299>,  <35.326416, 38.073837, 33.798542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257065, 38.255058, 33.657299>,  <35.141483, 38.557095, 33.421894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257065, 38.255058, 33.657299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235356, -0.651897, -0.720859,
		0.927962, 0.069787, -0.366084,
		0.288956, -0.755090, 0.588510,
		35.343750, 38.028530, 33.833851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478378, 38.195984, 33.014210>,  <35.141483, 38.557095, 33.421894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478378, 38.195984, 33.014210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382233, 37.937931, 33.304321>,  <35.324547, 37.783100, 33.478390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382233, 37.937931, 33.304321>,  <35.478378, 38.195984, 33.014210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382233, 37.937931, 33.304321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335742, -0.645811, -0.685715,
		0.910771, -0.408327, -0.061369,
		-0.240364, -0.645133, 0.725278,
		35.310123, 37.744392, 33.521904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782642, 37.567162, 32.730888>,  <35.478378, 38.195984, 33.014210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782642, 37.567162, 32.730888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542572, 37.444656, 33.026451>,  <35.398529, 37.371155, 33.203789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542572, 37.444656, 33.026451>,  <35.782642, 37.567162, 32.730888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542572, 37.444656, 33.026451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283821, -0.782139, -0.554712,
		0.747819, -0.542644, 0.382498,
		-0.600177, -0.306263, 0.738911,
		35.362518, 37.352776, 33.248123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974709, 36.890957, 33.003082>,  <35.782642, 37.567162, 32.730888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974709, 36.890957, 33.003082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591492, 36.911289, 33.115913>,  <35.361561, 36.923489, 33.183613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591492, 36.911289, 33.115913>,  <35.974709, 36.890957, 33.003082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591492, 36.911289, 33.115913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209295, -0.796467, -0.567306,
		0.195828, -0.602541, 0.773690,
		-0.958043, 0.050835, 0.282079,
		35.304077, 36.926540, 33.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787403, 36.161087, 33.362003>,  <35.974709, 36.890957, 33.003082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787403, 36.161087, 33.362003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446095, 36.348442, 33.270309>,  <35.241310, 36.460854, 33.215294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446095, 36.348442, 33.270309>,  <35.787403, 36.161087, 33.362003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446095, 36.348442, 33.270309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367090, -0.851730, -0.373900,
		-0.370372, -0.234889, 0.898694,
		-0.853270, 0.468384, -0.229232,
		35.190113, 36.488956, 33.201538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282650, 35.660667, 33.438377>,  <35.787403, 36.161087, 33.362003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282650, 35.660667, 33.438377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092735, 35.921581, 33.202038>,  <34.978786, 36.078129, 33.060234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092735, 35.921581, 33.202038>,  <35.282650, 35.660667, 33.438377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092735, 35.921581, 33.202038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352936, -0.756113, -0.551116,
		-0.806233, -0.053130, 0.589207,
		-0.474788, 0.652281, -0.590852,
		34.950298, 36.117264, 33.024784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660667, 35.329567, 33.122490>,  <35.282650, 35.660667, 33.438377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660667, 35.329567, 33.122490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662655, 35.652161, 32.885998>,  <34.663845, 35.845718, 32.744102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662655, 35.652161, 32.885998>,  <34.660667, 35.329567, 33.122490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662655, 35.652161, 32.885998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372039, -0.547306, -0.749695,
		-0.928204, 0.223684, 0.297327,
		0.004966, 0.806487, -0.591230,
		34.664146, 35.894108, 32.708630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931259, 35.499451, 32.958008>,  <34.660667, 35.329567, 33.122490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931259, 35.499451, 32.958008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152363, 35.643887, 32.657589>,  <34.285027, 35.730549, 32.477337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152363, 35.643887, 32.657589>,  <33.931259, 35.499451, 32.958008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152363, 35.643887, 32.657589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622712, -0.419944, -0.660210,
		-0.553792, 0.832623, -0.007274,
		0.552761, 0.361089, -0.751046,
		34.318192, 35.752213, 32.432274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388870, 35.690170, 32.554012>,  <33.931259, 35.499451, 32.958008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388870, 35.690170, 32.554012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710716, 35.697262, 32.316601>,  <33.903824, 35.701515, 32.174152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710716, 35.697262, 32.316601>,  <33.388870, 35.690170, 32.554012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710716, 35.697262, 32.316601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559795, -0.310719, -0.768169,
		-0.198038, 0.950336, -0.240086,
		0.804618, 0.017728, -0.593528,
		33.952103, 35.702579, 32.138542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172733, 36.041149, 31.891628>,  <33.388870, 35.690170, 32.554012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172733, 36.041149, 31.891628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493172, 35.815586, 31.811371>,  <33.685432, 35.680248, 31.763216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493172, 35.815586, 31.811371>,  <33.172733, 36.041149, 31.891628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493172, 35.815586, 31.811371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431569, -0.311917, -0.846437,
		0.414729, 0.764666, -0.493240,
		0.801092, -0.563909, -0.200645,
		33.733498, 35.646412, 31.751177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223354, 36.017452, 31.136604>,  <33.172733, 36.041149, 31.891628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223354, 36.017452, 31.136604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.468781, 35.718391, 31.238232>,  <33.616035, 35.538956, 31.299208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.468781, 35.718391, 31.238232>,  <33.223354, 36.017452, 31.136604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468781, 35.718391, 31.238232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432857, -0.587560, -0.683673,
		0.660430, 0.309505, -0.684134,
		0.613569, -0.747650, 0.254071,
		33.652851, 35.494095, 31.314453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559544, 35.754284, 30.499224>,  <33.223354, 36.017452, 31.136604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559544, 35.754284, 30.499224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567978, 35.465889, 30.776274>,  <33.573036, 35.292850, 30.942505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567978, 35.465889, 30.776274>,  <33.559544, 35.754284, 30.499224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567978, 35.465889, 30.776274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249559, -0.674646, -0.694675,
		0.968130, -0.158204, -0.194153,
		0.021084, -0.720989, 0.692626,
		33.574303, 35.249592, 30.984062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996708, 35.274673, 30.227907>,  <33.559544, 35.754284, 30.499224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996708, 35.274673, 30.227907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741444, 35.112572, 30.489752>,  <33.588284, 35.015312, 30.646858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741444, 35.112572, 30.489752>,  <33.996708, 35.274673, 30.227907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741444, 35.112572, 30.489752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255325, -0.690737, -0.676529,
		0.726330, -0.598875, 0.337333,
		-0.638165, -0.405254, 0.654611,
		33.549995, 34.990997, 30.686134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167976, 34.475422, 30.219198>,  <33.996708, 35.274673, 30.227907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167976, 34.475422, 30.219198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818535, 34.502758, 30.411924>,  <33.608871, 34.519161, 30.527559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.818535, 34.502758, 30.411924>,  <34.167976, 34.475422, 30.219198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818535, 34.502758, 30.411924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348531, -0.778844, -0.521468,
		0.339620, -0.623484, 0.704220,
		-0.873605, 0.068342, 0.481814,
		33.556454, 34.523262, 30.556469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884628, 33.752480, 30.461588>,  <34.167976, 34.475422, 30.219198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884628, 33.752480, 30.461588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557739, 33.980202, 30.425720>,  <33.361607, 34.116837, 30.404200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557739, 33.980202, 30.425720>,  <33.884628, 33.752480, 30.461588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557739, 33.980202, 30.425720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427486, -0.703134, -0.568207,
		-0.386533, -0.426018, 0.817986,
		-0.817220, 0.569308, -0.089668,
		33.312572, 34.150993, 30.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261997, 33.282509, 30.615446>,  <33.884628, 33.752480, 30.461588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261997, 33.282509, 30.615446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137333, 33.609985, 30.422527>,  <33.062534, 33.806473, 30.306776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137333, 33.609985, 30.422527>,  <33.261997, 33.282509, 30.615446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137333, 33.609985, 30.422527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456198, -0.574171, -0.679861,
		-0.833519, 0.008139, 0.552431,
		-0.311657, 0.818695, -0.482295,
		33.043835, 33.855595, 30.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568630, 33.158070, 30.416121>,  <33.261997, 33.282509, 30.615446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568630, 33.158070, 30.416121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682030, 33.446407, 30.163136>,  <32.750069, 33.619411, 30.011345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682030, 33.446407, 30.163136>,  <32.568630, 33.158070, 30.416121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682030, 33.446407, 30.163136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485917, -0.460606, -0.742783,
		-0.826749, 0.517901, 0.219691,
		0.283497, 0.720847, -0.632462,
		32.767078, 33.662663, 29.973396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055614, 33.177010, 29.999743>,  <32.568630, 33.158070, 30.416121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055614, 33.177010, 29.999743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307011, 33.402039, 29.784893>,  <32.457848, 33.537056, 29.655983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.307011, 33.402039, 29.784893>,  <32.055614, 33.177010, 29.999743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307011, 33.402039, 29.784893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311455, -0.450756, -0.836550,
		-0.712734, 0.693057, -0.108081,
		0.628495, 0.562575, -0.537125,
		32.495560, 33.570812, 29.623756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691429, 33.579723, 29.476852>,  <32.055614, 33.177010, 29.999743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691429, 33.579723, 29.476852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065315, 33.522655, 29.346651>,  <32.289646, 33.488415, 29.268530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065315, 33.522655, 29.346651>,  <31.691429, 33.579723, 29.476852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065315, 33.522655, 29.346651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345746, -0.577042, -0.739920,
		-0.082261, 0.804156, -0.588699,
		0.934715, -0.142674, -0.325502,
		32.345730, 33.479855, 29.249001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629906, 33.563427, 28.743593>,  <31.691429, 33.579723, 29.476852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629906, 33.563427, 28.743593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993111, 33.399563, 28.778673>,  <32.211033, 33.301247, 28.799721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993111, 33.399563, 28.778673>,  <31.629906, 33.563427, 28.743593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993111, 33.399563, 28.778673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268538, -0.729810, -0.628702,
		0.321556, 0.547320, -0.772686,
		0.908014, -0.409658, 0.087699,
		32.265514, 33.276665, 28.804983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933651, 33.432774, 28.114986>,  <31.629906, 33.563427, 28.743593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933651, 33.432774, 28.114986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150913, 33.191238, 28.348347>,  <32.281269, 33.046318, 28.488363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150913, 33.191238, 28.348347>,  <31.933651, 33.432774, 28.114986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150913, 33.191238, 28.348347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357384, -0.795012, -0.490135,
		0.759776, 0.057721, -0.647618,
		0.543155, -0.603841, 0.583402,
		32.313858, 33.010086, 28.523367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236111, 32.979977, 27.676853>,  <31.933651, 33.432774, 28.114986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236111, 32.979977, 27.676853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247421, 32.800545, 28.034172>,  <32.254208, 32.692886, 28.248564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247421, 32.800545, 28.034172>,  <32.236111, 32.979977, 27.676853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247421, 32.800545, 28.034172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316374, -0.851728, -0.417692,
		0.948213, -0.270804, -0.166003,
		0.028276, -0.448579, 0.893296,
		32.255905, 32.665970, 28.302160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602268, 32.419823, 27.527225>,  <32.236111, 32.979977, 27.676853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602268, 32.419823, 27.527225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359344, 32.379791, 27.842482>,  <32.213593, 32.355770, 28.031635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359344, 32.379791, 27.842482>,  <32.602268, 32.419823, 27.527225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359344, 32.379791, 27.842482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368351, -0.843491, -0.390947,
		0.703916, -0.527736, 0.475391,
		-0.607305, -0.100083, 0.788140,
		32.177155, 32.349766, 28.078924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227951, 32.095657, 27.406691>,  <32.602268, 32.419823, 27.527225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227951, 32.095657, 27.406691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494629, 32.019012, 27.118580>,  <33.654636, 31.973026, 26.945713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494629, 32.019012, 27.118580>,  <33.227951, 32.095657, 27.406691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494629, 32.019012, 27.118580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631322, 0.658845, 0.409091,
		0.396165, -0.727467, 0.560219,
		0.666698, -0.191611, -0.720277,
		33.694637, 31.961529, 26.902496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845760, 31.779778, 27.745770>,  <33.227951, 32.095657, 27.406691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845760, 31.779778, 27.745770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955711, 31.963861, 27.408096>,  <34.021683, 32.074314, 27.205492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955711, 31.963861, 27.408096>,  <33.845760, 31.779778, 27.745770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955711, 31.963861, 27.408096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427300, 0.728062, 0.536041,
		0.861312, -0.508065, 0.003478,
		0.274876, 0.460212, -0.844185,
		34.038174, 32.101925, 27.154840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626278, 32.051765, 27.790216>,  <33.845760, 31.779778, 27.745770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626278, 32.051765, 27.790216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512859, 32.243866, 27.458200>,  <34.444809, 32.359127, 27.258991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512859, 32.243866, 27.458200>,  <34.626278, 32.051765, 27.790216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512859, 32.243866, 27.458200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520107, 0.804211, 0.287633,
		0.805662, -0.350152, -0.477810,
		-0.283545, 0.480247, -0.830039,
		34.427795, 32.387939, 27.209188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277317, 32.127232, 27.336756>,  <34.626278, 32.051765, 27.790216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277317, 32.127232, 27.336756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013596, 32.408104, 27.229229>,  <34.855362, 32.576626, 27.164713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013596, 32.408104, 27.229229>,  <35.277317, 32.127232, 27.336756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013596, 32.408104, 27.229229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703699, 0.702195, 0.108306,
		0.264813, -0.117761, -0.957082,
		-0.659304, 0.702178, -0.268819,
		34.815804, 32.618759, 27.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609863, 32.606506, 26.949577>,  <35.277317, 32.127232, 27.336756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609863, 32.606506, 26.949577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284134, 32.822121, 27.035673>,  <35.088696, 32.951488, 27.087330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284134, 32.822121, 27.035673>,  <35.609863, 32.606506, 26.949577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284134, 32.822121, 27.035673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577689, 0.788610, 0.210638,
		-0.056198, 0.295867, -0.953575,
		-0.814320, 0.539033, 0.215237,
		35.039837, 32.983829, 27.100245>
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
