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
	<24.380068, 34.843937, 34.639473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296082, 35.014751, 34.991280>,  <24.245689, 35.117241, 35.202366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296082, 35.014751, 34.991280>,  <24.380068, 34.843937, 34.639473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296082, 35.014751, 34.991280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473125, 0.831610, -0.290823,
		-0.855609, 0.355059, -0.376652,
		-0.209968, 0.427034, 0.879520,
		24.233091, 35.142860, 35.255135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077288, 35.461395, 34.495224>,  <24.380068, 34.843937, 34.639473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077288, 35.461395, 34.495224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296825, 35.465183, 34.829571>,  <24.428549, 35.467457, 35.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296825, 35.465183, 34.829571>,  <24.077288, 35.461395, 34.495224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296825, 35.465183, 34.829571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540407, 0.758863, -0.363439,
		-0.637754, 0.651181, 0.411378,
		0.548844, 0.009473, 0.835871,
		24.461479, 35.468025, 35.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166714, 36.193619, 34.799702>,  <24.077288, 35.461395, 34.495224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166714, 36.193619, 34.799702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463179, 35.959545, 34.931305>,  <24.641058, 35.819103, 35.010265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463179, 35.959545, 34.931305>,  <24.166714, 36.193619, 34.799702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463179, 35.959545, 34.931305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666750, 0.698784, -0.259125,
		-0.078270, 0.411418, 0.908080,
		0.741160, -0.585180, 0.329006,
		24.685526, 35.783993, 35.030006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653589, 36.576496, 35.267967>,  <24.166714, 36.193619, 34.799702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653589, 36.576496, 35.267967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858227, 36.296280, 35.068966>,  <24.981009, 36.128151, 34.949566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858227, 36.296280, 35.068966>,  <24.653589, 36.576496, 35.267967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858227, 36.296280, 35.068966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681055, 0.683640, -0.262299,
		0.523867, -0.204639, 0.826853,
		0.511593, -0.700543, -0.497506,
		25.011705, 36.086117, 34.919716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479202, 36.432381, 35.349403>,  <24.653589, 36.576496, 35.267967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479202, 36.432381, 35.349403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310429, 36.403168, 34.987930>,  <25.209164, 36.385639, 34.771046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310429, 36.403168, 34.987930>,  <25.479202, 36.432381, 35.349403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310429, 36.403168, 34.987930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646994, 0.673993, -0.356555,
		0.635113, -0.735119, -0.237132,
		-0.421936, -0.073030, -0.903679,
		25.183847, 36.381260, 34.716827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073744, 36.174778, 34.816402>,  <25.479202, 36.432381, 35.349403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073744, 36.174778, 34.816402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761728, 36.359779, 34.647820>,  <25.574518, 36.470779, 34.546669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761728, 36.359779, 34.647820>,  <26.073744, 36.174778, 34.816402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761728, 36.359779, 34.647820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615814, 0.447997, -0.648130,
		-0.110950, -0.765107, -0.634272,
		-0.780041, 0.462504, -0.421458,
		25.527716, 36.498531, 34.521381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086145, 36.113762, 34.015820>,  <26.073744, 36.174778, 34.816402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086145, 36.113762, 34.015820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877138, 36.452793, 34.052876>,  <25.751734, 36.656212, 34.075108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877138, 36.452793, 34.052876>,  <26.086145, 36.113762, 34.015820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877138, 36.452793, 34.052876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526877, 0.406396, -0.746487,
		-0.670355, -0.341246, -0.658920,
		-0.522518, 0.847581, 0.092635,
		25.720383, 36.707066, 34.080666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193825, 36.377407, 33.349823>,  <26.086145, 36.113762, 34.015820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193825, 36.377407, 33.349823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054218, 36.674541, 33.578342>,  <25.970455, 36.852821, 33.715454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054218, 36.674541, 33.578342>,  <26.193825, 36.377407, 33.349823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054218, 36.674541, 33.578342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587660, 0.648359, -0.484031,
		-0.729962, 0.166792, -0.662824,
		-0.349015, 0.742840, 0.571294,
		25.949514, 36.897392, 33.749729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071121, 36.960106, 32.907814>,  <26.193825, 36.377407, 33.349823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071121, 36.960106, 32.907814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114447, 37.119637, 33.272057>,  <26.140442, 37.215355, 33.490604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114447, 37.119637, 33.272057>,  <26.071121, 36.960106, 32.907814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114447, 37.119637, 33.272057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510008, 0.763975, -0.395265,
		-0.853323, 0.507231, -0.120652,
		0.108316, 0.398822, 0.910609,
		26.146942, 37.239285, 33.545238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967974, 37.731884, 32.830082>,  <26.071121, 36.960106, 32.907814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967974, 37.731884, 32.830082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179594, 37.680672, 33.165634>,  <26.306566, 37.649944, 33.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179594, 37.680672, 33.165634>,  <25.967974, 37.731884, 32.830082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179594, 37.680672, 33.165634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686768, 0.645267, -0.334636,
		-0.498453, 0.753152, 0.429309,
		0.529050, -0.128035, 0.838876,
		26.338308, 37.642262, 33.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052509, 38.360359, 33.046852>,  <25.967974, 37.731884, 32.830082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052509, 38.360359, 33.046852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348190, 38.133007, 33.191364>,  <26.525599, 37.996593, 33.278072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348190, 38.133007, 33.191364>,  <26.052509, 38.360359, 33.046852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348190, 38.133007, 33.191364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672928, 0.601523, -0.430509,
		0.027377, 0.561347, 0.827128,
		0.739201, -0.568384, 0.361278,
		26.569950, 37.962490, 33.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412991, 38.768234, 33.463329>,  <26.052509, 38.360359, 33.046852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412991, 38.768234, 33.463329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672714, 38.498188, 33.323265>,  <26.828548, 38.336159, 33.239227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672714, 38.498188, 33.323265>,  <26.412991, 38.768234, 33.463329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672714, 38.498188, 33.323265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555721, 0.735500, -0.387573,
		0.519201, 0.057063, 0.852745,
		0.649311, -0.675117, -0.350161,
		26.867508, 38.295654, 33.218216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753035, 39.214962, 32.958218>,  <26.412991, 38.768234, 33.463329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753035, 39.214962, 32.958218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115763, 39.069740, 32.872547>,  <27.333399, 38.982609, 32.821144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115763, 39.069740, 32.872547>,  <26.753035, 39.214962, 32.958218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115763, 39.069740, 32.872547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217755, -0.838537, 0.499438,
		-0.360915, -0.406263, -0.839458,
		0.906820, -0.363051, -0.214175,
		27.387810, 38.960823, 32.808296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808273, 38.545216, 32.644817>,  <26.753035, 39.214962, 32.958218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808273, 38.545216, 32.644817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148781, 38.590836, 32.849689>,  <27.353086, 38.618206, 32.972614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148781, 38.590836, 32.849689>,  <26.808273, 38.545216, 32.644817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148781, 38.590836, 32.849689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240594, -0.782610, 0.574139,
		0.466320, -0.611976, -0.638774,
		0.851270, 0.114047, 0.512184,
		27.404161, 38.625050, 33.003345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409559, 37.974483, 32.659637>,  <26.808273, 38.545216, 32.644817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409559, 37.974483, 32.659637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353310, 38.201656, 32.984028>,  <27.319561, 38.337959, 33.178661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353310, 38.201656, 32.984028>,  <27.409559, 37.974483, 32.659637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353310, 38.201656, 32.984028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249669, -0.812983, 0.526046,
		0.958066, -0.128501, 0.256119,
		-0.140622, 0.567932, 0.810974,
		27.311123, 38.372036, 33.227322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703218, 37.488655, 33.165001>,  <27.409559, 37.974483, 32.659637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703218, 37.488655, 33.165001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438093, 37.764992, 33.280533>,  <27.279018, 37.930794, 33.349854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438093, 37.764992, 33.280533>,  <27.703218, 37.488655, 33.165001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438093, 37.764992, 33.280533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428232, -0.666152, 0.610622,
		0.614246, 0.281041, 0.737372,
		-0.662812, 0.690838, 0.288830,
		27.239250, 37.972244, 33.367184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533710, 37.363037, 33.934505>,  <27.703218, 37.488655, 33.165001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533710, 37.363037, 33.934505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239038, 37.572556, 33.763420>,  <27.062235, 37.698265, 33.660770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239038, 37.572556, 33.763420>,  <27.533710, 37.363037, 33.934505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239038, 37.572556, 33.763420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676212, -0.576409, 0.458792,
		-0.006223, 0.627207, 0.778828,
		-0.736681, 0.523798, -0.427712,
		27.018034, 37.729694, 33.635105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041937, 37.525810, 34.451691>,  <27.533710, 37.363037, 33.934505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041937, 37.525810, 34.451691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810137, 37.566296, 34.128223>,  <26.671057, 37.590588, 33.934143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810137, 37.566296, 34.128223>,  <27.041937, 37.525810, 34.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810137, 37.566296, 34.128223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683809, -0.600217, 0.414904,
		-0.443381, 0.793408, 0.417034,
		-0.579499, 0.101211, -0.808664,
		26.636288, 37.596661, 33.885624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424980, 37.788952, 34.717567>,  <27.041937, 37.525810, 34.451691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424980, 37.788952, 34.717567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346954, 37.615536, 34.365662>,  <26.300138, 37.511486, 34.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346954, 37.615536, 34.365662>,  <26.424980, 37.788952, 34.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346954, 37.615536, 34.365662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660599, -0.604946, 0.444578,
		-0.724955, 0.667895, -0.168394,
		-0.195063, -0.433540, -0.879769,
		26.288435, 37.485474, 34.101730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708391, 37.921494, 34.513325>,  <26.424980, 37.788952, 34.717567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708391, 37.921494, 34.513325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830431, 37.585346, 34.334126>,  <25.903654, 37.383659, 34.226608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830431, 37.585346, 34.334126>,  <25.708391, 37.921494, 34.513325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830431, 37.585346, 34.334126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661783, -0.525372, 0.534816,
		-0.684806, 0.133305, -0.716430,
		0.305098, -0.840365, -0.447996,
		25.921961, 37.333237, 34.199726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412083, 38.513458, 34.857136>,  <25.708391, 37.921494, 34.513325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412083, 38.513458, 34.857136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775015, 38.419727, 34.717514>,  <25.992775, 38.363487, 34.633743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775015, 38.419727, 34.717514>,  <25.412083, 38.513458, 34.857136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775015, 38.419727, 34.717514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417708, 0.408438, 0.811603,
		-0.047615, -0.882196, 0.468470,
		0.907333, -0.234328, -0.349052,
		26.047215, 38.349430, 34.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923141, 38.213917, 35.337456>,  <25.412083, 38.513458, 34.857136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923141, 38.213917, 35.337456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186815, 38.380409, 35.086945>,  <26.345020, 38.480305, 34.936638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186815, 38.380409, 35.086945>,  <25.923141, 38.213917, 35.337456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186815, 38.380409, 35.086945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577211, 0.253738, 0.776173,
		0.481979, -0.873137, -0.072992,
		0.659185, 0.416231, -0.626281,
		26.384571, 38.505280, 34.899059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614578, 38.805553, 35.546947>,  <25.923141, 38.213917, 35.337456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614578, 38.805553, 35.546947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771704, 39.092262, 35.777405>,  <25.865978, 39.264286, 35.915680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771704, 39.092262, 35.777405>,  <25.614578, 38.805553, 35.546947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771704, 39.092262, 35.777405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907967, -0.401699, -0.119301,
		0.145925, 0.569981, -0.808596,
		0.392812, 0.716770, 0.576142,
		25.889547, 39.307293, 35.950249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031281, 39.308277, 35.225628>,  <25.614578, 38.805553, 35.546947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031281, 39.308277, 35.225628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158453, 39.269897, 35.602928>,  <26.234756, 39.246872, 35.829308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158453, 39.269897, 35.602928>,  <26.031281, 39.308277, 35.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158453, 39.269897, 35.602928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922617, -0.197858, -0.331104,
		0.218397, 0.975524, 0.025618,
		0.317931, -0.095947, 0.943246,
		26.253832, 39.241112, 35.885902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321831, 39.932930, 35.508709>,  <26.031281, 39.308277, 35.225628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321831, 39.932930, 35.508709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434147, 39.561012, 35.603905>,  <26.501537, 39.337860, 35.661022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434147, 39.561012, 35.603905>,  <26.321831, 39.932930, 35.508709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434147, 39.561012, 35.603905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902256, 0.171171, -0.395771,
		0.327249, 0.325857, 0.886976,
		0.280789, -0.929795, 0.237990,
		26.518383, 39.282074, 35.675301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985769, 39.913872, 35.884377>,  <26.321831, 39.932930, 35.508709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985769, 39.913872, 35.884377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907070, 39.589108, 35.664524>,  <26.859850, 39.394249, 35.532612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907070, 39.589108, 35.664524>,  <26.985769, 39.913872, 35.884377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907070, 39.589108, 35.664524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767169, 0.221591, -0.601955,
		0.610527, -0.540090, 0.579275,
		-0.196748, -0.811911, -0.549628,
		26.848045, 39.345535, 35.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721357, 39.540192, 35.860001>,  <26.985769, 39.913872, 35.884377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721357, 39.540192, 35.860001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472775, 39.502232, 35.548927>,  <27.323626, 39.479454, 35.362286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472775, 39.502232, 35.548927>,  <27.721357, 39.540192, 35.860001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472775, 39.502232, 35.548927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747384, 0.225890, -0.624813,
		0.234974, -0.969518, -0.069443,
		-0.621454, -0.094914, -0.777680,
		27.286337, 39.473763, 35.315624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979263, 39.143551, 35.377335>,  <27.721357, 39.540192, 35.860001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979263, 39.143551, 35.377335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708260, 39.331379, 35.150890>,  <27.545656, 39.444077, 35.015022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708260, 39.331379, 35.150890>,  <27.979263, 39.143551, 35.377335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708260, 39.331379, 35.150890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714683, 0.238418, -0.657559,
		-0.173801, -0.850093, -0.497127,
		-0.677510, 0.469573, -0.566110,
		27.505007, 39.472252, 34.981056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811331, 38.421509, 35.177040>,  <27.979263, 39.143551, 35.377335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811331, 38.421509, 35.177040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940075, 38.433582, 34.798519>,  <28.017321, 38.440826, 34.571407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940075, 38.433582, 34.798519>,  <27.811331, 38.421509, 35.177040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940075, 38.433582, 34.798519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895663, 0.314286, 0.314662,
		0.306910, -0.948848, 0.074118,
		0.321860, 0.030188, -0.946305,
		28.036633, 38.442638, 34.514626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697165, 38.369427, 35.100056>,  <27.811331, 38.421509, 35.177040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697165, 38.369427, 35.100056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571716, 38.530201, 34.755943>,  <28.496449, 38.626667, 34.549477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571716, 38.530201, 34.755943>,  <28.697165, 38.369427, 35.100056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571716, 38.530201, 34.755943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876125, 0.471820, -0.098952,
		0.366127, -0.784750, -0.500118,
		-0.313619, 0.401937, -0.860285,
		28.477631, 38.650784, 34.497856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165609, 38.192543, 34.557373>,  <28.697165, 38.369427, 35.100056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165609, 38.192543, 34.557373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988007, 38.542194, 34.478630>,  <28.881445, 38.751987, 34.431385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988007, 38.542194, 34.478630>,  <29.165609, 38.192543, 34.557373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988007, 38.542194, 34.478630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894554, 0.419867, -0.153247,
		-0.051303, -0.244144, -0.968381,
		-0.444005, 0.874131, -0.196859,
		28.854805, 38.804432, 34.419571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290380, 38.317944, 33.917648>,  <29.165609, 38.192543, 34.557373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290380, 38.317944, 33.917648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202509, 38.693390, 34.024036>,  <29.149786, 38.918659, 34.087872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202509, 38.693390, 34.024036>,  <29.290380, 38.317944, 33.917648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202509, 38.693390, 34.024036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901339, 0.299586, -0.312788,
		-0.373270, 0.171019, -0.911824,
		-0.219677, 0.938616, 0.265972,
		29.136606, 38.974976, 34.103828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317795, 38.787827, 33.400925>,  <29.290380, 38.317944, 33.917648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317795, 38.787827, 33.400925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366562, 39.000061, 33.736450>,  <29.395823, 39.127399, 33.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366562, 39.000061, 33.736450>,  <29.317795, 38.787827, 33.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366562, 39.000061, 33.736450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937806, 0.215188, -0.272421,
		-0.325045, 0.819863, -0.471349,
		0.121919, 0.530584, 0.838819,
		29.403137, 39.159237, 33.988094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666424, 39.515343, 33.257809>,  <29.317795, 38.787827, 33.400925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666424, 39.515343, 33.257809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734053, 39.384460, 33.629692>,  <29.774630, 39.305931, 33.852821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734053, 39.384460, 33.629692>,  <29.666424, 39.515343, 33.257809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734053, 39.384460, 33.629692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980081, 0.155535, -0.123491,
		-0.104195, 0.932065, 0.346983,
		0.169070, -0.327204, 0.929706,
		29.784773, 39.286301, 33.908604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249256, 39.898849, 33.501095>,  <29.666424, 39.515343, 33.257809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249256, 39.898849, 33.501095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250202, 39.569942, 33.728733>,  <30.250771, 39.372597, 33.865318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250202, 39.569942, 33.728733>,  <30.249256, 39.898849, 33.501095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250202, 39.569942, 33.728733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989187, 0.085378, 0.119247,
		-0.146642, 0.562662, 0.813577,
		0.002366, -0.822266, 0.569098,
		30.250912, 39.323261, 33.899464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716072, 40.049191, 34.048344>,  <30.249256, 39.898849, 33.501095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716072, 40.049191, 34.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713713, 39.652237, 33.999126>,  <30.712297, 39.414066, 33.969597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713713, 39.652237, 33.999126>,  <30.716072, 40.049191, 34.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713713, 39.652237, 33.999126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995992, -0.016812, 0.087853,
		-0.089253, -0.122030, 0.988505,
		-0.005898, -0.992384, -0.123042,
		30.711943, 39.354523, 33.962215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421545, 40.014053, 34.229786>,  <30.716072, 40.049191, 34.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421545, 40.014053, 34.229786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272511, 39.661114, 34.114799>,  <31.183090, 39.449348, 34.045807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272511, 39.661114, 34.114799>,  <31.421545, 40.014053, 34.229786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272511, 39.661114, 34.114799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927589, -0.363297, -0.087148,
		-0.027539, -0.299117, 0.953819,
		-0.372587, -0.882352, -0.287462,
		31.160734, 39.396408, 34.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673250, 39.370293, 34.718239>,  <31.421545, 40.014053, 34.229786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673250, 39.370293, 34.718239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622892, 39.311909, 34.325741>,  <31.592678, 39.276878, 34.090240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622892, 39.311909, 34.325741>,  <31.673250, 39.370293, 34.718239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622892, 39.311909, 34.325741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990097, -0.080428, -0.115067,
		-0.062125, -0.986015, 0.154645,
		-0.125895, -0.145965, -0.981246,
		31.585123, 39.268120, 34.031368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001278, 38.768284, 34.563053>,  <31.673250, 39.370293, 34.718239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001278, 38.768284, 34.563053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996695, 39.023849, 34.255379>,  <31.993944, 39.177189, 34.070774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996695, 39.023849, 34.255379>,  <32.001278, 38.768284, 34.563053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996695, 39.023849, 34.255379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981369, -0.140356, -0.131204,
		-0.191789, -0.756363, -0.625406,
		-0.011458, 0.638918, -0.769190,
		31.993258, 39.215523, 34.024620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103569, 38.421650, 33.986965>,  <32.001278, 38.768284, 34.563053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103569, 38.421650, 33.986965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234875, 38.796474, 33.939365>,  <32.313660, 39.021370, 33.910805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234875, 38.796474, 33.939365>,  <32.103569, 38.421650, 33.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234875, 38.796474, 33.939365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884331, -0.349155, -0.309920,
		-0.331962, -0.003499, -0.943286,
		0.328269, 0.937058, -0.119000,
		32.333355, 39.077591, 33.903664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277184, 38.669422, 33.380478>,  <32.103569, 38.421650, 33.986965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277184, 38.669422, 33.380478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532261, 38.858234, 33.623962>,  <32.685307, 38.971523, 33.770054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532261, 38.858234, 33.623962>,  <32.277184, 38.669422, 33.380478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532261, 38.858234, 33.623962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743917, -0.582404, -0.327710,
		0.199826, 0.661810, -0.722549,
		0.637697, 0.472031, 0.608711,
		32.723572, 38.999844, 33.806576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807262, 39.035088, 33.093472>,  <32.277184, 38.669422, 33.380478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807262, 39.035088, 33.093472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889622, 38.856888, 33.441986>,  <32.939037, 38.749966, 33.651093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889622, 38.856888, 33.441986>,  <32.807262, 39.035088, 33.093472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889622, 38.856888, 33.441986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758100, -0.490383, -0.429893,
		0.618781, 0.749033, 0.236768,
		0.205897, -0.445504, 0.871282,
		32.951389, 38.723236, 33.703369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562180, 39.118347, 33.200050>,  <32.807262, 39.035088, 33.093472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562180, 39.118347, 33.200050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410728, 38.794571, 33.379581>,  <33.319859, 38.600304, 33.487301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410728, 38.794571, 33.379581>,  <33.562180, 39.118347, 33.200050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410728, 38.794571, 33.379581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785215, -0.537644, -0.307208,
		0.489975, 0.236108, 0.839153,
		-0.378632, -0.809439, 0.448828,
		33.297138, 38.551739, 33.514229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163258, 38.802742, 33.650425>,  <33.562180, 39.118347, 33.200050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163258, 38.802742, 33.650425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937492, 38.523415, 33.474339>,  <33.802032, 38.355820, 33.368687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937492, 38.523415, 33.474339>,  <34.163258, 38.802742, 33.650425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937492, 38.523415, 33.474339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781696, -0.623522, -0.013145,
		-0.265306, -0.351535, 0.897795,
		-0.564415, -0.698315, -0.440218,
		33.768169, 38.313919, 33.342274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122036, 38.761215, 34.379101>,  <34.163258, 38.802742, 33.650425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122036, 38.761215, 34.379101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505436, 38.799164, 34.271557>,  <34.735474, 38.821934, 34.207031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505436, 38.799164, 34.271557>,  <34.122036, 38.761215, 34.379101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505436, 38.799164, 34.271557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248799, 0.738852, -0.626255,
		0.139230, 0.667155, 0.731792,
		0.958495, 0.094876, -0.268859,
		34.792984, 38.827625, 34.190899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449379, 39.464809, 34.503010>,  <34.122036, 38.761215, 34.379101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449379, 39.464809, 34.503010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600636, 39.291386, 34.175831>,  <34.691391, 39.187332, 33.979523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600636, 39.291386, 34.175831>,  <34.449379, 39.464809, 34.503010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600636, 39.291386, 34.175831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354998, 0.748096, -0.560651,
		0.854977, 0.502375, 0.128974,
		0.378142, -0.433558, -0.817946,
		34.714077, 39.161320, 33.930447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827301, 39.981022, 34.052807>,  <34.449379, 39.464809, 34.503010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827301, 39.981022, 34.052807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705097, 39.681194, 33.817921>,  <34.631775, 39.501297, 33.676991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705097, 39.681194, 33.817921>,  <34.827301, 39.981022, 34.052807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705097, 39.681194, 33.817921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343949, 0.661930, -0.665994,
		0.887898, -0.001496, -0.460038,
		-0.305509, -0.749565, -0.587212,
		34.613445, 39.456326, 33.641758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940594, 40.081329, 33.298031>,  <34.827301, 39.981022, 34.052807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940594, 40.081329, 33.298031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634838, 39.827957, 33.346161>,  <34.451385, 39.675934, 33.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634838, 39.827957, 33.346161>,  <34.940594, 40.081329, 33.298031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634838, 39.827957, 33.346161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577901, 0.590333, -0.563505,
		0.285909, -0.500273, -0.817303,
		-0.764387, -0.633431, 0.120327,
		34.405521, 39.637928, 33.382259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758564, 40.580540, 32.828384>,  <34.940594, 40.081329, 33.298031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758564, 40.580540, 32.828384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921505, 40.905685, 32.661858>,  <35.019268, 41.100773, 32.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921505, 40.905685, 32.661858>,  <34.758564, 40.580540, 32.828384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921505, 40.905685, 32.661858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913065, -0.352800, 0.204558,
		0.019400, -0.463454, -0.885908,
		0.407352, 0.812860, -0.416320,
		35.043709, 41.149544, 32.536961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364368, 40.523415, 32.271263>,  <34.758564, 40.580540, 32.828384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364368, 40.523415, 32.271263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455070, 40.852341, 32.480026>,  <35.509491, 41.049694, 32.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455070, 40.852341, 32.480026>,  <35.364368, 40.523415, 32.271263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455070, 40.852341, 32.480026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895797, -0.386410, 0.219622,
		0.382268, 0.417723, -0.824244,
		0.226755, 0.822311, 0.521908,
		35.523098, 41.099033, 32.636597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107708, 40.315086, 32.177048>,  <35.364368, 40.523415, 32.271263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107708, 40.315086, 32.177048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015709, 40.198544, 31.805626>,  <35.960510, 40.128616, 31.582773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015709, 40.198544, 31.805626>,  <36.107708, 40.315086, 32.177048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015709, 40.198544, 31.805626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751055, 0.659905, -0.021031,
		0.618886, 0.692558, -0.370600,
		-0.229995, -0.291356, -0.928554,
		35.946709, 40.111137, 31.527060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141411, 40.931786, 31.850870>,  <36.107708, 40.315086, 32.177048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141411, 40.931786, 31.850870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921314, 40.647846, 31.674986>,  <35.789257, 40.477482, 31.569456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921314, 40.647846, 31.674986>,  <36.141411, 40.931786, 31.850870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921314, 40.647846, 31.674986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629001, 0.698701, -0.340844,
		0.549174, 0.089031, -0.830952,
		-0.550241, -0.709852, -0.439709,
		35.756241, 40.434891, 31.543074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969933, 41.205322, 31.193161>,  <36.141411, 40.931786, 31.850870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969933, 41.205322, 31.193161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705147, 40.925858, 31.301735>,  <35.546276, 40.758179, 31.366880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705147, 40.925858, 31.301735>,  <35.969933, 41.205322, 31.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705147, 40.925858, 31.301735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712263, 0.473575, -0.518082,
		0.233416, -0.536286, -0.811119,
		-0.661966, -0.698658, 0.271436,
		35.506557, 40.716259, 31.383165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033535, 41.426804, 30.529081>,  <35.969933, 41.205322, 31.193161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033535, 41.426804, 30.529081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828098, 41.535736, 30.203613>,  <35.704838, 41.601097, 30.008331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828098, 41.535736, 30.203613>,  <36.033535, 41.426804, 30.529081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828098, 41.535736, 30.203613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849921, 0.291579, -0.438880,
		0.117729, -0.916961, -0.381211,
		-0.513589, 0.272330, -0.813672,
		35.674023, 41.617435, 29.959511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426945, 41.115265, 29.906811>,  <36.033535, 41.426804, 30.529081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426945, 41.115265, 29.906811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227673, 41.451698, 29.822536>,  <36.108109, 41.653561, 29.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227673, 41.451698, 29.822536>,  <36.426945, 41.115265, 29.906811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227673, 41.451698, 29.822536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839532, 0.407150, -0.359743,
		-0.216795, -0.356093, -0.908954,
		-0.498183, 0.841086, -0.210684,
		36.078217, 41.704025, 29.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496193, 41.370674, 29.175020>,  <36.426945, 41.115265, 29.906811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496193, 41.370674, 29.175020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445354, 41.686089, 29.415707>,  <36.414852, 41.875336, 29.560118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445354, 41.686089, 29.415707>,  <36.496193, 41.370674, 29.175020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445354, 41.686089, 29.415707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748863, 0.474078, -0.463091,
		-0.650423, 0.391747, -0.650757,
		-0.127095, 0.788533, 0.601716,
		36.407227, 41.922649, 29.596222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957634, 40.785572, 29.051960>,  <36.496193, 41.370674, 29.175020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957634, 40.785572, 29.051960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653732, 41.039837, 29.106665>,  <35.471390, 41.192394, 29.139488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653732, 41.039837, 29.106665>,  <35.957634, 40.785572, 29.051960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653732, 41.039837, 29.106665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511169, 0.713925, -0.478558,
		-0.401838, -0.293680, -0.867340,
		-0.759758, 0.635660, 0.136762,
		35.425804, 41.230534, 29.147694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829948, 41.177013, 28.428459>,  <35.957634, 40.785572, 29.051960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829948, 41.177013, 28.428459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678841, 41.401875, 28.722744>,  <35.588177, 41.536793, 28.899315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678841, 41.401875, 28.722744>,  <35.829948, 41.177013, 28.428459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678841, 41.401875, 28.722744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452143, 0.805412, -0.383247,
		-0.807995, 0.187867, -0.558435,
		-0.377771, 0.562154, 0.735712,
		35.565510, 41.570522, 28.943457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400608, 41.801376, 28.200161>,  <35.829948, 41.177013, 28.428459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400608, 41.801376, 28.200161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586700, 41.896111, 28.541328>,  <35.698357, 41.952950, 28.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586700, 41.896111, 28.541328>,  <35.400608, 41.801376, 28.200161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586700, 41.896111, 28.541328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526548, 0.700497, -0.481718,
		-0.711555, 0.673212, 0.201187,
		0.465229, 0.236834, 0.852920,
		35.726269, 41.967159, 28.797205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426811, 42.519772, 28.289831>,  <35.400608, 41.801376, 28.200161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426811, 42.519772, 28.289831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730167, 42.342995, 28.481472>,  <35.912182, 42.236931, 28.596457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730167, 42.342995, 28.481472>,  <35.426811, 42.519772, 28.289831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730167, 42.342995, 28.481472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650306, 0.562811, -0.510241,
		-0.044148, 0.698523, 0.714225,
		0.758389, -0.441938, 0.479101,
		35.957684, 42.210415, 28.625202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734348, 42.602917, 29.048878>,  <35.426811, 42.519772, 28.289831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734348, 42.602917, 29.048878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081135, 42.431110, 29.149973>,  <36.289207, 42.328026, 29.210630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081135, 42.431110, 29.149973>,  <35.734348, 42.602917, 29.048878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081135, 42.431110, 29.149973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173355, -0.215550, -0.960982,
		0.467239, 0.876955, -0.112415,
		0.866969, -0.429520, 0.252738,
		36.341225, 42.302254, 29.225794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356319, 42.911049, 28.835457>,  <35.734348, 42.602917, 29.048878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356319, 42.911049, 28.835457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 42.519966, 28.875458>,  <36.474472, 42.285316, 28.899458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 42.519966, 28.875458>,  <36.356319, 42.911049, 28.835457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430164, 42.519966, 28.875458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230514, -0.055838, -0.971466,
		0.955396, 0.202396, 0.215067,
		0.184612, -0.977710, 0.100003,
		36.485546, 42.226654, 28.905458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012886, 42.766762, 28.458101>,  <36.356319, 42.911049, 28.835457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012886, 42.766762, 28.458101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761120, 42.460098, 28.508810>,  <36.610062, 42.276100, 28.539236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761120, 42.460098, 28.508810>,  <37.012886, 42.766762, 28.458101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761120, 42.460098, 28.508810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206431, -0.322244, -0.923875,
		0.749152, -0.555327, 0.361087,
		-0.629411, -0.766662, 0.126773,
		36.572296, 42.230099, 28.546843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388233, 42.083939, 28.460768>,  <37.012886, 42.766762, 28.458101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388233, 42.083939, 28.460768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039722, 42.104782, 28.265560>,  <36.830616, 42.117287, 28.148436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039722, 42.104782, 28.265560>,  <37.388233, 42.083939, 28.460768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039722, 42.104782, 28.265560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399712, -0.501661, -0.767181,
		-0.284798, -0.863494, 0.416256,
		-0.871275, 0.052109, -0.488021,
		36.778339, 42.120415, 28.119154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190147, 41.385445, 28.286148>,  <37.388233, 42.083939, 28.460768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190147, 41.385445, 28.286148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074295, 41.648792, 28.008251>,  <37.004784, 41.806801, 27.841513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074295, 41.648792, 28.008251>,  <37.190147, 41.385445, 28.286148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074295, 41.648792, 28.008251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533420, -0.491650, -0.688290,
		-0.794718, -0.569939, -0.208790,
		-0.289632, 0.658369, -0.694740,
		36.987404, 41.846302, 27.799829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479729, 41.478172, 28.057804>,  <37.190147, 41.385445, 28.286148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479729, 41.478172, 28.057804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542202, 41.831917, 27.881845>,  <36.579685, 42.044163, 27.776270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542202, 41.831917, 27.881845>,  <36.479729, 41.478172, 28.057804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542202, 41.831917, 27.881845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210337, -0.464924, -0.860002,
		-0.965073, 0.041789, -0.258627,
		0.156180, 0.884364, -0.439896,
		36.589058, 42.097225, 27.749876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081352, 41.420559, 27.386879>,  <36.479729, 41.478172, 28.057804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081352, 41.420559, 27.386879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407318, 41.650822, 27.413845>,  <36.602898, 41.788979, 27.430025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407318, 41.650822, 27.413845>,  <36.081352, 41.420559, 27.386879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407318, 41.650822, 27.413845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288858, -0.302544, -0.908311,
		-0.502475, 0.759666, -0.412828,
		0.814911, 0.575652, 0.067415,
		36.651791, 41.823517, 27.434069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161022, 41.717777, 26.739674>,  <36.081352, 41.420559, 27.386879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161022, 41.717777, 26.739674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492237, 41.642551, 26.950951>,  <36.690968, 41.597416, 27.077717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492237, 41.642551, 26.950951>,  <36.161022, 41.717777, 26.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492237, 41.642551, 26.950951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479161, -0.251812, -0.840830,
		0.291136, 0.949327, -0.118396,
		0.828036, -0.188065, 0.528192,
		36.740646, 41.586132, 27.109407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785793, 42.070648, 26.308636>,  <36.161022, 41.717777, 26.739674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785793, 42.070648, 26.308636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907631, 41.788788, 26.564978>,  <36.980732, 41.619671, 26.718782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907631, 41.788788, 26.564978>,  <36.785793, 42.070648, 26.308636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907631, 41.788788, 26.564978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498916, -0.455108, -0.737536,
		0.811361, 0.544381, 0.212938,
		0.304591, -0.704646, 0.640857,
		36.999008, 41.577393, 26.757235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532806, 41.902901, 26.089869>,  <36.785793, 42.070648, 26.308636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532806, 41.902901, 26.089869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383438, 41.617504, 26.327013>,  <37.293819, 41.446266, 26.469299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383438, 41.617504, 26.327013>,  <37.532806, 41.902901, 26.089869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383438, 41.617504, 26.327013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444796, -0.698545, -0.560527,
		0.814074, 0.054391, 0.578209,
		-0.373418, -0.713496, 0.592860,
		37.271412, 41.403454, 26.504871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105522, 41.518887, 26.270069>,  <37.532806, 41.902901, 26.089869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105522, 41.518887, 26.270069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769554, 41.302525, 26.287754>,  <37.567974, 41.172707, 26.298365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769554, 41.302525, 26.287754>,  <38.105522, 41.518887, 26.270069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769554, 41.302525, 26.287754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407471, -0.682341, -0.606941,
		0.358464, -0.491769, 0.793516,
		-0.839923, -0.540901, 0.044213,
		37.517578, 41.140255, 26.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294731, 40.903400, 26.107212>,  <38.105522, 41.518887, 26.270069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294731, 40.903400, 26.107212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901783, 40.834309, 26.078623>,  <37.666012, 40.792854, 26.061468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901783, 40.834309, 26.078623>,  <38.294731, 40.903400, 26.107212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901783, 40.834309, 26.078623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177386, -0.740749, -0.647939,
		0.058972, -0.649197, 0.758331,
		-0.982373, -0.172727, -0.071475,
		37.607071, 40.782490, 26.057180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242531, 40.197468, 26.205656>,  <38.294731, 40.903400, 26.107212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242531, 40.197468, 26.205656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905888, 40.308918, 26.020586>,  <37.703903, 40.375786, 25.909544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905888, 40.308918, 26.020586>,  <38.242531, 40.197468, 26.205656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905888, 40.308918, 26.020586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035030, -0.826695, -0.561558,
		-0.538953, -0.488819, 0.685993,
		-0.841607, 0.278623, -0.462673,
		37.653404, 40.392506, 25.881784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866192, 39.608845, 26.113768>,  <38.242531, 40.197468, 26.205656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866192, 39.608845, 26.113768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696747, 39.863941, 25.856443>,  <37.595081, 40.016998, 25.702049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696747, 39.863941, 25.856443>,  <37.866192, 39.608845, 26.113768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696747, 39.863941, 25.856443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239044, -0.763702, -0.599680,
		-0.873734, -0.100251, 0.475960,
		-0.423610, 0.637737, -0.643309,
		37.569664, 40.055264, 25.663450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257931, 39.323433, 25.932449>,  <37.866192, 39.608845, 26.113768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257931, 39.323433, 25.932449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380779, 39.570950, 25.643236>,  <37.454487, 39.719460, 25.469707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380779, 39.570950, 25.643236>,  <37.257931, 39.323433, 25.932449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380779, 39.570950, 25.643236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280302, -0.667233, -0.690095,
		-0.909456, 0.414608, -0.031471,
		0.307117, 0.618789, -0.723035,
		37.472916, 39.756588, 25.426325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819935, 39.080833, 25.316601>,  <37.257931, 39.323433, 25.932449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819935, 39.080833, 25.316601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128529, 39.283878, 25.163168>,  <37.313686, 39.405704, 25.071108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128529, 39.283878, 25.163168>,  <36.819935, 39.080833, 25.316601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128529, 39.283878, 25.163168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066444, -0.663867, -0.744893,
		-0.632765, 0.549190, -0.545893,
		0.771488, 0.507613, -0.383581,
		37.359974, 39.436161, 25.048094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801571, 39.045898, 24.557455>,  <36.819935, 39.080833, 25.316601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801571, 39.045898, 24.557455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178181, 39.156113, 24.635029>,  <37.404148, 39.222240, 24.681574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178181, 39.156113, 24.635029>,  <36.801571, 39.045898, 24.557455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178181, 39.156113, 24.635029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330331, -0.641400, -0.692450,
		-0.066402, 0.716023, -0.694912,
		0.941526, 0.275531, 0.193934,
		37.460640, 39.238773, 24.693209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113499, 39.281013, 23.891672>,  <36.801571, 39.045898, 24.557455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113499, 39.281013, 23.891672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392471, 39.163120, 24.152967>,  <37.559856, 39.092384, 24.309746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392471, 39.163120, 24.152967>,  <37.113499, 39.281013, 23.891672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392471, 39.163120, 24.152967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386274, -0.613180, -0.689060,
		0.603639, 0.732902, -0.313806,
		0.697433, -0.294729, 0.653240,
		37.601700, 39.074703, 24.348940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560978, 39.008976, 23.500120>,  <37.113499, 39.281013, 23.891672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560978, 39.008976, 23.500120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740414, 38.936806, 23.850254>,  <37.848076, 38.893505, 24.060335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740414, 38.936806, 23.850254>,  <37.560978, 39.008976, 23.500120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740414, 38.936806, 23.850254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618223, -0.644648, -0.449699,
		0.645420, 0.742884, -0.177642,
		0.448591, -0.180423, 0.875336,
		37.874992, 38.882679, 24.112856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203728, 39.140842, 23.363937>,  <37.560978, 39.008976, 23.500120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203728, 39.140842, 23.363937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199902, 38.874264, 23.662132>,  <38.197605, 38.714317, 23.841049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199902, 38.874264, 23.662132>,  <38.203728, 39.140842, 23.363937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199902, 38.874264, 23.662132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366008, -0.696120, -0.617620,
		0.930562, 0.266944, 0.250588,
		-0.009569, -0.666451, 0.745487,
		38.197029, 38.674328, 23.885778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841820, 38.976299, 23.559774>,  <38.203728, 39.140842, 23.363937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841820, 38.976299, 23.559774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603874, 38.673584, 23.668148>,  <38.461105, 38.491955, 23.733171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603874, 38.673584, 23.668148>,  <38.841820, 38.976299, 23.559774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603874, 38.673584, 23.668148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572256, -0.635417, -0.518430,
		0.564498, -0.153352, 0.811064,
		-0.594866, -0.756788, 0.270934,
		38.425415, 38.446548, 23.749428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227699, 38.478725, 23.865955>,  <38.841820, 38.976299, 23.559774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227699, 38.478725, 23.865955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913258, 38.246574, 23.780916>,  <38.724590, 38.107285, 23.729893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913258, 38.246574, 23.780916>,  <39.227699, 38.478725, 23.865955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913258, 38.246574, 23.780916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604782, -0.651265, -0.458358,
		0.127564, -0.488893, 0.862966,
		-0.786108, -0.580376, -0.212596,
		38.677425, 38.072460, 23.717138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476410, 37.798355, 23.750366>,  <39.227699, 38.478725, 23.865955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476410, 37.798355, 23.750366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121098, 37.820286, 23.567959>,  <38.907909, 37.833443, 23.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121098, 37.820286, 23.567959>,  <39.476410, 37.798355, 23.750366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121098, 37.820286, 23.567959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386531, -0.447062, -0.806678,
		-0.248094, -0.892822, 0.375925,
		-0.888281, 0.054825, -0.456016,
		38.854614, 37.836735, 23.431154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536953, 37.281315, 23.293188>,  <39.476410, 37.798355, 23.750366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536953, 37.281315, 23.293188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203461, 37.462429, 23.166777>,  <39.003365, 37.571098, 23.090929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203461, 37.462429, 23.166777>,  <39.536953, 37.281315, 23.293188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203461, 37.462429, 23.166777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140044, -0.380235, -0.914226,
		-0.534111, -0.806480, 0.253605,
		-0.833734, 0.452783, -0.316031,
		38.953339, 37.598263, 23.071968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160671, 36.747551, 22.928530>,  <39.536953, 37.281315, 23.293188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160671, 36.747551, 22.928530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069118, 37.118149, 22.809046>,  <39.014187, 37.340508, 22.737356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069118, 37.118149, 22.809046>,  <39.160671, 36.747551, 22.928530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069118, 37.118149, 22.809046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285006, -0.229629, -0.930614,
		-0.930797, -0.298138, -0.211497,
		-0.228885, 0.926490, -0.298709,
		39.000454, 37.396095, 22.719433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013981, 36.694843, 22.270632>,  <39.160671, 36.747551, 22.928530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013981, 36.694843, 22.270632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056408, 37.092384, 22.257986>,  <39.081863, 37.330910, 22.250399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056408, 37.092384, 22.257986>,  <39.013981, 36.694843, 22.270632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056408, 37.092384, 22.257986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353409, -0.067395, -0.933038,
		-0.929436, 0.087794, -0.358386,
		0.106068, 0.993856, -0.031612,
		39.088230, 37.390541, 22.248503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624065, 36.908604, 21.712656>,  <39.013981, 36.694843, 22.270632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624065, 36.908604, 21.712656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908222, 37.174065, 21.806387>,  <39.078716, 37.333344, 21.862625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908222, 37.174065, 21.806387>,  <38.624065, 36.908604, 21.712656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908222, 37.174065, 21.806387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300389, 0.015193, -0.953696,
		-0.636486, 0.747883, -0.188562,
		0.710388, 0.663656, 0.234326,
		39.121338, 37.373161, 21.876684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891010, 37.175014, 21.010496>,  <38.624065, 36.908604, 21.712656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891010, 37.175014, 21.010496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145126, 37.370480, 21.249701>,  <39.297596, 37.487759, 21.393223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145126, 37.370480, 21.249701>,  <38.891010, 37.175014, 21.010496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145126, 37.370480, 21.249701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585714, 0.199811, -0.785502,
		-0.503337, 0.849283, -0.159280,
		0.635288, 0.488665, 0.598010,
		39.335712, 37.517078, 21.429104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090839, 37.844570, 20.636171>,  <38.891010, 37.175014, 21.010496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090839, 37.844570, 20.636171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379589, 37.736130, 20.890858>,  <39.552837, 37.671066, 21.043669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379589, 37.736130, 20.890858>,  <39.090839, 37.844570, 20.636171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379589, 37.736130, 20.890858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645858, -0.066512, -0.760555,
		0.248535, 0.960251, 0.127078,
		0.721871, -0.271099, 0.636716,
		39.596149, 37.654800, 21.081873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750145, 38.209038, 20.439219>,  <39.090839, 37.844570, 20.636171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750145, 38.209038, 20.439219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839169, 37.883099, 20.653316>,  <39.892582, 37.687534, 20.781775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839169, 37.883099, 20.653316>,  <39.750145, 38.209038, 20.439219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839169, 37.883099, 20.653316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696214, -0.251479, -0.672343,
		0.682460, 0.522284, 0.511339,
		0.222563, -0.814848, 0.535246,
		39.905937, 37.638645, 20.813890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461880, 38.162075, 20.425095>,  <39.750145, 38.209038, 20.439219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461880, 38.162075, 20.425095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350109, 37.787960, 20.511961>,  <40.283047, 37.563492, 20.564081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350109, 37.787960, 20.511961>,  <40.461880, 38.162075, 20.425095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350109, 37.787960, 20.511961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494662, -0.334075, -0.802311,
		0.822941, -0.116761, 0.555999,
		-0.279424, -0.935287, 0.217167,
		40.266281, 37.507374, 20.577110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083061, 37.729485, 20.531578>,  <40.461880, 38.162075, 20.425095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083061, 37.729485, 20.531578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789684, 37.466469, 20.462641>,  <40.613659, 37.308659, 20.421278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789684, 37.466469, 20.462641>,  <41.083061, 37.729485, 20.531578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789684, 37.466469, 20.462641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571507, -0.459231, -0.680064,
		0.368023, -0.597284, 0.712609,
		-0.733443, -0.657540, -0.172344,
		40.569653, 37.269207, 20.410938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311989, 37.118248, 20.675797>,  <41.083061, 37.729485, 20.531578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311989, 37.118248, 20.675797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007603, 37.002300, 20.443621>,  <40.824970, 36.932732, 20.304316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007603, 37.002300, 20.443621>,  <41.311989, 37.118248, 20.675797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007603, 37.002300, 20.443621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595621, -0.666825, -0.447862,
		-0.257230, -0.686529, 0.680082,
		-0.760966, -0.289868, -0.580438,
		40.779312, 36.915340, 20.269489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302021, 36.383198, 20.724203>,  <41.311989, 37.118248, 20.675797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302021, 36.383198, 20.724203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111511, 36.477676, 20.385410>,  <40.997208, 36.534363, 20.182135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111511, 36.477676, 20.385410>,  <41.302021, 36.383198, 20.724203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111511, 36.477676, 20.385410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491930, -0.726820, -0.479309,
		-0.728809, -0.644939, 0.229981,
		-0.476280, 0.236190, -0.846978,
		40.968632, 36.548534, 20.131315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211128, 35.698265, 20.352310>,  <41.302021, 36.383198, 20.724203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211128, 35.698265, 20.352310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158714, 35.974346, 20.067648>,  <41.127266, 36.139996, 19.896851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158714, 35.974346, 20.067648>,  <41.211128, 35.698265, 20.352310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158714, 35.974346, 20.067648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398495, -0.620629, -0.675294,
		-0.907762, -0.372078, -0.193718,
		-0.131035, 0.690201, -0.711655,
		41.119404, 36.181408, 19.854151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671669, 35.459412, 19.743607>,  <41.211128, 35.698265, 20.352310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671669, 35.459412, 19.743607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921532, 35.728298, 19.584646>,  <41.071449, 35.889629, 19.489271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921532, 35.728298, 19.584646>,  <40.671669, 35.459412, 19.743607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921532, 35.728298, 19.584646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274476, -0.665430, -0.694166,
		-0.731071, 0.324540, -0.600174,
		0.624658, 0.672218, -0.397399,
		41.108929, 35.929962, 19.465427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466167, 35.563339, 18.902231>,  <40.671669, 35.459412, 19.743607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466167, 35.563339, 18.902231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834824, 35.683784, 19.000134>,  <41.056019, 35.756050, 19.058874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834824, 35.683784, 19.000134>,  <40.466167, 35.563339, 18.902231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834824, 35.683784, 19.000134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375928, -0.536525, -0.755525,
		-0.096181, 0.788335, -0.607681,
		0.921644, 0.301111, 0.244754,
		41.111317, 35.774117, 19.073559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765446, 35.506992, 18.321249>,  <40.466167, 35.563339, 18.902231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765446, 35.506992, 18.321249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086708, 35.532776, 18.558159>,  <41.279465, 35.548248, 18.700306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086708, 35.532776, 18.558159>,  <40.765446, 35.506992, 18.321249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086708, 35.532776, 18.558159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495236, -0.624873, -0.603552,
		0.331192, 0.778060, -0.533792,
		0.803152, 0.064461, 0.592277,
		41.327652, 35.552113, 18.735842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206631, 35.276409, 17.875391>,  <40.765446, 35.506992, 18.321249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206631, 35.276409, 17.875391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417747, 35.262283, 18.214846>,  <41.544418, 35.253807, 18.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417747, 35.262283, 18.214846>,  <41.206631, 35.276409, 17.875391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417747, 35.262283, 18.214846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588662, -0.705051, -0.395450,
		0.612299, 0.708277, -0.351332,
		0.527795, -0.035318, 0.848637,
		41.576084, 35.251686, 18.469437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920166, 35.635983, 17.807316>,  <41.206631, 35.276409, 17.875391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920166, 35.635983, 17.807316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907246, 35.357075, 18.093746>,  <41.899494, 35.189728, 18.265604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907246, 35.357075, 18.093746>,  <41.920166, 35.635983, 17.807316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907246, 35.357075, 18.093746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595874, -0.588635, -0.546300,
		0.802428, 0.409047, 0.434499,
		-0.032299, -0.697273, 0.716078,
		41.897556, 35.147892, 18.308569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656620, 35.472759, 17.994381>,  <41.920166, 35.635983, 17.807316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656620, 35.472759, 17.994381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447170, 35.151844, 18.109024>,  <42.321499, 34.959293, 18.177809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447170, 35.151844, 18.109024>,  <42.656620, 35.472759, 17.994381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447170, 35.151844, 18.109024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630642, -0.591201, -0.502764,
		0.572805, -0.082515, 0.815527,
		-0.523627, -0.802292, 0.286606,
		42.290081, 34.911156, 18.195005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199520, 34.970886, 18.128304>,  <42.656620, 35.472759, 17.994381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199520, 34.970886, 18.128304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883797, 34.725300, 18.125891>,  <42.694363, 34.577950, 18.124443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883797, 34.725300, 18.125891>,  <43.199520, 34.970886, 18.128304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883797, 34.725300, 18.125891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594797, -0.762153, -0.255616,
		0.152341, -0.205349, 0.966760,
		-0.789309, -0.613966, -0.006034,
		42.647003, 34.541111, 18.124081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248581, 34.530384, 18.641588>,  <43.199520, 34.970886, 18.128304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248581, 34.530384, 18.641588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041233, 34.378647, 18.335022>,  <42.916824, 34.287605, 18.151083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041233, 34.378647, 18.335022>,  <43.248581, 34.530384, 18.641588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041233, 34.378647, 18.335022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736130, -0.654051, -0.174155,
		-0.435209, -0.654456, 0.618289,
		-0.518369, -0.379347, -0.766413,
		42.885723, 34.264843, 18.105099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220577, 33.809872, 18.678652>,  <43.248581, 34.530384, 18.641588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220577, 33.809872, 18.678652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123672, 33.846691, 18.292318>,  <43.065529, 33.868782, 18.060518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123672, 33.846691, 18.292318>,  <43.220577, 33.809872, 18.678652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123672, 33.846691, 18.292318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796067, -0.550196, -0.252113,
		-0.554604, -0.829947, 0.060020,
		-0.242264, 0.092043, -0.965835,
		43.050995, 33.874306, 18.002567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327362, 33.133812, 18.325584>,  <43.220577, 33.809872, 18.678652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327362, 33.133812, 18.325584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313393, 33.377602, 18.008770>,  <43.305012, 33.523876, 17.818682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313393, 33.377602, 18.008770>,  <43.327362, 33.133812, 18.325584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313393, 33.377602, 18.008770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701722, -0.549343, -0.453660,
		-0.711594, -0.571630, -0.408500,
		-0.034919, 0.609476, -0.792035,
		43.302917, 33.560444, 17.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425499, 32.724739, 17.763699>,  <43.327362, 33.133812, 18.325584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425499, 32.724739, 17.763699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546089, 33.084667, 17.637569>,  <43.618443, 33.300625, 17.561892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546089, 33.084667, 17.637569>,  <43.425499, 32.724739, 17.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546089, 33.084667, 17.637569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770420, -0.424734, -0.475451,
		-0.561751, -0.099594, -0.821290,
		0.301478, 0.899823, -0.315324,
		43.636532, 33.354614, 17.542973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559010, 32.695053, 17.066580>,  <43.425499, 32.724739, 17.763699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559010, 32.695053, 17.066580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760670, 33.028301, 17.157564>,  <43.881664, 33.228252, 17.212154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760670, 33.028301, 17.157564>,  <43.559010, 32.695053, 17.066580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760670, 33.028301, 17.157564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806125, -0.359481, -0.470037,
		-0.309833, 0.420329, -0.852835,
		0.504148, 0.833125, 0.227459,
		43.911915, 33.278240, 17.225801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814106, 32.963211, 16.522501>,  <43.559010, 32.695053, 17.066580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814106, 32.963211, 16.522501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060699, 33.094364, 16.808838>,  <44.208656, 33.173058, 16.980640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060699, 33.094364, 16.808838>,  <43.814106, 32.963211, 16.522501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060699, 33.094364, 16.808838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786766, -0.291989, -0.543822,
		0.030706, 0.898461, -0.437978,
		0.616487, 0.327887, 0.715844,
		44.245647, 33.192730, 17.023592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324879, 33.358566, 16.204424>,  <43.814106, 32.963211, 16.522501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324879, 33.358566, 16.204424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478825, 33.249691, 16.557194>,  <44.571194, 33.184364, 16.768856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478825, 33.249691, 16.557194>,  <44.324879, 33.358566, 16.204424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478825, 33.249691, 16.557194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798389, -0.381247, -0.466074,
		0.463092, 0.883495, 0.070584,
		0.384864, -0.272189, 0.881926,
		44.594284, 33.168034, 16.821772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872871, 33.409794, 15.998526>,  <44.324879, 33.358566, 16.204424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872871, 33.409794, 15.998526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936298, 33.222195, 16.346064>,  <44.974354, 33.109634, 16.554586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936298, 33.222195, 16.346064>,  <44.872871, 33.409794, 15.998526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936298, 33.222195, 16.346064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696236, -0.570836, -0.435203,
		0.700079, 0.673932, 0.236020,
		0.158569, -0.469002, 0.868846,
		44.983868, 33.081493, 16.606718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589069, 33.430355, 16.184044>,  <44.872871, 33.409794, 15.998526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589069, 33.430355, 16.184044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419392, 33.110336, 16.353741>,  <45.317585, 32.918324, 16.455559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419392, 33.110336, 16.353741>,  <45.589069, 33.430355, 16.184044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419392, 33.110336, 16.353741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688791, -0.589189, -0.422403,
		0.587901, 0.113032, 0.800997,
		-0.424193, -0.800050, 0.424240,
		45.292133, 32.870319, 16.481012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007881, 33.144302, 16.693018>,  <45.589069, 33.430355, 16.184044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007881, 33.144302, 16.693018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765041, 32.881222, 16.514647>,  <45.619339, 32.723373, 16.407623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765041, 32.881222, 16.514647>,  <46.007881, 33.144302, 16.693018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765041, 32.881222, 16.514647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794595, -0.507364, -0.333468,
		-0.006926, -0.556783, 0.830630,
		-0.607100, -0.657705, -0.445931,
		45.582912, 32.683910, 16.380867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334057, 32.531815, 16.702673>,  <46.007881, 33.144302, 16.693018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334057, 32.531815, 16.702673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624184, 32.487556, 16.974459>,  <46.798260, 32.461002, 17.137529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624184, 32.487556, 16.974459>,  <46.334057, 32.531815, 16.702673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624184, 32.487556, 16.974459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513737, -0.569996, -0.641232,
		0.458243, 0.814163, -0.356585,
		0.725319, -0.110650, 0.679462,
		46.841778, 32.454361, 17.178297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896889, 32.535496, 16.310843>,  <46.334057, 32.531815, 16.702673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896889, 32.535496, 16.310843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037411, 32.381130, 16.652054>,  <47.121723, 32.288513, 16.856781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037411, 32.381130, 16.652054>,  <46.896889, 32.535496, 16.310843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037411, 32.381130, 16.652054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538428, -0.662095, -0.521273,
		0.765950, 0.642421, -0.024813,
		0.351305, -0.385909, 0.853029,
		47.142803, 32.265358, 16.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.605511, 32.320370, 16.128017>,  <46.896889, 32.535496, 16.310843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.605511, 32.320370, 16.128017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526688, 32.123531, 16.467196>,  <47.479393, 32.005428, 16.670702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526688, 32.123531, 16.467196>,  <47.605511, 32.320370, 16.128017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526688, 32.123531, 16.467196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472344, -0.805555, -0.357732,
		0.859105, 0.330028, 0.391178,
		-0.197054, -0.492100, 0.847943,
		47.467571, 31.975901, 16.721579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349018, 31.524517, 16.036064>,  <47.605511, 32.320370, 16.128017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349018, 31.524517, 16.036064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531158, 31.300779, 16.313133>,  <47.640442, 31.166536, 16.479374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531158, 31.300779, 16.313133>,  <47.349018, 31.524517, 16.036064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531158, 31.300779, 16.313133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350855, 0.602314, 0.717021,
		-0.818267, -0.569520, 0.078013,
		0.455346, -0.559343, 0.692673,
		47.667763, 31.132977, 16.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895699, 31.223249, 16.640366>,  <47.349018, 31.524517, 16.036064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895699, 31.223249, 16.640366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270721, 31.329111, 16.730656>,  <47.495735, 31.392628, 16.784830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270721, 31.329111, 16.730656>,  <46.895699, 31.223249, 16.640366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270721, 31.329111, 16.730656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347831, 0.708433, 0.614115,
		0.002617, -0.654280, 0.756248,
		0.937554, 0.264653, 0.225725,
		47.551987, 31.408506, 16.798372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037960, 31.108767, 17.384451>,  <46.895699, 31.223249, 16.640366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037960, 31.108767, 17.384451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242485, 31.417561, 17.233404>,  <47.365200, 31.602837, 17.142776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242485, 31.417561, 17.233404>,  <47.037960, 31.108767, 17.384451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242485, 31.417561, 17.233404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449090, 0.614650, 0.648478,
		0.732718, -0.161993, 0.660971,
		0.511315, 0.771987, -0.377616,
		47.395878, 31.649157, 17.120119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381802, 31.509970, 17.921383>,  <47.037960, 31.108767, 17.384451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381802, 31.509970, 17.921383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319481, 31.749146, 17.606882>,  <47.282089, 31.892651, 17.418180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319481, 31.749146, 17.606882>,  <47.381802, 31.509970, 17.921383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319481, 31.749146, 17.606882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420762, 0.679976, 0.600492,
		0.893692, 0.424381, 0.145651,
		-0.155798, 0.597940, -0.786253,
		47.272743, 31.928528, 17.371006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652000, 32.334309, 18.153065>,  <47.381802, 31.509970, 17.921383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652000, 32.334309, 18.153065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406620, 32.382607, 17.840885>,  <47.259392, 32.411583, 17.653578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406620, 32.382607, 17.840885>,  <47.652000, 32.334309, 18.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406620, 32.382607, 17.840885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536425, 0.661576, 0.523990,
		0.579594, 0.740094, -0.341073,
		-0.613448, 0.120741, -0.780451,
		47.222588, 32.418831, 17.606750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673977, 33.108807, 17.714184>,  <47.652000, 32.334309, 18.153065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673977, 33.108807, 17.714184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330353, 32.904240, 17.722792>,  <47.124180, 32.781498, 17.727957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330353, 32.904240, 17.722792>,  <47.673977, 33.108807, 17.714184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330353, 32.904240, 17.722792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365302, 0.641984, 0.674100,
		-0.358565, 0.571231, -0.738327,
		-0.859061, -0.511421, 0.021521,
		47.072636, 32.750813, 17.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134106, 33.560349, 17.623703>,  <47.673977, 33.108807, 17.714184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134106, 33.560349, 17.623703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983963, 33.246620, 17.821270>,  <46.893879, 33.058384, 17.939810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983963, 33.246620, 17.821270>,  <47.134106, 33.560349, 17.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983963, 33.246620, 17.821270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199203, 0.588689, 0.783431,
		-0.905223, 0.195673, -0.377204,
		-0.375352, -0.784320, 0.493916,
		46.871357, 33.011326, 17.969444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434658, 33.728828, 17.992966>,  <47.134106, 33.560349, 17.623703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434658, 33.728828, 17.992966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537277, 33.388599, 18.176580>,  <46.598846, 33.184464, 18.286749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537277, 33.388599, 18.176580>,  <46.434658, 33.728828, 17.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537277, 33.388599, 18.176580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179353, 0.424789, 0.887349,
		-0.949746, -0.309973, -0.043576,
		0.256543, -0.850572, 0.459036,
		46.614239, 33.133427, 18.314291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996723, 33.735664, 18.599791>,  <46.434658, 33.728828, 17.992966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996723, 33.735664, 18.599791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271549, 33.452156, 18.663778>,  <46.436443, 33.282051, 18.702171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271549, 33.452156, 18.663778>,  <45.996723, 33.735664, 18.599791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271549, 33.452156, 18.663778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159535, 0.067638, 0.984872,
		-0.708867, -0.702191, -0.066602,
		0.687063, -0.708769, 0.159971,
		46.477669, 33.239525, 18.711769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626278, 33.150745, 18.970667>,  <45.996723, 33.735664, 18.599791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626278, 33.150745, 18.970667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019806, 33.195095, 19.026960>,  <46.255924, 33.221706, 19.060738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019806, 33.195095, 19.026960>,  <45.626278, 33.150745, 18.970667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019806, 33.195095, 19.026960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133198, -0.072720, 0.988418,
		0.119829, -0.991170, -0.056775,
		0.983818, 0.110879, 0.140736,
		46.314953, 33.228359, 19.069181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788982, 32.609165, 19.534143>,  <45.626278, 33.150745, 18.970667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788982, 32.609165, 19.534143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084743, 32.876907, 19.505182>,  <46.262199, 33.037552, 19.487806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084743, 32.876907, 19.505182>,  <45.788982, 32.609165, 19.534143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084743, 32.876907, 19.505182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091414, 0.206358, 0.974197,
		0.667025, -0.713709, 0.213771,
		0.739406, 0.669355, -0.072402,
		46.306564, 33.077713, 19.483461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160915, 32.444630, 20.051834>,  <45.788982, 32.609165, 19.534143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160915, 32.444630, 20.051834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233021, 32.826855, 19.958532>,  <46.276283, 33.056190, 19.902552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233021, 32.826855, 19.958532>,  <46.160915, 32.444630, 20.051834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233021, 32.826855, 19.958532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292848, 0.278522, 0.914694,
		0.939013, -0.096579, 0.330042,
		0.180264, 0.955561, -0.233253,
		46.287102, 33.113522, 19.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191078, 32.799965, 20.715815>,  <46.160915, 32.444630, 20.051834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191078, 32.799965, 20.715815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186970, 33.112572, 20.466293>,  <46.184505, 33.300137, 20.316582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186970, 33.112572, 20.466293>,  <46.191078, 32.799965, 20.715815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186970, 33.112572, 20.466293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346322, 0.582445, 0.735404,
		0.938060, 0.223588, 0.264674,
		-0.010270, 0.781515, -0.623802,
		46.183887, 33.347027, 20.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466137, 33.343102, 21.066921>,  <46.191078, 32.799965, 20.715815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466137, 33.343102, 21.066921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284180, 33.526798, 20.761721>,  <46.175007, 33.637016, 20.578600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284180, 33.526798, 20.761721>,  <46.466137, 33.343102, 21.066921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284180, 33.526798, 20.761721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445471, 0.624541, 0.641486,
		0.771122, 0.631702, -0.079520,
		-0.454891, 0.459240, -0.763002,
		46.147713, 33.664570, 20.532820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556767, 34.050362, 21.093269>,  <46.466137, 33.343102, 21.066921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556767, 34.050362, 21.093269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218582, 34.015568, 20.882507>,  <46.015671, 33.994694, 20.756050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218582, 34.015568, 20.882507>,  <46.556767, 34.050362, 21.093269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218582, 34.015568, 20.882507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455202, 0.633316, 0.625861,
		0.279258, 0.768990, -0.575039,
		-0.845462, -0.086982, -0.526905,
		45.964943, 33.989471, 20.724436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098499, 34.709457, 21.202482>,  <46.556767, 34.050362, 21.093269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098499, 34.709457, 21.202482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836105, 34.437931, 21.070482>,  <45.678669, 34.275017, 20.991283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836105, 34.437931, 21.070482>,  <46.098499, 34.709457, 21.202482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836105, 34.437931, 21.070482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748136, 0.526897, 0.403326,
		-0.099909, 0.511458, -0.853481,
		-0.655980, -0.678816, -0.329998,
		45.639313, 34.234287, 20.971483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698723, 35.174713, 21.013477>,  <46.098499, 34.709457, 21.202482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698723, 35.174713, 21.013477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489120, 34.834106, 21.020844>,  <45.363361, 34.629742, 21.025263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489120, 34.834106, 21.020844>,  <45.698723, 35.174713, 21.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489120, 34.834106, 21.020844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838910, 0.519736, 0.161569,
		-0.147149, 0.069215, -0.986690,
		-0.524001, -0.851518, 0.018414,
		45.331921, 34.578651, 21.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027702, 35.287769, 20.683779>,  <45.698723, 35.174713, 21.013477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027702, 35.287769, 20.683779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981251, 34.985600, 20.941723>,  <44.953381, 34.804298, 21.096489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981251, 34.985600, 20.941723>,  <45.027702, 35.287769, 20.683779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981251, 34.985600, 20.941723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784219, 0.468165, 0.407214,
		-0.609521, -0.458425, -0.646785,
		-0.116125, -0.755426, 0.644862,
		44.946415, 34.758972, 21.135181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380711, 35.032349, 20.731377>,  <45.027702, 35.287769, 20.683779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380711, 35.032349, 20.731377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 34.896862, 21.084599>,  <44.588570, 34.815571, 21.296532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 34.896862, 21.084599>,  <44.380711, 35.032349, 20.731377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510624, 34.896862, 21.084599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760736, 0.461202, 0.456698,
		-0.561959, -0.820099, -0.107887,
		0.324780, -0.338719, 0.883056,
		44.608059, 34.795246, 21.349516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801750, 34.685661, 21.060518>,  <44.380711, 35.032349, 20.731377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801750, 34.685661, 21.060518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050884, 34.758091, 21.364962>,  <44.200367, 34.801548, 21.547628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050884, 34.758091, 21.364962>,  <43.801750, 34.685661, 21.060518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050884, 34.758091, 21.364962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728632, 0.488526, 0.480040,
		-0.284900, -0.853555, 0.436207,
		0.622839, 0.181071, 0.761108,
		44.237736, 34.812412, 21.593294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320446, 34.619572, 21.623463>,  <43.801750, 34.685661, 21.060518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320446, 34.619572, 21.623463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643116, 34.801636, 21.774248>,  <43.836720, 34.910873, 21.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643116, 34.801636, 21.774248>,  <43.320446, 34.619572, 21.623463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643116, 34.801636, 21.774248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583604, 0.512959, 0.629507,
		0.093160, -0.727806, 0.679426,
		0.806677, 0.455160, 0.376963,
		43.885120, 34.938183, 21.887337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296715, 34.573082, 22.368681>,  <43.320446, 34.619572, 21.623463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296715, 34.573082, 22.368681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531673, 34.882668, 22.274075>,  <43.672649, 35.068420, 22.217310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531673, 34.882668, 22.274075>,  <43.296715, 34.573082, 22.368681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531673, 34.882668, 22.274075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515451, 0.583091, 0.627946,
		0.623921, -0.246939, 0.741447,
		0.587395, 0.773968, -0.236518,
		43.707893, 35.114857, 22.203119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448727, 34.852734, 23.032125>,  <43.296715, 34.573082, 22.368681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448727, 34.852734, 23.032125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528790, 35.133698, 22.758905>,  <43.576828, 35.302277, 22.594975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528790, 35.133698, 22.758905>,  <43.448727, 34.852734, 23.032125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528790, 35.133698, 22.758905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547562, 0.658314, 0.516525,
		0.812474, 0.270628, 0.516378,
		0.200153, 0.702412, -0.683049,
		43.588837, 35.344421, 22.553991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778442, 35.381668, 23.411005>,  <43.448727, 34.852734, 23.032125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778442, 35.381668, 23.411005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596710, 35.528202, 23.086197>,  <43.487671, 35.616123, 22.891312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596710, 35.528202, 23.086197>,  <43.778442, 35.381668, 23.411005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596710, 35.528202, 23.086197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566817, 0.584332, 0.580753,
		0.687242, 0.724123, -0.057834,
		-0.454331, 0.366337, -0.812023,
		43.460411, 35.638103, 22.842590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635406, 36.023785, 23.707594>,  <43.778442, 35.381668, 23.411005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635406, 36.023785, 23.707594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429180, 35.994629, 23.366096>,  <43.305443, 35.977135, 23.161198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429180, 35.994629, 23.366096>,  <43.635406, 36.023785, 23.707594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429180, 35.994629, 23.366096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676770, 0.645735, 0.353566,
		0.525521, 0.760075, -0.382248,
		-0.515568, -0.072887, -0.853743,
		43.274509, 35.972763, 23.109974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464745, 36.792999, 23.449305>,  <43.635406, 36.023785, 23.707594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464745, 36.792999, 23.449305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210857, 36.511749, 23.321089>,  <43.058525, 36.342999, 23.244160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210857, 36.511749, 23.321089>,  <43.464745, 36.792999, 23.449305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210857, 36.511749, 23.321089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766809, 0.521775, 0.373839,
		-0.095607, 0.483074, -0.870344,
		-0.634715, -0.703129, -0.320540,
		43.020443, 36.300812, 23.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076157, 37.101498, 22.892561>,  <43.464745, 36.792999, 23.449305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076157, 37.101498, 22.892561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887276, 36.814606, 23.097540>,  <42.773945, 36.642471, 23.220528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887276, 36.814606, 23.097540>,  <43.076157, 37.101498, 22.892561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887276, 36.814606, 23.097540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754863, 0.629225, 0.185088,
		-0.455195, -0.299428, -0.838535,
		-0.472206, -0.717230, 0.512447,
		42.745613, 36.599438, 23.251274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381199, 37.241020, 22.848516>,  <43.076157, 37.101498, 22.892561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381199, 37.241020, 22.848516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355297, 36.937824, 23.108135>,  <42.339756, 36.755909, 23.263906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355297, 36.937824, 23.108135>,  <42.381199, 37.241020, 22.848516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355297, 36.937824, 23.108135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871114, 0.360217, 0.333771,
		-0.486792, -0.543783, -0.683617,
		-0.064752, -0.757986, 0.649049,
		42.335873, 36.710430, 23.302851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744217, 36.913681, 22.922834>,  <42.381199, 37.241020, 22.848516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744217, 36.913681, 22.922834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902649, 36.855301, 23.285450>,  <41.997707, 36.820274, 23.503019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902649, 36.855301, 23.285450>,  <41.744217, 36.913681, 22.922834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902649, 36.855301, 23.285450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849137, 0.317468, 0.422114,
		-0.349405, -0.936970, 0.001813,
		0.396083, -0.145950, 0.906541,
		42.021473, 36.811516, 23.557413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131786, 36.903938, 23.257551>,  <41.744217, 36.913681, 22.922834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131786, 36.903938, 23.257551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408932, 36.952866, 23.541798>,  <41.575218, 36.982224, 23.712345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408932, 36.952866, 23.541798>,  <41.131786, 36.903938, 23.257551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408932, 36.952866, 23.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688590, 0.404680, 0.601729,
		-0.213968, -0.906240, 0.364618,
		0.692865, 0.122322, 0.710616,
		41.616791, 36.989563, 23.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747757, 36.761826, 23.839600>,  <41.131786, 36.903938, 23.257551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747757, 36.761826, 23.839600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083138, 36.924576, 23.984625>,  <41.284367, 37.022224, 24.071640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083138, 36.924576, 23.984625>,  <40.747757, 36.761826, 23.839600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083138, 36.924576, 23.984625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542205, 0.555831, 0.630131,
		0.054858, -0.724919, 0.686646,
		0.838454, 0.406871, 0.362563,
		41.334675, 37.046638, 24.093393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557819, 36.967934, 24.507961>,  <40.747757, 36.761826, 23.839600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557819, 36.967934, 24.507961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897385, 37.171822, 24.452047>,  <41.101124, 37.294155, 24.418499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897385, 37.171822, 24.452047>,  <40.557819, 36.967934, 24.507961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897385, 37.171822, 24.452047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284216, 0.663218, 0.692361,
		0.445614, -0.548024, 0.707882,
		0.848911, 0.509717, -0.139782,
		41.152058, 37.324738, 24.410112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772926, 37.105202, 25.124611>,  <40.557819, 36.967934, 24.507961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772926, 37.105202, 25.124611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961987, 37.373363, 24.895821>,  <41.075424, 37.534260, 24.758547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961987, 37.373363, 24.895821>,  <40.772926, 37.105202, 25.124611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961987, 37.373363, 24.895821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313183, 0.734464, 0.602063,
		0.823723, -0.105432, 0.557105,
		0.472649, 0.670408, -0.571975,
		41.103783, 37.574486, 24.724228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109882, 37.559227, 25.586523>,  <40.772926, 37.105202, 25.124611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109882, 37.559227, 25.586523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100037, 37.782928, 25.255072>,  <41.094131, 37.917149, 25.056200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100037, 37.782928, 25.255072>,  <41.109882, 37.559227, 25.586523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100037, 37.782928, 25.255072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367186, 0.765889, 0.527815,
		0.929822, 0.317252, 0.186501,
		-0.024611, 0.559254, -0.828631,
		41.092655, 37.950706, 25.006483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501762, 38.190907, 25.779163>,  <41.109882, 37.559227, 25.586523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501762, 38.190907, 25.779163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278919, 38.276360, 25.458168>,  <41.145214, 38.327629, 25.265570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278919, 38.276360, 25.458168>,  <41.501762, 38.190907, 25.779163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278919, 38.276360, 25.458168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337771, 0.824507, 0.453981,
		0.758642, 0.523976, -0.387184,
		-0.557111, 0.213630, -0.802490,
		41.111786, 38.340450, 25.217421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583759, 38.883701, 25.673109>,  <41.501762, 38.190907, 25.779163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583759, 38.883701, 25.673109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246719, 38.799515, 25.474823>,  <41.044495, 38.749004, 25.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246719, 38.799515, 25.474823>,  <41.583759, 38.883701, 25.673109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246719, 38.799515, 25.474823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434168, 0.810075, 0.394051,
		0.318634, 0.547251, -0.773944,
		-0.842597, -0.210463, -0.495717,
		40.993938, 38.736378, 25.326109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343388, 39.536644, 25.273659>,  <41.583759, 38.883701, 25.673109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343388, 39.536644, 25.273659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035507, 39.282379, 25.297308>,  <40.850780, 39.129818, 25.311497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035507, 39.282379, 25.297308>,  <41.343388, 39.536644, 25.273659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035507, 39.282379, 25.297308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566135, 0.722427, 0.396976,
		-0.295055, 0.272080, -0.915923,
		-0.769697, -0.635665, 0.059122,
		40.804600, 39.091679, 25.315044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813637, 39.954304, 25.123306>,  <41.343388, 39.536644, 25.273659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813637, 39.954304, 25.123306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644993, 39.639595, 25.303637>,  <40.543808, 39.450771, 25.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644993, 39.639595, 25.303637>,  <40.813637, 39.954304, 25.123306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644993, 39.639595, 25.303637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674889, 0.604310, 0.423480,
		-0.605618, -0.125714, -0.785763,
		-0.421607, -0.786769, 0.450823,
		40.518509, 39.403564, 25.438883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168530, 40.157372, 25.165876>,  <40.813637, 39.954304, 25.123306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168530, 40.157372, 25.165876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181458, 39.865448, 25.439032>,  <40.189213, 39.690292, 25.602924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181458, 39.865448, 25.439032>,  <40.168530, 40.157372, 25.165876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181458, 39.865448, 25.439032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536044, 0.564010, 0.628133,
		-0.843571, -0.386359, -0.372980,
		0.032320, -0.729808, 0.682888,
		40.191154, 39.646507, 25.643898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411522, 39.937614, 25.378723>,  <40.168530, 40.157372, 25.165876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411522, 39.937614, 25.378723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683334, 39.852791, 25.659657>,  <39.846420, 39.801899, 25.828217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683334, 39.852791, 25.659657>,  <39.411522, 39.937614, 25.378723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683334, 39.852791, 25.659657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614746, 0.357900, 0.702848,
		-0.400408, -0.909362, 0.112843,
		0.679530, -0.212056, 0.702333,
		39.887192, 39.789173, 25.870356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136078, 39.555889, 25.928646>,  <39.411522, 39.937614, 25.378723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136078, 39.555889, 25.928646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451473, 39.717804, 26.113873>,  <39.640709, 39.814953, 26.225008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451473, 39.717804, 26.113873>,  <39.136078, 39.555889, 25.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451473, 39.717804, 26.113873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612961, 0.455189, 0.645819,
		0.050637, -0.793063, 0.607032,
		0.788489, 0.404789, 0.463066,
		39.688019, 39.839241, 26.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998802, 39.635723, 26.559448>,  <39.136078, 39.555889, 25.928646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998802, 39.635723, 26.559448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298183, 39.900990, 26.557371>,  <39.477814, 40.060150, 26.556124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298183, 39.900990, 26.557371>,  <38.998802, 39.635723, 26.559448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298183, 39.900990, 26.557371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469557, 0.535443, 0.702009,
		0.468327, -0.522985, 0.712149,
		0.748456, 0.663164, -0.005192,
		39.522720, 40.099941, 26.555813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973354, 39.897350, 27.188379>,  <38.998802, 39.635723, 26.559448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973354, 39.897350, 27.188379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218624, 40.170811, 27.030066>,  <39.365784, 40.334885, 26.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218624, 40.170811, 27.030066>,  <38.973354, 39.897350, 27.188379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218624, 40.170811, 27.030066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365814, 0.689807, 0.624777,
		0.700148, -0.238306, 0.673055,
		0.613166, 0.683649, -0.395791,
		39.402576, 40.375904, 26.911331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725178, 39.107128, 27.291355>,  <38.973354, 39.897350, 27.188379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725178, 39.107128, 27.291355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020317, 39.152237, 27.025164>,  <39.197399, 39.179302, 26.865448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020317, 39.152237, 27.025164>,  <38.725178, 39.107128, 27.291355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020317, 39.152237, 27.025164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055659, -0.992751, -0.106521,
		-0.672667, 0.041557, -0.738777,
		0.737849, 0.112773, -0.665478,
		39.241673, 39.186069, 26.825520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163452, 38.929104, 27.909397>,  <38.725178, 39.107128, 27.291355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163452, 38.929104, 27.909397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144299, 38.632130, 28.176678>,  <39.132805, 38.453945, 28.337046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144299, 38.632130, 28.176678>,  <39.163452, 38.929104, 27.909397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144299, 38.632130, 28.176678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773108, -0.451135, -0.445849,
		0.632464, 0.495243, 0.595586,
		-0.047886, -0.742436, 0.668203,
		39.129932, 38.409397, 28.377138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861168, 38.782650, 28.237078>,  <39.163452, 38.929104, 27.909397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861168, 38.782650, 28.237078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671558, 38.436073, 28.299791>,  <39.557793, 38.228127, 28.337420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671558, 38.436073, 28.299791>,  <39.861168, 38.782650, 28.237078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671558, 38.436073, 28.299791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803640, -0.498490, -0.325070,
		0.359808, -0.028094, 0.932603,
		-0.474026, -0.866440, 0.156783,
		39.529350, 38.176140, 28.346827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346359, 38.297104, 28.629475>,  <39.861168, 38.782650, 28.237078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346359, 38.297104, 28.629475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073727, 38.050240, 28.472221>,  <39.910145, 37.902122, 28.377871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073727, 38.050240, 28.472221>,  <40.346359, 38.297104, 28.629475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073727, 38.050240, 28.472221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717871, -0.668067, -0.195826,
		-0.141782, -0.415689, 0.898388,
		-0.681586, -0.617162, -0.393131,
		39.869251, 37.865089, 28.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463825, 37.614498, 28.906588>,  <40.346359, 38.297104, 28.629475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463825, 37.614498, 28.906588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271320, 37.534630, 28.565174>,  <40.155819, 37.486710, 28.360327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271320, 37.534630, 28.565174>,  <40.463825, 37.614498, 28.906588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271320, 37.534630, 28.565174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749788, -0.598188, -0.282824,
		-0.454101, -0.776081, 0.437596,
		-0.481259, -0.199673, -0.853534,
		40.126942, 37.474728, 28.309114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543980, 36.968342, 28.905014>,  <40.463825, 37.614498, 28.906588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543980, 36.968342, 28.905014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412945, 37.050568, 28.536139>,  <40.334324, 37.099903, 28.314814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412945, 37.050568, 28.536139>,  <40.543980, 36.968342, 28.905014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412945, 37.050568, 28.536139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668473, -0.639346, -0.379974,
		-0.667708, -0.740931, 0.072023,
		-0.327582, 0.205566, -0.922189,
		40.314671, 37.112236, 28.259481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185474, 36.417000, 28.678831>,  <40.543980, 36.968342, 28.905014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185474, 36.417000, 28.678831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310871, 36.612579, 28.353216>,  <40.386108, 36.729927, 28.157848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310871, 36.612579, 28.353216>,  <40.185474, 36.417000, 28.678831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310871, 36.612579, 28.353216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486939, -0.818734, -0.304244,
		-0.815238, -0.301008, -0.494754,
		0.313492, 0.488947, -0.814036,
		40.404919, 36.759262, 28.109005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050079, 35.892971, 28.213432>,  <40.185474, 36.417000, 28.678831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050079, 35.892971, 28.213432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330559, 36.150490, 28.090889>,  <40.498844, 36.305000, 28.017363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330559, 36.150490, 28.090889>,  <40.050079, 35.892971, 28.213432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330559, 36.150490, 28.090889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516606, -0.754918, -0.404000,
		-0.491366, 0.125018, -0.861934,
		0.701197, 0.643793, -0.306356,
		40.540916, 36.343628, 27.998981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229176, 35.707596, 27.562143>,  <40.050079, 35.892971, 28.213432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229176, 35.707596, 27.562143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532280, 35.949108, 27.661140>,  <40.714142, 36.094017, 27.720539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532280, 35.949108, 27.661140>,  <40.229176, 35.707596, 27.562143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532280, 35.949108, 27.661140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646140, -0.641287, -0.413829,
		-0.091148, 0.473497, -0.876067,
		0.757757, 0.603781, 0.247493,
		40.759605, 36.130241, 27.735388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631382, 35.685669, 26.928150>,  <40.229176, 35.707596, 27.562143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631382, 35.685669, 26.928150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866947, 35.810951, 27.226164>,  <41.008286, 35.886120, 27.404972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866947, 35.810951, 27.226164>,  <40.631382, 35.685669, 26.928150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866947, 35.810951, 27.226164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741114, -0.577001, -0.343249,
		0.322376, 0.754300, -0.571930,
		0.588917, 0.313210, 0.745034,
		41.043621, 35.904915, 27.449675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219883, 35.907604, 26.536762>,  <40.631382, 35.685669, 26.928150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219883, 35.907604, 26.536762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272896, 35.798862, 26.918030>,  <41.304703, 35.733616, 27.146790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272896, 35.798862, 26.918030>,  <41.219883, 35.907604, 26.536762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272896, 35.798862, 26.918030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756630, -0.593447, -0.274465,
		0.640269, 0.757573, 0.127039,
		0.132536, -0.271854, 0.953168,
		41.312656, 35.717308, 27.203979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975971, 36.030708, 26.599775>,  <41.219883, 35.907604, 26.536762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975971, 36.030708, 26.599775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885960, 35.794716, 26.909945>,  <41.831951, 35.653118, 27.096046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885960, 35.794716, 26.909945>,  <41.975971, 36.030708, 26.599775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885960, 35.794716, 26.909945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821448, -0.542877, -0.174665,
		0.524009, 0.597663, 0.606807,
		-0.225031, -0.589986, 0.775421,
		41.818451, 35.617722, 27.142570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668468, 35.776741, 26.867573>,  <41.975971, 36.030708, 26.599775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668468, 35.776741, 26.867573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401230, 35.517197, 27.013248>,  <42.240887, 35.361469, 27.100655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401230, 35.517197, 27.013248>,  <42.668468, 35.776741, 26.867573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401230, 35.517197, 27.013248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624444, -0.755086, -0.199784,
		0.404626, 0.093941, 0.909644,
		-0.668092, -0.648860, 0.364189,
		42.200802, 35.322540, 27.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880466, 35.446835, 27.475080>,  <42.668468, 35.776741, 26.867573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880466, 35.446835, 27.475080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632629, 35.214695, 27.263685>,  <42.483929, 35.075409, 27.136848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632629, 35.214695, 27.263685>,  <42.880466, 35.446835, 27.475080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632629, 35.214695, 27.263685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742650, -0.651420, -0.155319,
		-0.254128, -0.488716, 0.834611,
		-0.619589, -0.580353, -0.528489,
		42.446754, 35.040588, 27.105139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021271, 34.718410, 27.691242>,  <42.880466, 35.446835, 27.475080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021271, 34.718410, 27.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838139, 34.711914, 27.335686>,  <42.728260, 34.708015, 27.122351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838139, 34.711914, 27.335686>,  <43.021271, 34.718410, 27.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838139, 34.711914, 27.335686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693936, -0.631526, -0.345872,
		-0.555740, -0.775185, 0.300403,
		-0.457827, -0.016245, -0.888893,
		42.700790, 34.707039, 27.069017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946701, 34.027847, 27.420424>,  <43.021271, 34.718410, 27.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946701, 34.027847, 27.420424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928429, 34.232071, 27.076973>,  <42.917465, 34.354607, 26.870903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928429, 34.232071, 27.076973>,  <42.946701, 34.027847, 27.420424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928429, 34.232071, 27.076973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729508, -0.570140, -0.377834,
		-0.682445, -0.643635, -0.346414,
		-0.045683, 0.510563, -0.858626,
		42.914722, 34.385239, 26.819386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034111, 33.528744, 26.921049>,  <42.946701, 34.027847, 27.420424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034111, 33.528744, 26.921049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111664, 33.858490, 26.708319>,  <43.158195, 34.056335, 26.580681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111664, 33.858490, 26.708319>,  <43.034111, 33.528744, 26.921049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111664, 33.858490, 26.708319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626760, -0.521135, -0.579301,
		-0.754706, -0.221010, -0.617716,
		0.193882, 0.824362, -0.531824,
		43.169830, 34.105797, 26.548771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017014, 33.279842, 26.222214>,  <43.034111, 33.528744, 26.921049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017014, 33.279842, 26.222214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197762, 33.636513, 26.211430>,  <43.306210, 33.850513, 26.204960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197762, 33.636513, 26.211430>,  <43.017014, 33.279842, 26.222214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197762, 33.636513, 26.211430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651161, -0.350346, -0.673236,
		-0.609753, 0.286663, -0.738936,
		0.451875, 0.891674, -0.026961,
		43.333324, 33.904015, 26.203341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080597, 33.426781, 25.483828>,  <43.017014, 33.279842, 26.222214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080597, 33.426781, 25.483828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334362, 33.671494, 25.672823>,  <43.486622, 33.818321, 25.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334362, 33.671494, 25.672823>,  <43.080597, 33.426781, 25.483828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334362, 33.671494, 25.672823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728165, -0.267856, -0.630896,
		-0.259409, 0.744299, -0.615407,
		0.634415, 0.611778, 0.472488,
		43.524685, 33.855026, 25.814569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287056, 33.994778, 25.096298>,  <43.080597, 33.426781, 25.483828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287056, 33.994778, 25.096298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586781, 33.917645, 25.349707>,  <43.766617, 33.871365, 25.501751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586781, 33.917645, 25.349707>,  <43.287056, 33.994778, 25.096298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586781, 33.917645, 25.349707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605830, -0.186676, -0.773383,
		0.267394, 0.963311, -0.023057,
		0.749313, -0.192829, 0.633519,
		43.811573, 33.859795, 25.539762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784779, 34.320553, 24.783262>,  <43.287056, 33.994778, 25.096298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784779, 34.320553, 24.783262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952385, 34.039181, 25.012911>,  <44.052948, 33.870358, 25.150700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952385, 34.039181, 25.012911>,  <43.784779, 34.320553, 24.783262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952385, 34.039181, 25.012911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650273, -0.208815, -0.730439,
		0.633698, 0.679398, 0.369925,
		0.419013, -0.703430, 0.574120,
		44.078091, 33.828152, 25.185146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429512, 34.326035, 24.576300>,  <43.784779, 34.320553, 24.783262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429512, 34.326035, 24.576300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424900, 33.981239, 24.779018>,  <44.422134, 33.774361, 24.900650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424900, 33.981239, 24.779018>,  <44.429512, 34.326035, 24.576300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424900, 33.981239, 24.779018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423133, -0.463420, -0.778588,
		0.905994, 0.205464, 0.370080,
		-0.011531, -0.861990, 0.506795,
		44.421440, 33.722641, 24.931057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110256, 34.039692, 24.501303>,  <44.429512, 34.326035, 24.576300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110256, 34.039692, 24.501303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935783, 33.695305, 24.605976>,  <44.831100, 33.488670, 24.668779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935783, 33.695305, 24.605976>,  <45.110256, 34.039692, 24.501303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935783, 33.695305, 24.605976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403528, -0.447067, -0.798308,
		0.804310, -0.242608, 0.542427,
		-0.436178, -0.860972, 0.261681,
		44.804932, 33.437012, 24.684481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589180, 33.554142, 24.348333>,  <45.110256, 34.039692, 24.501303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589180, 33.554142, 24.348333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232918, 33.373322, 24.367863>,  <45.019161, 33.264832, 24.379581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232918, 33.373322, 24.367863>,  <45.589180, 33.554142, 24.348333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232918, 33.373322, 24.367863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128164, -0.352635, -0.926943,
		0.436241, -0.819330, 0.372013,
		-0.890656, -0.452048, 0.048825,
		44.965721, 33.237705, 24.382511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709846, 32.783630, 24.289507>,  <45.589180, 33.554142, 24.348333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709846, 32.783630, 24.289507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329948, 32.862465, 24.192225>,  <45.102009, 32.909767, 24.133856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329948, 32.862465, 24.192225>,  <45.709846, 32.783630, 24.289507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329948, 32.862465, 24.192225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143266, -0.417119, -0.897489,
		-0.278330, -0.887225, 0.367919,
		-0.949741, 0.197088, -0.243205,
		45.045025, 32.921593, 24.119263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549633, 32.203846, 23.926369>,  <45.709846, 32.783630, 24.289507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549633, 32.203846, 23.926369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255051, 32.449467, 23.812826>,  <45.078300, 32.596840, 23.744701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255051, 32.449467, 23.812826>,  <45.549633, 32.203846, 23.926369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255051, 32.449467, 23.812826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083773, -0.333591, -0.938989,
		-0.671279, -0.715302, 0.194233,
		-0.736455, 0.614052, -0.283856,
		45.034115, 32.633682, 23.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048664, 31.721321, 23.675304>,  <45.549633, 32.203846, 23.926369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048664, 31.721321, 23.675304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002659, 32.088257, 23.522850>,  <44.975056, 32.308418, 23.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002659, 32.088257, 23.522850>,  <45.048664, 31.721321, 23.675304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002659, 32.088257, 23.522850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026272, -0.380738, -0.924310,
		-0.993017, -0.116317, 0.019688,
		-0.115009, 0.917338, -0.381135,
		44.968155, 32.363457, 23.408510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519630, 31.662436, 23.265245>,  <45.048664, 31.721321, 23.675304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519630, 31.662436, 23.265245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714947, 31.982805, 23.126629>,  <44.832138, 32.175026, 23.043459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714947, 31.982805, 23.126629>,  <44.519630, 31.662436, 23.265245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714947, 31.982805, 23.126629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027479, -0.382792, -0.923425,
		-0.872248, 0.460423, -0.164906,
		0.488291, 0.800925, -0.346542,
		44.861435, 32.223083, 23.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250698, 31.727287, 22.633461>,  <44.519630, 31.662436, 23.265245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250698, 31.727287, 22.633461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566826, 31.970743, 22.605295>,  <44.756500, 32.116817, 22.588396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566826, 31.970743, 22.605295>,  <44.250698, 31.727287, 22.633461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566826, 31.970743, 22.605295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127670, -0.275993, -0.952643,
		-0.599250, 0.743899, -0.295826,
		0.790316, 0.608640, -0.070415,
		44.803921, 32.153336, 22.584171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136433, 32.032963, 22.034258>,  <44.250698, 31.727287, 22.633461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136433, 32.032963, 22.034258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529072, 32.076942, 22.096704>,  <44.764656, 32.103329, 22.134172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529072, 32.076942, 22.096704>,  <44.136433, 32.032963, 22.034258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529072, 32.076942, 22.096704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187307, -0.395586, -0.899126,
		-0.037097, 0.911824, -0.408901,
		0.981601, 0.109945, 0.156116,
		44.823551, 32.109924, 22.143539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408096, 32.255917, 21.499996>,  <44.136433, 32.032963, 22.034258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408096, 32.255917, 21.499996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739334, 32.107166, 21.667789>,  <44.938076, 32.017918, 21.768465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739334, 32.107166, 21.667789>,  <44.408096, 32.255917, 21.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739334, 32.107166, 21.667789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288945, -0.358093, -0.887851,
		0.480386, 0.856432, -0.189083,
		0.828094, -0.371877, 0.419485,
		44.987762, 31.995604, 21.793634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856583, 32.215263, 20.992458>,  <44.408096, 32.255917, 21.499996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856583, 32.215263, 20.992458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057152, 31.988106, 21.253555>,  <45.177494, 31.851810, 21.410213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057152, 31.988106, 21.253555>,  <44.856583, 32.215263, 20.992458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057152, 31.988106, 21.253555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498217, -0.427282, -0.754460,
		0.707358, 0.703511, 0.068685,
		0.501423, -0.567893, 0.652742,
		45.207577, 31.817738, 21.449379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530396, 32.322224, 20.831541>,  <44.856583, 32.215263, 20.992458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530396, 32.322224, 20.831541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482243, 31.972372, 21.019384>,  <45.453350, 31.762461, 21.132090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482243, 31.972372, 21.019384>,  <45.530396, 32.322224, 20.831541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482243, 31.972372, 21.019384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466067, -0.467466, -0.751170,
		0.876522, 0.128443, 0.463910,
		-0.120380, -0.874630, 0.469607,
		45.446129, 31.709984, 21.160267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223328, 31.859583, 20.910213>,  <45.530396, 32.322224, 20.831541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223328, 31.859583, 20.910213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894775, 31.631903, 20.924875>,  <45.697643, 31.495295, 20.933672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894775, 31.631903, 20.924875>,  <46.223328, 31.859583, 20.910213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894775, 31.631903, 20.924875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305126, -0.492785, -0.814899,
		0.481905, -0.658158, 0.578442,
		-0.821380, -0.569202, 0.036655,
		45.648361, 31.461142, 20.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484386, 31.148525, 20.830288>,  <46.223328, 31.859583, 20.910213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484386, 31.148525, 20.830288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092812, 31.133604, 20.750004>,  <45.857864, 31.124651, 20.701834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092812, 31.133604, 20.750004>,  <46.484386, 31.148525, 20.830288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092812, 31.133604, 20.750004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165384, -0.721313, -0.672574,
		-0.119687, -0.691604, 0.712291,
		-0.978940, -0.037303, -0.200712,
		45.799129, 31.122414, 20.689791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347683, 30.388288, 20.774746>,  <46.484386, 31.148525, 20.830288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347683, 30.388288, 20.774746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064243, 30.589674, 20.576996>,  <45.894180, 30.710506, 20.458345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064243, 30.589674, 20.576996>,  <46.347683, 30.388288, 20.774746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064243, 30.589674, 20.576996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175322, -0.553036, -0.814502,
		-0.683481, -0.663832, 0.303613,
		-0.708601, 0.503467, -0.494375,
		45.851662, 30.740713, 20.428684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049271, 29.916941, 20.416231>,  <46.347683, 30.388288, 20.774746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049271, 29.916941, 20.416231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914730, 30.252829, 20.245707>,  <45.834007, 30.454361, 20.143393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914730, 30.252829, 20.245707>,  <46.049271, 29.916941, 20.416231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914730, 30.252829, 20.245707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056382, -0.433919, -0.899186,
		-0.940047, -0.326479, 0.098605,
		-0.336352, 0.839718, -0.426311,
		45.813824, 30.504744, 20.117813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490856, 29.721678, 19.964956>,  <46.049271, 29.916941, 20.416231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490856, 29.721678, 19.964956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597687, 30.080173, 19.823296>,  <45.661785, 30.295271, 19.738298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597687, 30.080173, 19.823296>,  <45.490856, 29.721678, 19.964956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597687, 30.080173, 19.823296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201871, -0.307315, -0.929949,
		-0.942295, 0.319859, 0.098849,
		0.267075, 0.896241, -0.354151,
		45.677811, 30.349047, 19.717051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935596, 29.903517, 19.443846>,  <45.490856, 29.721678, 19.964956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935596, 29.903517, 19.443846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282852, 30.091993, 19.381483>,  <45.491207, 30.205080, 19.344065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282852, 30.091993, 19.381483>,  <44.935596, 29.903517, 19.443846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282852, 30.091993, 19.381483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043641, -0.240442, -0.969682,
		-0.494394, 0.848625, -0.188175,
		0.868142, 0.471193, -0.155908,
		45.543293, 30.233351, 19.334711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835888, 29.166460, 19.556549>,  <44.935596, 29.903517, 19.443846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835888, 29.166460, 19.556549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592014, 28.856112, 19.491671>,  <44.445690, 28.669903, 19.452744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592014, 28.856112, 19.491671>,  <44.835888, 29.166460, 19.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592014, 28.856112, 19.491671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634971, 0.355589, 0.685834,
		-0.474444, 0.521132, -0.709453,
		-0.609683, -0.775872, -0.162197,
		44.409111, 28.623350, 19.443012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099369, 29.471609, 19.453798>,  <44.835888, 29.166460, 19.556549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099369, 29.471609, 19.453798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100445, 29.083290, 19.549749>,  <44.101089, 28.850298, 19.607321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100445, 29.083290, 19.549749>,  <44.099369, 29.471609, 19.453798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100445, 29.083290, 19.549749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664892, 0.177441, 0.725557,
		-0.746935, -0.161443, -0.645000,
		0.002687, -0.970799, 0.239879,
		44.101250, 28.792049, 19.621714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392052, 29.238146, 19.581167>,  <44.099369, 29.471609, 19.453798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392052, 29.238146, 19.581167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622631, 28.966322, 19.762672>,  <43.760979, 28.803228, 19.871576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622631, 28.966322, 19.762672>,  <43.392052, 29.238146, 19.581167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622631, 28.966322, 19.762672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629588, -0.015382, 0.776777,
		-0.520886, -0.733459, -0.436710,
		0.576452, -0.679559, 0.453765,
		43.795567, 28.762455, 19.898802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924686, 28.841702, 19.992483>,  <43.392052, 29.238146, 19.581167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924686, 28.841702, 19.992483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276203, 28.757204, 20.163643>,  <43.487114, 28.706505, 20.266338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276203, 28.757204, 20.163643>,  <42.924686, 28.841702, 19.992483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276203, 28.757204, 20.163643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440034, -0.011777, 0.897904,
		-0.184638, -0.977362, -0.103305,
		0.878794, -0.211244, 0.427898,
		43.539841, 28.693830, 20.292011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746376, 28.362452, 20.572065>,  <42.924686, 28.841702, 19.992483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746376, 28.362452, 20.572065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111069, 28.509266, 20.645853>,  <43.329884, 28.597355, 20.690125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111069, 28.509266, 20.645853>,  <42.746376, 28.362452, 20.572065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111069, 28.509266, 20.645853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324597, 0.368500, 0.871117,
		0.251752, -0.854104, 0.455112,
		0.911734, 0.367034, 0.184469,
		43.384590, 28.619377, 20.701193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803070, 28.278240, 21.295542>,  <42.746376, 28.362452, 20.572065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803070, 28.278240, 21.295542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109375, 28.526834, 21.229368>,  <43.293156, 28.675991, 21.189663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109375, 28.526834, 21.229368>,  <42.803070, 28.278240, 21.295542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109375, 28.526834, 21.229368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229022, 0.503889, 0.832854,
		0.600968, -0.599877, 0.528191,
		0.765759, 0.621486, -0.165436,
		43.339104, 28.713280, 21.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123249, 28.406113, 21.923189>,  <42.803070, 28.278240, 21.295542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123249, 28.406113, 21.923189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241173, 28.732916, 21.724960>,  <43.311928, 28.928997, 21.606024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241173, 28.732916, 21.724960>,  <43.123249, 28.406113, 21.923189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241173, 28.732916, 21.724960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288275, 0.570499, 0.769044,
		0.911037, -0.083857, 0.403708,
		0.294805, 0.817006, -0.495572,
		43.329613, 28.978018, 21.576288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528736, 28.809483, 22.411829>,  <43.123249, 28.406113, 21.923189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528736, 28.809483, 22.411829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405109, 29.054617, 22.120924>,  <43.330933, 29.201698, 21.946381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405109, 29.054617, 22.120924>,  <43.528736, 28.809483, 22.411829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405109, 29.054617, 22.120924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306925, 0.659512, 0.686179,
		0.900153, 0.435288, -0.015736,
		-0.309064, 0.612836, -0.727263,
		43.312389, 29.238468, 21.902744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863518, 29.492184, 22.586424>,  <43.528736, 28.809483, 22.411829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863518, 29.492184, 22.586424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544884, 29.558661, 22.353930>,  <43.353703, 29.598547, 22.214434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544884, 29.558661, 22.353930>,  <43.863518, 29.492184, 22.586424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544884, 29.558661, 22.353930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354617, 0.650206, 0.671921,
		0.489591, 0.741358, -0.459009,
		-0.796585, 0.166194, -0.581234,
		43.305908, 29.608519, 22.179560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990108, 30.135496, 22.362526>,  <43.863518, 29.492184, 22.586424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990108, 30.135496, 22.362526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591267, 30.110518, 22.345150>,  <43.351963, 30.095531, 22.334724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591267, 30.110518, 22.345150>,  <43.990108, 30.135496, 22.362526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591267, 30.110518, 22.345150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075996, 0.792605, 0.604981,
		-0.003346, 0.606530, -0.795054,
		-0.997102, -0.062445, -0.043442,
		43.292137, 30.091784, 22.332117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690067, 30.815466, 22.365873>,  <43.990108, 30.135496, 22.362526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690067, 30.815466, 22.365873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364491, 30.594801, 22.438726>,  <43.169144, 30.462402, 22.482439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364491, 30.594801, 22.438726>,  <43.690067, 30.815466, 22.365873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364491, 30.594801, 22.438726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361654, 0.726505, 0.584292,
		-0.454651, 0.409709, -0.790841,
		-0.813940, -0.551660, 0.182133,
		43.120308, 30.429302, 22.493366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112717, 31.268026, 22.451010>,  <43.690067, 30.815466, 22.365873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112717, 31.268026, 22.451010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965973, 30.930653, 22.608000>,  <42.877926, 30.728230, 22.702194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965973, 30.930653, 22.608000>,  <43.112717, 31.268026, 22.451010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965973, 30.930653, 22.608000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632401, 0.535521, 0.559720,
		-0.682264, -0.042862, -0.729848,
		-0.366858, -0.843433, 0.392473,
		42.855915, 30.677622, 22.725742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395294, 31.333771, 22.462755>,  <43.112717, 31.268026, 22.451010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395294, 31.333771, 22.462755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495819, 31.057104, 22.733587>,  <42.556133, 30.891104, 22.896086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495819, 31.057104, 22.733587>,  <42.395294, 31.333771, 22.462755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495819, 31.057104, 22.733587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601203, 0.436673, 0.669232,
		-0.758548, -0.575252, -0.306089,
		0.251316, -0.691666, 0.677080,
		42.571213, 30.849604, 22.936712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812611, 31.299635, 22.812113>,  <42.395294, 31.333771, 22.462755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812611, 31.299635, 22.812113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077534, 31.116346, 23.049225>,  <42.236488, 31.006372, 23.191492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077534, 31.116346, 23.049225>,  <41.812611, 31.299635, 22.812113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077534, 31.116346, 23.049225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353687, 0.506262, 0.786514,
		-0.660498, -0.730570, 0.173233,
		0.662304, -0.458221, 0.592778,
		42.276226, 30.978880, 23.227058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492252, 31.077669, 23.389765>,  <41.812611, 31.299635, 22.812113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492252, 31.077669, 23.389765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874622, 31.095736, 23.505814>,  <42.104042, 31.106575, 23.575443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874622, 31.095736, 23.505814>,  <41.492252, 31.077669, 23.389765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874622, 31.095736, 23.505814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286387, 0.361334, 0.887367,
		-0.064753, -0.931342, 0.358342,
		0.955923, 0.045165, 0.290122,
		42.161400, 31.109285, 23.592850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486824, 30.780539, 24.055208>,  <41.492252, 31.077669, 23.389765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486824, 30.780539, 24.055208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805145, 31.022648, 24.047802>,  <41.996140, 31.167913, 24.043358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805145, 31.022648, 24.047802>,  <41.486824, 30.780539, 24.055208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805145, 31.022648, 24.047802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306469, 0.428934, 0.849760,
		0.522279, -0.670567, 0.526844,
		0.795802, 0.605274, -0.018516,
		42.043884, 31.204229, 24.042248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729698, 30.816477, 24.788832>,  <41.486824, 30.780539, 24.055208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729698, 30.816477, 24.788832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888954, 31.126242, 24.592152>,  <41.984509, 31.312101, 24.474144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888954, 31.126242, 24.592152>,  <41.729698, 30.816477, 24.788832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888954, 31.126242, 24.592152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069451, 0.559925, 0.825627,
		0.914693, -0.294563, 0.276710,
		0.398136, 0.774414, -0.491702,
		42.008396, 31.358566, 24.444641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115013, 31.137287, 25.290358>,  <41.729698, 30.816477, 24.788832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115013, 31.137287, 25.290358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088879, 31.409678, 24.998604>,  <42.073196, 31.573112, 24.823551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088879, 31.409678, 24.998604>,  <42.115013, 31.137287, 25.290358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088879, 31.409678, 24.998604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186877, 0.709664, 0.679304,
		0.980208, 0.180688, 0.080892,
		-0.065337, 0.680976, -0.729385,
		42.069279, 31.613970, 24.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447624, 31.787069, 25.654839>,  <42.115013, 31.137287, 25.290358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447624, 31.787069, 25.654839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212330, 31.881500, 25.345451>,  <42.071156, 31.938158, 25.159819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212330, 31.881500, 25.345451>,  <42.447624, 31.787069, 25.654839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212330, 31.881500, 25.345451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386650, 0.757938, 0.525387,
		0.710272, 0.608110, -0.354565,
		-0.588231, 0.236075, -0.773468,
		42.035862, 31.952322, 25.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565437, 32.453091, 25.395153>,  <42.447624, 31.787069, 25.654839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565437, 32.453091, 25.395153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186356, 32.362888, 25.304817>,  <41.958908, 32.308765, 25.250616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186356, 32.362888, 25.304817>,  <42.565437, 32.453091, 25.395153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186356, 32.362888, 25.304817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310158, 0.817582, 0.485142,
		0.075238, 0.529817, -0.844769,
		-0.947703, -0.225510, -0.225840,
		41.902046, 32.295235, 25.237064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170307, 33.055923, 25.552025>,  <42.565437, 32.453091, 25.395153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170307, 33.055923, 25.552025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885517, 32.777069, 25.518330>,  <41.714642, 32.609756, 25.498112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885517, 32.777069, 25.518330>,  <42.170307, 33.055923, 25.552025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885517, 32.777069, 25.518330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504454, 0.424328, 0.751978,
		-0.488484, 0.577885, -0.653783,
		-0.711976, -0.697133, -0.084239,
		41.671925, 32.567928, 25.493057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638474, 33.419300, 25.492348>,  <42.170307, 33.055923, 25.552025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638474, 33.419300, 25.492348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478447, 33.072109, 25.610037>,  <41.382431, 32.863796, 25.680651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478447, 33.072109, 25.610037>,  <41.638474, 33.419300, 25.492348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478447, 33.072109, 25.610037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311751, 0.430770, 0.846905,
		-0.861836, 0.247092, -0.442928,
		-0.400063, -0.867976, 0.294222,
		41.358429, 32.811718, 25.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864265, 33.479614, 25.524208>,  <41.638474, 33.419300, 25.492348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864265, 33.479614, 25.524208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935131, 33.152458, 25.743179>,  <40.977650, 32.956165, 25.874561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935131, 33.152458, 25.743179>,  <40.864265, 33.479614, 25.524208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935131, 33.152458, 25.743179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488700, 0.409702, 0.770271,
		-0.854276, -0.403988, -0.327118,
		0.177160, -0.817886, 0.547427,
		40.988277, 32.907093, 25.907408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238956, 33.252075, 25.796072>,  <40.864265, 33.479614, 25.524208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238956, 33.252075, 25.796072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502937, 33.081406, 26.043432>,  <40.661324, 32.979004, 26.191849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502937, 33.081406, 26.043432>,  <40.238956, 33.252075, 25.796072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502937, 33.081406, 26.043432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440470, 0.447078, 0.778529,
		-0.608651, -0.786175, 0.107112,
		0.659948, -0.426673, 0.618401,
		40.700920, 32.953403, 26.228952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847866, 32.942226, 26.341105>,  <40.238956, 33.252075, 25.796072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847866, 32.942226, 26.341105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216892, 32.984001, 26.489685>,  <40.438309, 33.009068, 26.578833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216892, 32.984001, 26.489685>,  <39.847866, 32.942226, 26.341105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216892, 32.984001, 26.489685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376517, 0.454135, 0.807463,
		-0.084359, -0.884791, 0.458289,
		0.922561, 0.104437, 0.371449,
		40.493660, 33.015331, 26.601120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877895, 32.645519, 27.028736>,  <39.847866, 32.942226, 26.341105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877895, 32.645519, 27.028736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180286, 32.905453, 26.997206>,  <40.361721, 33.061413, 26.978287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180286, 32.905453, 26.997206>,  <39.877895, 32.645519, 27.028736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180286, 32.905453, 26.997206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192981, 0.336312, 0.921766,
		0.625509, -0.681619, 0.379649,
		0.755974, 0.649838, -0.078827,
		40.407078, 33.100403, 26.973558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069332, 32.709641, 27.700771>,  <39.877895, 32.645519, 27.028736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069332, 32.709641, 27.700771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257969, 33.029518, 27.552134>,  <40.371151, 33.221447, 27.462950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257969, 33.029518, 27.552134>,  <40.069332, 32.709641, 27.700771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257969, 33.029518, 27.552134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133346, 0.481225, 0.866396,
		0.871676, -0.359036, 0.333579,
		0.471593, 0.799697, -0.371597,
		40.399448, 33.269428, 27.440655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526852, 32.921799, 28.111629>,  <40.069332, 32.709641, 27.700771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526852, 32.921799, 28.111629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439728, 33.259033, 27.914949>,  <40.387455, 33.461372, 27.796942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439728, 33.259033, 27.914949>,  <40.526852, 32.921799, 28.111629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439728, 33.259033, 27.914949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236072, 0.443328, 0.864714,
		0.947011, 0.304419, 0.102468,
		-0.217809, 0.843083, -0.491701,
		40.374386, 33.511959, 27.767439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792545, 33.380196, 28.545633>,  <40.526852, 32.921799, 28.111629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792545, 33.380196, 28.545633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528442, 33.577465, 28.319065>,  <40.369980, 33.695827, 28.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528442, 33.577465, 28.319065>,  <40.792545, 33.380196, 28.545633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528442, 33.577465, 28.319065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270144, 0.547759, 0.791822,
		0.700768, 0.675825, -0.228437,
		-0.660262, 0.493173, -0.566422,
		40.330364, 33.725418, 28.149137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910030, 34.069626, 28.646690>,  <40.792545, 33.380196, 28.545633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910030, 34.069626, 28.646690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528393, 34.051842, 28.528217>,  <40.299408, 34.041172, 28.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528393, 34.051842, 28.528217>,  <40.910030, 34.069626, 28.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528393, 34.051842, 28.528217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258229, 0.623062, 0.738317,
		0.151718, 0.780908, -0.605941,
		-0.954096, -0.044456, -0.296183,
		40.242165, 34.038506, 28.439362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610996, 34.754246, 28.794615>,  <40.910030, 34.069626, 28.646690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610996, 34.754246, 28.794615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297390, 34.517342, 28.720259>,  <40.109226, 34.375198, 28.675644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297390, 34.517342, 28.720259>,  <40.610996, 34.754246, 28.794615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297390, 34.517342, 28.720259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491049, 0.408551, 0.769387,
		-0.379728, 0.694492, -0.611137,
		-0.784013, -0.592256, -0.185891,
		40.062187, 34.339664, 28.664492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112133, 35.184776, 28.742685>,  <40.610996, 34.754246, 28.794615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112133, 35.184776, 28.742685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950283, 34.829060, 28.827950>,  <39.853172, 34.615631, 28.879108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950283, 34.829060, 28.827950>,  <40.112133, 35.184776, 28.742685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950283, 34.829060, 28.827950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451286, 0.396910, 0.799252,
		-0.795373, 0.227202, -0.561926,
		-0.404625, -0.889293, 0.213158,
		39.828896, 34.562271, 28.891897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424877, 35.278053, 28.740501>,  <40.112133, 35.184776, 28.742685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424877, 35.278053, 28.740501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439930, 34.944435, 28.960669>,  <39.448963, 34.744267, 29.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439930, 34.944435, 28.960669>,  <39.424877, 35.278053, 28.740501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439930, 34.944435, 28.960669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494755, 0.463009, 0.735418,
		-0.868217, -0.299996, -0.395223,
		0.037631, -0.834041, 0.550417,
		39.451218, 34.694221, 29.125793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878643, 35.342621, 29.140991>,  <39.424877, 35.278053, 28.740501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878643, 35.342621, 29.140991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057190, 35.047554, 29.343615>,  <39.164318, 34.870514, 29.465189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057190, 35.047554, 29.343615>,  <38.878643, 35.342621, 29.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057190, 35.047554, 29.343615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371398, 0.362305, 0.854868,
		-0.814136, -0.569723, -0.112246,
		0.446371, -0.737666, 0.506559,
		39.191101, 34.826256, 29.495583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367004, 35.072773, 29.604589>,  <38.878643, 35.342621, 29.140991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367004, 35.072773, 29.604589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713936, 34.950035, 29.761353>,  <38.922092, 34.876392, 29.855410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713936, 34.950035, 29.761353>,  <38.367004, 35.072773, 29.604589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713936, 34.950035, 29.761353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389516, 0.071764, 0.918220,
		-0.309875, -0.949050, -0.057278,
		0.867326, -0.306844, 0.391908,
		38.974133, 34.857983, 29.878925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140793, 34.576023, 30.051348>,  <38.367004, 35.072773, 29.604589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140793, 34.576023, 30.051348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505955, 34.682068, 30.175493>,  <38.725052, 34.745697, 30.249981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505955, 34.682068, 30.175493>,  <38.140793, 34.576023, 30.051348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505955, 34.682068, 30.175493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389509, 0.338468, 0.856576,
		0.122043, -0.902859, 0.412252,
		0.912901, 0.265115, 0.310364,
		38.779823, 34.761604, 30.268602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201756, 34.230053, 30.676023>,  <38.140793, 34.576023, 30.051348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201756, 34.230053, 30.676023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470066, 34.524345, 30.713465>,  <38.631050, 34.700920, 30.735929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470066, 34.524345, 30.713465>,  <38.201756, 34.230053, 30.676023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470066, 34.524345, 30.713465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386873, 0.239424, 0.890509,
		0.632765, -0.633541, 0.445234,
		0.670774, 0.735732, 0.093601,
		38.671299, 34.745064, 30.741545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441940, 34.188606, 31.296404>,  <38.201756, 34.230053, 30.676023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441940, 34.188606, 31.296404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516945, 34.573116, 31.215609>,  <38.561947, 34.803822, 31.167131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516945, 34.573116, 31.215609>,  <38.441940, 34.188606, 31.296404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516945, 34.573116, 31.215609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459514, 0.267590, 0.846901,
		0.868151, -0.065986, 0.491893,
		0.187510, 0.961270, -0.201987,
		38.573196, 34.861496, 31.155012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757450, 34.481438, 31.895784>,  <38.441940, 34.188606, 31.296404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757450, 34.481438, 31.895784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649734, 34.813133, 31.699890>,  <38.585106, 35.012154, 31.582354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649734, 34.813133, 31.699890>,  <38.757450, 34.481438, 31.895784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649734, 34.813133, 31.699890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258314, 0.427692, 0.866229,
		0.927770, 0.359770, 0.099033,
		-0.269288, 0.829244, -0.489734,
		38.568947, 35.061905, 31.552971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995098, 35.087643, 32.225368>,  <38.757450, 34.481438, 31.895784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995098, 35.087643, 32.225368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690643, 35.251278, 32.024048>,  <38.507969, 35.349461, 31.903255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690643, 35.251278, 32.024048>,  <38.995098, 35.087643, 32.225368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690643, 35.251278, 32.024048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326355, 0.429038, 0.842270,
		0.560500, 0.805340, -0.193049,
		-0.761138, 0.409090, -0.503302,
		38.462303, 35.374004, 31.873056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292526, 34.748821, 32.806774>,  <38.995098, 35.087643, 32.225368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292526, 34.748821, 32.806774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431171, 34.864040, 33.163849>,  <39.514359, 34.933174, 33.378094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431171, 34.864040, 33.163849>,  <39.292526, 34.748821, 32.806774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431171, 34.864040, 33.163849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801662, -0.403163, 0.441359,
		0.487032, -0.868612, 0.091180,
		0.346609, 0.288052, 0.892686,
		39.535152, 34.950455, 33.431656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238369, 34.123764, 33.209686>,  <39.292526, 34.748821, 32.806774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238369, 34.123764, 33.209686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255280, 34.436150, 33.458942>,  <39.265427, 34.623581, 33.608498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255280, 34.436150, 33.458942>,  <39.238369, 34.123764, 33.209686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255280, 34.436150, 33.458942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824683, -0.324809, 0.463031,
		0.564013, -0.533469, 0.630318,
		0.042280, 0.780968, 0.623139,
		39.267963, 34.670441, 33.645885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983955, 33.883282, 33.871227>,  <39.238369, 34.123764, 33.209686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983955, 33.883282, 33.871227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978962, 34.279209, 33.927948>,  <38.975967, 34.516766, 33.961979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978962, 34.279209, 33.927948>,  <38.983955, 33.883282, 33.871227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978962, 34.279209, 33.927948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752431, -0.102693, 0.650616,
		0.658552, -0.098572, 0.746051,
		-0.012482, 0.989817, 0.141797,
		38.975216, 34.576153, 33.970486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838333, 33.951294, 34.583458>,  <38.983955, 33.883282, 33.871227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838333, 33.951294, 34.583458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708176, 34.305237, 34.450100>,  <38.630081, 34.517601, 34.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708176, 34.305237, 34.450100>,  <38.838333, 33.951294, 34.583458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708176, 34.305237, 34.450100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862086, -0.132748, 0.489066,
		0.388493, 0.446558, 0.806014,
		-0.325393, 0.884852, -0.333400,
		38.610558, 34.570694, 34.350079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525906, 34.306072, 35.119659>,  <38.838333, 33.951294, 34.583458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525906, 34.306072, 35.119659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359287, 34.492298, 34.807316>,  <38.259315, 34.604034, 34.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359287, 34.492298, 34.807316>,  <38.525906, 34.306072, 35.119659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359287, 34.492298, 34.807316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898413, -0.079400, 0.431915,
		0.139082, 0.881447, 0.451340,
		-0.416547, 0.465561, -0.780860,
		38.234322, 34.631966, 34.573059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878712, 34.482239, 35.393051>,  <38.525906, 34.306072, 35.119659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878712, 34.482239, 35.393051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829716, 34.531124, 34.999084>,  <37.800320, 34.560455, 34.762703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829716, 34.531124, 34.999084>,  <37.878712, 34.482239, 35.393051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829716, 34.531124, 34.999084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982943, -0.152107, 0.103371,
		-0.137180, 0.980779, 0.138760,
		-0.122491, 0.122213, -0.984916,
		37.792969, 34.567787, 34.703609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443390, 35.053715, 35.184624>,  <37.878712, 34.482239, 35.393051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443390, 35.053715, 35.184624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429111, 34.776882, 34.896248>,  <37.420544, 34.610783, 34.723221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429111, 34.776882, 34.896248>,  <37.443390, 35.053715, 35.184624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429111, 34.776882, 34.896248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991131, -0.067878, 0.114240,
		-0.127999, 0.718623, -0.683518,
		-0.035700, -0.692079, -0.720939,
		37.418400, 34.569260, 34.679966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031670, 35.396690, 34.654697>,  <37.443390, 35.053715, 35.184624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031670, 35.396690, 34.654697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027847, 34.998165, 34.620617>,  <37.025555, 34.759048, 34.600170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027847, 34.998165, 34.620617>,  <37.031670, 35.396690, 34.654697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027847, 34.998165, 34.620617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995614, 0.001553, 0.093551,
		-0.093074, 0.085722, -0.991962,
		-0.009560, -0.996318, -0.085202,
		37.024979, 34.699268, 34.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507164, 35.221695, 34.235615>,  <37.031670, 35.396690, 34.654697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507164, 35.221695, 34.235615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565018, 34.883644, 34.441463>,  <36.599731, 34.680813, 34.564972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565018, 34.883644, 34.441463>,  <36.507164, 35.221695, 34.235615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565018, 34.883644, 34.441463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976588, -0.038230, 0.211692,
		-0.159234, -0.533190, -0.830875,
		0.144637, -0.845131, 0.514620,
		36.608410, 34.630104, 34.595848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990673, 34.702770, 33.967209>,  <36.507164, 35.221695, 34.235615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990673, 34.702770, 33.967209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092762, 34.605930, 34.341644>,  <36.154015, 34.547829, 34.566303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092762, 34.605930, 34.341644>,  <35.990673, 34.702770, 33.967209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092762, 34.605930, 34.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961727, 0.036294, 0.271596,
		-0.099729, -0.969571, -0.223575,
		0.255217, -0.242104, 0.936082,
		36.169327, 34.533302, 34.622471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762276, 34.028912, 34.196873>,  <35.990673, 34.702770, 33.967209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762276, 34.028912, 34.196873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781681, 34.319717, 34.470833>,  <35.793324, 34.494202, 34.635208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781681, 34.319717, 34.470833>,  <35.762276, 34.028912, 34.196873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781681, 34.319717, 34.470833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997908, 0.064618, 0.002099,
		-0.042731, -0.683573, 0.728630,
		0.048517, 0.727016, 0.684904,
		35.796238, 34.537823, 34.676304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071915, 34.091103, 34.501888>,  <35.762276, 34.028912, 34.196873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071915, 34.091103, 34.501888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384701, 34.134655, 34.747383>,  <35.572372, 34.160786, 34.894680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384701, 34.134655, 34.747383>,  <35.071915, 34.091103, 34.501888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384701, 34.134655, 34.747383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619147, 0.021927, 0.784969,
		0.072010, -0.993813, 0.084559,
		0.781967, 0.108880, 0.613737,
		35.619289, 34.167320, 34.931503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160286, 33.507595, 35.025166>,  <35.071915, 34.091103, 34.501888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160286, 33.507595, 35.025166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276737, 33.877705, 35.122414>,  <35.346607, 34.099770, 35.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276737, 33.877705, 35.122414>,  <35.160286, 33.507595, 35.025166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276737, 33.877705, 35.122414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810042, 0.103210, 0.577217,
		0.508993, -0.364983, 0.779560,
		0.291133, 0.925276, 0.243119,
		35.364079, 34.155289, 35.195351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066208, 33.552071, 35.690182>,  <35.160286, 33.507595, 35.025166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066208, 33.552071, 35.690182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100113, 33.939281, 35.595741>,  <35.120457, 34.171608, 35.539078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100113, 33.939281, 35.595741>,  <35.066208, 33.552071, 35.690182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100113, 33.939281, 35.595741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631715, 0.235448, 0.738580,
		0.770553, 0.086546, 0.631473,
		0.084758, 0.968025, -0.236097,
		35.125542, 34.229691, 35.524914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329273, 33.888386, 36.251762>,  <35.066208, 33.552071, 35.690182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329273, 33.888386, 36.251762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067150, 34.111858, 36.048409>,  <34.909878, 34.245941, 35.926395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067150, 34.111858, 36.048409>,  <35.329273, 33.888386, 36.251762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067150, 34.111858, 36.048409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571001, 0.074231, 0.817587,
		0.494506, 0.826056, 0.270362,
		-0.655303, 0.558678, -0.508386,
		34.870560, 34.279461, 35.895893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887878, 34.289692, 36.581654>,  <35.329273, 33.888386, 36.251762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887878, 34.289692, 36.581654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622169, 34.302208, 36.282921>,  <34.462746, 34.309719, 36.103680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622169, 34.302208, 36.282921>,  <34.887878, 34.289692, 36.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622169, 34.302208, 36.282921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747304, -0.005493, 0.664459,
		0.016690, 0.999495, 0.027034,
		-0.664272, 0.031292, -0.746835,
		34.422890, 34.311596, 36.058868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328842, 34.570316, 36.943829>,  <34.887878, 34.289692, 36.581654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328842, 34.570316, 36.943829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176041, 34.418228, 36.606899>,  <34.084362, 34.326977, 36.404743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176041, 34.418228, 36.606899>,  <34.328842, 34.570316, 36.943829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176041, 34.418228, 36.606899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913198, 0.015322, 0.407229,
		-0.141931, 0.924769, -0.353070,
		-0.382002, -0.380221, -0.842322,
		34.061440, 34.304161, 36.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706776, 34.924610, 36.865459>,  <34.328842, 34.570316, 36.943829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706776, 34.924610, 36.865459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667068, 34.589378, 36.650883>,  <33.643246, 34.388241, 36.522137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667068, 34.589378, 36.650883>,  <33.706776, 34.924610, 36.865459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667068, 34.589378, 36.650883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908484, -0.143607, 0.392471,
		-0.405958, 0.526312, -0.747124,
		-0.099270, -0.838077, -0.536445,
		33.637287, 34.337955, 36.489948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208847, 34.929329, 36.270199>,  <33.706776, 34.924610, 36.865459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208847, 34.929329, 36.270199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228367, 34.542824, 36.371357>,  <33.240078, 34.310921, 36.432053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228367, 34.542824, 36.371357>,  <33.208847, 34.929329, 36.270199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228367, 34.542824, 36.371357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917533, 0.056678, 0.393600,
		-0.394654, -0.251243, -0.883813,
		0.048797, -0.966263, 0.252892,
		33.243008, 34.252945, 36.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781567, 34.354645, 35.929367>,  <33.208847, 34.929329, 36.270199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781567, 34.354645, 35.929367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840012, 34.235107, 36.306587>,  <32.875080, 34.163387, 36.532921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840012, 34.235107, 36.306587>,  <32.781567, 34.354645, 35.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840012, 34.235107, 36.306587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954206, -0.294120, 0.054639,
		0.261042, -0.907848, -0.328129,
		0.146113, -0.298839, 0.943052,
		32.883846, 34.145454, 36.589504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479561, 33.710793, 36.180386>,  <32.781567, 34.354645, 35.929367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479561, 33.710793, 36.180386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511944, 33.997673, 36.457245>,  <32.531376, 34.169800, 36.623360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511944, 33.997673, 36.457245>,  <32.479561, 33.710793, 36.180386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511944, 33.997673, 36.457245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986737, 0.155695, -0.045914,
		-0.140694, -0.679249, 0.720296,
		0.080960, 0.717203, 0.692146,
		32.536232, 34.212833, 36.664890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048985, 33.622574, 36.707668>,  <32.479561, 33.710793, 36.180386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048985, 33.622574, 36.707668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118240, 34.015491, 36.679054>,  <32.159794, 34.251244, 36.661884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118240, 34.015491, 36.679054>,  <32.048985, 33.622574, 36.707668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118240, 34.015491, 36.679054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974156, 0.160104, -0.159333,
		-0.145059, 0.097276, 0.984630,
		0.173143, 0.982295, -0.071538,
		32.170181, 34.310181, 36.657593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560791, 33.074261, 36.569733>,  <32.048985, 33.622574, 36.707668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560791, 33.074261, 36.569733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557465, 32.952137, 36.950619>,  <31.555470, 32.878860, 37.179150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557465, 32.952137, 36.950619>,  <31.560791, 33.074261, 36.569733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557465, 32.952137, 36.950619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629701, -0.741324, -0.232195,
		0.776793, 0.597681, 0.198421,
		-0.008316, -0.305313, 0.952216,
		31.554970, 32.860542, 37.236282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194283, 32.874969, 36.670605>,  <31.560791, 33.074261, 36.569733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194283, 32.874969, 36.670605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012928, 32.748672, 37.004013>,  <31.904116, 32.672894, 37.204056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012928, 32.748672, 37.004013>,  <32.194283, 32.874969, 36.670605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012928, 32.748672, 37.004013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567751, -0.823195, -0.003009,
		0.687097, 0.471866, 0.552485,
		-0.453383, -0.315741, 0.833518,
		31.876913, 32.653950, 37.254066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775688, 32.683655, 37.117386>,  <32.194283, 32.874969, 36.670605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775688, 32.683655, 37.117386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450821, 32.478085, 37.227856>,  <32.255901, 32.354744, 37.294136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450821, 32.478085, 37.227856>,  <32.775688, 32.683655, 37.117386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450821, 32.478085, 37.227856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562757, -0.814948, 0.138437,
		0.153919, 0.267851, 0.951086,
		-0.812166, -0.513922, 0.276171,
		32.207172, 32.323910, 37.310707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118687, 33.260143, 37.345268>,  <32.775688, 32.683655, 37.117386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118687, 33.260143, 37.345268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013302, 33.509903, 37.051136>,  <32.950069, 33.659760, 36.874657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013302, 33.509903, 37.051136>,  <33.118687, 33.260143, 37.345268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013302, 33.509903, 37.051136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900486, -0.114212, -0.419620,
		-0.345993, -0.772713, -0.532169,
		-0.263466, 0.624396, -0.735333,
		32.934261, 33.697224, 36.830536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462093, 33.033669, 36.698380>,  <33.118687, 33.260143, 37.345268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462093, 33.033669, 36.698380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386433, 33.419476, 36.624702>,  <33.341034, 33.650959, 36.580494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386433, 33.419476, 36.624702>,  <33.462093, 33.033669, 36.698380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386433, 33.419476, 36.624702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853798, 0.068895, -0.516026,
		-0.485026, -0.254874, -0.836534,
		-0.189155, 0.964517, -0.184195,
		33.329685, 33.708832, 36.569443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454365, 33.172802, 36.012573>,  <33.462093, 33.033669, 36.698380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454365, 33.172802, 36.012573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526829, 33.543671, 36.143742>,  <33.570309, 33.766193, 36.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526829, 33.543671, 36.143742>,  <33.454365, 33.172802, 36.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526829, 33.543671, 36.143742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750724, 0.085017, -0.655122,
		-0.635290, 0.364862, -0.680648,
		0.181163, 0.927172, 0.327921,
		33.581177, 33.821823, 36.242119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523281, 33.590130, 35.417450>,  <33.454365, 33.172802, 36.012573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523281, 33.590130, 35.417450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698303, 33.801682, 35.708332>,  <33.803318, 33.928612, 35.882862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698303, 33.801682, 35.708332>,  <33.523281, 33.590130, 35.417450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698303, 33.801682, 35.708332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718274, 0.280954, -0.636512,
		-0.540952, 0.800842, -0.256950,
		0.437554, 0.528883, 0.727206,
		33.829571, 33.960346, 35.926495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610672, 34.216019, 35.081425>,  <33.523281, 33.590130, 35.417450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610672, 34.216019, 35.081425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840977, 34.254086, 35.406250>,  <33.979160, 34.276924, 35.601147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840977, 34.254086, 35.406250>,  <33.610672, 34.216019, 35.081425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840977, 34.254086, 35.406250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686012, 0.484149, -0.543127,
		-0.444847, 0.869795, 0.213467,
		0.575759, 0.095168, 0.812062,
		34.013706, 34.282635, 35.649868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932987, 34.875214, 35.119877>,  <33.610672, 34.216019, 35.081425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932987, 34.875214, 35.119877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194218, 34.660049, 35.333099>,  <34.350956, 34.530952, 35.461033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194218, 34.660049, 35.333099>,  <33.932987, 34.875214, 35.119877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194218, 34.660049, 35.333099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754441, 0.401071, -0.519578,
		0.065690, 0.741484, 0.667747,
		0.653072, -0.537907, 0.533059,
		34.390141, 34.498676, 35.493019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533615, 35.229229, 35.169167>,  <33.932987, 34.875214, 35.119877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533615, 35.229229, 35.169167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666740, 34.884357, 35.321941>,  <34.746616, 34.677433, 35.413609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666740, 34.884357, 35.321941>,  <34.533615, 35.229229, 35.169167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666740, 34.884357, 35.321941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930470, 0.234458, -0.281524,
		0.153176, 0.449078, 0.880265,
		0.332811, -0.862182, 0.381940,
		34.766582, 34.625702, 35.436523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259476, 35.473866, 35.217449>,  <34.533615, 35.229229, 35.169167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259476, 35.473866, 35.217449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224091, 35.089420, 35.322086>,  <35.202862, 34.858753, 35.384869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224091, 35.089420, 35.322086>,  <35.259476, 35.473866, 35.217449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224091, 35.089420, 35.322086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962953, -0.149681, -0.224314,
		0.254747, 0.232058, 0.938751,
		-0.088459, -0.961116, 0.261592,
		35.197552, 34.801086, 35.400562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825935, 35.263531, 35.605156>,  <35.259476, 35.473866, 35.217449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825935, 35.263531, 35.605156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 34.930054, 35.443676>,  <35.584778, 34.729969, 35.346786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 34.930054, 35.443676>,  <35.825935, 35.263531, 35.605156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675213, 34.930054, 35.443676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918999, -0.281882, -0.275650,
		0.116011, -0.474867, 0.872378,
		-0.376805, -0.833693, -0.403701,
		35.562172, 34.679947, 35.322567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326969, 34.728161, 35.764774>,  <35.825935, 35.263531, 35.605156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326969, 34.728161, 35.764774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104771, 34.562870, 35.476147>,  <35.971451, 34.463696, 35.302971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104771, 34.562870, 35.476147>,  <36.326969, 34.728161, 35.764774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104771, 34.562870, 35.476147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825260, -0.167695, -0.539282,
		0.101845, -0.895052, 0.434177,
		-0.555494, -0.413232, -0.721572,
		35.938122, 34.438900, 35.259674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521027, 34.003502, 35.736446>,  <36.326969, 34.728161, 35.764774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521027, 34.003502, 35.736446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411869, 34.175655, 35.392284>,  <36.346375, 34.278950, 35.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411869, 34.175655, 35.392284>,  <36.521027, 34.003502, 35.736446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411869, 34.175655, 35.392284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915656, -0.158165, -0.369539,
		-0.295130, -0.888679, -0.350925,
		-0.272897, 0.430388, -0.860403,
		36.329998, 34.304771, 35.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807632, 33.485748, 35.223526>,  <36.521027, 34.003502, 35.736446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807632, 33.485748, 35.223526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753799, 33.848820, 35.064526>,  <36.721500, 34.066662, 34.969128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753799, 33.848820, 35.064526>,  <36.807632, 33.485748, 35.223526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753799, 33.848820, 35.064526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921437, -0.032914, -0.387131,
		-0.364475, -0.418368, -0.831941,
		-0.134581, 0.907681, -0.397496,
		36.713425, 34.121124, 34.945278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434265, 33.264381, 34.931343>,  <36.807632, 33.485748, 35.223526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434265, 33.264381, 34.931343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219128, 32.933853, 34.864513>,  <37.090046, 32.735535, 34.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219128, 32.933853, 34.864513>,  <37.434265, 33.264381, 34.931343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219128, 32.933853, 34.864513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545562, -0.492245, 0.678275,
		-0.642715, 0.273659, 0.715562,
		-0.537847, -0.826321, -0.167075,
		37.057774, 32.685955, 34.814392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056458, 33.461784, 34.372875>,  <37.434265, 33.264381, 34.931343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056458, 33.461784, 34.372875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032940, 33.857765, 34.424313>,  <37.018829, 34.095352, 34.455173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032940, 33.857765, 34.424313>,  <37.056458, 33.461784, 34.372875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032940, 33.857765, 34.424313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889152, 0.110492, -0.444073,
		-0.453819, 0.088229, -0.886715,
		-0.058795, 0.989953, 0.128592,
		37.015301, 34.154751, 34.462891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372547, 33.764168, 33.712967>,  <37.056458, 33.461784, 34.372875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372547, 33.764168, 33.712967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388851, 34.053284, 33.988914>,  <37.398632, 34.226753, 34.154484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388851, 34.053284, 33.988914>,  <37.372547, 33.764168, 33.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388851, 34.053284, 33.988914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885482, 0.293732, -0.360061,
		-0.462884, 0.625540, -0.628044,
		0.040756, 0.722787, 0.689868,
		37.401077, 34.270119, 34.195873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553322, 34.498863, 33.448395>,  <37.372547, 33.764168, 33.712967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553322, 34.498863, 33.448395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654163, 34.540810, 33.833195>,  <37.714668, 34.565979, 34.064075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654163, 34.540810, 33.833195>,  <37.553322, 34.498863, 33.448395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654163, 34.540810, 33.833195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889077, 0.367407, -0.273044,
		-0.382080, 0.924129, -0.000611,
		0.252104, 0.104868, 0.962001,
		37.729794, 34.572269, 34.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784229, 35.219315, 33.501698>,  <37.553322, 34.498863, 33.448395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784229, 35.219315, 33.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937511, 35.030388, 33.819206>,  <38.029480, 34.917030, 34.009712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937511, 35.030388, 33.819206>,  <37.784229, 35.219315, 33.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937511, 35.030388, 33.819206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917319, 0.295153, -0.267227,
		-0.108068, 0.830543, 0.546370,
		0.383206, -0.472317, 0.793769,
		38.052475, 34.888691, 34.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187469, 35.711903, 33.772167>,  <37.784229, 35.219315, 33.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187469, 35.711903, 33.772167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312897, 35.366489, 33.930153>,  <38.388153, 35.159241, 34.024944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312897, 35.366489, 33.930153>,  <38.187469, 35.711903, 33.772167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312897, 35.366489, 33.930153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946074, 0.319748, -0.052013,
		-0.081374, 0.389974, 0.917223,
		0.313564, -0.863528, 0.394964,
		38.406967, 35.107430, 34.048641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872398, 35.909481, 34.084827>,  <38.187469, 35.711903, 33.772167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872398, 35.909481, 34.084827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879406, 35.511570, 34.044617>,  <38.883610, 35.272823, 34.020493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879406, 35.511570, 34.044617>,  <38.872398, 35.909481, 34.084827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879406, 35.511570, 34.044617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999238, 0.020931, -0.032949,
		0.034882, -0.099869, 0.994389,
		0.017523, -0.994780, -0.100522,
		38.884663, 35.213135, 34.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425102, 35.695824, 34.442711>,  <38.872398, 35.909481, 34.084827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425102, 35.695824, 34.442711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360115, 35.374729, 34.213200>,  <39.321121, 35.182072, 34.075493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360115, 35.374729, 34.213200>,  <39.425102, 35.695824, 34.442711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360115, 35.374729, 34.213200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944183, 0.042408, -0.326680,
		0.286570, -0.594829, 0.751037,
		-0.162469, -0.802733, -0.573780,
		39.311375, 35.133911, 34.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964394, 35.207649, 34.594852>,  <39.425102, 35.695824, 34.442711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964394, 35.207649, 34.594852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836929, 35.154930, 34.219387>,  <39.760452, 35.123299, 33.994106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836929, 35.154930, 34.219387>,  <39.964394, 35.207649, 34.594852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836929, 35.154930, 34.219387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945051, 0.032131, -0.325339,
		0.073039, -0.990756, 0.114314,
		-0.318658, -0.131795, -0.938662,
		39.741333, 35.115391, 33.937790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716705, 35.205517, 35.351337>,  <39.964394, 35.207649, 34.594852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716705, 35.205517, 35.351337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077827, 35.042862, 35.407318>,  <40.294502, 34.945271, 35.440907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077827, 35.042862, 35.407318>,  <39.716705, 35.205517, 35.351337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077827, 35.042862, 35.407318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311472, 0.842673, 0.439190,
		-0.296523, -0.352913, 0.887427,
		0.902807, -0.406639, 0.139949,
		40.348671, 34.920872, 35.449303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931892, 35.168457, 36.084599>,  <39.716705, 35.205517, 35.351337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931892, 35.168457, 36.084599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257847, 35.200798, 35.855015>,  <40.453419, 35.220203, 35.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257847, 35.200798, 35.855015>,  <39.931892, 35.168457, 36.084599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257847, 35.200798, 35.855015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331058, 0.747887, 0.575383,
		0.475776, -0.658884, 0.582675,
		0.814885, 0.080854, -0.573956,
		40.502312, 35.225056, 35.682827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505886, 35.536457, 36.428669>,  <39.931892, 35.168457, 36.084599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505886, 35.536457, 36.428669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682083, 35.483227, 36.073536>,  <40.787804, 35.451286, 35.860455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682083, 35.483227, 36.073536>,  <40.505886, 35.536457, 36.428669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682083, 35.483227, 36.073536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609074, 0.770839, 0.186646,
		0.659539, -0.622974, 0.420608,
		0.440497, -0.133081, -0.887836,
		40.814232, 35.443302, 35.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031757, 35.193226, 36.788265>,  <40.505886, 35.536457, 36.428669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031757, 35.193226, 36.788265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716461, 35.048504, 36.987373>,  <40.527283, 34.961670, 37.106838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716461, 35.048504, 36.987373>,  <41.031757, 35.193226, 36.788265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716461, 35.048504, 36.987373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064934, -0.755481, -0.651944,
		0.611930, -0.546212, 0.572008,
		-0.788242, -0.361802, 0.497770,
		40.479988, 34.939964, 37.136703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430874, 34.789650, 36.452900>,  <41.031757, 35.193226, 36.788265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430874, 34.789650, 36.452900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450424, 35.061775, 36.745419>,  <41.462154, 35.225048, 36.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450424, 35.061775, 36.745419>,  <41.430874, 34.789650, 36.452900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450424, 35.061775, 36.745419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765289, 0.444983, -0.465105,
		-0.641828, 0.582381, -0.498887,
		0.048872, 0.680311, 0.731293,
		41.465084, 35.265869, 36.964806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407223, 35.469746, 36.199501>,  <41.430874, 34.789650, 36.452900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407223, 35.469746, 36.199501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642143, 35.502159, 36.521622>,  <41.783096, 35.521606, 36.714893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642143, 35.502159, 36.521622>,  <41.407223, 35.469746, 36.199501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642143, 35.502159, 36.521622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656915, 0.533506, -0.532761,
		-0.472805, 0.841906, 0.260097,
		0.587298, 0.081030, 0.805304,
		41.818333, 35.526466, 36.763214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197891, 35.460503, 35.779289>,  <41.407223, 35.469746, 36.199501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197891, 35.460503, 35.779289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056973, 35.248085, 35.471035>,  <41.972420, 35.120636, 35.286083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056973, 35.248085, 35.471035>,  <42.197891, 35.460503, 35.779289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056973, 35.248085, 35.471035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082718, -0.802535, 0.590843,
		-0.932224, 0.271899, 0.238806,
		-0.352300, -0.531045, -0.770633,
		41.951283, 35.088772, 35.239845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957870, 34.741104, 35.602879>,  <42.197891, 35.460503, 35.779289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957870, 34.741104, 35.602879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355560, 34.703671, 35.623882>,  <42.594173, 34.681210, 35.636486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355560, 34.703671, 35.623882>,  <41.957870, 34.741104, 35.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355560, 34.703671, 35.623882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045416, -0.810319, -0.584227,
		0.097228, 0.578468, -0.809890,
		0.994225, -0.093585, 0.052514,
		42.653828, 34.675594, 35.639637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197681, 34.499977, 34.927952>,  <41.957870, 34.741104, 35.602879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197681, 34.499977, 34.927952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461212, 34.424976, 35.219376>,  <42.619331, 34.379974, 35.394230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461212, 34.424976, 35.219376>,  <42.197681, 34.499977, 34.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461212, 34.424976, 35.219376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192566, -0.894145, -0.404255,
		0.727234, 0.406628, -0.552978,
		0.658825, -0.187503, 0.728555,
		42.658859, 34.368725, 35.437943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890011, 34.347221, 34.655807>,  <42.197681, 34.499977, 34.927952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890011, 34.347221, 34.655807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854294, 34.152313, 35.003277>,  <42.832863, 34.035366, 35.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854294, 34.152313, 35.003277>,  <42.890011, 34.347221, 34.655807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854294, 34.152313, 35.003277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325348, -0.838583, -0.436952,
		0.941369, 0.243605, 0.233410,
		-0.089290, -0.487273, 0.868673,
		42.827507, 34.006130, 35.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495289, 34.015347, 34.651123>,  <42.890011, 34.347221, 34.655807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495289, 34.015347, 34.651123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233013, 33.831383, 34.890640>,  <43.075645, 33.721004, 35.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233013, 33.831383, 34.890640>,  <43.495289, 34.015347, 34.651123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233013, 33.831383, 34.890640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224801, -0.876024, -0.426669,
		0.720786, -0.145153, 0.677789,
		-0.655692, -0.459905, 0.598795,
		43.036304, 33.693413, 35.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925533, 33.407444, 34.542336>,  <43.495289, 34.015347, 34.651123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925533, 33.407444, 34.542336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005795, 33.593601, 34.197510>,  <44.053951, 33.705296, 33.990616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005795, 33.593601, 34.197510>,  <43.925533, 33.407444, 34.542336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005795, 33.593601, 34.197510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958954, 0.086668, 0.269991,
		0.200365, -0.880852, -0.428899,
		0.200650, 0.465391, -0.862062,
		44.065990, 33.733219, 33.938892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598938, 33.104599, 34.216721>,  <43.925533, 33.407444, 34.542336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598938, 33.104599, 34.216721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496471, 33.483761, 34.140976>,  <44.434990, 33.711258, 34.095528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496471, 33.483761, 34.140976>,  <44.598938, 33.104599, 34.216721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496471, 33.483761, 34.140976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927543, 0.296191, 0.227892,
		0.272107, -0.117266, -0.955095,
		-0.256167, 0.947903, -0.189365,
		44.419621, 33.768131, 34.084167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171108, 33.342827, 33.753029>,  <44.598938, 33.104599, 34.216721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171108, 33.342827, 33.753029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982040, 33.637733, 33.946117>,  <44.868599, 33.814678, 34.061970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982040, 33.637733, 33.946117>,  <45.171108, 33.342827, 33.753029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982040, 33.637733, 33.946117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880937, 0.409643, 0.236944,
		-0.023052, 0.537243, -0.843112,
		-0.472672, 0.737267, 0.482720,
		44.840240, 33.858913, 34.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554180, 33.938602, 33.584362>,  <45.171108, 33.342827, 33.753029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554180, 33.938602, 33.584362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371555, 33.997509, 33.935329>,  <45.261982, 34.032852, 34.145908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371555, 33.997509, 33.935329>,  <45.554180, 33.938602, 33.584362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371555, 33.997509, 33.935329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838982, 0.399458, 0.369518,
		-0.296075, 0.904846, -0.305929,
		-0.456563, 0.147263, 0.877419,
		45.234585, 34.041687, 34.198555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504967, 34.628052, 33.821926>,  <45.554180, 33.938602, 33.584362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504967, 34.628052, 33.821926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550072, 34.387871, 34.138592>,  <45.577133, 34.243763, 34.328590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550072, 34.387871, 34.138592>,  <45.504967, 34.628052, 33.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550072, 34.387871, 34.138592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900720, 0.398162, 0.173699,
		-0.419510, 0.693484, 0.585741,
		0.112762, -0.600456, 0.791667,
		45.583900, 34.207733, 34.376091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640350, 34.974072, 34.516636>,  <45.504967, 34.628052, 33.821926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640350, 34.974072, 34.516636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809277, 34.614529, 34.469803>,  <45.910633, 34.398804, 34.441704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809277, 34.614529, 34.469803>,  <45.640350, 34.974072, 34.516636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809277, 34.614529, 34.469803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903245, 0.428146, -0.028970,
		0.076169, -0.093521, 0.992699,
		0.422311, -0.898857, -0.117084,
		45.935970, 34.344872, 34.434677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083099, 34.803013, 35.120777>,  <45.640350, 34.974072, 34.516636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083099, 34.803013, 35.120777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221138, 34.635406, 34.784840>,  <46.303963, 34.534843, 34.583279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221138, 34.635406, 34.784840>,  <46.083099, 34.803013, 35.120777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221138, 34.635406, 34.784840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896038, 0.413390, 0.161941,
		0.279326, -0.808415, 0.518114,
		0.345099, -0.419015, -0.839841,
		46.324669, 34.509701, 34.532887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673344, 34.385239, 35.218239>,  <46.083099, 34.803013, 35.120777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673344, 34.385239, 35.218239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679058, 34.525749, 34.843773>,  <46.682487, 34.610058, 34.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679058, 34.525749, 34.843773>,  <46.673344, 34.385239, 35.218239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679058, 34.525749, 34.843773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889403, 0.423355, 0.172433,
		0.456901, -0.835088, -0.306381,
		0.014289, 0.351281, -0.936161,
		46.683346, 34.631134, 34.562923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351120, 34.726997, 35.406487>,  <46.673344, 34.385239, 35.218239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351120, 34.726997, 35.406487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295856, 34.814358, 35.020073>,  <47.262699, 34.866776, 34.788227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295856, 34.814358, 35.020073>,  <47.351120, 34.726997, 35.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295856, 34.814358, 35.020073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799632, 0.600112, 0.021314,
		0.584381, -0.769523, -0.257552,
		-0.138158, 0.218402, -0.966029,
		47.254410, 34.879879, 34.730263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035172, 34.757580, 35.141121>,  <47.351120, 34.726997, 35.406487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035172, 34.757580, 35.141121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797775, 34.934364, 34.872066>,  <47.655338, 35.040436, 34.710632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797775, 34.934364, 34.872066>,  <48.035172, 34.757580, 35.141121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797775, 34.934364, 34.872066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688455, 0.711669, -0.139848,
		0.416886, -0.546078, -0.726639,
		-0.593494, 0.441958, -0.672635,
		47.619728, 35.066952, 34.670277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.368797, 33.608727, 21.202599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353603, 33.901157, 20.930105>,  <38.344486, 34.076614, 20.766609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353603, 33.901157, 20.930105>,  <38.368797, 33.608727, 21.202599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353603, 33.901157, 20.930105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461473, 0.591845, 0.660879,
		0.886340, 0.339477, 0.314891,
		-0.037987, 0.731078, -0.681236,
		38.342209, 34.120480, 20.725735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774132, 34.157642, 21.568195>,  <38.368797, 33.608727, 21.202599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774132, 34.157642, 21.568195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521446, 34.330822, 21.310982>,  <38.369835, 34.434731, 21.156652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521446, 34.330822, 21.310982>,  <38.774132, 34.157642, 21.568195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521446, 34.330822, 21.310982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330249, 0.600165, 0.728518,
		0.701339, 0.672575, -0.236149,
		-0.631711, 0.432950, -0.643036,
		38.331932, 34.460709, 21.118071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937767, 34.920536, 21.708693>,  <38.774132, 34.157642, 21.568195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937767, 34.920536, 21.708693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575264, 34.871136, 21.546976>,  <38.357761, 34.841496, 21.449945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575264, 34.871136, 21.546976>,  <38.937767, 34.920536, 21.708693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575264, 34.871136, 21.546976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399238, 0.564445, 0.722503,
		0.138975, 0.816180, -0.560835,
		-0.906253, -0.123497, -0.404293,
		38.303387, 34.834087, 21.425688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738354, 35.509205, 21.752958>,  <38.937767, 34.920536, 21.708693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738354, 35.509205, 21.752958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395786, 35.319775, 21.670713>,  <38.190247, 35.206116, 21.621367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395786, 35.319775, 21.670713>,  <38.738354, 35.509205, 21.752958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395786, 35.319775, 21.670713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453763, 0.500466, 0.737315,
		-0.246276, 0.724746, -0.643499,
		-0.856415, -0.473579, -0.205610,
		38.138863, 35.177700, 21.609030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221279, 35.989437, 21.698345>,  <38.738354, 35.509205, 21.752958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221279, 35.989437, 21.698345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008324, 35.662239, 21.785465>,  <37.880550, 35.465919, 21.837738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008324, 35.662239, 21.785465>,  <38.221279, 35.989437, 21.698345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008324, 35.662239, 21.785465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385369, 0.463298, 0.798026,
		-0.753691, 0.340929, -0.561888,
		-0.532392, -0.817999, 0.217800,
		37.848606, 35.416840, 21.850805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562878, 36.206570, 21.775843>,  <38.221279, 35.989437, 21.698345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562878, 36.206570, 21.775843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561813, 35.848934, 21.954996>,  <37.561176, 35.634354, 22.062489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561813, 35.848934, 21.954996>,  <37.562878, 36.206570, 21.775843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561813, 35.848934, 21.954996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407754, 0.409929, 0.815901,
		-0.913088, -0.180458, -0.365658,
		-0.002657, -0.894088, 0.447884,
		37.561016, 35.580708, 22.089361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978531, 36.093971, 22.017939>,  <37.562878, 36.206570, 21.775843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978531, 36.093971, 22.017939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190025, 35.840992, 22.244371>,  <37.316921, 35.689205, 22.380230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190025, 35.840992, 22.244371>,  <36.978531, 36.093971, 22.017939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190025, 35.840992, 22.244371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434541, 0.371204, 0.820598,
		-0.729121, -0.679861, -0.078560,
		0.528731, -0.632453, 0.566080,
		37.348644, 35.651257, 22.414196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478436, 35.903984, 22.503798>,  <36.978531, 36.093971, 22.017939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478436, 35.903984, 22.503798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825607, 35.779953, 22.658998>,  <37.033913, 35.705532, 22.752119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825607, 35.779953, 22.658998>,  <36.478436, 35.903984, 22.503798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825607, 35.779953, 22.658998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322033, 0.243420, 0.914900,
		-0.378141, -0.919019, 0.111415,
		0.867931, -0.310081, 0.388002,
		37.085987, 35.686928, 22.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230396, 35.560349, 23.091990>,  <36.478436, 35.903984, 22.503798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230396, 35.560349, 23.091990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614506, 35.592083, 23.199003>,  <36.844971, 35.611126, 23.263212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614506, 35.592083, 23.199003>,  <36.230396, 35.560349, 23.091990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614506, 35.592083, 23.199003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272503, 0.060107, 0.960276,
		0.060107, -0.995034, 0.079340,
		-0.960276, -0.079340, -0.267536,
		36.902588, 35.615887, 23.279264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360569, 35.103760, 23.721697>,  <36.230396, 35.560349, 23.091990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360569, 35.103760, 23.721697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636311, 35.392376, 23.695850>,  <36.801754, 35.565544, 23.680342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636311, 35.392376, 23.695850>,  <36.360569, 35.103760, 23.721697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636311, 35.392376, 23.695850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073148, 0.158070, 0.984715,
		0.720723, -0.674089, 0.161745,
		0.689353, 0.721538, -0.064617,
		36.843117, 35.608837, 23.676466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790432, 34.900375, 24.158365>,  <36.360569, 35.103760, 23.721697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790432, 34.900375, 24.158365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844681, 35.294937, 24.121252>,  <36.877228, 35.531673, 24.098984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844681, 35.294937, 24.121252>,  <36.790432, 34.900375, 24.158365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844681, 35.294937, 24.121252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072950, 0.083454, 0.993838,
		0.988072, -0.141553, -0.060640,
		0.135620, 0.986407, -0.092784,
		36.885368, 35.590858, 24.093416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274406, 34.982903, 24.681864>,  <36.790432, 34.900375, 24.158365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274406, 34.982903, 24.681864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126720, 35.343922, 24.593245>,  <37.038109, 35.560535, 24.540073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126720, 35.343922, 24.593245>,  <37.274406, 34.982903, 24.681864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126720, 35.343922, 24.593245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048094, 0.219518, 0.974422,
		0.928100, 0.370423, -0.037641,
		-0.369211, 0.902551, -0.221550,
		37.015957, 35.614689, 24.526779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672062, 35.399300, 24.986414>,  <37.274406, 34.982903, 24.681864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672062, 35.399300, 24.986414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324856, 35.595375, 24.954750>,  <37.116531, 35.713020, 24.935751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324856, 35.595375, 24.954750>,  <37.672062, 35.399300, 24.986414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324856, 35.595375, 24.954750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053532, 0.250880, 0.966537,
		0.493644, 0.834731, -0.244009,
		-0.868015, 0.490187, -0.079161,
		37.064453, 35.742432, 24.931002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783588, 36.052216, 25.263960>,  <37.672062, 35.399300, 24.986414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783588, 36.052216, 25.263960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385220, 36.022781, 25.284853>,  <37.146198, 36.005119, 25.297388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385220, 36.022781, 25.284853>,  <37.783588, 36.052216, 25.263960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385220, 36.022781, 25.284853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012695, 0.458777, 0.888461,
		-0.089343, 0.885499, -0.455970,
		-0.995920, -0.073589, 0.052230,
		37.086445, 36.000706, 25.300522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538944, 36.662182, 25.513279>,  <37.783588, 36.052216, 25.263960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538944, 36.662182, 25.513279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229286, 36.421642, 25.592356>,  <37.043491, 36.277321, 25.639803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229286, 36.421642, 25.592356>,  <37.538944, 36.662182, 25.513279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229286, 36.421642, 25.592356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240239, 0.568048, 0.787151,
		-0.585650, 0.561875, -0.584218,
		-0.774144, -0.601347, 0.197693,
		36.997044, 36.241238, 25.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028835, 36.975014, 25.416185>,  <37.538944, 36.662182, 25.513279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028835, 36.975014, 25.416185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929974, 36.706593, 25.695784>,  <36.870655, 36.545540, 25.863543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929974, 36.706593, 25.695784>,  <37.028835, 36.975014, 25.416185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929974, 36.706593, 25.695784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139178, 0.738482, 0.659753,
		-0.958928, 0.065778, -0.275918,
		-0.247157, -0.671057, 0.698996,
		36.855827, 36.505276, 25.905483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569851, 37.416103, 25.681221>,  <37.028835, 36.975014, 25.416185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569851, 37.416103, 25.681221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625538, 37.094444, 25.912380>,  <36.658951, 36.901451, 26.051077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625538, 37.094444, 25.912380>,  <36.569851, 37.416103, 25.681221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625538, 37.094444, 25.912380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111031, 0.567228, 0.816042,
		-0.984017, -0.177774, -0.010316,
		0.139219, -0.804145, 0.577900,
		36.667305, 36.853199, 26.085751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025002, 37.474060, 26.223444>,  <36.569851, 37.416103, 25.681221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025002, 37.474060, 26.223444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295101, 37.216896, 26.368061>,  <36.457161, 37.062599, 26.454832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295101, 37.216896, 26.368061>,  <36.025002, 37.474060, 26.223444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295101, 37.216896, 26.368061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038886, 0.520514, 0.852967,
		-0.736568, -0.561903, 0.376475,
		0.675245, -0.642907, 0.361544,
		36.497673, 37.024025, 26.476524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728096, 37.308289, 26.873135>,  <36.025002, 37.474060, 26.223444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728096, 37.308289, 26.873135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115963, 37.216610, 26.907108>,  <36.348682, 37.161602, 26.927492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115963, 37.216610, 26.907108>,  <35.728096, 37.308289, 26.873135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115963, 37.216610, 26.907108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003644, 0.333887, 0.942606,
		-0.244405, -0.914323, 0.322924,
		0.969666, -0.229201, 0.084935,
		36.406864, 37.147850, 26.932589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846207, 36.933819, 27.541759>,  <35.728096, 37.308289, 26.873135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846207, 36.933819, 27.541759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210045, 37.063885, 27.438299>,  <36.428349, 37.141926, 27.376223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210045, 37.063885, 27.438299>,  <35.846207, 36.933819, 27.541759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210045, 37.063885, 27.438299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181377, 0.249318, 0.951285,
		0.373812, -0.912200, 0.167801,
		0.909597, 0.325166, -0.258650,
		36.482925, 37.161434, 27.360704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254299, 36.663818, 28.058533>,  <35.846207, 36.933819, 27.541759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254299, 36.663818, 28.058533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491394, 36.937805, 27.889074>,  <36.633652, 37.102200, 27.787399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491394, 36.937805, 27.889074>,  <36.254299, 36.663818, 28.058533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491394, 36.937805, 27.889074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299096, 0.301184, 0.905445,
		0.747799, -0.663402, -0.026349,
		0.592738, 0.684971, -0.423646,
		36.669216, 37.143295, 27.761980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676338, 36.620033, 28.803581>,  <36.254299, 36.663818, 28.058533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676338, 36.620033, 28.803581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664833, 36.381218, 29.124260>,  <36.657928, 36.237926, 29.316668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664833, 36.381218, 29.124260>,  <36.676338, 36.620033, 28.803581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664833, 36.381218, 29.124260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189865, -0.790690, -0.582032,
		0.981389, 0.135471, 0.136102,
		-0.028766, -0.597040, 0.801695,
		36.656204, 36.202106, 29.364769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290520, 36.416527, 28.883362>,  <36.676338, 36.620033, 28.803581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290520, 36.416527, 28.883362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070602, 36.127609, 29.051184>,  <36.938652, 35.954258, 29.151876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070602, 36.127609, 29.051184>,  <37.290520, 36.416527, 28.883362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070602, 36.127609, 29.051184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340595, -0.652472, -0.676960,
		0.762710, -0.229288, 0.604732,
		-0.549790, -0.722293, 0.419552,
		36.905666, 35.910923, 29.177050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731869, 35.879219, 28.752724>,  <37.290520, 36.416527, 28.883362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731869, 35.879219, 28.752724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378735, 35.725765, 28.861109>,  <37.166855, 35.633694, 28.926140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378735, 35.725765, 28.861109>,  <37.731869, 35.879219, 28.752724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378735, 35.725765, 28.861109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068372, -0.675747, -0.733956,
		0.464672, -0.629439, 0.622806,
		-0.882840, -0.383631, 0.270964,
		37.113884, 35.610676, 28.942398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935741, 35.132385, 28.942728>,  <37.731869, 35.879219, 28.752724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935741, 35.132385, 28.942728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548534, 35.150192, 28.843962>,  <37.316212, 35.160877, 28.784702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548534, 35.150192, 28.843962>,  <37.935741, 35.132385, 28.942728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548534, 35.150192, 28.843962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087285, -0.862912, -0.497759,
		-0.235226, -0.503389, 0.831426,
		-0.968014, 0.044514, -0.246918,
		37.258129, 35.163548, 28.769886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617302, 34.375954, 29.014301>,  <37.935741, 35.132385, 28.942728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617302, 34.375954, 29.014301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396584, 34.596275, 28.763819>,  <37.264153, 34.728470, 28.613529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396584, 34.596275, 28.763819>,  <37.617302, 34.375954, 29.014301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396584, 34.596275, 28.763819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027062, -0.762297, -0.646662,
		-0.833541, -0.339878, 0.435537,
		-0.551795, 0.550806, -0.626208,
		37.231045, 34.761517, 28.575956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114864, 33.928257, 28.703056>,  <37.617302, 34.375954, 29.014301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114864, 33.928257, 28.703056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 34.237831, 28.450655>,  <37.080635, 34.423576, 28.299213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 34.237831, 28.450655>,  <37.114864, 33.928257, 28.703056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093472, 34.237831, 28.450655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194415, -0.627887, -0.753632,
		-0.979460, 0.082372, 0.184044,
		-0.053481, 0.773933, -0.631005,
		37.077427, 34.470013, 28.261353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562119, 33.725159, 28.183889>,  <37.114864, 33.928257, 28.703056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562119, 33.725159, 28.183889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761623, 34.030472, 28.019630>,  <36.881325, 34.213661, 27.921074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.761623, 34.030472, 28.019630>,  <36.562119, 33.725159, 28.183889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761623, 34.030472, 28.019630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021616, -0.462685, -0.886259,
		-0.866470, 0.450909, -0.214270,
		0.498762, 0.763285, -0.410649,
		36.911251, 34.259457, 27.896435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191017, 33.914337, 27.520010>,  <36.562119, 33.725159, 28.183889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191017, 33.914337, 27.520010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569481, 34.040630, 27.491446>,  <36.796558, 34.116405, 27.474308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569481, 34.040630, 27.491446>,  <36.191017, 33.914337, 27.520010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569481, 34.040630, 27.491446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106610, -0.512220, -0.852212,
		-0.305650, 0.798713, -0.518301,
		0.946157, 0.315735, -0.071410,
		36.853329, 34.135349, 27.470022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151474, 34.174644, 26.934618>,  <36.191017, 33.914337, 27.520010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151474, 34.174644, 26.934618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544991, 34.122169, 26.983509>,  <36.781101, 34.090683, 27.012844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544991, 34.122169, 26.983509>,  <36.151474, 34.174644, 26.934618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544991, 34.122169, 26.983509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050518, -0.451270, -0.890956,
		0.172039, 0.882692, -0.437329,
		0.983794, -0.131186, 0.122228,
		36.840130, 34.082813, 27.020178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558830, 34.346149, 26.225107>,  <36.151474, 34.174644, 26.934618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558830, 34.346149, 26.225107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807331, 34.125702, 26.447933>,  <36.956432, 33.993435, 26.581629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807331, 34.125702, 26.447933>,  <36.558830, 34.346149, 26.225107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807331, 34.125702, 26.447933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380354, -0.409456, -0.829263,
		0.685114, 0.727060, -0.044755,
		0.621249, -0.551117, 0.557064,
		36.993706, 33.960365, 26.615053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302841, 34.536476, 26.029320>,  <36.558830, 34.346149, 26.225107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302841, 34.536476, 26.029320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306862, 34.170803, 26.191393>,  <37.309277, 33.951401, 26.288637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306862, 34.170803, 26.191393>,  <37.302841, 34.536476, 26.029320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306862, 34.170803, 26.191393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545002, -0.334721, -0.768723,
		0.838375, 0.228555, 0.494864,
		0.010054, -0.914180, 0.405185,
		37.309879, 33.896549, 26.312948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956688, 34.311981, 25.790113>,  <37.302841, 34.536476, 26.029320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956688, 34.311981, 25.790113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763130, 33.982376, 25.907991>,  <37.646996, 33.784611, 25.978718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763130, 33.982376, 25.907991>,  <37.956688, 34.311981, 25.790113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763130, 33.982376, 25.907991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411337, -0.511389, -0.754509,
		0.772430, -0.243884, 0.586406,
		-0.483894, -0.824016, 0.294694,
		37.617962, 33.735172, 25.996399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396797, 33.740059, 25.868628>,  <37.956688, 34.311981, 25.790113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396797, 33.740059, 25.868628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061066, 33.527882, 25.821043>,  <37.859627, 33.400574, 25.792492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061066, 33.527882, 25.821043>,  <38.396797, 33.740059, 25.868628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061066, 33.527882, 25.821043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367310, -0.392043, -0.843437,
		0.400761, -0.751617, 0.523892,
		-0.839330, -0.530447, -0.118961,
		37.809265, 33.368748, 25.785355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650127, 32.952145, 25.836428>,  <38.396797, 33.740059, 25.868628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650127, 32.952145, 25.836428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288315, 33.029064, 25.684196>,  <38.071228, 33.075218, 25.592857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288315, 33.029064, 25.684196>,  <38.650127, 32.952145, 25.836428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288315, 33.029064, 25.684196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268654, -0.436082, -0.858870,
		-0.331126, -0.879120, 0.342788,
		-0.904534, 0.192302, -0.380577,
		38.016956, 33.086754, 25.570023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430874, 32.335037, 25.493494>,  <38.650127, 32.952145, 25.836428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430874, 32.335037, 25.493494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211624, 32.629372, 25.334448>,  <38.080074, 32.805973, 25.239021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211624, 32.629372, 25.334448>,  <38.430874, 32.335037, 25.493494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211624, 32.629372, 25.334448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271785, -0.292891, -0.916705,
		-0.791004, -0.610538, -0.039448,
		-0.548129, 0.735839, -0.397614,
		38.047184, 32.850124, 25.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263161, 32.060093, 24.879255>,  <38.430874, 32.335037, 25.493494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263161, 32.060093, 24.879255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185589, 32.449650, 24.832054>,  <38.139046, 32.683384, 24.803734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185589, 32.449650, 24.832054>,  <38.263161, 32.060093, 24.879255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185589, 32.449650, 24.832054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062937, -0.107689, -0.992190,
		-0.978994, -0.199845, -0.040409,
		-0.193933, 0.973892, -0.118005,
		38.127407, 32.741817, 24.796652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769554, 32.087437, 24.339685>,  <38.263161, 32.060093, 24.879255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769554, 32.087437, 24.339685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935795, 32.451115, 24.329590>,  <38.035542, 32.669323, 24.323532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935795, 32.451115, 24.329590>,  <37.769554, 32.087437, 24.339685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935795, 32.451115, 24.329590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010551, -0.032568, -0.999414,
		-0.909484, 0.415094, -0.023128,
		0.415604, 0.909195, -0.025241,
		38.060474, 32.723873, 24.322018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445663, 32.508064, 23.795929>,  <37.769554, 32.087437, 24.339685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445663, 32.508064, 23.795929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826752, 32.623508, 23.833920>,  <38.055405, 32.692776, 23.856714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826752, 32.623508, 23.833920>,  <37.445663, 32.508064, 23.795929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826752, 32.623508, 23.833920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119243, -0.067655, -0.990557,
		-0.279459, 0.955053, -0.098871,
		0.952724, 0.288610, 0.094977,
		38.112568, 32.710091, 23.862413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540688, 32.745892, 23.212254>,  <37.445663, 32.508064, 23.795929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540688, 32.745892, 23.212254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917400, 32.774338, 23.343697>,  <38.143429, 32.791405, 23.422564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.917400, 32.774338, 23.343697>,  <37.540688, 32.745892, 23.212254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917400, 32.774338, 23.343697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333629, -0.318735, -0.887186,
		0.041643, 0.945172, -0.323907,
		0.941784, 0.071120, 0.328609,
		38.199936, 32.795673, 23.442280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.839420, 33.212650, 22.777878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145767, 33.028866, 22.957813>,  <38.329575, 32.918594, 23.065775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145767, 33.028866, 22.957813>,  <37.839420, 33.212650, 22.777878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145767, 33.028866, 22.957813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306136, -0.354665, -0.883456,
		0.565451, 0.814317, -0.130968,
		0.765863, -0.459457, 0.449837,
		38.375526, 32.891029, 23.092764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 33.413685, 22.534241>,  <37.839420, 33.212650, 22.777878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464531, 33.413685, 22.534241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512508, 33.041157, 22.671797>,  <38.541294, 32.817642, 22.754332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512508, 33.041157, 22.671797>,  <38.464531, 33.413685, 22.534241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512508, 33.041157, 22.671797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278739, -0.300869, -0.912021,
		0.952848, 0.205245, 0.223508,
		0.119941, -0.931318, 0.343892,
		38.548492, 32.761761, 22.774965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116707, 33.253429, 22.292576>,  <38.464531, 33.413685, 22.534241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116707, 33.253429, 22.292576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950310, 32.913940, 22.423187>,  <38.850471, 32.710247, 22.501554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950310, 32.913940, 22.423187>,  <39.116707, 33.253429, 22.292576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950310, 32.913940, 22.423187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380818, -0.488661, -0.784977,
		0.825787, -0.202200, 0.526489,
		-0.415997, -0.848720, 0.326528,
		38.825512, 32.659325, 22.521145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658550, 32.779793, 22.247917>,  <39.116707, 33.253429, 22.292576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658550, 32.779793, 22.247917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300060, 32.602943, 22.233431>,  <39.084969, 32.496834, 22.224739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300060, 32.602943, 22.233431>,  <39.658550, 32.779793, 22.247917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300060, 32.602943, 22.233431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258277, -0.453678, -0.852918,
		0.360668, -0.773757, 0.520787,
		-0.896221, -0.442127, -0.036217,
		39.031193, 32.470306, 22.222567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817768, 32.098049, 22.125059>,  <39.658550, 32.779793, 22.247917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817768, 32.098049, 22.125059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431259, 32.118832, 22.024174>,  <39.199352, 32.131302, 21.963642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431259, 32.118832, 22.024174>,  <39.817768, 32.098049, 22.125059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431259, 32.118832, 22.024174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185866, -0.537180, -0.822734,
		-0.178228, -0.841866, 0.509407,
		-0.966275, 0.051953, -0.252215,
		39.141376, 32.134418, 21.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654873, 31.478233, 21.876534>,  <39.817768, 32.098049, 22.125059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654873, 31.478233, 21.876534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376106, 31.722635, 21.726341>,  <39.208847, 31.869276, 21.636227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376106, 31.722635, 21.726341>,  <39.654873, 31.478233, 21.876534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376106, 31.722635, 21.726341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103938, -0.431984, -0.895872,
		-0.709585, -0.663370, 0.237547,
		-0.696911, 0.611007, -0.375479,
		39.167034, 31.905937, 21.613697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266792, 31.053371, 21.583046>,  <39.654873, 31.478233, 21.876534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266792, 31.053371, 21.583046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187729, 31.409166, 21.418245>,  <39.140293, 31.622643, 21.319365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187729, 31.409166, 21.418245>,  <39.266792, 31.053371, 21.583046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187729, 31.409166, 21.418245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168151, -0.383300, -0.908188,
		-0.965742, -0.248785, -0.073808,
		-0.197654, 0.889487, -0.412003,
		39.128433, 31.676012, 21.294645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923615, 30.867960, 21.039377>,  <39.266792, 31.053371, 21.583046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923615, 30.867960, 21.039377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006695, 31.247362, 20.943712>,  <39.056541, 31.475004, 20.886312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006695, 31.247362, 20.943712>,  <38.923615, 30.867960, 21.039377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006695, 31.247362, 20.943712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139488, -0.270716, -0.952500,
		-0.968196, 0.164473, -0.188533,
		0.207700, 0.948505, -0.239164,
		39.069004, 31.531914, 20.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561047, 30.982864, 20.409306>,  <38.923615, 30.867960, 21.039377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561047, 30.982864, 20.409306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882259, 31.220699, 20.425323>,  <39.074989, 31.363400, 20.434935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882259, 31.220699, 20.425323>,  <38.561047, 30.982864, 20.409306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882259, 31.220699, 20.425323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324320, -0.379665, -0.866412,
		-0.499953, 0.708746, -0.497721,
		0.803034, 0.594586, 0.040046,
		39.123169, 31.399075, 20.437338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840618, 30.925207, 19.742540>,  <38.561047, 30.982864, 20.409306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840618, 30.925207, 19.742540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145100, 31.109869, 19.924723>,  <39.327789, 31.220667, 20.034033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145100, 31.109869, 19.924723>,  <38.840618, 30.925207, 19.742540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145100, 31.109869, 19.924723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623918, -0.329753, -0.708512,
		-0.176900, 0.823491, -0.539045,
		0.761205, 0.461655, 0.455457,
		39.373463, 31.248365, 20.061359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295048, 31.284351, 19.181002>,  <38.840618, 30.925207, 19.742540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295048, 31.284351, 19.181002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521179, 31.257763, 19.509874>,  <39.656857, 31.241810, 19.707199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521179, 31.257763, 19.509874>,  <39.295048, 31.284351, 19.181002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521179, 31.257763, 19.509874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732361, -0.418183, -0.537374,
		0.379542, 0.905927, -0.187731,
		0.565328, -0.066469, 0.822184,
		39.690777, 31.237822, 19.756529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891834, 31.629835, 18.951073>,  <39.295048, 31.284351, 19.181002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891834, 31.629835, 18.951073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976444, 31.387480, 19.257839>,  <40.027210, 31.242067, 19.441898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976444, 31.387480, 19.257839>,  <39.891834, 31.629835, 18.951073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976444, 31.387480, 19.257839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880023, -0.223322, -0.419151,
		0.425227, 0.763563, 0.485956,
		0.211524, -0.605886, 0.766915,
		40.039902, 31.205713, 19.487913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568356, 31.785217, 19.129004>,  <39.891834, 31.629835, 18.951073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568356, 31.785217, 19.129004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507217, 31.411659, 19.258295>,  <40.470535, 31.187525, 19.335869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507217, 31.411659, 19.258295>,  <40.568356, 31.785217, 19.129004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507217, 31.411659, 19.258295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895462, -0.269245, -0.354479,
		0.418074, 0.235256, 0.877422,
		-0.152848, -0.933896, 0.323227,
		40.461365, 31.131491, 19.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094269, 31.577642, 19.575348>,  <40.568356, 31.785217, 19.129004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094269, 31.577642, 19.575348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950573, 31.228722, 19.442663>,  <40.864357, 31.019369, 19.363052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950573, 31.228722, 19.442663>,  <41.094269, 31.577642, 19.575348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950573, 31.228722, 19.442663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917631, -0.265416, -0.295817,
		0.170000, -0.410660, 0.895801,
		-0.359240, -0.872303, -0.331714,
		40.842800, 30.967031, 19.343149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621811, 31.152449, 19.725002>,  <41.094269, 31.577642, 19.575348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621811, 31.152449, 19.725002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.398064, 30.941137, 19.469494>,  <41.263817, 30.814350, 19.316189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.398064, 30.941137, 19.469494>,  <41.621811, 31.152449, 19.725002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398064, 30.941137, 19.469494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828905, -0.360958, -0.427348,
		-0.004810, -0.768525, 0.639802,
		-0.559369, -0.528279, -0.638770,
		41.230251, 30.782654, 19.277863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008198, 30.504539, 19.630920>,  <41.621811, 31.152449, 19.725002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008198, 30.504539, 19.630920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752285, 30.518169, 19.323799>,  <41.598740, 30.526348, 19.139526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752285, 30.518169, 19.323799>,  <42.008198, 30.504539, 19.630920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752285, 30.518169, 19.323799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664509, -0.477411, -0.574897,
		-0.386147, -0.878019, 0.282795,
		-0.639780, 0.034075, -0.767802,
		41.560352, 30.528393, 19.093458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148026, 29.878016, 19.359787>,  <42.008198, 30.504539, 19.630920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148026, 29.878016, 19.359787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967018, 30.084206, 19.068716>,  <41.858414, 30.207920, 18.894073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967018, 30.084206, 19.068716>,  <42.148026, 29.878016, 19.359787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967018, 30.084206, 19.068716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607536, -0.419127, -0.674709,
		-0.652785, -0.747407, -0.123508,
		-0.452517, 0.515475, -0.727677,
		41.831264, 30.238848, 18.850412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983929, 29.431248, 18.988661>,  <42.148026, 29.878016, 19.359787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983929, 29.431248, 18.988661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969410, 29.749435, 18.746698>,  <41.960697, 29.940348, 18.601521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.969410, 29.749435, 18.746698>,  <41.983929, 29.431248, 18.988661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969410, 29.749435, 18.746698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487604, -0.514266, -0.705531,
		-0.872310, -0.320565, -0.369206,
		-0.036298, 0.795468, -0.604908,
		41.958519, 29.988075, 18.565226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832283, 29.163877, 18.233063>,  <41.983929, 29.431248, 18.988661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832283, 29.163877, 18.233063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984444, 29.529530, 18.176975>,  <42.075741, 29.748920, 18.143322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984444, 29.529530, 18.176975>,  <41.832283, 29.163877, 18.233063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984444, 29.529530, 18.176975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426523, -0.307940, -0.850442,
		-0.820593, 0.263702, -0.507038,
		0.380401, 0.914130, -0.140218,
		42.098564, 29.803768, 18.134911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904335, 29.192142, 17.543419>,  <41.832283, 29.163877, 18.233063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904335, 29.192142, 17.543419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124077, 29.505257, 17.660351>,  <42.255920, 29.693125, 17.730511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124077, 29.505257, 17.660351>,  <41.904335, 29.192142, 17.543419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124077, 29.505257, 17.660351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649835, -0.180303, -0.738380,
		-0.525284, 0.595601, -0.607731,
		0.549356, 0.782784, 0.292332,
		42.288883, 29.740091, 17.748051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031403, 29.625748, 16.987307>,  <41.904335, 29.192142, 17.543419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031403, 29.625748, 16.987307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330795, 29.671171, 17.248650>,  <42.510433, 29.698425, 17.405455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330795, 29.671171, 17.248650>,  <42.031403, 29.625748, 16.987307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330795, 29.671171, 17.248650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661991, -0.186172, -0.726022,
		0.039192, 0.975933, -0.214520,
		0.748486, 0.113557, 0.653355,
		42.555340, 29.705238, 17.444656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538654, 30.013557, 16.637224>,  <42.031403, 29.625748, 16.987307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538654, 30.013557, 16.637224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763721, 29.868824, 16.934540>,  <42.898762, 29.781984, 17.112928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763721, 29.868824, 16.934540>,  <42.538654, 30.013557, 16.637224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763721, 29.868824, 16.934540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771633, -0.092740, -0.629271,
		0.296624, 0.927618, 0.227021,
		0.562670, -0.361833, 0.743290,
		42.932522, 29.760275, 17.157526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178516, 30.500742, 16.752110>,  <42.538654, 30.013557, 16.637224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178516, 30.500742, 16.752110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.214085, 30.112953, 16.843515>,  <43.235424, 29.880280, 16.898359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.214085, 30.112953, 16.843515>,  <43.178516, 30.500742, 16.752110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214085, 30.112953, 16.843515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888331, -0.026581, -0.458434,
		0.450513, 0.243762, 0.858847,
		0.088920, -0.969471, 0.228517,
		43.240761, 29.822111, 16.912071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891994, 30.530464, 16.950510>,  <43.178516, 30.500742, 16.752110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891994, 30.530464, 16.950510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763844, 30.175150, 16.818871>,  <43.686954, 29.961962, 16.739887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763844, 30.175150, 16.818871>,  <43.891994, 30.530464, 16.950510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763844, 30.175150, 16.818871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745179, -0.021828, -0.666507,
		0.584867, -0.458768, 0.668926,
		-0.320373, -0.888288, -0.329098,
		43.667732, 29.908663, 16.720140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774338, 30.395809, 16.183229>,  <43.891994, 30.530464, 16.950510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774338, 30.395809, 16.183229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.628754, 30.576927, 15.857651>,  <43.541405, 30.685598, 15.662303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.628754, 30.576927, 15.857651>,  <43.774338, 30.395809, 16.183229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628754, 30.576927, 15.857651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556015, 0.595470, 0.579882,
		0.747248, 0.663622, 0.035032,
		-0.363961, 0.452794, -0.813947,
		43.519566, 30.712765, 15.613466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715275, 31.072865, 16.411057>,  <43.774338, 30.395809, 16.183229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715275, 31.072865, 16.411057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487907, 31.093910, 16.082634>,  <43.351486, 31.106537, 15.885581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487907, 31.093910, 16.082634>,  <43.715275, 31.072865, 16.411057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487907, 31.093910, 16.082634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650057, 0.582987, 0.487394,
		0.504307, 0.810776, -0.297180,
		-0.568419, 0.052613, -0.821055,
		43.317383, 31.109694, 15.836317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482807, 31.714237, 16.379639>,  <43.715275, 31.072865, 16.411057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482807, 31.714237, 16.379639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.207523, 31.569191, 16.128283>,  <43.042351, 31.482164, 15.977469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.207523, 31.569191, 16.128283>,  <43.482807, 31.714237, 16.379639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207523, 31.569191, 16.128283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688745, 0.598761, 0.408797,
		0.228019, 0.714140, -0.661824,
		-0.688213, -0.362615, -0.628389,
		43.001060, 31.460407, 15.939766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182354, 32.202164, 15.928953>,  <43.482807, 31.714237, 16.379639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182354, 32.202164, 15.928953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906773, 31.915918, 15.974980>,  <42.741425, 31.744171, 16.002596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906773, 31.915918, 15.974980>,  <43.182354, 32.202164, 15.928953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906773, 31.915918, 15.974980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668268, 0.688631, 0.281432,
		-0.280635, 0.116998, -0.952657,
		-0.688956, -0.715610, 0.115069,
		42.700085, 31.701235, 16.009501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482746, 32.440006, 15.648187>,  <43.182354, 32.202164, 15.928953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482746, 32.440006, 15.648187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402050, 32.129292, 15.886816>,  <42.353634, 31.942862, 16.029993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402050, 32.129292, 15.886816>,  <42.482746, 32.440006, 15.648187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402050, 32.129292, 15.886816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725875, 0.527511, 0.441404,
		-0.657577, -0.343991, -0.670270,
		-0.201736, -0.776790, 0.596574,
		42.341530, 31.896255, 16.065788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786133, 32.580257, 15.871018>,  <42.482746, 32.440006, 15.648187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786133, 32.580257, 15.871018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883171, 32.278206, 16.114635>,  <41.941395, 32.096977, 16.260805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883171, 32.278206, 16.114635>,  <41.786133, 32.580257, 15.871018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883171, 32.278206, 16.114635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723673, 0.277250, 0.632005,
		-0.646100, -0.594070, -0.479203,
		0.242595, -0.755125, 0.609044,
		41.955948, 32.051670, 16.297348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154198, 32.250351, 16.145943>,  <41.786133, 32.580257, 15.871018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154198, 32.250351, 16.145943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419724, 32.155952, 16.429815>,  <41.579041, 32.099312, 16.600140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419724, 32.155952, 16.429815>,  <41.154198, 32.250351, 16.145943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419724, 32.155952, 16.429815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651692, 0.283036, 0.703696,
		-0.366938, -0.929621, 0.034085,
		0.663818, -0.236000, 0.709683,
		41.618870, 32.085152, 16.642719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759319, 31.889774, 16.659317>,  <41.154198, 32.250351, 16.145943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759319, 31.889774, 16.659317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077358, 32.020336, 16.863783>,  <41.268181, 32.098675, 16.986462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077358, 32.020336, 16.863783>,  <40.759319, 31.889774, 16.659317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077358, 32.020336, 16.863783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600077, 0.301169, 0.741083,
		0.087947, -0.895967, 0.435326,
		0.795093, 0.326405, 0.511162,
		41.315887, 32.118259, 17.017132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623573, 31.719219, 17.310179>,  <40.759319, 31.889774, 16.659317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623573, 31.719219, 17.310179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907650, 31.997559, 17.352928>,  <41.078094, 32.164562, 17.378578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.907650, 31.997559, 17.352928>,  <40.623573, 31.719219, 17.310179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907650, 31.997559, 17.352928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554985, 0.459970, 0.693123,
		0.433146, -0.551567, 0.712852,
		0.710194, 0.695845, 0.106878,
		41.120708, 32.206314, 17.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841362, 31.684950, 18.003254>,  <40.623573, 31.719219, 17.310179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841362, 31.684950, 18.003254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922451, 32.043308, 17.845127>,  <40.971104, 32.258324, 17.750250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922451, 32.043308, 17.845127>,  <40.841362, 31.684950, 18.003254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922451, 32.043308, 17.845127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430971, 0.444127, 0.785503,
		0.879300, 0.011132, 0.476139,
		0.202722, 0.895894, -0.395319,
		40.983269, 32.312077, 17.726532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038616, 32.089317, 18.597425>,  <40.841362, 31.684950, 18.003254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038616, 32.089317, 18.597425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969898, 32.369549, 18.320393>,  <40.928665, 32.537689, 18.154173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.969898, 32.369549, 18.320393>,  <41.038616, 32.089317, 18.597425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969898, 32.369549, 18.320393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557482, 0.510495, 0.654681,
		0.812218, 0.498576, 0.302860,
		-0.171800, 0.700583, -0.692581,
		40.918358, 32.579723, 18.112617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318195, 32.821026, 18.797091>,  <41.038616, 32.089317, 18.597425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318195, 32.821026, 18.797091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012878, 32.866085, 18.542629>,  <40.829689, 32.893120, 18.389952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012878, 32.866085, 18.542629>,  <41.318195, 32.821026, 18.797091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012878, 32.866085, 18.542629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463601, 0.590287, 0.660784,
		0.449951, 0.799294, -0.398338,
		-0.763295, 0.112650, -0.636153,
		40.783890, 32.899879, 18.351784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938370, 33.309746, 19.040497>,  <41.318195, 32.821026, 18.797091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938370, 33.309746, 19.040497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671249, 33.250134, 18.748791>,  <40.510975, 33.214367, 18.573767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671249, 33.250134, 18.748791>,  <40.938370, 33.309746, 19.040497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671249, 33.250134, 18.748791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692076, 0.484960, 0.534645,
		0.273984, 0.861745, -0.426999,
		-0.667805, -0.149031, -0.729264,
		40.470909, 33.205425, 18.530012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649399, 33.997852, 18.770847>,  <40.938370, 33.309746, 19.040497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649399, 33.997852, 18.770847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363300, 33.723156, 18.718979>,  <40.191643, 33.558338, 18.687859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.363300, 33.723156, 18.718979>,  <40.649399, 33.997852, 18.770847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363300, 33.723156, 18.718979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610097, 0.523047, 0.595150,
		-0.340886, 0.504791, -0.793084,
		-0.715247, -0.686736, -0.129672,
		40.148727, 33.517136, 18.680077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005531, 34.251637, 18.743870>,  <40.649399, 33.997852, 18.770847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005531, 34.251637, 18.743870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881527, 33.872746, 18.776484>,  <39.807125, 33.645409, 18.796051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881527, 33.872746, 18.776484>,  <40.005531, 34.251637, 18.743870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881527, 33.872746, 18.776484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677324, 0.280223, 0.680227,
		-0.667180, 0.155651, -0.728453,
		-0.310007, -0.947232, 0.081533,
		39.788525, 33.588577, 18.800943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330750, 34.274521, 18.726814>,  <40.005531, 34.251637, 18.743870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330750, 34.274521, 18.726814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391186, 33.924374, 18.910509>,  <39.427448, 33.714283, 19.020725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391186, 33.924374, 18.910509>,  <39.330750, 34.274521, 18.726814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391186, 33.924374, 18.910509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670089, 0.250847, 0.698611,
		-0.726742, -0.413281, -0.548676,
		0.151089, -0.875371, 0.459236,
		39.436512, 33.661762, 19.048281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700142, 33.825161, 18.660994>,  <39.330750, 34.274521, 18.726814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700142, 33.825161, 18.660994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908287, 33.712379, 18.983416>,  <39.033173, 33.644711, 19.176868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908287, 33.712379, 18.983416>,  <38.700142, 33.825161, 18.660994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908287, 33.712379, 18.983416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736082, 0.330422, 0.590766,
		-0.432906, -0.900736, -0.035600,
		0.520361, -0.281951, 0.806057,
		39.064396, 33.627796, 19.225233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237827, 33.455219, 19.092747>,  <38.700142, 33.825161, 18.660994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237827, 33.455219, 19.092747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519066, 33.595402, 19.340242>,  <38.687809, 33.679512, 19.488741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519066, 33.595402, 19.340242>,  <38.237827, 33.455219, 19.092747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519066, 33.595402, 19.340242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697837, 0.507298, 0.505640,
		-0.136684, -0.787293, 0.601238,
		0.703094, 0.350453, 0.618742,
		38.729996, 33.700539, 19.525866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005966, 33.471527, 19.820606>,  <38.237827, 33.455219, 19.092747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005966, 33.471527, 19.820606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341518, 33.685139, 19.862740>,  <38.542850, 33.813305, 19.888020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341518, 33.685139, 19.862740>,  <38.005966, 33.471527, 19.820606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341518, 33.685139, 19.862740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428702, 0.528968, 0.732398,
		0.335405, -0.659549, 0.672680,
		0.838879, 0.534030, 0.105332,
		38.593182, 33.845348, 19.894339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182358, 33.302635, 20.542276>,  <38.005966, 33.471527, 19.820606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182358, 33.302635, 20.542276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344231, 33.652779, 20.436466>,  <38.441353, 33.862865, 20.372980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344231, 33.652779, 20.436466>,  <38.182358, 33.302635, 20.542276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344231, 33.652779, 20.436466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510571, 0.456270, 0.728790,
		0.758650, -0.159871, 0.631579,
		0.404683, 0.875362, -0.264524,
		38.465637, 33.915386, 20.357109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.780296, 32.647545, 25.681740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101627, 32.883278, 25.716038>,  <37.294426, 33.024719, 25.736616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101627, 32.883278, 25.716038>,  <36.780296, 32.647545, 25.681740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101627, 32.883278, 25.716038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268374, 0.229714, 0.935525,
		0.531638, -0.774545, 0.342697,
		0.803328, 0.589332, 0.085743,
		37.342625, 33.060078, 25.741760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940964, 32.634796, 26.363640>,  <36.780296, 32.647545, 25.681740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940964, 32.634796, 26.363640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149868, 32.960194, 26.261297>,  <37.275211, 33.155434, 26.199892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149868, 32.960194, 26.261297>,  <36.940964, 32.634796, 26.363640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149868, 32.960194, 26.261297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164470, 0.390476, 0.905803,
		0.836774, -0.430987, 0.337727,
		0.522263, 0.813498, -0.255856,
		37.306545, 33.204243, 26.184540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326176, 32.768478, 26.929312>,  <36.940964, 32.634796, 26.363640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326176, 32.768478, 26.929312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308987, 33.118195, 26.735912>,  <37.298676, 33.328026, 26.619873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308987, 33.118195, 26.735912>,  <37.326176, 32.768478, 26.929312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308987, 33.118195, 26.735912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017769, 0.483202, 0.875328,
		0.998918, 0.046203, -0.005227,
		-0.042968, 0.874289, -0.483501,
		37.296097, 33.380482, 26.590862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808876, 33.197117, 27.268709>,  <37.326176, 32.768478, 26.929312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808876, 33.197117, 27.268709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535435, 33.414883, 27.074268>,  <37.371368, 33.545544, 26.957603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535435, 33.414883, 27.074268>,  <37.808876, 33.197117, 27.268709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535435, 33.414883, 27.074268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116995, 0.575676, 0.809265,
		0.720414, 0.610089, -0.329841,
		-0.683605, 0.544416, -0.486102,
		37.330353, 33.578209, 26.928438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079762, 33.837242, 27.410467>,  <37.808876, 33.197117, 27.268709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079762, 33.837242, 27.410467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713795, 33.914627, 27.268766>,  <37.494213, 33.961060, 27.183746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.713795, 33.914627, 27.268766>,  <38.079762, 33.837242, 27.410467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713795, 33.914627, 27.268766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137464, 0.675841, 0.724115,
		0.379507, 0.711204, -0.591745,
		-0.914919, 0.193463, -0.354252,
		37.439320, 33.972668, 27.162491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057369, 34.620083, 27.336451>,  <38.079762, 33.837242, 27.410467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057369, 34.620083, 27.336451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685741, 34.478661, 27.379948>,  <37.462765, 34.393806, 27.406046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.685741, 34.478661, 27.379948>,  <38.057369, 34.620083, 27.336451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685741, 34.478661, 27.379948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183742, 0.696258, 0.693876,
		-0.321037, 0.624680, -0.711836,
		-0.929072, -0.353554, 0.108745,
		37.407021, 34.372593, 27.412571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617310, 35.145050, 27.345844>,  <38.057369, 34.620083, 27.336451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617310, 35.145050, 27.345844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375851, 34.867020, 27.502037>,  <37.230976, 34.700203, 27.595753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375851, 34.867020, 27.502037>,  <37.617310, 35.145050, 27.345844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375851, 34.867020, 27.502037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198929, 0.605614, 0.770493,
		-0.772032, 0.387430, -0.503850,
		-0.603650, -0.695076, 0.390482,
		37.194756, 34.658497, 27.619183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023396, 35.540157, 27.498051>,  <37.617310, 35.145050, 27.345844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023396, 35.540157, 27.498051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.054909, 35.209969, 27.721617>,  <37.073818, 35.011856, 27.855757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.054909, 35.209969, 27.721617>,  <37.023396, 35.540157, 27.498051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054909, 35.209969, 27.721617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122858, 0.548343, 0.827179,
		-0.989292, -0.133838, -0.058214,
		0.078787, -0.825474, 0.558914,
		37.078545, 34.962326, 27.889292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373631, 35.486313, 27.953873>,  <37.023396, 35.540157, 27.498051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373631, 35.486313, 27.953873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.638599, 35.243717, 28.129763>,  <36.797581, 35.098160, 28.235296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.638599, 35.243717, 28.129763>,  <36.373631, 35.486313, 27.953873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638599, 35.243717, 28.129763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166135, 0.453431, 0.875671,
		-0.730473, -0.653121, 0.199605,
		0.662426, -0.606493, 0.439726,
		36.837326, 35.061768, 28.261681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014492, 35.268345, 28.473610>,  <36.373631, 35.486313, 27.953873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014492, 35.268345, 28.473610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399918, 35.229843, 28.573427>,  <36.631172, 35.206741, 28.633318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399918, 35.229843, 28.573427>,  <36.014492, 35.268345, 28.473610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399918, 35.229843, 28.573427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153551, 0.564841, 0.810788,
		-0.218994, -0.819567, 0.529483,
		0.963568, -0.096255, 0.249542,
		36.688988, 35.200966, 28.648291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000660, 34.997505, 29.204922>,  <36.014492, 35.268345, 28.473610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000660, 34.997505, 29.204922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.352364, 35.176144, 29.138636>,  <36.563385, 35.283325, 29.098864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.352364, 35.176144, 29.138636>,  <36.000660, 34.997505, 29.204922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352364, 35.176144, 29.138636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125191, 0.552301, 0.824191,
		0.459606, -0.703928, 0.541523,
		0.879255, 0.446596, -0.165716,
		36.616138, 35.310123, 29.088921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321873, 34.942734, 29.797359>,  <36.000660, 34.997505, 29.204922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321873, 34.942734, 29.797359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.498291, 35.247208, 29.607170>,  <36.604141, 35.429893, 29.493057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.498291, 35.247208, 29.607170>,  <36.321873, 34.942734, 29.797359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498291, 35.247208, 29.607170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305774, 0.625533, 0.717782,
		0.843789, -0.171188, 0.508640,
		0.441047, 0.761185, -0.475473,
		36.630604, 35.475563, 29.464529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708969, 35.363300, 30.383680>,  <36.321873, 34.942734, 29.797359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708969, 35.363300, 30.383680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.668835, 35.620617, 30.080072>,  <36.644753, 35.775005, 29.897907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.668835, 35.620617, 30.080072>,  <36.708969, 35.363300, 30.383680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668835, 35.620617, 30.080072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145676, 0.745152, 0.650791,
		0.984231, 0.175869, 0.018945,
		-0.100337, 0.643288, -0.759021,
		36.638733, 35.813602, 29.852365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151196, 35.902733, 30.475357>,  <36.708969, 35.363300, 30.383680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151196, 35.902733, 30.475357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836063, 36.019409, 30.258383>,  <36.646984, 36.089413, 30.128199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836063, 36.019409, 30.258383>,  <37.151196, 35.902733, 30.475357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836063, 36.019409, 30.258383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161651, 0.751928, 0.639120,
		0.594297, 0.591205, -0.545241,
		-0.787832, 0.291688, -0.542437,
		36.599712, 36.106915, 30.095652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608330, 35.754726, 31.032795>,  <37.151196, 35.902733, 30.475357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608330, 35.754726, 31.032795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889973, 35.678432, 31.306395>,  <38.058956, 35.632656, 31.470554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889973, 35.678432, 31.306395>,  <37.608330, 35.754726, 31.032795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889973, 35.678432, 31.306395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640698, -0.244682, -0.727762,
		0.306174, 0.950657, -0.050077,
		0.704105, -0.190738, 0.683999,
		38.101204, 35.621212, 31.511595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155701, 36.103325, 30.815750>,  <37.608330, 35.754726, 31.032795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155701, 36.103325, 30.815750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278366, 35.798847, 31.044329>,  <38.351963, 35.616161, 31.181475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278366, 35.798847, 31.044329>,  <38.155701, 36.103325, 30.815750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278366, 35.798847, 31.044329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598182, -0.312867, -0.737762,
		0.740363, 0.568071, 0.359386,
		0.306661, -0.761190, 0.571445,
		38.370365, 35.570492, 31.215763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855717, 36.127914, 30.975109>,  <38.155701, 36.103325, 30.815750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855717, 36.127914, 30.975109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752781, 35.742989, 31.010288>,  <38.691021, 35.512035, 31.031397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752781, 35.742989, 31.010288>,  <38.855717, 36.127914, 30.975109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752781, 35.742989, 31.010288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573694, -0.225382, -0.787450,
		0.777595, -0.152182, 0.610071,
		-0.257335, -0.962312, 0.087950,
		38.675579, 35.454296, 31.036673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400467, 35.778248, 30.697361>,  <38.855717, 36.127914, 30.975109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400467, 35.778248, 30.697361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190201, 35.439541, 30.730009>,  <39.064041, 35.236317, 30.749598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190201, 35.439541, 30.730009>,  <39.400467, 35.778248, 30.697361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190201, 35.439541, 30.730009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527352, -0.399649, -0.749787,
		0.667515, -0.351094, 0.656626,
		-0.525665, -0.846767, 0.081622,
		39.032501, 35.185513, 30.754496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948051, 35.243843, 30.677839>,  <39.400467, 35.778248, 30.697361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948051, 35.243843, 30.677839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598850, 35.078793, 30.573832>,  <39.389332, 34.979763, 30.511427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.598850, 35.078793, 30.573832>,  <39.948051, 35.243843, 30.677839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598850, 35.078793, 30.573832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436022, -0.421419, -0.795167,
		0.218532, -0.807554, 0.547813,
		-0.873000, -0.412628, -0.260018,
		39.336948, 34.955006, 30.495827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155182, 34.581970, 30.384119>,  <39.948051, 35.243843, 30.677839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155182, 34.581970, 30.384119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784397, 34.640232, 30.245832>,  <39.561924, 34.675190, 30.162861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784397, 34.640232, 30.245832>,  <40.155182, 34.581970, 30.384119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784397, 34.640232, 30.245832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202662, -0.581084, -0.788206,
		-0.315694, -0.800704, 0.509127,
		-0.926966, 0.145651, -0.345717,
		39.506306, 34.683929, 30.142117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915897, 33.946411, 30.097849>,  <40.155182, 34.581970, 30.384119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915897, 33.946411, 30.097849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689465, 34.220863, 29.915083>,  <39.553604, 34.385536, 29.805424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689465, 34.220863, 29.915083>,  <39.915897, 33.946411, 30.097849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689465, 34.220863, 29.915083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185794, -0.433820, -0.881635,
		-0.803136, -0.583973, 0.118101,
		-0.566086, 0.686130, -0.456915,
		39.519638, 34.426701, 29.778008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406658, 33.585140, 29.722784>,  <39.915897, 33.946411, 30.097849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406658, 33.585140, 29.722784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469650, 33.937073, 29.543411>,  <39.507446, 34.148232, 29.435787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469650, 33.937073, 29.543411>,  <39.406658, 33.585140, 29.722784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469650, 33.937073, 29.543411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170728, -0.471520, -0.865171,
		-0.972652, 0.059688, -0.224468,
		0.157482, 0.879833, -0.448434,
		39.516895, 34.201023, 29.408880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243336, 33.379002, 29.184839>,  <39.406658, 33.585140, 29.722784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243336, 33.379002, 29.184839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401142, 33.738140, 29.106627>,  <39.495827, 33.953625, 29.059700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401142, 33.738140, 29.106627>,  <39.243336, 33.379002, 29.184839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401142, 33.738140, 29.106627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185017, -0.286047, -0.940184,
		-0.900071, 0.334739, -0.278967,
		0.394514, 0.897846, -0.195530,
		39.519497, 34.007492, 29.047968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973793, 33.666359, 28.439003>,  <39.243336, 33.379002, 29.184839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973793, 33.666359, 28.439003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312248, 33.865658, 28.514685>,  <39.515320, 33.985237, 28.560093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312248, 33.865658, 28.514685>,  <38.973793, 33.666359, 28.439003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312248, 33.865658, 28.514685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334269, -0.219619, -0.916532,
		-0.415110, 0.838757, -0.352378,
		0.846137, 0.498251, 0.189205,
		39.566090, 34.015133, 28.571445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109715, 34.125389, 27.883852>,  <38.973793, 33.666359, 28.439003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109715, 34.125389, 27.883852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475487, 34.103569, 28.044270>,  <39.694950, 34.090477, 28.140520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.475487, 34.103569, 28.044270>,  <39.109715, 34.125389, 27.883852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475487, 34.103569, 28.044270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397865, -0.060695, -0.915434,
		0.074279, 0.996665, -0.033798,
		0.914432, -0.054550, 0.401046,
		39.749817, 34.087204, 28.164583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506035, 34.448612, 27.405823>,  <39.109715, 34.125389, 27.883852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506035, 34.448612, 27.405823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757236, 34.210682, 27.606539>,  <39.907955, 34.067924, 27.726969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757236, 34.210682, 27.606539>,  <39.506035, 34.448612, 27.405823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757236, 34.210682, 27.606539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482305, -0.208539, -0.850819,
		0.610736, 0.776330, 0.155928,
		0.628000, -0.594830, 0.501790,
		39.945637, 34.032234, 27.757076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141159, 34.558109, 27.086658>,  <39.506035, 34.448612, 27.405823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141159, 34.558109, 27.086658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230732, 34.232464, 27.300976>,  <40.284477, 34.037075, 27.429565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230732, 34.232464, 27.300976>,  <40.141159, 34.558109, 27.086658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230732, 34.232464, 27.300976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525598, -0.362077, -0.769836,
		0.820731, 0.454006, 0.346813,
		0.223937, -0.814112, 0.535792,
		40.297913, 33.988232, 27.461714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867897, 34.454578, 26.941526>,  <40.141159, 34.558109, 27.086658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867897, 34.454578, 26.941526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698322, 34.115784, 27.069832>,  <40.596577, 33.912506, 27.146816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698322, 34.115784, 27.069832>,  <40.867897, 34.454578, 26.941526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698322, 34.115784, 27.069832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409892, -0.495247, -0.765976,
		0.807629, -0.193249, 0.557127,
		-0.423940, -0.846986, 0.320765,
		40.571140, 33.861687, 27.166061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262894, 34.504833, 27.612154>,  <40.867897, 34.454578, 26.941526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262894, 34.504833, 27.612154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567234, 34.747547, 27.520142>,  <41.749840, 34.893177, 27.464935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567234, 34.747547, 27.520142>,  <41.262894, 34.504833, 27.612154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567234, 34.747547, 27.520142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528262, 0.785032, 0.323517,
		0.376886, -0.124633, 0.917836,
		0.760852, 0.606788, -0.230029,
		41.795490, 34.929585, 27.451132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419319, 34.937584, 28.182583>,  <41.262894, 34.504833, 27.612154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419319, 34.937584, 28.182583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562794, 35.145473, 27.872427>,  <41.648880, 35.270206, 27.686335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562794, 35.145473, 27.872427>,  <41.419319, 34.937584, 28.182583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562794, 35.145473, 27.872427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482571, 0.814294, 0.322568,
		0.799039, 0.258474, 0.542889,
		0.358696, 0.519727, -0.775384,
		41.670403, 35.301392, 27.639811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665356, 35.520889, 28.453054>,  <41.419319, 34.937584, 28.182583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665356, 35.520889, 28.453054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573269, 35.577114, 28.067881>,  <41.518017, 35.610847, 27.836777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573269, 35.577114, 28.067881>,  <41.665356, 35.520889, 28.453054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573269, 35.577114, 28.067881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579050, 0.775487, 0.251636,
		0.782114, 0.615518, -0.097136,
		-0.230214, 0.140561, -0.962935,
		41.504204, 35.619282, 27.778999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876171, 36.240089, 28.346027>,  <41.665356, 35.520889, 28.453054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876171, 36.240089, 28.346027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608467, 36.137222, 28.067184>,  <41.447845, 36.075504, 27.899878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608467, 36.137222, 28.067184>,  <41.876171, 36.240089, 28.346027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608467, 36.137222, 28.067184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543844, 0.808809, 0.223743,
		0.506289, 0.528860, -0.681160,
		-0.669257, -0.257166, -0.697109,
		41.407688, 36.060074, 27.858051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776634, 36.898628, 27.957119>,  <41.876171, 36.240089, 28.346027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776634, 36.898628, 27.957119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466766, 36.657883, 27.879519>,  <41.280846, 36.513435, 27.832958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466766, 36.657883, 27.879519>,  <41.776634, 36.898628, 27.957119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466766, 36.657883, 27.879519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619990, 0.783279, 0.045663,
		0.124474, 0.155652, -0.979938,
		-0.774673, -0.601868, -0.194001,
		41.234364, 36.477322, 27.821318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385883, 37.264996, 27.555151>,  <41.776634, 36.898628, 27.957119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385883, 37.264996, 27.555151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147060, 36.971485, 27.684826>,  <41.003769, 36.795380, 27.762630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147060, 36.971485, 27.684826>,  <41.385883, 37.264996, 27.555151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147060, 36.971485, 27.684826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745971, 0.656483, 0.112060,
		-0.295052, -0.174929, -0.939332,
		-0.597053, -0.733778, 0.324189,
		40.967945, 36.751350, 27.782082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828022, 37.497868, 27.170040>,  <41.385883, 37.264996, 27.555151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828022, 37.497868, 27.170040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688366, 37.265411, 27.464083>,  <40.604572, 37.125938, 27.640509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688366, 37.265411, 27.464083>,  <40.828022, 37.497868, 27.170040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688366, 37.265411, 27.464083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824975, 0.562679, 0.053000,
		-0.444428, -0.587938, -0.675879,
		-0.349142, -0.581138, 0.735104,
		40.583622, 37.091068, 27.684614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101990, 37.431820, 27.051617>,  <40.828022, 37.497868, 27.170040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101990, 37.431820, 27.051617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146927, 37.329369, 27.435654>,  <40.173889, 37.267899, 27.666077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146927, 37.329369, 27.435654>,  <40.101990, 37.431820, 27.051617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146927, 37.329369, 27.435654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887444, 0.408799, 0.212899,
		-0.447014, -0.875947, -0.181372,
		0.112343, -0.256126, 0.960092,
		40.180630, 37.252529, 27.723682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402943, 37.366489, 27.282089>,  <40.101990, 37.431820, 27.051617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402943, 37.366489, 27.282089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630997, 37.382515, 27.610317>,  <39.767830, 37.392132, 27.807255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630997, 37.382515, 27.610317>,  <39.402943, 37.366489, 27.282089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630997, 37.382515, 27.610317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735057, 0.470971, 0.487727,
		-0.366926, -0.881238, 0.297967,
		0.570138, 0.040063, 0.820572,
		39.802036, 37.394535, 27.856489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997303, 37.101810, 27.888962>,  <39.402943, 37.366489, 27.282089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997303, 37.101810, 27.888962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282833, 37.346146, 28.025974>,  <39.454151, 37.492744, 28.108181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282833, 37.346146, 28.025974>,  <38.997303, 37.101810, 27.888962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282833, 37.346146, 28.025974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685696, 0.510183, 0.519167,
		0.142372, -0.605469, 0.783031,
		0.713828, 0.610836, 0.342532,
		39.496983, 37.529396, 28.128735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830410, 37.149422, 28.620016>,  <38.997303, 37.101810, 27.888962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830410, 37.149422, 28.620016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052948, 37.470364, 28.533571>,  <39.186470, 37.662930, 28.481705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052948, 37.470364, 28.533571>,  <38.830410, 37.149422, 28.620016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052948, 37.470364, 28.533571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598967, 0.567490, 0.564973,
		0.575961, -0.184862, 0.796301,
		0.556334, 0.802360, -0.216126,
		39.219852, 37.711071, 28.468739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059639, 37.425964, 29.285334>,  <38.830410, 37.149422, 28.620016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059639, 37.425964, 29.285334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042538, 37.710499, 29.004715>,  <39.032276, 37.881222, 28.836344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042538, 37.710499, 29.004715>,  <39.059639, 37.425964, 29.285334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042538, 37.710499, 29.004715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618143, 0.532823, 0.577926,
		0.784902, 0.458363, 0.416932,
		-0.042749, 0.711339, -0.701548,
		39.029713, 37.923901, 28.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.484737, 32.570118, 25.564812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460026, 32.918190, 25.369276>,  <44.445198, 33.127033, 25.251955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460026, 32.918190, 25.369276>,  <44.484737, 32.570118, 25.564812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460026, 32.918190, 25.369276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222284, 0.465480, 0.856690,
		0.973023, 0.161588, 0.164670,
		-0.061780, 0.870182, -0.488841,
		44.441490, 33.179245, 25.222624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642971, 32.963852, 25.998058>,  <44.484737, 32.570118, 25.564812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642971, 32.963852, 25.998058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481136, 33.242378, 25.760923>,  <44.384037, 33.409492, 25.618643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481136, 33.242378, 25.760923>,  <44.642971, 32.963852, 25.998058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481136, 33.242378, 25.760923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416623, 0.436741, 0.797297,
		0.814085, 0.569567, 0.113400,
		-0.404588, 0.696312, -0.592839,
		44.359760, 33.451271, 25.583073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670704, 33.574203, 26.429184>,  <44.642971, 32.963852, 25.998058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670704, 33.574203, 26.429184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405315, 33.654968, 26.141008>,  <44.246082, 33.703426, 25.968103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405315, 33.654968, 26.141008>,  <44.670704, 33.574203, 26.429184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405315, 33.654968, 26.141008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505883, 0.588382, 0.630785,
		0.551256, 0.782968, -0.288233,
		-0.663475, 0.201912, -0.720439,
		44.206272, 33.715542, 25.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493507, 34.368935, 26.509418>,  <44.670704, 33.574203, 26.429184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493507, 34.368935, 26.509418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196560, 34.198418, 26.302666>,  <44.018391, 34.096107, 26.178614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196560, 34.198418, 26.302666>,  <44.493507, 34.368935, 26.509418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196560, 34.198418, 26.302666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667396, 0.538340, 0.514561,
		0.058907, 0.726959, -0.684150,
		-0.742369, -0.426288, -0.516881,
		43.973850, 34.070530, 26.147602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133297, 34.934128, 26.159399>,  <44.493507, 34.368935, 26.509418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133297, 34.934128, 26.159399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877483, 34.627838, 26.186724>,  <43.723995, 34.444065, 26.203117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877483, 34.627838, 26.186724>,  <44.133297, 34.934128, 26.159399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877483, 34.627838, 26.186724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683049, 0.606753, 0.406565,
		-0.352764, 0.213352, -0.911064,
		-0.639532, -0.765723, 0.068311,
		43.685623, 34.398121, 26.207216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533966, 35.181736, 25.891529>,  <44.133297, 34.934128, 26.159399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533966, 35.181736, 25.891529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433430, 34.859909, 26.106749>,  <43.373108, 34.666813, 26.235880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433430, 34.859909, 26.106749>,  <43.533966, 35.181736, 25.891529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433430, 34.859909, 26.106749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725272, 0.524669, 0.445761,
		-0.640943, -0.278195, -0.715402,
		-0.251341, -0.804568, 0.538050,
		43.358028, 34.618538, 26.268164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834305, 35.071884, 25.775211>,  <43.533966, 35.181736, 25.891529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834305, 35.071884, 25.775211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875767, 34.851318, 26.106318>,  <42.900642, 34.718979, 26.304981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875767, 34.851318, 26.106318>,  <42.834305, 35.071884, 25.775211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875767, 34.851318, 26.106318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850831, 0.381864, 0.360923,
		-0.515113, -0.741699, -0.429581,
		0.103655, -0.551417, 0.827764,
		42.906864, 34.685894, 26.354647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222946, 34.635181, 25.882145>,  <42.834305, 35.071884, 25.775211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222946, 34.635181, 25.882145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363831, 34.668385, 26.255037>,  <42.448360, 34.688305, 26.478773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363831, 34.668385, 26.255037>,  <42.222946, 34.635181, 25.882145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363831, 34.668385, 26.255037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908193, 0.270970, 0.319000,
		-0.226128, -0.959002, 0.170824,
		0.352210, 0.083006, 0.932233,
		42.469494, 34.693287, 26.534708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714264, 34.271927, 26.333347>,  <42.222946, 34.635181, 25.882145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714264, 34.271927, 26.333347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922344, 34.514454, 26.573936>,  <42.047192, 34.659969, 26.718290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922344, 34.514454, 26.573936>,  <41.714264, 34.271927, 26.333347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922344, 34.514454, 26.573936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854028, 0.373805, 0.361810,
		-0.005461, -0.701887, 0.712267,
		0.520198, 0.606320, 0.601473,
		42.078403, 34.696350, 26.754379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466331, 33.851578, 26.890167>,  <41.714264, 34.271927, 26.333347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466331, 33.851578, 26.890167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135738, 33.629627, 26.928207>,  <40.937382, 33.496456, 26.951031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135738, 33.629627, 26.928207>,  <41.466331, 33.851578, 26.890167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135738, 33.629627, 26.928207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411753, -0.711004, -0.570028,
		0.383910, -0.431960, 0.816103,
		-0.826482, -0.554872, 0.095101,
		40.887794, 33.463165, 26.956738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706314, 33.161625, 26.989113>,  <41.466331, 33.851578, 26.890167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706314, 33.161625, 26.989113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336178, 33.094620, 26.853062>,  <41.114098, 33.054417, 26.771431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336178, 33.094620, 26.853062>,  <41.706314, 33.161625, 26.989113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336178, 33.094620, 26.853062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329197, -0.800016, -0.501601,
		-0.188085, -0.576120, 0.795430,
		-0.925340, -0.167510, -0.340128,
		41.058575, 33.044369, 26.751022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532131, 32.429050, 27.046646>,  <41.706314, 33.161625, 26.989113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532131, 32.429050, 27.046646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275490, 32.585590, 26.782774>,  <41.121506, 32.679516, 26.624451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275490, 32.585590, 26.782774>,  <41.532131, 32.429050, 27.046646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275490, 32.585590, 26.782774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124816, -0.795311, -0.593212,
		-0.756808, -0.462950, 0.461431,
		-0.641609, 0.391354, -0.659682,
		41.083008, 32.702995, 26.584869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252193, 31.843218, 26.626873>,  <41.532131, 32.429050, 27.046646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252193, 31.843218, 26.626873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147846, 32.166080, 26.415043>,  <41.085239, 32.359798, 26.287945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147846, 32.166080, 26.415043>,  <41.252193, 31.843218, 26.626873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147846, 32.166080, 26.415043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074614, -0.530068, -0.844666,
		-0.962487, -0.259857, 0.078051,
		-0.260865, 0.807157, -0.529573,
		41.069588, 32.408226, 26.256170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888077, 31.677101, 26.069736>,  <41.252193, 31.843218, 26.626873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888077, 31.677101, 26.069736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050915, 32.024410, 25.956329>,  <41.148617, 32.232796, 25.888285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050915, 32.024410, 25.956329>,  <40.888077, 31.677101, 26.069736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050915, 32.024410, 25.956329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263333, -0.408791, -0.873811,
		-0.874604, 0.281062, -0.395059,
		0.407091, 0.868271, -0.283517,
		41.173042, 32.284893, 25.871275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692089, 31.742342, 25.385811>,  <40.888077, 31.677101, 26.069736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692089, 31.742342, 25.385811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983772, 32.014862, 25.411364>,  <41.158783, 32.178375, 25.426695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983772, 32.014862, 25.411364>,  <40.692089, 31.742342, 25.385811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983772, 32.014862, 25.411364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324165, -0.261721, -0.909076,
		-0.602636, 0.683616, -0.411704,
		0.729210, 0.681302, 0.063882,
		41.202534, 32.219254, 25.430529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733486, 31.978510, 24.726311>,  <40.692089, 31.742342, 25.385811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733486, 31.978510, 24.726311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085552, 32.069695, 24.892849>,  <41.296791, 32.124405, 24.992773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085552, 32.069695, 24.892849>,  <40.733486, 31.978510, 24.726311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085552, 32.069695, 24.892849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473736, -0.366861, -0.800617,
		-0.029769, 0.901913, -0.430891,
		0.880164, 0.227962, 0.416347,
		41.349602, 32.138084, 25.017754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230003, 32.220421, 24.158121>,  <40.733486, 31.978510, 24.726311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230003, 32.220421, 24.158121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480007, 32.148724, 24.462025>,  <41.630009, 32.105705, 24.644367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480007, 32.148724, 24.462025>,  <41.230003, 32.220421, 24.158121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480007, 32.148724, 24.462025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616351, -0.483949, -0.621213,
		0.479032, 0.856543, -0.191998,
		0.625012, -0.179243, 0.759758,
		41.667511, 32.094952, 24.689953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884258, 32.563450, 24.006550>,  <41.230003, 32.220421, 24.158121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884258, 32.563450, 24.006550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968052, 32.262695, 24.256601>,  <42.018330, 32.082245, 24.406633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968052, 32.262695, 24.256601>,  <41.884258, 32.563450, 24.006550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968052, 32.262695, 24.256601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513590, -0.459420, -0.724678,
		0.832071, 0.472869, 0.289919,
		0.209483, -0.751883, 0.625131,
		42.030895, 32.037128, 24.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625225, 32.411682, 23.833141>,  <41.884258, 32.563450, 24.006550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625225, 32.411682, 23.833141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468048, 32.106064, 24.037817>,  <42.373741, 31.922693, 24.160624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468048, 32.106064, 24.037817>,  <42.625225, 32.411682, 23.833141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468048, 32.106064, 24.037817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386519, -0.642141, -0.662011,
		0.834385, -0.062354, 0.547643,
		-0.392943, -0.764047, 0.511691,
		42.350166, 31.876850, 24.191324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099213, 31.936543, 24.059374>,  <42.625225, 32.411682, 23.833141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099213, 31.936543, 24.059374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759476, 31.729540, 24.017801>,  <42.555634, 31.605339, 23.992857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759476, 31.729540, 24.017801>,  <43.099213, 31.936543, 24.059374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759476, 31.729540, 24.017801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476743, -0.667589, -0.571875,
		0.226565, -0.535267, 0.813730,
		-0.849344, -0.517507, -0.103933,
		42.504673, 31.574287, 23.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367699, 31.267611, 23.950954>,  <43.099213, 31.936543, 24.059374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367699, 31.267611, 23.950954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986435, 31.213318, 23.842831>,  <42.757675, 31.180742, 23.777956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986435, 31.213318, 23.842831>,  <43.367699, 31.267611, 23.950954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986435, 31.213318, 23.842831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244105, -0.872895, -0.422453,
		-0.178611, -0.468649, 0.865140,
		-0.953158, -0.135730, -0.270309,
		42.700489, 31.172600, 23.761738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114773, 30.531702, 24.062414>,  <43.367699, 31.267611, 23.950954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114773, 30.531702, 24.062414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861305, 30.690546, 23.796852>,  <42.709225, 30.785852, 23.637516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861305, 30.690546, 23.796852>,  <43.114773, 30.531702, 24.062414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861305, 30.690546, 23.796852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170804, -0.765197, -0.620725,
		-0.754509, -0.506733, 0.417058,
		-0.633674, 0.397107, -0.663900,
		42.671204, 30.809679, 23.597681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797634, 29.921211, 23.824867>,  <43.114773, 30.531702, 24.062414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797634, 29.921211, 23.824867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747211, 30.212221, 23.555105>,  <42.716957, 30.386827, 23.393250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747211, 30.212221, 23.555105>,  <42.797634, 29.921211, 23.824867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747211, 30.212221, 23.555105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378265, -0.593213, -0.710643,
		-0.917074, -0.344685, -0.200417,
		-0.126058, 0.727524, -0.674403,
		42.709393, 30.430479, 23.352785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.045181, 37.106678, 18.957644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059715, 36.806564, 19.221689>,  <41.068436, 36.626495, 19.380116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059715, 36.806564, 19.221689>,  <41.045181, 37.106678, 18.957644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059715, 36.806564, 19.221689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684259, 0.462737, 0.563616,
		-0.728333, -0.472169, -0.496576,
		0.036338, -0.750287, 0.660113,
		41.070618, 36.581478, 19.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334404, 36.902836, 19.090654>,  <41.045181, 37.106678, 18.957644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334404, 36.902836, 19.090654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535419, 36.775024, 19.411991>,  <40.656029, 36.698338, 19.604794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535419, 36.775024, 19.411991>,  <40.334404, 36.902836, 19.090654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535419, 36.775024, 19.411991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664166, 0.452183, 0.595327,
		-0.553480, -0.832727, 0.015021,
		0.502537, -0.319525, 0.803343,
		40.686180, 36.679169, 19.652994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821831, 36.657089, 19.469013>,  <40.334404, 36.902836, 19.090654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821831, 36.657089, 19.469013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132435, 36.737698, 19.707817>,  <40.318798, 36.786060, 19.851099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.132435, 36.737698, 19.707817>,  <39.821831, 36.657089, 19.469013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132435, 36.737698, 19.707817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622034, 0.396322, 0.675280,
		-0.100528, -0.895723, 0.433099,
		0.776510, 0.201518, 0.597011,
		40.365387, 36.798153, 19.886921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578465, 36.475048, 20.116726>,  <39.821831, 36.657089, 19.469013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578465, 36.475048, 20.116726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893864, 36.703953, 20.206875>,  <40.083103, 36.841293, 20.260963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893864, 36.703953, 20.206875>,  <39.578465, 36.475048, 20.116726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893864, 36.703953, 20.206875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504197, 0.391585, 0.769705,
		0.352214, -0.720546, 0.597293,
		0.788499, 0.572255, 0.225376,
		40.130413, 36.875629, 20.274487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779079, 36.366226, 20.891680>,  <39.578465, 36.475048, 20.116726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779079, 36.366226, 20.891680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935043, 36.719856, 20.788618>,  <40.028622, 36.932034, 20.726782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.935043, 36.719856, 20.788618>,  <39.779079, 36.366226, 20.891680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935043, 36.719856, 20.788618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426739, 0.421414, 0.800190,
		0.816005, -0.202053, 0.541582,
		0.389911, 0.884073, -0.257652,
		40.052017, 36.985077, 20.711323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246296, 36.647217, 21.487265>,  <39.779079, 36.366226, 20.891680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246296, 36.647217, 21.487265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124172, 36.945068, 21.249844>,  <40.050896, 37.123779, 21.107391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124172, 36.945068, 21.249844>,  <40.246296, 36.647217, 21.487265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124172, 36.945068, 21.249844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435724, 0.444992, 0.782385,
		0.846716, 0.497499, 0.188592,
		-0.305314, 0.744632, -0.593554,
		40.032578, 37.168457, 21.071777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538101, 37.288525, 21.905643>,  <40.246296, 36.647217, 21.487265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538101, 37.288525, 21.905643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249825, 37.407932, 21.655367>,  <40.076859, 37.479576, 21.505201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249825, 37.407932, 21.655367>,  <40.538101, 37.288525, 21.905643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249825, 37.407932, 21.655367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518329, 0.367319, 0.772277,
		0.460369, 0.880887, -0.109991,
		-0.720691, 0.298521, -0.625692,
		40.033619, 37.497490, 21.467659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310780, 38.045292, 22.129749>,  <40.538101, 37.288525, 21.905643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310780, 38.045292, 22.129749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.022835, 37.867153, 21.916780>,  <39.850067, 37.760269, 21.789000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.022835, 37.867153, 21.916780>,  <40.310780, 38.045292, 22.129749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022835, 37.867153, 21.916780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674930, 0.269970, 0.686721,
		-0.162090, 0.853689, -0.494916,
		-0.719859, -0.445344, -0.532421,
		39.806877, 37.733551, 21.757053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776653, 38.499996, 22.007801>,  <40.310780, 38.045292, 22.129749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776653, 38.499996, 22.007801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577736, 38.154175, 21.978823>,  <39.458385, 37.946682, 21.961435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577736, 38.154175, 21.978823>,  <39.776653, 38.499996, 22.007801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577736, 38.154175, 21.978823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685109, 0.340101, 0.644172,
		-0.532279, 0.369980, -0.761442,
		-0.497298, -0.864550, -0.072448,
		39.428547, 37.894810, 21.957088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175613, 38.691128, 22.230145>,  <39.776653, 38.499996, 22.007801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175613, 38.691128, 22.230145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148315, 38.292244, 22.242210>,  <39.131939, 38.052914, 22.249449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148315, 38.292244, 22.242210>,  <39.175613, 38.691128, 22.230145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148315, 38.292244, 22.242210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662688, 0.067908, 0.745811,
		-0.745780, 0.030907, -0.665475,
		-0.068242, -0.997213, 0.030163,
		39.127842, 37.993080, 22.251259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449776, 38.541645, 22.484112>,  <39.175613, 38.691128, 22.230145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449776, 38.541645, 22.484112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624638, 38.184113, 22.524036>,  <38.729553, 37.969593, 22.547991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624638, 38.184113, 22.524036>,  <38.449776, 38.541645, 22.484112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624638, 38.184113, 22.524036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433510, -0.112175, 0.894140,
		-0.788014, -0.434145, -0.436523,
		0.437153, -0.893831, 0.099810,
		38.755783, 37.915962, 22.553980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943203, 38.076908, 22.540380>,  <38.449776, 38.541645, 22.484112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943203, 38.076908, 22.540380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262745, 37.947853, 22.743450>,  <38.454472, 37.870419, 22.865292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262745, 37.947853, 22.743450>,  <37.943203, 38.076908, 22.540380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262745, 37.947853, 22.743450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526172, 0.034197, 0.849690,
		-0.291506, -0.945904, -0.142446,
		0.798854, -0.322641, 0.507676,
		38.502399, 37.851059, 22.895754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643108, 37.695126, 22.991745>,  <37.943203, 38.076908, 22.540380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643108, 37.695126, 22.991745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013199, 37.746056, 23.134714>,  <38.235252, 37.776615, 23.220495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013199, 37.746056, 23.134714>,  <37.643108, 37.695126, 22.991745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013199, 37.746056, 23.134714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357091, -0.026223, 0.933701,
		0.128257, -0.991514, 0.021205,
		0.925222, 0.127326, 0.357424,
		38.290764, 37.784252, 23.241941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782665, 37.197552, 23.449965>,  <37.643108, 37.695126, 22.991745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782665, 37.197552, 23.449965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012680, 37.513821, 23.534019>,  <38.150688, 37.703583, 23.584454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012680, 37.513821, 23.534019>,  <37.782665, 37.197552, 23.449965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012680, 37.513821, 23.534019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509033, 0.144701, 0.848497,
		0.640480, -0.594888, 0.485690,
		0.575040, 0.790677, 0.210139,
		38.185192, 37.751022, 23.597061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649361, 36.581860, 23.608364>,  <37.782665, 37.197552, 23.449965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649361, 36.581860, 23.608364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424679, 36.254696, 23.658188>,  <37.289871, 36.058399, 23.688082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424679, 36.254696, 23.658188>,  <37.649361, 36.581860, 23.608364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424679, 36.254696, 23.658188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295435, -0.338919, -0.893226,
		0.772794, -0.464926, 0.432010,
		-0.561700, -0.817911, 0.124559,
		37.256168, 36.009323, 23.695555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064186, 36.017197, 23.562708>,  <37.649361, 36.581860, 23.608364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064186, 36.017197, 23.562708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706615, 35.862831, 23.471523>,  <37.492073, 35.770214, 23.416813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706615, 35.862831, 23.471523>,  <38.064186, 36.017197, 23.562708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706615, 35.862831, 23.471523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376546, -0.370726, -0.848985,
		0.243120, -0.844770, 0.476715,
		-0.893927, -0.385910, -0.227964,
		37.438438, 35.747059, 23.403133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179340, 35.261543, 23.407007>,  <38.064186, 36.017197, 23.562708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179340, 35.261543, 23.407007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862629, 35.402550, 23.207479>,  <37.672604, 35.487152, 23.087763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862629, 35.402550, 23.207479>,  <38.179340, 35.261543, 23.407007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862629, 35.402550, 23.207479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365449, -0.380962, -0.849302,
		-0.489423, -0.854752, 0.172811,
		-0.791777, 0.352515, -0.498821,
		37.625095, 35.508305, 23.057833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980694, 34.711071, 23.042995>,  <38.179340, 35.261543, 23.407007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980694, 34.711071, 23.042995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782486, 35.002213, 22.853390>,  <37.663563, 35.176899, 22.739626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782486, 35.002213, 22.853390>,  <37.980694, 34.711071, 23.042995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782486, 35.002213, 22.853390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189696, -0.441869, -0.876794,
		-0.847629, -0.524388, 0.080884,
		-0.495520, 0.727853, -0.474015,
		37.633831, 35.220570, 22.711185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657383, 34.330719, 22.516733>,  <37.980694, 34.711071, 23.042995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657383, 34.330719, 22.516733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609215, 34.712898, 22.408939>,  <37.580315, 34.942207, 22.344263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.609215, 34.712898, 22.408939>,  <37.657383, 34.330719, 22.516733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609215, 34.712898, 22.408939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204039, -0.241841, -0.948620,
		-0.971528, -0.169217, -0.165826,
		-0.120419, 0.955447, -0.269483,
		37.573090, 34.999531, 22.328094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211014, 34.250717, 22.008181>,  <37.657383, 34.330719, 22.516733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211014, 34.250717, 22.008181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398396, 34.601486, 21.965176>,  <37.510822, 34.811947, 21.939373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398396, 34.601486, 21.965176>,  <37.211014, 34.250717, 22.008181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398396, 34.601486, 21.965176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102077, -0.174600, -0.979334,
		-0.877572, 0.447797, -0.171305,
		0.468452, 0.876922, -0.107515,
		37.538933, 34.864563, 21.932920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074516, 34.410114, 21.326818>,  <37.211014, 34.250717, 22.008181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074516, 34.410114, 21.326818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.377522, 34.658409, 21.407663>,  <37.559326, 34.807388, 21.456169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.377522, 34.658409, 21.407663>,  <37.074516, 34.410114, 21.326818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377522, 34.658409, 21.407663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415484, -0.219635, -0.882685,
		-0.503527, 0.752623, -0.424285,
		0.757518, 0.620740, 0.202111,
		37.604778, 34.844631, 21.468296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194469, 34.661110, 20.709637>,  <37.074516, 34.410114, 21.326818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194469, 34.661110, 20.709637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527309, 34.724480, 20.922245>,  <37.727013, 34.762501, 21.049810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527309, 34.724480, 20.922245>,  <37.194469, 34.661110, 20.709637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527309, 34.724480, 20.922245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554276, -0.271785, -0.786709,
		0.019823, 0.949228, -0.313964,
		0.832097, 0.158427, 0.531522,
		37.776939, 34.772007, 21.081701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582409, 35.151432, 20.301702>,  <37.194469, 34.661110, 20.709637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582409, 35.151432, 20.301702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805161, 34.917522, 20.537643>,  <37.938812, 34.777176, 20.679209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805161, 34.917522, 20.537643>,  <37.582409, 35.151432, 20.301702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805161, 34.917522, 20.537643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602316, -0.204689, -0.771568,
		0.571930, 0.784947, 0.238233,
		0.556876, -0.584775, 0.589854,
		37.972225, 34.742088, 20.714600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246433, 35.150223, 19.999430>,  <37.582409, 35.151432, 20.301702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246433, 35.150223, 19.999430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296066, 34.840710, 20.247902>,  <38.325848, 34.655003, 20.396986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296066, 34.840710, 20.247902>,  <38.246433, 35.150223, 19.999430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296066, 34.840710, 20.247902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644566, -0.413101, -0.643337,
		0.754412, 0.480220, 0.447495,
		0.124083, -0.773781, 0.621182,
		38.333290, 34.608574, 20.434256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974987, 35.012295, 20.010313>,  <38.246433, 35.150223, 19.999430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974987, 35.012295, 20.010313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823467, 34.666142, 20.141537>,  <38.732555, 34.458450, 20.220272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823467, 34.666142, 20.141537>,  <38.974987, 35.012295, 20.010313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823467, 34.666142, 20.141537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602340, -0.499653, -0.622522,
		0.702636, -0.038207, 0.710523,
		-0.378800, -0.865382, 0.328061,
		38.709827, 34.406528, 20.239954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615372, 34.660709, 20.108284>,  <38.974987, 35.012295, 20.010313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615372, 34.660709, 20.108284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301044, 34.419407, 20.053764>,  <39.112450, 34.274624, 20.021051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301044, 34.419407, 20.053764>,  <39.615372, 34.660709, 20.108284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301044, 34.419407, 20.053764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553264, -0.587195, -0.590848,
		0.276398, -0.539706, 0.795186,
		-0.785814, -0.603257, -0.136300,
		39.065300, 34.238430, 20.012875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709953, 33.957207, 20.363512>,  <39.615372, 34.660709, 20.108284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709953, 33.957207, 20.363512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410263, 33.891678, 20.106819>,  <39.230450, 33.852360, 19.952803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410263, 33.891678, 20.106819>,  <39.709953, 33.957207, 20.363512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410263, 33.891678, 20.106819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613024, -0.538315, -0.578289,
		-0.250720, -0.826668, 0.503745,
		-0.749226, -0.163819, -0.641734,
		39.185493, 33.842533, 19.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887081, 33.219082, 20.222334>,  <39.709953, 33.957207, 20.363512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887081, 33.219082, 20.222334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639366, 33.359108, 19.941210>,  <39.490738, 33.443123, 19.772535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639366, 33.359108, 19.941210>,  <39.887081, 33.219082, 20.222334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639366, 33.359108, 19.941210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455927, -0.568412, -0.684864,
		-0.639231, -0.744556, 0.192406,
		-0.619285, 0.350063, -0.702810,
		39.453579, 33.464127, 19.730368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360161, 32.684246, 20.384470>,  <39.887081, 33.219082, 20.222334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360161, 32.684246, 20.384470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285591, 32.321041, 20.534538>,  <39.240849, 32.103119, 20.624580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285591, 32.321041, 20.534538>,  <39.360161, 32.684246, 20.384470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285591, 32.321041, 20.534538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420069, 0.418868, 0.805042,
		-0.888139, -0.007522, -0.459514,
		-0.186420, -0.908016, 0.375173,
		39.229664, 32.048637, 20.647091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828083, 32.853252, 20.849981>,  <39.360161, 32.684246, 20.384470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828083, 32.853252, 20.849981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898495, 32.474461, 20.957491>,  <38.940742, 32.247185, 21.021997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898495, 32.474461, 20.957491>,  <38.828083, 32.853252, 20.849981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898495, 32.474461, 20.957491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282616, 0.212927, 0.935302,
		-0.942943, -0.240605, -0.230149,
		0.176033, -0.946980, 0.268776,
		38.951305, 32.190365, 21.038124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212921, 32.666443, 21.114285>,  <38.828083, 32.853252, 20.849981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212921, 32.666443, 21.114285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497112, 32.426105, 21.260826>,  <38.667625, 32.281902, 21.348751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497112, 32.426105, 21.260826>,  <38.212921, 32.666443, 21.114285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497112, 32.426105, 21.260826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372584, 0.120474, 0.920145,
		-0.596999, -0.790236, -0.138271,
		0.710474, -0.600843, 0.366352,
		38.710255, 32.245853, 21.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856117, 32.247890, 21.669519>,  <38.212921, 32.666443, 21.114285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856117, 32.247890, 21.669519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243244, 32.194565, 21.754902>,  <38.475521, 32.162571, 21.806131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243244, 32.194565, 21.754902>,  <37.856117, 32.247890, 21.669519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243244, 32.194565, 21.754902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207443, 0.057646, 0.976547,
		-0.142492, -0.989396, 0.028136,
		0.967814, -0.133313, 0.213458,
		38.533588, 32.154572, 21.818939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953835, 31.669477, 22.198059>,  <37.856117, 32.247890, 21.669519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953835, 31.669477, 22.198059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274216, 31.907969, 22.219940>,  <38.466442, 32.051064, 22.233068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274216, 31.907969, 22.219940>,  <37.953835, 31.669477, 22.198059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274216, 31.907969, 22.219940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183976, 0.158143, 0.970126,
		0.569764, -0.787086, 0.236356,
		0.800950, 0.596227, 0.054701,
		38.514500, 32.086838, 22.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440830, 31.461891, 22.679623>,  <37.953835, 31.669477, 22.198059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440830, 31.461891, 22.679623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534042, 31.850454, 22.661448>,  <38.589970, 32.083591, 22.650543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534042, 31.850454, 22.661448>,  <38.440830, 31.461891, 22.679623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534042, 31.850454, 22.661448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163741, 0.085252, 0.982813,
		0.958585, -0.221588, 0.178925,
		0.233033, 0.971407, -0.045438,
		38.603951, 32.141876, 22.647816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841805, 31.552856, 23.293909>,  <38.440830, 31.461891, 22.679623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841805, 31.552856, 23.293909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759544, 31.917154, 23.150658>,  <38.710190, 32.135735, 23.064707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.759544, 31.917154, 23.150658>,  <38.841805, 31.552856, 23.293909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759544, 31.917154, 23.150658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003824, 0.366694, 0.930334,
		0.978618, 0.189953, -0.078893,
		-0.205649, 0.910743, -0.358127,
		38.697849, 32.190376, 23.043219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330677, 32.143745, 23.645338>,  <38.841805, 31.552856, 23.293909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330677, 32.143745, 23.645338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044014, 32.360561, 23.469797>,  <38.872017, 32.490650, 23.364471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044014, 32.360561, 23.469797>,  <39.330677, 32.143745, 23.645338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044014, 32.360561, 23.469797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234201, 0.405668, 0.883506,
		0.656925, 0.735952, -0.163779,
		-0.716658, 0.542040, -0.438854,
		38.829018, 32.523174, 23.338140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439049, 32.809650, 23.892111>,  <39.330677, 32.143745, 23.645338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439049, 32.809650, 23.892111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064014, 32.778908, 23.756447>,  <38.838993, 32.760460, 23.675049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064014, 32.778908, 23.756447>,  <39.439049, 32.809650, 23.892111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064014, 32.778908, 23.756447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313200, 0.610491, 0.727466,
		0.151143, 0.788285, -0.596458,
		-0.937583, -0.076859, -0.339162,
		38.782738, 32.755852, 23.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150513, 33.391357, 24.094227>,  <39.439049, 32.809650, 23.892111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150513, 33.391357, 24.094227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830620, 33.163303, 24.018995>,  <38.638683, 33.026470, 23.973856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830620, 33.163303, 24.018995>,  <39.150513, 33.391357, 24.094227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830620, 33.163303, 24.018995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476482, 0.412183, 0.776575,
		-0.365229, 0.710669, -0.601296,
		-0.799732, -0.570135, -0.188080,
		38.590698, 32.992264, 23.962572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572247, 33.893456, 24.224073>,  <39.150513, 33.391357, 24.094227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572247, 33.893456, 24.224073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379375, 33.543377, 24.239710>,  <38.263653, 33.333328, 24.249092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379375, 33.543377, 24.239710>,  <38.572247, 33.893456, 24.224073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379375, 33.543377, 24.239710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348316, 0.232461, 0.908096,
		-0.803853, 0.424248, -0.416934,
		-0.482179, -0.875200, 0.039092,
		38.234722, 33.280815, 24.251438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826157, 33.990177, 24.447382>,  <38.572247, 33.893456, 24.224073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826157, 33.990177, 24.447382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891201, 33.615437, 24.571228>,  <37.930229, 33.390591, 24.645536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891201, 33.615437, 24.571228>,  <37.826157, 33.990177, 24.447382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891201, 33.615437, 24.571228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463115, 0.204609, 0.862357,
		-0.871252, -0.283619, -0.400599,
		0.162614, -0.936854, 0.309615,
		37.939987, 33.334381, 24.664112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270706, 33.804932, 24.785881>,  <37.826157, 33.990177, 24.447382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270706, 33.804932, 24.785881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511955, 33.508053, 24.902767>,  <37.656704, 33.329926, 24.972898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511955, 33.508053, 24.902767>,  <37.270706, 33.804932, 24.785881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511955, 33.508053, 24.902767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376092, 0.058469, 0.924736,
		-0.703421, -0.667627, -0.243871,
		0.603120, -0.742197, 0.292217,
		37.692890, 33.285393, 24.990433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789001, 33.216679, 25.110563>,  <37.270706, 33.804932, 24.785881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789001, 33.216679, 25.110563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160793, 33.198097, 25.256933>,  <37.383869, 33.186951, 25.344755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160793, 33.198097, 25.256933>,  <36.789001, 33.216679, 25.110563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160793, 33.198097, 25.256933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362290, 0.071474, 0.929321,
		-0.069322, -0.996360, 0.049606,
		0.929484, -0.046450, 0.365926,
		37.439640, 33.184162, 25.366711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.344105, 29.625818, 23.280775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510315, 29.939260, 23.096039>,  <42.610043, 30.127325, 22.985197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510315, 29.939260, 23.096039>,  <42.344105, 29.625818, 23.280775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510315, 29.939260, 23.096039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191157, -0.571646, -0.797923,
		-0.889267, 0.243275, -0.387326,
		0.415528, 0.783606, -0.461842,
		42.634972, 30.174343, 22.957485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022526, 29.682623, 22.708349>,  <42.344105, 29.625818, 23.280775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022526, 29.682623, 22.708349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.358810, 29.888140, 22.639965>,  <42.560581, 30.011450, 22.598934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.358810, 29.888140, 22.639965>,  <42.022526, 29.682623, 22.708349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358810, 29.888140, 22.639965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139950, -0.511164, -0.848013,
		-0.523090, 0.689006, -0.501645,
		0.840709, 0.513792, -0.170958,
		42.611023, 30.042278, 22.588678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011681, 29.792637, 21.980864>,  <42.022526, 29.682623, 22.708349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011681, 29.792637, 21.980864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382244, 29.892134, 22.093929>,  <42.604580, 29.951832, 22.161768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382244, 29.892134, 22.093929>,  <42.011681, 29.792637, 21.980864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382244, 29.892134, 22.093929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369237, -0.453184, -0.811350,
		-0.073718, 0.856010, -0.511677,
		0.926407, 0.248741, 0.282663,
		42.660168, 29.966757, 22.178728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461605, 29.984869, 21.336689>,  <42.011681, 29.792637, 21.980864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461605, 29.984869, 21.336689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754337, 29.886448, 21.590895>,  <42.929977, 29.827396, 21.743418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.754337, 29.886448, 21.590895>,  <42.461605, 29.984869, 21.336689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754337, 29.886448, 21.590895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429851, -0.556974, -0.710639,
		0.528819, 0.793246, -0.301847,
		0.731832, -0.246051, 0.635516,
		42.973888, 29.812634, 21.781549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994938, 30.032652, 20.950930>,  <42.461605, 29.984869, 21.336689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994938, 30.032652, 20.950930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096603, 29.792707, 21.254395>,  <43.157604, 29.648741, 21.436474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096603, 29.792707, 21.254395>,  <42.994938, 30.032652, 20.950930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096603, 29.792707, 21.254395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565569, -0.544136, -0.619716,
		0.784559, 0.586585, 0.200963,
		0.254165, -0.599862, 0.758661,
		43.172852, 29.612749, 21.481993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690159, 29.936323, 20.859501>,  <42.994938, 30.032652, 20.950930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690159, 29.936323, 20.859501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580406, 29.635983, 21.099813>,  <43.514553, 29.455778, 21.244001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580406, 29.635983, 21.099813>,  <43.690159, 29.936323, 20.859501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580406, 29.635983, 21.099813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434939, -0.654101, -0.618853,
		0.857638, 0.091500, 0.506048,
		-0.274382, -0.750852, 0.600779,
		43.498093, 29.410727, 21.280046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269108, 29.597855, 21.036377>,  <43.690159, 29.936323, 20.859501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269108, 29.597855, 21.036377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.992676, 29.310640, 21.069439>,  <43.826817, 29.138311, 21.089275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.992676, 29.310640, 21.069439>,  <44.269108, 29.597855, 21.036377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992676, 29.310640, 21.069439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539243, -0.588358, -0.602538,
		0.481274, -0.371833, 0.793799,
		-0.691081, -0.718036, 0.082653,
		43.785351, 29.095230, 21.094234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659172, 28.989298, 20.913647>,  <44.269108, 29.597855, 21.036377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659172, 28.989298, 20.913647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274029, 28.912924, 20.837275>,  <44.042942, 28.867100, 20.791452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274029, 28.912924, 20.837275>,  <44.659172, 28.989298, 20.913647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274029, 28.912924, 20.837275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265844, -0.546467, -0.794167,
		0.047299, -0.815425, 0.576928,
		-0.962855, -0.190936, -0.190928,
		43.985172, 28.855642, 20.779997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728065, 28.382318, 20.703651>,  <44.659172, 28.989298, 20.913647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728065, 28.382318, 20.703651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.356823, 28.466553, 20.580835>,  <44.134079, 28.517094, 20.507145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.356823, 28.466553, 20.580835>,  <44.728065, 28.382318, 20.703651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356823, 28.466553, 20.580835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181185, -0.464984, -0.866581,
		-0.325256, -0.859910, 0.393400,
		-0.928106, 0.210582, -0.307042,
		44.078392, 28.529728, 20.488722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524059, 27.804916, 20.372974>,  <44.728065, 28.382318, 20.703651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524059, 27.804916, 20.372974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.295311, 28.102493, 20.234692>,  <44.158062, 28.281040, 20.151722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.295311, 28.102493, 20.234692>,  <44.524059, 27.804916, 20.372974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295311, 28.102493, 20.234692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220768, -0.266302, -0.938267,
		-0.790080, -0.612888, -0.011948,
		-0.571871, 0.743943, -0.345706,
		44.123749, 28.325676, 20.130980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025425, 27.503231, 19.938490>,  <44.524059, 27.804916, 20.372974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025425, 27.503231, 19.938490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071114, 27.888096, 19.839535>,  <44.098526, 28.119015, 19.780161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071114, 27.888096, 19.839535>,  <44.025425, 27.503231, 19.938490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071114, 27.888096, 19.839535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201870, -0.266301, -0.942514,
		-0.972730, 0.057712, -0.224647,
		0.114218, 0.962161, -0.247389,
		44.105377, 28.176744, 19.765318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675140, 27.595224, 19.249931>,  <44.025425, 27.503231, 19.938490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675140, 27.595224, 19.249931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.908623, 27.914942, 19.307076>,  <44.048714, 28.106773, 19.341362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.908623, 27.914942, 19.307076>,  <43.675140, 27.595224, 19.249931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908623, 27.914942, 19.307076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469786, -0.188949, -0.862322,
		-0.662256, 0.570461, -0.485789,
		0.583710, 0.799295, 0.142861,
		44.083736, 28.154730, 19.349934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557156, 28.066710, 18.673721>,  <43.675140, 27.595224, 19.249931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557156, 28.066710, 18.673721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923721, 28.131796, 18.819983>,  <44.143661, 28.170849, 18.907740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923721, 28.131796, 18.819983>,  <43.557156, 28.066710, 18.673721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923721, 28.131796, 18.819983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385039, -0.109191, -0.916418,
		-0.109191, 0.980612, -0.162717,
		0.916418, 0.162717, 0.365651,
		44.198647, 28.180611, 18.929678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870213, 28.528229, 18.242582>,  <43.557156, 28.066710, 18.673721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870213, 28.528229, 18.242582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103428, 28.241590, 18.395716>,  <44.243359, 28.069609, 18.487595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103428, 28.241590, 18.395716>,  <43.870213, 28.528229, 18.242582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103428, 28.241590, 18.395716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236938, -0.300751, -0.923802,
		0.777127, 0.629319, -0.005562,
		0.583039, -0.716594, 0.382831,
		44.278339, 28.026613, 18.510565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520012, 29.253902, 18.234392>,  <43.870213, 28.528229, 18.242582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520012, 29.253902, 18.234392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.347988, 29.391237, 17.900406>,  <43.244774, 29.473639, 17.700014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.347988, 29.391237, 17.900406>,  <43.520012, 29.253902, 18.234392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347988, 29.391237, 17.900406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783016, 0.318500, 0.534269,
		0.449371, 0.883559, 0.131865,
		-0.430059, 0.343338, -0.834966,
		43.218971, 29.494238, 17.649916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532444, 29.984282, 18.246338>,  <43.520012, 29.253902, 18.234392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532444, 29.984282, 18.246338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229687, 29.879393, 18.006889>,  <43.048031, 29.816460, 17.863220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229687, 29.879393, 18.006889>,  <43.532444, 29.984282, 18.246338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229687, 29.879393, 18.006889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644852, 0.448485, 0.618892,
		0.106184, 0.854459, -0.508553,
		-0.756896, -0.262225, -0.598621,
		43.002617, 29.800726, 17.827303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192337, 30.582932, 18.237562>,  <43.532444, 29.984282, 18.246338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192337, 30.582932, 18.237562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.914383, 30.347069, 18.072908>,  <42.747612, 30.205551, 17.974115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.914383, 30.347069, 18.072908>,  <43.192337, 30.582932, 18.237562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914383, 30.347069, 18.072908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718265, 0.597063, 0.357228,
		0.035130, 0.543894, -0.838418,
		-0.694883, -0.589657, -0.411635,
		42.705917, 30.170172, 17.949417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633331, 30.976973, 18.196575>,  <43.192337, 30.582932, 18.237562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633331, 30.976973, 18.196575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465649, 30.616375, 18.153540>,  <42.365040, 30.400017, 18.127718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465649, 30.616375, 18.153540>,  <42.633331, 30.976973, 18.196575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465649, 30.616375, 18.153540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866055, 0.361509, 0.345339,
		-0.272427, 0.237945, -0.932290,
		-0.419203, -0.901495, -0.107589,
		42.339890, 30.345926, 18.121264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041397, 31.082489, 17.937407>,  <42.633331, 30.976973, 18.196575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041397, 31.082489, 17.937407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.011269, 30.729799, 18.123692>,  <41.993191, 30.518185, 18.235462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.011269, 30.729799, 18.123692>,  <42.041397, 31.082489, 17.937407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011269, 30.729799, 18.123692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779363, 0.343394, 0.524093,
		-0.622029, -0.323483, -0.713049,
		-0.075321, -0.881725, 0.465711,
		41.988670, 30.465282, 18.263405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322849, 30.902096, 17.855480>,  <42.041397, 31.082489, 17.937407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322849, 30.902096, 17.855480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.482311, 30.722410, 18.175301>,  <41.577988, 30.614599, 18.367193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.482311, 30.722410, 18.175301>,  <41.322849, 30.902096, 17.855480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482311, 30.722410, 18.175301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847175, 0.153516, 0.508653,
		-0.351237, -0.880136, -0.319362,
		0.398657, -0.449214, 0.799550,
		41.601910, 30.587646, 18.415165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731388, 30.656492, 18.057405>,  <41.322849, 30.902096, 17.855480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731388, 30.656492, 18.057405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.991257, 30.622791, 18.359619>,  <41.147179, 30.602571, 18.540947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.991257, 30.622791, 18.359619>,  <40.731388, 30.656492, 18.057405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991257, 30.622791, 18.359619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758666, -0.008414, 0.651425,
		-0.048542, -0.996407, -0.069403,
		0.649668, -0.084275, 0.755532,
		41.186157, 30.597515, 18.586279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537174, 30.038536, 18.377760>,  <40.731388, 30.656492, 18.057405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537174, 30.038536, 18.377760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.735699, 30.251884, 18.651751>,  <40.854813, 30.379894, 18.816145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.735699, 30.251884, 18.651751>,  <40.537174, 30.038536, 18.377760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735699, 30.251884, 18.651751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815638, 0.016240, 0.578335,
		0.297343, -0.845725, 0.443098,
		0.496308, 0.533371, 0.684977,
		40.884590, 30.411896, 18.857244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300220, 29.824984, 19.069704>,  <40.537174, 30.038536, 18.377760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300220, 29.824984, 19.069704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475288, 30.174900, 19.152824>,  <40.580330, 30.384850, 19.202698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475288, 30.174900, 19.152824>,  <40.300220, 29.824984, 19.069704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475288, 30.174900, 19.152824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616758, 0.123921, 0.777337,
		0.654258, -0.468381, 0.593772,
		0.437671, 0.874792, 0.207802,
		40.606590, 30.437338, 19.215164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282749, 29.897377, 19.869328>,  <40.300220, 29.824984, 19.069704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282749, 29.897377, 19.869328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 30.272409, 19.733068>,  <40.327557, 30.497429, 19.651312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 30.272409, 19.733068>,  <40.282749, 29.897377, 19.869328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310753, 30.272409, 19.733068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644718, 0.303112, 0.701756,
		0.761207, 0.170491, 0.625697,
		0.070013, 0.937580, -0.340649,
		40.331757, 30.553684, 19.630875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351131, 30.373240, 20.442194>,  <40.282749, 29.897377, 19.869328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351131, 30.373240, 20.442194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236786, 30.603941, 20.136086>,  <40.168179, 30.742361, 19.952421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236786, 30.603941, 20.136086>,  <40.351131, 30.373240, 20.442194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236786, 30.603941, 20.136086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501478, 0.590477, 0.632342,
		0.816580, 0.564528, 0.120436,
		-0.285860, 0.576754, -0.765270,
		40.151028, 30.776968, 19.906504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275791, 30.925476, 20.809780>,  <40.351131, 30.373240, 20.442194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275791, 30.925476, 20.809780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106247, 31.034971, 20.464432>,  <40.004520, 31.100668, 20.257223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106247, 31.034971, 20.464432>,  <40.275791, 30.925476, 20.809780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106247, 31.034971, 20.464432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632556, 0.592775, 0.498488,
		0.648240, 0.757421, -0.078100,
		-0.423861, 0.273736, -0.863372,
		39.979088, 31.117092, 20.205420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354729, 31.726643, 20.743511>,  <40.275791, 30.925476, 20.809780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354729, 31.726643, 20.743511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049519, 31.602175, 20.516895>,  <39.866394, 31.527494, 20.380926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049519, 31.602175, 20.516895>,  <40.354729, 31.726643, 20.743511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049519, 31.602175, 20.516895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597351, 0.674288, 0.434175,
		0.246910, 0.669709, -0.700375,
		-0.763025, -0.311168, -0.566540,
		39.820610, 31.508825, 20.346933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044189, 32.324516, 20.431503>,  <40.354729, 31.726643, 20.743511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044189, 32.324516, 20.431503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781681, 32.023052, 20.445971>,  <39.624176, 31.842175, 20.454651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781681, 32.023052, 20.445971>,  <40.044189, 32.324516, 20.431503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781681, 32.023052, 20.445971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575671, 0.531120, 0.621703,
		-0.487761, 0.387184, -0.782418,
		-0.656271, -0.753658, 0.036169,
		39.584801, 31.796955, 20.456821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780148, 32.650318, 19.759007>,  <40.044189, 32.324516, 20.431503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780148, 32.650318, 19.759007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641827, 32.942543, 19.523479>,  <39.558834, 33.117878, 19.382164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641827, 32.942543, 19.523479>,  <39.780148, 32.650318, 19.759007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641827, 32.942543, 19.523479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522399, -0.371383, -0.767577,
		-0.779437, -0.573025, -0.253220,
		-0.345799, 0.730559, -0.588817,
		39.538086, 33.161713, 19.346834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532169, 32.331417, 19.083225>,  <39.780148, 32.650318, 19.759007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532169, 32.331417, 19.083225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621677, 32.713078, 19.003706>,  <39.675385, 32.942074, 18.955994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621677, 32.713078, 19.003706>,  <39.532169, 32.331417, 19.083225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621677, 32.713078, 19.003706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363078, -0.270899, -0.891509,
		-0.904489, 0.127315, -0.407051,
		0.223772, 0.954152, -0.198800,
		39.688808, 32.999325, 18.944067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513237, 32.421722, 18.369650>,  <39.532169, 32.331417, 19.083225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513237, 32.421722, 18.369650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.674957, 32.778175, 18.452047>,  <39.771988, 32.992046, 18.501486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.674957, 32.778175, 18.452047>,  <39.513237, 32.421722, 18.369650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674957, 32.778175, 18.452047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433305, 0.011729, -0.901171,
		-0.805475, 0.453600, -0.381388,
		0.404298, 0.891128, 0.205995,
		39.796246, 33.045513, 18.513845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503090, 32.830486, 17.758879>,  <39.513237, 32.421722, 18.369650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503090, 32.830486, 17.758879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808273, 32.943279, 17.991562>,  <39.991383, 33.010956, 18.131172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808273, 32.943279, 17.991562>,  <39.503090, 32.830486, 17.758879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808273, 32.943279, 17.991562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639106, -0.193767, -0.744311,
		-0.097167, 0.939649, -0.328052,
		0.762956, 0.281982, 0.581707,
		40.037159, 33.027874, 18.166075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011253, 33.166813, 17.339344>,  <39.503090, 32.830486, 17.758879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011253, 33.166813, 17.339344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.222466, 33.057507, 17.660967>,  <40.349194, 32.991924, 17.853941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.222466, 33.057507, 17.660967>,  <40.011253, 33.166813, 17.339344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222466, 33.057507, 17.660967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773173, -0.236939, -0.588271,
		0.351268, 0.932301, 0.086171,
		0.528029, -0.273266, 0.804059,
		40.380875, 32.975525, 17.902185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647308, 33.387589, 17.117546>,  <40.011253, 33.166813, 17.339344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647308, 33.387589, 17.117546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.731667, 33.149578, 17.427763>,  <40.782280, 33.006771, 17.613894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.731667, 33.149578, 17.427763>,  <40.647308, 33.387589, 17.117546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731667, 33.149578, 17.427763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772679, -0.384491, -0.505109,
		0.598742, 0.705770, 0.378678,
		0.210892, -0.595026, 0.775544,
		40.794933, 32.971069, 17.660425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385853, 33.510086, 17.351423>,  <40.647308, 33.387589, 17.117546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385853, 33.510086, 17.351423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258549, 33.142181, 17.443298>,  <41.182167, 32.921440, 17.498423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.258549, 33.142181, 17.443298>,  <41.385853, 33.510086, 17.351423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258549, 33.142181, 17.443298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809495, -0.389762, -0.439094,
		0.493383, 0.046183, 0.868585,
		-0.318263, -0.919757, 0.229686,
		41.163071, 32.866253, 17.512205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626266, 33.785797, 17.960062>,  <41.385853, 33.510086, 17.351423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626266, 33.785797, 17.960062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938381, 34.030148, 18.013708>,  <42.125648, 34.176758, 18.045895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938381, 34.030148, 18.013708>,  <41.626266, 33.785797, 17.960062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938381, 34.030148, 18.013708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551175, 0.570319, 0.609050,
		0.295564, -0.549155, 0.781710,
		0.780287, 0.610873, 0.134114,
		42.172466, 34.213409, 18.053942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585464, 33.917889, 18.697334>,  <41.626266, 33.785797, 17.960062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585464, 33.917889, 18.697334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.813259, 34.204311, 18.535862>,  <41.949936, 34.376163, 18.438978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.813259, 34.204311, 18.535862>,  <41.585464, 33.917889, 18.697334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813259, 34.204311, 18.535862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341782, 0.652894, 0.675954,
		0.747581, -0.246972, 0.616545,
		0.569481, 0.716054, -0.403681,
		41.984104, 34.419128, 18.414759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877857, 34.329235, 19.337498>,  <41.585464, 33.917889, 18.697334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877857, 34.329235, 19.337498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916496, 34.571079, 19.021240>,  <41.939678, 34.716187, 18.831486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916496, 34.571079, 19.021240>,  <41.877857, 34.329235, 19.337498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916496, 34.571079, 19.021240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390787, 0.753608, 0.528546,
		0.915399, 0.257919, 0.309067,
		0.096594, 0.604610, -0.790643,
		41.945473, 34.752460, 18.784048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989655, 34.874813, 19.650877>,  <41.877857, 34.329235, 19.337498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989655, 34.874813, 19.650877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.888260, 35.008369, 19.287722>,  <41.827423, 35.088505, 19.069828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.888260, 35.008369, 19.287722>,  <41.989655, 34.874813, 19.650877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888260, 35.008369, 19.287722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419823, 0.807572, 0.414217,
		0.871490, 0.486149, -0.064529,
		-0.253483, 0.333895, -0.907888,
		41.812214, 35.108540, 19.015356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345142, 35.503361, 19.581236>,  <41.989655, 34.874813, 19.650877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345142, 35.503361, 19.581236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.026981, 35.514614, 19.339064>,  <41.836086, 35.521366, 19.193760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.026981, 35.514614, 19.339064>,  <42.345142, 35.503361, 19.581236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026981, 35.514614, 19.339064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306110, 0.843506, 0.441356,
		0.523099, 0.536383, -0.662314,
		-0.795402, 0.028132, -0.605429,
		41.788361, 35.523052, 19.157434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261047, 36.251511, 19.297487>,  <42.345142, 35.503361, 19.581236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261047, 36.251511, 19.297487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.898457, 36.098999, 19.224905>,  <41.680901, 36.007492, 19.181356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.898457, 36.098999, 19.224905>,  <42.261047, 36.251511, 19.297487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898457, 36.098999, 19.224905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422235, 0.814528, 0.397822,
		-0.003881, 0.437233, -0.899340,
		-0.906478, -0.381277, -0.181453,
		41.626514, 35.984615, 19.170469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758392, 36.855576, 18.929651>,  <42.261047, 36.251511, 19.297487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758392, 36.855576, 18.929651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550373, 36.564190, 19.108042>,  <41.425560, 36.389359, 19.215076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.550373, 36.564190, 19.108042>,  <41.758392, 36.855576, 18.929651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550373, 36.564190, 19.108042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424249, 0.673476, 0.605345,
		-0.741323, 0.125606, -0.659291,
		-0.520051, -0.728459, 0.445975,
		41.394356, 36.345654, 19.241835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.524567, 31.109846, 19.233662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.212566, 30.859568, 19.237795>,  <46.025368, 30.709400, 19.240274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.212566, 30.859568, 19.237795>,  <46.524567, 31.109846, 19.233662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212566, 30.859568, 19.237795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227520, 0.298931, 0.926755,
		-0.582954, 0.720518, -0.375524,
		-0.780000, -0.625695, 0.010331,
		45.978565, 30.671860, 19.240894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952354, 31.592382, 19.362940>,  <46.524567, 31.109846, 19.233662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952354, 31.592382, 19.362940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.891365, 31.209782, 19.462425>,  <45.854771, 30.980221, 19.522118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.891365, 31.209782, 19.462425>,  <45.952354, 31.592382, 19.362940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891365, 31.209782, 19.462425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285945, 0.283590, 0.915321,
		-0.946037, 0.068448, -0.316747,
		-0.152478, -0.956500, 0.248714,
		45.845623, 30.922832, 19.537039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275085, 31.554895, 19.543728>,  <45.952354, 31.592382, 19.362940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275085, 31.554895, 19.543728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.452412, 31.243250, 19.721020>,  <45.558807, 31.056263, 19.827394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.452412, 31.243250, 19.721020>,  <45.275085, 31.554895, 19.543728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452412, 31.243250, 19.721020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318350, 0.325388, 0.890380,
		-0.837928, -0.535822, -0.103781,
		0.443316, -0.779113, 0.443231,
		45.585407, 31.009516, 19.853989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804668, 31.443771, 20.022598>,  <45.275085, 31.554895, 19.543728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804668, 31.443771, 20.022598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112453, 31.232637, 20.166443>,  <45.297123, 31.105957, 20.252748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112453, 31.232637, 20.166443>,  <44.804668, 31.443771, 20.022598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112453, 31.232637, 20.166443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210124, 0.322492, 0.922956,
		-0.603138, -0.785742, 0.137235,
		0.769462, -0.527833, 0.359610,
		45.343292, 31.074287, 20.274326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527279, 30.903000, 20.487192>,  <44.804668, 31.443771, 20.022598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527279, 30.903000, 20.487192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.917095, 30.957594, 20.558352>,  <45.150986, 30.990351, 20.601048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.917095, 30.957594, 20.558352>,  <44.527279, 30.903000, 20.487192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917095, 30.957594, 20.558352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209464, 0.271074, 0.939491,
		0.080003, -0.952833, 0.292760,
		0.974538, 0.136484, 0.177898,
		45.209457, 30.998539, 20.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744141, 30.564133, 21.189253>,  <44.527279, 30.903000, 20.487192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744141, 30.564133, 21.189253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.000469, 30.858793, 21.102818>,  <45.154266, 31.035589, 21.050957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.000469, 30.858793, 21.102818>,  <44.744141, 30.564133, 21.189253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000469, 30.858793, 21.102818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023791, 0.300399, 0.953517,
		0.767320, -0.605894, 0.210028,
		0.640823, 0.736650, -0.216087,
		45.192715, 31.079788, 21.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156410, 30.644794, 21.830959>,  <44.744141, 30.564133, 21.189253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156410, 30.644794, 21.830959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.220524, 30.973051, 21.611559>,  <45.258991, 31.170006, 21.479918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.220524, 30.973051, 21.611559>,  <45.156410, 30.644794, 21.830959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220524, 30.973051, 21.611559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032875, 0.550941, 0.833897,
		0.986523, -0.151692, 0.061329,
		0.160284, 0.820643, -0.548503,
		45.268608, 31.219244, 21.447008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584110, 30.918951, 22.353500>,  <45.156410, 30.644794, 21.830959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584110, 30.918951, 22.353500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.496773, 31.185482, 22.068310>,  <45.444370, 31.345402, 21.897196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.496773, 31.185482, 22.068310>,  <45.584110, 30.918951, 22.353500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496773, 31.185482, 22.068310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139773, 0.701716, 0.698612,
		0.965811, 0.252190, -0.060078,
		-0.218340, 0.666330, -0.712974,
		45.431271, 31.385382, 21.854418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031639, 31.482691, 22.357040>,  <45.584110, 30.918951, 22.353500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031639, 31.482691, 22.357040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.709076, 31.656364, 22.196445>,  <45.515537, 31.760569, 22.100088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.709076, 31.656364, 22.196445>,  <46.031639, 31.482691, 22.357040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709076, 31.656364, 22.196445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014718, 0.693445, 0.720359,
		0.591179, 0.574993, -0.565588,
		-0.806406, 0.434186, -0.401487,
		45.467155, 31.786621, 22.075998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082596, 32.213047, 22.399246>,  <46.031639, 31.482691, 22.357040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082596, 32.213047, 22.399246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.689987, 32.205284, 22.323099>,  <45.454422, 32.200626, 22.277411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.689987, 32.205284, 22.323099>,  <46.082596, 32.213047, 22.399246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689987, 32.205284, 22.323099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140302, 0.749493, 0.646974,
		0.130124, 0.661727, -0.738366,
		-0.981521, -0.019407, -0.190368,
		45.395531, 32.199463, 22.265989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829037, 32.894424, 22.291798>,  <46.082596, 32.213047, 22.399246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829037, 32.894424, 22.291798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.519073, 32.670818, 22.409794>,  <45.333096, 32.536655, 22.480591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.519073, 32.670818, 22.409794>,  <45.829037, 32.894424, 22.291798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519073, 32.670818, 22.409794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202649, 0.661788, 0.721782,
		-0.598711, 0.499533, -0.626108,
		-0.774905, -0.559020, 0.294990,
		45.286602, 32.503113, 22.498291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222687, 33.291893, 22.359207>,  <45.829037, 32.894424, 22.291798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222687, 33.291893, 22.359207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.143177, 32.974190, 22.588863>,  <45.095470, 32.783566, 22.726658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.143177, 32.974190, 22.588863>,  <45.222687, 33.291893, 22.359207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143177, 32.974190, 22.588863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482533, 0.589218, 0.648062,
		-0.853025, -0.148225, -0.500377,
		-0.198772, -0.794262, 0.574141,
		45.083546, 32.735912, 22.761106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873238, 33.655327, 21.898672>,  <45.222687, 33.291893, 22.359207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873238, 33.655327, 21.898672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.901867, 33.988022, 21.678457>,  <44.919044, 34.187637, 21.546329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.901867, 33.988022, 21.678457>,  <44.873238, 33.655327, 21.898672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901867, 33.988022, 21.678457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468189, -0.515383, -0.717760,
		-0.880725, -0.206381, -0.426299,
		0.071575, 0.831737, -0.550536,
		44.923340, 34.237541, 21.513296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827190, 33.413570, 21.240906>,  <44.873238, 33.655327, 21.898672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827190, 33.413570, 21.240906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.983459, 33.775253, 21.171873>,  <45.077221, 33.992264, 21.130453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.983459, 33.775253, 21.171873>,  <44.827190, 33.413570, 21.240906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983459, 33.775253, 21.171873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556795, -0.381414, -0.737904,
		-0.733042, 0.192188, -0.652466,
		0.390676, 0.904205, -0.172583,
		45.100662, 34.046516, 21.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709194, 33.465038, 20.493498>,  <44.827190, 33.413570, 21.240906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709194, 33.465038, 20.493498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.002396, 33.699497, 20.631563>,  <45.178318, 33.840172, 20.714403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.002396, 33.699497, 20.631563>,  <44.709194, 33.465038, 20.493498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002396, 33.699497, 20.631563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665678, -0.513757, -0.541226,
		-0.139906, 0.626490, -0.766770,
		0.733007, 0.586143, 0.345163,
		45.222298, 33.875340, 20.735111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948586, 33.791809, 19.943768>,  <44.709194, 33.465038, 20.493498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948586, 33.791809, 19.943768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.251698, 33.836452, 20.200924>,  <45.433567, 33.863239, 20.355217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.251698, 33.836452, 20.200924>,  <44.948586, 33.791809, 19.943768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251698, 33.836452, 20.200924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641417, -0.308283, -0.702528,
		0.119785, 0.944725, -0.305198,
		0.757783, 0.111607, 0.642891,
		45.479031, 33.869934, 20.393791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470448, 34.176891, 19.639929>,  <44.948586, 33.791809, 19.943768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470448, 34.176891, 19.639929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.673096, 33.999996, 19.935974>,  <45.794685, 33.893860, 20.113602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.673096, 33.999996, 19.935974>,  <45.470448, 34.176891, 19.639929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673096, 33.999996, 19.935974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708871, -0.274967, -0.649534,
		0.490754, 0.853709, 0.174186,
		0.506618, -0.442237, 0.740111,
		45.825081, 33.867325, 20.158007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148323, 34.459309, 19.671656>,  <45.470448, 34.176891, 19.639929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148323, 34.459309, 19.671656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.137989, 34.090324, 19.825750>,  <46.131790, 33.868935, 19.918207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.137989, 34.090324, 19.825750>,  <46.148323, 34.459309, 19.671656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137989, 34.090324, 19.825750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673802, -0.300737, -0.674943,
		0.738460, 0.242138, 0.629322,
		-0.025831, -0.922457, 0.385236,
		46.130241, 33.813587, 19.941320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793938, 34.308804, 19.801262>,  <46.148323, 34.459309, 19.671656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793938, 34.308804, 19.801262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.614601, 33.951286, 19.805567>,  <46.507000, 33.736774, 19.808149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.614601, 33.951286, 19.805567>,  <46.793938, 34.308804, 19.801262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614601, 33.951286, 19.805567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626547, -0.322829, -0.709380,
		0.637517, -0.311302, 0.704744,
		-0.448343, -0.893797, 0.010764,
		46.480099, 33.683147, 19.808796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.286648, 33.893929, 19.505835>,  <46.793938, 34.308804, 19.801262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.286648, 33.893929, 19.505835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.976830, 33.642754, 19.475460>,  <46.790939, 33.492046, 19.457235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.976830, 33.642754, 19.475460>,  <47.286648, 33.893929, 19.505835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976830, 33.642754, 19.475460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405542, -0.400882, -0.821480,
		0.485399, -0.667071, 0.565159,
		-0.774547, -0.627941, -0.075937,
		46.744465, 33.454372, 19.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.609154, 33.198673, 19.232771>,  <47.286648, 33.893929, 19.505835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.609154, 33.198673, 19.232771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.214394, 33.232410, 19.177750>,  <46.977539, 33.252651, 19.144737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.214394, 33.232410, 19.177750>,  <47.609154, 33.198673, 19.232771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214394, 33.232410, 19.177750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083437, -0.462907, -0.882471,
		-0.138104, -0.882385, 0.449804,
		-0.986897, 0.084343, -0.137553,
		46.918324, 33.257713, 19.136484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474842, 32.497211, 19.025957>,  <47.609154, 33.198673, 19.232771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474842, 32.497211, 19.025957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.162979, 32.726841, 18.925900>,  <46.975861, 32.864620, 18.865864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.162979, 32.726841, 18.925900>,  <47.474842, 32.497211, 19.025957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162979, 32.726841, 18.925900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118335, -0.527332, -0.841378,
		-0.614926, -0.626384, 0.479071,
		-0.779655, 0.574076, -0.250147,
		46.929081, 32.899063, 18.850855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904991, 32.003551, 18.839298>,  <47.474842, 32.497211, 19.025957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904991, 32.003551, 18.839298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.818123, 32.359810, 18.679508>,  <46.766003, 32.573566, 18.583635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.818123, 32.359810, 18.679508>,  <46.904991, 32.003551, 18.839298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818123, 32.359810, 18.679508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113752, -0.429543, -0.895853,
		-0.969483, -0.149114, 0.194599,
		-0.217173, 0.890650, -0.399473,
		46.752972, 32.627007, 18.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251701, 31.964415, 18.421221>,  <46.904991, 32.003551, 18.839298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251701, 31.964415, 18.421221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.442612, 32.288811, 18.285870>,  <46.557159, 32.483448, 18.204659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.442612, 32.288811, 18.285870>,  <46.251701, 31.964415, 18.421221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442612, 32.288811, 18.285870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091250, -0.428725, -0.898815,
		-0.874003, 0.398106, -0.278623,
		0.477276, 0.810991, -0.338380,
		46.585796, 32.532108, 18.184355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937435, 32.172268, 17.838951>,  <46.251701, 31.964415, 18.421221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937435, 32.172268, 17.838951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.303581, 32.330368, 17.808289>,  <46.523270, 32.425228, 17.789890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.303581, 32.330368, 17.808289>,  <45.937435, 32.172268, 17.838951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303581, 32.330368, 17.808289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098795, -0.405082, -0.908927,
		-0.390307, 0.824430, -0.409848,
		0.915369, 0.395251, -0.076657,
		46.578194, 32.448944, 17.785292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118092, 32.406128, 17.699301>,  <45.937435, 32.172268, 17.838951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118092, 32.406128, 17.699301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112896, 32.628979, 17.367170>,  <45.109779, 32.762688, 17.167892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112896, 32.628979, 17.367170>,  <45.118092, 32.406128, 17.699301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112896, 32.628979, 17.367170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566456, 0.680196, 0.465253,
		0.823989, 0.476390, 0.306748,
		-0.012993, 0.557123, -0.830328,
		45.108997, 32.796116, 17.118073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107239, 33.017120, 17.993515>,  <45.118092, 32.406128, 17.699301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107239, 33.017120, 17.993515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.971268, 33.063274, 17.620176>,  <44.889683, 33.090965, 17.396173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.971268, 33.063274, 17.620176>,  <45.107239, 33.017120, 17.993515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971268, 33.063274, 17.620176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597676, 0.739747, 0.309124,
		0.726107, 0.662919, -0.182502,
		-0.339930, 0.115380, -0.933346,
		44.869289, 33.097889, 17.340172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979225, 33.729591, 17.924170>,  <45.107239, 33.017120, 17.993515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979225, 33.729591, 17.924170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.754314, 33.557781, 17.641512>,  <44.619366, 33.454693, 17.471918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.754314, 33.557781, 17.641512>,  <44.979225, 33.729591, 17.924170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754314, 33.557781, 17.641512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792734, 0.523225, 0.312743,
		0.235402, 0.736030, -0.634701,
		-0.562280, -0.429529, -0.706644,
		44.585629, 33.428921, 17.429518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609089, 34.249527, 17.694340>,  <44.979225, 33.729591, 17.924170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609089, 34.249527, 17.694340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398296, 33.948826, 17.535767>,  <44.271820, 33.768406, 17.440622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398296, 33.948826, 17.535767>,  <44.609089, 34.249527, 17.694340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398296, 33.948826, 17.535767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849865, 0.463587, 0.250633,
		-0.004634, 0.468992, -0.883190,
		-0.526981, -0.751753, -0.396432,
		44.240204, 33.723301, 17.416838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038807, 34.497540, 17.199442>,  <44.609089, 34.249527, 17.694340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038807, 34.497540, 17.199442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.917603, 34.134590, 17.315962>,  <43.844879, 33.916821, 17.385874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.917603, 34.134590, 17.315962>,  <44.038807, 34.497540, 17.199442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917603, 34.134590, 17.315962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909448, 0.366665, 0.196116,
		-0.284760, -0.205495, -0.936314,
		-0.303012, -0.907375, 0.291298,
		43.826698, 33.862377, 17.403351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365936, 34.409389, 16.836788>,  <44.038807, 34.497540, 17.199442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365936, 34.409389, 16.836788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.320946, 34.136341, 17.125612>,  <43.293953, 33.972511, 17.298906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.320946, 34.136341, 17.125612>,  <43.365936, 34.409389, 16.836788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320946, 34.136341, 17.125612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925477, 0.336496, 0.173961,
		-0.361721, -0.648685, -0.669601,
		-0.112472, -0.682626, 0.722061,
		43.287205, 33.931553, 17.342230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691570, 34.008308, 16.743464>,  <43.365936, 34.409389, 16.836788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691570, 34.008308, 16.743464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810116, 33.972309, 17.123793>,  <42.881245, 33.950710, 17.351990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810116, 33.972309, 17.123793>,  <42.691570, 34.008308, 16.743464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810116, 33.972309, 17.123793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862070, 0.403314, 0.306875,
		-0.411100, -0.910625, 0.041942,
		0.296364, -0.090000, 0.950825,
		42.899025, 33.945309, 17.409040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081535, 33.767220, 17.146347>,  <42.691570, 34.008308, 16.743464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081535, 33.767220, 17.146347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.307549, 33.945675, 17.423964>,  <42.443157, 34.052750, 17.590534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.307549, 33.945675, 17.423964>,  <42.081535, 33.767220, 17.146347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307549, 33.945675, 17.423964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824777, 0.327748, 0.460786,
		-0.021896, -0.832790, 0.553156,
		0.565033, 0.446141, 0.694042,
		42.477058, 34.079517, 17.632175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032063, 33.038517, 17.415020>,  <42.081535, 33.767220, 17.146347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032063, 33.038517, 17.415020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.745838, 32.760960, 17.447231>,  <41.574104, 32.594425, 17.466558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.745838, 32.760960, 17.447231>,  <42.032063, 33.038517, 17.415020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745838, 32.760960, 17.447231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571694, -0.647953, -0.503311,
		0.401425, -0.314110, 0.860345,
		-0.715558, -0.693896, 0.080530,
		41.531170, 32.552792, 17.471390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359394, 32.420677, 17.679466>,  <42.032063, 33.038517, 17.415020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359394, 32.420677, 17.679466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028240, 32.315033, 17.481537>,  <41.829548, 32.251648, 17.362780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.028240, 32.315033, 17.481537>,  <42.359394, 32.420677, 17.679466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028240, 32.315033, 17.481537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511212, -0.718294, -0.471927,
		-0.230788, -0.643662, 0.729682,
		-0.827888, -0.264108, -0.494822,
		41.779873, 32.235802, 17.333090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423393, 31.765783, 17.582264>,  <42.359394, 32.420677, 17.679466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423393, 31.765783, 17.582264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194042, 31.866365, 17.270365>,  <42.056431, 31.926716, 17.083225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.194042, 31.866365, 17.270365>,  <42.423393, 31.765783, 17.582264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194042, 31.866365, 17.270365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531192, -0.610490, -0.587484,
		-0.623757, -0.751046, 0.216466,
		-0.573377, 0.251462, -0.779747,
		42.022026, 31.941803, 17.036442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439312, 31.195000, 17.176126>,  <42.423393, 31.765783, 17.582264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439312, 31.195000, 17.176126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.281052, 31.450674, 16.912338>,  <42.186096, 31.604078, 16.754065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.281052, 31.450674, 16.912338>,  <42.439312, 31.195000, 17.176126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281052, 31.450674, 16.912338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472585, -0.474008, -0.742954,
		-0.787479, -0.605607, -0.114528,
		-0.395651, 0.639185, -0.659472,
		42.162357, 31.642429, 16.714497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014404, 30.824043, 16.688629>,  <42.439312, 31.195000, 17.176126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014404, 30.824043, 16.688629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.138737, 31.161547, 16.513605>,  <42.213337, 31.364048, 16.408590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.138737, 31.161547, 16.513605>,  <42.014404, 30.824043, 16.688629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138737, 31.161547, 16.513605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440105, -0.535806, -0.720569,
		-0.842434, 0.031399, -0.537884,
		0.310827, 0.843757, -0.437562,
		42.231983, 31.414675, 16.382336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872952, 30.682892, 15.986427>,  <42.014404, 30.824043, 16.688629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872952, 30.682892, 15.986427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117634, 30.999165, 15.996554>,  <42.264442, 31.188929, 16.002630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117634, 30.999165, 15.996554>,  <41.872952, 30.682892, 15.986427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117634, 30.999165, 15.996554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602482, -0.444886, -0.662640,
		-0.512675, 0.420592, -0.748510,
		0.611703, 0.790682, 0.025317,
		42.301144, 31.236370, 16.004148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060806, 30.793682, 15.242434>,  <41.872952, 30.682892, 15.986427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060806, 30.793682, 15.242434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.341686, 30.987238, 15.451340>,  <42.510216, 31.103371, 15.576683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.341686, 30.987238, 15.451340>,  <42.060806, 30.793682, 15.242434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341686, 30.987238, 15.451340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711917, -0.486642, -0.506313,
		0.009157, 0.727345, -0.686211,
		0.702204, 0.483890, 0.522265,
		42.552349, 31.132404, 15.608019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520298, 31.240808, 14.869860>,  <42.060806, 30.793682, 15.242434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520298, 31.240808, 14.869860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.762611, 31.162754, 15.178391>,  <42.908001, 31.115921, 15.363510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.762611, 31.162754, 15.178391>,  <42.520298, 31.240808, 14.869860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762611, 31.162754, 15.178391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708911, -0.307745, -0.634617,
		0.361209, 0.931244, -0.048093,
		0.605783, -0.195136, 0.771329,
		42.944347, 31.104214, 15.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156273, 31.411274, 14.600587>,  <42.520298, 31.240808, 14.869860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156273, 31.411274, 14.600587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.236862, 31.172176, 14.910971>,  <43.285213, 31.028719, 15.097201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.236862, 31.172176, 14.910971>,  <43.156273, 31.411274, 14.600587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236862, 31.172176, 14.910971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716214, -0.450505, -0.532995,
		0.668167, 0.663136, 0.337347,
		0.201471, -0.597742, 0.775960,
		43.297302, 30.992853, 15.143759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.602665, 38.290047, 27.730988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728619, 37.929413, 27.849640>,  <36.804192, 37.713032, 27.920832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728619, 37.929413, 27.849640>,  <36.602665, 38.290047, 27.730988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728619, 37.929413, 27.849640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440237, -0.138136, -0.887192,
		0.840855, 0.409952, 0.353414,
		0.314887, -0.901586, 0.296629,
		36.823086, 37.658936, 27.938629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282131, 38.217037, 27.401415>,  <36.602665, 38.290047, 27.730988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282131, 38.217037, 27.401415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106277, 37.869778, 27.493532>,  <37.000767, 37.661423, 27.548803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106277, 37.869778, 27.493532>,  <37.282131, 38.217037, 27.401415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106277, 37.869778, 27.493532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101927, -0.302969, -0.947534,
		0.892374, -0.393096, 0.221684,
		-0.439636, -0.868151, 0.230294,
		36.974388, 37.609333, 27.562620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620132, 37.670837, 26.955845>,  <37.282131, 38.217037, 27.401415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620132, 37.670837, 26.955845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270786, 37.528927, 27.089327>,  <37.061176, 37.443783, 27.169416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270786, 37.528927, 27.089327>,  <37.620132, 37.670837, 26.955845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270786, 37.528927, 27.089327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062811, -0.597386, -0.799490,
		0.482990, -0.719212, 0.499455,
		-0.873370, -0.354775, 0.333706,
		37.008774, 37.422493, 27.189438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681114, 36.948029, 27.067036>,  <37.620132, 37.670837, 26.955845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681114, 36.948029, 27.067036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287010, 36.995041, 27.017323>,  <37.050549, 37.023247, 26.987494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287010, 36.995041, 27.017323>,  <37.681114, 36.948029, 27.067036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287010, 36.995041, 27.017323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001941, -0.718855, -0.695157,
		-0.171041, -0.685153, 0.708033,
		-0.985262, 0.117526, -0.124284,
		36.991432, 37.030300, 26.980038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391983, 36.251621, 26.990770>,  <37.681114, 36.948029, 27.067036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391983, 36.251621, 26.990770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138199, 36.509144, 26.819674>,  <36.985928, 36.663658, 26.717016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138199, 36.509144, 26.819674>,  <37.391983, 36.251621, 26.990770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138199, 36.509144, 26.819674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170794, -0.656479, -0.734755,
		-0.753848, -0.393119, 0.526470,
		-0.634463, 0.643812, -0.427743,
		36.947861, 36.702286, 26.691351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869438, 35.764702, 26.776861>,  <37.391983, 36.251621, 26.990770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869438, 35.764702, 26.776861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806393, 36.103519, 26.573816>,  <36.768566, 36.306812, 26.451988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806393, 36.103519, 26.573816>,  <36.869438, 35.764702, 26.776861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806393, 36.103519, 26.573816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299062, -0.530843, -0.792949,
		-0.941127, 0.026827, 0.336988,
		-0.157615, 0.847046, -0.507613,
		36.759109, 36.357632, 26.421532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197277, 35.651695, 26.511135>,  <36.869438, 35.764702, 26.776861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197277, 35.651695, 26.511135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413441, 35.923153, 26.312178>,  <36.543140, 36.086025, 26.192802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413441, 35.923153, 26.312178>,  <36.197277, 35.651695, 26.511135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413441, 35.923153, 26.312178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020149, -0.580543, -0.813981,
		-0.841159, 0.449908, -0.300059,
		0.540413, 0.678641, -0.497393,
		36.575565, 36.126747, 26.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897408, 35.608940, 25.866833>,  <36.197277, 35.651695, 26.511135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897408, 35.608940, 25.866833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247684, 35.788750, 25.796301>,  <36.457851, 35.896637, 25.753983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247684, 35.788750, 25.796301>,  <35.897408, 35.608940, 25.866833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247684, 35.788750, 25.796301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052609, -0.274174, -0.960240,
		-0.479997, 0.850150, -0.216443,
		0.875691, 0.449526, -0.176328,
		36.510391, 35.923607, 25.743402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845989, 35.940086, 25.264790>,  <35.897408, 35.608940, 25.866833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845989, 35.940086, 25.264790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245346, 35.957851, 25.278841>,  <36.484962, 35.968510, 25.287271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245346, 35.957851, 25.278841>,  <35.845989, 35.940086, 25.264790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245346, 35.957851, 25.278841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041116, -0.141986, -0.989014,
		-0.038933, 0.988872, -0.143584,
		0.998396, 0.044409, 0.035130,
		36.544865, 35.971172, 25.289379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972797, 36.380127, 24.656034>,  <35.845989, 35.940086, 25.264790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972797, 36.380127, 24.656034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318623, 36.202980, 24.751030>,  <36.526119, 36.096691, 24.808027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318623, 36.202980, 24.751030>,  <35.972797, 36.380127, 24.656034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318623, 36.202980, 24.751030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267529, 0.005575, -0.963534,
		0.425391, 0.896571, 0.123299,
		0.864564, -0.442865, 0.237488,
		36.577991, 36.070122, 24.822277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477573, 36.769360, 24.356350>,  <35.972797, 36.380127, 24.656034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477573, 36.769360, 24.356350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663731, 36.420662, 24.417629>,  <36.775425, 36.211441, 24.454397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663731, 36.420662, 24.417629>,  <36.477573, 36.769360, 24.356350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663731, 36.420662, 24.417629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205675, -0.061834, -0.976665,
		0.860878, 0.486037, 0.150520,
		0.465388, -0.871748, 0.153197,
		36.803349, 36.159138, 24.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167240, 36.856525, 24.045645>,  <36.477573, 36.769360, 24.356350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167240, 36.856525, 24.045645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064743, 36.469925, 24.039888>,  <37.003246, 36.237965, 24.036434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064743, 36.469925, 24.039888>,  <37.167240, 36.856525, 24.045645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064743, 36.469925, 24.039888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364755, -0.082894, -0.927406,
		0.895150, -0.242892, 0.373779,
		-0.256244, -0.966505, -0.014393,
		36.987869, 36.179974, 24.035570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745415, 37.430557, 24.203442>,  <37.167240, 36.856525, 24.045645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745415, 37.430557, 24.203442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983734, 37.729874, 24.086760>,  <38.126724, 37.909462, 24.016750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983734, 37.729874, 24.086760>,  <37.745415, 37.430557, 24.203442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983734, 37.729874, 24.086760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389286, 0.586754, 0.710053,
		0.702485, -0.309489, 0.640884,
		0.595795, 0.748289, -0.291706,
		38.162472, 37.954361, 23.999249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978409, 37.740459, 24.791674>,  <37.745415, 37.430557, 24.203442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978409, 37.740459, 24.791674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013268, 38.031063, 24.519030>,  <38.034184, 38.205425, 24.355442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013268, 38.031063, 24.519030>,  <37.978409, 37.740459, 24.791674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013268, 38.031063, 24.519030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299363, 0.671689, 0.677655,
		0.950151, 0.144993, 0.276025,
		0.087148, 0.726506, -0.681611,
		38.039413, 38.249016, 24.314547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299465, 38.307205, 25.150671>,  <37.978409, 37.740459, 24.791674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299465, 38.307205, 25.150671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152130, 38.485519, 24.824331>,  <38.063728, 38.592506, 24.628529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152130, 38.485519, 24.824331>,  <38.299465, 38.307205, 25.150671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152130, 38.485519, 24.824331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277913, 0.784625, 0.554192,
		0.887183, 0.430863, -0.165116,
		-0.368335, 0.445782, -0.815848,
		38.041630, 38.619255, 24.579576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640594, 38.947559, 25.145140>,  <38.299465, 38.307205, 25.150671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640594, 38.947559, 25.145140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312904, 38.987141, 24.919191>,  <38.116291, 39.010891, 24.783623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312904, 38.987141, 24.919191>,  <38.640594, 38.947559, 25.145140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312904, 38.987141, 24.919191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187669, 0.884505, 0.427119,
		0.541894, 0.455915, -0.706040,
		-0.819226, 0.098952, -0.564869,
		38.067135, 39.016827, 24.749731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640285, 39.642494, 24.980074>,  <38.640594, 38.947559, 25.145140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640285, 39.642494, 24.980074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271950, 39.529652, 24.872398>,  <38.050949, 39.461945, 24.807793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271950, 39.529652, 24.872398>,  <38.640285, 39.642494, 24.980074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271950, 39.529652, 24.872398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385706, 0.760367, 0.522564,
		0.057263, 0.585027, -0.808990,
		-0.920843, -0.282109, -0.269189,
		37.995697, 39.445019, 24.791641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334301, 40.160160, 24.578964>,  <38.640285, 39.642494, 24.980074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334301, 40.160160, 24.578964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018703, 39.945065, 24.697840>,  <37.829346, 39.816006, 24.769165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018703, 39.945065, 24.697840>,  <38.334301, 40.160160, 24.578964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018703, 39.945065, 24.697840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388448, 0.811356, 0.436816,
		-0.476019, 0.229204, -0.849041,
		-0.788995, -0.537742, 0.297187,
		37.782005, 39.783741, 24.786995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735985, 40.576328, 24.495195>,  <38.334301, 40.160160, 24.578964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735985, 40.576328, 24.495195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676613, 40.319122, 24.795727>,  <37.640991, 40.164799, 24.976046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676613, 40.319122, 24.795727>,  <37.735985, 40.576328, 24.495195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676613, 40.319122, 24.795727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395029, 0.735050, 0.551048,
		-0.906599, -0.215008, -0.363112,
		-0.148426, -0.643019, 0.751330,
		37.632084, 40.126217, 25.021126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080616, 40.845226, 24.771202>,  <37.735985, 40.576328, 24.495195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080616, 40.845226, 24.771202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233147, 40.593384, 25.041960>,  <37.324665, 40.442276, 25.204414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233147, 40.593384, 25.041960>,  <37.080616, 40.845226, 24.771202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233147, 40.593384, 25.041960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354008, 0.576950, 0.736076,
		-0.853973, -0.520309, -0.002882,
		0.381324, -0.629609, 0.676893,
		37.347546, 40.404503, 25.245028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610523, 40.660210, 25.244896>,  <37.080616, 40.845226, 24.771202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610523, 40.660210, 25.244896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949516, 40.582172, 25.442364>,  <37.152912, 40.535351, 25.560844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949516, 40.582172, 25.442364>,  <36.610523, 40.660210, 25.244896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949516, 40.582172, 25.442364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395519, 0.388179, 0.832395,
		-0.354026, -0.900697, 0.251813,
		0.847484, -0.195093, 0.493668,
		37.203762, 40.523643, 25.590464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345501, 40.675125, 25.906246>,  <36.610523, 40.660210, 25.244896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345501, 40.675125, 25.906246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742405, 40.682480, 25.955364>,  <36.980549, 40.686893, 25.984835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742405, 40.682480, 25.955364>,  <36.345501, 40.675125, 25.906246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742405, 40.682480, 25.955364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118547, 0.434356, 0.892906,
		-0.036918, -0.900553, 0.433175,
		0.992262, 0.018387, 0.122793,
		37.040085, 40.687996, 25.992203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502266, 40.300640, 26.564856>,  <36.345501, 40.675125, 25.906246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502266, 40.300640, 26.564856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804043, 40.549629, 26.481588>,  <36.985111, 40.699024, 26.431627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804043, 40.549629, 26.481588>,  <36.502266, 40.300640, 26.564856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804043, 40.549629, 26.481588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115502, 0.438114, 0.891468,
		0.646120, -0.648520, 0.402431,
		0.754446, 0.622477, -0.208169,
		37.030376, 40.736374, 26.419138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966541, 40.370224, 27.157452>,  <36.502266, 40.300640, 26.564856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966541, 40.370224, 27.157452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050579, 40.708084, 26.960508>,  <37.101002, 40.910801, 26.842342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050579, 40.708084, 26.960508>,  <36.966541, 40.370224, 27.157452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050579, 40.708084, 26.960508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165134, 0.527021, 0.833654,
		0.963634, -0.093845, 0.250207,
		0.210098, 0.844655, -0.492359,
		37.113609, 40.961479, 26.812801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524513, 40.718708, 27.565126>,  <36.966541, 40.370224, 27.157452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524513, 40.718708, 27.565126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384972, 40.994667, 27.311405>,  <37.301247, 41.160244, 27.159172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384972, 40.994667, 27.311405>,  <37.524513, 40.718708, 27.565126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384972, 40.994667, 27.311405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276335, 0.571010, 0.773037,
		0.895510, 0.444959, -0.008558,
		-0.348857, 0.689897, -0.634303,
		37.280315, 41.201637, 27.121115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865215, 41.425045, 27.756124>,  <37.524513, 40.718708, 27.565126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865215, 41.425045, 27.756124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521572, 41.486927, 27.560982>,  <37.315388, 41.524055, 27.443897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521572, 41.486927, 27.560982>,  <37.865215, 41.425045, 27.756124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521572, 41.486927, 27.560982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321845, 0.577846, 0.750007,
		0.397936, 0.801349, -0.446639,
		-0.859106, 0.154706, -0.487855,
		37.263840, 41.533340, 27.414625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500317, 41.055996, 27.653896>,  <37.865215, 41.425045, 27.756124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500317, 41.055996, 27.653896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864571, 41.213497, 27.603760>,  <39.083122, 41.307999, 27.573677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864571, 41.213497, 27.603760>,  <38.500317, 41.055996, 27.653896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864571, 41.213497, 27.603760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169364, -0.632331, -0.755958,
		-0.376918, 0.667170, -0.642508,
		0.910631, 0.393752, -0.125343,
		39.137760, 41.331623, 27.566156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657013, 41.337086, 26.880684>,  <38.500317, 41.055996, 27.653896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657013, 41.337086, 26.880684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995338, 41.264019, 27.081181>,  <39.198334, 41.220181, 27.201479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995338, 41.264019, 27.081181>,  <38.657013, 41.337086, 26.880684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995338, 41.264019, 27.081181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356193, -0.506100, -0.785486,
		0.397156, 0.842910, -0.363001,
		0.845809, -0.182662, 0.501240,
		39.249081, 41.209221, 27.231552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316315, 41.466492, 26.435341>,  <38.657013, 41.337086, 26.880684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316315, 41.466492, 26.435341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.398869, 41.203625, 26.725317>,  <39.448402, 41.045906, 26.899303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.398869, 41.203625, 26.725317>,  <39.316315, 41.466492, 26.435341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398869, 41.203625, 26.725317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690467, -0.427148, -0.583780,
		0.693297, 0.621031, 0.365594,
		0.206383, -0.657164, 0.724942,
		39.460785, 41.006477, 26.942801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109978, 41.346542, 26.346523>,  <39.316315, 41.466492, 26.435341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109978, 41.346542, 26.346523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928547, 41.044239, 26.535458>,  <39.819691, 40.862858, 26.648819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928547, 41.044239, 26.535458>,  <40.109978, 41.346542, 26.346523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928547, 41.044239, 26.535458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633206, -0.646234, -0.425947,
		0.627154, 0.105889, 0.771664,
		-0.453573, -0.755757, 0.472337,
		39.792477, 40.817513, 26.677158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600128, 40.939533, 26.656439>,  <40.109978, 41.346542, 26.346523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600128, 40.939533, 26.656439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286705, 40.698212, 26.597027>,  <40.098652, 40.553417, 26.561380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286705, 40.698212, 26.597027>,  <40.600128, 40.939533, 26.656439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286705, 40.698212, 26.597027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612361, -0.709418, -0.348913,
		0.105131, -0.364347, 0.925310,
		-0.783557, -0.603305, -0.148530,
		40.051640, 40.517220, 26.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828499, 40.229973, 26.661011>,  <40.600128, 40.939533, 26.656439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828499, 40.229973, 26.661011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.457001, 40.142475, 26.541294>,  <40.234100, 40.089977, 26.469463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.457001, 40.142475, 26.541294>,  <40.828499, 40.229973, 26.661011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457001, 40.142475, 26.541294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363323, -0.697452, -0.617704,
		-0.073623, -0.682432, 0.727232,
		-0.928750, -0.218743, -0.299292,
		40.178375, 40.076851, 26.451506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749195, 39.454620, 26.744711>,  <40.828499, 40.229973, 26.661011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749195, 39.454620, 26.744711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.465897, 39.545345, 26.477295>,  <40.295918, 39.599781, 26.316845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.465897, 39.545345, 26.477295>,  <40.749195, 39.454620, 26.744711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465897, 39.545345, 26.477295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310672, -0.750226, -0.583646,
		-0.633934, -0.621061, 0.460880,
		-0.708244, 0.226811, -0.668541,
		40.253422, 39.613388, 26.276733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293480, 38.863739, 26.640858>,  <40.749195, 39.454620, 26.744711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293480, 38.863739, 26.640858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298222, 39.091404, 26.312002>,  <40.301067, 39.228004, 26.114689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298222, 39.091404, 26.312002>,  <40.293480, 38.863739, 26.640858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298222, 39.091404, 26.312002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106501, -0.818236, -0.564931,
		-0.994242, -0.080860, -0.070318,
		0.011857, 0.569167, -0.822137,
		40.301777, 39.262154, 26.065361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157948, 38.347851, 26.124014>,  <40.293480, 38.863739, 26.640858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157948, 38.347851, 26.124014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.242973, 38.674679, 25.909645>,  <40.293987, 38.870777, 25.781023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.242973, 38.674679, 25.909645>,  <40.157948, 38.347851, 26.124014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242973, 38.674679, 25.909645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259163, -0.575957, -0.775311,
		-0.942153, 0.025911, -0.334182,
		0.212564, 0.817069, -0.535924,
		40.306744, 38.919800, 25.748867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762543, 38.375172, 25.377457>,  <40.157948, 38.347851, 26.124014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762543, 38.375172, 25.377457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096420, 38.595448, 25.379303>,  <40.296745, 38.727615, 25.380411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096420, 38.595448, 25.379303>,  <39.762543, 38.375172, 25.377457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096420, 38.595448, 25.379303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341111, -0.510411, -0.789382,
		-0.432352, 0.660468, -0.613885,
		0.834695, 0.550694, 0.004616,
		40.346828, 38.760654, 25.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847706, 38.585941, 24.722980>,  <39.762543, 38.375172, 25.377457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847706, 38.585941, 24.722980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216949, 38.631935, 24.869755>,  <40.438496, 38.659531, 24.957819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216949, 38.631935, 24.869755>,  <39.847706, 38.585941, 24.722980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216949, 38.631935, 24.869755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353915, -0.627198, -0.693806,
		0.150363, 0.770325, -0.619669,
		0.923112, 0.114987, 0.366937,
		40.493881, 38.666431, 24.979836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369026, 38.576115, 24.140791>,  <39.847706, 38.585941, 24.722980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369026, 38.576115, 24.140791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594646, 38.508038, 24.463995>,  <40.730019, 38.467190, 24.657917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594646, 38.508038, 24.463995>,  <40.369026, 38.576115, 24.140791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594646, 38.508038, 24.463995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577707, -0.617835, -0.533417,
		0.590002, 0.767668, -0.250167,
		0.564049, -0.170194, 0.808011,
		40.763863, 38.456978, 24.706398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002590, 38.620399, 23.906971>,  <40.369026, 38.576115, 24.140791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002590, 38.620399, 23.906971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.041489, 38.431534, 24.257423>,  <41.064827, 38.318214, 24.467695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.041489, 38.431534, 24.257423>,  <41.002590, 38.620399, 23.906971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041489, 38.431534, 24.257423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395005, -0.789691, -0.469425,
		0.913518, 0.391724, 0.109717,
		0.097243, -0.472166, 0.876129,
		41.070660, 38.289883, 24.520262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738239, 38.538322, 24.102980>,  <41.002590, 38.620399, 23.906971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738239, 38.538322, 24.102980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545212, 38.244854, 24.294333>,  <41.429398, 38.068771, 24.409145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545212, 38.244854, 24.294333>,  <41.738239, 38.538322, 24.102980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545212, 38.244854, 24.294333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478777, -0.678326, -0.557357,
		0.733419, -0.039922, 0.678603,
		-0.482565, -0.733676, 0.478383,
		41.400444, 38.024750, 24.437847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178230, 38.084335, 24.122177>,  <41.738239, 38.538322, 24.102980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178230, 38.084335, 24.122177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.909294, 37.823265, 24.261871>,  <41.747932, 37.666622, 24.345688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.909294, 37.823265, 24.261871>,  <42.178230, 38.084335, 24.122177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909294, 37.823265, 24.261871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530757, -0.753921, -0.387168,
		0.515993, -0.074950, 0.853308,
		-0.672345, -0.652675, 0.349238,
		41.707592, 37.627464, 24.366642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558712, 37.625011, 24.179678>,  <42.178230, 38.084335, 24.122177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558712, 37.625011, 24.179678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.198223, 37.455544, 24.216137>,  <41.981930, 37.353863, 24.238012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.198223, 37.455544, 24.216137>,  <42.558712, 37.625011, 24.179678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198223, 37.455544, 24.216137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380342, -0.874067, -0.302235,
		0.207718, -0.237713, 0.948866,
		-0.901218, -0.423673, 0.091147,
		41.927856, 37.328442, 24.243481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638649, 36.994446, 24.595102>,  <42.558712, 37.625011, 24.179678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638649, 36.994446, 24.595102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.312637, 36.953175, 24.367037>,  <42.117031, 36.928413, 24.230198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.312637, 36.953175, 24.367037>,  <42.638649, 36.994446, 24.595102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312637, 36.953175, 24.367037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453760, -0.725585, -0.517328,
		-0.360327, -0.680353, 0.638188,
		-0.815025, -0.103177, -0.570165,
		42.068130, 36.922222, 24.195988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501335, 36.312950, 24.621473>,  <42.638649, 36.994446, 24.595102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501335, 36.312950, 24.621473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.347668, 36.479370, 24.291790>,  <42.255466, 36.579224, 24.093981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.347668, 36.479370, 24.291790>,  <42.501335, 36.312950, 24.621473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347668, 36.479370, 24.291790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351388, -0.759639, -0.547242,
		-0.853780, -0.499850, 0.145635,
		-0.384170, 0.416050, -0.824206,
		42.232418, 36.604183, 24.044529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407669, 35.780872, 24.175896>,  <42.501335, 36.312950, 24.621473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407669, 35.780872, 24.175896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.358070, 36.061054, 23.894756>,  <42.328312, 36.229164, 23.726072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.358070, 36.061054, 23.894756>,  <42.407669, 35.780872, 24.175896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358070, 36.061054, 23.894756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387018, -0.618079, -0.684248,
		-0.913697, -0.356858, -0.194449,
		-0.123994, 0.700451, -0.702847,
		42.320873, 36.271191, 23.683903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111668, 35.521965, 23.478725>,  <42.407669, 35.780872, 24.175896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111668, 35.521965, 23.478725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.302078, 35.866947, 23.409943>,  <42.416325, 36.073936, 23.368673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.302078, 35.866947, 23.409943>,  <42.111668, 35.521965, 23.478725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302078, 35.866947, 23.409943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531693, -0.437995, -0.724888,
		-0.700500, 0.253639, -0.667059,
		0.476028, 0.862454, -0.171958,
		42.444885, 36.125683, 23.358355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126972, 35.507885, 22.738356>,  <42.111668, 35.521965, 23.478725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126972, 35.507885, 22.738356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.401306, 35.748688, 22.901924>,  <42.565907, 35.893169, 23.000065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.401306, 35.748688, 22.901924>,  <42.126972, 35.507885, 22.738356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401306, 35.748688, 22.901924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661909, -0.282435, -0.694340,
		-0.302503, 0.746872, -0.592177,
		0.685835, 0.602007, 0.408924,
		42.607056, 35.929291, 23.024601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479816, 35.790684, 22.151543>,  <42.126972, 35.507885, 22.738356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479816, 35.790684, 22.151543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722607, 35.871048, 22.459105>,  <42.868282, 35.919266, 22.643642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722607, 35.871048, 22.459105>,  <42.479816, 35.790684, 22.151543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722607, 35.871048, 22.459105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794632, -0.139106, -0.590939,
		-0.011764, 0.969684, -0.244081,
		0.606977, 0.200906, 0.768906,
		42.904701, 35.931320, 22.689775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991066, 36.306622, 21.869606>,  <42.479816, 35.790684, 22.151543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991066, 36.306622, 21.869606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.116695, 36.071701, 22.167986>,  <43.192074, 35.930748, 22.347013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.116695, 36.071701, 22.167986>,  <42.991066, 36.306622, 21.869606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116695, 36.071701, 22.167986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850554, -0.175018, -0.495910,
		0.421801, 0.790222, 0.444559,
		0.314073, -0.587296, 0.745950,
		43.210918, 35.895512, 22.391771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762402, 36.407837, 21.904486>,  <42.991066, 36.306622, 21.869606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762402, 36.407837, 21.904486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.702282, 36.062080, 22.096418>,  <43.666210, 35.854626, 22.211578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.702282, 36.062080, 22.096418>,  <43.762402, 36.407837, 21.904486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702282, 36.062080, 22.096418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816298, -0.382309, -0.433010,
		0.557734, 0.326604, 0.763062,
		-0.150303, -0.864390, 0.479833,
		43.657192, 35.802765, 22.240368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474281, 36.160309, 22.095469>,  <43.762402, 36.407837, 21.904486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474281, 36.160309, 22.095469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.239117, 35.837189, 22.112482>,  <44.098019, 35.643314, 22.122690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.239117, 35.837189, 22.112482>,  <44.474281, 36.160309, 22.095469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239117, 35.837189, 22.112482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709574, -0.540241, -0.452376,
		0.388410, -0.235778, 0.890813,
		-0.587914, -0.807805, 0.042533,
		44.062744, 35.594849, 22.125242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919796, 35.576275, 22.336086>,  <44.474281, 36.160309, 22.095469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919796, 35.576275, 22.336086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.611038, 35.381969, 22.172033>,  <44.425781, 35.265385, 22.073601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.611038, 35.381969, 22.172033>,  <44.919796, 35.576275, 22.336086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611038, 35.381969, 22.172033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584702, -0.795713, -0.158001,
		-0.249596, -0.361766, 0.898236,
		-0.771897, -0.485764, -0.410132,
		44.379471, 35.236240, 22.048994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045624, 34.890697, 22.544722>,  <44.919796, 35.576275, 22.336086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045624, 34.890697, 22.544722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.794376, 34.881435, 22.233612>,  <44.643627, 34.875877, 22.046946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.794376, 34.881435, 22.233612>,  <45.045624, 34.890697, 22.544722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794376, 34.881435, 22.233612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512969, -0.763923, -0.391516,
		-0.585094, -0.644892, 0.491712,
		-0.628115, -0.023159, -0.777776,
		44.605942, 34.874489, 22.000278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883701, 34.195053, 22.480165>,  <45.045624, 34.890697, 22.544722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883701, 34.195053, 22.480165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.817226, 34.379658, 22.131596>,  <44.777340, 34.490421, 21.922453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.817226, 34.379658, 22.131596>,  <44.883701, 34.195053, 22.480165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817226, 34.379658, 22.131596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399965, -0.776211, -0.487366,
		-0.901337, -0.429535, -0.055591,
		-0.166190, 0.461515, -0.871427,
		44.767368, 34.518112, 21.870167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644737, 33.497471, 22.756577>,  <44.883701, 34.195053, 22.480165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644737, 33.497471, 22.756577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.758389, 33.164165, 22.946287>,  <44.826580, 32.964180, 23.060114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.758389, 33.164165, 22.946287>,  <44.644737, 33.497471, 22.756577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758389, 33.164165, 22.946287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349133, 0.370782, 0.860596,
		-0.892960, -0.410105, -0.185571,
		0.284129, -0.833267, 0.474275,
		44.843628, 32.914185, 23.088570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180531, 33.540829, 23.318176>,  <44.644737, 33.497471, 22.756577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180531, 33.540829, 23.318176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.442074, 33.266708, 23.446444>,  <44.598999, 33.102238, 23.523403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.442074, 33.266708, 23.446444>,  <44.180531, 33.540829, 23.318176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442074, 33.266708, 23.446444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305747, 0.148354, 0.940484,
		-0.692086, -0.712990, -0.112526,
		0.653862, -0.685300, 0.320668,
		44.638233, 33.061119, 23.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775837, 33.141228, 23.738731>,  <44.180531, 33.540829, 23.318176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775837, 33.141228, 23.738731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.157341, 33.074623, 23.838829>,  <44.386242, 33.034660, 23.898888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.157341, 33.074623, 23.838829>,  <43.775837, 33.141228, 23.738731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157341, 33.074623, 23.838829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254182, -0.002417, 0.967153,
		-0.160439, -0.986036, -0.044630,
		0.953756, -0.166513, 0.250245,
		44.443466, 33.024670, 23.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784988, 32.599934, 24.273333>,  <43.775837, 33.141228, 23.738731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784988, 32.599934, 24.273333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114204, 32.822308, 24.319881>,  <44.311733, 32.955734, 24.347811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114204, 32.822308, 24.319881>,  <43.784988, 32.599934, 24.273333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114204, 32.822308, 24.319881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173662, 0.051236, 0.983471,
		0.540787, -0.829643, 0.138715,
		0.823038, 0.555938, 0.116370,
		44.361115, 32.989090, 24.354792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241608, 32.313499, 24.880266>,  <43.784988, 32.599934, 24.273333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241608, 32.313499, 24.880266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.365788, 32.688305, 24.816225>,  <44.440296, 32.913189, 24.777802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.365788, 32.688305, 24.816225>,  <44.241608, 32.313499, 24.880266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365788, 32.688305, 24.816225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007389, 0.170797, 0.985279,
		0.950562, -0.304694, 0.059948,
		0.310448, 0.937011, -0.160102,
		44.458923, 32.969410, 24.768194>
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
