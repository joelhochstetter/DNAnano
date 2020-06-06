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
	<42.459042, 32.240585, 22.951527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608997, 32.589615, 22.826260>,  <42.698971, 32.799034, 22.751101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608997, 32.589615, 22.826260>,  <42.459042, 32.240585, 22.951527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608997, 32.589615, 22.826260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081640, -0.305417, -0.948712,
		-0.923467, 0.381232, -0.043262,
		0.374892, 0.872572, -0.313166,
		42.721466, 32.851387, 22.732309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951138, 32.709099, 22.529594>,  <42.459042, 32.240585, 22.951527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951138, 32.709099, 22.529594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344368, 32.701786, 22.456673>,  <42.580307, 32.697399, 22.412920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344368, 32.701786, 22.456673>,  <41.951138, 32.709099, 22.529594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344368, 32.701786, 22.456673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178872, -0.311185, -0.933364,
		-0.039664, 0.950174, -0.309188,
		0.983073, -0.018284, -0.182302,
		42.639290, 32.696301, 22.401981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308105, 33.076363, 22.204058>,  <41.951138, 32.709099, 22.529594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308105, 33.076363, 22.204058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916138, 33.067337, 22.283310>,  <40.680958, 33.061924, 22.330860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916138, 33.067337, 22.283310>,  <41.308105, 33.076363, 22.204058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916138, 33.067337, 22.283310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056151, -0.922155, -0.382723,
		0.191341, -0.386162, 0.902368,
		-0.979916, -0.022561, 0.198130,
		40.622162, 33.060570, 22.342749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171539, 32.497124, 22.710699>,  <41.308105, 33.076363, 22.204058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171539, 32.497124, 22.710699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866230, 32.593884, 22.471069>,  <40.683044, 32.651939, 22.327291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866230, 32.593884, 22.471069>,  <41.171539, 32.497124, 22.710699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866230, 32.593884, 22.471069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009608, -0.931407, -0.363853,
		-0.645998, -0.271965, 0.713247,
		-0.763278, 0.241901, -0.599074,
		40.637245, 32.666454, 22.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658703, 32.312321, 23.219807>,  <41.171539, 32.497124, 22.710699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658703, 32.312321, 23.219807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369465, 32.532364, 23.386906>,  <40.195923, 32.664391, 23.487165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369465, 32.532364, 23.386906>,  <40.658703, 32.312321, 23.219807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369465, 32.532364, 23.386906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667143, 0.712943, 0.215945,
		-0.179036, 0.434846, -0.882528,
		-0.723095, 0.550110, 0.417747,
		40.152538, 32.697395, 23.512230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607983, 33.002949, 22.909201>,  <40.658703, 32.312321, 23.219807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607983, 33.002949, 22.909201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503403, 32.999214, 23.295269>,  <40.440655, 32.996975, 23.526911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503403, 32.999214, 23.295269>,  <40.607983, 33.002949, 22.909201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503403, 32.999214, 23.295269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528329, 0.835469, 0.151194,
		-0.807784, 0.549458, -0.213497,
		-0.261445, -0.009335, 0.965173,
		40.424969, 32.996414, 23.584822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933838, 33.412197, 22.867062>,  <40.607983, 33.002949, 22.909201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933838, 33.412197, 22.867062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589306, 33.243675, 22.753490>,  <39.382587, 33.142563, 22.685347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589306, 33.243675, 22.753490>,  <39.933838, 33.412197, 22.867062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589306, 33.243675, 22.753490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032830, 0.603851, -0.796421,
		0.506985, -0.676659, -0.533946,
		-0.861329, -0.421303, -0.283929,
		39.330906, 33.117283, 22.668312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924038, 33.448013, 22.169216>,  <39.933838, 33.412197, 22.867062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924038, 33.448013, 22.169216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532349, 33.414795, 22.243221>,  <39.297337, 33.394863, 22.287624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532349, 33.414795, 22.243221>,  <39.924038, 33.448013, 22.169216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532349, 33.414795, 22.243221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195892, 0.623365, -0.756995,
		-0.052469, -0.777508, -0.626680,
		-0.979221, -0.083043, 0.185015,
		39.238583, 33.389881, 22.298725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612213, 33.224274, 21.555202>,  <39.924038, 33.448013, 22.169216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612213, 33.224274, 21.555202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300087, 33.376629, 21.753613>,  <39.112812, 33.468040, 21.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300087, 33.376629, 21.753613>,  <39.612213, 33.224274, 21.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300087, 33.376629, 21.753613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261894, 0.521232, -0.812237,
		-0.567914, -0.763703, -0.306971,
		-0.780311, 0.380887, 0.496024,
		39.065994, 33.490894, 21.902420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112419, 33.319786, 21.027550>,  <39.612213, 33.224274, 21.555202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112419, 33.319786, 21.027550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945930, 33.515137, 21.334339>,  <38.846039, 33.632347, 21.518414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945930, 33.515137, 21.334339>,  <39.112419, 33.319786, 21.027550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945930, 33.515137, 21.334339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367453, 0.681218, -0.633183,
		-0.831710, -0.545368, -0.104077,
		-0.416217, 0.488381, 0.766973,
		38.821064, 33.661652, 21.564430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273758, 33.300762, 20.963942>,  <39.112419, 33.319786, 21.027550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273758, 33.300762, 20.963942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423367, 33.613823, 21.162964>,  <38.513130, 33.801659, 21.282377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423367, 33.613823, 21.162964>,  <38.273758, 33.300762, 20.963942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423367, 33.613823, 21.162964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590041, 0.614724, -0.523417,
		-0.715514, -0.097810, 0.691717,
		0.374020, 0.782654, 0.497556,
		38.535572, 33.848618, 21.312231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676464, 33.779484, 20.997583>,  <38.273758, 33.300762, 20.963942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676464, 33.779484, 20.997583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988323, 33.991711, 21.130642>,  <38.175438, 34.119045, 21.210478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988323, 33.991711, 21.130642>,  <37.676464, 33.779484, 20.997583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988323, 33.991711, 21.130642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334364, 0.801833, -0.495242,
		-0.529486, 0.274888, 0.802546,
		0.779644, 0.530566, 0.332647,
		38.222218, 34.150879, 21.230436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371204, 34.326035, 21.315035>,  <37.676464, 33.779484, 20.997583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371204, 34.326035, 21.315035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743645, 34.439606, 21.223442>,  <37.967110, 34.507748, 21.168488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743645, 34.439606, 21.223442>,  <37.371204, 34.326035, 21.315035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743645, 34.439606, 21.223442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364179, 0.688375, -0.627307,
		-0.020484, 0.667478, 0.744348,
		0.931104, 0.283925, -0.228981,
		38.022976, 34.524784, 21.154747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391788, 34.999142, 21.446611>,  <37.371204, 34.326035, 21.315035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391788, 34.999142, 21.446611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699512, 34.955261, 21.194859>,  <37.884148, 34.928932, 21.043806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699512, 34.955261, 21.194859>,  <37.391788, 34.999142, 21.446611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699512, 34.955261, 21.194859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391934, 0.696941, -0.600551,
		0.504525, 0.708688, 0.493169,
		0.769313, -0.109704, -0.629383,
		37.930305, 34.922352, 21.006044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515949, 35.625828, 21.206913>,  <37.391788, 34.999142, 21.446611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515949, 35.625828, 21.206913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684010, 35.397755, 20.924534>,  <37.784847, 35.260910, 20.755106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684010, 35.397755, 20.924534>,  <37.515949, 35.625828, 21.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684010, 35.397755, 20.924534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314238, 0.638393, -0.702644,
		0.851309, 0.517053, 0.089048,
		0.420152, -0.570185, -0.705947,
		37.810055, 35.226700, 20.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006191, 36.080509, 20.870882>,  <37.515949, 35.625828, 21.206913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006191, 36.080509, 20.870882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904068, 35.781860, 20.625156>,  <37.842796, 35.602673, 20.477722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904068, 35.781860, 20.625156>,  <38.006191, 36.080509, 20.870882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904068, 35.781860, 20.625156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207129, 0.662852, -0.719531,
		0.944414, -0.056456, -0.323875,
		-0.255303, -0.746619, -0.614313,
		37.827477, 35.557873, 20.440863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278580, 36.247578, 20.254988>,  <38.006191, 36.080509, 20.870882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278580, 36.247578, 20.254988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007893, 35.975307, 20.142750>,  <37.845478, 35.811947, 20.075407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007893, 35.975307, 20.142750>,  <38.278580, 36.247578, 20.254988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007893, 35.975307, 20.142750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214269, 0.546704, -0.809447,
		0.704370, -0.487647, -0.515813,
		-0.676721, -0.680673, -0.280594,
		37.804874, 35.771107, 20.058571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429688, 36.196693, 19.610914>,  <38.278580, 36.247578, 20.254988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429688, 36.196693, 19.610914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061722, 36.045139, 19.651325>,  <37.840942, 35.954208, 19.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061722, 36.045139, 19.651325>,  <38.429688, 36.196693, 19.610914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061722, 36.045139, 19.651325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248609, 0.364300, -0.897485,
		0.303230, -0.850728, -0.429318,
		-0.919916, -0.378877, 0.101032,
		37.785748, 35.931477, 19.681635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229012, 36.034843, 18.956894>,  <38.429688, 36.196693, 19.610914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229012, 36.034843, 18.956894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871632, 36.030529, 19.136505>,  <37.657204, 36.027939, 19.244272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871632, 36.030529, 19.136505>,  <38.229012, 36.034843, 18.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871632, 36.030529, 19.136505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396902, 0.486968, -0.778030,
		-0.210270, -0.873353, -0.439364,
		-0.893452, -0.010788, 0.449030,
		37.603596, 36.027294, 19.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679539, 35.647285, 18.488108>,  <38.229012, 36.034843, 18.956894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679539, 35.647285, 18.488108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486607, 35.896141, 18.734783>,  <37.370850, 36.045456, 18.882788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486607, 35.896141, 18.734783>,  <37.679539, 35.647285, 18.488108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486607, 35.896141, 18.734783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508131, 0.374747, -0.775479,
		-0.713557, -0.687393, 0.135377,
		-0.482326, 0.622138, 0.616689,
		37.341908, 36.082783, 18.919790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036560, 35.714703, 18.148239>,  <37.679539, 35.647285, 18.488108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036560, 35.714703, 18.148239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047485, 36.023006, 18.402855>,  <37.054039, 36.207989, 18.555624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047485, 36.023006, 18.402855>,  <37.036560, 35.714703, 18.148239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047485, 36.023006, 18.402855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448384, 0.578570, -0.681328,
		-0.893424, -0.266807, 0.361398,
		0.027311, 0.770760, 0.636540,
		37.055679, 36.254234, 18.593817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375160, 36.018715, 18.158079>,  <37.036560, 35.714703, 18.148239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375160, 36.018715, 18.158079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643871, 36.289246, 18.278938>,  <36.805099, 36.451565, 18.351454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643871, 36.289246, 18.278938>,  <36.375160, 36.018715, 18.158079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643871, 36.289246, 18.278938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175076, 0.541300, -0.822400,
		-0.719765, 0.499573, 0.482043,
		0.671779, 0.676329, 0.302146,
		36.845406, 36.492146, 18.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008335, 36.584156, 18.000191>,  <36.375160, 36.018715, 18.158079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008335, 36.584156, 18.000191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394375, 36.676060, 18.050446>,  <36.625999, 36.731201, 18.080599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394375, 36.676060, 18.050446>,  <36.008335, 36.584156, 18.000191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394375, 36.676060, 18.050446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023992, 0.555335, -0.831281,
		-0.260770, 0.799257, 0.541468,
		0.965103, 0.229763, 0.125639,
		36.683907, 36.744987, 18.088137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042107, 37.294743, 17.894903>,  <36.008335, 36.584156, 18.000191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042107, 37.294743, 17.894903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414883, 37.161816, 17.836868>,  <36.638550, 37.082062, 17.802048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414883, 37.161816, 17.836868>,  <36.042107, 37.294743, 17.894903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414883, 37.161816, 17.836868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049159, 0.512223, -0.857444,
		0.359258, 0.791957, 0.493699,
		0.931943, -0.332313, -0.145088,
		36.694466, 37.062122, 17.793343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438614, 37.900478, 17.751646>,  <36.042107, 37.294743, 17.894903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438614, 37.900478, 17.751646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650303, 37.592102, 17.609905>,  <36.777317, 37.407074, 17.524860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650303, 37.592102, 17.609905>,  <36.438614, 37.900478, 17.751646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650303, 37.592102, 17.609905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075175, 0.458593, -0.885461,
		0.845143, 0.441971, 0.300656,
		0.529227, -0.770943, -0.354351,
		36.809071, 37.360821, 17.503599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172550, 38.058064, 17.581129>,  <36.438614, 37.900478, 17.751646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172550, 38.058064, 17.581129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018932, 37.767242, 17.353481>,  <36.926762, 37.592751, 17.216892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018932, 37.767242, 17.353481>,  <37.172550, 38.058064, 17.581129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018932, 37.767242, 17.353481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139656, 0.563553, -0.814189,
		0.912691, -0.392168, -0.114893,
		-0.384047, -0.727058, -0.569118,
		36.903717, 37.549126, 17.182745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611542, 37.792744, 17.049894>,  <37.172550, 38.058064, 17.581129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611542, 37.792744, 17.049894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238243, 37.798359, 16.906311>,  <37.014263, 37.801727, 16.820160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238243, 37.798359, 16.906311>,  <37.611542, 37.792744, 17.049894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238243, 37.798359, 16.906311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321821, 0.476689, -0.818046,
		0.159625, -0.878960, -0.449388,
		-0.933248, 0.014042, -0.358959,
		36.958267, 37.802570, 16.798624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423340, 37.354294, 16.335190>,  <37.611542, 37.792744, 17.049894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423340, 37.354294, 16.335190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172955, 37.664986, 16.363113>,  <37.022724, 37.851398, 16.379868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172955, 37.664986, 16.363113>,  <37.423340, 37.354294, 16.335190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172955, 37.664986, 16.363113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459610, 0.439748, -0.771609,
		-0.630027, -0.450910, -0.632255,
		-0.625959, 0.776725, 0.069811,
		36.985168, 37.898003, 16.384056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110294, 37.509644, 15.984887>,  <37.423340, 37.354294, 16.335190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110294, 37.509644, 15.984887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196945, 37.900097, 15.978799>,  <38.248936, 38.134369, 15.975146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196945, 37.900097, 15.978799>,  <38.110294, 37.509644, 15.984887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196945, 37.900097, 15.978799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129732, -0.044236, -0.990562,
		-0.967596, 0.212610, -0.136218,
		0.216629, 0.976135, -0.015220,
		38.261932, 38.192936, 15.974233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841965, 37.762344, 15.351747>,  <38.110294, 37.509644, 15.984887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841965, 37.762344, 15.351747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150707, 38.000179, 15.441815>,  <38.335953, 38.142879, 15.495856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150707, 38.000179, 15.441815>,  <37.841965, 37.762344, 15.351747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150707, 38.000179, 15.441815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280714, -0.000932, -0.959791,
		-0.570469, 0.804031, -0.167628,
		0.771858, 0.594587, 0.225171,
		38.382263, 38.178555, 15.509367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730293, 37.529221, 14.669502>,  <37.841965, 37.762344, 15.351747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730293, 37.529221, 14.669502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618881, 37.832642, 14.433869>,  <37.552036, 38.014694, 14.292490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618881, 37.832642, 14.433869>,  <37.730293, 37.529221, 14.669502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618881, 37.832642, 14.433869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699351, 0.580577, 0.416939,
		0.658279, -0.295847, -0.692202,
		-0.278526, 0.758554, -0.589083,
		37.535324, 38.060207, 14.257145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405853, 37.094059, 14.034043>,  <37.730293, 37.529221, 14.669502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405853, 37.094059, 14.034043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752560, 36.911461, 13.953708>,  <37.960583, 36.801903, 13.905506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752560, 36.911461, 13.953708>,  <37.405853, 37.094059, 14.034043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752560, 36.911461, 13.953708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001849, -0.405648, 0.914027,
		-0.498717, -0.791874, -0.352445,
		0.866763, -0.456492, -0.200839,
		38.012589, 36.774513, 13.893456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298695, 36.440376, 14.281437>,  <37.405853, 37.094059, 14.034043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298695, 36.440376, 14.281437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696938, 36.459232, 14.249101>,  <37.935883, 36.470547, 14.229699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696938, 36.459232, 14.249101>,  <37.298695, 36.440376, 14.281437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696938, 36.459232, 14.249101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093333, -0.562933, 0.821216,
		-0.006796, -0.825157, -0.564863,
		0.995612, 0.047139, -0.080840,
		37.995621, 36.473373, 14.224849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655140, 35.756577, 14.250698>,  <37.298695, 36.440376, 14.281437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655140, 35.756577, 14.250698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891617, 36.021587, 14.434672>,  <38.033504, 36.180595, 14.545057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891617, 36.021587, 14.434672>,  <37.655140, 35.756577, 14.250698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891617, 36.021587, 14.434672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262779, -0.697379, 0.666790,
		0.762519, -0.273341, -0.586387,
		0.591195, 0.662530, 0.459936,
		38.068977, 36.220348, 14.572653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359985, 35.537247, 14.277603>,  <37.655140, 35.756577, 14.250698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359985, 35.537247, 14.277603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287579, 35.776474, 14.589896>,  <38.244133, 35.920010, 14.777272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287579, 35.776474, 14.589896>,  <38.359985, 35.537247, 14.277603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287579, 35.776474, 14.589896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329410, -0.711122, 0.621123,
		0.926673, 0.369614, -0.068286,
		-0.181016, 0.598072, 0.780732,
		38.233273, 35.955894, 14.824116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843525, 35.320499, 14.811213>,  <38.359985, 35.537247, 14.277603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843525, 35.320499, 14.811213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553478, 35.540947, 14.976361>,  <38.379448, 35.673218, 15.075451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553478, 35.540947, 14.976361>,  <38.843525, 35.320499, 14.811213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553478, 35.540947, 14.976361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067849, -0.539467, 0.839268,
		0.685271, 0.636584, 0.353786,
		-0.725121, 0.551122, 0.412873,
		38.335941, 35.706284, 15.100224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391159, 35.094185, 14.291223>,  <38.843525, 35.320499, 14.811213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391159, 35.094185, 14.291223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483540, 35.438610, 14.472434>,  <39.538967, 35.645264, 14.581161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483540, 35.438610, 14.472434>,  <39.391159, 35.094185, 14.291223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483540, 35.438610, 14.472434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198300, -0.497501, 0.844494,
		0.952542, -0.105205, -0.285649,
		0.230955, 0.861060, 0.453029,
		39.552826, 35.696930, 14.608343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112648, 35.069412, 14.605731>,  <39.391159, 35.094185, 14.291223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112648, 35.069412, 14.605731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909657, 35.349476, 14.806626>,  <39.787861, 35.517513, 14.927163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909657, 35.349476, 14.806626>,  <40.112648, 35.069412, 14.605731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909657, 35.349476, 14.806626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187812, -0.478975, 0.857502,
		0.840948, 0.529489, 0.111570,
		-0.507477, 0.700160, 0.502238,
		39.757412, 35.559525, 14.957297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499920, 35.088577, 15.280040>,  <40.112648, 35.069412, 14.605731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499920, 35.088577, 15.280040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155701, 35.278980, 15.352557>,  <39.949169, 35.393223, 15.396068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155701, 35.278980, 15.352557>,  <40.499920, 35.088577, 15.280040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155701, 35.278980, 15.352557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007111, -0.344660, 0.938701,
		0.509315, 0.809089, 0.293213,
		-0.860551, 0.476009, 0.181294,
		39.897537, 35.421783, 15.406945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610371, 35.357918, 15.969542>,  <40.499920, 35.088577, 15.280040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610371, 35.357918, 15.969542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213562, 35.394222, 15.934541>,  <39.975475, 35.416004, 15.913540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213562, 35.394222, 15.934541>,  <40.610371, 35.357918, 15.969542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213562, 35.394222, 15.934541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121588, -0.505334, 0.854315,
		0.033319, 0.858138, 0.512337,
		-0.992021, 0.090759, -0.087502,
		39.915955, 35.421452, 15.908290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331543, 35.590683, 16.585630>,  <40.610371, 35.357918, 15.969542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331543, 35.590683, 16.585630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035748, 35.401169, 16.394344>,  <39.858273, 35.287460, 16.279573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035748, 35.401169, 16.394344>,  <40.331543, 35.590683, 16.585630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035748, 35.401169, 16.394344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140998, -0.585623, 0.798226,
		-0.658239, 0.657705, 0.366258,
		-0.739487, -0.473782, -0.478215,
		39.813900, 35.259033, 16.250879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682892, 35.572575, 17.063950>,  <40.331543, 35.590683, 16.585630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682892, 35.572575, 17.063950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634968, 35.275272, 16.800671>,  <39.606213, 35.096893, 16.642704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634968, 35.275272, 16.800671>,  <39.682892, 35.572575, 17.063950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634968, 35.275272, 16.800671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165368, -0.638770, 0.751416,
		-0.978928, 0.198869, -0.046381,
		-0.119807, -0.743252, -0.658197,
		39.599026, 35.052296, 16.603212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142654, 35.158237, 17.385313>,  <39.682892, 35.572575, 17.063950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142654, 35.158237, 17.385313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322563, 34.922966, 17.116463>,  <39.430508, 34.781803, 16.955153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322563, 34.922966, 17.116463>,  <39.142654, 35.158237, 17.385313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322563, 34.922966, 17.116463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056247, -0.732391, 0.678558,
		-0.891371, -0.343001, -0.296326,
		0.449772, -0.588179, -0.672124,
		39.457497, 34.746513, 16.914825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721096, 34.598740, 17.297340>,  <39.142654, 35.158237, 17.385313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721096, 34.598740, 17.297340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082935, 34.490826, 17.165329>,  <39.300037, 34.426079, 17.086123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082935, 34.490826, 17.165329>,  <38.721096, 34.598740, 17.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082935, 34.490826, 17.165329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047246, -0.706001, 0.706633,
		-0.423638, -0.654811, -0.625902,
		0.904599, -0.269786, -0.330026,
		39.354317, 34.409889, 17.066320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620220, 33.979061, 17.207397>,  <38.721096, 34.598740, 17.297340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620220, 33.979061, 17.207397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015800, 34.026661, 17.242760>,  <39.253147, 34.055222, 17.263977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015800, 34.026661, 17.242760>,  <38.620220, 33.979061, 17.207397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015800, 34.026661, 17.242760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056005, -0.852057, 0.520444,
		0.137261, -0.509742, -0.849307,
		0.988950, 0.119002, 0.088406,
		39.312485, 34.062363, 17.269281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878117, 33.250973, 17.082384>,  <38.620220, 33.979061, 17.207397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878117, 33.250973, 17.082384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122646, 33.487457, 17.292812>,  <39.269363, 33.629349, 17.419069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122646, 33.487457, 17.292812>,  <38.878117, 33.250973, 17.082384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122646, 33.487457, 17.292812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035394, -0.684510, 0.728144,
		0.790588, -0.426513, -0.439384,
		0.611325, 0.591213, 0.526070,
		39.306046, 33.664822, 17.450634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258293, 32.721031, 17.464043>,  <38.878117, 33.250973, 17.082384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258293, 32.721031, 17.464043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303013, 33.071918, 17.650799>,  <39.329845, 33.282452, 17.762854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303013, 33.071918, 17.650799>,  <39.258293, 32.721031, 17.464043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303013, 33.071918, 17.650799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072196, -0.461425, 0.884237,
		0.991105, -0.132567, 0.011743,
		0.111802, 0.877219, 0.466892,
		39.336552, 33.335083, 17.790867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766842, 32.601288, 17.914574>,  <39.258293, 32.721031, 17.464043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766842, 32.601288, 17.914574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581394, 32.926834, 18.054680>,  <39.470127, 33.122162, 18.138744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581394, 32.926834, 18.054680>,  <39.766842, 32.601288, 17.914574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581394, 32.926834, 18.054680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201006, -0.481623, 0.853016,
		0.862933, 0.325068, 0.386881,
		-0.463619, 0.813861, 0.350268,
		39.442310, 33.170994, 18.159760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038754, 32.725098, 18.555279>,  <39.766842, 32.601288, 17.914574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038754, 32.725098, 18.555279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688675, 32.918159, 18.568378>,  <39.478626, 33.033997, 18.576239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688675, 32.918159, 18.568378>,  <40.038754, 32.725098, 18.555279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688675, 32.918159, 18.568378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187649, -0.401095, 0.896611,
		0.445891, 0.778566, 0.441607,
		-0.875197, 0.482658, 0.032747,
		39.426117, 33.062958, 18.578203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985092, 33.077637, 19.194805>,  <40.038754, 32.725098, 18.555279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985092, 33.077637, 19.194805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617989, 33.014038, 19.049236>,  <39.397728, 32.975880, 18.961895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617989, 33.014038, 19.049236>,  <39.985092, 33.077637, 19.194805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617989, 33.014038, 19.049236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283545, -0.379283, 0.880765,
		-0.278070, 0.911517, 0.303007,
		-0.917758, -0.158998, -0.363923,
		39.342663, 32.966339, 18.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670906, 32.941322, 19.767838>,  <39.985092, 33.077637, 19.194805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670906, 32.941322, 19.767838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355309, 32.857605, 19.536774>,  <39.165951, 32.807377, 19.398136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355309, 32.857605, 19.536774>,  <39.670906, 32.941322, 19.767838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355309, 32.857605, 19.536774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492303, -0.347172, 0.798191,
		-0.367600, 0.914150, 0.170882,
		-0.788992, -0.209289, -0.577659,
		39.118610, 32.794819, 19.363476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087669, 33.047874, 20.163408>,  <39.670906, 32.941322, 19.767838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087669, 33.047874, 20.163408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932751, 32.820911, 19.872742>,  <38.839798, 32.684734, 19.698341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932751, 32.820911, 19.872742>,  <39.087669, 33.047874, 20.163408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932751, 32.820911, 19.872742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513679, -0.521705, 0.681145,
		-0.765595, 0.637079, -0.089413,
		-0.387295, -0.567411, -0.726669,
		38.816563, 32.650688, 19.654741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318947, 33.271786, 20.032463>,  <39.087669, 33.047874, 20.163408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318947, 33.271786, 20.032463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430611, 32.895382, 19.955967>,  <38.497608, 32.669540, 19.910070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430611, 32.895382, 19.955967>,  <38.318947, 33.271786, 20.032463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430611, 32.895382, 19.955967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601757, -0.326635, 0.728833,
		-0.748304, -0.088381, -0.657442,
		0.279159, -0.941009, -0.191239,
		38.514359, 32.613079, 19.898596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607239, 32.881481, 20.051996>,  <38.318947, 33.271786, 20.032463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607239, 32.881481, 20.051996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878361, 32.588081, 20.072247>,  <38.041035, 32.412041, 20.084396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878361, 32.588081, 20.072247>,  <37.607239, 32.881481, 20.051996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878361, 32.588081, 20.072247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612036, -0.524731, 0.591666,
		-0.407419, -0.432021, -0.804592,
		0.677806, -0.733496, 0.050627,
		38.081703, 32.368031, 20.087435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237942, 32.328312, 20.096420>,  <37.607239, 32.881481, 20.051996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237942, 32.328312, 20.096420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600800, 32.210102, 20.216255>,  <37.818516, 32.139175, 20.288157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600800, 32.210102, 20.216255>,  <37.237942, 32.328312, 20.096420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600800, 32.210102, 20.216255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419935, -0.681701, 0.599114,
		0.027178, -0.669292, -0.742503,
		0.907147, -0.295520, 0.299586,
		37.872944, 32.121445, 20.306131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179672, 31.561064, 20.040428>,  <37.237942, 32.328312, 20.096420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179672, 31.561064, 20.040428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472435, 31.649868, 20.298119>,  <37.648090, 31.703150, 20.452732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472435, 31.649868, 20.298119>,  <37.179672, 31.561064, 20.040428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472435, 31.649868, 20.298119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382960, -0.647977, 0.658383,
		0.563611, -0.728586, -0.389236,
		0.731904, 0.222010, 0.644226,
		37.692005, 31.716471, 20.491386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509178, 30.905939, 20.195383>,  <37.179672, 31.561064, 20.040428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509178, 30.905939, 20.195383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627285, 31.147762, 20.491310>,  <37.698151, 31.292856, 20.668865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627285, 31.147762, 20.491310>,  <37.509178, 30.905939, 20.195383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627285, 31.147762, 20.491310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305347, -0.674016, 0.672655,
		0.905307, -0.424513, -0.014414,
		0.295266, 0.604558, 0.739816,
		37.715866, 31.329130, 20.713255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984299, 30.623079, 20.709091>,  <37.509178, 30.905939, 20.195383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984299, 30.623079, 20.709091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797234, 30.908932, 20.917164>,  <37.684994, 31.080444, 21.042007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797234, 30.908932, 20.917164>,  <37.984299, 30.623079, 20.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797234, 30.908932, 20.917164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318324, -0.685184, 0.655129,
		0.824598, 0.140793, 0.547919,
		-0.467663, 0.714633, 0.520184,
		37.656937, 31.123322, 21.073219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095142, 30.700006, 21.505756>,  <37.984299, 30.623079, 20.709091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095142, 30.700006, 21.505756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754189, 30.907066, 21.476166>,  <37.549614, 31.031303, 21.458410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754189, 30.907066, 21.476166>,  <38.095142, 30.700006, 21.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754189, 30.907066, 21.476166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397657, -0.549826, 0.734548,
		0.339564, 0.655537, 0.674512,
		-0.852388, 0.517651, -0.073978,
		37.498470, 31.062361, 21.453972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751507, 30.863613, 22.282656>,  <38.095142, 30.700006, 21.505756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751507, 30.863613, 22.282656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498428, 30.829643, 21.974762>,  <37.346581, 30.809261, 21.790026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498428, 30.829643, 21.974762>,  <37.751507, 30.863613, 22.282656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498428, 30.829643, 21.974762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484216, -0.732313, 0.478803,
		-0.604347, 0.675652, 0.422208,
		-0.632693, -0.084924, -0.769732,
		37.308620, 30.804167, 21.743843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950775, 30.923346, 22.443644>,  <37.751507, 30.863613, 22.282656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950775, 30.923346, 22.443644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960907, 30.705276, 22.108467>,  <36.966988, 30.574434, 21.907362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960907, 30.705276, 22.108467>,  <36.950775, 30.923346, 22.443644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960907, 30.705276, 22.108467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762383, -0.552721, 0.336558,
		-0.646630, 0.630306, -0.429633,
		0.025332, -0.545174, -0.837941,
		36.968506, 30.541725, 21.857084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419506, 31.014181, 21.912231>,  <36.950775, 30.923346, 22.443644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419506, 31.014181, 21.912231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551537, 30.638824, 21.953163>,  <36.630756, 30.413610, 21.977722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551537, 30.638824, 21.953163>,  <36.419506, 31.014181, 21.912231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551537, 30.638824, 21.953163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869705, -0.260179, 0.419428,
		-0.366964, -0.227438, -0.902003,
		0.330076, -0.938391, 0.102328,
		36.650558, 30.357307, 21.983862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908440, 30.524614, 21.706842>,  <36.419506, 31.014181, 21.912231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908440, 30.524614, 21.706842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126110, 30.423649, 22.026882>,  <36.256714, 30.363070, 22.218906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126110, 30.423649, 22.026882>,  <35.908440, 30.524614, 21.706842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126110, 30.423649, 22.026882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823633, 0.020798, 0.566742,
		-0.159695, -0.967395, -0.196580,
		0.544175, -0.252415, 0.800100,
		36.289364, 30.347925, 22.266912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484463, 30.052479, 22.113621>,  <35.908440, 30.524614, 21.706842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484463, 30.052479, 22.113621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760887, 30.204967, 22.359257>,  <35.926743, 30.296461, 22.506639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760887, 30.204967, 22.359257>,  <35.484463, 30.052479, 22.113621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760887, 30.204967, 22.359257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679942, 0.054666, 0.731225,
		0.245192, -0.922864, 0.296989,
		0.691057, 0.381226, 0.614090,
		35.968204, 30.319334, 22.543484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258614, 29.640091, 22.779190>,  <35.484463, 30.052479, 22.113621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258614, 29.640091, 22.779190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446297, 29.977005, 22.885319>,  <35.558907, 30.179153, 22.948996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446297, 29.977005, 22.885319>,  <35.258614, 29.640091, 22.779190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446297, 29.977005, 22.885319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630104, 0.108819, 0.768848,
		0.618719, -0.527930, 0.581787,
		0.469208, 0.842287, 0.265323,
		35.587059, 30.229691, 22.964916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322796, 29.567240, 23.438536>,  <35.258614, 29.640091, 22.779190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322796, 29.567240, 23.438536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346508, 29.961109, 23.372921>,  <35.360737, 30.197430, 23.333551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346508, 29.961109, 23.372921>,  <35.322796, 29.567240, 23.438536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346508, 29.961109, 23.372921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584853, 0.167430, 0.793671,
		0.808970, 0.048885, 0.585814,
		0.059284, 0.984671, -0.164036,
		35.364292, 30.256510, 23.323709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484425, 29.787172, 24.096262>,  <35.322796, 29.567240, 23.438536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484425, 29.787172, 24.096262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333385, 30.099285, 23.896832>,  <35.242760, 30.286552, 23.777174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333385, 30.099285, 23.896832>,  <35.484425, 29.787172, 24.096262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333385, 30.099285, 23.896832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456085, 0.311870, 0.833501,
		0.805857, 0.542123, 0.238113,
		-0.377599, 0.780282, -0.498577,
		35.220104, 30.333370, 23.747259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484364, 30.252405, 24.636932>,  <35.484425, 29.787172, 24.096262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484364, 30.252405, 24.636932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198090, 30.342884, 24.372620>,  <35.026325, 30.397171, 24.214031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198090, 30.342884, 24.372620>,  <35.484364, 30.252405, 24.636932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198090, 30.342884, 24.372620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537117, 0.426497, 0.727740,
		0.446435, 0.875748, -0.183742,
		-0.715683, 0.226198, -0.660782,
		34.983383, 30.410744, 24.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213997, 30.912102, 24.946239>,  <35.484364, 30.252405, 24.636932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213997, 30.912102, 24.946239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949123, 30.802296, 24.667339>,  <34.790199, 30.736412, 24.499998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949123, 30.802296, 24.667339>,  <35.213997, 30.912102, 24.946239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949123, 30.802296, 24.667339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729637, 0.448195, 0.516479,
		0.170725, 0.850743, -0.497081,
		-0.662180, -0.274513, -0.697252,
		34.750469, 30.719942, 24.458164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716911, 31.517914, 24.783504>,  <35.213997, 30.912102, 24.946239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716911, 31.517914, 24.783504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529408, 31.184673, 24.666061>,  <34.416904, 30.984730, 24.595596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529408, 31.184673, 24.666061>,  <34.716911, 31.517914, 24.783504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529408, 31.184673, 24.666061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824497, 0.293389, 0.483867,
		-0.316969, 0.468896, -0.824419,
		-0.468759, -0.833102, -0.293608,
		34.388779, 30.934742, 24.577978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062798, 31.722780, 24.536562>,  <34.716911, 31.517914, 24.783504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062798, 31.722780, 24.536562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011204, 31.332565, 24.607773>,  <33.980247, 31.098436, 24.650499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011204, 31.332565, 24.607773>,  <34.062798, 31.722780, 24.536562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011204, 31.332565, 24.607773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803447, 0.208034, 0.557849,
		-0.581237, -0.071084, -0.810624,
		-0.128983, -0.975535, 0.178029,
		33.972507, 31.039906, 24.661182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398216, 31.499363, 24.385004>,  <34.062798, 31.722780, 24.536562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398216, 31.499363, 24.385004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523937, 31.208561, 24.629192>,  <33.599369, 31.034081, 24.775705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523937, 31.208561, 24.629192>,  <33.398216, 31.499363, 24.385004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523937, 31.208561, 24.629192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801665, 0.141176, 0.580864,
		-0.508475, -0.671962, -0.538443,
		0.314303, -0.727005, 0.610473,
		33.618229, 30.990459, 24.812334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746418, 31.100409, 24.655699>,  <33.398216, 31.499363, 24.385004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746418, 31.100409, 24.655699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036301, 30.977753, 24.902527>,  <33.210228, 30.904160, 25.050623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036301, 30.977753, 24.902527>,  <32.746418, 31.100409, 24.655699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036301, 30.977753, 24.902527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621238, 0.096667, 0.777637,
		-0.298105, -0.946904, -0.120442,
		0.724705, -0.306641, 0.617070,
		33.253712, 30.885761, 25.087648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397186, 30.720093, 25.079050>,  <32.746418, 31.100409, 24.655699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397186, 30.720093, 25.079050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733883, 30.813358, 25.273823>,  <32.935902, 30.869318, 25.390686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733883, 30.813358, 25.273823>,  <32.397186, 30.720093, 25.079050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733883, 30.813358, 25.273823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450240, -0.194524, 0.871461,
		0.297915, -0.952782, -0.058758,
		0.841743, 0.233166, 0.486932,
		32.986404, 30.883308, 25.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600975, 30.111549, 25.560184>,  <32.397186, 30.720093, 25.079050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600975, 30.111549, 25.560184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770718, 30.446808, 25.697258>,  <32.872562, 30.647963, 25.779503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770718, 30.446808, 25.697258>,  <32.600975, 30.111549, 25.560184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770718, 30.446808, 25.697258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427169, -0.148389, 0.891912,
		0.798403, -0.524873, 0.295060,
		0.424357, 0.838146, 0.342684,
		32.898026, 30.698252, 25.800064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943031, 29.750738, 26.164803>,  <32.600975, 30.111549, 25.560184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943031, 29.750738, 26.164803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961403, 30.147034, 26.215908>,  <32.972424, 30.384811, 26.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961403, 30.147034, 26.215908>,  <32.943031, 29.750738, 26.164803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961403, 30.147034, 26.215908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093652, -0.123064, 0.987970,
		0.994545, -0.057337, 0.087133,
		0.045925, 0.990741, 0.127762,
		32.975182, 30.444256, 26.254236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365170, 29.842833, 26.640882>,  <32.943031, 29.750738, 26.164803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365170, 29.842833, 26.640882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154438, 30.182114, 26.662815>,  <33.028000, 30.385681, 26.675974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154438, 30.182114, 26.662815>,  <33.365170, 29.842833, 26.640882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154438, 30.182114, 26.662815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158334, -0.161313, 0.974119,
		0.835094, 0.504512, 0.219284,
		-0.526828, 0.848202, 0.054830,
		32.996391, 30.436575, 26.679264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646717, 30.224226, 27.186125>,  <33.365170, 29.842833, 26.640882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646717, 30.224226, 27.186125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270569, 30.358978, 27.167297>,  <33.044880, 30.439829, 27.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270569, 30.358978, 27.167297>,  <33.646717, 30.224226, 27.186125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270569, 30.358978, 27.167297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080440, -0.085794, 0.993060,
		0.330503, 0.937631, 0.107777,
		-0.940371, 0.336879, -0.047067,
		32.988457, 30.460041, 27.153177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626450, 30.740759, 27.670700>,  <33.646717, 30.224226, 27.186125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626450, 30.740759, 27.670700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241310, 30.651196, 27.610306>,  <33.010227, 30.597458, 27.574070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241310, 30.651196, 27.610306>,  <33.626450, 30.740759, 27.670700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241310, 30.651196, 27.610306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162765, 0.035019, 0.986043,
		-0.215496, 0.973981, -0.070162,
		-0.962844, -0.223908, -0.150984,
		32.952457, 30.584023, 27.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195763, 31.117455, 28.127153>,  <33.626450, 30.740759, 27.670700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195763, 31.117455, 28.127153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953251, 30.817863, 28.020226>,  <32.807743, 30.638109, 27.956068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953251, 30.817863, 28.020226>,  <33.195763, 31.117455, 28.127153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953251, 30.817863, 28.020226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106543, -0.256615, 0.960623,
		-0.788084, 0.610885, 0.075782,
		-0.606277, -0.748978, -0.267320,
		32.771366, 30.593170, 27.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691631, 31.031673, 28.639324>,  <33.195763, 31.117455, 28.127153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691631, 31.031673, 28.639324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647045, 30.688999, 28.437862>,  <32.620293, 30.483395, 28.316986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647045, 30.688999, 28.437862>,  <32.691631, 31.031673, 28.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647045, 30.688999, 28.437862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236606, -0.469360, 0.850717,
		-0.965191, 0.213993, -0.150379,
		-0.111466, -0.856684, -0.503654,
		32.613605, 30.431993, 28.286766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969940, 30.646963, 28.775461>,  <32.691631, 31.031673, 28.639324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969940, 30.646963, 28.775461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261864, 30.393852, 28.671947>,  <32.437019, 30.241985, 28.609838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261864, 30.393852, 28.671947>,  <31.969940, 30.646963, 28.775461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261864, 30.393852, 28.671947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154597, -0.521482, 0.839140,
		-0.665942, -0.572405, -0.478408,
		0.729809, -0.632779, -0.258784,
		32.480808, 30.204018, 28.594313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642078, 29.885344, 28.782551>,  <31.969940, 30.646963, 28.775461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642078, 29.885344, 28.782551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038368, 29.831512, 28.790100>,  <32.276142, 29.799213, 28.794630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038368, 29.831512, 28.790100>,  <31.642078, 29.885344, 28.782551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038368, 29.831512, 28.790100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110489, -0.716831, 0.688437,
		-0.079119, -0.684136, -0.725050,
		0.990723, -0.134578, 0.018875,
		32.335587, 29.791140, 28.795763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748402, 29.145273, 28.739738>,  <31.642078, 29.885344, 28.782551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748402, 29.145273, 28.739738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100609, 29.266693, 28.885365>,  <32.311932, 29.339544, 28.972740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100609, 29.266693, 28.885365>,  <31.748402, 29.145273, 28.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100609, 29.266693, 28.885365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008936, -0.757288, 0.653020,
		0.473927, -0.578250, -0.664094,
		0.880519, 0.303550, 0.364067,
		32.364765, 29.357758, 28.994585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949574, 28.590456, 29.052298>,  <31.748402, 29.145273, 28.739738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949574, 28.590456, 29.052298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226627, 28.846474, 29.185326>,  <32.392860, 29.000084, 29.265142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226627, 28.846474, 29.185326>,  <31.949574, 28.590456, 29.052298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226627, 28.846474, 29.185326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077909, -0.524768, 0.847673,
		0.717070, -0.561216, -0.413337,
		0.692633, 0.640043, 0.332571,
		32.434418, 29.038486, 29.285097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543629, 28.135630, 29.305662>,  <31.949574, 28.590456, 29.052298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543629, 28.135630, 29.305662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591579, 28.492176, 29.480522>,  <32.620350, 28.706104, 29.585438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591579, 28.492176, 29.480522>,  <32.543629, 28.135630, 29.305662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591579, 28.492176, 29.480522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223181, -0.453248, 0.862993,
		0.967378, -0.005888, -0.253269,
		0.119875, 0.891365, 0.437148,
		32.627541, 28.759586, 29.611666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921642, 27.990692, 29.852964>,  <32.543629, 28.135630, 29.305662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921642, 27.990692, 29.852964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803078, 28.353424, 29.972832>,  <32.731941, 28.571064, 30.044752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803078, 28.353424, 29.972832>,  <32.921642, 27.990692, 29.852964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803078, 28.353424, 29.972832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066402, -0.293444, 0.953667,
		0.952750, 0.302574, 0.026764,
		-0.296409, 0.906829, 0.299670,
		32.714153, 28.625473, 30.062733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294800, 28.240986, 30.370728>,  <32.921642, 27.990692, 29.852964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294800, 28.240986, 30.370728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965508, 28.455971, 30.443867>,  <32.767933, 28.584961, 30.487749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965508, 28.455971, 30.443867>,  <33.294800, 28.240986, 30.370728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965508, 28.455971, 30.443867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032123, -0.365659, 0.930194,
		0.566803, 0.759887, 0.318285,
		-0.823227, 0.537461, 0.182846,
		32.718540, 28.617208, 30.498720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455189, 28.505964, 31.068825>,  <33.294800, 28.240986, 30.370728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455189, 28.505964, 31.068825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064999, 28.568806, 31.007153>,  <32.830887, 28.606510, 30.970150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064999, 28.568806, 31.007153>,  <33.455189, 28.505964, 31.068825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064999, 28.568806, 31.007153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183626, -0.194529, 0.963556,
		0.121384, 0.968234, 0.218605,
		-0.975473, 0.157101, -0.154180,
		32.772358, 28.615936, 30.960899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209072, 29.095221, 31.537512>,  <33.455189, 28.505964, 31.068825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209072, 29.095221, 31.537512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919865, 28.839375, 31.433102>,  <32.746338, 28.685867, 31.370457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919865, 28.839375, 31.433102>,  <33.209072, 29.095221, 31.537512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919865, 28.839375, 31.433102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113193, -0.263051, 0.958119,
		-0.681488, 0.722287, 0.117792,
		-0.723023, -0.639613, -0.261024,
		32.702957, 28.647491, 31.354794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704834, 29.215372, 31.989895>,  <33.209072, 29.095221, 31.537512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704834, 29.215372, 31.989895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573807, 28.862354, 31.854950>,  <32.495190, 28.650543, 31.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573807, 28.862354, 31.854950>,  <32.704834, 29.215372, 31.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573807, 28.862354, 31.854950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245777, -0.265174, 0.932350,
		-0.912299, 0.388327, -0.130045,
		-0.327572, -0.882544, -0.337360,
		32.475536, 28.597591, 31.753742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021797, 29.059822, 32.247841>,  <32.704834, 29.215372, 31.989895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021797, 29.059822, 32.247841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145248, 28.687649, 32.168804>,  <32.219318, 28.464344, 32.121384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145248, 28.687649, 32.168804>,  <32.021797, 29.059822, 32.247841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145248, 28.687649, 32.168804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097050, -0.237448, 0.966540,
		-0.946219, -0.279124, -0.163582,
		0.308627, -0.930434, -0.197589,
		32.237835, 28.408518, 32.109528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539570, 28.580261, 32.506165>,  <32.021797, 29.059822, 32.247841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539570, 28.580261, 32.506165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904680, 28.416939, 32.510708>,  <32.123745, 28.318945, 32.513435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904680, 28.416939, 32.510708>,  <31.539570, 28.580261, 32.506165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904680, 28.416939, 32.510708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082270, -0.156539, 0.984239,
		-0.400092, -0.899323, -0.176476,
		0.912775, -0.408305, 0.011358,
		32.178513, 28.294447, 32.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543070, 28.165966, 33.089958>,  <31.539570, 28.580261, 32.506165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543070, 28.165966, 33.089958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927496, 28.139194, 32.982719>,  <32.158150, 28.123131, 32.918377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927496, 28.139194, 32.982719>,  <31.543070, 28.165966, 33.089958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927496, 28.139194, 32.982719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248176, -0.217570, 0.943966,
		-0.121507, -0.973747, -0.192488,
		0.961064, -0.066928, -0.268097,
		32.215816, 28.119116, 32.902290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831139, 27.513802, 33.327003>,  <31.543070, 28.165966, 33.089958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831139, 27.513802, 33.327003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135677, 27.772465, 33.308308>,  <32.318401, 27.927662, 33.297089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135677, 27.772465, 33.308308>,  <31.831139, 27.513802, 33.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135677, 27.772465, 33.308308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203723, -0.170168, 0.964126,
		0.615506, -0.743557, -0.261296,
		0.761347, 0.646658, -0.046740,
		32.364082, 27.966461, 33.294285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293682, 27.105478, 33.654171>,  <31.831139, 27.513802, 33.327003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293682, 27.105478, 33.654171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411003, 27.487251, 33.676201>,  <32.481396, 27.716314, 33.689419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411003, 27.487251, 33.676201>,  <32.293682, 27.105478, 33.654171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411003, 27.487251, 33.676201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036509, -0.068745, 0.996966,
		0.955322, -0.290402, -0.055008,
		0.293303, 0.954432, 0.055071,
		32.498993, 27.773581, 33.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838669, 27.062719, 33.957912>,  <32.293682, 27.105478, 33.654171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838669, 27.062719, 33.957912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733845, 27.443592, 34.020744>,  <32.670948, 27.672115, 34.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733845, 27.443592, 34.020744>,  <32.838669, 27.062719, 33.957912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733845, 27.443592, 34.020744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170809, -0.114434, 0.978637,
		0.949814, 0.283295, -0.132652,
		-0.262063, 0.952181, 0.157080,
		32.655228, 27.729246, 34.067867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219280, 27.272612, 34.426476>,  <32.838669, 27.062719, 33.957912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219280, 27.272612, 34.426476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947788, 27.561329, 34.480640>,  <32.784893, 27.734560, 34.513142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947788, 27.561329, 34.480640>,  <33.219280, 27.272612, 34.426476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947788, 27.561329, 34.480640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107125, -0.085111, 0.990596,
		0.726530, 0.686857, -0.019554,
		-0.678733, 0.721792, 0.135415,
		32.744167, 27.777866, 34.521263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461739, 27.702438, 34.946102>,  <33.219280, 27.272612, 34.426476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461739, 27.702438, 34.946102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078518, 27.817066, 34.944523>,  <32.848587, 27.885843, 34.943573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078518, 27.817066, 34.944523>,  <33.461739, 27.702438, 34.946102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078518, 27.817066, 34.944523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028661, 0.109516, 0.993572,
		0.285162, 0.951779, -0.113135,
		-0.958051, 0.286572, -0.003951,
		32.791103, 27.903038, 34.943336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391750, 28.214771, 35.574287>,  <33.461739, 27.702438, 34.946102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391750, 28.214771, 35.574287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015751, 28.107445, 35.489998>,  <32.790150, 28.043049, 35.439423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015751, 28.107445, 35.489998>,  <33.391750, 28.214771, 35.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015751, 28.107445, 35.489998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249051, 0.117511, 0.961335,
		-0.233177, 0.956137, -0.177285,
		-0.940001, -0.268314, -0.210726,
		32.733749, 28.026951, 35.426781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910889, 28.741247, 35.770119>,  <33.391750, 28.214771, 35.574287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910889, 28.741247, 35.770119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671558, 28.420757, 35.767376>,  <32.527962, 28.228462, 35.765732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671558, 28.420757, 35.767376>,  <32.910889, 28.741247, 35.770119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671558, 28.420757, 35.767376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278499, 0.199931, 0.939397,
		-0.751298, 0.563973, -0.342763,
		-0.598323, -0.801226, -0.006858,
		32.492062, 28.180389, 35.765320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419971, 28.856730, 36.330181>,  <32.910889, 28.741247, 35.770119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419971, 28.856730, 36.330181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393440, 28.459892, 36.287560>,  <32.377522, 28.221790, 36.261986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393440, 28.459892, 36.287560>,  <32.419971, 28.856730, 36.330181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393440, 28.459892, 36.287560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089006, -0.100484, 0.990950,
		-0.993820, 0.075209, -0.081637,
		-0.066325, -0.992092, -0.106557,
		32.373543, 28.162264, 36.255592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064610, 28.682178, 36.842979>,  <32.419971, 28.856730, 36.330181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064610, 28.682178, 36.842979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209465, 28.325794, 36.733402>,  <32.296379, 28.111963, 36.667656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209465, 28.325794, 36.733402>,  <32.064610, 28.682178, 36.842979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209465, 28.325794, 36.733402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015654, -0.299665, 0.953916,
		-0.931992, -0.341164, -0.122469,
		0.362142, -0.890959, -0.273945,
		32.318108, 28.058506, 36.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761723, 28.117685, 37.289345>,  <32.064610, 28.682178, 36.842979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761723, 28.117685, 37.289345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100212, 27.952629, 37.154510>,  <32.303307, 27.853596, 37.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100212, 27.952629, 37.154510>,  <31.761723, 28.117685, 37.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100212, 27.952629, 37.154510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184813, -0.366058, 0.912056,
		-0.499749, -0.834102, -0.233505,
		0.846224, -0.412643, -0.337090,
		32.354080, 27.828836, 37.053383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792719, 27.453571, 37.519932>,  <31.761723, 28.117685, 37.289345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792719, 27.453571, 37.519932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177521, 27.515938, 37.430275>,  <32.408401, 27.553358, 37.376480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177521, 27.515938, 37.430275>,  <31.792719, 27.453571, 37.519932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177521, 27.515938, 37.430275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273035, -0.546575, 0.791649,
		0.000920, -0.822767, -0.568378,
		0.962004, 0.155915, -0.224141,
		32.466122, 27.562712, 37.363033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151470, 26.809221, 37.673317>,  <31.792719, 27.453571, 37.519932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151470, 26.809221, 37.673317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389408, 27.130581, 37.683987>,  <32.532169, 27.323397, 37.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389408, 27.130581, 37.683987>,  <32.151470, 26.809221, 37.673317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389408, 27.130581, 37.683987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447147, -0.358286, 0.819568,
		0.667998, -0.475586, -0.572361,
		0.594844, 0.803399, 0.026678,
		32.567860, 27.371601, 37.691990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866180, 26.587404, 37.861027>,  <32.151470, 26.809221, 37.673317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866180, 26.587404, 37.861027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796894, 26.967892, 37.963150>,  <32.755322, 27.196184, 38.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796894, 26.967892, 37.963150>,  <32.866180, 26.587404, 37.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796894, 26.967892, 37.963150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340040, -0.185524, 0.921929,
		0.924320, 0.246511, -0.291316,
		-0.173219, 0.951217, 0.255307,
		32.744926, 27.253256, 38.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450073, 27.160162, 38.002590>,  <32.866180, 26.587404, 37.861027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450073, 27.160162, 38.002590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119267, 27.218300, 38.219818>,  <32.920784, 27.253183, 38.350155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119267, 27.218300, 38.219818>,  <33.450073, 27.160162, 38.002590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119267, 27.218300, 38.219818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546170, -0.021198, 0.837406,
		0.133224, 0.989154, -0.061852,
		-0.827012, 0.145344, 0.543071,
		32.871162, 27.261904, 38.382740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905361, 27.565941, 38.371033>,  <33.450073, 27.160162, 38.002590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905361, 27.565941, 38.371033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110077, 27.658932, 38.701855>,  <34.232906, 27.714725, 38.900349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110077, 27.658932, 38.701855>,  <33.905361, 27.565941, 38.371033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110077, 27.658932, 38.701855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765582, -0.313403, 0.561839,
		0.389817, -0.920724, 0.017584,
		0.511788, 0.232476, 0.827060,
		34.263615, 27.728674, 38.949974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825439, 26.985531, 38.763264>,  <33.905361, 27.565941, 38.371033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825439, 26.985531, 38.763264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894318, 27.316044, 38.977779>,  <33.935646, 27.514353, 39.106487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894318, 27.316044, 38.977779>,  <33.825439, 26.985531, 38.763264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894318, 27.316044, 38.977779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850566, -0.149892, 0.504053,
		0.496876, -0.542943, 0.676998,
		0.172195, 0.826284, 0.536288,
		33.945976, 27.563929, 39.138664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742992, 27.176455, 39.436607>,  <33.825439, 26.985531, 38.763264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742992, 27.176455, 39.436607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931309, 27.340412, 39.749104>,  <34.044300, 27.438787, 39.936604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931309, 27.340412, 39.749104>,  <33.742992, 27.176455, 39.436607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931309, 27.340412, 39.749104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830896, 0.091691, -0.548821,
		-0.296592, 0.907512, -0.297413,
		0.470792, 0.409895, 0.781243,
		34.072548, 27.463381, 39.983475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457191, 27.447577, 39.935848>,  <33.742992, 27.176455, 39.436607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457191, 27.447577, 39.935848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113312, 27.643051, 39.995316>,  <32.906982, 27.760336, 40.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113312, 27.643051, 39.995316>,  <33.457191, 27.447577, 39.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113312, 27.643051, 39.995316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509879, -0.803523, -0.307204,
		-0.030667, -0.339906, 0.939959,
		-0.859700, 0.488687, 0.148669,
		32.855400, 27.789658, 40.039917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865322, 28.016577, 40.189121>,  <33.457191, 27.447577, 39.935848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865322, 28.016577, 40.189121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250095, 28.125679, 40.195942>,  <34.480961, 28.191141, 40.200035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250095, 28.125679, 40.195942>,  <33.865322, 28.016577, 40.189121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250095, 28.125679, 40.195942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147967, 0.572266, -0.806609,
		-0.229768, 0.773379, 0.590840,
		0.961932, 0.272757, 0.017054,
		34.538673, 28.207506, 40.201057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910305, 28.769547, 40.146194>,  <33.865322, 28.016577, 40.189121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910305, 28.769547, 40.146194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244453, 28.638783, 39.969433>,  <34.444942, 28.560324, 39.863377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244453, 28.638783, 39.969433>,  <33.910305, 28.769547, 40.146194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244453, 28.638783, 39.969433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151628, 0.635687, -0.756909,
		0.528354, 0.699307, 0.481468,
		0.835375, -0.326912, -0.441902,
		34.495068, 28.540709, 39.836861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107784, 29.247753, 39.637741>,  <33.910305, 28.769547, 40.146194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107784, 29.247753, 39.637741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444843, 29.054775, 39.542076>,  <34.647079, 28.938990, 39.484676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444843, 29.054775, 39.542076>,  <34.107784, 29.247753, 39.637741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444843, 29.054775, 39.542076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006025, 0.435673, -0.900085,
		0.538435, 0.759894, 0.364211,
		0.842645, -0.482443, -0.239160,
		34.697636, 28.910042, 39.470329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704674, 29.700649, 39.366306>,  <34.107784, 29.247753, 39.637741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704674, 29.700649, 39.366306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755970, 29.340603, 39.199768>,  <34.786747, 29.124575, 39.099846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755970, 29.340603, 39.199768>,  <34.704674, 29.700649, 39.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755970, 29.340603, 39.199768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106505, 0.429882, -0.896582,
		0.986007, 0.070638, 0.150996,
		0.128243, -0.900118, -0.416343,
		34.794441, 29.070568, 39.074863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335522, 29.834917, 38.968334>,  <34.704674, 29.700649, 39.366306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335522, 29.834917, 38.968334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071739, 29.558933, 38.848953>,  <34.913467, 29.393343, 38.777325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071739, 29.558933, 38.848953>,  <35.335522, 29.834917, 38.968334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071739, 29.558933, 38.848953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057850, 0.442415, -0.894943,
		0.749512, -0.572912, -0.331668,
		-0.659458, -0.689957, -0.298452,
		34.873901, 29.351946, 38.759418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603806, 29.630383, 38.328316>,  <35.335522, 29.834917, 38.968334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603806, 29.630383, 38.328316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215759, 29.535107, 38.309830>,  <34.982929, 29.477942, 38.298740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215759, 29.535107, 38.309830>,  <35.603806, 29.630383, 38.328316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215759, 29.535107, 38.309830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032978, 0.318131, -0.947473,
		0.240381, -0.917637, -0.316480,
		-0.970118, -0.238192, -0.046211,
		34.924725, 29.463650, 38.295967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478096, 29.270096, 37.662926>,  <35.603806, 29.630383, 38.328316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478096, 29.270096, 37.662926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112392, 29.379406, 37.782555>,  <34.892971, 29.444992, 37.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112392, 29.379406, 37.782555>,  <35.478096, 29.270096, 37.662926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112392, 29.379406, 37.782555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174984, 0.399433, -0.899908,
		-0.365383, -0.875085, -0.317368,
		-0.914262, 0.273277, 0.299072,
		34.838112, 29.461390, 37.872276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028492, 28.978979, 37.190224>,  <35.478096, 29.270096, 37.662926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028492, 28.978979, 37.190224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808727, 29.278622, 37.338268>,  <34.676868, 29.458406, 37.427097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808727, 29.278622, 37.338268>,  <35.028492, 28.978979, 37.190224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808727, 29.278622, 37.338268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056319, 0.475154, -0.878099,
		-0.833650, -0.461595, -0.303245,
		-0.549414, 0.749105, 0.370116,
		34.643902, 29.503353, 37.449303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549065, 29.078859, 36.678680>,  <35.028492, 28.978979, 37.190224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549065, 29.078859, 36.678680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499615, 29.402718, 36.908180>,  <34.469944, 29.597033, 37.045879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499615, 29.402718, 36.908180>,  <34.549065, 29.078859, 36.678680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499615, 29.402718, 36.908180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108107, 0.563756, -0.818836,
		-0.986423, -0.163251, 0.017837,
		-0.123620, 0.809647, 0.573750,
		34.462528, 29.645613, 37.080307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059345, 29.326689, 36.382992>,  <34.549065, 29.078859, 36.678680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059345, 29.326689, 36.382992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194904, 29.629265, 36.606758>,  <34.276241, 29.810810, 36.741016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194904, 29.629265, 36.606758>,  <34.059345, 29.326689, 36.382992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194904, 29.629265, 36.606758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227077, 0.642788, -0.731614,
		-0.913007, 0.120915, 0.389612,
		0.338901, 0.756441, 0.559413,
		34.296574, 29.856197, 36.774582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507309, 29.803423, 36.342812>,  <34.059345, 29.326689, 36.382992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507309, 29.803423, 36.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848267, 29.984955, 36.446709>,  <34.052841, 30.093874, 36.509048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848267, 29.984955, 36.446709>,  <33.507309, 29.803423, 36.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848267, 29.984955, 36.446709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133316, 0.668930, -0.731273,
		-0.505624, 0.588702, 0.630693,
		0.852391, 0.453831, 0.259744,
		34.103985, 30.121103, 36.524632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458332, 30.473976, 36.286251>,  <33.507309, 29.803423, 36.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458332, 30.473976, 36.286251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854134, 30.431061, 36.247532>,  <34.091614, 30.405312, 36.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854134, 30.431061, 36.247532>,  <33.458332, 30.473976, 36.286251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854134, 30.431061, 36.247532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021319, 0.554148, -0.832145,
		0.142919, 0.825475, 0.546045,
		0.989505, -0.107288, -0.096797,
		34.150986, 30.398874, 36.218494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629704, 31.133713, 36.183319>,  <33.458332, 30.473976, 36.286251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629704, 31.133713, 36.183319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914894, 30.893276, 36.038902>,  <34.086010, 30.749014, 35.952251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914894, 30.893276, 36.038902>,  <33.629704, 31.133713, 36.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914894, 30.893276, 36.038902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000822, 0.515615, -0.856820,
		0.701183, 0.610599, 0.368118,
		0.712981, -0.601091, -0.361038,
		34.128788, 30.712950, 35.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003696, 31.551914, 35.762638>,  <33.629704, 31.133713, 36.183319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003696, 31.551914, 35.762638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124146, 31.185482, 35.656719>,  <34.196415, 30.965622, 35.593166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124146, 31.185482, 35.656719>,  <34.003696, 31.551914, 35.762638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124146, 31.185482, 35.656719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277751, 0.349904, -0.894663,
		0.912238, 0.195858, 0.359807,
		0.301125, -0.916082, -0.264796,
		34.214481, 30.910658, 35.577282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601566, 31.698746, 35.440575>,  <34.003696, 31.551914, 35.762638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601566, 31.698746, 35.440575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472248, 31.341171, 35.316406>,  <34.394657, 31.126627, 35.241905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472248, 31.341171, 35.316406>,  <34.601566, 31.698746, 35.440575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472248, 31.341171, 35.316406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216490, 0.249472, -0.943873,
		0.921203, -0.372351, 0.112876,
		-0.323292, -0.893934, -0.310424,
		34.375259, 31.072990, 35.223278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035049, 31.526632, 34.860233>,  <34.601566, 31.698746, 35.440575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035049, 31.526632, 34.860233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717819, 31.293247, 34.790253>,  <34.527481, 31.153215, 34.748264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717819, 31.293247, 34.790253>,  <35.035049, 31.526632, 34.860233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717819, 31.293247, 34.790253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024576, 0.256330, -0.966277,
		0.608632, -0.770627, -0.188949,
		-0.793072, -0.583463, -0.174950,
		34.479897, 31.118208, 34.737766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104683, 31.229271, 34.210228>,  <35.035049, 31.526632, 34.860233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104683, 31.229271, 34.210228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721260, 31.138271, 34.278824>,  <34.491207, 31.083672, 34.319981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721260, 31.138271, 34.278824>,  <35.104683, 31.229271, 34.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721260, 31.138271, 34.278824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175999, -0.000463, -0.984390,
		0.224027, -0.973778, -0.039596,
		-0.958559, -0.227498, 0.171488,
		34.433693, 31.070023, 34.330269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008503, 30.667324, 33.773739>,  <35.104683, 31.229271, 34.210228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008503, 30.667324, 33.773739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638577, 30.810699, 33.824711>,  <34.416622, 30.896725, 33.855293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638577, 30.810699, 33.824711>,  <35.008503, 30.667324, 33.773739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638577, 30.810699, 33.824711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118735, 0.046275, -0.991847,
		-0.361416, -0.932405, -0.000236,
		-0.924814, 0.358441, 0.127433,
		34.361134, 30.918232, 33.862942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577621, 30.251362, 33.313786>,  <35.008503, 30.667324, 33.773739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577621, 30.251362, 33.313786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368214, 30.583263, 33.391174>,  <34.242569, 30.782406, 33.437607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368214, 30.583263, 33.391174>,  <34.577621, 30.251362, 33.313786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368214, 30.583263, 33.391174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231735, 0.079842, -0.969497,
		-0.819893, -0.552385, 0.150485,
		-0.523521, 0.829756, 0.193469,
		34.211159, 30.832190, 33.449215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049900, 30.247236, 32.787079>,  <34.577621, 30.251362, 33.313786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049900, 30.247236, 32.787079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065372, 30.624775, 32.918327>,  <34.074654, 30.851297, 32.997074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065372, 30.624775, 32.918327>,  <34.049900, 30.247236, 32.787079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065372, 30.624775, 32.918327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007359, 0.328085, -0.944619,
		-0.999225, 0.038950, 0.005744,
		0.038677, 0.943845, 0.328118,
		34.076977, 30.907928, 33.016762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487583, 30.656694, 32.415707>,  <34.049900, 30.247236, 32.787079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487583, 30.656694, 32.415707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787563, 30.888062, 32.544086>,  <33.967552, 31.026882, 32.621113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787563, 30.888062, 32.544086>,  <33.487583, 30.656694, 32.415707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787563, 30.888062, 32.544086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145503, 0.329064, -0.933030,
		-0.645296, 0.746423, 0.162619,
		0.749947, 0.578420, 0.320951,
		34.012547, 31.061588, 32.640373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394188, 31.171200, 31.874172>,  <33.487583, 30.656694, 32.415707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394188, 31.171200, 31.874172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749233, 31.221401, 32.051441>,  <33.962261, 31.251522, 32.157803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749233, 31.221401, 32.051441>,  <33.394188, 31.171200, 31.874172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749233, 31.221401, 32.051441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432238, 0.105441, -0.895574,
		-0.159124, 0.986474, 0.039344,
		0.887609, 0.125502, 0.443170,
		34.015514, 31.259052, 32.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688889, 31.785770, 31.590483>,  <33.394188, 31.171200, 31.874172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688889, 31.785770, 31.590483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019455, 31.629826, 31.752987>,  <34.217796, 31.536259, 31.850489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019455, 31.629826, 31.752987>,  <33.688889, 31.785770, 31.590483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019455, 31.629826, 31.752987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474886, 0.094935, -0.874912,
		0.302525, 0.915968, 0.263594,
		0.826415, -0.389860, 0.406260,
		34.267380, 31.512867, 31.874865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172249, 32.040916, 31.125969>,  <33.688889, 31.785770, 31.590483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172249, 32.040916, 31.125969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394817, 31.779095, 31.330696>,  <34.528358, 31.622004, 31.453533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394817, 31.779095, 31.330696>,  <34.172249, 32.040916, 31.125969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394817, 31.779095, 31.330696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648905, -0.042407, -0.759687,
		0.518957, 0.754828, 0.401145,
		0.556422, -0.654550, 0.511819,
		34.561745, 31.582729, 31.484241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872463, 32.349197, 31.134489>,  <34.172249, 32.040916, 31.125969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872463, 32.349197, 31.134489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846611, 31.951180, 31.164696>,  <34.831100, 31.712368, 31.182819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846611, 31.951180, 31.164696>,  <34.872463, 32.349197, 31.134489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846611, 31.951180, 31.164696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635089, -0.099383, -0.766019,
		0.769730, -0.001545, 0.638367,
		-0.064627, -0.995048, 0.075517,
		34.827225, 31.652664, 31.187351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554890, 32.174320, 31.167711>,  <34.872463, 32.349197, 31.134489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554890, 32.174320, 31.167711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321182, 31.890839, 31.009537>,  <35.180958, 31.720749, 30.914633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321182, 31.890839, 31.009537>,  <35.554890, 32.174320, 31.167711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321182, 31.890839, 31.009537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554346, 0.007358, -0.832254,
		0.592731, -0.705468, 0.388568,
		-0.584269, -0.708704, -0.395435,
		35.145901, 31.678228, 30.890905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035076, 31.799438, 30.779106>,  <35.554890, 32.174320, 31.167711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035076, 31.799438, 30.779106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683994, 31.686066, 30.624546>,  <35.473347, 31.618042, 30.531811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683994, 31.686066, 30.624546>,  <36.035076, 31.799438, 30.779106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683994, 31.686066, 30.624546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417186, -0.055204, -0.907143,
		0.235785, -0.957401, 0.166697,
		-0.877702, -0.283434, -0.386398,
		35.420685, 31.601036, 30.508627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246681, 31.230816, 30.295630>,  <36.035076, 31.799438, 30.779106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246681, 31.230816, 30.295630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881027, 31.341373, 30.176998>,  <35.661633, 31.407707, 30.105820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881027, 31.341373, 30.176998>,  <36.246681, 31.230816, 30.295630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881027, 31.341373, 30.176998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284592, -0.083496, -0.955006,
		-0.288720, -0.957411, -0.002332,
		-0.914138, 0.276393, -0.296579,
		35.606785, 31.424292, 30.088024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027832, 30.777914, 29.755312>,  <36.246681, 31.230816, 30.295630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027832, 30.777914, 29.755312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835793, 31.126400, 29.714352>,  <35.720570, 31.335491, 29.689775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835793, 31.126400, 29.714352>,  <36.027832, 30.777914, 29.755312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835793, 31.126400, 29.714352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249814, 0.023885, -0.967999,
		-0.840892, -0.490316, -0.229109,
		-0.480098, 0.871217, -0.102403,
		35.691765, 31.387766, 29.683630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602180, 30.734642, 29.160368>,  <36.027832, 30.777914, 29.755312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602180, 30.734642, 29.160368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610233, 31.130428, 29.217712>,  <35.615063, 31.367901, 29.252119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610233, 31.130428, 29.217712>,  <35.602180, 30.734642, 29.160368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610233, 31.130428, 29.217712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174404, 0.137715, -0.974996,
		-0.984468, 0.044628, -0.169795,
		0.020129, 0.989466, 0.143359,
		35.616272, 31.427269, 29.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109245, 31.026930, 28.711412>,  <35.602180, 30.734642, 29.160368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109245, 31.026930, 28.711412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384396, 31.300365, 28.809010>,  <35.549484, 31.464426, 28.867569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384396, 31.300365, 28.809010>,  <35.109245, 31.026930, 28.711412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384396, 31.300365, 28.809010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189756, 0.155099, -0.969503,
		-0.700585, 0.713197, -0.023026,
		0.687876, 0.683589, 0.243994,
		35.590759, 31.505442, 28.882208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958313, 31.442747, 28.215755>,  <35.109245, 31.026930, 28.711412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958313, 31.442747, 28.215755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296959, 31.595467, 28.364063>,  <35.500149, 31.687098, 28.453047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296959, 31.595467, 28.364063>,  <34.958313, 31.442747, 28.215755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296959, 31.595467, 28.364063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191668, 0.431184, -0.881671,
		-0.496489, 0.817503, 0.291870,
		0.846618, 0.381798, 0.370767,
		35.550945, 31.710007, 28.475294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846283, 32.160519, 28.123871>,  <34.958313, 31.442747, 28.215755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846283, 32.160519, 28.123871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239174, 32.088223, 28.144119>,  <35.474907, 32.044846, 28.156267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239174, 32.088223, 28.144119>,  <34.846283, 32.160519, 28.123871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239174, 32.088223, 28.144119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127520, 0.444703, -0.886554,
		0.137728, 0.877252, 0.459847,
		0.982227, -0.180743, 0.050619,
		35.533840, 32.034000, 28.159306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140266, 32.789230, 27.996149>,  <34.846283, 32.160519, 28.123871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140266, 32.789230, 27.996149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414616, 32.512894, 27.904655>,  <35.579227, 32.347092, 27.849760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414616, 32.512894, 27.904655>,  <35.140266, 32.789230, 27.996149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414616, 32.512894, 27.904655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155081, 0.445853, -0.881570,
		0.711003, 0.569174, 0.412935,
		0.685875, -0.690837, -0.228735,
		35.620377, 32.305641, 27.836035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722275, 33.158047, 27.833273>,  <35.140266, 32.789230, 27.996149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722275, 33.158047, 27.833273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755959, 32.807571, 27.643452>,  <35.776169, 32.597286, 27.529560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755959, 32.807571, 27.643452>,  <35.722275, 33.158047, 27.833273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755959, 32.807571, 27.643452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241309, 0.479999, -0.843428,
		0.966788, -0.043491, 0.251853,
		0.084208, -0.876190, -0.474552,
		35.781219, 32.544716, 27.501085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303627, 33.309803, 27.363142>,  <35.722275, 33.158047, 27.833273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303627, 33.309803, 27.363142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155186, 32.955528, 27.251541>,  <36.066120, 32.742962, 27.184580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155186, 32.955528, 27.251541>,  <36.303627, 33.309803, 27.363142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155186, 32.955528, 27.251541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231073, 0.202927, -0.951539,
		0.899382, -0.417589, 0.129351,
		-0.371103, -0.885686, -0.279003,
		36.043854, 32.689823, 27.167841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795261, 33.024494, 26.946566>,  <36.303627, 33.309803, 27.363142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795261, 33.024494, 26.946566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454166, 32.837524, 26.853310>,  <36.249512, 32.725342, 26.797356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454166, 32.837524, 26.853310>,  <36.795261, 33.024494, 26.946566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454166, 32.837524, 26.853310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216373, 0.090141, -0.972141,
		0.475421, -0.879424, 0.024272,
		-0.852736, -0.467428, -0.233138,
		36.198345, 32.697296, 26.783369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941708, 32.598057, 26.376978>,  <36.795261, 33.024494, 26.946566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941708, 32.598057, 26.376978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542278, 32.614132, 26.362900>,  <36.302620, 32.623775, 26.354452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542278, 32.614132, 26.362900>,  <36.941708, 32.598057, 26.376978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542278, 32.614132, 26.362900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035441, 0.005384, -0.999357,
		-0.039966, -0.999178, -0.006800,
		-0.998573, 0.040182, -0.035197,
		36.242706, 32.626186, 26.352341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773338, 32.143547, 25.985163>,  <36.941708, 32.598057, 26.376978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773338, 32.143547, 25.985163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457104, 32.387600, 25.964317>,  <36.267365, 32.534031, 25.951809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457104, 32.387600, 25.964317>,  <36.773338, 32.143547, 25.985163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457104, 32.387600, 25.964317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002311, -0.088080, -0.996111,
		-0.612348, -0.787389, 0.071045,
		-0.790585, 0.610131, -0.052116,
		36.219929, 32.570641, 25.948683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238285, 31.899609, 25.523895>,  <36.773338, 32.143547, 25.985163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238285, 31.899609, 25.523895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152466, 32.290176, 25.533485>,  <36.100975, 32.524517, 25.539240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152466, 32.290176, 25.533485>,  <36.238285, 31.899609, 25.523895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152466, 32.290176, 25.533485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121465, -0.002317, -0.992593,
		-0.969132, -0.215867, 0.119098,
		-0.214544, 0.976420, 0.023975,
		36.088104, 32.583103, 25.540678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854431, 31.923916, 25.036921>,  <36.238285, 31.899609, 25.523895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854431, 31.923916, 25.036921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915207, 32.312904, 25.107594>,  <35.951672, 32.546299, 25.149998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915207, 32.312904, 25.107594>,  <35.854431, 31.923916, 25.036921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915207, 32.312904, 25.107594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275598, 0.213353, -0.937297,
		-0.949189, 0.093718, 0.300427,
		0.151938, 0.972470, 0.176684,
		35.960789, 32.604645, 25.160599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329861, 32.191021, 24.799847>,  <35.854431, 31.923916, 25.036921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329861, 32.191021, 24.799847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575119, 32.506809, 24.811119>,  <35.722275, 32.696281, 24.817883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575119, 32.506809, 24.811119>,  <35.329861, 32.191021, 24.799847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575119, 32.506809, 24.811119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202587, 0.191620, -0.960333,
		-0.763552, 0.583115, 0.277427,
		0.613145, 0.789467, 0.028180,
		35.759064, 32.743649, 24.819572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006767, 32.680676, 24.354130>,  <35.329861, 32.191021, 24.799847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006767, 32.680676, 24.354130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394169, 32.780029, 24.361050>,  <35.626610, 32.839642, 24.365202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394169, 32.780029, 24.361050>,  <35.006767, 32.680676, 24.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394169, 32.780029, 24.361050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000383, 0.067990, -0.997686,
		-0.248984, 0.966273, 0.065753,
		0.968508, 0.248383, 0.017299,
		35.684723, 32.854546, 24.366240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056728, 33.312828, 23.893606>,  <35.006767, 32.680676, 24.354130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056728, 33.312828, 23.893606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417561, 33.143566, 23.927517>,  <35.634060, 33.042007, 23.947863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417561, 33.143566, 23.927517>,  <35.056728, 33.312828, 23.893606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417561, 33.143566, 23.927517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130941, 0.081192, -0.988060,
		0.411221, 0.902411, 0.128650,
		0.902082, -0.423156, 0.084775,
		35.688187, 33.016621, 23.952950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382904, 33.638504, 24.209387>,  <35.056728, 33.312828, 23.893606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382904, 33.638504, 24.209387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235844, 34.008575, 24.247074>,  <34.147610, 34.230618, 24.269686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235844, 34.008575, 24.247074>,  <34.382904, 33.638504, 24.209387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235844, 34.008575, 24.247074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338221, -0.227397, 0.913180,
		0.866280, 0.303862, 0.396518,
		-0.367647, 0.925180, 0.094217,
		34.125549, 34.286129, 24.275339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776237, 33.978188, 24.819807>,  <34.382904, 33.638504, 24.209387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776237, 33.978188, 24.819807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435165, 34.178623, 24.760677>,  <34.230522, 34.298885, 24.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435165, 34.178623, 24.760677>,  <34.776237, 33.978188, 24.819807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435165, 34.178623, 24.760677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148405, 0.038978, 0.988158,
		0.500919, 0.864516, 0.041129,
		-0.852676, 0.501091, -0.147823,
		34.179363, 34.328949, 24.716330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668999, 34.537827, 25.283113>,  <34.776237, 33.978188, 24.819807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668999, 34.537827, 25.283113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285126, 34.513927, 25.173252>,  <34.054802, 34.499588, 25.107336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285126, 34.513927, 25.173252>,  <34.668999, 34.537827, 25.283113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285126, 34.513927, 25.173252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274472, -0.011385, 0.961528,
		-0.060573, 0.998149, -0.005472,
		-0.959685, -0.059744, -0.274653,
		33.997219, 34.496006, 25.090857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366756, 34.973995, 25.689285>,  <34.668999, 34.537827, 25.283113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366756, 34.973995, 25.689285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072903, 34.734982, 25.560741>,  <33.896591, 34.591576, 25.483616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072903, 34.734982, 25.560741>,  <34.366756, 34.973995, 25.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072903, 34.734982, 25.560741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366739, -0.048763, 0.929045,
		-0.570804, 0.800361, -0.183315,
		-0.734633, -0.597532, -0.321358,
		33.852512, 34.555721, 25.464334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813797, 35.276985, 25.983389>,  <34.366756, 34.973995, 25.689285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813797, 35.276985, 25.983389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686249, 34.905243, 25.908958>,  <33.609718, 34.682198, 25.864300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686249, 34.905243, 25.908958>,  <33.813797, 35.276985, 25.983389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686249, 34.905243, 25.908958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418515, -0.038083, 0.907411,
		-0.850391, 0.367225, -0.376804,
		-0.318874, -0.929352, -0.186074,
		33.590588, 34.626438, 25.853136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038330, 35.189587, 26.054756>,  <33.813797, 35.276985, 25.983389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038330, 35.189587, 26.054756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201797, 34.829254, 26.113407>,  <33.299877, 34.613056, 26.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201797, 34.829254, 26.113407>,  <33.038330, 35.189587, 26.054756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201797, 34.829254, 26.113407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465719, -0.067661, 0.882343,
		-0.784918, -0.428872, -0.447183,
		0.408669, -0.900828, 0.146625,
		33.324398, 34.559006, 26.157394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570347, 34.881504, 26.536900>,  <33.038330, 35.189587, 26.054756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570347, 34.881504, 26.536900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877262, 34.625023, 26.532543>,  <33.061413, 34.471134, 26.529930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877262, 34.625023, 26.532543>,  <32.570347, 34.881504, 26.536900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877262, 34.625023, 26.532543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247865, -0.312183, 0.917117,
		-0.591459, -0.700998, -0.398468,
		0.767293, -0.641204, -0.010890,
		33.107449, 34.432663, 26.529276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350315, 34.212608, 26.795862>,  <32.570347, 34.881504, 26.536900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350315, 34.212608, 26.795862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743290, 34.227364, 26.869019>,  <32.979076, 34.236217, 26.912912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743290, 34.227364, 26.869019>,  <32.350315, 34.212608, 26.795862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743290, 34.227364, 26.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155812, -0.377004, 0.913012,
		0.102632, -0.925477, -0.364636,
		0.982440, 0.036890, 0.182893,
		33.038021, 34.238430, 26.923887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443069, 33.653236, 27.243025>,  <32.350315, 34.212608, 26.795862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443069, 33.653236, 27.243025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769611, 33.879711, 27.288635>,  <32.965534, 34.015594, 27.316002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769611, 33.879711, 27.288635>,  <32.443069, 33.653236, 27.243025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769611, 33.879711, 27.288635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043467, -0.257097, 0.965407,
		0.575918, -0.783155, -0.234492,
		0.816351, 0.566188, 0.114025,
		33.014515, 34.049568, 27.322844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967094, 33.168022, 27.507919>,  <32.443069, 33.653236, 27.243025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967094, 33.168022, 27.507919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064598, 33.542225, 27.610222>,  <33.123100, 33.766747, 27.671604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064598, 33.542225, 27.610222>,  <32.967094, 33.168022, 27.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064598, 33.542225, 27.610222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099515, -0.286449, 0.952913,
		0.964716, -0.206833, -0.162922,
		0.243762, 0.935504, 0.255759,
		33.137726, 33.822876, 27.686949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635059, 33.182987, 27.955824>,  <32.967094, 33.168022, 27.507919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635059, 33.182987, 27.955824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438957, 33.514557, 28.063557>,  <33.321297, 33.713497, 28.128197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438957, 33.514557, 28.063557>,  <33.635059, 33.182987, 27.955824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438957, 33.514557, 28.063557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070661, -0.270195, 0.960209,
		0.868712, 0.489775, 0.073890,
		-0.490251, 0.828924, 0.269330,
		33.291882, 33.763233, 28.144356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994678, 33.432140, 28.570704>,  <33.635059, 33.182987, 27.955824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994678, 33.432140, 28.570704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673878, 33.668907, 28.602757>,  <33.481396, 33.810966, 28.621988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673878, 33.668907, 28.602757>,  <33.994678, 33.432140, 28.570704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673878, 33.668907, 28.602757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006682, -0.143040, 0.989694,
		0.597279, 0.793205, 0.118674,
		-0.802006, 0.591917, 0.080134,
		33.433277, 33.846481, 28.626797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072796, 33.867817, 29.204304>,  <33.994678, 33.432140, 28.570704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072796, 33.867817, 29.204304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689312, 33.866909, 29.090553>,  <33.459221, 33.866364, 29.022303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689312, 33.866909, 29.090553>,  <34.072796, 33.867817, 29.204304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689312, 33.866909, 29.090553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282487, -0.107702, 0.953206,
		-0.032788, 0.994180, 0.102615,
		-0.958711, -0.002266, -0.284374,
		33.401699, 33.866230, 29.005241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658947, 34.432842, 29.658089>,  <34.072796, 33.867817, 29.204304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658947, 34.432842, 29.658089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402100, 34.152256, 29.534389>,  <33.247993, 33.983906, 29.460171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402100, 34.152256, 29.534389>,  <33.658947, 34.432842, 29.658089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402100, 34.152256, 29.534389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258662, -0.181495, 0.948764,
		-0.721654, 0.689205, -0.064902,
		-0.642114, -0.701467, -0.309247,
		33.209465, 33.941814, 29.441616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999546, 34.606133, 29.993338>,  <33.658947, 34.432842, 29.658089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999546, 34.606133, 29.993338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976147, 34.223522, 29.879051>,  <32.962105, 33.993958, 29.810480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976147, 34.223522, 29.879051>,  <32.999546, 34.606133, 29.993338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976147, 34.223522, 29.879051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318566, -0.253355, 0.913415,
		-0.946094, 0.144456, -0.289896,
		-0.058501, -0.956527, -0.285716,
		32.958595, 33.936565, 29.793337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371090, 34.424522, 30.240177>,  <32.999546, 34.606133, 29.993338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371090, 34.424522, 30.240177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572086, 34.082787, 30.187099>,  <32.692684, 33.877747, 30.155252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572086, 34.082787, 30.187099>,  <32.371090, 34.424522, 30.240177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572086, 34.082787, 30.187099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044083, -0.178595, 0.982935,
		-0.863456, -0.488070, -0.127405,
		0.502494, -0.854337, -0.132693,
		32.722836, 33.826485, 30.147291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181873, 34.025917, 30.828644>,  <32.371090, 34.424522, 30.240177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181873, 34.025917, 30.828644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486557, 33.809437, 30.686146>,  <32.669365, 33.679550, 30.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486557, 33.809437, 30.686146>,  <32.181873, 34.025917, 30.828644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486557, 33.809437, 30.686146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137689, -0.402059, 0.905202,
		-0.633125, -0.738547, -0.231733,
		0.761705, -0.541199, -0.356244,
		32.715069, 33.647076, 30.579273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059635, 33.276016, 30.956125>,  <32.181873, 34.025917, 30.828644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059635, 33.276016, 30.956125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457954, 33.301517, 30.929852>,  <32.696945, 33.316818, 30.914087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457954, 33.301517, 30.929852>,  <32.059635, 33.276016, 30.956125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457954, 33.301517, 30.929852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082795, -0.321248, 0.943369,
		0.039043, -0.944847, -0.325178,
		0.995801, 0.063755, -0.065686,
		32.756695, 33.320644, 30.910145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269165, 32.683289, 31.249901>,  <32.059635, 33.276016, 30.956125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269165, 32.683289, 31.249901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593548, 32.916775, 31.266048>,  <32.788177, 33.056866, 31.275738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593548, 32.916775, 31.266048>,  <32.269165, 32.683289, 31.249901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593548, 32.916775, 31.266048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165850, -0.295484, 0.940842,
		0.561114, -0.756283, -0.336433,
		0.810953, 0.583717, 0.040371,
		32.836834, 33.091888, 31.278160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745491, 32.314980, 31.545876>,  <32.269165, 32.683289, 31.249901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745491, 32.314980, 31.545876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840359, 32.695568, 31.624313>,  <32.897278, 32.923920, 31.671375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840359, 32.695568, 31.624313>,  <32.745491, 32.314980, 31.545876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840359, 32.695568, 31.624313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196963, -0.150567, 0.968780,
		0.951293, -0.268385, 0.151695,
		0.237166, 0.951472, 0.196095,
		32.911507, 32.981010, 31.683142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311741, 32.319153, 31.976313>,  <32.745491, 32.314980, 31.545876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311741, 32.319153, 31.976313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126369, 32.670048, 32.026424>,  <33.015148, 32.880585, 32.056492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126369, 32.670048, 32.026424>,  <33.311741, 32.319153, 31.976313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126369, 32.670048, 32.026424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106844, -0.195663, 0.974834,
		0.879670, 0.438379, 0.184402,
		-0.463427, 0.877234, 0.125280,
		32.987343, 32.933220, 32.064007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583435, 32.607513, 32.558334>,  <33.311741, 32.319153, 31.976313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583435, 32.607513, 32.558334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226143, 32.771519, 32.484554>,  <33.011768, 32.869923, 32.440289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226143, 32.771519, 32.484554>,  <33.583435, 32.607513, 32.558334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226143, 32.771519, 32.484554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312668, -0.271716, 0.910170,
		0.323065, 0.870666, 0.370905,
		-0.893234, 0.410014, -0.184447,
		32.958172, 32.894524, 32.429218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469425, 33.119308, 32.999039>,  <33.583435, 32.607513, 32.558334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469425, 33.119308, 32.999039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092823, 33.042404, 32.888336>,  <32.866859, 32.996262, 32.821915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092823, 33.042404, 32.888336>,  <33.469425, 33.119308, 32.999039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092823, 33.042404, 32.888336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256551, -0.123566, 0.958599,
		-0.218503, 0.973532, 0.067013,
		-0.941508, -0.192265, -0.276761,
		32.810371, 32.984726, 32.805309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039421, 33.455284, 33.461906>,  <33.469425, 33.119308, 32.999039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039421, 33.455284, 33.461906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789394, 33.200775, 33.281048>,  <32.639378, 33.048069, 33.172531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789394, 33.200775, 33.281048>,  <33.039421, 33.455284, 33.461906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789394, 33.200775, 33.281048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420527, -0.213501, 0.881801,
		-0.657604, 0.741330, -0.134118,
		-0.625071, -0.636276, -0.452149,
		32.601871, 33.009892, 33.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344231, 33.682903, 33.523396>,  <33.039421, 33.455284, 33.461906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344231, 33.682903, 33.523396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342144, 33.283352, 33.504608>,  <32.340893, 33.043621, 33.493336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342144, 33.283352, 33.504608>,  <32.344231, 33.682903, 33.523396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342144, 33.283352, 33.504608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491364, -0.038353, 0.870110,
		-0.870939, 0.027617, -0.490615,
		-0.005214, -0.998883, -0.046973,
		32.340580, 32.983688, 33.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658718, 33.455162, 33.917957>,  <32.344231, 33.682903, 33.523396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658718, 33.455162, 33.917957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902437, 33.141560, 33.870472>,  <32.048668, 32.953400, 33.841980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902437, 33.141560, 33.870472>,  <31.658718, 33.455162, 33.917957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902437, 33.141560, 33.870472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283812, -0.355414, 0.890579,
		-0.740409, -0.508937, -0.439063,
		0.609298, -0.784005, -0.118709,
		32.085228, 32.906357, 33.834858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225918, 32.946957, 34.100826>,  <31.658718, 33.455162, 33.917957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225918, 32.946957, 34.100826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576529, 32.756355, 34.128090>,  <31.786896, 32.641994, 34.144447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576529, 32.756355, 34.128090>,  <31.225918, 32.946957, 34.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576529, 32.756355, 34.128090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360309, -0.555604, 0.749320,
		-0.319182, -0.681359, -0.658690,
		0.876527, -0.476501, 0.068161,
		31.839487, 32.613403, 34.148537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057405, 32.274342, 34.221424>,  <31.225918, 32.946957, 34.100826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057405, 32.274342, 34.221424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435606, 32.293011, 34.350327>,  <31.662527, 32.304214, 34.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435606, 32.293011, 34.350327>,  <31.057405, 32.274342, 34.221424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435606, 32.293011, 34.350327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232053, -0.597688, 0.767411,
		0.228427, -0.800369, -0.554284,
		0.945501, 0.046674, 0.322257,
		31.719255, 32.307014, 34.447002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347010, 31.554634, 34.285614>,  <31.057405, 32.274342, 34.221424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347010, 31.554634, 34.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542591, 31.794739, 34.538788>,  <31.659941, 31.938803, 34.690693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542591, 31.794739, 34.538788>,  <31.347010, 31.554634, 34.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542591, 31.794739, 34.538788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293081, -0.570360, 0.767329,
		0.821601, -0.560689, -0.102954,
		0.488954, 0.600264, 0.632935,
		31.689278, 31.974817, 34.728668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564062, 31.122038, 34.765915>,  <31.347010, 31.554634, 34.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564062, 31.122038, 34.765915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598457, 31.471619, 34.957253>,  <31.619095, 31.681368, 35.072056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598457, 31.471619, 34.957253>,  <31.564062, 31.122038, 34.765915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598457, 31.471619, 34.957253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262482, -0.443287, 0.857088,
		0.961098, -0.199256, 0.191279,
		0.085988, 0.873952, 0.478344,
		31.624254, 31.733805, 35.100754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914883, 30.994762, 35.375809>,  <31.564062, 31.122038, 34.765915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914883, 30.994762, 35.375809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723101, 31.338120, 35.448792>,  <31.608032, 31.544134, 35.492580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723101, 31.338120, 35.448792>,  <31.914883, 30.994762, 35.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723101, 31.338120, 35.448792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233668, -0.325277, 0.916293,
		0.845886, 0.396686, 0.356534,
		-0.479453, 0.858391, 0.182455,
		31.579264, 31.595636, 35.503529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129589, 31.093372, 35.994556>,  <31.914883, 30.994762, 35.375809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129589, 31.093372, 35.994556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821814, 31.346653, 35.961040>,  <31.637148, 31.498621, 35.940929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821814, 31.346653, 35.961040>,  <32.129589, 31.093372, 35.994556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821814, 31.346653, 35.961040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339586, -0.294440, 0.893301,
		0.540967, 0.715795, 0.441580,
		-0.769439, 0.633200, -0.083792,
		31.590982, 31.536613, 35.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161243, 31.495447, 36.560287>,  <32.129589, 31.093372, 35.994556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161243, 31.495447, 36.560287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787149, 31.484150, 36.419128>,  <31.562693, 31.477371, 36.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787149, 31.484150, 36.419128>,  <32.161243, 31.495447, 36.560287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787149, 31.484150, 36.419128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331606, -0.279218, 0.901152,
		-0.123987, 0.959812, 0.251769,
		-0.935235, -0.028243, -0.352899,
		31.506578, 31.475677, 36.313259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755939, 31.795794, 37.116943>,  <32.161243, 31.495447, 36.560287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755939, 31.795794, 37.116943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502039, 31.598454, 36.879055>,  <31.349699, 31.480049, 36.736320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502039, 31.598454, 36.879055>,  <31.755939, 31.795794, 37.116943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502039, 31.598454, 36.879055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513381, -0.305980, 0.801758,
		-0.577520, 0.814238, -0.059054,
		-0.634752, -0.493348, -0.594724,
		31.311613, 31.450449, 36.700638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038288, 31.902842, 37.386429>,  <31.755939, 31.795794, 37.116943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038288, 31.902842, 37.386429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054276, 31.567940, 37.168289>,  <31.063868, 31.366999, 37.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054276, 31.567940, 37.168289>,  <31.038288, 31.902842, 37.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054276, 31.567940, 37.168289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508708, -0.486808, 0.710095,
		-0.860011, 0.249041, -0.445377,
		0.039970, -0.837255, -0.545349,
		31.066267, 31.316763, 37.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468884, 31.522995, 37.568195>,  <31.038288, 31.902842, 37.386429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468884, 31.522995, 37.568195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651054, 31.263069, 37.324776>,  <30.760357, 31.107113, 37.178726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651054, 31.263069, 37.324776>,  <30.468884, 31.522995, 37.568195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651054, 31.263069, 37.324776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416909, -0.759634, 0.499141,
		-0.786623, 0.026388, -0.616870,
		0.455424, -0.649815, -0.608547,
		30.787682, 31.068125, 37.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998299, 30.997049, 37.276382>,  <30.468884, 31.522995, 37.568195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998299, 30.997049, 37.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367014, 30.844433, 37.303913>,  <30.588243, 30.752863, 37.320431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367014, 30.844433, 37.303913>,  <29.998299, 30.997049, 37.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367014, 30.844433, 37.303913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362360, -0.784742, 0.502867,
		-0.137855, -0.488475, -0.861620,
		0.921787, -0.381539, 0.068823,
		30.643551, 30.729971, 37.324558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833885, 30.360304, 37.178829>,  <29.998299, 30.997049, 37.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833885, 30.360304, 37.178829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197945, 30.353703, 37.344414>,  <30.416380, 30.349741, 37.443764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197945, 30.353703, 37.344414>,  <29.833885, 30.360304, 37.178829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197945, 30.353703, 37.344414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288225, -0.742973, 0.604084,
		0.297589, -0.669117, -0.680972,
		0.910147, -0.016504, 0.413957,
		30.470989, 30.348751, 37.468601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505342, 29.859655, 36.953938>,  <29.833885, 30.360304, 37.178829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505342, 29.859655, 36.953938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117392, 29.765354, 36.929413>,  <28.884621, 29.708775, 36.914700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117392, 29.765354, 36.929413>,  <29.505342, 29.859655, 36.953938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117392, 29.765354, 36.929413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007941, 0.220951, -0.975252,
		0.243467, -0.946361, -0.212424,
		-0.969877, -0.235755, -0.061309,
		28.826427, 29.694630, 36.911022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431768, 29.425240, 36.418346>,  <29.505342, 29.859655, 36.953938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431768, 29.425240, 36.418346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059534, 29.559883, 36.475903>,  <28.836193, 29.640669, 36.510437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059534, 29.559883, 36.475903>,  <29.431768, 29.425240, 36.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059534, 29.559883, 36.475903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097225, 0.151676, -0.983637,
		-0.352927, -0.929348, -0.108420,
		-0.930586, 0.336611, 0.143886,
		28.780357, 29.660866, 36.519070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974722, 29.000923, 35.945152>,  <29.431768, 29.425240, 36.418346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974722, 29.000923, 35.945152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793613, 29.345619, 36.036720>,  <28.684948, 29.552437, 36.091660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793613, 29.345619, 36.036720>,  <28.974722, 29.000923, 35.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793613, 29.345619, 36.036720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123222, 0.193805, -0.973271,
		-0.883070, -0.468878, 0.018435,
		-0.452773, 0.861738, 0.228920,
		28.657782, 29.604141, 36.105396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443058, 29.067410, 35.403328>,  <28.974722, 29.000923, 35.945152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443058, 29.067410, 35.403328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502853, 29.425140, 35.572010>,  <28.538731, 29.639778, 35.673218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502853, 29.425140, 35.572010>,  <28.443058, 29.067410, 35.403328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502853, 29.425140, 35.572010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088739, 0.412643, -0.906560,
		-0.984774, 0.172940, -0.017677,
		0.149486, 0.894325, 0.421706,
		28.547699, 29.693438, 35.698521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920189, 29.447247, 35.127117>,  <28.443058, 29.067410, 35.403328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920189, 29.447247, 35.127117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206041, 29.702911, 35.240803>,  <28.377552, 29.856310, 35.309013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206041, 29.702911, 35.240803>,  <27.920189, 29.447247, 35.127117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206041, 29.702911, 35.240803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075249, 0.333699, -0.939672,
		-0.695445, 0.692903, 0.190374,
		0.714629, 0.639164, 0.284210,
		28.420429, 29.894661, 35.326065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768343, 29.935698, 34.689434>,  <27.920189, 29.447247, 35.127117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768343, 29.935698, 34.689434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125172, 30.043335, 34.834648>,  <28.339270, 30.107918, 34.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125172, 30.043335, 34.834648>,  <27.768343, 29.935698, 34.689434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125172, 30.043335, 34.834648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169317, 0.545815, -0.820621,
		-0.418974, 0.793522, 0.441344,
		0.892072, 0.269091, 0.363039,
		28.392794, 30.124062, 34.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780975, 30.679699, 34.631374>,  <27.768343, 29.935698, 34.689434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780975, 30.679699, 34.631374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155573, 30.540165, 34.645752>,  <28.380331, 30.456446, 34.654377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155573, 30.540165, 34.645752>,  <27.780975, 30.679699, 34.631374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155573, 30.540165, 34.645752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240308, 0.563715, -0.790239,
		0.255398, 0.748693, 0.611744,
		0.936495, -0.348833, 0.035945,
		28.436522, 30.435514, 34.656536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210773, 31.261240, 34.635925>,  <27.780975, 30.679699, 34.631374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210773, 31.261240, 34.635925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439161, 30.956768, 34.512897>,  <28.576193, 30.774084, 34.439079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439161, 30.956768, 34.512897>,  <28.210773, 31.261240, 34.635925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439161, 30.956768, 34.512897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094804, 0.433269, -0.896265,
		0.815480, 0.482579, 0.319545,
		0.570968, -0.761180, -0.307572,
		28.610451, 30.728415, 34.420628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731142, 31.598885, 34.244373>,  <28.210773, 31.261240, 34.635925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731142, 31.598885, 34.244373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752899, 31.212032, 34.145012>,  <28.765953, 30.979921, 34.085396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752899, 31.212032, 34.145012>,  <28.731142, 31.598885, 34.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752899, 31.212032, 34.145012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192239, 0.254259, -0.947837,
		0.979840, 0.003802, 0.199750,
		0.054392, -0.967129, -0.248402,
		28.769217, 30.921894, 34.070492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391352, 31.515781, 33.831387>,  <28.731142, 31.598885, 34.244373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391352, 31.515781, 33.831387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196486, 31.183147, 33.724701>,  <29.079565, 30.983566, 33.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196486, 31.183147, 33.724701>,  <29.391352, 31.515781, 33.831387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196486, 31.183147, 33.724701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178049, 0.204416, -0.962555,
		0.854967, -0.516412, 0.048478,
		-0.487165, -0.831585, -0.266716,
		29.050337, 30.933672, 33.644688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808399, 31.299189, 33.467884>,  <29.391352, 31.515781, 33.831387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808399, 31.299189, 33.467884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460339, 31.133366, 33.361313>,  <29.251503, 31.033873, 33.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460339, 31.133366, 33.361313>,  <29.808399, 31.299189, 33.467884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460339, 31.133366, 33.361313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312771, -0.046819, -0.948674,
		0.380805, -0.908818, 0.170401,
		-0.870150, -0.414556, -0.266424,
		29.199293, 31.008999, 33.281387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996716, 30.796513, 32.961369>,  <29.808399, 31.299189, 33.467884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996716, 30.796513, 32.961369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618692, 30.926121, 32.944038>,  <29.391878, 31.003885, 32.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618692, 30.926121, 32.944038>,  <29.996716, 30.796513, 32.961369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618692, 30.926121, 32.944038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117554, 0.213177, -0.969916,
		-0.305038, -0.921719, -0.239554,
		-0.945057, 0.324021, -0.043325,
		29.335175, 31.023327, 32.931042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593843, 30.421158, 32.477886>,  <29.996716, 30.796513, 32.961369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593843, 30.421158, 32.477886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419867, 30.780682, 32.499687>,  <29.315481, 30.996395, 32.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419867, 30.780682, 32.499687>,  <29.593843, 30.421158, 32.477886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419867, 30.780682, 32.499687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166161, 0.139597, -0.976168,
		-0.884995, -0.415521, -0.210064,
		-0.434943, 0.898807, 0.054499,
		29.289383, 31.050323, 32.516037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167702, 30.462452, 31.911142>,  <29.593843, 30.421158, 32.477886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167702, 30.462452, 31.911142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210865, 30.848034, 32.008423>,  <29.236763, 31.079384, 32.066792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210865, 30.848034, 32.008423>,  <29.167702, 30.462452, 31.911142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210865, 30.848034, 32.008423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108097, 0.231802, -0.966738,
		-0.988267, 0.130606, -0.079188,
		0.107906, 0.963955, 0.243200,
		29.243237, 31.137220, 32.081383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737619, 30.824249, 31.452131>,  <29.167702, 30.462452, 31.911142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737619, 30.824249, 31.452131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025646, 31.069038, 31.582973>,  <29.198462, 31.215912, 31.661478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025646, 31.069038, 31.582973>,  <28.737619, 30.824249, 31.452131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025646, 31.069038, 31.582973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188098, 0.281603, -0.940914,
		-0.667925, 0.739048, 0.087662,
		0.720066, 0.611971, 0.327104,
		29.241667, 31.252630, 31.681105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640425, 31.422438, 31.066076>,  <28.737619, 30.824249, 31.452131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640425, 31.422438, 31.066076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012135, 31.446980, 31.211777>,  <29.235161, 31.461704, 31.299198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012135, 31.446980, 31.211777>,  <28.640425, 31.422438, 31.066076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012135, 31.446980, 31.211777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320621, 0.355708, -0.877880,
		-0.183432, 0.932581, 0.310879,
		0.929277, 0.061357, 0.364253,
		29.290918, 31.465387, 31.321053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788593, 32.112633, 31.000238>,  <28.640425, 31.422438, 31.066076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788593, 32.112633, 31.000238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167341, 32.001385, 31.064838>,  <29.394590, 31.934635, 31.103598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167341, 32.001385, 31.064838>,  <28.788593, 32.112633, 31.000238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167341, 32.001385, 31.064838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316757, 0.719554, -0.617986,
		0.055669, 0.636310, 0.769423,
		0.946872, -0.278123, 0.161498,
		29.451403, 31.917948, 31.113287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159788, 32.660271, 30.961557>,  <28.788593, 32.112633, 31.000238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159788, 32.660271, 30.961557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453876, 32.392628, 30.918205>,  <29.630329, 32.232040, 30.892195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453876, 32.392628, 30.918205>,  <29.159788, 32.660271, 30.961557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453876, 32.392628, 30.918205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479103, 0.626087, -0.615203,
		0.479492, 0.400385, 0.780884,
		0.735219, -0.669109, -0.108378,
		29.674442, 32.191895, 30.885693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774149, 33.001900, 31.206047>,  <29.159788, 32.660271, 30.961557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774149, 33.001900, 31.206047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890045, 32.703606, 30.966072>,  <29.959583, 32.524628, 30.822088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890045, 32.703606, 30.966072>,  <29.774149, 33.001900, 31.206047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890045, 32.703606, 30.966072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397114, 0.663991, -0.633574,
		0.870833, -0.054670, 0.488529,
		0.289741, -0.745739, -0.599936,
		29.976967, 32.479885, 30.786091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464533, 33.097069, 31.159513>,  <29.774149, 33.001900, 31.206047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464533, 33.097069, 31.159513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388142, 32.857815, 30.848190>,  <30.342306, 32.714264, 30.661396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388142, 32.857815, 30.848190>,  <30.464533, 33.097069, 31.159513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388142, 32.857815, 30.848190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520149, 0.610762, -0.597005,
		0.832449, -0.518852, 0.194476,
		-0.190978, -0.598133, -0.778309,
		30.330849, 32.678375, 30.614698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046488, 33.037621, 30.750885>,  <30.464533, 33.097069, 31.159513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046488, 33.037621, 30.750885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761778, 32.932186, 30.490456>,  <30.590952, 32.868923, 30.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761778, 32.932186, 30.490456>,  <31.046488, 33.037621, 30.750885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761778, 32.932186, 30.490456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492738, 0.473213, -0.730260,
		0.500583, -0.840590, -0.206943,
		-0.711777, -0.263587, -0.651073,
		30.548244, 32.853111, 30.295134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384357, 32.851299, 30.013248>,  <31.046488, 33.037621, 30.750885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384357, 32.851299, 30.013248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000189, 32.938660, 29.944092>,  <30.769688, 32.991077, 29.902597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000189, 32.938660, 29.944092>,  <31.384357, 32.851299, 30.013248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000189, 32.938660, 29.944092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262047, 0.497915, -0.826687,
		-0.094467, -0.839273, -0.535440,
		-0.960420, 0.218405, -0.172893,
		30.712063, 33.004181, 29.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185266, 32.530441, 29.367107>,  <31.384357, 32.851299, 30.013248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185266, 32.530441, 29.367107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919725, 32.822968, 29.429695>,  <30.760401, 32.998482, 29.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919725, 32.822968, 29.429695>,  <31.185266, 32.530441, 29.367107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919725, 32.822968, 29.429695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236516, 0.403784, -0.883753,
		-0.709480, -0.549673, -0.441020,
		-0.663851, 0.731313, 0.156470,
		30.720570, 33.042362, 29.476637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122644, 32.661816, 28.743690>,  <31.185266, 32.530441, 29.367107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122644, 32.661816, 28.743690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896296, 32.949505, 28.904938>,  <30.760487, 33.122120, 29.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896296, 32.949505, 28.904938>,  <31.122644, 32.661816, 28.743690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896296, 32.949505, 28.904938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031413, 0.469765, -0.882233,
		-0.823894, -0.511894, -0.243234,
		-0.565873, 0.719225, 0.403116,
		30.726534, 33.165272, 29.025873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615847, 32.806568, 28.270834>,  <31.122644, 32.661816, 28.743690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615847, 32.806568, 28.270834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655867, 33.145508, 28.479443>,  <30.679878, 33.348873, 28.604609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655867, 33.145508, 28.479443>,  <30.615847, 32.806568, 28.270834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655867, 33.145508, 28.479443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195563, 0.530677, -0.824704,
		-0.975574, -0.019478, 0.218806,
		0.100051, 0.847350, 0.521524,
		30.685883, 33.399712, 28.635900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133644, 33.224377, 28.069733>,  <30.615847, 32.806568, 28.270834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133644, 33.224377, 28.069733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377640, 33.483860, 28.251759>,  <30.524038, 33.639549, 28.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377640, 33.483860, 28.251759>,  <30.133644, 33.224377, 28.069733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377640, 33.483860, 28.251759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199382, 0.681455, -0.704178,
		-0.766915, 0.338809, 0.545022,
		0.609990, 0.648712, 0.455065,
		30.560637, 33.678474, 28.388279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738283, 33.847382, 28.090536>,  <30.133644, 33.224377, 28.069733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738283, 33.847382, 28.090536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123192, 33.930935, 28.160278>,  <30.354137, 33.981068, 28.202124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123192, 33.930935, 28.160278>,  <29.738283, 33.847382, 28.090536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123192, 33.930935, 28.160278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006011, 0.656970, -0.753893,
		-0.272021, 0.724403, 0.633439,
		0.962273, 0.208882, 0.174355,
		30.411873, 33.993599, 28.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747673, 34.619396, 28.174534>,  <29.738283, 33.847382, 28.090536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747673, 34.619396, 28.174534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126415, 34.516163, 28.097744>,  <30.353661, 34.454224, 28.051670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126415, 34.516163, 28.097744>,  <29.747673, 34.619396, 28.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126415, 34.516163, 28.097744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013396, 0.564669, -0.825209,
		0.321377, 0.783926, 0.531203,
		0.946857, -0.258087, -0.191973,
		30.410473, 34.438736, 28.040152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909227, 35.199474, 27.982214>,  <29.747673, 34.619396, 28.174534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909227, 35.199474, 27.982214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179644, 34.947300, 27.829624>,  <30.341894, 34.795998, 27.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179644, 34.947300, 27.829624>,  <29.909227, 35.199474, 27.982214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179644, 34.947300, 27.829624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041500, 0.484301, -0.873917,
		0.735694, 0.606635, 0.301245,
		0.676041, -0.630434, -0.381472,
		30.382456, 34.758171, 27.715183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321606, 35.616585, 27.636021>,  <29.909227, 35.199474, 27.982214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321606, 35.616585, 27.636021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429901, 35.266685, 27.475262>,  <30.494879, 35.056747, 27.378805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429901, 35.266685, 27.475262>,  <30.321606, 35.616585, 27.636021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429901, 35.266685, 27.475262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145620, 0.449903, -0.881126,
		0.951575, 0.180032, 0.249187,
		0.270740, -0.874744, -0.401900,
		30.511124, 35.004261, 27.354692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810135, 35.843410, 27.069258>,  <30.321606, 35.616585, 27.636021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810135, 35.843410, 27.069258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670183, 35.479794, 26.978729>,  <30.586212, 35.261623, 26.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670183, 35.479794, 26.978729>,  <30.810135, 35.843410, 27.069258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670183, 35.479794, 26.978729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093386, 0.274232, -0.957118,
		0.932129, -0.313739, -0.180840,
		-0.349877, -0.909046, -0.226321,
		30.565220, 35.207081, 26.910833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010859, 35.753483, 26.464737>,  <30.810135, 35.843410, 27.069258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010859, 35.753483, 26.464737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709780, 35.490147, 26.467365>,  <30.529133, 35.332146, 26.468943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709780, 35.490147, 26.467365>,  <31.010859, 35.753483, 26.464737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709780, 35.490147, 26.467365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171882, 0.186866, -0.967232,
		0.635537, -0.729159, -0.253809,
		-0.752695, -0.658337, 0.006569,
		30.483971, 35.292645, 26.469336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081976, 35.477539, 25.833218>,  <31.010859, 35.753483, 26.464737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081976, 35.477539, 25.833218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711969, 35.360989, 25.930744>,  <30.489965, 35.291058, 25.989260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711969, 35.360989, 25.930744>,  <31.081976, 35.477539, 25.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711969, 35.360989, 25.930744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281130, 0.093262, -0.955127,
		0.255562, -0.952052, -0.168183,
		-0.925016, -0.291375, 0.243816,
		30.434465, 35.273575, 26.003889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795385, 35.054115, 25.282505>,  <31.081976, 35.477539, 25.833218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795385, 35.054115, 25.282505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462955, 35.153011, 25.481781>,  <30.263498, 35.212349, 25.601347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462955, 35.153011, 25.481781>,  <30.795385, 35.054115, 25.282505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462955, 35.153011, 25.481781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454359, 0.214768, -0.864542,
		-0.320743, -0.944853, -0.066153,
		-0.831073, 0.247239, 0.498188,
		30.213634, 35.227184, 25.631237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198015, 34.607769, 25.029961>,  <30.795385, 35.054115, 25.282505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198015, 34.607769, 25.029961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049114, 34.942745, 25.190022>,  <29.959774, 35.143730, 25.286058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049114, 34.942745, 25.190022>,  <30.198015, 34.607769, 25.029961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049114, 34.942745, 25.190022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587400, 0.121234, -0.800165,
		-0.718602, -0.532914, 0.446782,
		-0.372254, 0.837440, 0.400152,
		29.937439, 35.193977, 25.310068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464966, 34.521389, 24.970140>,  <30.198015, 34.607769, 25.029961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464966, 34.521389, 24.970140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514692, 34.913483, 25.031693>,  <29.544529, 35.148739, 25.068624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514692, 34.913483, 25.031693>,  <29.464966, 34.521389, 24.970140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514692, 34.913483, 25.031693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744223, 0.194687, -0.638928,
		-0.656260, -0.035093, 0.753718,
		0.124317, 0.980237, 0.153882,
		29.551987, 35.207554, 25.077858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867634, 34.733532, 24.869356>,  <29.464966, 34.521389, 24.970140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867634, 34.733532, 24.869356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077375, 35.073734, 24.852863>,  <29.203220, 35.277855, 24.842968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077375, 35.073734, 24.852863>,  <28.867634, 34.733532, 24.869356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077375, 35.073734, 24.852863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640656, 0.362154, -0.677056,
		-0.560905, 0.381432, 0.734776,
		0.524353, 0.850502, -0.041233,
		29.234682, 35.328884, 24.840494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397650, 35.276798, 25.056143>,  <28.867634, 34.733532, 24.869356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397650, 35.276798, 25.056143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701748, 35.425205, 24.842838>,  <28.884207, 35.514248, 24.714855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701748, 35.425205, 24.842838>,  <28.397650, 35.276798, 25.056143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701748, 35.425205, 24.842838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648203, 0.487682, -0.584807,
		0.043089, 0.790261, 0.611253,
		0.760247, 0.371018, -0.533264,
		28.929823, 35.536510, 24.682859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266283, 35.920605, 24.948303>,  <28.397650, 35.276798, 25.056143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266283, 35.920605, 24.948303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517813, 35.834499, 24.649441>,  <28.668730, 35.782837, 24.470123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517813, 35.834499, 24.649441>,  <28.266283, 35.920605, 24.948303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517813, 35.834499, 24.649441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613287, 0.453376, -0.646784,
		0.477973, 0.864934, 0.153073,
		0.628824, -0.215268, -0.747154,
		28.706461, 35.769920, 24.425295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360933, 36.606247, 24.648895>,  <28.266283, 35.920605, 24.948303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360933, 36.606247, 24.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440104, 36.298901, 24.405441>,  <28.487606, 36.114491, 24.259369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440104, 36.298901, 24.405441>,  <28.360933, 36.606247, 24.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440104, 36.298901, 24.405441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608481, 0.390489, -0.690847,
		0.768490, 0.507079, -0.390249,
		0.197926, -0.768368, -0.608635,
		28.499481, 36.068390, 24.222851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591259, 36.954010, 23.985920>,  <28.360933, 36.606247, 24.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591259, 36.954010, 23.985920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409351, 36.597782, 23.982529>,  <28.300207, 36.384045, 23.980494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409351, 36.597782, 23.982529>,  <28.591259, 36.954010, 23.985920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409351, 36.597782, 23.982529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818085, 0.421482, -0.391267,
		0.352024, -0.170999, -0.920238,
		-0.454770, -0.890568, -0.008480,
		28.272921, 36.330612, 23.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328672, 36.886948, 23.326014>,  <28.591259, 36.954010, 23.985920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328672, 36.886948, 23.326014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116323, 36.633686, 23.551327>,  <27.988914, 36.481728, 23.686514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116323, 36.633686, 23.551327>,  <28.328672, 36.886948, 23.326014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116323, 36.633686, 23.551327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842706, 0.324161, -0.429844,
		0.089565, -0.702874, -0.705653,
		-0.530871, -0.633157, 0.563283,
		27.957062, 36.443741, 23.720312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749760, 36.528961, 22.965219>,  <28.328672, 36.886948, 23.326014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749760, 36.528961, 22.965219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634457, 36.481396, 23.345276>,  <27.565275, 36.452858, 23.573309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634457, 36.481396, 23.345276>,  <27.749760, 36.528961, 22.965219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634457, 36.481396, 23.345276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876075, 0.433286, -0.211558,
		-0.386526, -0.893377, -0.229073,
		-0.288255, -0.118913, 0.950142,
		27.547979, 36.445721, 23.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108561, 36.162144, 22.932228>,  <27.749760, 36.528961, 22.965219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108561, 36.162144, 22.932228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130556, 36.356537, 23.281124>,  <27.143753, 36.473171, 23.490461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130556, 36.356537, 23.281124>,  <27.108561, 36.162144, 22.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130556, 36.356537, 23.281124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956222, 0.277099, -0.094107,
		-0.287431, -0.828878, 0.479942,
		0.054988, 0.485980, 0.872238,
		27.147053, 36.502331, 23.542795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407303, 36.116295, 23.308556>,  <27.108561, 36.162144, 22.932228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407303, 36.116295, 23.308556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591677, 36.407074, 23.512157>,  <26.702301, 36.581543, 23.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591677, 36.407074, 23.512157>,  <26.407303, 36.116295, 23.308556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591677, 36.407074, 23.512157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869609, 0.484376, 0.095708,
		-0.176975, -0.486750, 0.855426,
		0.460934, 0.726949, 0.509005,
		26.729958, 36.625160, 23.664860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924650, 35.553432, 22.982185>,  <26.407303, 36.116295, 23.308556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924650, 35.553432, 22.982185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659691, 35.322086, 22.791721>,  <25.500715, 35.183281, 22.677443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659691, 35.322086, 22.791721>,  <25.924650, 35.553432, 22.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659691, 35.322086, 22.791721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556553, -0.045551, 0.829562,
		-0.501477, 0.814508, -0.291716,
		-0.662397, -0.578361, -0.476160,
		25.460972, 35.148579, 22.648874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158203, 35.707863, 22.874165>,  <25.924650, 35.553432, 22.982185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158203, 35.707863, 22.874165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222157, 35.314770, 22.911434>,  <25.260529, 35.078915, 22.933796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222157, 35.314770, 22.911434>,  <25.158203, 35.707863, 22.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222157, 35.314770, 22.911434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378877, 0.026066, 0.925080,
		-0.911531, -0.183207, -0.368166,
		0.159884, -0.982729, 0.093173,
		25.270123, 35.019951, 22.939386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.369652, 35.893555, 22.850946>,  <25.158203, 35.707863, 22.874165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.369652, 35.893555, 22.850946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079248, 36.110706, 23.019798>,  <23.905006, 36.240997, 23.121109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079248, 36.110706, 23.019798>,  <24.369652, 35.893555, 22.850946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.079248, 36.110706, 23.019798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158480, 0.729396, -0.665481,
		-0.669176, -0.416246, -0.615583,
		-0.726008, 0.542881, 0.422127,
		23.861446, 36.273571, 23.146437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.889677, 35.937164, 22.354370>,  <24.369652, 35.893555, 22.850946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.889677, 35.937164, 22.354370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819994, 36.234451, 22.612759>,  <23.778185, 36.412823, 22.767792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819994, 36.234451, 22.612759>,  <23.889677, 35.937164, 22.354370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.819994, 36.234451, 22.612759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144772, 0.629544, -0.763358,
		-0.974009, -0.226500, -0.002072,
		-0.174205, 0.743217, 0.645973,
		23.767733, 36.457417, 22.806551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.366243, 36.384926, 21.999773>,  <23.889677, 35.937164, 22.354370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.366243, 36.384926, 21.999773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.548754, 36.613079, 22.272968>,  <23.658260, 36.749973, 22.436886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.548754, 36.613079, 22.272968>,  <23.366243, 36.384926, 21.999773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.548754, 36.613079, 22.272968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067481, 0.787511, -0.612595,
		-0.887277, 0.233423, 0.397811,
		0.456274, 0.570387, 0.682989,
		23.685637, 36.784195, 22.477865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.890377, 36.937984, 22.140043>,  <23.366243, 36.384926, 21.999773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.890377, 36.937984, 22.140043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232365, 37.118088, 22.243031>,  <23.437557, 37.226151, 22.304823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.232365, 37.118088, 22.243031>,  <22.890377, 36.937984, 22.140043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232365, 37.118088, 22.243031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169797, 0.712011, -0.681329,
		-0.490095, 0.538800, 0.685202,
		0.854971, 0.450262, 0.257466,
		23.488855, 37.253166, 22.320271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745054, 37.588535, 22.275377>,  <22.890377, 36.937984, 22.140043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745054, 37.588535, 22.275377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136963, 37.622074, 22.202698>,  <23.372108, 37.642197, 22.159090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136963, 37.622074, 22.202698>,  <22.745054, 37.588535, 22.275377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136963, 37.622074, 22.202698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193613, 0.626751, -0.754783,
		0.050592, 0.774695, 0.630308,
		0.979773, 0.083850, -0.181700,
		23.430895, 37.647228, 22.148188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801771, 38.281326, 22.146065>,  <22.745054, 37.588535, 22.275377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801771, 38.281326, 22.146065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.161623, 38.160469, 22.019966>,  <23.377533, 38.087955, 21.944307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.161623, 38.160469, 22.019966>,  <22.801771, 38.281326, 22.146065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.161623, 38.160469, 22.019966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037597, 0.772870, -0.633450,
		0.435034, 0.558017, 0.706655,
		0.899629, -0.302141, -0.315245,
		23.431511, 38.069828, 21.925392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.292521, 38.823807, 22.247507>,  <22.801771, 38.281326, 22.146065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.292521, 38.823807, 22.247507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402084, 38.599079, 21.935268>,  <23.467823, 38.464241, 21.747925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.402084, 38.599079, 21.935268>,  <23.292521, 38.823807, 22.247507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402084, 38.599079, 21.935268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030379, 0.806179, -0.590891,
		0.961275, 0.185565, 0.203753,
		0.273910, -0.561819, -0.780597,
		23.484257, 38.430534, 21.701090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.726549, 39.315426, 21.842739>,  <23.292521, 38.823807, 22.247507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.726549, 39.315426, 21.842739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.666283, 39.022121, 21.577522>,  <23.630123, 38.846138, 21.418392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.666283, 39.022121, 21.577522>,  <23.726549, 39.315426, 21.842739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.666283, 39.022121, 21.577522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068330, 0.661370, -0.746941,
		0.986221, -0.157843, -0.049541,
		-0.150664, -0.733263, -0.663042,
		23.621082, 38.802143, 21.378609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230692, 39.408421, 21.317598>,  <23.726549, 39.315426, 21.842739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230692, 39.408421, 21.317598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951654, 39.192959, 21.128616>,  <23.784231, 39.063683, 21.015226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951654, 39.192959, 21.128616>,  <24.230692, 39.408421, 21.317598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951654, 39.192959, 21.128616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192330, 0.494419, -0.847678,
		0.690198, -0.682202, -0.241304,
		-0.697593, -0.538656, -0.472455,
		23.742376, 39.031361, 20.986879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491495, 39.407509, 20.633921>,  <24.230692, 39.408421, 21.317598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491495, 39.407509, 20.633921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109118, 39.295536, 20.598587>,  <23.879690, 39.228352, 20.577387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109118, 39.295536, 20.598587>,  <24.491495, 39.407509, 20.633921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.109118, 39.295536, 20.598587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047732, 0.445163, -0.894177,
		0.289636, -0.850568, -0.438913,
		-0.955946, -0.279936, -0.088336,
		23.822334, 39.211555, 20.572086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524694, 39.046127, 19.968782>,  <24.491495, 39.407509, 20.633921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524694, 39.046127, 19.968782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164673, 39.186531, 20.072083>,  <23.948660, 39.270775, 20.134062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164673, 39.186531, 20.072083>,  <24.524694, 39.046127, 19.968782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164673, 39.186531, 20.072083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010914, 0.574276, -0.818589,
		-0.435640, -0.739594, -0.513050,
		-0.900055, 0.351010, 0.258249,
		23.894657, 39.291836, 20.149557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154173, 39.208588, 19.348413>,  <24.524694, 39.046127, 19.968782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154173, 39.208588, 19.348413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.939632, 39.421711, 19.610237>,  <23.810907, 39.549583, 19.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.939632, 39.421711, 19.610237>,  <24.154173, 39.208588, 19.348413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.939632, 39.421711, 19.610237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077403, 0.741225, -0.666779,
		-0.840438, -0.408292, -0.356316,
		-0.536351, 0.532806, 0.654557,
		23.778727, 39.581554, 19.806604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519936, 39.378353, 18.988035>,  <24.154173, 39.208588, 19.348413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519936, 39.378353, 18.988035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.615936, 39.631863, 19.282173>,  <23.673536, 39.783966, 19.458656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.615936, 39.631863, 19.282173>,  <23.519936, 39.378353, 18.988035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.615936, 39.631863, 19.282173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029919, 0.752297, -0.658145,
		-0.970311, 0.179957, 0.161591,
		0.240002, 0.633771, 0.735346,
		23.687937, 39.821995, 19.502777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085182, 40.056221, 18.748524>,  <23.519936, 39.378353, 18.988035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085182, 40.056221, 18.748524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357721, 40.181561, 19.013123>,  <23.521244, 40.256763, 19.171881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357721, 40.181561, 19.013123>,  <23.085182, 40.056221, 18.748524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.357721, 40.181561, 19.013123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105363, 0.852332, -0.512277,
		-0.724337, 0.418736, 0.547719,
		0.681348, 0.313352, 0.661495,
		23.562126, 40.275566, 19.211571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.856947, 40.710335, 18.993202>,  <23.085182, 40.056221, 18.748524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.856947, 40.710335, 18.993202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249973, 40.696270, 19.066227>,  <23.485788, 40.687832, 19.110041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249973, 40.696270, 19.066227>,  <22.856947, 40.710335, 18.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.249973, 40.696270, 19.066227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096226, 0.936369, -0.337569,
		-0.159076, 0.349251, 0.923428,
		0.982566, -0.035159, 0.182561,
		23.544743, 40.685722, 19.120995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.950155, 41.344681, 19.277901>,  <22.856947, 40.710335, 18.993202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.950155, 41.344681, 19.277901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320719, 41.223553, 19.188396>,  <23.543056, 41.150875, 19.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320719, 41.223553, 19.188396>,  <22.950155, 41.344681, 19.277901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.320719, 41.223553, 19.188396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219808, 0.917464, -0.331578,
		0.305703, 0.257992, 0.916508,
		0.926407, -0.302820, -0.223762,
		23.598640, 41.132706, 19.121267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.379860, 41.994553, 19.409540>,  <22.950155, 41.344681, 19.277901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.379860, 41.994553, 19.409540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.600836, 41.746582, 19.186649>,  <23.733421, 41.597801, 19.052914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.600836, 41.746582, 19.186649>,  <23.379860, 41.994553, 19.409540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.600836, 41.746582, 19.186649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078819, 0.704354, -0.705460,
		0.829817, 0.345805, 0.437975,
		0.552441, -0.619923, -0.557229,
		23.766567, 41.560604, 19.019480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975990, 42.291920, 19.390860>,  <23.379860, 41.994553, 19.409540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975990, 42.291920, 19.390860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903461, 42.055943, 19.076130>,  <23.859945, 41.914356, 18.887293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903461, 42.055943, 19.076130>,  <23.975990, 42.291920, 19.390860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.903461, 42.055943, 19.076130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011731, 0.801328, -0.598110,
		0.983354, -0.099220, -0.152218,
		-0.181321, -0.589940, -0.786825,
		23.849066, 41.878960, 18.840082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416178, 42.534187, 18.958866>,  <23.975990, 42.291920, 19.390860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416178, 42.534187, 18.958866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130135, 42.366791, 18.734905>,  <23.958509, 42.266354, 18.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130135, 42.366791, 18.734905>,  <24.416178, 42.534187, 18.958866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130135, 42.366791, 18.734905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089907, 0.849398, -0.520038,
		0.693208, -0.321544, -0.645036,
		-0.715108, -0.418488, -0.559901,
		23.915602, 42.241245, 18.566935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648153, 42.624886, 18.299189>,  <24.416178, 42.534187, 18.958866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648153, 42.624886, 18.299189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254814, 42.554504, 18.280991>,  <24.018810, 42.512276, 18.270071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254814, 42.554504, 18.280991>,  <24.648153, 42.624886, 18.299189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254814, 42.554504, 18.280991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124390, 0.834137, -0.537348,
		0.132496, -0.522740, -0.842133,
		-0.983347, -0.175949, -0.045496,
		23.959810, 42.501720, 18.267342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.298208, 42.674221, 17.599865>,  <24.648153, 42.624886, 18.299189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.298208, 42.674221, 17.599865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.039749, 42.770756, 17.889484>,  <23.884674, 42.828678, 18.063255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.039749, 42.770756, 17.889484>,  <24.298208, 42.674221, 17.599865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.039749, 42.770756, 17.889484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256336, 0.824954, -0.503729,
		-0.718877, -0.511084, -0.471179,
		-0.646149, 0.241339, 0.724049,
		23.845905, 42.843159, 18.106699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.871199, 42.991600, 17.297815>,  <24.298208, 42.674221, 17.599865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.871199, 42.991600, 17.297815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715015, 43.112606, 17.645615>,  <23.621305, 43.185211, 17.854294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715015, 43.112606, 17.645615>,  <23.871199, 42.991600, 17.297815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715015, 43.112606, 17.645615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296306, 0.852918, -0.429807,
		-0.871634, -0.425459, -0.243392,
		-0.390458, 0.302516, 0.869498,
		23.597878, 43.203362, 17.906464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.181084, 42.978409, 17.320482>,  <23.871199, 42.991600, 17.297815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.181084, 42.978409, 17.320482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303759, 43.270229, 17.565006>,  <23.377363, 43.445320, 17.711721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303759, 43.270229, 17.565006>,  <23.181084, 42.978409, 17.320482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303759, 43.270229, 17.565006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368680, 0.683179, -0.630351,
		-0.877506, -0.032057, 0.478492,
		0.306689, 0.729547, 0.611312,
		23.395765, 43.489094, 17.748400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658106, 43.463573, 17.677887>,  <23.181084, 42.978409, 17.320482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658106, 43.463573, 17.677887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006828, 43.642429, 17.597870>,  <23.216063, 43.749744, 17.549860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006828, 43.642429, 17.597870>,  <22.658106, 43.463573, 17.677887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006828, 43.642429, 17.597870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465598, 0.629490, -0.622062,
		-0.152224, 0.635458, 0.756982,
		0.871807, 0.447141, -0.200045,
		23.268370, 43.776573, 17.537857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.722315, 44.264519, 17.846016>,  <22.658106, 43.463573, 17.677887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.722315, 44.264519, 17.846016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.973490, 44.152088, 17.555721>,  <23.124195, 44.084629, 17.381544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.973490, 44.152088, 17.555721>,  <22.722315, 44.264519, 17.846016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.973490, 44.152088, 17.555721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332546, 0.746185, -0.576733,
		0.703640, 0.603492, 0.375084,
		0.627936, -0.281079, -0.725735,
		23.161871, 44.067764, 17.338001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347677, 44.621407, 18.329391>,  <22.722315, 44.264519, 17.846016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347677, 44.621407, 18.329391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335279, 44.996136, 18.468761>,  <22.327841, 45.220974, 18.552383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335279, 44.996136, 18.468761>,  <22.347677, 44.621407, 18.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335279, 44.996136, 18.468761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597417, -0.296837, 0.744970,
		0.801331, -0.185066, 0.568875,
		-0.030994, 0.936823, 0.348427,
		22.325981, 45.277184, 18.573290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773453, 44.770416, 18.928722>,  <22.347677, 44.621407, 18.329391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773453, 44.770416, 18.928722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419977, 44.955250, 18.898853>,  <22.207891, 45.066151, 18.880932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419977, 44.955250, 18.898853>,  <22.773453, 44.770416, 18.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419977, 44.955250, 18.898853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366750, -0.584398, 0.723860,
		0.290842, 0.667054, 0.685894,
		-0.883688, 0.462081, -0.074675,
		22.154871, 45.093876, 18.876451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492807, 44.915043, 19.620417>,  <22.773453, 44.770416, 18.928722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492807, 44.915043, 19.620417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205305, 44.840282, 19.352547>,  <22.032804, 44.795425, 19.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205305, 44.840282, 19.352547>,  <22.492807, 44.915043, 19.620417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.205305, 44.840282, 19.352547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506595, -0.518908, 0.688546,
		-0.476187, 0.834148, 0.278285,
		-0.718754, -0.186899, -0.669673,
		21.989679, 44.784214, 19.151646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832428, 45.072086, 19.994640>,  <22.492807, 44.915043, 19.620417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832428, 45.072086, 19.994640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755339, 44.839619, 19.678387>,  <21.709085, 44.700138, 19.488634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755339, 44.839619, 19.678387>,  <21.832428, 45.072086, 19.994640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755339, 44.839619, 19.678387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470315, -0.652447, 0.594236,
		-0.861198, 0.486369, -0.147591,
		-0.192722, -0.581169, -0.790633,
		21.697521, 44.665268, 19.441196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150047, 44.901096, 19.895151>,  <21.832428, 45.072086, 19.994640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150047, 44.901096, 19.895151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366131, 44.599087, 19.746494>,  <21.495781, 44.417881, 19.657301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.366131, 44.599087, 19.746494>,  <21.150047, 44.901096, 19.895151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366131, 44.599087, 19.746494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487980, -0.640847, 0.592613,
		-0.685601, -0.138780, -0.714626,
		0.540209, -0.755020, -0.371644,
		21.528194, 44.372581, 19.635002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717018, 44.474277, 19.616058>,  <21.150047, 44.901096, 19.895151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717018, 44.474277, 19.616058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041214, 44.250767, 19.686337>,  <21.235731, 44.116661, 19.728504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.041214, 44.250767, 19.686337>,  <20.717018, 44.474277, 19.616058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041214, 44.250767, 19.686337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550034, -0.622889, 0.556302,
		-0.201411, -0.547517, -0.812194,
		0.810491, -0.558780, 0.175697,
		21.284361, 44.083134, 19.739046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470537, 43.783844, 19.507994>,  <20.717018, 44.474277, 19.616058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470537, 43.783844, 19.507994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822096, 43.720020, 19.687809>,  <21.033031, 43.681725, 19.795698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.822096, 43.720020, 19.687809>,  <20.470537, 43.783844, 19.507994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822096, 43.720020, 19.687809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369015, -0.824606, 0.428781,
		0.302277, -0.542739, -0.783621,
		0.878895, -0.159557, 0.449538,
		21.085764, 43.672153, 19.822670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680170, 43.091846, 19.306742>,  <20.470537, 43.783844, 19.507994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680170, 43.091846, 19.306742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.823349, 43.203053, 19.663300>,  <20.909256, 43.269775, 19.877234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.823349, 43.203053, 19.663300>,  <20.680170, 43.091846, 19.306742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.823349, 43.203053, 19.663300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407588, -0.812373, 0.417040,
		0.840087, -0.512599, -0.177471,
		0.357947, 0.278015, 0.891393,
		20.930733, 43.286457, 19.930717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056639, 42.561119, 19.530106>,  <20.680170, 43.091846, 19.306742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056639, 42.561119, 19.530106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007771, 42.752293, 19.878048>,  <20.978449, 42.866997, 20.086813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007771, 42.752293, 19.878048>,  <21.056639, 42.561119, 19.530106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007771, 42.752293, 19.878048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087769, -0.878191, 0.470188,
		0.988621, -0.018903, 0.149238,
		-0.122172, 0.477936, 0.869857,
		20.971119, 42.895672, 20.139006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484520, 42.229984, 19.970076>,  <21.056639, 42.561119, 19.530106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484520, 42.229984, 19.970076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234821, 42.408596, 20.226490>,  <21.085001, 42.515762, 20.380339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.234821, 42.408596, 20.226490>,  <21.484520, 42.229984, 19.970076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234821, 42.408596, 20.226490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101643, -0.767156, 0.633357,
		0.774586, 0.460529, 0.433508,
		-0.624247, 0.446527, 0.641038,
		21.047546, 42.542553, 20.418802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795813, 42.202431, 20.586454>,  <21.484520, 42.229984, 19.970076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795813, 42.202431, 20.586454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406628, 42.244907, 20.668495>,  <21.173117, 42.270393, 20.717720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406628, 42.244907, 20.668495>,  <21.795813, 42.202431, 20.586454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.406628, 42.244907, 20.668495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045505, -0.782481, 0.621010,
		0.226438, 0.613552, 0.756491,
		-0.972962, 0.106196, 0.205103,
		21.114738, 42.276768, 20.730026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737221, 42.111729, 21.363129>,  <21.795813, 42.202431, 20.586454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737221, 42.111729, 21.363129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384935, 42.026741, 21.193802>,  <21.173565, 41.975746, 21.092205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.384935, 42.026741, 21.193802>,  <21.737221, 42.111729, 21.363129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.384935, 42.026741, 21.193802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033636, -0.863426, 0.503352,
		-0.472453, 0.457548, 0.753285,
		-0.880714, -0.212472, -0.423319,
		21.120722, 41.962997, 21.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.246593, 41.970570, 21.968048>,  <21.737221, 42.111729, 21.363129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.246593, 41.970570, 21.968048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103867, 41.808643, 21.631287>,  <21.018230, 41.711487, 21.429230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103867, 41.808643, 21.631287>,  <21.246593, 41.970570, 21.968048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103867, 41.808643, 21.631287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053253, -0.890950, 0.450968,
		-0.932655, 0.205747, 0.296349,
		-0.356817, -0.404816, -0.841906,
		20.996822, 41.687199, 21.378716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685221, 41.704952, 22.164570>,  <21.246593, 41.970570, 21.968048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685221, 41.704952, 22.164570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718706, 41.521286, 21.810810>,  <20.738796, 41.411087, 21.598555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.718706, 41.521286, 21.810810>,  <20.685221, 41.704952, 22.164570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718706, 41.521286, 21.810810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211994, -0.875403, 0.434429,
		-0.973679, 0.151120, -0.170622,
		0.083712, -0.459165, -0.884398,
		20.743820, 41.383537, 21.545490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128180, 41.217178, 22.077806>,  <20.685221, 41.704952, 22.164570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128180, 41.217178, 22.077806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.387110, 41.073685, 21.808800>,  <20.542467, 40.987587, 21.647396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.387110, 41.073685, 21.808800>,  <20.128180, 41.217178, 22.077806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387110, 41.073685, 21.808800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146388, -0.924408, 0.352195,
		-0.748026, -0.129535, -0.650905,
		0.647324, -0.358735, -0.672519,
		20.581306, 40.966064, 21.607044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836433, 40.630642, 21.875835>,  <20.128180, 41.217178, 22.077806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836433, 40.630642, 21.875835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212036, 40.587090, 21.745350>,  <20.437397, 40.560959, 21.667059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212036, 40.587090, 21.745350>,  <19.836433, 40.630642, 21.875835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212036, 40.587090, 21.745350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007439, -0.941903, 0.335802,
		-0.343824, -0.317746, -0.883641,
		0.939005, -0.108883, -0.326213,
		20.493738, 40.554424, 21.647486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815535, 39.904552, 21.702677>,  <19.836433, 40.630642, 21.875835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815535, 39.904552, 21.702677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185625, 40.044464, 21.761475>,  <20.407679, 40.128410, 21.796753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185625, 40.044464, 21.761475>,  <19.815535, 39.904552, 21.702677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.185625, 40.044464, 21.761475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277377, -0.887916, 0.366970,
		0.258878, -0.298758, -0.918545,
		0.925226, 0.349784, 0.146993,
		20.463194, 40.149399, 21.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194185, 39.440521, 21.427870>,  <19.815535, 39.904552, 21.702677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194185, 39.440521, 21.427870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433372, 39.621063, 21.692810>,  <20.576885, 39.729389, 21.851774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433372, 39.621063, 21.692810>,  <20.194185, 39.440521, 21.427870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433372, 39.621063, 21.692810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201330, -0.884459, 0.420950,
		0.775821, -0.118364, -0.619751,
		0.597970, 0.451356, 0.662352,
		20.612764, 39.756470, 21.891516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.869864, 39.208416, 21.236433>,  <20.194185, 39.440521, 21.427870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.869864, 39.208416, 21.236433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876650, 39.324646, 21.619114>,  <20.880722, 39.394382, 21.848722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876650, 39.324646, 21.619114>,  <20.869864, 39.208416, 21.236433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876650, 39.324646, 21.619114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260637, -0.925045, 0.276334,
		0.965288, 0.244664, -0.091429,
		0.016967, 0.290572, 0.956703,
		20.881741, 39.411819, 21.906124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.309786, 38.782196, 21.456535>,  <20.869864, 39.208416, 21.236433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.309786, 38.782196, 21.456535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153545, 38.901791, 21.804798>,  <21.059801, 38.973545, 22.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153545, 38.901791, 21.804798>,  <21.309786, 38.782196, 21.456535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153545, 38.901791, 21.804798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280286, -0.862257, 0.421844,
		0.876854, 0.408804, 0.252996,
		-0.390599, 0.298984, 0.870656,
		21.036366, 38.991486, 22.065994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.864088, 38.678284, 21.942686>,  <21.309786, 38.782196, 21.456535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.864088, 38.678284, 21.942686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500040, 38.671337, 22.108276>,  <21.281610, 38.667168, 22.207630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.500040, 38.671337, 22.108276>,  <21.864088, 38.678284, 21.942686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500040, 38.671337, 22.108276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267839, -0.786967, 0.555828,
		0.316134, 0.616751, 0.720887,
		-0.910122, -0.017366, 0.413977,
		21.227003, 38.666126, 22.232470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.972237, 38.537247, 22.660101>,  <21.864088, 38.678284, 21.942686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.972237, 38.537247, 22.660101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581646, 38.458408, 22.625114>,  <21.347292, 38.411106, 22.604122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581646, 38.458408, 22.625114>,  <21.972237, 38.537247, 22.660101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581646, 38.458408, 22.625114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083362, -0.719141, 0.689845,
		-0.198868, 0.666325, 0.718654,
		-0.976474, -0.197096, -0.087468,
		21.288704, 38.399281, 22.598873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.721088, 38.571617, 23.387333>,  <21.972237, 38.537247, 22.660101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.721088, 38.571617, 23.387333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.451218, 38.357647, 23.183895>,  <21.289295, 38.229267, 23.061832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.451218, 38.357647, 23.183895>,  <21.721088, 38.571617, 23.387333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.451218, 38.357647, 23.183895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112793, -0.755674, 0.645163,
		-0.729445, 0.377909, 0.570170,
		-0.674676, -0.534922, -0.508597,
		21.248816, 38.197170, 23.031317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450695, 38.114571, 23.903849>,  <21.721088, 38.571617, 23.387333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450695, 38.114571, 23.903849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319096, 37.958565, 23.559837>,  <21.240137, 37.864964, 23.353430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319096, 37.958565, 23.559837>,  <21.450695, 38.114571, 23.903849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319096, 37.958565, 23.559837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143637, -0.920800, 0.362624,
		-0.933343, -0.004230, 0.358961,
		-0.328997, -0.390013, -0.860030,
		21.220396, 37.841560, 23.301828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891058, 37.691360, 24.076900>,  <21.450695, 38.114571, 23.903849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891058, 37.691360, 24.076900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972361, 37.540890, 23.715309>,  <21.021143, 37.450607, 23.498354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972361, 37.540890, 23.715309>,  <20.891058, 37.691360, 24.076900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972361, 37.540890, 23.715309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037641, -0.919566, 0.391129,
		-0.978402, -0.113527, -0.172749,
		0.203258, -0.376178, -0.903978,
		21.033339, 37.428036, 23.444117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351851, 37.125484, 24.005411>,  <20.891058, 37.691360, 24.076900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351851, 37.125484, 24.005411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659473, 37.061638, 23.757839>,  <20.844048, 37.023331, 23.609297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659473, 37.061638, 23.757839>,  <20.351851, 37.125484, 24.005411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659473, 37.061638, 23.757839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141491, -0.901781, 0.408377,
		-0.623322, -0.401638, -0.670937,
		0.769058, -0.159619, -0.618928,
		20.890190, 37.013752, 23.572161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335770, 36.498810, 23.998528>,  <20.351851, 37.125484, 24.005411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335770, 36.498810, 23.998528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681828, 36.572563, 23.811970>,  <20.889463, 36.616814, 23.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.681828, 36.572563, 23.811970>,  <20.335770, 36.498810, 23.998528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.681828, 36.572563, 23.811970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398710, -0.816983, 0.416617,
		-0.304223, -0.546392, -0.780324,
		0.865147, 0.184379, -0.466397,
		20.941372, 36.627876, 23.672050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098679, 36.878407, 23.380243>,  <20.335770, 36.498810, 23.998528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098679, 36.878407, 23.380243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736132, 36.713081, 23.345203>,  <19.518604, 36.613888, 23.324179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736132, 36.713081, 23.345203>,  <20.098679, 36.878407, 23.380243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736132, 36.713081, 23.345203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402813, 0.907913, -0.115916,
		0.127444, -0.069775, -0.989388,
		-0.906366, -0.413311, -0.087602,
		19.464222, 36.589088, 23.318922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734592, 37.166557, 22.818527>,  <20.098679, 36.878407, 23.380243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734592, 37.166557, 22.818527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454386, 37.031780, 23.070160>,  <19.286263, 36.950912, 23.221140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454386, 37.031780, 23.070160>,  <19.734592, 37.166557, 22.818527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454386, 37.031780, 23.070160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510007, 0.852971, -0.111054,
		-0.499171, -0.398631, -0.769365,
		-0.700515, -0.336946, 0.629083,
		19.244230, 36.930695, 23.258884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144241, 37.264606, 22.444035>,  <19.734592, 37.166557, 22.818527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144241, 37.264606, 22.444035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215973, 37.292522, 22.836559>,  <19.259012, 37.309273, 23.072073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.215973, 37.292522, 22.836559>,  <19.144241, 37.264606, 22.444035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215973, 37.292522, 22.836559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238344, 0.970846, -0.025493,
		-0.954481, -0.229318, 0.190734,
		0.179327, 0.069793, 0.981311,
		19.269772, 37.313461, 23.130953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440584, 37.333447, 22.687336>,  <19.144241, 37.264606, 22.444035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440584, 37.333447, 22.687336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771940, 37.499138, 22.838169>,  <18.970753, 37.598553, 22.928669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771940, 37.499138, 22.838169>,  <18.440584, 37.333447, 22.687336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771940, 37.499138, 22.838169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439823, 0.897860, -0.020081,
		-0.346885, -0.149215, 0.925962,
		0.828388, 0.414225, 0.377083,
		19.020456, 37.623405, 22.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330357, 37.735252, 23.366915>,  <18.440584, 37.333447, 22.687336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330357, 37.735252, 23.366915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631653, 37.875263, 23.144165>,  <18.812431, 37.959270, 23.010515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631653, 37.875263, 23.144165>,  <18.330357, 37.735252, 23.366915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631653, 37.875263, 23.144165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389198, 0.919705, 0.051646,
		0.530237, 0.177832, 0.828990,
		0.753242, 0.350026, -0.556874,
		18.857626, 37.980270, 22.977102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.040018, 28.314812, 29.693760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.439919, 28.321140, 29.700108>,  <29.679859, 28.324938, 29.703917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.439919, 28.321140, 29.700108>,  <29.040018, 28.314812, 29.693760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439919, 28.321140, 29.700108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007223, 0.442911, -0.896537,
		-0.021214, 0.896426, 0.442685,
		0.999749, 0.015822, 0.015871,
		29.739843, 28.325888, 29.704868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259016, 28.837109, 29.252487>,  <29.040018, 28.314812, 29.693760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259016, 28.837109, 29.252487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618555, 28.668804, 29.301533>,  <29.834278, 28.567822, 29.330961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618555, 28.668804, 29.301533>,  <29.259016, 28.837109, 29.252487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618555, 28.668804, 29.301533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264839, 0.298559, -0.916910,
		0.349194, 0.856634, 0.379793,
		0.898846, -0.420763, 0.122615,
		29.888208, 28.542576, 29.338318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773344, 29.309217, 29.252993>,  <29.259016, 28.837109, 29.252487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773344, 29.309217, 29.252993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.967621, 28.976902, 29.144257>,  <30.084187, 28.777514, 29.079016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.967621, 28.976902, 29.144257>,  <29.773344, 29.309217, 29.252993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967621, 28.976902, 29.144257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314310, 0.456165, -0.832540,
		0.815667, 0.318916, 0.482680,
		0.485692, -0.830786, -0.271840,
		30.113329, 28.727667, 29.062704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397514, 29.518089, 29.169899>,  <29.773344, 29.309217, 29.252993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397514, 29.518089, 29.169899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.330330, 29.191765, 28.948544>,  <30.290020, 28.995970, 28.815729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.330330, 29.191765, 28.948544>,  <30.397514, 29.518089, 29.169899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330330, 29.191765, 28.948544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230785, 0.513223, -0.826644,
		0.958398, -0.266558, 0.102075,
		-0.167961, -0.815812, -0.553389,
		30.279942, 28.947021, 28.782526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001966, 29.389763, 28.668283>,  <30.397514, 29.518089, 29.169899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001966, 29.389763, 28.668283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672276, 29.208996, 28.531799>,  <30.474461, 29.100536, 28.449909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.672276, 29.208996, 28.531799>,  <31.001966, 29.389763, 28.668283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672276, 29.208996, 28.531799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217748, 0.303288, -0.927686,
		0.522721, -0.838921, -0.151574,
		-0.824226, -0.451916, -0.341209,
		30.425007, 29.073421, 28.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275490, 29.205917, 28.146532>,  <31.001966, 29.389763, 28.668283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275490, 29.205917, 28.146532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.880405, 29.181740, 28.088882>,  <30.643354, 29.167233, 28.054293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.880405, 29.181740, 28.088882>,  <31.275490, 29.205917, 28.146532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880405, 29.181740, 28.088882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126861, 0.228505, -0.965242,
		0.091275, -0.971665, -0.218030,
		-0.987712, -0.060443, -0.144124,
		30.584091, 29.163607, 28.045645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243603, 28.792526, 27.528212>,  <31.275490, 29.205917, 28.146532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243603, 28.792526, 27.528212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.886387, 28.970158, 27.557266>,  <30.672058, 29.076736, 27.574699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.886387, 28.970158, 27.557266>,  <31.243603, 28.792526, 27.528212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886387, 28.970158, 27.557266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146470, 0.439508, -0.886216,
		-0.425476, -0.780786, -0.457541,
		-0.893038, 0.444080, 0.072638,
		30.618475, 29.103382, 27.579058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927872, 28.753365, 26.842403>,  <31.243603, 28.792526, 27.528212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927872, 28.753365, 26.842403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.737194, 29.046963, 27.035904>,  <30.622787, 29.223122, 27.152004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.737194, 29.046963, 27.035904>,  <30.927872, 28.753365, 26.842403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737194, 29.046963, 27.035904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116116, 0.598051, -0.793002,
		-0.871368, -0.321847, -0.370315,
		-0.476692, 0.733996, 0.483750,
		30.594187, 29.267162, 27.181028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457159, 28.860443, 26.377531>,  <30.927872, 28.753365, 26.842403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457159, 28.860443, 26.377531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.495520, 29.177761, 26.618027>,  <30.518536, 29.368153, 26.762323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.495520, 29.177761, 26.618027>,  <30.457159, 28.860443, 26.377531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495520, 29.177761, 26.618027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014849, 0.602814, -0.797743,
		-0.995280, 0.085434, 0.046032,
		0.095903, 0.793294, 0.601238,
		30.524290, 29.415749, 26.798397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887396, 29.409435, 26.239931>,  <30.457159, 28.860443, 26.377531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887396, 29.409435, 26.239931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.178127, 29.612926, 26.424503>,  <30.352566, 29.735022, 26.535246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.178127, 29.612926, 26.424503>,  <29.887396, 29.409435, 26.239931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178127, 29.612926, 26.424503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025628, 0.651279, -0.758405,
		-0.686341, 0.563056, 0.460331,
		0.726828, 0.508727, 0.461430,
		30.396175, 29.765545, 26.562933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538307, 30.031662, 26.383593>,  <29.887396, 29.409435, 26.239931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538307, 30.031662, 26.383593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.928801, 30.115128, 26.407009>,  <30.163097, 30.165207, 26.421059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.928801, 30.115128, 26.407009>,  <29.538307, 30.031662, 26.383593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928801, 30.115128, 26.407009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077679, 0.589077, -0.804335,
		-0.202318, 0.780672, 0.591285,
		0.976234, 0.208662, 0.058539,
		30.221670, 30.177727, 26.424570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505131, 30.509264, 25.904261>,  <29.538307, 30.031662, 26.383593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505131, 30.509264, 25.904261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900253, 30.462711, 25.945629>,  <30.137327, 30.434780, 25.970451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900253, 30.462711, 25.945629>,  <29.505131, 30.509264, 25.904261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900253, 30.462711, 25.945629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153669, 0.621963, -0.767821,
		0.025036, 0.774350, 0.632262,
		0.987805, -0.116382, 0.103422,
		30.196594, 30.427797, 25.976656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668396, 31.095615, 25.977528>,  <29.505131, 30.509264, 25.904261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668396, 31.095615, 25.977528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.001303, 30.930149, 25.829903>,  <30.201048, 30.830868, 25.741327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.001303, 30.930149, 25.829903>,  <29.668396, 31.095615, 25.977528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001303, 30.930149, 25.829903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045351, 0.714305, -0.698364,
		0.552515, 0.564489, 0.613253,
		0.832268, -0.413668, -0.369064,
		30.250982, 30.806049, 25.719183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115557, 31.635260, 25.928431>,  <29.668396, 31.095615, 25.977528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115557, 31.635260, 25.928431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.272732, 31.360699, 25.683662>,  <30.367037, 31.195961, 25.536800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.272732, 31.360699, 25.683662>,  <30.115557, 31.635260, 25.928431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272732, 31.360699, 25.683662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040581, 0.677743, -0.734178,
		0.918669, 0.263655, 0.294166,
		0.392939, -0.686404, -0.611922,
		30.390614, 31.154778, 25.500086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807554, 31.879456, 25.688356>,  <30.115557, 31.635260, 25.928431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807554, 31.879456, 25.688356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.696911, 31.594860, 25.429970>,  <30.630526, 31.424103, 25.274937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.696911, 31.594860, 25.429970>,  <30.807554, 31.879456, 25.688356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696911, 31.594860, 25.429970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254423, 0.593990, -0.763181,
		0.926692, -0.375450, 0.016718,
		-0.276607, -0.711487, -0.645969,
		30.613928, 31.381414, 25.236179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319263, 31.767641, 25.204809>,  <30.807554, 31.879456, 25.688356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319263, 31.767641, 25.204809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.010361, 31.614906, 25.001705>,  <30.825020, 31.523266, 24.879843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.010361, 31.614906, 25.001705>,  <31.319263, 31.767641, 25.204809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010361, 31.614906, 25.001705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217218, 0.592369, -0.775832,
		0.597042, -0.709427, -0.374506,
		-0.772242, -0.381855, -0.507769,
		30.778685, 31.500355, 24.849377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520807, 31.830891, 24.513365>,  <31.319263, 31.767641, 25.204809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520807, 31.830891, 24.513365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122749, 31.791748, 24.509209>,  <30.883915, 31.768263, 24.506716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.122749, 31.791748, 24.509209>,  <31.520807, 31.830891, 24.513365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122749, 31.791748, 24.509209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065733, 0.739591, -0.669839,
		0.073233, -0.665904, -0.742434,
		-0.995146, -0.097857, -0.010391,
		30.824205, 31.762390, 24.506092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355045, 31.823521, 23.841293>,  <31.520807, 31.830891, 24.513365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355045, 31.823521, 23.841293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998653, 31.899055, 24.006458>,  <30.784819, 31.944376, 24.105558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998653, 31.899055, 24.006458>,  <31.355045, 31.823521, 23.841293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998653, 31.899055, 24.006458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188412, 0.673651, -0.714630,
		-0.413107, -0.714518, -0.564630,
		-0.890979, 0.188835, 0.412914,
		30.731359, 31.955706, 24.130333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779680, 31.773392, 23.314880>,  <31.355045, 31.823521, 23.841293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779680, 31.773392, 23.314880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676163, 32.040401, 23.594147>,  <30.614052, 32.200607, 23.761707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676163, 32.040401, 23.594147>,  <30.779680, 31.773392, 23.314880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676163, 32.040401, 23.594147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283249, 0.638572, -0.715539,
		-0.923469, -0.382933, 0.023817,
		-0.258794, 0.667524, 0.698167,
		30.598524, 32.240658, 23.803596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293600, 32.166714, 23.004129>,  <30.779680, 31.773392, 23.314880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293600, 32.166714, 23.004129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.361038, 32.419621, 23.306602>,  <30.401501, 32.571365, 23.488087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.361038, 32.419621, 23.306602>,  <30.293600, 32.166714, 23.004129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361038, 32.419621, 23.306602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258066, 0.768719, -0.585212,
		-0.951303, -0.096481, 0.292770,
		0.168597, 0.632268, 0.756183,
		30.411617, 32.609303, 23.533457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757637, 32.650143, 22.988621>,  <30.293600, 32.166714, 23.004129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757637, 32.650143, 22.988621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.055187, 32.823963, 23.191723>,  <30.233717, 32.928257, 23.313583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.055187, 32.823963, 23.191723>,  <29.757637, 32.650143, 22.988621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055187, 32.823963, 23.191723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211734, 0.873847, -0.437677,
		-0.633893, 0.218068, 0.742042,
		0.743874, 0.434555, 0.507753,
		30.278349, 32.954330, 23.344049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396269, 33.244091, 23.259062>,  <29.757637, 32.650143, 22.988621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396269, 33.244091, 23.259062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.794212, 33.283844, 23.266861>,  <30.032978, 33.307693, 23.271540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.794212, 33.283844, 23.266861>,  <29.396269, 33.244091, 23.259062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794212, 33.283844, 23.266861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079772, 0.887586, -0.453683,
		-0.062393, 0.449795, 0.890950,
		0.994859, 0.099380, 0.019498,
		30.092670, 33.313660, 23.272711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827955, 33.163437, 23.863693>,  <29.396269, 33.244091, 23.259062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827955, 33.163437, 23.863693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.671589, 33.514969, 23.973122>,  <28.577768, 33.725887, 24.038778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.671589, 33.514969, 23.973122>,  <28.827955, 33.163437, 23.863693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671589, 33.514969, 23.973122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330924, -0.411544, 0.849189,
		0.858879, 0.241431, 0.451705,
		-0.390917, 0.878830, 0.273572,
		28.554314, 33.778618, 24.055193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140961, 33.385559, 24.522930>,  <28.827955, 33.163437, 23.863693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140961, 33.385559, 24.522930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.760010, 33.494522, 24.468124>,  <28.531439, 33.559902, 24.435240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.760010, 33.494522, 24.468124>,  <29.140961, 33.385559, 24.522930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760010, 33.494522, 24.468124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253395, -0.457071, 0.852571,
		0.169624, 0.846687, 0.504331,
		-0.952375, 0.272411, -0.137015,
		28.474297, 33.576244, 24.427019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959942, 33.742008, 25.111408>,  <29.140961, 33.385559, 24.522930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959942, 33.742008, 25.111408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634090, 33.586872, 24.938915>,  <28.438580, 33.493790, 24.835421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.634090, 33.586872, 24.938915>,  <28.959942, 33.742008, 25.111408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634090, 33.586872, 24.938915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203797, -0.504692, 0.838900,
		-0.542999, 0.771275, 0.332095,
		-0.814628, -0.387842, -0.431230,
		28.389702, 33.470520, 24.809546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364763, 33.892548, 25.494932>,  <28.959942, 33.742008, 25.111408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364763, 33.892548, 25.494932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.240353, 33.573540, 25.288158>,  <28.165707, 33.382133, 25.164093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.240353, 33.573540, 25.288158>,  <28.364763, 33.892548, 25.494932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240353, 33.573540, 25.288158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413201, -0.376345, 0.829234,
		-0.855877, 0.471514, -0.212482,
		-0.311028, -0.797520, -0.516936,
		28.147043, 33.334282, 25.133078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802481, 33.721191, 25.822361>,  <28.364763, 33.892548, 25.494932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802481, 33.721191, 25.822361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.879627, 33.389149, 25.613087>,  <27.925915, 33.189922, 25.487522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.879627, 33.389149, 25.613087>,  <27.802481, 33.721191, 25.822361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879627, 33.389149, 25.613087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359238, -0.555913, 0.749606,
		-0.913100, 0.043376, -0.405422,
		0.192865, -0.830108, -0.523186,
		27.937487, 33.140118, 25.456131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263418, 33.326820, 25.766888>,  <27.802481, 33.721191, 25.822361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263418, 33.326820, 25.766888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543043, 33.050617, 25.692574>,  <27.710817, 32.884895, 25.647985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543043, 33.050617, 25.692574>,  <27.263418, 33.326820, 25.766888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543043, 33.050617, 25.692574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393509, -0.588428, 0.706331,
		-0.597055, -0.420653, -0.683065,
		0.699054, -0.690510, -0.185793,
		27.752762, 32.843464, 25.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896198, 32.704773, 25.677179>,  <27.263418, 33.326820, 25.766888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896198, 32.704773, 25.677179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.267706, 32.580536, 25.758095>,  <27.490610, 32.505993, 25.806644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.267706, 32.580536, 25.758095>,  <26.896198, 32.704773, 25.677179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267706, 32.580536, 25.758095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368328, -0.712236, 0.597540,
		-0.041512, -0.629486, -0.775902,
		0.928769, -0.310591, 0.202291,
		27.546337, 32.487358, 25.818783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806509, 31.983437, 25.633728>,  <26.896198, 32.704773, 25.677179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806509, 31.983437, 25.633728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.147596, 32.022964, 25.838905>,  <27.352249, 32.046680, 25.962011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.147596, 32.022964, 25.838905>,  <26.806509, 31.983437, 25.633728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147596, 32.022964, 25.838905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407910, -0.487438, 0.772019,
		0.326318, -0.867548, -0.375337,
		0.852717, 0.098819, 0.512941,
		27.403412, 32.052608, 25.992788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905975, 31.369024, 25.941908>,  <26.806509, 31.983437, 25.633728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905975, 31.369024, 25.941908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130205, 31.621445, 26.156395>,  <27.264744, 31.772896, 26.285088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130205, 31.621445, 26.156395>,  <26.905975, 31.369024, 25.941908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130205, 31.621445, 26.156395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288464, -0.458165, 0.840758,
		0.776237, -0.625988, -0.074800,
		0.560575, 0.631050, 0.536220,
		27.298378, 31.810760, 26.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358847, 30.950865, 26.361544>,  <26.905975, 31.369024, 25.941908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358847, 30.950865, 26.361544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362322, 31.308483, 26.540699>,  <27.364407, 31.523054, 26.648193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362322, 31.308483, 26.540699>,  <27.358847, 30.950865, 26.361544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362322, 31.308483, 26.540699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108749, -0.444405, 0.889201,
		0.994031, -0.056433, 0.093365,
		0.008689, 0.894047, 0.447890,
		27.364929, 31.576696, 26.675066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762472, 30.848320, 26.918804>,  <27.358847, 30.950865, 26.361544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762472, 30.848320, 26.918804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537788, 31.166351, 27.010311>,  <27.402979, 31.357170, 27.065216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537788, 31.166351, 27.010311>,  <27.762472, 30.848320, 26.918804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537788, 31.166351, 27.010311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065220, -0.318206, 0.945775,
		0.824760, 0.516331, 0.230594,
		-0.561710, 0.795077, 0.228769,
		27.369276, 31.404875, 27.078941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148922, 31.201670, 27.471157>,  <27.762472, 30.848320, 26.918804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148922, 31.201670, 27.471157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764235, 31.311268, 27.469368>,  <27.533422, 31.377028, 27.468294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764235, 31.311268, 27.469368>,  <28.148922, 31.201670, 27.471157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764235, 31.311268, 27.469368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115889, -0.391871, 0.912692,
		0.248321, 0.878273, 0.408623,
		-0.961721, 0.273996, -0.004473,
		27.475718, 31.393467, 27.468027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045065, 31.367506, 28.084238>,  <28.148922, 31.201670, 27.471157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045065, 31.367506, 28.084238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658421, 31.321667, 27.992561>,  <27.426434, 31.294163, 27.937555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.658421, 31.321667, 27.992561>,  <28.045065, 31.367506, 28.084238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658421, 31.321667, 27.992561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165211, -0.404994, 0.899269,
		-0.195875, 0.907109, 0.372540,
		-0.966612, -0.114596, -0.229193,
		27.368437, 31.287289, 27.923803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616186, 31.738844, 28.575672>,  <28.045065, 31.367506, 28.084238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616186, 31.738844, 28.575672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.404747, 31.440117, 28.414253>,  <27.277884, 31.260881, 28.317402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.404747, 31.440117, 28.414253>,  <27.616186, 31.738844, 28.575672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404747, 31.440117, 28.414253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068280, -0.436444, 0.897137,
		-0.846122, 0.501779, 0.179711,
		-0.528598, -0.746816, -0.403546,
		27.246168, 31.216072, 28.293190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039547, 31.800756, 28.982010>,  <27.616186, 31.738844, 28.575672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039547, 31.800756, 28.982010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060150, 31.435238, 28.820854>,  <27.072512, 31.215927, 28.724161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060150, 31.435238, 28.820854>,  <27.039547, 31.800756, 28.982010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060150, 31.435238, 28.820854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165036, -0.405666, 0.898998,
		-0.984942, 0.020185, -0.171705,
		0.051509, -0.913798, -0.402889,
		27.075603, 31.161098, 28.699987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657545, 31.397413, 29.400291>,  <27.039547, 31.800756, 28.982010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657545, 31.397413, 29.400291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.828615, 31.105156, 29.187405>,  <26.931257, 30.929802, 29.059673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.828615, 31.105156, 29.187405>,  <26.657545, 31.397413, 29.400291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828615, 31.105156, 29.187405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137511, -0.634516, 0.760579,
		-0.893412, -0.252096, -0.371838,
		0.427676, -0.730642, -0.532218,
		26.956919, 30.885963, 29.027739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262529, 30.763895, 29.568684>,  <26.657545, 31.397413, 29.400291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262529, 30.763895, 29.568684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.628016, 30.665085, 29.439621>,  <26.847307, 30.605799, 29.362185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.628016, 30.665085, 29.439621>,  <26.262529, 30.763895, 29.568684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628016, 30.665085, 29.439621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098634, -0.635449, 0.765817,
		-0.394205, -0.731562, -0.556254,
		0.913714, -0.247023, -0.322655,
		26.902130, 30.590977, 29.342825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339294, 30.053146, 29.808857>,  <26.262529, 30.763895, 29.568684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339294, 30.053146, 29.808857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.716448, 30.155334, 29.723343>,  <26.942739, 30.216646, 29.672035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.716448, 30.155334, 29.723343>,  <26.339294, 30.053146, 29.808857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716448, 30.155334, 29.723343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324543, -0.559807, 0.762422,
		0.075098, -0.788258, -0.610745,
		0.942885, 0.255469, -0.213784,
		26.999313, 30.231976, 29.659208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.785276, 29.460096, 29.801998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.077652, 29.732849, 29.813061>,  <27.253078, 29.896500, 29.819698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.077652, 29.732849, 29.813061>,  <26.785276, 29.460096, 29.801998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077652, 29.732849, 29.813061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427456, -0.489049, 0.760337,
		0.531983, -0.543940, -0.648940,
		0.730941, 0.681880, 0.027656,
		27.296934, 29.937412, 29.821358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353287, 29.050623, 29.945181>,  <26.785276, 29.460096, 29.801998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353287, 29.050623, 29.945181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450563, 29.426414, 30.041714>,  <27.508930, 29.651890, 30.099634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450563, 29.426414, 30.041714>,  <27.353287, 29.050623, 29.945181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450563, 29.426414, 30.041714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343250, -0.316055, 0.884471,
		0.907214, -0.132259, -0.399337,
		0.243192, 0.939477, 0.241332,
		27.523521, 29.708258, 30.114113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110085, 29.083111, 30.186880>,  <27.353287, 29.050623, 29.945181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110085, 29.083111, 30.186880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896261, 29.375050, 30.357327>,  <27.767967, 29.550213, 30.459595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896261, 29.375050, 30.357327>,  <28.110085, 29.083111, 30.186880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896261, 29.375050, 30.357327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337985, -0.277506, 0.899309,
		0.774606, 0.624753, -0.098334,
		-0.534558, 0.729845, 0.426115,
		27.735893, 29.594004, 30.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523121, 29.194223, 30.673046>,  <28.110085, 29.083111, 30.186880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523121, 29.194223, 30.673046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209225, 29.411018, 30.793335>,  <28.020887, 29.541096, 30.865507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209225, 29.411018, 30.793335>,  <28.523121, 29.194223, 30.673046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209225, 29.411018, 30.793335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252519, -0.163523, 0.953674,
		0.566054, 0.824324, -0.008539,
		-0.784740, 0.541987, 0.300720,
		27.973803, 29.573614, 30.883551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795176, 29.789585, 31.238087>,  <28.523121, 29.194223, 30.673046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795176, 29.789585, 31.238087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.412531, 29.677475, 31.269951>,  <28.182945, 29.610209, 31.289068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.412531, 29.677475, 31.269951>,  <28.795176, 29.789585, 31.238087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412531, 29.677475, 31.269951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157248, -0.266431, 0.950940,
		-0.245299, 0.922204, 0.298943,
		-0.956609, -0.280273, 0.079659,
		28.125547, 29.593393, 31.293848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615572, 29.895113, 31.940510>,  <28.795176, 29.789585, 31.238087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615572, 29.895113, 31.940510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311474, 29.671429, 31.808262>,  <28.129015, 29.537218, 31.728912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.311474, 29.671429, 31.808262>,  <28.615572, 29.895113, 31.940510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311474, 29.671429, 31.808262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007661, -0.501178, 0.865310,
		-0.649591, 0.660381, 0.376734,
		-0.760245, -0.559212, -0.330620,
		28.083401, 29.503666, 31.709076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252943, 29.808994, 32.601818>,  <28.615572, 29.895113, 31.940510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252943, 29.808994, 32.601818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151403, 29.509415, 32.356987>,  <28.090479, 29.329666, 32.210091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.151403, 29.509415, 32.356987>,  <28.252943, 29.808994, 32.601818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151403, 29.509415, 32.356987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124038, -0.602373, 0.788519,
		-0.959258, 0.276086, 0.060014,
		-0.253849, -0.748948, -0.612076,
		28.075249, 29.284731, 32.173363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669909, 29.416231, 32.988441>,  <28.252943, 29.808994, 32.601818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669909, 29.416231, 32.988441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837864, 29.189098, 32.705242>,  <27.938637, 29.052818, 32.535324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837864, 29.189098, 32.705242>,  <27.669909, 29.416231, 32.988441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837864, 29.189098, 32.705242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015406, -0.784442, 0.620010,
		-0.907445, -0.249428, -0.338126,
		0.419889, -0.567834, -0.707996,
		27.963831, 29.018747, 32.492844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200102, 28.875816, 33.044868>,  <27.669909, 29.416231, 32.988441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200102, 28.875816, 33.044868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.553223, 28.793133, 32.876141>,  <27.765095, 28.743523, 32.774902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.553223, 28.793133, 32.876141>,  <27.200102, 28.875816, 33.044868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553223, 28.793133, 32.876141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165942, -0.702851, 0.691711,
		-0.439462, -0.680641, -0.586175,
		0.882800, -0.206709, -0.421823,
		27.818062, 28.731119, 32.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228258, 28.186739, 32.955036>,  <27.200102, 28.875816, 33.044868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228258, 28.186739, 32.955036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.604053, 28.321369, 32.980587>,  <27.829531, 28.402147, 32.995918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.604053, 28.321369, 32.980587>,  <27.228258, 28.186739, 32.955036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604053, 28.321369, 32.980587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182699, -0.649969, 0.737673,
		0.289800, -0.681365, -0.672130,
		0.939488, 0.336575, 0.063876,
		27.885900, 28.422342, 32.999748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635904, 27.585501, 33.078636>,  <27.228258, 28.186739, 32.955036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635904, 27.585501, 33.078636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873638, 27.883293, 33.200298>,  <28.016279, 28.061970, 33.273296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873638, 27.883293, 33.200298>,  <27.635904, 27.585501, 33.078636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873638, 27.883293, 33.200298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211388, -0.509520, 0.834089,
		0.775940, -0.431432, -0.460200,
		0.594334, 0.744483, 0.304157,
		28.051939, 28.106638, 33.291546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179459, 27.220970, 33.404362>,  <27.635904, 27.585501, 33.078636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179459, 27.220970, 33.404362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.174173, 27.598419, 33.536667>,  <28.171003, 27.824888, 33.616051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.174173, 27.598419, 33.536667>,  <28.179459, 27.220970, 33.404362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174173, 27.598419, 33.536667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106975, -0.327562, 0.938754,
		0.994174, 0.047786, -0.096616,
		-0.013212, 0.943621, 0.330765,
		28.170210, 27.881506, 33.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608509, 27.138388, 33.902004>,  <28.179459, 27.220970, 33.404362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608509, 27.138388, 33.902004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419672, 27.481766, 33.982208>,  <28.306370, 27.687792, 34.030331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419672, 27.481766, 33.982208>,  <28.608509, 27.138388, 33.902004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419672, 27.481766, 33.982208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057531, -0.196964, 0.978721,
		0.879669, 0.473583, 0.043598,
		-0.472093, 0.858443, 0.200509,
		28.278044, 27.739298, 34.042362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956207, 27.400826, 34.516312>,  <28.608509, 27.138388, 33.902004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956207, 27.400826, 34.516312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610832, 27.602436, 34.507984>,  <28.403606, 27.723402, 34.502987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610832, 27.602436, 34.507984>,  <28.956207, 27.400826, 34.516312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610832, 27.602436, 34.507984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088837, -0.111299, 0.989808,
		0.496570, 0.856488, 0.140875,
		-0.863438, 0.504024, -0.020820,
		28.351801, 27.753643, 34.501740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863617, 27.990381, 35.139156>,  <28.956207, 27.400826, 34.516312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863617, 27.990381, 35.139156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.501064, 27.881035, 35.010319>,  <28.283533, 27.815428, 34.933018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.501064, 27.881035, 35.010319>,  <28.863617, 27.990381, 35.139156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501064, 27.881035, 35.010319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298461, -0.125223, 0.946171,
		-0.298984, 0.953724, 0.031911,
		-0.906383, -0.273366, -0.322089,
		28.229149, 27.799025, 34.913692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355568, 28.347933, 35.604576>,  <28.863617, 27.990381, 35.139156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355568, 28.347933, 35.604576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130272, 28.051979, 35.457428>,  <27.995094, 27.874407, 35.369137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130272, 28.051979, 35.457428>,  <28.355568, 28.347933, 35.604576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130272, 28.051979, 35.457428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453096, -0.095751, 0.886304,
		-0.690989, 0.665883, -0.281308,
		-0.563239, -0.739886, -0.367872,
		27.961300, 27.830013, 35.347065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643019, 28.484350, 35.586071>,  <28.355568, 28.347933, 35.604576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643019, 28.484350, 35.586071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.590122, 28.088619, 35.561604>,  <27.558384, 27.851181, 35.546925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.590122, 28.088619, 35.561604>,  <27.643019, 28.484350, 35.586071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590122, 28.088619, 35.561604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390479, -0.004721, 0.920600,
		-0.911065, 0.145623, -0.385688,
		-0.132239, -0.989329, -0.061164,
		27.550451, 27.791821, 35.543255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979681, 28.370667, 35.867512>,  <27.643019, 28.484350, 35.586071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979681, 28.370667, 35.867512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154520, 28.011032, 35.877209>,  <27.259422, 27.795252, 35.883026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.154520, 28.011032, 35.877209>,  <26.979681, 28.370667, 35.867512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154520, 28.011032, 35.877209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458241, -0.199425, 0.866167,
		-0.773927, -0.389705, -0.499167,
		0.437096, -0.899088, 0.024239,
		27.285648, 27.741306, 35.884480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467167, 27.929726, 36.150085>,  <26.979681, 28.370667, 35.867512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467167, 27.929726, 36.150085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.814529, 27.739124, 36.204948>,  <27.022947, 27.624763, 36.237865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.814529, 27.739124, 36.204948>,  <26.467167, 27.929726, 36.150085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814529, 27.739124, 36.204948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252194, -0.186283, 0.949577,
		-0.426925, -0.859212, -0.281941,
		0.868409, -0.476502, 0.137159,
		27.075052, 27.596174, 36.246098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386599, 27.442635, 36.694233>,  <26.467167, 27.929726, 36.150085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386599, 27.442635, 36.694233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.783352, 27.483406, 36.724632>,  <27.021404, 27.507870, 36.742874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.783352, 27.483406, 36.724632>,  <26.386599, 27.442635, 36.694233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783352, 27.483406, 36.724632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064923, -0.107920, 0.992037,
		0.109319, -0.988921, -0.100427,
		0.991884, 0.101928, 0.076002,
		27.080917, 27.513985, 36.747433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526194, 26.954618, 37.168945>,  <26.386599, 27.442635, 36.694233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526194, 26.954618, 37.168945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.853796, 27.184116, 37.166306>,  <27.050358, 27.321815, 37.164722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.853796, 27.184116, 37.166306>,  <26.526194, 26.954618, 37.168945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853796, 27.184116, 37.166306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150254, -0.203360, 0.967506,
		0.553762, -0.793385, -0.252761,
		0.819007, 0.573746, -0.006596,
		27.099499, 27.356239, 37.164326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069063, 26.527201, 37.340668>,  <26.526194, 26.954618, 37.168945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069063, 26.527201, 37.340668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172607, 26.904648, 37.423203>,  <27.234734, 27.131117, 37.472721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172607, 26.904648, 37.423203>,  <27.069063, 26.527201, 37.340668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172607, 26.904648, 37.423203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178485, -0.256666, 0.949877,
		0.949281, -0.209059, -0.234862,
		0.258861, 0.943619, 0.206334,
		27.250265, 27.187733, 37.485104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815063, 26.579319, 37.603268>,  <27.069063, 26.527201, 37.340668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815063, 26.579319, 37.603268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.565323, 26.863777, 37.732548>,  <27.415478, 27.034452, 37.810116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.565323, 26.863777, 37.732548>,  <27.815063, 26.579319, 37.603268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565323, 26.863777, 37.732548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355473, -0.109763, 0.928219,
		0.695574, 0.694423, -0.184262,
		-0.624352, 0.711146, 0.323197,
		27.378017, 27.077122, 37.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199106, 27.247334, 37.807594>,  <27.815063, 26.579319, 37.603268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199106, 27.247334, 37.807594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.853712, 27.159847, 37.989388>,  <27.646477, 27.107355, 38.098465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.853712, 27.159847, 37.989388>,  <28.199106, 27.247334, 37.807594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853712, 27.159847, 37.989388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490830, -0.156945, 0.857003,
		-0.116111, 0.963084, 0.242871,
		-0.863484, -0.218716, 0.454488,
		27.594667, 27.094233, 38.125732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842499, 26.758991, 37.929966>,  <28.199106, 27.247334, 37.807594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842499, 26.758991, 37.929966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208155, 26.615345, 37.854721>,  <29.427547, 26.529158, 37.809574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208155, 26.615345, 37.854721>,  <28.842499, 26.758991, 37.929966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208155, 26.615345, 37.854721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097428, 0.255803, -0.961807,
		0.393521, 0.897552, 0.198852,
		0.914138, -0.359118, -0.188111,
		29.482397, 26.507610, 37.798286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225681, 27.238705, 37.417484>,  <28.842499, 26.758991, 37.929966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225681, 27.238705, 37.417484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446337, 26.906097, 37.391346>,  <29.578730, 26.706533, 37.375664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.446337, 26.906097, 37.391346>,  <29.225681, 27.238705, 37.417484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446337, 26.906097, 37.391346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154894, 0.179112, -0.971559,
		0.819575, 0.525827, 0.227602,
		0.551639, -0.831519, -0.065348,
		29.611828, 26.656641, 37.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729921, 27.421629, 37.013569>,  <29.225681, 27.238705, 37.417484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729921, 27.421629, 37.013569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735437, 27.022579, 36.986568>,  <29.738747, 26.783150, 36.970367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735437, 27.022579, 36.986568>,  <29.729921, 27.421629, 37.013569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735437, 27.022579, 36.986568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150779, 0.068808, -0.986170,
		0.988471, 0.003423, 0.151370,
		0.013792, -0.997624, -0.067498,
		29.739574, 26.723291, 36.966320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336355, 27.337488, 36.714954>,  <29.729921, 27.421629, 37.013569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336355, 27.337488, 36.714954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136211, 26.999119, 36.641136>,  <30.016125, 26.796097, 36.596844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136211, 26.999119, 36.641136>,  <30.336355, 27.337488, 36.714954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136211, 26.999119, 36.641136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279291, 0.044056, -0.959195,
		0.819534, -0.531484, 0.214214,
		-0.500360, -0.845922, -0.184544,
		29.986103, 26.745342, 36.585773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815636, 26.808672, 36.351402>,  <30.336355, 27.337488, 36.714954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815636, 26.808672, 36.351402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424898, 26.746475, 36.292618>,  <30.190456, 26.709158, 36.257347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424898, 26.746475, 36.292618>,  <30.815636, 26.808672, 36.351402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424898, 26.746475, 36.292618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142143, 0.041741, -0.988966,
		0.159911, -0.986955, -0.018672,
		-0.976844, -0.155492, -0.146964,
		30.131845, 26.699827, 36.248528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842903, 26.366758, 35.794384>,  <30.815636, 26.808672, 36.351402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842903, 26.366758, 35.794384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473715, 26.518459, 35.820599>,  <30.252203, 26.609480, 35.836327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473715, 26.518459, 35.820599>,  <30.842903, 26.366758, 35.794384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473715, 26.518459, 35.820599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002857, 0.177034, -0.984201,
		-0.384865, -0.908199, -0.164480,
		-0.922968, 0.379255, 0.065540,
		30.196825, 26.632236, 35.840260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505627, 25.966442, 35.281937>,  <30.842903, 26.366758, 35.794384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505627, 25.966442, 35.281937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318419, 26.313416, 35.349483>,  <30.206093, 26.521599, 35.390011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318419, 26.313416, 35.349483>,  <30.505627, 25.966442, 35.281937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318419, 26.313416, 35.349483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105567, 0.244598, -0.963861,
		-0.877390, -0.433279, -0.206049,
		-0.468020, 0.867433, 0.168868,
		30.178013, 26.573645, 35.400143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061192, 26.132389, 34.615757>,  <30.505627, 25.966442, 35.281937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061192, 26.132389, 34.615757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017132, 26.500595, 34.765697>,  <29.990696, 26.721519, 34.855663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017132, 26.500595, 34.765697>,  <30.061192, 26.132389, 34.615757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017132, 26.500595, 34.765697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099485, 0.385466, -0.917343,
		-0.988923, -0.063754, -0.134037,
		-0.110151, 0.920517, 0.374854,
		29.984087, 26.776751, 34.878155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585526, 26.465246, 34.229694>,  <30.061192, 26.132389, 34.615757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585526, 26.465246, 34.229694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805710, 26.768700, 34.369106>,  <29.937820, 26.950771, 34.452751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805710, 26.768700, 34.369106>,  <29.585526, 26.465246, 34.229694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805710, 26.768700, 34.369106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071227, 0.373269, -0.924985,
		-0.831818, 0.533991, 0.151434,
		0.550460, 0.758633, 0.348526,
		29.970848, 26.996290, 34.473663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382669, 27.040682, 33.837009>,  <29.585526, 26.465246, 34.229694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382669, 27.040682, 33.837009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727118, 27.167782, 33.995758>,  <29.933786, 27.244041, 34.091007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727118, 27.167782, 33.995758>,  <29.382669, 27.040682, 33.837009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727118, 27.167782, 33.995758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203304, 0.500277, -0.841659,
		-0.465986, 0.805454, 0.366198,
		0.861118, 0.317752, 0.396875,
		29.985453, 27.263107, 34.114819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340981, 27.706207, 33.597752>,  <29.382669, 27.040682, 33.837009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340981, 27.706207, 33.597752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721453, 27.632366, 33.696690>,  <29.949736, 27.588062, 33.756054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721453, 27.632366, 33.696690>,  <29.340981, 27.706207, 33.597752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721453, 27.632366, 33.696690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296947, 0.328835, -0.896488,
		0.084157, 0.926169, 0.367598,
		0.951178, -0.184603, 0.247349,
		30.006805, 27.576984, 33.770893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702463, 28.292889, 33.475521>,  <29.340981, 27.706207, 33.597752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702463, 28.292889, 33.475521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982840, 28.009727, 33.440746>,  <30.151066, 27.839830, 33.419880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982840, 28.009727, 33.440746>,  <29.702463, 28.292889, 33.475521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982840, 28.009727, 33.440746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229075, 0.338892, -0.912511,
		0.675431, 0.619700, 0.399706,
		0.700940, -0.707901, -0.086940,
		30.193121, 27.797358, 33.414665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324732, 28.627886, 33.227421>,  <29.702463, 28.292889, 33.475521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324732, 28.627886, 33.227421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328205, 28.239639, 33.131229>,  <30.330290, 28.006691, 33.073513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.328205, 28.239639, 33.131229>,  <30.324732, 28.627886, 33.227421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328205, 28.239639, 33.131229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139846, 0.239302, -0.960821,
		0.990135, -0.025287, 0.137815,
		0.008683, -0.970616, -0.240478,
		30.330811, 27.948454, 33.059086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677561, 28.657072, 32.687893>,  <30.324732, 28.627886, 33.227421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677561, 28.657072, 32.687893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519663, 28.290745, 32.658352>,  <30.424923, 28.070950, 32.640629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519663, 28.290745, 32.658352>,  <30.677561, 28.657072, 32.687893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519663, 28.290745, 32.658352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017015, 0.087654, -0.996006,
		0.918633, -0.391913, -0.050184,
		-0.394746, -0.915817, -0.073854,
		30.401239, 28.015999, 32.636196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939690, 28.419279, 32.069843>,  <30.677561, 28.657072, 32.687893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939690, 28.419279, 32.069843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.661591, 28.144676, 32.155018>,  <30.494732, 27.979916, 32.206123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.661591, 28.144676, 32.155018>,  <30.939690, 28.419279, 32.069843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661591, 28.144676, 32.155018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178641, -0.121919, -0.976331,
		0.696219, -0.716830, -0.037874,
		-0.695246, -0.686506, 0.212938,
		30.453016, 27.938725, 32.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118172, 27.824409, 31.710890>,  <30.939690, 28.419279, 32.069843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118172, 27.824409, 31.710890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719217, 27.805565, 31.732796>,  <30.479845, 27.794258, 31.745939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719217, 27.805565, 31.732796>,  <31.118172, 27.824409, 31.710890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719217, 27.805565, 31.732796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048189, -0.130845, -0.990231,
		0.053819, -0.990282, 0.128233,
		-0.997387, -0.047114, 0.054762,
		30.420002, 27.791431, 31.749224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942667, 27.347168, 31.112495>,  <31.118172, 27.824409, 31.710890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942667, 27.347168, 31.112495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.606281, 27.541885, 31.206989>,  <30.404449, 27.658716, 31.263685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.606281, 27.541885, 31.206989>,  <30.942667, 27.347168, 31.112495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606281, 27.541885, 31.206989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229174, 0.075058, -0.970487,
		-0.490158, -0.870286, 0.048439,
		-0.840966, 0.486793, 0.236237,
		30.353991, 27.687923, 31.277861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383938, 27.067131, 30.762068>,  <30.942667, 27.347168, 31.112495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383938, 27.067131, 30.762068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.243807, 27.436287, 30.826000>,  <30.159727, 27.657780, 30.864361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.243807, 27.436287, 30.826000>,  <30.383938, 27.067131, 30.762068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243807, 27.436287, 30.826000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124667, 0.123184, -0.984522,
		-0.928293, -0.364833, 0.071899,
		-0.350329, 0.922888, 0.159833,
		30.138708, 27.713154, 30.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633390, 27.192572, 30.476974>,  <30.383938, 27.067131, 30.762068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633390, 27.192572, 30.476974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812428, 27.550045, 30.489563>,  <29.919849, 27.764528, 30.497116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812428, 27.550045, 30.489563>,  <29.633390, 27.192572, 30.476974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812428, 27.550045, 30.489563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225959, 0.147080, -0.962969,
		-0.865219, 0.423906, 0.267768,
		0.447592, 0.893684, 0.031472,
		29.946705, 27.818150, 30.499004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154140, 27.646490, 30.059395>,  <29.633390, 27.192572, 30.476974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154140, 27.646490, 30.059395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495836, 27.853924, 30.074078>,  <29.700853, 27.978384, 30.082888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495836, 27.853924, 30.074078>,  <29.154140, 27.646490, 30.059395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495836, 27.853924, 30.074078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066622, 0.179224, -0.981550,
		-0.515595, 0.836032, 0.187649,
		0.854238, 0.518584, 0.036709,
		29.752108, 28.009499, 30.085091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.658428, 42.693722, 18.553299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.988512, 42.744678, 18.333191>,  <23.186563, 42.775253, 18.201126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.988512, 42.744678, 18.333191>,  <22.658428, 42.693722, 18.553299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.988512, 42.744678, 18.333191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426249, -0.779669, 0.458723,
		-0.370592, -0.613096, -0.697693,
		0.825211, 0.127392, -0.550271,
		23.236074, 42.782894, 18.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770649, 42.103870, 18.110878>,  <22.658428, 42.693722, 18.553299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770649, 42.103870, 18.110878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134462, 42.263672, 18.156731>,  <23.352751, 42.359554, 18.184242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.134462, 42.263672, 18.156731>,  <22.770649, 42.103870, 18.110878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134462, 42.263672, 18.156731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352511, -0.887607, 0.296461,
		0.220186, -0.229233, -0.948141,
		0.909535, 0.399507, 0.114632,
		23.407324, 42.383522, 18.191120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195993, 41.554905, 17.749371>,  <22.770649, 42.103870, 18.110878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195993, 41.554905, 17.749371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402876, 41.762878, 18.021301>,  <23.527006, 41.887661, 18.184460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402876, 41.762878, 18.021301>,  <23.195993, 41.554905, 17.749371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402876, 41.762878, 18.021301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306954, -0.854166, 0.419738,
		0.798921, -0.008416, -0.601377,
		0.517208, 0.519933, 0.679828,
		23.558039, 41.918858, 18.225250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.835447, 41.191322, 17.748672>,  <23.195993, 41.554905, 17.749371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.835447, 41.191322, 17.748672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863094, 41.406212, 18.084915>,  <23.879683, 41.535145, 18.286661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863094, 41.406212, 18.084915>,  <23.835447, 41.191322, 17.748672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863094, 41.406212, 18.084915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341087, -0.804564, 0.486144,
		0.937487, 0.253119, -0.238847,
		0.069115, 0.537222, 0.840604,
		23.883829, 41.567379, 18.337097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.298016, 40.747059, 18.150143>,  <23.835447, 41.191322, 17.748672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.298016, 40.747059, 18.150143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.175976, 40.994682, 18.439606>,  <24.102753, 41.143257, 18.613283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.175976, 40.994682, 18.439606>,  <24.298016, 40.747059, 18.150143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175976, 40.994682, 18.439606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029147, -0.765602, 0.642654,
		0.951874, 0.174981, 0.251629,
		-0.305100, 0.619060, 0.723656,
		24.084446, 41.180401, 18.656702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781670, 40.778984, 18.740686>,  <24.298016, 40.747059, 18.150143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781670, 40.778984, 18.740686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.422169, 40.888920, 18.877338>,  <24.206469, 40.954884, 18.959330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.422169, 40.888920, 18.877338>,  <24.781670, 40.778984, 18.740686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.422169, 40.888920, 18.877338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008411, -0.768204, 0.640150,
		0.438380, 0.578209, 0.688112,
		-0.898751, 0.274841, 0.341628,
		24.152544, 40.971371, 18.979826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824791, 40.700176, 19.469231>,  <24.781670, 40.778984, 18.740686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824791, 40.700176, 19.469231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.437832, 40.683472, 19.369308>,  <24.205656, 40.673447, 19.309355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.437832, 40.683472, 19.369308>,  <24.824791, 40.700176, 19.469231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437832, 40.683472, 19.369308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105337, -0.830610, 0.546801,
		-0.230327, 0.555286, 0.799129,
		-0.967395, -0.041765, -0.249804,
		24.147614, 40.670940, 19.294367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433516, 40.654362, 20.088198>,  <24.824791, 40.700176, 19.469231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433516, 40.654362, 20.088198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162939, 40.542976, 19.815468>,  <24.000593, 40.476147, 19.651831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162939, 40.542976, 19.815468>,  <24.433516, 40.654362, 20.088198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162939, 40.542976, 19.815468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278542, -0.760277, 0.586850,
		-0.681791, 0.586887, 0.436721,
		-0.676443, -0.278464, -0.681823,
		23.960007, 40.459438, 19.610922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.764055, 40.701927, 20.481068>,  <24.433516, 40.654362, 20.088198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.764055, 40.701927, 20.481068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.741438, 40.435440, 20.183624>,  <23.727867, 40.275547, 20.005159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.741438, 40.435440, 20.183624>,  <23.764055, 40.701927, 20.481068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741438, 40.435440, 20.183624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166965, -0.728000, 0.664935,
		-0.984340, 0.161755, -0.070071,
		-0.056545, -0.666222, -0.743607,
		23.724474, 40.235573, 19.960543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.157188, 40.312187, 20.682316>,  <23.764055, 40.701927, 20.481068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.157188, 40.312187, 20.682316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.352139, 40.088032, 20.414455>,  <23.469109, 39.953537, 20.253738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.352139, 40.088032, 20.414455>,  <23.157188, 40.312187, 20.682316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.352139, 40.088032, 20.414455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111423, -0.800542, 0.588828,
		-0.866056, -0.212364, -0.452601,
		0.487372, -0.560388, -0.669652,
		23.498350, 39.919914, 20.213560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696510, 39.727036, 20.472006>,  <23.157188, 40.312187, 20.682316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696510, 39.727036, 20.472006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061800, 39.597675, 20.372860>,  <23.280973, 39.520058, 20.313372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061800, 39.597675, 20.372860>,  <22.696510, 39.727036, 20.472006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061800, 39.597675, 20.372860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086401, -0.748176, 0.657850,
		-0.398196, -0.579348, -0.711193,
		0.913222, -0.323401, -0.247864,
		23.335766, 39.500656, 20.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.648706, 38.997746, 20.297277>,  <22.696510, 39.727036, 20.472006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.648706, 38.997746, 20.297277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.019661, 39.086842, 20.417507>,  <23.242233, 39.140301, 20.489645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.019661, 39.086842, 20.417507>,  <22.648706, 38.997746, 20.297277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.019661, 39.086842, 20.417507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021490, -0.833829, 0.551604,
		0.373490, -0.505090, -0.778067,
		0.927385, 0.222739, 0.300573,
		23.297876, 39.153664, 20.507679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.901264, 38.314518, 20.337667>,  <22.648706, 38.997746, 20.297277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.901264, 38.314518, 20.337667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161777, 38.543610, 20.536789>,  <23.318087, 38.681065, 20.656261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161777, 38.543610, 20.536789>,  <22.901264, 38.314518, 20.337667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.161777, 38.543610, 20.536789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208067, -0.765650, 0.608678,
		0.729751, -0.292846, -0.617822,
		0.651284, 0.572732, 0.497802,
		23.357162, 38.715427, 20.686131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221941, 37.734932, 20.691690>,  <22.901264, 38.314518, 20.337667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221941, 37.734932, 20.691690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374481, 38.059700, 20.868484>,  <23.466005, 38.254562, 20.974562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.374481, 38.059700, 20.868484>,  <23.221941, 37.734932, 20.691690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.374481, 38.059700, 20.868484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350240, -0.569370, 0.743740,
		0.855514, -0.128824, -0.501498,
		0.381350, 0.811925, 0.441985,
		23.488886, 38.303276, 21.001080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950745, 37.690948, 20.709742>,  <23.221941, 37.734932, 20.691690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950745, 37.690948, 20.709742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791632, 37.892597, 21.016369>,  <23.696165, 38.013588, 21.200346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791632, 37.892597, 21.016369>,  <23.950745, 37.690948, 20.709742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791632, 37.892597, 21.016369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420764, -0.642235, 0.640696,
		0.815309, 0.577402, 0.043351,
		-0.397781, 0.504124, 0.766570,
		23.672297, 38.043835, 21.246340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487087, 37.619373, 21.366644>,  <23.950745, 37.690948, 20.709742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487087, 37.619373, 21.366644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162397, 37.767773, 21.547070>,  <23.967583, 37.856812, 21.655325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162397, 37.767773, 21.547070>,  <24.487087, 37.619373, 21.366644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162397, 37.767773, 21.547070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182014, -0.573161, 0.798973,
		0.554953, 0.730647, 0.397722,
		-0.811725, 0.371001, 0.451065,
		23.918880, 37.879074, 21.682388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725874, 37.768284, 22.006645>,  <24.487087, 37.619373, 21.366644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725874, 37.768284, 22.006645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.329456, 37.752907, 22.057793>,  <24.091606, 37.743679, 22.088480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.329456, 37.752907, 22.057793>,  <24.725874, 37.768284, 22.006645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329456, 37.752907, 22.057793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115873, -0.723450, 0.680584,
		0.066343, 0.689306, 0.721426,
		-0.991046, -0.038442, 0.127868,
		24.032143, 37.741375, 22.096153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580200, 37.766487, 22.780027>,  <24.725874, 37.768284, 22.006645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580200, 37.766487, 22.780027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255011, 37.598732, 22.618443>,  <24.059896, 37.498077, 22.521492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.255011, 37.598732, 22.618443>,  <24.580200, 37.766487, 22.780027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255011, 37.598732, 22.618443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117197, -0.797385, 0.591982,
		-0.570383, 0.433923, 0.697405,
		-0.812975, -0.419390, -0.403960,
		24.011118, 37.472916, 22.497255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185833, 37.552151, 23.375685>,  <24.580200, 37.766487, 22.780027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185833, 37.552151, 23.375685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.010248, 37.323574, 23.098335>,  <23.904898, 37.186428, 22.931925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.010248, 37.323574, 23.098335>,  <24.185833, 37.552151, 23.375685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.010248, 37.323574, 23.098335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107220, -0.732867, 0.671871,
		-0.892086, 0.369268, 0.260429,
		-0.438960, -0.571443, -0.693373,
		23.878559, 37.152142, 22.890324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485933, 37.420959, 23.636778>,  <24.185833, 37.552151, 23.375685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485933, 37.420959, 23.636778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573965, 37.141010, 23.364971>,  <23.626785, 36.973042, 23.201887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.573965, 37.141010, 23.364971>,  <23.485933, 37.420959, 23.636778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573965, 37.141010, 23.364971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242690, -0.713978, 0.656762,
		-0.944810, 0.020371, -0.326985,
		0.220081, -0.699871, -0.679518,
		23.639990, 36.931049, 23.161116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957251, 36.956646, 23.733479>,  <23.485933, 37.420959, 23.636778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957251, 36.956646, 23.733479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238232, 36.754169, 23.533348>,  <23.406820, 36.632683, 23.413269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238232, 36.754169, 23.533348>,  <22.957251, 36.956646, 23.733479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238232, 36.754169, 23.533348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159745, -0.797171, 0.582237,
		-0.693569, -0.329071, -0.640839,
		0.702455, -0.506192, -0.500326,
		23.448969, 36.602310, 23.383249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.208839, 36.813038, 23.534540>,  <22.957251, 36.956646, 23.733479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.208839, 36.813038, 23.534540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.826880, 36.710052, 23.475372>,  <21.597704, 36.648262, 23.439873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.826880, 36.710052, 23.475372>,  <22.208839, 36.813038, 23.534540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826880, 36.710052, 23.475372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107924, 0.765027, -0.634891,
		0.276623, -0.590293, -0.758310,
		-0.954899, -0.257465, -0.147918,
		21.540409, 36.632812, 23.430998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.049803, 36.807991, 22.889004>,  <22.208839, 36.813038, 23.534540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.049803, 36.807991, 22.889004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.702501, 36.866158, 23.078735>,  <21.494120, 36.901058, 23.192575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.702501, 36.866158, 23.078735>,  <22.049803, 36.807991, 22.889004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702501, 36.866158, 23.078735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169923, 0.811091, -0.559694,
		-0.466113, -0.566556, -0.679524,
		-0.868254, 0.145414, 0.474331,
		21.442024, 36.909782, 23.221035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.583128, 36.970016, 22.362303>,  <22.049803, 36.807991, 22.889004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.583128, 36.970016, 22.362303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404333, 37.117191, 22.688450>,  <21.297056, 37.205498, 22.884138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404333, 37.117191, 22.688450>,  <21.583128, 36.970016, 22.362303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404333, 37.117191, 22.688450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171844, 0.859197, -0.481923,
		-0.877880, -0.355528, -0.320821,
		-0.446986, 0.367939, 0.815368,
		21.270237, 37.227573, 22.933060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958292, 37.169312, 22.237986>,  <21.583128, 36.970016, 22.362303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958292, 37.169312, 22.237986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.011431, 37.386097, 22.569920>,  <21.043314, 37.516167, 22.769081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.011431, 37.386097, 22.569920>,  <20.958292, 37.169312, 22.237986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011431, 37.386097, 22.569920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178894, 0.836618, -0.517752,
		-0.974858, -0.079670, 0.208097,
		0.132849, 0.541962, 0.829836,
		21.051285, 37.548687, 22.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394793, 37.479084, 22.412695>,  <20.958292, 37.169312, 22.237986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394793, 37.479084, 22.412695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.658192, 37.705097, 22.611538>,  <20.816231, 37.840706, 22.730844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.658192, 37.705097, 22.611538>,  <20.394793, 37.479084, 22.412695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.658192, 37.705097, 22.611538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433940, 0.824743, -0.362622,
		-0.614882, 0.023070, 0.788282,
		0.658496, 0.565037, 0.497109,
		20.855740, 37.874607, 22.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025738, 38.113716, 22.502363>,  <20.394793, 37.479084, 22.412695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025738, 38.113716, 22.502363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.414421, 38.201004, 22.538502>,  <20.647631, 38.253380, 22.560184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.414421, 38.201004, 22.538502>,  <20.025738, 38.113716, 22.502363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414421, 38.201004, 22.538502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177048, 0.926187, -0.332915,
		-0.156329, 0.307500, 0.938619,
		0.971707, 0.218225, 0.090348,
		20.705933, 38.266472, 22.565605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068621, 38.773388, 22.833427>,  <20.025738, 38.113716, 22.502363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.068621, 38.773388, 22.833427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.413048, 38.737148, 22.633286>,  <20.619703, 38.715405, 22.513201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.413048, 38.737148, 22.633286>,  <20.068621, 38.773388, 22.833427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413048, 38.737148, 22.633286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056434, 0.960892, -0.271111,
		0.505348, 0.261682, 0.822281,
		0.861068, -0.090601, -0.500353,
		20.671368, 38.709969, 22.483179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379768, 39.329617, 23.115347>,  <20.068621, 38.773388, 22.833427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379768, 39.329617, 23.115347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.566040, 39.224247, 22.777412>,  <20.677803, 39.161026, 22.574652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.566040, 39.224247, 22.777412>,  <20.379768, 39.329617, 23.115347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566040, 39.224247, 22.777412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188577, 0.962282, -0.196094,
		0.864627, -0.068000, 0.497792,
		0.465681, -0.263420, -0.844838,
		20.705744, 39.145222, 22.523962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853069, 39.810688, 23.174433>,  <20.379768, 39.329617, 23.115347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853069, 39.810688, 23.174433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.870636, 39.691914, 22.792877>,  <20.881176, 39.620647, 22.563944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.870636, 39.691914, 22.792877>,  <20.853069, 39.810688, 23.174433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870636, 39.691914, 22.792877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103533, 0.951020, -0.291277,
		0.993656, -0.085967, 0.072507,
		0.043915, -0.296937, -0.953887,
		20.883810, 39.602833, 22.506712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.322212, 40.287243, 22.822378>,  <20.853069, 39.810688, 23.174433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.322212, 40.287243, 22.822378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.116959, 40.112450, 22.526882>,  <20.993807, 40.007572, 22.349585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.116959, 40.112450, 22.526882>,  <21.322212, 40.287243, 22.822378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116959, 40.112450, 22.526882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065312, 0.838318, -0.541255,
		0.855819, -0.325986, -0.401631,
		-0.513136, -0.436985, -0.738739,
		20.963018, 39.981354, 22.305260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615559, 40.588482, 22.140549>,  <21.322212, 40.287243, 22.822378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615559, 40.588482, 22.140549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259666, 40.432346, 22.045883>,  <21.046131, 40.338665, 21.989084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.259666, 40.432346, 22.045883>,  <21.615559, 40.588482, 22.140549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.259666, 40.432346, 22.045883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114196, 0.692301, -0.712516,
		0.441967, -0.606922, -0.660538,
		-0.889733, -0.390339, -0.236666,
		20.992746, 40.315243, 21.974884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734501, 40.369267, 21.461662>,  <21.615559, 40.588482, 22.140549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734501, 40.369267, 21.461662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.345589, 40.441307, 21.521309>,  <21.112242, 40.484531, 21.557096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.345589, 40.441307, 21.521309>,  <21.734501, 40.369267, 21.461662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345589, 40.441307, 21.521309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038781, 0.753128, -0.656730,
		-0.230580, -0.632742, -0.739236,
		-0.972280, 0.180097, 0.149118,
		21.053905, 40.495335, 21.566044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515533, 40.611282, 20.794680>,  <21.734501, 40.369267, 21.461662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515533, 40.611282, 20.794680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.223812, 40.700962, 21.053246>,  <21.048779, 40.754772, 21.208385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.223812, 40.700962, 21.053246>,  <21.515533, 40.611282, 20.794680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223812, 40.700962, 21.053246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163861, 0.860053, -0.483175,
		-0.664278, -0.458303, -0.590502,
		-0.729303, 0.224202, 0.646413,
		21.005020, 40.768223, 21.247169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950018, 40.789661, 20.433290>,  <21.515533, 40.611282, 20.794680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950018, 40.789661, 20.433290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855595, 40.975067, 20.774918>,  <20.798941, 41.086311, 20.979893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855595, 40.975067, 20.774918>,  <20.950018, 40.789661, 20.433290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855595, 40.975067, 20.774918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159736, 0.848440, -0.504613,
		-0.958520, -0.255543, -0.126240,
		-0.236058, 0.463517, 0.854066,
		20.784777, 41.114120, 21.031137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.427525, 41.239899, 20.314554>,  <20.950018, 40.789661, 20.433290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.427525, 41.239899, 20.314554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.594490, 41.372887, 20.652840>,  <20.694670, 41.452679, 20.855810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.594490, 41.372887, 20.652840>,  <20.427525, 41.239899, 20.314554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.594490, 41.372887, 20.652840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079775, 0.940482, -0.330349,
		-0.905208, 0.070426, 0.419094,
		0.417415, 0.332468, 0.845713,
		20.719715, 41.472626, 20.906553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.962257, 41.689453, 20.620342>,  <20.427525, 41.239899, 20.314554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.962257, 41.689453, 20.620342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.337608, 41.779461, 20.725273>,  <20.562819, 41.833466, 20.788231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.337608, 41.779461, 20.725273>,  <19.962257, 41.689453, 20.620342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337608, 41.779461, 20.725273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127152, 0.930558, -0.343358,
		-0.321372, 0.288844, 0.901825,
		0.938377, 0.225015, 0.262328,
		20.619122, 41.846966, 20.803972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856426, 42.414059, 20.958107>,  <19.962257, 41.689453, 20.620342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856426, 42.414059, 20.958107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.252872, 42.387642, 20.911922>,  <20.490740, 42.371792, 20.884212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.252872, 42.387642, 20.911922>,  <19.856426, 42.414059, 20.958107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252872, 42.387642, 20.911922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019497, 0.930778, -0.365065,
		0.131579, 0.359570, 0.923795,
		0.991114, -0.066046, -0.115460,
		20.550207, 42.367828, 20.877285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.156946, 43.052021, 21.169783>,  <19.856426, 42.414059, 20.958107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.156946, 43.052021, 21.169783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.429300, 42.890095, 20.925644>,  <20.592712, 42.792938, 20.779161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.429300, 42.890095, 20.925644>,  <20.156946, 43.052021, 21.169783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429300, 42.890095, 20.925644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208378, 0.905994, -0.368447,
		0.702123, 0.123687, 0.701231,
		0.680884, -0.404816, -0.610345,
		20.633566, 42.768650, 20.742540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803917, 43.408432, 21.301212>,  <20.156946, 43.052021, 21.169783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803917, 43.408432, 21.301212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.847656, 43.252396, 20.935509>,  <20.873899, 43.158775, 20.716085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.847656, 43.252396, 20.935509>,  <20.803917, 43.408432, 21.301212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847656, 43.252396, 20.935509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279408, 0.894753, -0.348350,
		0.953926, -0.217360, 0.206835,
		0.109349, -0.390091, -0.914260,
		20.880461, 43.135368, 20.661230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.490778, 43.513512, 21.090887>,  <20.803917, 43.408432, 21.301212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.490778, 43.513512, 21.090887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.293655, 43.469986, 20.745564>,  <21.175383, 43.443871, 20.538370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.293655, 43.469986, 20.745564>,  <21.490778, 43.513512, 21.090887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293655, 43.469986, 20.745564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467150, 0.803956, -0.368003,
		0.734106, -0.584648, -0.345361,
		-0.492808, -0.108818, -0.863307,
		21.145813, 43.437340, 20.486570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004026, 43.763458, 20.663765>,  <21.490778, 43.513512, 21.090887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004026, 43.763458, 20.663765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697617, 43.737053, 20.408001>,  <21.513771, 43.721210, 20.254543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.697617, 43.737053, 20.408001>,  <22.004026, 43.763458, 20.663765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697617, 43.737053, 20.408001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494189, 0.575634, -0.651478,
		0.411072, -0.815039, -0.408328,
		-0.766027, -0.066013, -0.639410,
		21.467808, 43.717247, 20.216177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.288376, 31.818050, 27.448172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668814, 31.701279, 27.488567>,  <26.897076, 31.631216, 27.512804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668814, 31.701279, 27.488567>,  <26.288376, 31.818050, 27.448172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668814, 31.701279, 27.488567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266758, 0.611358, -0.745038,
		0.155758, 0.735540, 0.659333,
		0.951094, -0.291929, 0.100987,
		26.954142, 31.613701, 27.518864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733873, 32.448158, 27.538044>,  <26.288376, 31.818050, 27.448172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733873, 32.448158, 27.538044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935434, 32.142895, 27.376221>,  <27.056372, 31.959736, 27.279127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935434, 32.142895, 27.376221>,  <26.733873, 32.448158, 27.538044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935434, 32.142895, 27.376221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249145, 0.576881, -0.777904,
		0.827047, 0.291196, 0.480831,
		0.503904, -0.763160, -0.404558,
		27.086605, 31.913946, 27.254854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267786, 32.768459, 27.195461>,  <26.733873, 32.448158, 27.538044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267786, 32.768459, 27.195461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300388, 32.404938, 27.031788>,  <27.319950, 32.186825, 26.933584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300388, 32.404938, 27.031788>,  <27.267786, 32.768459, 27.195461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300388, 32.404938, 27.031788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287152, 0.414552, -0.863534,
		0.954411, -0.047114, 0.294754,
		0.081506, -0.908805, -0.409182,
		27.324841, 32.132298, 26.909033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005199, 32.704018, 26.915615>,  <27.267786, 32.768459, 27.195461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005199, 32.704018, 26.915615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788055, 32.415199, 26.744057>,  <27.657768, 32.241909, 26.641121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788055, 32.415199, 26.744057>,  <28.005199, 32.704018, 26.915615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788055, 32.415199, 26.744057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302378, 0.308402, -0.901918,
		0.783498, -0.619306, 0.050911,
		-0.542862, -0.722045, -0.428896,
		27.625196, 32.198586, 26.615387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547054, 32.187572, 26.628872>,  <28.005199, 32.704018, 26.915615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547054, 32.187572, 26.628872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199432, 32.150463, 26.434498>,  <27.990858, 32.128197, 26.317873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199432, 32.150463, 26.434498>,  <28.547054, 32.187572, 26.628872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199432, 32.150463, 26.434498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438924, 0.308553, -0.843884,
		0.228226, -0.946672, -0.227430,
		-0.869056, -0.092772, -0.485937,
		27.938715, 32.122631, 26.288717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678436, 31.951342, 26.072035>,  <28.547054, 32.187572, 26.628872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678436, 31.951342, 26.072035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322392, 32.115078, 25.991898>,  <28.108765, 32.213322, 25.943815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322392, 32.115078, 25.991898>,  <28.678436, 31.951342, 26.072035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322392, 32.115078, 25.991898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428765, 0.603172, -0.672566,
		-0.154468, -0.684560, -0.712403,
		-0.890113, 0.409343, -0.200344,
		28.055357, 32.237881, 25.931795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628897, 31.899294, 25.360552>,  <28.678436, 31.951342, 26.072035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628897, 31.899294, 25.360552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378923, 32.194542, 25.462246>,  <28.228939, 32.371689, 25.523262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378923, 32.194542, 25.462246>,  <28.628897, 31.899294, 25.360552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378923, 32.194542, 25.462246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346968, 0.554337, -0.756521,
		-0.699335, -0.384565, -0.602528,
		-0.624935, 0.738120, 0.254235,
		28.191442, 32.415977, 25.538517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244421, 32.103283, 24.731764>,  <28.628897, 31.899294, 25.360552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244421, 32.103283, 24.731764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178255, 32.421524, 24.964882>,  <28.138556, 32.612469, 25.104753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178255, 32.421524, 24.964882>,  <28.244421, 32.103283, 24.731764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178255, 32.421524, 24.964882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089334, 0.600596, -0.794546,
		-0.982170, -0.079364, -0.170421,
		-0.165413, 0.795604, 0.582797,
		28.128632, 32.660206, 25.139721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801846, 32.416203, 24.344423>,  <28.244421, 32.103283, 24.731764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801846, 32.416203, 24.344423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920971, 32.710655, 24.587540>,  <27.992447, 32.887329, 24.733410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920971, 32.710655, 24.587540>,  <27.801846, 32.416203, 24.344423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920971, 32.710655, 24.587540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029085, 0.643384, -0.764990,
		-0.954181, 0.210146, 0.213019,
		0.297813, 0.736135, 0.607793,
		28.010315, 32.931496, 24.769878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280968, 32.965019, 24.266146>,  <27.801846, 32.416203, 24.344423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280968, 32.965019, 24.266146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622679, 33.114960, 24.410198>,  <27.827705, 33.204926, 24.496630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622679, 33.114960, 24.410198>,  <27.280968, 32.965019, 24.266146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622679, 33.114960, 24.410198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071043, 0.602110, -0.795246,
		-0.514941, 0.704945, 0.487738,
		0.854277, 0.374855, 0.360133,
		27.878962, 33.227417, 24.518238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250793, 33.681976, 24.148998>,  <27.280968, 32.965019, 24.266146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250793, 33.681976, 24.148998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641920, 33.650303, 24.226566>,  <27.876596, 33.631298, 24.273108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641920, 33.650303, 24.226566>,  <27.250793, 33.681976, 24.148998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641920, 33.650303, 24.226566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208689, 0.447701, -0.869490,
		-0.017972, 0.890671, 0.454293,
		0.977817, -0.079180, 0.193919,
		27.935265, 33.626549, 24.284742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552589, 34.388279, 23.873602>,  <27.250793, 33.681976, 24.148998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552589, 34.388279, 23.873602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826706, 34.098526, 23.903667>,  <27.991177, 33.924675, 23.921707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826706, 34.098526, 23.903667>,  <27.552589, 34.388279, 23.873602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826706, 34.098526, 23.903667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468650, 0.359638, -0.806863,
		0.557443, 0.588162, 0.585937,
		0.685291, -0.724380, 0.075164,
		28.032293, 33.881210, 23.926216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998531, 34.688709, 23.341610>,  <27.552589, 34.388279, 23.873602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998531, 34.688709, 23.341610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167843, 34.339928, 23.440025>,  <28.269430, 34.130661, 23.499075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167843, 34.339928, 23.440025>,  <27.998531, 34.688709, 23.341610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167843, 34.339928, 23.440025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591884, 0.060528, -0.803747,
		0.685936, 0.485837, 0.541714,
		0.423279, -0.871951, 0.246041,
		28.294827, 34.078342, 23.513838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756823, 34.688316, 23.268497>,  <27.998531, 34.688709, 23.341610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756823, 34.688316, 23.268497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594975, 34.330154, 23.194164>,  <28.497866, 34.115257, 23.149565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594975, 34.330154, 23.194164>,  <28.756823, 34.688316, 23.268497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594975, 34.330154, 23.194164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364216, 0.028609, -0.930875,
		0.838827, -0.444332, 0.314545,
		-0.404619, -0.895405, -0.185831,
		28.473589, 34.061531, 23.138414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913641, 35.374355, 23.221405>,  <28.756823, 34.688316, 23.268497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913641, 35.374355, 23.221405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772715, 35.573063, 23.538666>,  <28.688158, 35.692287, 23.729023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772715, 35.573063, 23.538666>,  <28.913641, 35.374355, 23.221405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772715, 35.573063, 23.538666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844728, -0.196028, 0.498004,
		0.402874, 0.845454, -0.350572,
		-0.352317, 0.496771, 0.793153,
		28.667019, 35.722095, 23.776611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560820, 35.613121, 23.505190>,  <28.913641, 35.374355, 23.221405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560820, 35.613121, 23.505190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291649, 35.694775, 23.789585>,  <29.130146, 35.743767, 23.960222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291649, 35.694775, 23.789585>,  <29.560820, 35.613121, 23.505190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291649, 35.694775, 23.789585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697145, -0.146335, 0.701837,
		0.247309, 0.967945, -0.043836,
		-0.672925, 0.204130, 0.710987,
		29.089771, 35.756012, 24.002882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902205, 36.014790, 23.966852>,  <29.560820, 35.613121, 23.505190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902205, 36.014790, 23.966852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593559, 35.877403, 24.181011>,  <29.408373, 35.794971, 24.309505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593559, 35.877403, 24.181011>,  <29.902205, 36.014790, 23.966852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593559, 35.877403, 24.181011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594908, -0.091717, 0.798544,
		-0.225164, 0.934677, 0.275098,
		-0.771612, -0.343462, 0.535396,
		29.362076, 35.774364, 24.341629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002926, 36.342449, 24.569832>,  <29.902205, 36.014790, 23.966852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002926, 36.342449, 24.569832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764496, 36.031960, 24.651974>,  <29.621437, 35.845665, 24.701258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764496, 36.031960, 24.651974>,  <30.002926, 36.342449, 24.569832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764496, 36.031960, 24.651974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413359, -0.077402, 0.907273,
		-0.688353, 0.625686, 0.366997,
		-0.596074, -0.776225, 0.205353,
		29.585674, 35.799091, 24.713579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701727, 36.496746, 25.221895>,  <30.002926, 36.342449, 24.569832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701727, 36.496746, 25.221895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638063, 36.102608, 25.197346>,  <29.599865, 35.866127, 25.182615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638063, 36.102608, 25.197346>,  <29.701727, 36.496746, 25.221895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638063, 36.102608, 25.197346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440626, -0.126529, 0.888729,
		-0.883469, 0.114405, 0.454305,
		-0.159158, -0.985344, -0.061374,
		29.590317, 35.807003, 25.178934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392649, 36.239849, 25.833019>,  <29.701727, 36.496746, 25.221895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392649, 36.239849, 25.833019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573313, 35.921509, 25.671711>,  <29.681711, 35.730503, 25.574926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573313, 35.921509, 25.671711>,  <29.392649, 36.239849, 25.833019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573313, 35.921509, 25.671711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422754, -0.207133, 0.882255,
		-0.785674, -0.568963, 0.242895,
		0.451659, -0.795850, -0.403271,
		29.708811, 35.682755, 25.550730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137028, 35.748363, 26.193190>,  <29.392649, 36.239849, 25.833019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137028, 35.748363, 26.193190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474016, 35.599998, 26.036900>,  <29.676208, 35.510979, 25.943125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474016, 35.599998, 26.036900>,  <29.137028, 35.748363, 26.193190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474016, 35.599998, 26.036900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286232, -0.306260, 0.907897,
		-0.456419, -0.876712, -0.151846,
		0.842469, -0.370918, -0.390725,
		29.726757, 35.488724, 25.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191820, 35.124500, 26.380581>,  <29.137028, 35.748363, 26.193190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191820, 35.124500, 26.380581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566628, 35.179996, 26.252365>,  <29.791512, 35.213295, 26.175436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566628, 35.179996, 26.252365>,  <29.191820, 35.124500, 26.380581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566628, 35.179996, 26.252365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346811, -0.478497, 0.806699,
		-0.041454, -0.867059, -0.496478,
		0.937018, 0.138743, -0.320541,
		29.847733, 35.221619, 26.156202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500120, 34.467922, 26.310852>,  <29.191820, 35.124500, 26.380581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500120, 34.467922, 26.310852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790485, 34.736092, 26.372280>,  <29.964705, 34.896992, 26.409138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790485, 34.736092, 26.372280>,  <29.500120, 34.467922, 26.310852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790485, 34.736092, 26.372280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265996, -0.479559, 0.836223,
		0.634271, -0.566175, -0.526447,
		0.725911, 0.670425, 0.153571,
		30.008259, 34.937218, 26.418352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044441, 34.060032, 26.581390>,  <29.500120, 34.467922, 26.310852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044441, 34.060032, 26.581390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209259, 34.411716, 26.677055>,  <30.308149, 34.622726, 26.734453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209259, 34.411716, 26.677055>,  <30.044441, 34.060032, 26.581390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209259, 34.411716, 26.677055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278384, -0.371405, 0.885754,
		0.867594, -0.298393, -0.397796,
		0.412047, 0.879215, 0.239161,
		30.332872, 34.675480, 26.748804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707705, 33.886398, 26.732092>,  <30.044441, 34.060032, 26.581390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707705, 33.886398, 26.732092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636513, 34.221119, 26.939201>,  <30.593798, 34.421951, 27.063467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636513, 34.221119, 26.939201>,  <30.707705, 33.886398, 26.732092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636513, 34.221119, 26.939201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311946, -0.451056, 0.836204,
		0.933281, 0.310344, -0.180758,
		-0.177979, 0.836800, 0.517773,
		30.583118, 34.472160, 27.094534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155931, 33.842506, 27.265123>,  <30.707705, 33.886398, 26.732092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155931, 33.842506, 27.265123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950792, 34.152637, 27.412556>,  <30.827709, 34.338715, 27.501015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950792, 34.152637, 27.412556>,  <31.155931, 33.842506, 27.265123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950792, 34.152637, 27.412556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283118, -0.252574, 0.925230,
		0.810451, 0.578856, -0.089977,
		-0.512849, 0.775327, 0.368583,
		30.796938, 34.385235, 27.523130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630741, 34.241848, 27.690451>,  <31.155931, 33.842506, 27.265123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630741, 34.241848, 27.690451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256805, 34.309418, 27.815376>,  <31.032444, 34.349960, 27.890331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256805, 34.309418, 27.815376>,  <31.630741, 34.241848, 27.690451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256805, 34.309418, 27.815376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201275, -0.472505, 0.858037,
		0.292509, 0.864989, 0.407717,
		-0.934841, 0.168921, 0.312312,
		30.976353, 34.360092, 27.909069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706135, 34.349472, 28.381161>,  <31.630741, 34.241848, 27.690451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706135, 34.349472, 28.381161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328371, 34.233776, 28.318642>,  <31.101713, 34.164360, 28.281130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328371, 34.233776, 28.318642>,  <31.706135, 34.349472, 28.381161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328371, 34.233776, 28.318642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030490, -0.550418, 0.834332,
		-0.327349, 0.783187, 0.528640,
		-0.944411, -0.289236, -0.156300,
		31.045048, 34.147007, 28.271751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355503, 34.546303, 28.663046>,  <31.706135, 34.349472, 28.381161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355503, 34.546303, 28.663046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680717, 34.313568, 28.654587>,  <32.875847, 34.173927, 28.649511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680717, 34.313568, 28.654587>,  <32.355503, 34.546303, 28.663046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680717, 34.313568, 28.654587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131314, 0.218639, -0.966930,
		0.567216, 0.783369, 0.254164,
		0.813033, -0.581833, -0.021148,
		32.924629, 34.139019, 28.648243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898926, 34.934635, 28.416622>,  <32.355503, 34.546303, 28.663046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898926, 34.934635, 28.416622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994476, 34.555313, 28.333042>,  <33.051807, 34.327721, 28.282894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994476, 34.555313, 28.333042>,  <32.898926, 34.934635, 28.416622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994476, 34.555313, 28.333042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149371, 0.248502, -0.957045,
		0.959493, 0.197404, 0.201010,
		0.238876, -0.948303, -0.208950,
		33.066139, 34.270821, 28.270357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439331, 35.026821, 28.049803>,  <32.898926, 34.934635, 28.416622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439331, 35.026821, 28.049803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356544, 34.654305, 27.929897>,  <33.306873, 34.430794, 27.857954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356544, 34.654305, 27.929897>,  <33.439331, 35.026821, 28.049803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356544, 34.654305, 27.929897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153341, 0.271730, -0.950079,
		0.966256, -0.242602, 0.086567,
		-0.206968, -0.931293, -0.299761,
		33.294453, 34.374916, 27.839970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044891, 34.786610, 27.549658>,  <33.439331, 35.026821, 28.049803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044891, 34.786610, 27.549658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727268, 34.555397, 27.474449>,  <33.536694, 34.416672, 27.429323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727268, 34.555397, 27.474449>,  <34.044891, 34.786610, 27.549658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727268, 34.555397, 27.474449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167089, 0.089840, -0.981840,
		0.584423, -0.811057, 0.025243,
		-0.794060, -0.578027, -0.188023,
		33.489052, 34.381989, 27.418041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277180, 34.256073, 27.108755>,  <34.044891, 34.786610, 27.549658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277180, 34.256073, 27.108755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882244, 34.231777, 27.050144>,  <33.645283, 34.217197, 27.014978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882244, 34.231777, 27.050144>,  <34.277180, 34.256073, 27.108755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882244, 34.231777, 27.050144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155626, -0.192364, -0.968905,
		0.030668, -0.979442, 0.199382,
		-0.987340, -0.060743, -0.146527,
		33.586040, 34.213554, 27.006186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143314, 33.665447, 26.760366>,  <34.277180, 34.256073, 27.108755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143314, 33.665447, 26.760366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836697, 33.906647, 26.672005>,  <33.652725, 34.051365, 26.618988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836697, 33.906647, 26.672005>,  <34.143314, 33.665447, 26.760366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836697, 33.906647, 26.672005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185377, -0.121571, -0.975118,
		-0.614852, -0.788423, -0.018593,
		-0.766546, 0.603000, -0.220904,
		33.606731, 34.087547, 26.605734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772816, 33.370335, 26.266628>,  <34.143314, 33.665447, 26.760366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772816, 33.370335, 26.266628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624748, 33.740936, 26.239609>,  <33.535908, 33.963299, 26.223396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624748, 33.740936, 26.239609>,  <33.772816, 33.370335, 26.266628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624748, 33.740936, 26.239609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004875, -0.074653, -0.997198,
		-0.928952, -0.368801, 0.032151,
		-0.370168, 0.926506, -0.067551,
		33.513699, 34.018887, 26.219343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238388, 33.375584, 25.647821>,  <33.772816, 33.370335, 26.266628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238388, 33.375584, 25.647821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 33.752411, 25.687511>,  <33.443443, 33.978508, 25.711325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 33.752411, 25.687511>,  <33.238388, 33.375584, 25.647821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366547, 33.752411, 25.687511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121211, 0.063113, -0.990618,
		-0.939496, 0.329421, -0.093968,
		0.320400, 0.942072, 0.099224,
		33.462666, 34.035034, 25.717279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949608, 33.698284, 25.088692>,  <33.238388, 33.375584, 25.647821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949608, 33.698284, 25.088692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227448, 33.963764, 25.199711>,  <33.394154, 34.123051, 25.266321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227448, 33.963764, 25.199711>,  <32.949608, 33.698284, 25.088692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227448, 33.963764, 25.199711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077043, 0.314957, -0.945974,
		-0.715258, 0.678458, 0.167636,
		0.694601, 0.663700, 0.277546,
		33.435829, 34.162872, 25.282974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873837, 34.145763, 24.614056>,  <32.949608, 33.698284, 25.088692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873837, 34.145763, 24.614056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221737, 34.252945, 24.779816>,  <33.430477, 34.317253, 24.879272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221737, 34.252945, 24.779816>,  <32.873837, 34.145763, 24.614056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221737, 34.252945, 24.779816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288653, 0.404864, -0.867620,
		-0.400258, 0.874235, 0.274786,
		0.869754, 0.267954, 0.414401,
		33.482662, 34.333332, 24.904137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024460, 34.816135, 24.411036>,  <32.873837, 34.145763, 24.614056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024460, 34.816135, 24.411036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386757, 34.691643, 24.526108>,  <33.604137, 34.616947, 24.595150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386757, 34.691643, 24.526108>,  <33.024460, 34.816135, 24.411036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386757, 34.691643, 24.526108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393311, 0.364368, -0.844122,
		0.157899, 0.877707, 0.452436,
		0.905745, -0.311234, 0.287678,
		33.658482, 34.598274, 24.612411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479656, 35.473095, 24.545666>,  <33.024460, 34.816135, 24.411036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479656, 35.473095, 24.545666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683338, 35.141628, 24.452694>,  <33.805546, 34.942749, 24.396910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683338, 35.141628, 24.452694>,  <33.479656, 35.473095, 24.545666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683338, 35.141628, 24.452694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403593, 0.468446, -0.785921,
		0.760147, 0.306387, 0.572978,
		0.509205, -0.828665, -0.232432,
		33.836102, 34.893028, 24.382965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.416252, 34.088226, 32.179985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611870, 33.740383, 32.152779>,  <32.729240, 33.531677, 32.136456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611870, 33.740383, 32.152779>,  <32.416252, 34.088226, 32.179985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611870, 33.740383, 32.152779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261712, 0.220669, -0.939581,
		0.832072, 0.441695, 0.335502,
		0.489043, -0.869604, -0.068016,
		32.758583, 33.479504, 32.132374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171982, 34.203442, 31.935911>,  <32.416252, 34.088226, 32.179985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171982, 34.203442, 31.935911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.052361, 33.830849, 31.853054>,  <32.980587, 33.607292, 31.803339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.052361, 33.830849, 31.853054>,  <33.171982, 34.203442, 31.935911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052361, 33.830849, 31.853054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290404, 0.117941, -0.949608,
		0.908975, -0.344135, 0.235236,
		-0.299050, -0.931483, -0.207144,
		32.962646, 33.551403, 31.790911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674118, 34.023300, 31.418333>,  <33.171982, 34.203442, 31.935911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674118, 34.023300, 31.418333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423935, 33.715488, 31.366753>,  <33.273827, 33.530800, 31.335804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423935, 33.715488, 31.366753>,  <33.674118, 34.023300, 31.418333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423935, 33.715488, 31.366753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116401, 0.071395, -0.990633,
		0.771530, -0.634605, 0.044920,
		-0.625453, -0.769532, -0.128952,
		33.236298, 33.484631, 31.328068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049458, 33.483143, 30.961317>,  <33.674118, 34.023300, 31.418333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049458, 33.483143, 30.961317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654861, 33.422447, 30.936588>,  <33.418106, 33.386032, 30.921751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654861, 33.422447, 30.936588>,  <34.049458, 33.483143, 30.961317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654861, 33.422447, 30.936588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079876, -0.115943, -0.990039,
		0.143057, -0.981597, 0.126497,
		-0.986486, -0.151736, -0.061820,
		33.358917, 33.376926, 30.918043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898327, 33.045685, 30.360748>,  <34.049458, 33.483143, 30.961317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898327, 33.045685, 30.360748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532307, 33.204197, 30.390789>,  <33.312695, 33.299305, 30.408813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532307, 33.204197, 30.390789>,  <33.898327, 33.045685, 30.360748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532307, 33.204197, 30.390789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098685, -0.039438, -0.994337,
		-0.391073, -0.917283, 0.075194,
		-0.915054, 0.396279, 0.075100,
		33.257790, 33.323082, 30.413319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406849, 32.746899, 29.870489>,  <33.898327, 33.045685, 30.360748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406849, 32.746899, 29.870489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201481, 33.080761, 29.950230>,  <33.078259, 33.281078, 29.998074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.201481, 33.080761, 29.950230>,  <33.406849, 32.746899, 29.870489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201481, 33.080761, 29.950230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181411, 0.121487, -0.975875,
		-0.838742, -0.537200, 0.089042,
		-0.513422, 0.834660, 0.199350,
		33.047455, 33.331158, 30.010035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740135, 32.715012, 29.463209>,  <33.406849, 32.746899, 29.870489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740135, 32.715012, 29.463209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816826, 33.099499, 29.542507>,  <32.862839, 33.330193, 29.590086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816826, 33.099499, 29.542507>,  <32.740135, 32.715012, 29.463209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816826, 33.099499, 29.542507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325142, 0.252792, -0.911251,
		-0.926026, 0.110250, 0.360999,
		0.191723, 0.961218, 0.198246,
		32.874344, 33.387863, 29.601980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335983, 33.110195, 29.018953>,  <32.740135, 32.715012, 29.463209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335983, 33.110195, 29.018953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.581841, 33.394695, 29.155392>,  <32.729355, 33.565395, 29.237255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.581841, 33.394695, 29.155392>,  <32.335983, 33.110195, 29.018953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581841, 33.394695, 29.155392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020870, 0.417603, -0.908390,
		-0.788531, 0.565452, 0.241832,
		0.614640, 0.711247, 0.341094,
		32.766232, 33.608070, 29.257719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104435, 33.800323, 28.835865>,  <32.335983, 33.110195, 29.018953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104435, 33.800323, 28.835865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500648, 33.826199, 28.884293>,  <32.738377, 33.841724, 28.913349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500648, 33.826199, 28.884293>,  <32.104435, 33.800323, 28.835865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500648, 33.826199, 28.884293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078696, 0.455021, -0.886996,
		-0.112468, 0.888128, 0.445623,
		0.990534, 0.064690, 0.121068,
		32.797810, 33.845604, 28.920612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480230, 34.272873, 29.067707>,  <32.104435, 33.800323, 28.835865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480230, 34.272873, 29.067707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182367, 34.122715, 28.846958>,  <31.003649, 34.032619, 28.714508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182367, 34.122715, 28.846958>,  <31.480230, 34.272873, 29.067707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182367, 34.122715, 28.846958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357022, -0.474576, 0.804558,
		-0.563933, 0.796151, 0.219373,
		-0.744658, -0.375395, -0.551872,
		30.958969, 34.010098, 28.681396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819059, 34.505436, 29.306690>,  <31.480230, 34.272873, 29.067707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819059, 34.505436, 29.306690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.775051, 34.154842, 29.119213>,  <30.748646, 33.944485, 29.006727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.775051, 34.154842, 29.119213>,  <30.819059, 34.505436, 29.306690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775051, 34.154842, 29.119213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262125, -0.429274, 0.864300,
		-0.958742, 0.217947, -0.182519,
		-0.110021, -0.876483, -0.468692,
		30.742044, 33.891899, 28.978605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346355, 34.266670, 29.611084>,  <30.819059, 34.505436, 29.306690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346355, 34.266670, 29.611084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444180, 33.926121, 29.425461>,  <30.502874, 33.721790, 29.314087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444180, 33.926121, 29.425461>,  <30.346355, 34.266670, 29.611084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444180, 33.926121, 29.425461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413083, -0.524468, 0.744510,
		-0.877241, 0.009616, -0.479954,
		0.244561, -0.851376, -0.464057,
		30.517548, 33.670708, 29.286243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717993, 33.932449, 29.672668>,  <30.346355, 34.266670, 29.611084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717993, 33.932449, 29.672668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.013348, 33.668922, 29.615063>,  <30.190561, 33.510807, 29.580500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.013348, 33.668922, 29.615063>,  <29.717993, 33.932449, 29.672668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013348, 33.668922, 29.615063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334257, -0.543018, 0.770327,
		-0.585709, -0.520662, -0.621172,
		0.738388, -0.658819, -0.144015,
		30.234863, 33.471275, 29.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466074, 33.189934, 29.684271>,  <29.717993, 33.932449, 29.672668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466074, 33.189934, 29.684271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854212, 33.114376, 29.744602>,  <30.087095, 33.069042, 29.780802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854212, 33.114376, 29.744602>,  <29.466074, 33.189934, 29.684271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854212, 33.114376, 29.744602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241589, -0.736931, 0.631322,
		-0.008101, -0.649039, -0.760712,
		0.970345, -0.188894, 0.150831,
		30.145315, 33.057709, 29.789852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529875, 32.488590, 29.578075>,  <29.466074, 33.189934, 29.684271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529875, 32.488590, 29.578075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854818, 32.603504, 29.781071>,  <30.049784, 32.672455, 29.902868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854818, 32.603504, 29.781071>,  <29.529875, 32.488590, 29.578075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854818, 32.603504, 29.781071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218272, -0.657187, 0.721431,
		0.540772, -0.696830, -0.471163,
		0.812357, 0.287287, 0.507486,
		30.098526, 32.689690, 29.933317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992350, 31.947388, 29.613590>,  <29.529875, 32.488590, 29.578075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992350, 31.947388, 29.613590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.084204, 32.194214, 29.914654>,  <30.139317, 32.342312, 30.095291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.084204, 32.194214, 29.914654>,  <29.992350, 31.947388, 29.613590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084204, 32.194214, 29.914654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155927, -0.740011, 0.654271,
		0.960705, -0.267605, -0.073716,
		0.229636, 0.617067, 0.752659,
		30.153095, 32.379333, 30.140451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290701, 31.509256, 29.971859>,  <29.992350, 31.947388, 29.613590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290701, 31.509256, 29.971859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176313, 31.803295, 30.217739>,  <30.107681, 31.979719, 30.365267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.176313, 31.803295, 30.217739>,  <30.290701, 31.509256, 29.971859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176313, 31.803295, 30.217739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153331, -0.668325, 0.727895,
		0.945892, 0.113901, 0.303833,
		-0.285967, 0.735097, 0.614699,
		30.090523, 32.023823, 30.402149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592253, 31.349792, 30.623476>,  <30.290701, 31.509256, 29.971859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592253, 31.349792, 30.623476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.318563, 31.621510, 30.729607>,  <30.154350, 31.784540, 30.793285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.318563, 31.621510, 30.729607>,  <30.592253, 31.349792, 30.623476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318563, 31.621510, 30.729607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197749, -0.523012, 0.829068,
		0.701952, 0.514798, 0.492186,
		-0.684222, 0.679295, 0.265329,
		30.113297, 31.825298, 30.809206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593102, 31.340443, 31.325903>,  <30.592253, 31.349792, 30.623476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593102, 31.340443, 31.325903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.259043, 31.547413, 31.251282>,  <30.058607, 31.671595, 31.206509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.259043, 31.547413, 31.251282>,  <30.593102, 31.340443, 31.325903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259043, 31.547413, 31.251282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416215, -0.372772, 0.829341,
		0.359581, 0.770267, 0.526679,
		-0.835145, 0.517427, -0.186555,
		30.008499, 31.702641, 31.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393377, 31.649384, 31.972769>,  <30.593102, 31.340443, 31.325903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393377, 31.649384, 31.972769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.065628, 31.612980, 31.746372>,  <29.868979, 31.591137, 31.610535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.065628, 31.612980, 31.746372>,  <30.393377, 31.649384, 31.972769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065628, 31.612980, 31.746372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556972, -0.107324, 0.823568,
		-0.135697, 0.990050, 0.037249,
		-0.819371, -0.091009, -0.565994,
		29.819817, 31.585676, 31.576574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942511, 32.169434, 32.244816>,  <30.393377, 31.649384, 31.972769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942511, 32.169434, 32.244816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.724398, 31.887558, 32.063232>,  <29.593531, 31.718433, 31.954281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.724398, 31.887558, 32.063232>,  <29.942511, 32.169434, 32.244816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724398, 31.887558, 32.063232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535917, -0.123357, 0.835210,
		-0.644563, 0.698710, -0.310391,
		-0.545281, -0.704689, -0.453962,
		29.560814, 31.676151, 31.927044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291447, 32.399555, 32.417156>,  <29.942511, 32.169434, 32.244816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291447, 32.399555, 32.417156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.288252, 32.014706, 32.308159>,  <29.286335, 31.783796, 32.242760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.288252, 32.014706, 32.308159>,  <29.291447, 32.399555, 32.417156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288252, 32.014706, 32.308159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409424, -0.245464, 0.878703,
		-0.912309, 0.118581, -0.391957,
		-0.007986, -0.962126, -0.272489,
		29.285856, 31.726068, 32.226414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663357, 32.250267, 32.617805>,  <29.291447, 32.399555, 32.417156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663357, 32.250267, 32.617805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.877346, 31.912418, 32.609680>,  <29.005739, 31.709709, 32.604805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.877346, 31.912418, 32.609680>,  <28.663357, 32.250267, 32.617805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877346, 31.912418, 32.609680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340738, -0.237693, 0.909615,
		-0.773110, -0.479700, -0.414955,
		0.534974, -0.844624, -0.020311,
		29.037838, 31.659031, 32.603588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.698761, 27.258617, 31.791601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566349, 27.621143, 31.896683>,  <32.486900, 27.838659, 31.959732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566349, 27.621143, 31.896683>,  <32.698761, 27.258617, 31.791601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566349, 27.621143, 31.896683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140649, 0.227898, -0.963473,
		-0.933079, -0.355888, 0.052031,
		-0.331031, 0.906314, 0.262703,
		32.467041, 27.893038, 31.975494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197739, 27.371904, 31.398502>,  <32.698761, 27.258617, 31.791601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197739, 27.371904, 31.398502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282303, 27.746811, 31.509384>,  <32.333042, 27.971754, 31.575912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282303, 27.746811, 31.509384>,  <32.197739, 27.371904, 31.398502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282303, 27.746811, 31.509384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155008, 0.312174, -0.937294,
		-0.965028, 0.155184, 0.211280,
		0.211409, 0.937265, 0.277202,
		32.345726, 28.027990, 31.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780745, 27.867243, 30.966309>,  <32.197739, 27.371904, 31.398502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780745, 27.867243, 30.966309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055645, 28.126087, 31.098328>,  <32.220585, 28.281395, 31.177540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055645, 28.126087, 31.098328>,  <31.780745, 27.867243, 30.966309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055645, 28.126087, 31.098328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023030, 0.434712, -0.900275,
		-0.726056, 0.626314, 0.283853,
		0.687249, 0.647113, 0.330050,
		32.261818, 28.320221, 31.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479868, 28.562845, 30.803335>,  <31.780745, 27.867243, 30.966309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479868, 28.562845, 30.803335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874277, 28.609093, 30.851322>,  <32.110924, 28.636841, 30.880114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874277, 28.609093, 30.851322>,  <31.479868, 28.562845, 30.803335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874277, 28.609093, 30.851322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050844, 0.476885, -0.877494,
		-0.158667, 0.871328, 0.464340,
		0.986022, 0.115620, 0.119968,
		32.170082, 28.643778, 30.887312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698040, 29.334919, 30.691669>,  <31.479868, 28.562845, 30.803335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698040, 29.334919, 30.691669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 29.087982, 30.631458>,  <32.192223, 28.939821, 30.595331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006905, 29.087982, 30.631458>,  <31.698040, 29.334919, 30.691669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006905, 29.087982, 30.631458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264741, 0.527904, -0.806988,
		0.577651, 0.583273, 0.571062,
		0.772160, -0.617341, -0.150529,
		32.238552, 28.902781, 30.586300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242310, 29.728310, 30.490889>,  <31.698040, 29.334919, 30.691669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242310, 29.728310, 30.490889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370365, 29.379875, 30.341908>,  <32.447197, 29.170815, 30.252520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370365, 29.379875, 30.341908>,  <32.242310, 29.728310, 30.490889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370365, 29.379875, 30.341908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297110, 0.465624, -0.833619,
		0.899576, 0.156216, 0.407873,
		0.320140, -0.871086, -0.372451,
		32.466408, 29.118549, 30.230173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715706, 29.961933, 30.187628>,  <32.242310, 29.728310, 30.490889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715706, 29.961933, 30.187628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705349, 29.596298, 30.025753>,  <32.699135, 29.376917, 29.928627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705349, 29.596298, 30.025753>,  <32.715706, 29.961933, 30.187628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705349, 29.596298, 30.025753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201248, 0.391770, -0.897783,
		0.979198, -0.104689, 0.173814,
		-0.025893, -0.914087, -0.404689,
		32.697582, 29.322071, 29.904346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310421, 29.833090, 29.820204>,  <32.715706, 29.961933, 30.187628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310421, 29.833090, 29.820204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038517, 29.591343, 29.653988>,  <32.875374, 29.446295, 29.554258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038517, 29.591343, 29.653988>,  <33.310421, 29.833090, 29.820204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038517, 29.591343, 29.653988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084821, 0.497983, -0.863029,
		0.728516, -0.621897, -0.287245,
		-0.679758, -0.604366, -0.415538,
		32.834591, 29.410034, 29.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621063, 29.560585, 29.321758>,  <33.310421, 29.833090, 29.820204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621063, 29.560585, 29.321758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235374, 29.524502, 29.222050>,  <33.003960, 29.502851, 29.162224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235374, 29.524502, 29.222050>,  <33.621063, 29.560585, 29.321758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235374, 29.524502, 29.222050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192435, 0.408558, -0.892216,
		0.182326, -0.908264, -0.376582,
		-0.964223, -0.090207, -0.249272,
		32.946106, 29.497440, 29.147268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615604, 29.503336, 28.636105>,  <33.621063, 29.560585, 29.321758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615604, 29.503336, 28.636105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228954, 29.588707, 28.692780>,  <32.996964, 29.639931, 28.726786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228954, 29.588707, 28.692780>,  <33.615604, 29.503336, 28.636105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228954, 29.588707, 28.692780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044435, 0.405016, -0.913229,
		-0.252296, -0.889050, -0.382017,
		-0.966629, 0.213429, 0.141689,
		32.938965, 29.652737, 28.735287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235184, 29.354092, 28.057159>,  <33.615604, 29.503336, 28.636105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235184, 29.354092, 28.057159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990376, 29.612587, 28.239502>,  <32.843491, 29.767685, 28.348907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990376, 29.612587, 28.239502>,  <33.235184, 29.354092, 28.057159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990376, 29.612587, 28.239502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114940, 0.497613, -0.859750,
		-0.782444, -0.578582, -0.230271,
		-0.612022, 0.646239, 0.455856,
		32.806770, 29.806459, 28.376259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609951, 29.241800, 27.746607>,  <33.235184, 29.354092, 28.057159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609951, 29.241800, 27.746607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641994, 29.608871, 27.902275>,  <32.661221, 29.829113, 27.995676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641994, 29.608871, 27.902275>,  <32.609951, 29.241800, 27.746607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641994, 29.608871, 27.902275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186481, 0.397330, -0.898529,
		-0.979187, -0.000595, 0.202958,
		0.080106, 0.917676, 0.389171,
		32.666027, 29.884174, 28.019026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929817, 29.664597, 27.692150>,  <32.609951, 29.241800, 27.746607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929817, 29.664597, 27.692150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216286, 29.933083, 27.768639>,  <32.388168, 30.094173, 27.814531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216286, 29.933083, 27.768639>,  <31.929817, 29.664597, 27.692150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216286, 29.933083, 27.768639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218129, 0.475531, -0.852227,
		-0.662960, 0.568631, 0.486973,
		0.716173, 0.671215, 0.191223,
		32.431137, 30.134447, 27.826006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722727, 30.299198, 27.501753>,  <31.929817, 29.664597, 27.692150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722727, 30.299198, 27.501753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117317, 30.364101, 27.511021>,  <32.354073, 30.403044, 27.516582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117317, 30.364101, 27.511021>,  <31.722727, 30.299198, 27.501753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117317, 30.364101, 27.511021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063612, 0.509301, -0.858235,
		-0.151055, 0.845154, 0.512735,
		0.986477, 0.162257, 0.023171,
		32.413261, 30.412779, 27.517971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110823, 30.565590, 27.215227>,  <31.722727, 30.299198, 27.501753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110823, 30.565590, 27.215227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902966, 30.301266, 26.998596>,  <30.778252, 30.142672, 26.868618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902966, 30.301266, 26.998596>,  <31.110823, 30.565590, 27.215227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902966, 30.301266, 26.998596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231418, -0.501322, 0.833740,
		-0.822446, 0.558576, 0.107585,
		-0.519642, -0.660809, -0.541575,
		30.747072, 30.103024, 26.836124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395390, 30.516258, 27.545815>,  <31.110823, 30.565590, 27.215227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395390, 30.516258, 27.545815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.450420, 30.191120, 27.319416>,  <30.483438, 29.996037, 27.183577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.450420, 30.191120, 27.319416>,  <30.395390, 30.516258, 27.545815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450420, 30.191120, 27.319416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233251, -0.581949, 0.779056,
		-0.962635, 0.024839, -0.269661,
		0.137578, -0.812846, -0.565998,
		30.491693, 29.947266, 27.149616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804121, 30.143280, 27.696852>,  <30.395390, 30.516258, 27.545815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804121, 30.143280, 27.696852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.035900, 29.859093, 27.537113>,  <30.174967, 29.688581, 27.441271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.035900, 29.859093, 27.537113>,  <29.804121, 30.143280, 27.696852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035900, 29.859093, 27.537113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374566, -0.667322, 0.643725,
		-0.723839, -0.223423, -0.652794,
		0.579446, -0.710467, -0.399347,
		30.209734, 29.645952, 27.417309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400402, 29.561417, 27.541458>,  <29.804121, 30.143280, 27.696852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400402, 29.561417, 27.541458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.776714, 29.429249, 27.571800>,  <30.002502, 29.349947, 27.590006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.776714, 29.429249, 27.571800>,  <29.400402, 29.561417, 27.541458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776714, 29.429249, 27.571800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249184, -0.522246, 0.815577,
		-0.229868, -0.786181, -0.573654,
		0.940780, -0.330421, 0.075856,
		30.058949, 29.330122, 27.594557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352818, 28.924316, 27.802469>,  <29.400402, 29.561417, 27.541458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352818, 28.924316, 27.802469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.739454, 28.993355, 27.878273>,  <29.971436, 29.034779, 27.923756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.739454, 28.993355, 27.878273>,  <29.352818, 28.924316, 27.802469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739454, 28.993355, 27.878273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033254, -0.648637, 0.760371,
		0.254160, -0.741269, -0.621227,
		0.966591, 0.172597, 0.189508,
		30.029432, 29.045134, 27.935125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649944, 28.250895, 27.815752>,  <29.352818, 28.924316, 27.802469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649944, 28.250895, 27.815752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904034, 28.493835, 28.006588>,  <30.056488, 28.639601, 28.121090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904034, 28.493835, 28.006588>,  <29.649944, 28.250895, 27.815752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904034, 28.493835, 28.006588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046633, -0.586439, 0.808650,
		0.770919, -0.535921, -0.344198,
		0.635224, 0.607353, 0.477089,
		30.094601, 28.676041, 28.149715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186037, 27.879368, 28.039896>,  <29.649944, 28.250895, 27.815752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186037, 27.879368, 28.039896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214983, 28.204430, 28.271191>,  <30.232349, 28.399466, 28.409967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214983, 28.204430, 28.271191>,  <30.186037, 27.879368, 28.039896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214983, 28.204430, 28.271191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059240, -0.575233, 0.815842,
		0.995618, -0.093292, 0.006515,
		0.072363, 0.812652, 0.578239,
		30.236692, 28.448225, 28.444662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591022, 27.630678, 28.632263>,  <30.186037, 27.879368, 28.039896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591022, 27.630678, 28.632263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.421986, 27.966637, 28.768494>,  <30.320564, 28.168211, 28.850233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.421986, 27.966637, 28.768494>,  <30.591022, 27.630678, 28.632263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421986, 27.966637, 28.768494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047860, -0.395937, 0.917030,
		0.905055, 0.371230, 0.207518,
		-0.422593, 0.839894, 0.340578,
		30.295208, 28.218605, 28.870667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934654, 27.806507, 29.255655>,  <30.591022, 27.630678, 28.632263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934654, 27.806507, 29.255655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616753, 28.046169, 29.294392>,  <30.426012, 28.189966, 29.317633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616753, 28.046169, 29.294392>,  <30.934654, 27.806507, 29.255655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616753, 28.046169, 29.294392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044889, -0.101091, 0.993864,
		0.605268, 0.794226, 0.053447,
		-0.794755, 0.599155, 0.096839,
		30.378326, 28.225916, 29.323444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029116, 28.174355, 29.894297>,  <30.934654, 27.806507, 29.255655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029116, 28.174355, 29.894297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640051, 28.226452, 29.817387>,  <30.406612, 28.257710, 29.771240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640051, 28.226452, 29.817387>,  <31.029116, 28.174355, 29.894297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640051, 28.226452, 29.817387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182938, 0.080330, 0.979837,
		0.143061, 0.988223, -0.054308,
		-0.972660, 0.130241, -0.192275,
		30.348253, 28.265524, 29.759705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742231, 28.753420, 30.234772>,  <31.029116, 28.174355, 29.894297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742231, 28.753420, 30.234772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.426136, 28.510567, 30.201511>,  <30.236479, 28.364855, 30.181555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.426136, 28.510567, 30.201511>,  <30.742231, 28.753420, 30.234772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426136, 28.510567, 30.201511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144966, 0.053371, 0.987996,
		-0.595407, 0.792806, -0.130189,
		-0.790237, -0.607133, -0.083153,
		30.189064, 28.328426, 30.176565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341017, 29.075590, 30.687393>,  <30.742231, 28.753420, 30.234772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341017, 29.075590, 30.687393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206722, 28.703812, 30.626190>,  <30.126146, 28.480745, 30.589468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206722, 28.703812, 30.626190>,  <30.341017, 29.075590, 30.687393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206722, 28.703812, 30.626190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104784, -0.124578, 0.986662,
		-0.936110, 0.347290, -0.055566,
		-0.335735, -0.929446, -0.153009,
		30.106001, 28.424978, 30.580288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739973, 28.942057, 31.112686>,  <30.341017, 29.075590, 30.687393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739973, 28.942057, 31.112686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870005, 28.567619, 31.058949>,  <29.948025, 28.342957, 31.026707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870005, 28.567619, 31.058949>,  <29.739973, 28.942057, 31.112686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870005, 28.567619, 31.058949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202537, -0.207679, 0.957000,
		-0.923743, -0.283893, -0.257106,
		0.325081, -0.936095, -0.134344,
		29.967529, 28.286791, 31.018646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321615, 28.501150, 31.509724>,  <29.739973, 28.942057, 31.112686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321615, 28.501150, 31.509724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629009, 28.255432, 31.438091>,  <29.813446, 28.108002, 31.395111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629009, 28.255432, 31.438091>,  <29.321615, 28.501150, 31.509724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629009, 28.255432, 31.438091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100605, -0.160396, 0.981912,
		-0.631910, -0.772601, -0.061461,
		0.768485, -0.614297, -0.179083,
		29.859554, 28.071144, 31.384367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483953, 28.179190, 31.553709>,  <29.321615, 28.501150, 31.509724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483953, 28.179190, 31.553709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325459, 28.427521, 31.824284>,  <28.230362, 28.576519, 31.986629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325459, 28.427521, 31.824284>,  <28.483953, 28.179190, 31.553709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325459, 28.427521, 31.824284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370536, 0.565955, -0.736477,
		-0.840059, -0.542464, 0.005786,
		-0.396238, 0.620828, 0.676438,
		28.206587, 28.613770, 32.027214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830959, 28.331490, 31.355871>,  <28.483953, 28.179190, 31.553709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830959, 28.331490, 31.355871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928223, 28.631393, 31.602036>,  <27.986580, 28.811337, 31.749735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.928223, 28.631393, 31.602036>,  <27.830959, 28.331490, 31.355871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928223, 28.631393, 31.602036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352314, 0.659391, -0.664137,
		-0.903742, -0.055329, 0.424486,
		0.243156, 0.749761, 0.615413,
		28.001169, 28.856321, 31.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166557, 28.680651, 31.403252>,  <27.830959, 28.331490, 31.355871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166557, 28.680651, 31.403252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.462788, 28.931526, 31.499733>,  <27.640526, 29.082052, 31.557623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.462788, 28.931526, 31.499733>,  <27.166557, 28.680651, 31.403252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462788, 28.931526, 31.499733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187431, 0.537505, -0.822167,
		-0.645303, 0.563669, 0.515618,
		0.740577, 0.627190, 0.241204,
		27.684961, 29.119682, 31.572094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868370, 29.305525, 31.421186>,  <27.166557, 28.680651, 31.403252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868370, 29.305525, 31.421186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258036, 29.380375, 31.370605>,  <27.491835, 29.425285, 31.340258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258036, 29.380375, 31.370605>,  <26.868370, 29.305525, 31.421186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258036, 29.380375, 31.370605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211578, 0.560315, -0.800801,
		-0.078995, 0.806866, 0.585429,
		0.974164, 0.187123, -0.126453,
		27.550285, 29.436512, 31.332670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863737, 30.004948, 31.297924>,  <26.868370, 29.305525, 31.421186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863737, 30.004948, 31.297924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212576, 29.862118, 31.164093>,  <27.421879, 29.776419, 31.083796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212576, 29.862118, 31.164093>,  <26.863737, 30.004948, 31.297924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212576, 29.862118, 31.164093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080201, 0.570192, -0.817587,
		0.482714, 0.739850, 0.468625,
		0.872098, -0.357077, -0.334576,
		27.474205, 29.754995, 31.063721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192265, 30.657581, 30.937813>,  <26.863737, 30.004948, 31.297924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192265, 30.657581, 30.937813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.371231, 30.326466, 30.802410>,  <27.478611, 30.127796, 30.721169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.371231, 30.326466, 30.802410>,  <27.192265, 30.657581, 30.937813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371231, 30.326466, 30.802410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007882, 0.382140, -0.924071,
		0.894292, 0.410775, 0.177500,
		0.447415, -0.827788, -0.338507,
		27.505455, 30.078129, 30.700857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723738, 30.920601, 30.534863>,  <27.192265, 30.657581, 30.937813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723738, 30.920601, 30.534863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.646852, 30.551590, 30.401001>,  <27.600721, 30.330183, 30.320684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.646852, 30.551590, 30.401001>,  <27.723738, 30.920601, 30.534863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646852, 30.551590, 30.401001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008535, 0.339429, -0.940593,
		0.981316, -0.183649, -0.057369,
		-0.192212, -0.922530, -0.334654,
		27.589190, 30.274832, 30.300604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161892, 30.898312, 29.947969>,  <27.723738, 30.920601, 30.534863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161892, 30.898312, 29.947969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.906410, 30.592999, 29.909069>,  <27.753122, 30.409811, 29.885729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.906410, 30.592999, 29.909069>,  <28.161892, 30.898312, 29.947969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906410, 30.592999, 29.909069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208287, 0.293175, -0.933094,
		0.740726, -0.575715, -0.346234,
		-0.638703, -0.763283, -0.097249,
		27.714800, 30.364014, 29.879894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199057, 30.708145, 29.231100>,  <28.161892, 30.898312, 29.947969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199057, 30.708145, 29.231100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.843534, 30.589958, 29.371227>,  <27.630220, 30.519047, 29.455303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.843534, 30.589958, 29.371227>,  <28.199057, 30.708145, 29.231100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843534, 30.589958, 29.371227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409544, 0.169056, -0.896490,
		0.205666, -0.940274, -0.271268,
		-0.888805, -0.295474, 0.350314,
		27.576893, 30.501318, 29.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977535, 30.196705, 28.811214>,  <28.199057, 30.708145, 29.231100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977535, 30.196705, 28.811214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.654434, 30.346451, 28.993374>,  <27.460573, 30.436298, 29.102669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.654434, 30.346451, 28.993374>,  <27.977535, 30.196705, 28.811214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654434, 30.346451, 28.993374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398641, 0.222235, -0.889773,
		-0.434305, -0.900257, -0.030274,
		-0.807753, 0.374365, 0.455398,
		27.412107, 30.458759, 29.129993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408068, 29.836720, 28.520809>,  <27.977535, 30.196705, 28.811214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408068, 29.836720, 28.520809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.257313, 30.180210, 28.659687>,  <27.166859, 30.386305, 28.743013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.257313, 30.180210, 28.659687>,  <27.408068, 29.836720, 28.520809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257313, 30.180210, 28.659687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156669, 0.310333, -0.937629,
		-0.912912, -0.407777, 0.017575,
		-0.376890, 0.858726, 0.347193,
		27.144245, 30.437828, 28.763845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933374, 30.006495, 28.097017>,  <27.408068, 29.836720, 28.520809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933374, 30.006495, 28.097017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.990868, 30.353138, 28.288151>,  <27.025364, 30.561125, 28.402832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.990868, 30.353138, 28.288151>,  <26.933374, 30.006495, 28.097017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990868, 30.353138, 28.288151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322693, 0.497500, -0.805210,
		-0.935527, -0.038460, 0.351156,
		0.143732, 0.866611, 0.477836,
		27.033987, 30.613121, 28.431501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375954, 30.396782, 27.850796>,  <26.933374, 30.006495, 28.097017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375954, 30.396782, 27.850796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.650705, 30.660618, 27.972870>,  <26.815556, 30.818920, 28.046114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.650705, 30.660618, 27.972870>,  <26.375954, 30.396782, 27.850796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650705, 30.660618, 27.972870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194440, 0.571393, -0.797310,
		-0.700278, 0.488315, 0.520729,
		0.686880, 0.659589, 0.305186,
		26.856770, 30.858494, 28.064426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155458, 31.036858, 27.581812>,  <26.375954, 30.396782, 27.850796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155458, 31.036858, 27.581812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.537529, 31.116703, 27.669258>,  <26.766771, 31.164610, 27.721725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.537529, 31.116703, 27.669258>,  <26.155458, 31.036858, 27.581812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537529, 31.116703, 27.669258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041922, 0.639830, -0.767372,
		-0.293056, 0.742141, 0.602782,
		0.955176, 0.199613, 0.218618,
		26.824081, 31.176586, 27.734844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.931709, 36.284576, 16.702530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953533, 36.667130, 16.817326>,  <36.966629, 36.896660, 16.886204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953533, 36.667130, 16.817326>,  <36.931709, 36.284576, 16.702530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953533, 36.667130, 16.817326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363572, -0.286716, 0.886346,
		0.929967, 0.055980, -0.363356,
		0.054562, 0.956379, 0.286989,
		36.969902, 36.954044, 16.903423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462818, 36.306194, 17.037708>,  <36.931709, 36.284576, 16.702530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462818, 36.306194, 17.037708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.291004, 36.638031, 17.180412>,  <37.187916, 36.837132, 17.266035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.291004, 36.638031, 17.180412>,  <37.462818, 36.306194, 17.037708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291004, 36.638031, 17.180412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024635, -0.405678, 0.913684,
		0.902716, 0.383667, 0.194689,
		-0.429532, 0.829593, 0.356761,
		37.162144, 36.886909, 17.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926273, 36.698376, 17.511566>,  <37.462818, 36.306194, 17.037708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926273, 36.698376, 17.511566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.540379, 36.770187, 17.588570>,  <37.308842, 36.813274, 17.634771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.540379, 36.770187, 17.588570>,  <37.926273, 36.698376, 17.511566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540379, 36.770187, 17.588570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115402, -0.368841, 0.922301,
		0.236589, 0.911989, 0.335114,
		-0.964732, 0.179533, 0.192509,
		37.250957, 36.824047, 17.646322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955574, 37.080597, 18.152218>,  <37.926273, 36.698376, 17.511566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955574, 37.080597, 18.152218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569771, 36.976276, 18.135681>,  <37.338287, 36.913685, 18.125759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.569771, 36.976276, 18.135681>,  <37.955574, 37.080597, 18.152218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569771, 36.976276, 18.135681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038749, -0.294668, 0.954814,
		-0.261199, 0.919322, 0.294315,
		-0.964507, -0.260801, -0.041344,
		37.280418, 36.898037, 18.123278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604931, 37.419666, 18.772104>,  <37.955574, 37.080597, 18.152218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604931, 37.419666, 18.772104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.376328, 37.114742, 18.650600>,  <37.239166, 36.931789, 18.577698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.376328, 37.114742, 18.650600>,  <37.604931, 37.419666, 18.772104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376328, 37.114742, 18.650600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043542, -0.397820, 0.916430,
		-0.819443, 0.510518, 0.260548,
		-0.571505, -0.762306, -0.303761,
		37.204876, 36.886051, 18.559471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317558, 37.290970, 19.372972>,  <37.604931, 37.419666, 18.772104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317558, 37.290970, 19.372972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215912, 36.980618, 19.141998>,  <37.154926, 36.794407, 19.003414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215912, 36.980618, 19.141998>,  <37.317558, 37.290970, 19.372972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215912, 36.980618, 19.141998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028370, -0.590797, 0.806321,
		-0.966759, 0.221278, 0.128117,
		-0.254112, -0.775883, -0.577436,
		37.139679, 36.747852, 18.968767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698017, 36.883274, 19.688257>,  <37.317558, 37.290970, 19.372972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698017, 36.883274, 19.688257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910519, 36.640129, 19.452202>,  <37.038021, 36.494240, 19.310568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910519, 36.640129, 19.452202>,  <36.698017, 36.883274, 19.688257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910519, 36.640129, 19.452202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020356, -0.687208, 0.726176,
		-0.846967, -0.397798, -0.352709,
		0.531255, -0.607867, -0.590140,
		37.069897, 36.457767, 19.275160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458279, 36.237350, 19.856213>,  <36.698017, 36.883274, 19.688257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458279, 36.237350, 19.856213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823734, 36.182434, 19.703152>,  <37.043007, 36.149483, 19.611315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823734, 36.182434, 19.703152>,  <36.458279, 36.237350, 19.856213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823734, 36.182434, 19.703152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196285, -0.675294, 0.710950,
		-0.356009, -0.724658, -0.590024,
		0.913635, -0.137292, -0.382650,
		37.097824, 36.141247, 19.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556786, 35.478870, 19.951925>,  <36.458279, 36.237350, 19.856213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556786, 35.478870, 19.951925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919247, 35.612961, 19.848766>,  <37.136723, 35.693413, 19.786871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919247, 35.612961, 19.848766>,  <36.556786, 35.478870, 19.951925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919247, 35.612961, 19.848766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422895, -0.708383, 0.565113,
		0.006747, -0.621144, -0.783667,
		0.906153, 0.335222, -0.257899,
		37.191093, 35.713528, 19.771397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919945, 34.964531, 19.618382>,  <36.556786, 35.478870, 19.951925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919945, 34.964531, 19.618382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190601, 35.224117, 19.757523>,  <37.352997, 35.379868, 19.841007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190601, 35.224117, 19.757523>,  <36.919945, 34.964531, 19.618382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190601, 35.224117, 19.757523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443866, -0.736444, 0.510521,
		0.587483, -0.191041, -0.786363,
		0.676643, 0.648963, 0.347852,
		37.393593, 35.418808, 19.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583218, 34.563313, 19.630663>,  <36.919945, 34.964531, 19.618382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583218, 34.563313, 19.630663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658432, 34.868736, 19.877766>,  <37.703560, 35.051991, 20.026028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658432, 34.868736, 19.877766>,  <37.583218, 34.563313, 19.630663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658432, 34.868736, 19.877766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455819, -0.624980, 0.633742,
		0.869983, 0.162416, -0.465564,
		0.188038, 0.763558, 0.617755,
		37.714844, 35.097805, 20.063091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304951, 34.548820, 19.790518>,  <37.583218, 34.563313, 19.630663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304951, 34.548820, 19.790518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.114727, 34.743530, 20.083611>,  <38.000591, 34.860355, 20.259466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.114727, 34.743530, 20.083611>,  <38.304951, 34.548820, 19.790518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114727, 34.743530, 20.083611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569642, -0.464317, 0.678172,
		0.670335, 0.739906, -0.056476,
		-0.475561, 0.486774, 0.732730,
		37.972057, 34.889561, 20.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954979, 34.707676, 20.217634>,  <38.304951, 34.548820, 19.790518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954979, 34.707676, 20.217634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630848, 34.761665, 20.445721>,  <38.436367, 34.794060, 20.582573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630848, 34.761665, 20.445721>,  <38.954979, 34.707676, 20.217634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630848, 34.761665, 20.445721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486130, -0.388479, 0.782791,
		0.327172, 0.911519, 0.249182,
		-0.810331, 0.134973, 0.570216,
		38.387749, 34.802158, 20.616785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261871, 34.816963, 20.834852>,  <38.954979, 34.707676, 20.217634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261871, 34.816963, 20.834852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888115, 34.746143, 20.958511>,  <38.663860, 34.703651, 21.032707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888115, 34.746143, 20.958511>,  <39.261871, 34.816963, 20.834852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888115, 34.746143, 20.958511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353968, -0.559596, 0.749373,
		0.040319, 0.809633, 0.585550,
		-0.934388, -0.177052, 0.309147,
		38.607800, 34.693027, 21.051256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239365, 34.911770, 21.556288>,  <39.261871, 34.816963, 20.834852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239365, 34.911770, 21.556288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930771, 34.676826, 21.458462>,  <38.745613, 34.535858, 21.399767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930771, 34.676826, 21.458462>,  <39.239365, 34.911770, 21.556288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930771, 34.676826, 21.458462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282902, -0.660980, 0.695034,
		-0.569888, 0.467023, 0.676105,
		-0.771488, -0.587363, -0.244563,
		38.699326, 34.500618, 21.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852184, 34.787289, 22.164225>,  <39.239365, 34.911770, 21.556288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852184, 34.787289, 22.164225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773811, 34.502850, 21.894131>,  <38.726788, 34.332184, 21.732075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773811, 34.502850, 21.894131>,  <38.852184, 34.787289, 22.164225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773811, 34.502850, 21.894131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208431, -0.703049, 0.679911,
		-0.958210, -0.007522, 0.285967,
		-0.195934, -0.711102, -0.675236,
		38.715031, 34.289520, 21.691561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354607, 34.446495, 22.475416>,  <38.852184, 34.787289, 22.164225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354607, 34.446495, 22.475416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481106, 34.197266, 22.189266>,  <38.557003, 34.047726, 22.017576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481106, 34.197266, 22.189266>,  <38.354607, 34.446495, 22.475416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481106, 34.197266, 22.189266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187199, -0.698266, 0.690928,
		-0.930024, -0.352421, -0.104184,
		0.316246, -0.623077, -0.715377,
		38.575981, 34.010342, 21.974653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973373, 33.867260, 22.544937>,  <38.354607, 34.446495, 22.475416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973373, 33.867260, 22.544937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298939, 33.749493, 22.344593>,  <38.494278, 33.678833, 22.224386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298939, 33.749493, 22.344593>,  <37.973373, 33.867260, 22.544937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298939, 33.749493, 22.344593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149523, -0.726901, 0.670267,
		-0.561416, -0.620430, -0.547612,
		0.813913, -0.294418, -0.500862,
		38.543114, 33.661167, 22.194334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945843, 33.170010, 22.419065>,  <37.973373, 33.867260, 22.544937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945843, 33.170010, 22.419065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.339302, 33.239811, 22.401218>,  <38.575378, 33.281693, 22.390511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.339302, 33.239811, 22.401218>,  <37.945843, 33.170010, 22.419065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339302, 33.239811, 22.401218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170440, -0.821713, 0.543818,
		0.058234, -0.542528, -0.838017,
		0.983646, 0.174500, -0.044616,
		38.634396, 33.292160, 22.387833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192047, 32.564751, 22.273266>,  <37.945843, 33.170010, 22.419065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192047, 32.564751, 22.273266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530975, 32.738014, 22.396183>,  <38.734333, 32.841972, 22.469933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530975, 32.738014, 22.396183>,  <38.192047, 32.564751, 22.273266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530975, 32.738014, 22.396183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281999, -0.857254, 0.430804,
		0.450033, -0.278372, -0.848516,
		0.847318, 0.433157, 0.307292,
		38.785172, 32.867962, 22.488371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778355, 32.287968, 22.108421>,  <38.192047, 32.564751, 22.273266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778355, 32.287968, 22.108421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852329, 32.443783, 22.469322>,  <38.896713, 32.537273, 22.685863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852329, 32.443783, 22.469322>,  <38.778355, 32.287968, 22.108421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852329, 32.443783, 22.469322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013802, -0.919028, 0.393951,
		0.982653, -0.060403, -0.175339,
		0.184937, 0.389537, 0.902252,
		38.907810, 32.560642, 22.739998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207161, 32.017708, 21.677931>,  <38.778355, 32.287968, 22.108421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207161, 32.017708, 21.677931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068634, 31.798481, 21.373383>,  <37.985516, 31.666945, 21.190655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068634, 31.798481, 21.373383>,  <38.207161, 32.017708, 21.677931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068634, 31.798481, 21.373383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462388, 0.606435, -0.646864,
		0.816247, -0.576070, 0.043401,
		-0.346320, -0.548069, -0.761369,
		37.964737, 31.634060, 21.144972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724445, 32.069817, 21.247522>,  <38.207161, 32.017708, 21.677931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724445, 32.069817, 21.247522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425446, 31.919224, 21.028614>,  <38.246044, 31.828867, 20.897270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425446, 31.919224, 21.028614>,  <38.724445, 32.069817, 21.247522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425446, 31.919224, 21.028614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350737, 0.475970, -0.806496,
		0.564118, -0.794803, -0.223740,
		-0.747499, -0.376485, -0.547270,
		38.201195, 31.806278, 20.864433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991100, 31.622477, 20.734606>,  <38.724445, 32.069817, 21.247522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991100, 31.622477, 20.734606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647026, 31.773853, 20.597862>,  <38.440582, 31.864679, 20.515816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647026, 31.773853, 20.597862>,  <38.991100, 31.622477, 20.734606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647026, 31.773853, 20.597862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492970, 0.445311, -0.747448,
		-0.130633, -0.811468, -0.569610,
		-0.860183, 0.378442, -0.341857,
		38.388969, 31.887386, 20.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960037, 31.437412, 20.035339>,  <38.991100, 31.622477, 20.734606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960037, 31.437412, 20.035339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675270, 31.718281, 20.039940>,  <38.504410, 31.886803, 20.042700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675270, 31.718281, 20.039940>,  <38.960037, 31.437412, 20.035339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675270, 31.718281, 20.039940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409371, 0.428244, -0.805619,
		-0.570609, -0.568823, -0.592322,
		-0.711913, 0.702173, 0.011500,
		38.461697, 31.928932, 20.043390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583736, 31.397051, 19.411848>,  <38.960037, 31.437412, 20.035339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583736, 31.397051, 19.411848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.566204, 31.766891, 19.563210>,  <38.555683, 31.988796, 19.654026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.566204, 31.766891, 19.563210>,  <38.583736, 31.397051, 19.411848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566204, 31.766891, 19.563210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355757, 0.368384, -0.858912,
		-0.933550, 0.096971, -0.345081,
		-0.043833, 0.924603, 0.378403,
		38.553055, 32.044273, 19.676731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336895, 31.749239, 18.840378>,  <38.583736, 31.397051, 19.411848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336895, 31.749239, 18.840378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500168, 32.027443, 19.076904>,  <38.598129, 32.194366, 19.218821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.500168, 32.027443, 19.076904>,  <38.336895, 31.749239, 18.840378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500168, 32.027443, 19.076904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125882, 0.598662, -0.791048,
		-0.904180, 0.397327, 0.156810,
		0.408181, 0.695511, 0.591315,
		38.622623, 32.236095, 19.254299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191235, 32.296692, 18.549517>,  <38.336895, 31.749239, 18.840378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191235, 32.296692, 18.549517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463207, 32.458374, 18.794243>,  <38.626389, 32.555382, 18.941078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463207, 32.458374, 18.794243>,  <38.191235, 32.296692, 18.549517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463207, 32.458374, 18.794243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163848, 0.729515, -0.664050,
		-0.714739, 0.551751, 0.429790,
		0.679928, 0.404201, 0.611816,
		38.667187, 32.579636, 18.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183861, 32.952755, 18.393848>,  <38.191235, 32.296692, 18.549517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183861, 32.952755, 18.393848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.534473, 32.928883, 18.584900>,  <38.744843, 32.914558, 18.699532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.534473, 32.928883, 18.584900>,  <38.183861, 32.952755, 18.393848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534473, 32.928883, 18.584900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351895, 0.756497, -0.551255,
		-0.328425, 0.651268, 0.684095,
		0.876531, -0.059684, 0.477631,
		38.797432, 32.910976, 18.728189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295952, 33.693623, 18.698225>,  <38.183861, 32.952755, 18.393848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295952, 33.693623, 18.698225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640839, 33.498001, 18.645462>,  <38.847771, 33.380627, 18.613804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640839, 33.498001, 18.645462>,  <38.295952, 33.693623, 18.698225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640839, 33.498001, 18.645462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312754, 0.718849, -0.620839,
		0.398445, 0.494046, 0.772761,
		0.862222, -0.489055, -0.131907,
		38.899506, 33.351284, 18.605890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891754, 34.210594, 18.671438>,  <38.295952, 33.693623, 18.698225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891754, 34.210594, 18.671438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.069809, 33.894093, 18.503735>,  <39.176643, 33.704193, 18.403112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.069809, 33.894093, 18.503735>,  <38.891754, 34.210594, 18.671438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069809, 33.894093, 18.503735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443365, 0.601534, -0.664519,
		0.777999, 0.109916, 0.618576,
		0.445136, -0.791250, -0.419259,
		39.203350, 33.656719, 18.377956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388538, 34.511486, 18.347065>,  <38.891754, 34.210594, 18.671438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388538, 34.511486, 18.347065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409351, 34.141682, 18.196030>,  <39.421837, 33.919800, 18.105410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409351, 34.141682, 18.196030>,  <39.388538, 34.511486, 18.347065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409351, 34.141682, 18.196030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323783, 0.373291, -0.869378,
		0.944700, -0.077023, 0.318763,
		0.052029, -0.924512, -0.377586,
		39.424961, 33.864326, 18.082754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122086, 34.427139, 18.124060>,  <39.388538, 34.511486, 18.347065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122086, 34.427139, 18.124060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845280, 34.220592, 17.922276>,  <39.679195, 34.096664, 17.801205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845280, 34.220592, 17.922276>,  <40.122086, 34.427139, 18.124060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845280, 34.220592, 17.922276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280540, 0.451512, -0.847015,
		0.665142, -0.727667, -0.167590,
		-0.692014, -0.516369, -0.504460,
		39.637676, 34.065681, 17.770937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518867, 34.348354, 17.536829>,  <40.122086, 34.427139, 18.124060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518867, 34.348354, 17.536829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143887, 34.234615, 17.456501>,  <39.918900, 34.166370, 17.408304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143887, 34.234615, 17.456501>,  <40.518867, 34.348354, 17.536829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143887, 34.234615, 17.456501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044548, 0.474149, -0.879317,
		0.345248, -0.833265, -0.431826,
		-0.937454, -0.284345, -0.200819,
		39.862652, 34.149311, 17.396255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562374, 34.098774, 16.759808>,  <40.518867, 34.348354, 17.536829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562374, 34.098774, 16.759808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175777, 34.167690, 16.835918>,  <39.943817, 34.209042, 16.881584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.175777, 34.167690, 16.835918>,  <40.562374, 34.098774, 16.759808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175777, 34.167690, 16.835918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069657, 0.537416, -0.840435,
		-0.247057, -0.825530, -0.507408,
		-0.966494, 0.172291, 0.190277,
		39.885830, 34.219376, 16.893002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089596, 33.939926, 16.114315>,  <40.562374, 34.098774, 16.759808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089596, 33.939926, 16.114315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884995, 34.191540, 16.348469>,  <39.762234, 34.342506, 16.488962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884995, 34.191540, 16.348469>,  <40.089596, 33.939926, 16.114315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884995, 34.191540, 16.348469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285191, 0.518359, -0.806207,
		-0.810573, -0.579326, -0.085747,
		-0.511505, 0.629036, 0.585386,
		39.731544, 34.380249, 16.524084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379742, 34.054253, 15.780466>,  <40.089596, 33.939926, 16.114315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379742, 34.054253, 15.780466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451889, 34.365578, 16.021030>,  <39.495178, 34.552372, 16.165369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451889, 34.365578, 16.021030>,  <39.379742, 34.054253, 15.780466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451889, 34.365578, 16.021030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187941, 0.627446, -0.755638,
		-0.965476, 0.023267, 0.259451,
		0.180372, 0.778312, 0.601412,
		39.506001, 34.599072, 16.201454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898296, 34.558884, 15.672002>,  <39.379742, 34.054253, 15.780466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898296, 34.558884, 15.672002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177540, 34.785885, 15.846631>,  <39.345085, 34.922085, 15.951408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177540, 34.785885, 15.846631>,  <38.898296, 34.558884, 15.672002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177540, 34.785885, 15.846631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164802, 0.720727, -0.673344,
		-0.696772, 0.398116, 0.596667,
		0.698104, 0.567499, 0.436572,
		39.386971, 34.956135, 15.977603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673767, 35.210785, 15.605764>,  <38.898296, 34.558884, 15.672002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673767, 35.210785, 15.605764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058655, 35.278175, 15.691316>,  <39.289589, 35.318607, 15.742646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058655, 35.278175, 15.691316>,  <38.673767, 35.210785, 15.605764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058655, 35.278175, 15.691316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048032, 0.668195, -0.742434,
		-0.267993, 0.724660, 0.634861,
		0.962223, 0.168473, 0.213878,
		39.347321, 35.328716, 15.755479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780525, 36.006779, 15.694496>,  <38.673767, 35.210785, 15.605764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780525, 36.006779, 15.694496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.119663, 35.820766, 15.592587>,  <39.323147, 35.709160, 15.531443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.119663, 35.820766, 15.592587>,  <38.780525, 36.006779, 15.694496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119663, 35.820766, 15.592587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159949, 0.682386, -0.713278,
		0.505551, 0.563996, 0.652937,
		0.847841, -0.465035, -0.254771,
		39.374016, 35.681255, 15.516156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273407, 36.530846, 15.632713>,  <38.780525, 36.006779, 15.694496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273407, 36.530846, 15.632713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407360, 36.213398, 15.429532>,  <39.487732, 36.022930, 15.307623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407360, 36.213398, 15.429532>,  <39.273407, 36.530846, 15.632713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407360, 36.213398, 15.429532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127757, 0.572346, -0.809999,
		0.933558, 0.206361, 0.293060,
		0.334884, -0.793622, -0.507954,
		39.507824, 35.975311, 15.277145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834827, 36.762486, 15.255676>,  <39.273407, 36.530846, 15.632713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834827, 36.762486, 15.255676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733948, 36.438332, 15.044141>,  <39.673420, 36.243839, 14.917219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733948, 36.438332, 15.044141>,  <39.834827, 36.762486, 15.255676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733948, 36.438332, 15.044141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029532, 0.552695, -0.832861,
		0.967226, -0.194426, -0.163319,
		-0.252195, -0.810387, -0.528838,
		39.658291, 36.195217, 14.885489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.052126, 31.087406, 32.676983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441196, 31.039310, 32.756420>,  <28.674639, 31.010452, 32.804085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.441196, 31.039310, 32.756420>,  <28.052126, 31.087406, 32.676983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441196, 31.039310, 32.756420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227574, -0.324624, 0.918057,
		-0.045917, -0.938169, -0.343118,
		0.972677, -0.120240, 0.198597,
		28.733000, 31.003239, 32.815998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087219, 30.433554, 32.909203>,  <28.052126, 31.087406, 32.676983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087219, 30.433554, 32.909203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.418402, 30.614216, 33.042168>,  <28.617111, 30.722612, 33.121948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.418402, 30.614216, 33.042168>,  <28.087219, 30.433554, 32.909203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418402, 30.614216, 33.042168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137061, -0.411802, 0.900907,
		0.543786, -0.791472, -0.279050,
		0.827956, 0.451654, 0.332412,
		28.666788, 30.749712, 33.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264406, 29.936918, 33.405853>,  <28.087219, 30.433554, 32.909203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264406, 29.936918, 33.405853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502291, 30.250793, 33.475811>,  <28.645021, 30.439117, 33.517784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502291, 30.250793, 33.475811>,  <28.264406, 29.936918, 33.405853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502291, 30.250793, 33.475811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151944, -0.323331, 0.934008,
		0.789452, -0.528889, -0.311516,
		0.594709, 0.784687, 0.174892,
		28.680704, 30.486200, 33.528278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986649, 29.748722, 33.563198>,  <28.264406, 29.936918, 33.405853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986649, 29.748722, 33.563198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.868113, 30.095036, 33.724491>,  <28.796991, 30.302824, 33.821266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.868113, 30.095036, 33.724491>,  <28.986649, 29.748722, 33.563198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868113, 30.095036, 33.724491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274390, -0.327220, 0.904233,
		0.914818, 0.378605, -0.140594,
		-0.296342, 0.865786, 0.403232,
		28.779209, 30.354771, 33.845459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116438, 29.608320, 34.182743>,  <28.986649, 29.748722, 33.563198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116438, 29.608320, 34.182743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.986387, 29.983616, 34.230076>,  <28.908358, 30.208794, 34.258476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.986387, 29.983616, 34.230076>,  <29.116438, 29.608320, 34.182743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986387, 29.983616, 34.230076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082259, -0.096598, 0.991919,
		0.942086, 0.332234, -0.045772,
		-0.325127, 0.938238, 0.118333,
		28.888849, 30.265087, 34.265575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626526, 29.936666, 34.626617>,  <29.116438, 29.608320, 34.182743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626526, 29.936666, 34.626617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272303, 30.121490, 34.645748>,  <29.059769, 30.232386, 34.657227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272303, 30.121490, 34.645748>,  <29.626526, 29.936666, 34.626617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272303, 30.121490, 34.645748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064764, -0.224766, 0.972258,
		0.459991, 0.857894, 0.228968,
		-0.885558, 0.462059, 0.047829,
		29.006636, 30.260109, 34.660095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610394, 30.290094, 35.287518>,  <29.626526, 29.936666, 34.626617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610394, 30.290094, 35.287518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221422, 30.282024, 35.194588>,  <28.988039, 30.277184, 35.138828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221422, 30.282024, 35.194588>,  <29.610394, 30.290094, 35.287518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221422, 30.282024, 35.194588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225988, -0.164356, 0.960165,
		-0.057554, 0.986195, 0.155266,
		-0.972428, -0.020173, -0.232328,
		28.929693, 30.275972, 35.124889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298307, 30.715345, 35.702980>,  <29.610394, 30.290094, 35.287518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298307, 30.715345, 35.702980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.000227, 30.473679, 35.590084>,  <28.821379, 30.328678, 35.522346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.000227, 30.473679, 35.590084>,  <29.298307, 30.715345, 35.702980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000227, 30.473679, 35.590084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232811, -0.160899, 0.959120,
		-0.624879, 0.780446, -0.020754,
		-0.745202, -0.604165, -0.282239,
		28.776667, 30.292429, 35.505413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694546, 30.895903, 36.068909>,  <29.298307, 30.715345, 35.702980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694546, 30.895903, 36.068909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621790, 30.516930, 35.963615>,  <28.578136, 30.289547, 35.900440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621790, 30.516930, 35.963615>,  <28.694546, 30.895903, 36.068909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621790, 30.516930, 35.963615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279134, -0.206939, 0.937689,
		-0.942868, 0.244033, -0.226820,
		-0.181889, -0.947430, -0.263234,
		28.567223, 30.232700, 35.884644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090994, 30.733526, 36.331764>,  <28.694546, 30.895903, 36.068909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090994, 30.733526, 36.331764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274729, 30.381947, 36.280453>,  <28.384970, 30.170998, 36.249664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.274729, 30.381947, 36.280453>,  <28.090994, 30.733526, 36.331764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274729, 30.381947, 36.280453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218774, -0.251912, 0.942697,
		-0.860899, -0.404951, -0.308004,
		0.459336, -0.878951, -0.128278,
		28.412529, 30.118261, 36.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613331, 30.231003, 36.599201>,  <28.090994, 30.733526, 36.331764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613331, 30.231003, 36.599201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.967325, 30.044781, 36.596176>,  <28.179722, 29.933048, 36.594360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.967325, 30.044781, 36.596176>,  <27.613331, 30.231003, 36.599201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967325, 30.044781, 36.596176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203965, -0.402218, 0.892535,
		-0.418579, -0.788332, -0.450915,
		0.884980, -0.465567, -0.007567,
		28.232821, 29.905115, 36.593906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529188, 29.618597, 36.882961>,  <27.613331, 30.231003, 36.599201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529188, 29.618597, 36.882961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.928143, 29.643883, 36.896965>,  <28.167515, 29.659054, 36.905369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.928143, 29.643883, 36.896965>,  <27.529188, 29.618597, 36.882961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928143, 29.643883, 36.896965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006665, -0.401944, 0.915640,
		0.071954, -0.913480, -0.400472,
		0.997386, 0.063214, 0.035010,
		28.227358, 29.662848, 36.907467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716009, 29.023394, 37.153717>,  <27.529188, 29.618597, 36.882961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716009, 29.023394, 37.153717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.996243, 29.301659, 37.217258>,  <28.164383, 29.468618, 37.255383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.996243, 29.301659, 37.217258>,  <27.716009, 29.023394, 37.153717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996243, 29.301659, 37.217258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044631, -0.179464, 0.982752,
		0.712172, -0.695590, -0.094681,
		0.700584, 0.695663, 0.158854,
		28.206417, 29.510357, 37.264915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398190, 28.748503, 37.481979>,  <27.716009, 29.023394, 37.153717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398190, 28.748503, 37.481979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263796, 29.117676, 37.557144>,  <28.183159, 29.339180, 37.602242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263796, 29.117676, 37.557144>,  <28.398190, 28.748503, 37.481979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263796, 29.117676, 37.557144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085667, -0.228623, 0.969738,
		0.937963, 0.309720, 0.155879,
		-0.335985, 0.922933, 0.187908,
		28.163000, 29.394556, 37.613518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663115, 28.407639, 37.692268>,  <28.398190, 28.748503, 37.481979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663115, 28.407639, 37.692268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.570704, 28.023537, 37.629612>,  <27.515257, 27.793076, 37.592018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.570704, 28.023537, 37.629612>,  <27.663115, 28.407639, 37.692268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570704, 28.023537, 37.629612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181716, 0.200753, -0.962641,
		0.955827, -0.193933, -0.220873,
		-0.231028, -0.960254, -0.156644,
		27.501394, 27.735460, 37.582619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156569, 28.116447, 37.170094>,  <27.663115, 28.407639, 37.692268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156569, 28.116447, 37.170094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867428, 27.840065, 37.166874>,  <27.693943, 27.674236, 37.164940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867428, 27.840065, 37.166874>,  <28.156569, 28.116447, 37.170094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867428, 27.840065, 37.166874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001490, 0.010095, -0.999948,
		0.691000, -0.722828, -0.006268,
		-0.722853, -0.690955, -0.008052,
		27.650572, 27.632778, 37.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353123, 27.557980, 36.805805>,  <28.156569, 28.116447, 37.170094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353123, 27.557980, 36.805805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953964, 27.558117, 36.779877>,  <27.714470, 27.558199, 36.764320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953964, 27.558117, 36.779877>,  <28.353123, 27.557980, 36.805805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953964, 27.558117, 36.779877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064300, -0.121463, -0.990511,
		-0.008211, -0.992596, 0.121186,
		-0.997896, 0.000340, -0.064821,
		27.654594, 27.558220, 36.760429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250061, 26.990372, 36.376003>,  <28.353123, 27.557980, 36.805805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250061, 26.990372, 36.376003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.912518, 27.202030, 36.340431>,  <27.709991, 27.329025, 36.319088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.912518, 27.202030, 36.340431>,  <28.250061, 26.990372, 36.376003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912518, 27.202030, 36.340431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069812, -0.272612, -0.959588,
		-0.532006, -0.803547, 0.266986,
		-0.843857, 0.529146, -0.088934,
		27.659361, 27.360773, 36.313751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888720, 26.535236, 35.934578>,  <28.250061, 26.990372, 36.376003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888720, 26.535236, 35.934578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.697628, 26.886608, 35.939194>,  <27.582973, 27.097431, 35.941963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.697628, 26.886608, 35.939194>,  <27.888720, 26.535236, 35.934578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697628, 26.886608, 35.939194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077446, -0.029023, -0.996574,
		-0.875086, -0.476987, 0.081896,
		-0.477730, 0.878431, 0.011543,
		27.554310, 27.150137, 35.942657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429482, 26.510210, 35.418171>,  <27.888720, 26.535236, 35.934578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429482, 26.510210, 35.418171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490261, 26.902206, 35.469597>,  <27.526730, 27.137403, 35.500450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490261, 26.902206, 35.469597>,  <27.429482, 26.510210, 35.418171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490261, 26.902206, 35.469597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129074, 0.109284, -0.985595,
		-0.979924, 0.166357, -0.109886,
		0.151951, 0.979991, 0.128562,
		27.535847, 27.196203, 35.508167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443304, 26.846754, 34.768036>,  <27.429482, 26.510210, 35.418171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443304, 26.846754, 34.768036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.593639, 27.161510, 34.963810>,  <27.683840, 27.350365, 35.081276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.593639, 27.161510, 34.963810>,  <27.443304, 26.846754, 34.768036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593639, 27.161510, 34.963810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261245, 0.416766, -0.870664,
		-0.889099, 0.455091, -0.048936,
		0.375837, 0.786891, 0.489437,
		27.706390, 27.397577, 35.110641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074877, 27.404385, 34.457150>,  <27.443304, 26.846754, 34.768036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074877, 27.404385, 34.457150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.428707, 27.519745, 34.603764>,  <27.641005, 27.588961, 34.691734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.428707, 27.519745, 34.603764>,  <27.074877, 27.404385, 34.457150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428707, 27.519745, 34.603764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280057, 0.299990, -0.911907,
		-0.372954, 0.909302, 0.184595,
		0.884575, 0.288402, 0.366539,
		27.694080, 27.606266, 34.713726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082457, 28.112074, 34.368450>,  <27.074877, 27.404385, 34.457150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082457, 28.112074, 34.368450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.466536, 28.005600, 34.402306>,  <27.696983, 27.941715, 34.422619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.466536, 28.005600, 34.402306>,  <27.082457, 28.112074, 34.368450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466536, 28.005600, 34.402306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215053, 0.511171, -0.832140,
		0.178238, 0.817222, 0.548069,
		0.960200, -0.266183, 0.084636,
		27.754595, 27.925745, 34.427696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517698, 28.739923, 34.401352>,  <27.082457, 28.112074, 34.368450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517698, 28.739923, 34.401352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.732212, 28.433750, 34.259079>,  <27.860920, 28.250046, 34.173714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.732212, 28.433750, 34.259079>,  <27.517698, 28.739923, 34.401352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732212, 28.433750, 34.259079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230737, 0.538308, -0.810546,
		0.811886, 0.352614, 0.465301,
		0.536285, -0.765433, -0.355684,
		27.893097, 28.204121, 34.152374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141222, 29.023022, 34.139545>,  <27.517698, 28.739923, 34.401352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141222, 29.023022, 34.139545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131605, 28.655148, 33.982777>,  <28.125835, 28.434423, 33.888718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131605, 28.655148, 33.982777>,  <28.141222, 29.023022, 34.139545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131605, 28.655148, 33.982777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257772, 0.373072, -0.891275,
		0.965907, -0.122452, 0.228100,
		-0.024041, -0.919686, -0.391918,
		28.124393, 28.379242, 33.865200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795744, 29.078455, 33.726151>,  <28.141222, 29.023022, 34.139545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795744, 29.078455, 33.726151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.566031, 28.777988, 33.595951>,  <28.428204, 28.597708, 33.517830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.566031, 28.777988, 33.595951>,  <28.795744, 29.078455, 33.726151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566031, 28.777988, 33.595951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113504, 0.320704, -0.940354,
		0.810751, -0.576974, -0.098914,
		-0.574282, -0.751166, -0.325500,
		28.393745, 28.552639, 33.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114960, 28.822527, 33.068497>,  <28.795744, 29.078455, 33.726151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114960, 28.822527, 33.068497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.740084, 28.685772, 33.040817>,  <28.515158, 28.603720, 33.024212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.740084, 28.685772, 33.040817>,  <29.114960, 28.822527, 33.068497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740084, 28.685772, 33.040817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123225, 0.510074, -0.851258,
		0.326329, -0.789264, -0.520165,
		-0.937190, -0.341888, -0.069195,
		28.458927, 28.583206, 33.020058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058485, 28.495045, 32.438908>,  <29.114960, 28.822527, 33.068497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058485, 28.495045, 32.438908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.681736, 28.585960, 32.537872>,  <28.455687, 28.640511, 32.597252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.681736, 28.585960, 32.537872>,  <29.058485, 28.495045, 32.438908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681736, 28.585960, 32.537872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054147, 0.624098, -0.779468,
		-0.331574, -0.747557, -0.575514,
		-0.941874, 0.227289, 0.247412,
		28.399174, 28.654146, 32.612095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125660, 27.807325, 31.959291>,  <29.058485, 28.495045, 32.438908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125660, 27.807325, 31.959291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517635, 27.791180, 31.881229>,  <29.752821, 27.781492, 31.834393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517635, 27.791180, 31.881229>,  <29.125660, 27.807325, 31.959291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517635, 27.791180, 31.881229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176252, -0.281495, 0.943237,
		-0.093011, -0.958713, -0.268734,
		0.979941, -0.040366, -0.195157,
		29.811617, 27.779070, 31.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311939, 27.288078, 32.369686>,  <29.125660, 27.807325, 31.959291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311939, 27.288078, 32.369686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.670355, 27.453712, 32.305626>,  <29.885405, 27.553093, 32.267189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.670355, 27.453712, 32.305626>,  <29.311939, 27.288078, 32.369686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670355, 27.453712, 32.305626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330920, -0.382421, 0.862697,
		0.295984, -0.826008, -0.479693,
		0.896039, 0.414084, -0.160152,
		29.939167, 27.577938, 32.257580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877901, 26.834457, 32.743996>,  <29.311939, 27.288078, 32.369686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877901, 26.834457, 32.743996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068314, 27.178429, 32.670326>,  <30.182560, 27.384811, 32.626125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.068314, 27.178429, 32.670326>,  <29.877901, 26.834457, 32.743996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068314, 27.178429, 32.670326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485978, -0.082685, 0.870051,
		0.732954, -0.503672, -0.457267,
		0.476029, 0.859929, -0.184169,
		30.211123, 27.436407, 32.615074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663086, 26.739368, 32.685452>,  <29.877901, 26.834457, 32.743996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663086, 26.739368, 32.685452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561590, 27.104111, 32.814533>,  <30.500692, 27.322956, 32.891983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561590, 27.104111, 32.814533>,  <30.663086, 26.739368, 32.685452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561590, 27.104111, 32.814533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418649, -0.197225, 0.886474,
		0.871980, 0.360033, -0.331703,
		-0.253740, 0.911855, 0.322703,
		30.485468, 27.377666, 32.911343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159040, 26.932318, 33.250648>,  <30.663086, 26.739368, 32.685452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159040, 26.932318, 33.250648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861248, 27.193066, 33.308353>,  <30.682573, 27.349514, 33.342976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861248, 27.193066, 33.308353>,  <31.159040, 26.932318, 33.250648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861248, 27.193066, 33.308353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049915, -0.161125, 0.985671,
		0.665775, 0.741014, 0.087417,
		-0.744481, 0.651871, 0.144260,
		30.637903, 27.388628, 33.351631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276339, 27.275053, 33.917606>,  <31.159040, 26.932318, 33.250648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276339, 27.275053, 33.917606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884838, 27.347004, 33.878227>,  <30.649939, 27.390175, 33.854599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884838, 27.347004, 33.878227>,  <31.276339, 27.275053, 33.917606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884838, 27.347004, 33.878227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157647, -0.353029, 0.922235,
		0.131135, 0.918158, 0.373884,
		-0.978750, 0.179879, -0.098450,
		30.591213, 27.400967, 33.848694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155712, 27.648338, 34.488174>,  <31.276339, 27.275053, 33.917606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155712, 27.648338, 34.488174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784719, 27.528889, 34.398190>,  <30.562124, 27.457220, 34.344200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784719, 27.528889, 34.398190>,  <31.155712, 27.648338, 34.488174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784719, 27.528889, 34.398190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137975, -0.285839, 0.948293,
		-0.347484, 0.910561, 0.223908,
		-0.927480, -0.298623, -0.224959,
		30.506475, 27.439302, 34.330704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523397, 28.202066, 34.887817>,  <31.155712, 27.648338, 34.488174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523397, 28.202066, 34.887817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908316, 28.097218, 34.916882>,  <32.139267, 28.034307, 34.934322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908316, 28.097218, 34.916882>,  <31.523397, 28.202066, 34.887817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908316, 28.097218, 34.916882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153414, 0.302414, -0.940750,
		0.224617, 0.916426, 0.331224,
		0.962295, -0.262123, 0.072665,
		32.197002, 28.018581, 34.938683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852495, 28.717779, 34.653206>,  <31.523397, 28.202066, 34.887817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852495, 28.717779, 34.653206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130341, 28.434746, 34.601299>,  <32.297047, 28.264925, 34.570156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130341, 28.434746, 34.601299>,  <31.852495, 28.717779, 34.653206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130341, 28.434746, 34.601299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098599, 0.272322, -0.957141,
		0.712596, 0.652047, 0.258925,
		0.694612, -0.707584, -0.129764,
		32.338722, 28.222471, 34.562370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388927, 28.957151, 34.274853>,  <31.852495, 28.717779, 34.653206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388927, 28.957151, 34.274853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447624, 28.569134, 34.197418>,  <32.482841, 28.336323, 34.150955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447624, 28.569134, 34.197418>,  <32.388927, 28.957151, 34.274853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447624, 28.569134, 34.197418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186398, 0.219320, -0.957682,
		0.971454, 0.104448, 0.212998,
		0.146743, -0.970046, -0.193591,
		32.491646, 28.278120, 34.139339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862221, 29.019772, 33.706608>,  <32.388927, 28.957151, 34.274853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862221, 29.019772, 33.706608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765583, 28.631702, 33.698662>,  <32.707600, 28.398861, 33.693893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765583, 28.631702, 33.698662>,  <32.862221, 29.019772, 33.706608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765583, 28.631702, 33.698662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187064, -0.026480, -0.981991,
		0.952177, -0.240957, 0.187882,
		-0.241592, -0.970175, -0.019861,
		32.693104, 28.340651, 33.692703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442673, 28.661747, 33.368172>,  <32.862221, 29.019772, 33.706608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442673, 28.661747, 33.368172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088234, 28.478447, 33.340355>,  <32.875568, 28.368467, 33.323666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088234, 28.478447, 33.340355>,  <33.442673, 28.661747, 33.368172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088234, 28.478447, 33.340355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066044, 0.023682, -0.997536,
		0.458766, -0.888509, 0.009280,
		-0.886099, -0.458249, -0.069545,
		32.822403, 28.340973, 33.319492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499786, 28.236477, 32.722763>,  <33.442673, 28.661747, 33.368172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499786, 28.236477, 32.722763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103748, 28.194988, 32.760597>,  <32.866123, 28.170095, 32.783298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103748, 28.194988, 32.760597>,  <33.499786, 28.236477, 32.722763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103748, 28.194988, 32.760597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069314, -0.224704, -0.971959,
		0.122067, -0.968891, 0.215289,
		-0.990098, -0.103722, 0.094587,
		32.806717, 28.163872, 32.788975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281189, 27.588606, 32.351227>,  <33.499786, 28.236477, 32.722763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281189, 27.588606, 32.351227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975101, 27.842194, 32.395981>,  <32.791447, 27.994347, 32.422832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975101, 27.842194, 32.395981>,  <33.281189, 27.588606, 32.351227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975101, 27.842194, 32.395981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246592, -0.128106, -0.960615,
		-0.594666, -0.762675, 0.254361,
		-0.765222, 0.633968, 0.111889,
		32.745533, 28.032385, 32.429546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.736017, 30.461010, 38.032707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384398, 30.384773, 37.857914>,  <31.173426, 30.339031, 37.753040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384398, 30.384773, 37.857914>,  <31.736017, 30.461010, 38.032707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384398, 30.384773, 37.857914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283593, 0.527743, -0.800664,
		0.383212, -0.827746, -0.409860,
		-0.879047, -0.190591, -0.436980,
		31.120684, 30.327597, 37.726822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758272, 30.097404, 37.297066>,  <31.736017, 30.461010, 38.032707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758272, 30.097404, 37.297066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.426926, 30.319855, 37.323982>,  <31.228117, 30.453325, 37.340134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.426926, 30.319855, 37.323982>,  <31.758272, 30.097404, 37.297066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426926, 30.319855, 37.323982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215540, 0.427301, -0.878041,
		-0.517058, -0.712837, -0.473830,
		-0.828368, 0.556127, 0.067295,
		31.178415, 30.486692, 37.344170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667419, 30.204256, 36.568554>,  <31.758272, 30.097404, 37.297066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667419, 30.204256, 36.568554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387848, 30.434956, 36.737724>,  <31.220106, 30.573376, 36.839226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387848, 30.434956, 36.737724>,  <31.667419, 30.204256, 36.568554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387848, 30.434956, 36.737724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045175, 0.625759, -0.778707,
		-0.713765, -0.525154, -0.463414,
		-0.698927, 0.576748, 0.422922,
		31.178169, 30.607981, 36.864601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046391, 30.360262, 36.135326>,  <31.667419, 30.204256, 36.568554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046391, 30.360262, 36.135326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035635, 30.649200, 36.411728>,  <31.029182, 30.822563, 36.577568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035635, 30.649200, 36.411728>,  <31.046391, 30.360262, 36.135326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035635, 30.649200, 36.411728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114813, 0.684452, -0.719961,
		-0.993023, -0.098696, 0.064531,
		-0.026889, 0.722347, 0.691008,
		31.027569, 30.865904, 36.619030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465294, 30.784073, 36.010208>,  <31.046391, 30.360262, 36.135326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465294, 30.784073, 36.010208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.724306, 30.994976, 36.230282>,  <30.879713, 31.121517, 36.362328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.724306, 30.994976, 36.230282>,  <30.465294, 30.784073, 36.010208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724306, 30.994976, 36.230282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240348, 0.543831, -0.804040,
		-0.723143, 0.652877, 0.225423,
		0.647532, 0.527256, 0.550185,
		30.918566, 31.153152, 36.395336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286308, 31.502510, 35.902493>,  <30.465294, 30.784073, 36.010208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286308, 31.502510, 35.902493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.668743, 31.485542, 36.018494>,  <30.898205, 31.475363, 36.088093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.668743, 31.485542, 36.018494>,  <30.286308, 31.502510, 35.902493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668743, 31.485542, 36.018494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256771, 0.598284, -0.759029,
		-0.141305, 0.800161, 0.582903,
		0.956087, -0.042418, 0.289999,
		30.955568, 31.472816, 36.105492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502884, 32.168434, 35.836315>,  <30.286308, 31.502510, 35.902493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502884, 32.168434, 35.836315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845736, 31.962646, 35.846466>,  <31.051447, 31.839172, 35.852558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845736, 31.962646, 35.846466>,  <30.502884, 32.168434, 35.836315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845736, 31.962646, 35.846466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389910, 0.615832, -0.684632,
		0.336596, 0.596715, 0.728447,
		0.857131, -0.514473, 0.025378,
		31.102875, 31.808304, 35.854080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001759, 32.723431, 35.699581>,  <30.502884, 32.168434, 35.836315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001759, 32.723431, 35.699581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173702, 32.364784, 35.657047>,  <31.276869, 32.149597, 35.631527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173702, 32.364784, 35.657047>,  <31.001759, 32.723431, 35.699581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173702, 32.364784, 35.657047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580898, 0.364797, -0.727654,
		0.691215, 0.251019, 0.677652,
		0.429860, -0.896612, -0.106337,
		31.302660, 32.095802, 35.625145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825508, 32.812748, 35.775921>,  <31.001759, 32.723431, 35.699581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825508, 32.812748, 35.775921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732756, 32.493671, 35.553238>,  <31.677105, 32.302227, 35.419628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732756, 32.493671, 35.553238>,  <31.825508, 32.812748, 35.775921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732756, 32.493671, 35.553238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567718, 0.353747, -0.743343,
		0.789891, -0.488418, 0.370837,
		-0.231880, -0.797691, -0.556705,
		31.663191, 32.254364, 35.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487514, 32.705036, 35.391899>,  <31.825508, 32.812748, 35.775921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487514, 32.705036, 35.391899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.235783, 32.466305, 35.192806>,  <32.084743, 32.323067, 35.073353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.235783, 32.466305, 35.192806>,  <32.487514, 32.705036, 35.391899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235783, 32.466305, 35.192806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508325, 0.168316, -0.844556,
		0.587835, -0.784512, 0.197459,
		-0.629330, -0.596833, -0.497730,
		32.046986, 32.287254, 35.043488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868172, 32.325508, 34.993000>,  <32.487514, 32.705036, 35.391899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868172, 32.325508, 34.993000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.505344, 32.319550, 34.824711>,  <32.287647, 32.315975, 34.723736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.505344, 32.319550, 34.824711>,  <32.868172, 32.325508, 34.993000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505344, 32.319550, 34.824711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412115, 0.172675, -0.894620,
		0.085971, -0.984866, -0.150490,
		-0.907067, -0.014892, -0.420723,
		32.233223, 32.315083, 34.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951290, 32.016010, 34.394466>,  <32.868172, 32.325508, 34.993000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951290, 32.016010, 34.394466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611061, 32.214626, 34.325214>,  <32.406925, 32.333797, 34.283665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611061, 32.214626, 34.325214>,  <32.951290, 32.016010, 34.394466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611061, 32.214626, 34.325214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342220, 0.272707, -0.899176,
		-0.399265, -0.824061, -0.401883,
		-0.850572, 0.496542, -0.173128,
		32.355888, 32.363590, 34.273277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155109, 31.393337, 34.101578>,  <32.951290, 32.016010, 34.394466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155109, 31.393337, 34.101578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527245, 31.264099, 34.032196>,  <33.750526, 31.186556, 33.990566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527245, 31.264099, 34.032196>,  <33.155109, 31.393337, 34.101578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527245, 31.264099, 34.032196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060632, -0.330960, 0.941695,
		-0.361671, -0.886606, -0.288312,
		0.930332, -0.323103, -0.173455,
		33.806347, 31.167170, 33.980160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141911, 30.959538, 34.553387>,  <33.155109, 31.393337, 34.101578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141911, 30.959538, 34.553387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534389, 30.986076, 34.480888>,  <33.769878, 31.001999, 34.437389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534389, 30.986076, 34.480888>,  <33.141911, 30.959538, 34.553387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534389, 30.986076, 34.480888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189776, -0.502716, 0.843363,
		-0.035159, -0.861902, -0.505855,
		0.981198, 0.066347, -0.181244,
		33.828751, 31.005980, 34.426514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400539, 30.285902, 34.543140>,  <33.141911, 30.959538, 34.553387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400539, 30.285902, 34.543140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723785, 30.512562, 34.607460>,  <33.917732, 30.648558, 34.646049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723785, 30.512562, 34.607460>,  <33.400539, 30.285902, 34.543140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723785, 30.512562, 34.607460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217063, -0.540268, 0.813015,
		0.547566, -0.622110, -0.559599,
		0.808118, 0.566648, 0.160796,
		33.966221, 30.682556, 34.655697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941898, 29.884001, 34.835136>,  <33.400539, 30.285902, 34.543140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941898, 29.884001, 34.835136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.080872, 30.238052, 34.958965>,  <34.164253, 30.450483, 35.033264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.080872, 30.238052, 34.958965>,  <33.941898, 29.884001, 34.835136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080872, 30.238052, 34.958965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341604, -0.426925, 0.837282,
		0.873270, -0.185144, -0.450690,
		0.347429, 0.885131, 0.309575,
		34.185101, 30.503592, 35.051838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501770, 29.718565, 35.185917>,  <33.941898, 29.884001, 34.835136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501770, 29.718565, 35.185917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454174, 30.094627, 35.313637>,  <34.425617, 30.320265, 35.390270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454174, 30.094627, 35.313637>,  <34.501770, 29.718565, 35.185917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454174, 30.094627, 35.313637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395009, -0.250215, 0.883946,
		0.910939, 0.231308, -0.341595,
		-0.118992, 0.940154, 0.319299,
		34.418476, 30.376673, 35.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134670, 30.001955, 35.463028>,  <34.501770, 29.718565, 35.185917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134670, 30.001955, 35.463028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.844944, 30.225338, 35.624760>,  <34.671108, 30.359367, 35.721798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.844944, 30.225338, 35.624760>,  <35.134670, 30.001955, 35.463028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844944, 30.225338, 35.624760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307187, -0.263623, 0.914406,
		0.617250, 0.786528, 0.019396,
		-0.724320, 0.558459, 0.404333,
		34.627647, 30.392876, 35.746059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429367, 30.249262, 36.027439>,  <35.134670, 30.001955, 35.463028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429367, 30.249262, 36.027439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033337, 30.283081, 36.072327>,  <34.795719, 30.303373, 36.099258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033337, 30.283081, 36.072327>,  <35.429367, 30.249262, 36.027439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033337, 30.283081, 36.072327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102424, -0.112456, 0.988364,
		0.096185, 0.990053, 0.102681,
		-0.990080, 0.084549, 0.112222,
		34.736313, 30.308445, 36.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328815, 30.601633, 36.596180>,  <35.429367, 30.249262, 36.027439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328815, 30.601633, 36.596180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.949120, 30.477005, 36.578861>,  <34.721302, 30.402227, 36.568470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.949120, 30.477005, 36.578861>,  <35.328815, 30.601633, 36.596180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949120, 30.477005, 36.578861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005084, -0.122412, 0.992466,
		-0.314524, 0.942305, 0.114613,
		-0.949236, -0.311572, -0.043293,
		34.664349, 30.383533, 36.565872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954643, 30.866114, 37.187923>,  <35.328815, 30.601633, 36.596180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954643, 30.866114, 37.187923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.721390, 30.557697, 37.085590>,  <34.581436, 30.372648, 37.024189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.721390, 30.557697, 37.085590>,  <34.954643, 30.866114, 37.187923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721390, 30.557697, 37.085590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153443, -0.204716, 0.966720,
		-0.797753, 0.602984, 0.001067,
		-0.583135, -0.771039, -0.255836,
		34.546448, 30.326385, 37.008839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487236, 30.826956, 37.704273>,  <34.954643, 30.866114, 37.187923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487236, 30.826956, 37.704273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.464066, 30.469582, 37.526096>,  <34.450161, 30.255157, 37.419189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.464066, 30.469582, 37.526096>,  <34.487236, 30.826956, 37.704273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464066, 30.469582, 37.526096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057654, -0.448440, 0.891952,
		-0.996655, 0.025989, 0.077488,
		-0.057929, -0.893435, -0.445441,
		34.446686, 30.201551, 37.392464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043762, 30.469416, 38.125870>,  <34.487236, 30.826956, 37.704273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043762, 30.469416, 38.125870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.214989, 30.177769, 37.912270>,  <34.317722, 30.002781, 37.784111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.214989, 30.177769, 37.912270>,  <34.043762, 30.469416, 38.125870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214989, 30.177769, 37.912270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023751, -0.599740, 0.799842,
		-0.903436, -0.329701, -0.274044,
		0.428064, -0.729115, -0.533996,
		34.343407, 29.959034, 37.752071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655159, 29.846144, 38.178894>,  <34.043762, 30.469416, 38.125870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655159, 29.846144, 38.178894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032001, 29.739613, 38.097408>,  <34.258106, 29.675694, 38.048515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032001, 29.739613, 38.097408>,  <33.655159, 29.846144, 38.178894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032001, 29.739613, 38.097408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024097, -0.552207, 0.833359,
		-0.334443, -0.790023, -0.513821,
		0.942108, -0.266330, -0.203718,
		34.314632, 29.659714, 38.036293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677197, 29.132067, 38.147655>,  <33.655159, 29.846144, 38.178894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677197, 29.132067, 38.147655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057159, 29.237289, 38.215157>,  <34.285137, 29.300423, 38.255657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057159, 29.237289, 38.215157>,  <33.677197, 29.132067, 38.147655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057159, 29.237289, 38.215157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065816, -0.696224, 0.714801,
		0.305526, -0.667887, -0.678661,
		0.949906, 0.263057, 0.168757,
		34.342133, 29.316206, 38.265785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015182, 28.490377, 38.206974>,  <33.677197, 29.132067, 38.147655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015182, 28.490377, 38.206974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.252102, 28.759068, 38.384949>,  <34.394253, 28.920282, 38.491734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.252102, 28.759068, 38.384949>,  <34.015182, 28.490377, 38.206974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252102, 28.759068, 38.384949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201059, -0.657977, 0.725700,
		0.780232, -0.340370, -0.524773,
		0.592295, 0.671725, 0.444940,
		34.429790, 28.960585, 38.518433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689198, 28.076561, 37.652763>,  <34.015182, 28.490377, 38.206974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689198, 28.076561, 37.652763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353035, 27.859825, 37.657177>,  <33.151337, 27.729784, 37.659824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.353035, 27.859825, 37.657177>,  <33.689198, 28.076561, 37.652763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353035, 27.859825, 37.657177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261394, 0.387430, -0.884065,
		0.474750, -0.745859, -0.467234,
		-0.840408, -0.541842, 0.011031,
		33.100914, 27.697273, 37.660488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686550, 27.778879, 37.053089>,  <33.689198, 28.076561, 37.652763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686550, 27.778879, 37.053089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304619, 27.716080, 37.154003>,  <33.075459, 27.678400, 37.214550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304619, 27.716080, 37.154003>,  <33.686550, 27.778879, 37.053089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304619, 27.716080, 37.154003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291453, 0.329468, -0.898057,
		0.057875, -0.931022, -0.360345,
		-0.954833, -0.156999, 0.252281,
		33.018169, 27.668980, 37.229687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432739, 27.242393, 36.678871>,  <33.686550, 27.778879, 37.053089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432739, 27.242393, 36.678871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097630, 27.429836, 36.790970>,  <32.896564, 27.542301, 36.858227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097630, 27.429836, 36.790970>,  <33.432739, 27.242393, 36.678871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097630, 27.429836, 36.790970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320264, -0.006047, -0.947309,
		-0.442219, -0.883387, 0.155144,
		-0.837778, 0.468605, 0.280243,
		32.846294, 27.570417, 36.875042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956020, 27.040236, 36.195713>,  <33.432739, 27.242393, 36.678871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956020, 27.040236, 36.195713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.749218, 27.343685, 36.354305>,  <32.625137, 27.525755, 36.449463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.749218, 27.343685, 36.354305>,  <32.956020, 27.040236, 36.195713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749218, 27.343685, 36.354305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383428, 0.208876, -0.899641,
		-0.765304, -0.617140, 0.182888,
		-0.517003, 0.758623, 0.396482,
		32.594116, 27.571272, 36.473251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220047, 26.865227, 36.164242>,  <32.956020, 27.040236, 36.195713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220047, 26.865227, 36.164242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.291782, 27.258739, 36.165352>,  <32.334824, 27.494848, 36.166019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.291782, 27.258739, 36.165352>,  <32.220047, 26.865227, 36.164242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291782, 27.258739, 36.165352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466997, 0.087613, -0.879908,
		-0.865882, 0.156503, 0.475137,
		0.179336, 0.983784, 0.002776,
		32.345585, 27.553875, 36.166183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771538, 27.110748, 35.730511>,  <32.220047, 26.865227, 36.164242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771538, 27.110748, 35.730511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026436, 27.418419, 35.749634>,  <32.179375, 27.603022, 35.761108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026436, 27.418419, 35.749634>,  <31.771538, 27.110748, 35.730511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026436, 27.418419, 35.749634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159761, 0.192536, -0.968197,
		-0.753919, 0.609342, 0.245577,
		0.637245, 0.769177, 0.047807,
		32.217609, 27.649172, 35.763977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457258, 27.707468, 35.413628>,  <31.771538, 27.110748, 35.730511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457258, 27.707468, 35.413628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847010, 27.791271, 35.380901>,  <32.080860, 27.841553, 35.361263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847010, 27.791271, 35.380901>,  <31.457258, 27.707468, 35.413628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847010, 27.791271, 35.380901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144925, 0.306631, -0.940731,
		-0.172003, 0.928484, 0.329138,
		0.974378, 0.209509, -0.081819,
		32.139324, 27.854124, 35.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733967, 27.846319, 35.067543>,  <31.457258, 27.707468, 35.413628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733967, 27.846319, 35.067543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496372, 27.586880, 34.877174>,  <30.353815, 27.431215, 34.762955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.496372, 27.586880, 34.877174>,  <30.733967, 27.846319, 35.067543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496372, 27.586880, 34.877174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274959, -0.392284, 0.877787,
		-0.756029, 0.652251, 0.054673,
		-0.593985, -0.648600, -0.475920,
		30.318176, 27.392300, 34.734398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125065, 27.929787, 35.388649>,  <30.733967, 27.846319, 35.067543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125065, 27.929787, 35.388649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086273, 27.565208, 35.228718>,  <30.062998, 27.346460, 35.132759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086273, 27.565208, 35.228718>,  <30.125065, 27.929787, 35.388649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086273, 27.565208, 35.228718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278176, -0.360887, 0.890157,
		-0.955622, 0.197550, -0.218543,
		-0.096981, -0.911446, -0.399825,
		30.057178, 27.291775, 35.108768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488047, 27.679625, 35.631275>,  <30.125065, 27.929787, 35.388649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488047, 27.679625, 35.631275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.669250, 27.335850, 35.536491>,  <29.777973, 27.129585, 35.479622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.669250, 27.335850, 35.536491>,  <29.488047, 27.679625, 35.631275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669250, 27.335850, 35.536491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319284, -0.404568, 0.856961,
		-0.832370, -0.312556, -0.457678,
		0.453010, -0.859438, -0.236956,
		29.805153, 27.078018, 35.465405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009989, 27.091988, 35.840912>,  <29.488047, 27.679625, 35.631275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009989, 27.091988, 35.840912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382059, 26.945202, 35.836704>,  <29.605301, 26.857130, 35.834179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382059, 26.945202, 35.836704>,  <29.009989, 27.091988, 35.840912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382059, 26.945202, 35.836704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168799, -0.452973, 0.875398,
		-0.326005, -0.812499, -0.483288,
		0.930176, -0.366963, -0.010523,
		29.661112, 26.835112, 35.833546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920893, 26.373598, 36.023258>,  <29.009989, 27.091988, 35.840912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920893, 26.373598, 36.023258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308424, 26.453629, 36.081692>,  <29.540943, 26.501646, 36.116753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308424, 26.453629, 36.081692>,  <28.920893, 26.373598, 36.023258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308424, 26.453629, 36.081692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044544, -0.439387, 0.897193,
		0.243694, -0.875733, -0.416779,
		0.968828, 0.200075, 0.146084,
		29.599073, 26.513651, 36.125519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200138, 25.771801, 36.362068>,  <28.920893, 26.373598, 36.023258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200138, 25.771801, 36.362068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.487093, 26.038551, 36.442699>,  <29.659266, 26.198601, 36.491077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.487093, 26.038551, 36.442699>,  <29.200138, 25.771801, 36.362068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487093, 26.038551, 36.442699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079219, -0.209376, 0.974621,
		0.692156, -0.715149, -0.097375,
		0.717388, 0.666876, 0.201574,
		29.702309, 26.238613, 36.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745268, 25.429831, 36.898071>,  <29.200138, 25.771801, 36.362068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745268, 25.429831, 36.898071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.774376, 25.828770, 36.898399>,  <29.791840, 26.068132, 36.898594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.774376, 25.828770, 36.898399>,  <29.745268, 25.429831, 36.898071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774376, 25.828770, 36.898399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154137, -0.012055, 0.987976,
		0.985366, -0.071767, -0.154605,
		0.072768, 0.997348, 0.000816,
		29.796206, 26.127974, 36.898643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295914, 25.572002, 37.302605>,  <29.745268, 25.429831, 36.898071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295914, 25.572002, 37.302605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074268, 25.904644, 37.317535>,  <29.941280, 26.104229, 37.326492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074268, 25.904644, 37.317535>,  <30.295914, 25.572002, 37.302605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074268, 25.904644, 37.317535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020018, -0.031513, 0.999303,
		0.832200, 0.554475, 0.000815,
		-0.554114, 0.831603, 0.037325,
		29.908033, 26.154125, 37.328732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676281, 25.960329, 37.786621>,  <30.295914, 25.572002, 37.302605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676281, 25.960329, 37.786621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.302835, 26.103378, 37.777962>,  <30.078768, 26.189209, 37.772766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.302835, 26.103378, 37.777962>,  <30.676281, 25.960329, 37.786621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302835, 26.103378, 37.777962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033117, 0.146309, 0.988684,
		0.356746, 0.922333, -0.148440,
		-0.933614, 0.357625, -0.021650,
		30.022751, 26.210667, 37.771465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.429602, 33.463661, 23.474951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031311, 33.482571, 23.443218>,  <30.792337, 33.493916, 23.424179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031311, 33.482571, 23.443218>,  <31.429602, 33.463661, 23.474951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031311, 33.482571, 23.443218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085595, -0.794924, 0.600641,
		-0.034668, 0.604865, 0.795573,
		-0.995727, 0.047274, -0.079332,
		30.732594, 33.496754, 23.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192778, 33.516804, 24.108435>,  <31.429602, 33.463661, 23.474951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192778, 33.516804, 24.108435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903355, 33.368126, 23.875778>,  <30.729700, 33.278919, 23.736185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903355, 33.368126, 23.875778>,  <31.192778, 33.516804, 24.108435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903355, 33.368126, 23.875778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143363, -0.743338, 0.653372,
		-0.675211, 0.556139, 0.484562,
		-0.723559, -0.371695, -0.581640,
		30.686287, 33.256618, 23.701286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536480, 33.378723, 24.506098>,  <31.192778, 33.516804, 24.108435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536480, 33.378723, 24.506098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530994, 33.128887, 24.193764>,  <30.527702, 32.978985, 24.006363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530994, 33.128887, 24.193764>,  <30.536480, 33.378723, 24.506098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530994, 33.128887, 24.193764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358079, -0.726047, 0.587056,
		-0.933591, 0.287652, -0.213695,
		-0.013715, -0.624589, -0.780833,
		30.526880, 32.941509, 23.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003693, 32.885891, 24.741041>,  <30.536480, 33.378723, 24.506098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003693, 32.885891, 24.741041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168396, 32.673328, 24.444916>,  <30.267218, 32.545792, 24.267241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168396, 32.673328, 24.444916>,  <30.003693, 32.885891, 24.741041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168396, 32.673328, 24.444916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171443, -0.843044, 0.509788,
		-0.895022, -0.082987, -0.438234,
		0.411756, -0.531403, -0.740315,
		30.291924, 32.513908, 24.222822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658302, 32.405991, 24.583742>,  <30.003693, 32.885891, 24.741041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658302, 32.405991, 24.583742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983955, 32.237808, 24.423538>,  <30.179346, 32.136898, 24.327415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983955, 32.237808, 24.423538>,  <29.658302, 32.405991, 24.583742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983955, 32.237808, 24.423538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167742, -0.830608, 0.530993,
		-0.555926, -0.365115, -0.746751,
		0.814131, -0.420454, -0.400511,
		30.228195, 32.111671, 24.303385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515966, 31.650967, 24.482609>,  <29.658302, 32.405991, 24.583742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515966, 31.650967, 24.482609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912477, 31.703682, 24.481941>,  <30.150383, 31.735312, 24.481541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912477, 31.703682, 24.481941>,  <29.515966, 31.650967, 24.482609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912477, 31.703682, 24.481941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117281, -0.876226, 0.467411,
		0.060136, -0.463529, -0.884039,
		0.991277, 0.131789, -0.001671,
		30.209860, 31.743219, 24.481440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760571, 31.018545, 24.205393>,  <29.515966, 31.650967, 24.482609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760571, 31.018545, 24.205393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062590, 31.176399, 24.414837>,  <30.243801, 31.271111, 24.540503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062590, 31.176399, 24.414837>,  <29.760571, 31.018545, 24.205393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062590, 31.176399, 24.414837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064471, -0.839402, 0.539673,
		0.652492, -0.373722, -0.659231,
		0.755048, 0.394634, 0.523609,
		30.289104, 31.294790, 24.571920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203655, 30.498663, 24.389790>,  <29.760571, 31.018545, 24.205393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203655, 30.498663, 24.389790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323166, 30.781342, 24.646324>,  <30.394873, 30.950949, 24.800245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323166, 30.781342, 24.646324>,  <30.203655, 30.498663, 24.389790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323166, 30.781342, 24.646324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135729, -0.696668, 0.704437,
		0.944622, -0.123421, -0.304066,
		0.298775, 0.706698, 0.641336,
		30.412798, 30.993351, 24.838724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882759, 30.248411, 24.694122>,  <30.203655, 30.498663, 24.389790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882759, 30.248411, 24.694122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763298, 30.541492, 24.938728>,  <30.691622, 30.717342, 25.085491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763298, 30.541492, 24.938728>,  <30.882759, 30.248411, 24.694122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763298, 30.541492, 24.938728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141262, -0.599761, 0.787611,
		0.943849, 0.321607, 0.075617,
		-0.298654, 0.732705, 0.611515,
		30.673702, 30.761303, 25.122183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302637, 30.126223, 25.251381>,  <30.882759, 30.248411, 24.694122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302637, 30.126223, 25.251381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982685, 30.328476, 25.380707>,  <30.790714, 30.449827, 25.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982685, 30.328476, 25.380707>,  <31.302637, 30.126223, 25.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982685, 30.328476, 25.380707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014697, -0.522044, 0.852792,
		0.599982, 0.686881, 0.410140,
		-0.799878, 0.505632, 0.323313,
		30.742722, 30.480165, 25.477701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494009, 30.215494, 25.987574>,  <31.302637, 30.126223, 25.251381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494009, 30.215494, 25.987574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101814, 30.294060, 25.984196>,  <30.866497, 30.341198, 25.982168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101814, 30.294060, 25.984196>,  <31.494009, 30.215494, 25.987574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101814, 30.294060, 25.984196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075217, -0.335102, 0.939175,
		0.181637, 0.921482, 0.343336,
		-0.980485, 0.196413, -0.008444,
		30.807669, 30.352983, 25.981663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431890, 30.641140, 26.576824>,  <31.494009, 30.215494, 25.987574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431890, 30.641140, 26.576824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073328, 30.477116, 26.509525>,  <30.858191, 30.378702, 26.469145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073328, 30.477116, 26.509525>,  <31.431890, 30.641140, 26.576824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073328, 30.477116, 26.509525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085881, -0.533089, 0.841689,
		-0.434834, 0.740046, 0.513080,
		-0.896406, -0.410059, -0.168249,
		30.804407, 30.354097, 26.459051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813337, 30.983694, 27.189407>,  <31.431890, 30.641140, 26.576824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813337, 30.983694, 27.189407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164246, 30.794727, 27.155426>,  <32.374790, 30.681347, 27.135036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164246, 30.794727, 27.155426>,  <31.813337, 30.983694, 27.189407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164246, 30.794727, 27.155426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173367, 0.476900, -0.861690,
		0.447590, 0.741209, 0.500273,
		0.877273, -0.472415, -0.084954,
		32.427429, 30.653004, 27.129940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201923, 31.465096, 26.787281>,  <31.813337, 30.983694, 27.189407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201923, 31.465096, 26.787281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460514, 31.163158, 26.742970>,  <32.615669, 30.981997, 26.716383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460514, 31.163158, 26.742970>,  <32.201923, 31.465096, 26.787281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460514, 31.163158, 26.742970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198137, 0.306334, -0.931075,
		0.736752, 0.579974, 0.347602,
		0.646482, -0.754844, -0.110777,
		32.654457, 30.936705, 26.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768883, 31.800043, 26.407902>,  <32.201923, 31.465096, 26.787281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768883, 31.800043, 26.407902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848156, 31.408379, 26.390179>,  <32.895721, 31.173380, 26.379545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848156, 31.408379, 26.390179>,  <32.768883, 31.800043, 26.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848156, 31.408379, 26.390179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407268, 0.123380, -0.904937,
		0.891547, 0.161302, 0.423233,
		0.198186, -0.979162, -0.044306,
		32.907612, 31.114630, 26.376886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561619, 31.628424, 26.331749>,  <32.768883, 31.800043, 26.407902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561619, 31.628424, 26.331749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312302, 31.364632, 26.163662>,  <33.162712, 31.206356, 26.062809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312302, 31.364632, 26.163662>,  <33.561619, 31.628424, 26.331749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312302, 31.364632, 26.163662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550763, 0.011251, -0.834586,
		0.555122, -0.751637, 0.356205,
		-0.623298, -0.659481, -0.420220,
		33.125313, 31.166788, 26.037596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069347, 31.145567, 26.203333>,  <33.561619, 31.628424, 26.331749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069347, 31.145567, 26.203333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755791, 31.045624, 25.975971>,  <33.567657, 30.985657, 25.839554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755791, 31.045624, 25.975971>,  <34.069347, 31.145567, 26.203333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755791, 31.045624, 25.975971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592375, -0.026682, -0.805221,
		0.186026, -0.967914, 0.168926,
		-0.783892, -0.249860, -0.568404,
		33.520622, 30.970665, 25.805450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263077, 30.577906, 25.884521>,  <34.069347, 31.145567, 26.203333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263077, 30.577906, 25.884521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949192, 30.657440, 25.649677>,  <33.760860, 30.705162, 25.508770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949192, 30.657440, 25.649677>,  <34.263077, 30.577906, 25.884521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949192, 30.657440, 25.649677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509734, -0.331950, -0.793713,
		-0.352706, -0.922103, 0.159133,
		-0.784710, 0.198831, -0.587109,
		33.713779, 30.717091, 25.473545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144180, 30.015656, 25.407810>,  <34.263077, 30.577906, 25.884521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144180, 30.015656, 25.407810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946392, 30.319237, 25.238346>,  <33.827717, 30.501385, 25.136667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946392, 30.319237, 25.238346>,  <34.144180, 30.015656, 25.407810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946392, 30.319237, 25.238346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258721, -0.336807, -0.905331,
		-0.829794, -0.557272, -0.029815,
		-0.494474, 0.758952, -0.423659,
		33.798050, 30.546923, 25.111248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753540, 29.753004, 24.832264>,  <34.144180, 30.015656, 25.407810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753540, 29.753004, 24.832264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841324, 30.140060, 24.782444>,  <33.893993, 30.372293, 24.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841324, 30.140060, 24.782444>,  <33.753540, 29.753004, 24.832264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841324, 30.140060, 24.782444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522969, -0.224448, -0.822269,
		-0.823615, 0.115319, -0.555302,
		0.219459, 0.967639, -0.124550,
		33.907162, 30.430351, 24.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685997, 29.912823, 24.173704>,  <33.753540, 29.753004, 24.832264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685997, 29.912823, 24.173704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918297, 30.213799, 24.298004>,  <34.057678, 30.394384, 24.372585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918297, 30.213799, 24.298004>,  <33.685997, 29.912823, 24.173704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918297, 30.213799, 24.298004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574013, -0.107802, -0.811719,
		-0.577269, 0.649781, -0.494516,
		0.580749, 0.752439, 0.310752,
		34.092522, 30.439529, 24.391230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893787, 30.253746, 23.580257>,  <33.685997, 29.912823, 24.173704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893787, 30.253746, 23.580257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149258, 30.401691, 23.850159>,  <34.302540, 30.490458, 24.012100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149258, 30.401691, 23.850159>,  <33.893787, 30.253746, 23.580257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149258, 30.401691, 23.850159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707832, 0.061504, -0.703699,
		-0.301771, 0.927049, -0.222518,
		0.638677, 0.369861, 0.674755,
		34.340862, 30.512650, 24.052586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236263, 30.838316, 23.217245>,  <33.893787, 30.253746, 23.580257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236263, 30.838316, 23.217245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462704, 30.703831, 23.518307>,  <34.598568, 30.623140, 23.698944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462704, 30.703831, 23.518307>,  <34.236263, 30.838316, 23.217245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462704, 30.703831, 23.518307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793099, -0.026810, -0.608503,
		0.224765, 0.941404, 0.251473,
		0.566105, -0.336213, 0.752653,
		34.632534, 30.602966, 23.744102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692528, 31.381250, 23.228323>,  <34.236263, 30.838316, 23.217245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692528, 31.381250, 23.228323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864002, 31.053612, 23.380802>,  <34.966885, 30.857029, 23.472290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864002, 31.053612, 23.380802>,  <34.692528, 31.381250, 23.228323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864002, 31.053612, 23.380802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806412, 0.156667, -0.570224,
		0.407347, 0.551847, 0.727690,
		0.428682, -0.819097, 0.381198,
		34.992607, 30.807882, 23.495161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448299, 31.502251, 23.282360>,  <34.692528, 31.381250, 23.228323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448299, 31.502251, 23.282360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442070, 31.102581, 23.297348>,  <35.438332, 30.862780, 23.306341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442070, 31.102581, 23.297348>,  <35.448299, 31.502251, 23.282360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442070, 31.102581, 23.297348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825984, -0.033977, -0.562669,
		0.563479, 0.022186, 0.825832,
		-0.015576, -0.999176, 0.037471,
		35.437397, 30.802828, 23.308590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138840, 31.305445, 23.458990>,  <35.448299, 31.502251, 23.282360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138840, 31.305445, 23.458990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949333, 31.009129, 23.268505>,  <35.835629, 30.831339, 23.154215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949333, 31.009129, 23.268505>,  <36.138840, 31.305445, 23.458990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949333, 31.009129, 23.268505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845664, -0.231785, -0.480757,
		0.245761, -0.630482, 0.736270,
		-0.473765, -0.740789, -0.476213,
		35.807205, 30.786892, 23.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297626, 31.946987, 22.982058>,  <36.138840, 31.305445, 23.458990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297626, 31.946987, 22.982058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450703, 32.304024, 23.077408>,  <36.542549, 32.518246, 23.134619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450703, 32.304024, 23.077408>,  <36.297626, 31.946987, 22.982058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450703, 32.304024, 23.077408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373244, -0.086652, 0.923677,
		0.845123, -0.442459, 0.299994,
		0.382695, 0.892592, 0.238377,
		36.565510, 32.571800, 23.148920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520252, 31.904678, 23.711941>,  <36.297626, 31.946987, 22.982058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520252, 31.904678, 23.711941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414818, 32.274948, 23.603390>,  <36.351555, 32.497112, 23.538260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414818, 32.274948, 23.603390>,  <36.520252, 31.904678, 23.711941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414818, 32.274948, 23.603390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453250, 0.129486, 0.881929,
		0.851519, 0.355467, 0.385431,
		-0.263589, 0.925676, -0.271375,
		36.335743, 32.552650, 23.521976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879135, 32.523914, 23.996283>,  <36.520252, 31.904678, 23.711941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879135, 32.523914, 23.996283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518635, 32.696903, 23.985558>,  <36.302334, 32.800697, 23.979122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518635, 32.696903, 23.985558>,  <36.879135, 32.523914, 23.996283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518635, 32.696903, 23.985558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108350, 0.284847, 0.952430,
		0.419539, 0.855470, -0.303576,
		-0.901248, 0.432474, -0.026814,
		36.248260, 32.826645, 23.977512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953003, 33.095306, 24.382812>,  <36.879135, 32.523914, 23.996283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953003, 33.095306, 24.382812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561047, 33.015499, 24.381760>,  <36.325874, 32.967617, 24.381128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561047, 33.015499, 24.381760>,  <36.953003, 33.095306, 24.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561047, 33.015499, 24.381760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025354, 0.111413, 0.993451,
		-0.197916, 0.973540, -0.114231,
		-0.979891, -0.199516, -0.002633,
		36.267078, 32.955643, 24.380970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683872, 33.632488, 24.738430>,  <36.953003, 33.095306, 24.382812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683872, 33.632488, 24.738430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411129, 33.341095, 24.764919>,  <36.247482, 33.166260, 24.780813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411129, 33.341095, 24.764919>,  <36.683872, 33.632488, 24.738430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411129, 33.341095, 24.764919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212491, 0.283893, 0.935015,
		-0.699940, 0.623476, -0.348370,
		-0.681859, -0.728480, 0.066225,
		36.206570, 33.122551, 24.784786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140446, 33.898968, 25.117222>,  <36.683872, 33.632488, 24.738430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140446, 33.898968, 25.117222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096508, 33.502636, 25.148697>,  <36.070145, 33.264835, 25.167582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096508, 33.502636, 25.148697>,  <36.140446, 33.898968, 25.117222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096508, 33.502636, 25.148697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267117, 0.105683, 0.957852,
		-0.957383, 0.084198, -0.276276,
		-0.109847, -0.990829, 0.078689,
		36.063553, 33.205387, 25.172304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642815, 33.818100, 25.617516>,  <36.140446, 33.898968, 25.117222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642815, 33.818100, 25.617516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796162, 33.448826, 25.606567>,  <35.888172, 33.227261, 25.599998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796162, 33.448826, 25.606567>,  <35.642815, 33.818100, 25.617516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796162, 33.448826, 25.606567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232684, -0.125220, 0.964457,
		-0.893804, -0.363375, -0.262817,
		0.383369, -0.923190, -0.027371,
		35.911171, 33.171867, 25.598356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186352, 33.324726, 26.019499>,  <35.642815, 33.818100, 25.617516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186352, 33.324726, 26.019499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494186, 33.070053, 26.000038>,  <35.678886, 32.917248, 25.988361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494186, 33.070053, 26.000038>,  <35.186352, 33.324726, 26.019499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494186, 33.070053, 26.000038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261462, -0.383715, 0.885664,
		-0.582559, -0.668874, -0.461771,
		0.769586, -0.636687, -0.048651,
		35.725063, 32.879047, 25.985443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938217, 32.799896, 26.462746>,  <35.186352, 33.324726, 26.019499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938217, 32.799896, 26.462746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328957, 32.735348, 26.406563>,  <35.563400, 32.696617, 26.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328957, 32.735348, 26.406563>,  <34.938217, 32.799896, 26.462746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328957, 32.735348, 26.406563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057908, -0.432594, 0.899727,
		-0.205950, -0.887030, -0.413234,
		0.976848, -0.161369, -0.140458,
		35.622009, 32.686935, 26.364426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068333, 32.067535, 26.572151>,  <34.938217, 32.799896, 26.462746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068333, 32.067535, 26.572151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 32.258160, 26.643528>,  <35.619270, 32.372536, 26.686354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 32.258160, 26.643528>,  <35.068333, 32.067535, 26.572151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412670, 32.258160, 26.643528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102473, -0.505821, 0.856530,
		0.498452, -0.719050, -0.484266,
		0.860840, 0.476563, 0.178444,
		35.670921, 32.401127, 26.697062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589191, 31.577450, 26.706556>,  <35.068333, 32.067535, 26.572151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589191, 31.577450, 26.706556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737659, 31.920067, 26.849983>,  <35.826740, 32.125637, 26.936039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737659, 31.920067, 26.849983>,  <35.589191, 31.577450, 26.706556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737659, 31.920067, 26.849983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077283, -0.413309, 0.907305,
		0.925345, -0.309049, -0.219602,
		0.371165, 0.856542, 0.358569,
		35.849010, 32.177029, 26.957554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116283, 31.359518, 27.120789>,  <35.589191, 31.577450, 26.706556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116283, 31.359518, 27.120789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019035, 31.729927, 27.236290>,  <35.960686, 31.952171, 27.305592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019035, 31.729927, 27.236290>,  <36.116283, 31.359518, 27.120789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019035, 31.729927, 27.236290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022595, -0.292199, 0.956091,
		0.969733, 0.238968, 0.050115,
		-0.243119, 0.926021, 0.288755,
		35.946098, 32.007732, 27.322916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562080, 31.469378, 27.607494>,  <36.116283, 31.359518, 27.120789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562080, 31.469378, 27.607494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263027, 31.727917, 27.668530>,  <36.083595, 31.883041, 27.705151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263027, 31.727917, 27.668530>,  <36.562080, 31.469378, 27.607494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263027, 31.727917, 27.668530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004436, -0.234614, 0.972078,
		0.664102, 0.726077, 0.178271,
		-0.747629, 0.646350, 0.152587,
		36.038738, 31.921822, 27.714306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760635, 31.647936, 28.247042>,  <36.562080, 31.469378, 27.607494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760635, 31.647936, 28.247042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388313, 31.787678, 28.204041>,  <36.164921, 31.871523, 28.178240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388313, 31.787678, 28.204041>,  <36.760635, 31.647936, 28.247042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388313, 31.787678, 28.204041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137893, -0.063241, 0.988426,
		0.338514, 0.934853, 0.107038,
		-0.930803, 0.349356, -0.107502,
		36.109074, 31.892485, 28.171789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739895, 32.095840, 28.740757>,  <36.760635, 31.647936, 28.247042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739895, 32.095840, 28.740757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363247, 31.987408, 28.660892>,  <36.137257, 31.922346, 28.612974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363247, 31.987408, 28.660892>,  <36.739895, 32.095840, 28.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363247, 31.987408, 28.660892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247298, 0.154477, 0.956546,
		-0.228464, 0.950078, -0.212497,
		-0.941620, -0.271086, -0.199660,
		36.080761, 31.906082, 28.600994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192940, 32.629002, 29.141369>,  <36.739895, 32.095840, 28.740757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192940, 32.629002, 29.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007076, 32.282799, 29.066544>,  <35.895557, 32.075077, 29.021648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007076, 32.282799, 29.066544>,  <36.192940, 32.629002, 29.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007076, 32.282799, 29.066544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375442, 0.001242, 0.926845,
		-0.801957, 0.500897, -0.325525,
		-0.464658, -0.865506, -0.187062,
		35.867680, 32.023148, 29.010426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541100, 32.750042, 29.388695>,  <36.192940, 32.629002, 29.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541100, 32.750042, 29.388695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559639, 32.352600, 29.347523>,  <35.570763, 32.114136, 29.322819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559639, 32.352600, 29.347523>,  <35.541100, 32.750042, 29.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559639, 32.352600, 29.347523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571376, -0.110894, 0.813162,
		-0.819378, 0.021120, -0.572864,
		0.046353, -0.993608, -0.102932,
		35.573544, 32.054520, 29.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930996, 32.419762, 29.619574>,  <35.541100, 32.750042, 29.388695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930996, 32.419762, 29.619574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150639, 32.085724, 29.632809>,  <35.282425, 31.885300, 29.640749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150639, 32.085724, 29.632809>,  <34.930996, 32.419762, 29.619574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150639, 32.085724, 29.632809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503697, -0.299086, 0.810455,
		-0.666915, -0.461689, -0.584866,
		0.549103, -0.835099, 0.033087,
		35.315369, 31.835194, 29.642735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426575, 31.788563, 29.667645>,  <34.930996, 32.419762, 29.619574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426575, 31.788563, 29.667645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783401, 31.677299, 29.810101>,  <34.997498, 31.610542, 29.895575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783401, 31.677299, 29.810101>,  <34.426575, 31.788563, 29.667645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783401, 31.677299, 29.810101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427890, -0.266491, 0.863651,
		-0.145322, -0.922827, -0.356750,
		0.892071, -0.278158, 0.356142,
		35.051022, 31.593851, 29.916943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355362, 31.036346, 30.026424>,  <34.426575, 31.788563, 29.667645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355362, 31.036346, 30.026424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682892, 31.208317, 30.178581>,  <34.879410, 31.311499, 30.269875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682892, 31.208317, 30.178581>,  <34.355362, 31.036346, 30.026424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682892, 31.208317, 30.178581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246301, -0.335432, 0.909297,
		0.518526, -0.838241, -0.168768,
		0.818820, 0.429926, 0.380390,
		34.928539, 31.337296, 30.292698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502354, 30.598394, 30.528675>,  <34.355362, 31.036346, 30.026424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502354, 30.598394, 30.528675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704552, 30.930851, 30.621346>,  <34.825871, 31.130325, 30.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704552, 30.930851, 30.621346>,  <34.502354, 30.598394, 30.528675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704552, 30.930851, 30.621346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040476, -0.245369, 0.968584,
		0.861879, -0.498993, -0.090392,
		0.505497, 0.831143, 0.231676,
		34.856201, 31.180195, 30.690847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914661, 30.373707, 31.141218>,  <34.502354, 30.598394, 30.528675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914661, 30.373707, 31.141218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883221, 30.772125, 31.124668>,  <34.864357, 31.011177, 31.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883221, 30.772125, 31.124668>,  <34.914661, 30.373707, 31.141218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883221, 30.772125, 31.124668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105166, 0.032986, 0.993907,
		0.991343, 0.082477, 0.102157,
		-0.078604, 0.996047, -0.041374,
		34.859638, 31.070940, 31.112255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022614, 30.438023, 31.886051>,  <34.914661, 30.373707, 31.141218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022614, 30.438023, 31.886051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884239, 30.795670, 31.772289>,  <34.801216, 31.010258, 31.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884239, 30.795670, 31.772289>,  <35.022614, 30.438023, 31.886051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884239, 30.795670, 31.772289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323773, 0.170743, 0.930601,
		0.880626, 0.414008, 0.230425,
		-0.345933, 0.894116, -0.284405,
		34.780460, 31.063904, 31.686968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159859, 30.785618, 32.486427>,  <35.022614, 30.438023, 31.886051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159859, 30.785618, 32.486427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907661, 31.013229, 32.275265>,  <34.756344, 31.149796, 32.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907661, 31.013229, 32.275265>,  <35.159859, 30.785618, 32.486427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907661, 31.013229, 32.275265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449261, 0.287082, 0.846019,
		0.632959, 0.770579, 0.074638,
		-0.630497, 0.569028, -0.527902,
		34.718513, 31.183937, 32.116894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196693, 31.614855, 32.592979>,  <35.159859, 30.785618, 32.486427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196693, 31.614855, 32.592979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836964, 31.477554, 32.484619>,  <34.621124, 31.395174, 32.419601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836964, 31.477554, 32.484619>,  <35.196693, 31.614855, 32.592979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836964, 31.477554, 32.484619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363930, 0.244102, 0.898871,
		-0.242410, 0.906969, -0.344447,
		-0.899329, -0.343250, -0.270901,
		34.567165, 31.374578, 32.403347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733826, 32.001587, 33.033993>,  <35.196693, 31.614855, 32.592979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733826, 32.001587, 33.033993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499508, 31.702816, 32.908169>,  <34.358917, 31.523554, 32.832676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499508, 31.702816, 32.908169>,  <34.733826, 32.001587, 33.033993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499508, 31.702816, 32.908169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327468, -0.136896, 0.934893,
		-0.741358, 0.650661, -0.164402,
		-0.585793, -0.746926, -0.314560,
		34.323769, 31.478739, 32.813801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126919, 32.097752, 33.420254>,  <34.733826, 32.001587, 33.033993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126919, 32.097752, 33.420254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160511, 31.717678, 33.300194>,  <34.180668, 31.489634, 33.228157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160511, 31.717678, 33.300194>,  <34.126919, 32.097752, 33.420254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160511, 31.717678, 33.300194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344636, -0.310325, 0.885960,
		-0.934972, 0.029041, -0.353530,
		0.083980, -0.950187, -0.300154,
		34.185703, 31.432623, 33.210148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552029, 31.857676, 33.687237>,  <34.126919, 32.097752, 33.420254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552029, 31.857676, 33.687237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784687, 31.539272, 33.620235>,  <33.924282, 31.348230, 33.580036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784687, 31.539272, 33.620235>,  <33.552029, 31.857676, 33.687237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784687, 31.539272, 33.620235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165995, -0.317739, 0.933535,
		-0.796323, -0.515185, -0.316945,
		0.581649, -0.796006, -0.167505,
		33.959183, 31.300470, 33.569984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831753, 31.861198, 33.636654>,  <33.552029, 31.857676, 33.687237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831753, 31.861198, 33.636654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567642, 32.156040, 33.694229>,  <32.409176, 32.332943, 33.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567642, 32.156040, 33.694229>,  <32.831753, 31.861198, 33.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567642, 32.156040, 33.694229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088832, 0.266957, -0.959605,
		-0.745752, -0.620817, -0.241743,
		-0.660275, 0.737102, 0.143936,
		32.369560, 32.377171, 33.737411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353855, 31.773174, 33.182537>,  <32.831753, 31.861198, 33.636654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353855, 31.773174, 33.182537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330231, 32.162598, 33.270805>,  <32.316055, 32.396252, 33.323765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330231, 32.162598, 33.270805>,  <32.353855, 31.773174, 33.182537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330231, 32.162598, 33.270805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186336, 0.227920, -0.955684,
		-0.980709, -0.015326, -0.194871,
		-0.059062, 0.973559, 0.220667,
		32.312511, 32.454666, 33.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833937, 32.078999, 32.810032>,  <32.353855, 31.773174, 33.182537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833937, 32.078999, 32.810032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077141, 32.378517, 32.915581>,  <32.223064, 32.558228, 32.978912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077141, 32.378517, 32.915581>,  <31.833937, 32.078999, 32.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077141, 32.378517, 32.915581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037959, 0.359402, -0.932410,
		-0.793021, 0.556898, 0.246944,
		0.608010, 0.748795, 0.263874,
		32.259544, 32.603157, 32.994743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687325, 32.564854, 32.336246>,  <31.833937, 32.078999, 32.810032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687325, 32.564854, 32.336246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007320, 32.729599, 32.510780>,  <32.199318, 32.828445, 32.615501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007320, 32.729599, 32.510780>,  <31.687325, 32.564854, 32.336246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007320, 32.729599, 32.510780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218399, 0.477438, -0.851091,
		-0.558855, 0.776157, 0.291994,
		0.799989, 0.411865, 0.436330,
		32.247318, 32.853157, 32.641678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726093, 33.332390, 32.238052>,  <31.687325, 32.564854, 32.336246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726093, 33.332390, 32.238052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092232, 33.179478, 32.288647>,  <32.311916, 33.087730, 32.319004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092232, 33.179478, 32.288647>,  <31.726093, 33.332390, 32.238052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092232, 33.179478, 32.288647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279440, 0.376917, -0.883089,
		0.289917, 0.843678, 0.451836,
		0.915348, -0.382283, 0.126483,
		32.366837, 33.064793, 32.326591>
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
