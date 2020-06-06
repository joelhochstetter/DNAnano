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
	<24.667051, 35.185490, 34.940308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295935, 35.061852, 35.023888>,  <24.073265, 34.987667, 35.074036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295935, 35.061852, 35.023888>,  <24.667051, 35.185490, 34.940308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295935, 35.061852, 35.023888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152873, 0.195920, 0.968631,
		-0.340337, 0.930631, -0.134521,
		-0.927793, -0.309096, 0.208947,
		24.017597, 34.969124, 35.086571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194101, 34.842457, 34.408730>,  <24.667051, 35.185490, 34.940308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194101, 34.842457, 34.408730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100075, 34.962654, 34.038982>,  <25.043659, 35.034771, 33.817135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100075, 34.962654, 34.038982>,  <25.194101, 34.842457, 34.408730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100075, 34.962654, 34.038982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826192, 0.562733, -0.027168,
		0.512006, -0.770089, -0.380542,
		-0.235066, 0.300491, -0.924364,
		25.029554, 35.052803, 33.761673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871878, 34.989323, 34.137299>,  <25.194101, 34.842457, 34.408730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871878, 34.989323, 34.137299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608555, 35.182461, 33.906303>,  <25.450562, 35.298344, 33.767708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608555, 35.182461, 33.906303>,  <25.871878, 34.989323, 34.137299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608555, 35.182461, 33.906303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633882, 0.769351, -0.079329,
		0.405984, -0.418280, -0.812538,
		-0.658309, 0.482847, -0.577484,
		25.411062, 35.327316, 33.733059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230297, 35.182419, 33.478580>,  <25.871878, 34.989323, 34.137299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230297, 35.182419, 33.478580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979052, 35.426411, 33.671825>,  <25.828304, 35.572807, 33.787773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979052, 35.426411, 33.671825>,  <26.230297, 35.182419, 33.478580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979052, 35.426411, 33.671825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701607, 0.712452, 0.012640,
		-0.336483, 0.346893, -0.875468,
		-0.628114, 0.609982, 0.483110,
		25.790617, 35.609406, 33.816757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212254, 35.806278, 32.961025>,  <26.230297, 35.182419, 33.478580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212254, 35.806278, 32.961025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174902, 35.843067, 33.357574>,  <26.152491, 35.865139, 33.595505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174902, 35.843067, 33.357574>,  <26.212254, 35.806278, 32.961025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174902, 35.843067, 33.357574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727902, 0.685663, 0.004955,
		-0.679293, 0.722086, -0.130970,
		-0.093380, 0.091967, 0.991374,
		26.146889, 35.870659, 33.654987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489595, 36.392036, 32.707825>,  <26.212254, 35.806278, 32.961025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489595, 36.392036, 32.707825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784239, 36.547882, 32.486698>,  <26.961025, 36.641388, 32.354023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784239, 36.547882, 32.486698>,  <26.489595, 36.392036, 32.707825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784239, 36.547882, 32.486698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573156, -0.074300, -0.816071,
		-0.359025, 0.917977, 0.168577,
		0.736610, 0.389611, -0.552820,
		27.005222, 36.664764, 32.320854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136372, 36.904373, 32.215050>,  <26.489595, 36.392036, 32.707825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136372, 36.904373, 32.215050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493469, 36.793648, 32.072845>,  <26.707727, 36.727211, 31.987524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493469, 36.793648, 32.072845>,  <26.136372, 36.904373, 32.215050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493469, 36.793648, 32.072845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408429, -0.164006, -0.897935,
		0.190256, 0.946824, -0.259473,
		0.892742, -0.276814, -0.355507,
		26.761292, 36.710602, 31.966194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279512, 37.247372, 31.653021>,  <26.136372, 36.904373, 32.215050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279512, 37.247372, 31.653021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535124, 36.946056, 31.590803>,  <26.688492, 36.765266, 31.553473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535124, 36.946056, 31.590803>,  <26.279512, 37.247372, 31.653021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535124, 36.946056, 31.590803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274802, -0.034712, -0.960874,
		0.718418, 0.656771, -0.229188,
		0.639030, -0.753291, -0.155544,
		26.726833, 36.720070, 31.544140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593683, 37.503330, 31.134975>,  <26.279512, 37.247372, 31.653021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593683, 37.503330, 31.134975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684853, 37.114056, 31.122623>,  <26.739553, 36.880489, 31.115211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684853, 37.114056, 31.122623>,  <26.593683, 37.503330, 31.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684853, 37.114056, 31.122623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011676, 0.034444, -0.999338,
		0.973609, 0.227412, 0.019214,
		0.227923, -0.973189, -0.030880,
		26.753229, 36.822098, 31.113359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274452, 37.427422, 30.693357>,  <26.593683, 37.503330, 31.134975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274452, 37.427422, 30.693357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038975, 37.104080, 30.694761>,  <26.897688, 36.910076, 30.695604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038975, 37.104080, 30.694761>,  <27.274452, 37.427422, 30.693357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038975, 37.104080, 30.694761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125952, -0.096013, -0.987379,
		0.798484, -0.580821, 0.158335,
		-0.588693, -0.808349, 0.003509,
		26.862368, 36.861576, 30.695814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611738, 36.931667, 30.326906>,  <27.274452, 37.427422, 30.693357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611738, 36.931667, 30.326906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223646, 36.839649, 30.296625>,  <26.990791, 36.784439, 30.278456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223646, 36.839649, 30.296625>,  <27.611738, 36.931667, 30.326906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223646, 36.839649, 30.296625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099842, -0.095156, -0.990443,
		0.220647, -0.968516, 0.115291,
		-0.970230, -0.230049, -0.075703,
		26.932577, 36.770634, 30.273914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572487, 36.486069, 29.688780>,  <27.611738, 36.931667, 30.326906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572487, 36.486069, 29.688780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185070, 36.546688, 29.767733>,  <26.952620, 36.583061, 29.815104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185070, 36.546688, 29.767733>,  <27.572487, 36.486069, 29.688780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185070, 36.546688, 29.767733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225709, -0.200955, -0.953243,
		-0.104797, -0.967807, 0.228839,
		-0.968542, 0.151548, 0.197383,
		26.894508, 36.592152, 29.826948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210676, 35.964207, 29.316540>,  <27.572487, 36.486069, 29.688780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210676, 35.964207, 29.316540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945057, 36.252411, 29.396452>,  <26.785685, 36.425331, 29.444399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945057, 36.252411, 29.396452>,  <27.210676, 35.964207, 29.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945057, 36.252411, 29.396452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234521, 0.052999, -0.970665,
		-0.709958, -0.691420, 0.133780,
		-0.664048, 0.720506, 0.199780,
		26.745842, 36.468563, 29.456387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581280, 35.819016, 28.961872>,  <27.210676, 35.964207, 29.316540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581280, 35.819016, 28.961872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539875, 36.210350, 29.033583>,  <26.515032, 36.445152, 29.076609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539875, 36.210350, 29.033583>,  <26.581280, 35.819016, 28.961872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539875, 36.210350, 29.033583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417932, 0.120778, -0.900414,
		-0.902562, -0.168130, 0.396377,
		-0.103513, 0.978338, 0.179276,
		26.508821, 36.503853, 29.087366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862167, 35.974300, 28.675524>,  <26.581280, 35.819016, 28.961872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862167, 35.974300, 28.675524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067039, 36.317341, 28.694286>,  <26.189962, 36.523163, 28.705544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067039, 36.317341, 28.694286>,  <25.862167, 35.974300, 28.675524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067039, 36.317341, 28.694286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340326, 0.252790, -0.905690,
		-0.788575, 0.447912, 0.421336,
		0.512179, 0.857597, 0.046908,
		26.220694, 36.574619, 28.708359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425085, 36.430626, 28.380487>,  <25.862167, 35.974300, 28.675524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425085, 36.430626, 28.380487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776346, 36.621864, 28.373922>,  <25.987103, 36.736607, 28.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776346, 36.621864, 28.373922>,  <25.425085, 36.430626, 28.380487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776346, 36.621864, 28.373922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206755, 0.348377, -0.914268,
		-0.431389, 0.806262, 0.404778,
		0.878155, 0.478095, -0.016412,
		26.039793, 36.765293, 28.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299601, 37.031963, 28.042603>,  <25.425085, 36.430626, 28.380487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299601, 37.031963, 28.042603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687143, 36.938232, 28.010586>,  <25.919670, 36.881996, 27.991375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687143, 36.938232, 28.010586>,  <25.299601, 37.031963, 28.042603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687143, 36.938232, 28.010586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044704, 0.152412, -0.987306,
		0.243549, 0.960137, 0.137191,
		0.968858, -0.234324, -0.080042,
		25.977800, 36.867935, 27.986572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478127, 37.402016, 27.477350>,  <25.299601, 37.031963, 28.042603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478127, 37.402016, 27.477350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800156, 37.166836, 27.508780>,  <25.993372, 37.025726, 27.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800156, 37.166836, 27.508780>,  <25.478127, 37.402016, 27.477350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800156, 37.166836, 27.508780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186308, 0.124874, -0.974523,
		0.563161, 0.799199, 0.210073,
		0.805071, -0.587952, 0.078573,
		26.041677, 36.990452, 27.532351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067657, 37.671032, 27.074688>,  <25.478127, 37.402016, 27.477350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067657, 37.671032, 27.074688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178688, 37.289532, 27.120848>,  <26.245306, 37.060631, 27.148542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178688, 37.289532, 27.120848>,  <26.067657, 37.671032, 27.074688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178688, 37.289532, 27.120848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286707, -0.032406, -0.957470,
		0.916924, 0.298858, 0.264450,
		0.277578, -0.953747, 0.115398,
		26.261961, 37.003407, 27.155468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802496, 37.591824, 26.811604>,  <26.067657, 37.671032, 27.074688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802496, 37.591824, 26.811604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643126, 37.224945, 26.810329>,  <26.547504, 37.004818, 26.809565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643126, 37.224945, 26.810329>,  <26.802496, 37.591824, 26.811604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643126, 37.224945, 26.810329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415444, -0.177370, -0.892158,
		0.817719, -0.356780, 0.451712,
		-0.398425, -0.917196, -0.003183,
		26.523598, 36.949787, 26.809374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287439, 37.200466, 26.508541>,  <26.802496, 37.591824, 26.811604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287439, 37.200466, 26.508541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979872, 36.945057, 26.521496>,  <26.795332, 36.791809, 26.529268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979872, 36.945057, 26.521496>,  <27.287439, 37.200466, 26.508541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979872, 36.945057, 26.521496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294747, -0.398981, -0.868296,
		0.567352, -0.658103, 0.494987,
		-0.768918, -0.638526, 0.032389,
		26.749197, 36.753498, 26.531212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602703, 36.613808, 26.196066>,  <27.287439, 37.200466, 26.508541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602703, 36.613808, 26.196066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209871, 36.552967, 26.151560>,  <26.974173, 36.516460, 26.124857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209871, 36.552967, 26.151560>,  <27.602703, 36.613808, 26.196066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209871, 36.552967, 26.151560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155520, -0.320668, -0.934337,
		0.106439, -0.934899, 0.338577,
		-0.982082, -0.152105, -0.111264,
		26.915247, 36.507336, 26.118181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465269, 36.018723, 25.688665>,  <27.602703, 36.613808, 26.196066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465269, 36.018723, 25.688665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120810, 36.222046, 25.685917>,  <26.914135, 36.344040, 25.684267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120810, 36.222046, 25.685917>,  <27.465269, 36.018723, 25.688665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120810, 36.222046, 25.685917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025487, -0.056673, -0.998067,
		-0.507718, -0.859307, 0.061759,
		-0.861146, 0.508311, -0.006873,
		26.862465, 36.374538, 25.683855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956757, 35.620804, 25.289152>,  <27.465269, 36.018723, 25.688665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956757, 35.620804, 25.289152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847033, 36.005455, 25.291349>,  <26.781199, 36.236244, 25.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847033, 36.005455, 25.291349>,  <26.956757, 35.620804, 25.289152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847033, 36.005455, 25.291349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078238, 0.028010, -0.996541,
		-0.958454, -0.272930, -0.082919,
		-0.274309, 0.961626, 0.005492,
		26.764740, 36.293941, 25.292997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546457, 35.643482, 24.773941>,  <26.956757, 35.620804, 25.289152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546457, 35.643482, 24.773941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622776, 36.034115, 24.813702>,  <26.668568, 36.268494, 24.837557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622776, 36.034115, 24.813702>,  <26.546457, 35.643482, 24.773941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622776, 36.034115, 24.813702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095028, 0.119161, -0.988317,
		-0.977019, 0.179124, 0.115538,
		0.190799, 0.976584, 0.099400,
		26.680016, 36.327091, 24.843521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959660, 36.070206, 24.475395>,  <26.546457, 35.643482, 24.773941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959660, 36.070206, 24.475395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293436, 36.286911, 24.434990>,  <26.493702, 36.416935, 24.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293436, 36.286911, 24.434990>,  <25.959660, 36.070206, 24.475395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293436, 36.286911, 24.434990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122755, 0.004029, -0.992429,
		-0.537253, 0.840522, 0.069866,
		0.834440, 0.541762, -0.101014,
		26.543768, 36.449440, 24.404686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833298, 36.716713, 24.041235>,  <25.959660, 36.070206, 24.475395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833298, 36.716713, 24.041235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221092, 36.626053, 24.003864>,  <26.453768, 36.571655, 23.981441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221092, 36.626053, 24.003864>,  <25.833298, 36.716713, 24.041235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221092, 36.626053, 24.003864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075553, 0.086318, -0.993399,
		0.233222, 0.970143, 0.066559,
		0.969484, -0.226654, -0.093429,
		26.511938, 36.558056, 23.975836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082947, 37.209801, 23.468571>,  <25.833298, 36.716713, 24.041235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082947, 37.209801, 23.468571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337790, 36.904781, 23.513494>,  <26.490696, 36.721771, 23.540449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337790, 36.904781, 23.513494>,  <26.082947, 37.209801, 23.468571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337790, 36.904781, 23.513494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163407, -0.008767, -0.986520,
		0.753253, 0.646872, 0.119020,
		0.637108, -0.762548, 0.112307,
		26.528923, 36.676018, 23.547186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682384, 37.405182, 23.133993>,  <26.082947, 37.209801, 23.468571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682384, 37.405182, 23.133993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618044, 37.010803, 23.115967>,  <26.579439, 36.774174, 23.105150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618044, 37.010803, 23.115967>,  <26.682384, 37.405182, 23.133993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618044, 37.010803, 23.115967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018032, 0.042719, -0.998924,
		0.986813, -0.161493, 0.010908,
		-0.160853, -0.985949, -0.045068,
		26.569788, 36.715019, 23.102446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251905, 37.039776, 22.772085>,  <26.682384, 37.405182, 23.133993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251905, 37.039776, 22.772085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886772, 36.891083, 22.704489>,  <26.667692, 36.801868, 22.663931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886772, 36.891083, 22.704489>,  <27.251905, 37.039776, 22.772085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886772, 36.891083, 22.704489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095829, 0.207275, -0.973578,
		0.396934, -0.904906, -0.153585,
		-0.912831, -0.371729, -0.168991,
		26.612923, 36.779564, 22.653791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216984, 36.481792, 22.232485>,  <27.251905, 37.039776, 22.772085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216984, 36.481792, 22.232485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857494, 36.656483, 22.248304>,  <26.641800, 36.761295, 22.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857494, 36.656483, 22.248304>,  <27.216984, 36.481792, 22.232485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857494, 36.656483, 22.248304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026531, 0.144180, -0.989196,
		-0.437708, -0.887966, -0.141165,
		-0.898726, 0.436724, 0.039550,
		26.587877, 36.787498, 22.260170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697462, 36.149113, 21.916346>,  <27.216984, 36.481792, 22.232485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697462, 36.149113, 21.916346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596500, 36.534790, 21.883814>,  <26.535923, 36.766197, 21.864294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596500, 36.534790, 21.883814>,  <26.697462, 36.149113, 21.916346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596500, 36.534790, 21.883814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060863, -0.099704, -0.993154,
		-0.965706, -0.245727, 0.083849,
		-0.252405, 0.964198, -0.081329,
		26.520779, 36.824051, 21.859415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688940, 35.576122, 22.370510>,  <26.697462, 36.149113, 21.916346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688940, 35.576122, 22.370510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353451, 35.480614, 22.566278>,  <26.152157, 35.423309, 22.683741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353451, 35.480614, 22.566278>,  <26.688940, 35.576122, 22.370510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353451, 35.480614, 22.566278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501372, 0.012184, 0.865146,
		-0.212532, 0.971000, 0.109492,
		-0.838723, -0.238768, 0.489422,
		26.101833, 35.408985, 22.713104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833197, 35.756710, 23.014437>,  <26.688940, 35.576122, 22.370510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833197, 35.756710, 23.014437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508329, 35.534386, 23.085388>,  <26.313410, 35.400993, 23.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508329, 35.534386, 23.085388>,  <26.833197, 35.756710, 23.014437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508329, 35.534386, 23.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295115, -0.129104, 0.946699,
		-0.503283, 0.821224, 0.268882,
		-0.812166, -0.555808, 0.177380,
		26.264679, 35.367641, 23.138601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184528, 35.726093, 23.708241>,  <26.833197, 35.756710, 23.014437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184528, 35.726093, 23.708241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306887, 36.055340, 23.516867>,  <27.380302, 36.252888, 23.402042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306887, 36.055340, 23.516867>,  <27.184528, 35.726093, 23.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306887, 36.055340, 23.516867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745102, 0.105847, 0.658498,
		0.592664, -0.557916, -0.580930,
		0.305897, 0.823120, -0.478436,
		27.398657, 36.302277, 23.373337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916260, 35.640732, 23.479027>,  <27.184528, 35.726093, 23.708241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916260, 35.640732, 23.479027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876785, 36.038780, 23.478479>,  <27.853100, 36.277607, 23.478151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876785, 36.038780, 23.478479>,  <27.916260, 35.640732, 23.479027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876785, 36.038780, 23.478479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776362, 0.077853, 0.625461,
		0.622513, 0.060665, -0.780255,
		-0.098688, 0.995117, -0.001366,
		27.847179, 36.337315, 23.478069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539026, 35.784985, 23.473171>,  <27.916260, 35.640732, 23.479027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539026, 35.784985, 23.473171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353333, 36.123325, 23.578253>,  <28.241917, 36.326332, 23.641302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353333, 36.123325, 23.578253>,  <28.539026, 35.784985, 23.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353333, 36.123325, 23.578253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733394, 0.200800, 0.649471,
		0.496608, 0.494173, -0.713564,
		-0.464235, 0.845856, 0.262705,
		28.214062, 36.377083, 23.657064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073645, 36.232952, 23.676035>,  <28.539026, 35.784985, 23.473171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073645, 36.232952, 23.676035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758921, 36.405548, 23.852554>,  <28.570086, 36.509106, 23.958466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758921, 36.405548, 23.852554>,  <29.073645, 36.232952, 23.676035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758921, 36.405548, 23.852554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566390, 0.220711, 0.794033,
		0.245220, 0.874700, -0.418051,
		-0.786810, 0.431493, 0.441299,
		28.522879, 36.534996, 23.984943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322523, 37.009663, 23.840858>,  <29.073645, 36.232952, 23.676035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322523, 37.009663, 23.840858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019354, 36.905842, 24.080254>,  <28.837452, 36.843552, 24.223890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019354, 36.905842, 24.080254>,  <29.322523, 37.009663, 23.840858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019354, 36.905842, 24.080254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533365, 0.281678, 0.797608,
		-0.375599, 0.923738, -0.075056,
		-0.757923, -0.259548, 0.598488,
		28.791977, 36.827976, 24.259800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329628, 37.460068, 24.462374>,  <29.322523, 37.009663, 23.840858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329628, 37.460068, 24.462374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091106, 37.170021, 24.600140>,  <28.947994, 36.995991, 24.682800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091106, 37.170021, 24.600140>,  <29.329628, 37.460068, 24.462374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091106, 37.170021, 24.600140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297626, 0.198763, 0.933762,
		-0.745547, 0.659313, 0.097291,
		-0.596304, -0.725120, 0.344416,
		28.912216, 36.952484, 24.703465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980362, 37.819973, 24.999855>,  <29.329628, 37.460068, 24.462374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980362, 37.819973, 24.999855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964144, 37.428516, 25.080469>,  <28.954412, 37.193642, 25.128838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964144, 37.428516, 25.080469>,  <28.980362, 37.819973, 24.999855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964144, 37.428516, 25.080469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239039, 0.186344, 0.952962,
		-0.970163, 0.086812, 0.226378,
		-0.040545, -0.978642, 0.201535,
		28.951981, 37.134922, 25.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681337, 37.832684, 25.700710>,  <28.980362, 37.819973, 24.999855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681337, 37.832684, 25.700710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835470, 37.465408, 25.663933>,  <28.927950, 37.245045, 25.641867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835470, 37.465408, 25.663933>,  <28.681337, 37.832684, 25.700710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835470, 37.465408, 25.663933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169911, -0.027335, 0.985080,
		-0.907000, -0.395207, 0.145477,
		0.385333, -0.918186, -0.091943,
		28.951071, 37.189953, 25.636351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365366, 37.378105, 26.269863>,  <28.681337, 37.832684, 25.700710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365366, 37.378105, 26.269863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716431, 37.230820, 26.147144>,  <28.927071, 37.142448, 26.073513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716431, 37.230820, 26.147144>,  <28.365366, 37.378105, 26.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716431, 37.230820, 26.147144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219493, -0.260257, 0.940260,
		-0.426066, -0.892571, -0.147596,
		0.877662, -0.368217, -0.306799,
		28.979729, 37.120354, 26.055105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381701, 36.718880, 26.521730>,  <28.365366, 37.378105, 26.269863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381701, 36.718880, 26.521730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767437, 36.806904, 26.462915>,  <28.998878, 36.859718, 26.427626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767437, 36.806904, 26.462915>,  <28.381701, 36.718880, 26.521730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767437, 36.806904, 26.462915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182280, -0.149439, 0.971824,
		0.191888, -0.963971, -0.184223,
		0.964341, 0.220062, -0.147037,
		29.056740, 36.872921, 26.418804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745674, 36.371525, 27.074411>,  <28.381701, 36.718880, 26.521730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745674, 36.371525, 27.074411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008451, 36.646587, 26.950764>,  <29.166119, 36.811626, 26.876575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008451, 36.646587, 26.950764>,  <28.745674, 36.371525, 27.074411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008451, 36.646587, 26.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360387, 0.073718, 0.929885,
		0.662228, -0.722285, -0.199394,
		0.656944, 0.687655, -0.309120,
		29.205534, 36.852882, 26.858028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370872, 36.182983, 27.368597>,  <28.745674, 36.371525, 27.074411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370872, 36.182983, 27.368597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413191, 36.573303, 27.292051>,  <29.438581, 36.807495, 27.246124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413191, 36.573303, 27.292051>,  <29.370872, 36.182983, 27.368597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413191, 36.573303, 27.292051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206558, 0.166682, 0.964132,
		0.972698, -0.141529, -0.183925,
		0.105796, 0.975801, -0.191365,
		29.444929, 36.866043, 27.234642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019583, 36.447407, 27.715319>,  <29.370872, 36.182983, 27.368597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019583, 36.447407, 27.715319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748674, 36.734909, 27.652454>,  <29.586130, 36.907410, 27.614737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748674, 36.734909, 27.652454>,  <30.019583, 36.447407, 27.715319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748674, 36.734909, 27.652454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092246, 0.294882, 0.951071,
		0.729928, 0.629635, -0.266017,
		-0.677271, 0.718752, -0.157161,
		29.545494, 36.950535, 27.605307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412844, 36.945538, 28.014727>,  <30.019583, 36.447407, 27.715319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412844, 36.945538, 28.014727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021906, 37.025105, 27.985796>,  <29.787344, 37.072845, 27.968437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021906, 37.025105, 27.985796>,  <30.412844, 36.945538, 28.014727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021906, 37.025105, 27.985796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053254, 0.099621, 0.993599,
		0.204845, 0.974941, -0.086772,
		-0.977345, 0.198913, -0.072327,
		29.728703, 37.084778, 27.964098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238432, 37.454834, 28.549593>,  <30.412844, 36.945538, 28.014727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238432, 37.454834, 28.549593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876575, 37.303493, 28.471132>,  <29.659462, 37.212688, 28.424055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876575, 37.303493, 28.471132>,  <30.238432, 37.454834, 28.549593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876575, 37.303493, 28.471132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176044, -0.087409, 0.980494,
		-0.388118, 0.921525, 0.012467,
		-0.904640, -0.378352, -0.196154,
		29.605183, 37.189987, 28.412287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702574, 37.909653, 28.946093>,  <30.238432, 37.454834, 28.549593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702574, 37.909653, 28.946093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538906, 37.555424, 28.858139>,  <29.440706, 37.342888, 28.805367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538906, 37.555424, 28.858139>,  <29.702574, 37.909653, 28.946093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538906, 37.555424, 28.858139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271541, -0.111887, 0.955901,
		-0.871119, 0.450831, -0.194688,
		-0.409167, -0.885569, -0.219886,
		29.416157, 37.289753, 28.792173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947285, 38.004196, 29.037497>,  <29.702574, 37.909653, 28.946093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947285, 38.004196, 29.037497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058277, 37.620831, 29.064159>,  <29.124872, 37.390812, 29.080158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058277, 37.620831, 29.064159>,  <28.947285, 38.004196, 29.037497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058277, 37.620831, 29.064159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385379, -0.047482, 0.921536,
		-0.880050, -0.281397, -0.382529,
		0.277480, -0.958416, 0.066658,
		29.141521, 37.333305, 29.084156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409029, 37.781799, 29.416256>,  <28.947285, 38.004196, 29.037497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409029, 37.781799, 29.416256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694262, 37.503624, 29.451744>,  <28.865402, 37.336720, 29.473038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694262, 37.503624, 29.451744>,  <28.409029, 37.781799, 29.416256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694262, 37.503624, 29.451744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278491, -0.164847, 0.946186,
		-0.643393, -0.699417, -0.311225,
		0.713083, -0.695443, 0.088720,
		28.908186, 37.294991, 29.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114925, 37.188133, 29.861021>,  <28.409029, 37.781799, 29.416256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114925, 37.188133, 29.861021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510368, 37.129948, 29.876509>,  <28.747633, 37.095036, 29.885801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510368, 37.129948, 29.876509>,  <28.114925, 37.188133, 29.861021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510368, 37.129948, 29.876509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075670, -0.257893, 0.963206,
		-0.130124, -0.955161, -0.265962,
		0.988606, -0.145462, 0.038718,
		28.806950, 37.086311, 29.888124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224609, 36.495377, 30.075914>,  <28.114925, 37.188133, 29.861021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224609, 36.495377, 30.075914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567709, 36.675526, 30.175049>,  <28.773569, 36.783615, 30.234529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567709, 36.675526, 30.175049>,  <28.224609, 36.495377, 30.075914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567709, 36.675526, 30.175049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115430, -0.301062, 0.946592,
		0.500938, -0.840549, -0.206249,
		0.857751, 0.450377, 0.247838,
		28.825035, 36.810638, 30.249401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575619, 36.052979, 30.548639>,  <28.224609, 36.495377, 30.075914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575619, 36.052979, 30.548639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766985, 36.399559, 30.605751>,  <28.881804, 36.607506, 30.640018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766985, 36.399559, 30.605751>,  <28.575619, 36.052979, 30.548639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766985, 36.399559, 30.605751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015137, -0.154433, 0.987887,
		0.878004, -0.474781, -0.060767,
		0.478414, 0.866449, 0.142780,
		28.910509, 36.659492, 30.648584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081263, 35.923141, 30.909294>,  <28.575619, 36.052979, 30.548639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081263, 35.923141, 30.909294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038692, 36.315395, 30.975058>,  <29.013151, 36.550747, 31.014517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038692, 36.315395, 30.975058>,  <29.081263, 35.923141, 30.909294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038692, 36.315395, 30.975058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200229, -0.140827, 0.969575,
		0.973952, 0.136105, -0.181364,
		-0.106423, 0.980634, 0.164411,
		29.006765, 36.609585, 31.024382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621601, 36.046555, 31.356556>,  <29.081263, 35.923141, 30.909294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621601, 36.046555, 31.356556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355049, 36.340237, 31.408537>,  <29.195118, 36.516445, 31.439726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355049, 36.340237, 31.408537>,  <29.621601, 36.046555, 31.356556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355049, 36.340237, 31.408537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119231, -0.067118, 0.990595,
		0.736018, 0.675607, -0.042813,
		-0.666379, 0.734201, 0.129953,
		29.155136, 36.560497, 31.447523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721209, 35.231312, 31.470160>,  <29.621601, 36.046555, 31.356556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721209, 35.231312, 31.470160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053453, 35.087505, 31.300066>,  <30.252800, 35.001221, 31.198009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053453, 35.087505, 31.300066>,  <29.721209, 35.231312, 31.470160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053453, 35.087505, 31.300066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340475, -0.276376, 0.898718,
		-0.440632, -0.891270, -0.107154,
		0.830615, -0.359520, -0.425235,
		30.302637, 34.979649, 31.172495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895292, 34.556427, 31.739454>,  <29.721209, 35.231312, 31.470160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895292, 34.556427, 31.739454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220272, 34.746582, 31.604437>,  <30.415260, 34.860676, 31.523426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220272, 34.746582, 31.604437>,  <29.895292, 34.556427, 31.739454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220272, 34.746582, 31.604437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431231, -0.100326, 0.896646,
		0.392389, -0.874038, -0.286511,
		0.812447, 0.475387, -0.337545,
		30.464006, 34.889198, 31.503174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478256, 34.102188, 31.823402>,  <29.895292, 34.556427, 31.739454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478256, 34.102188, 31.823402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591400, 34.484779, 31.852098>,  <30.659286, 34.714333, 31.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591400, 34.484779, 31.852098>,  <30.478256, 34.102188, 31.823402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591400, 34.484779, 31.852098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270992, -0.151441, 0.950594,
		0.920083, -0.249444, -0.302033,
		0.282861, 0.956474, 0.071741,
		30.676258, 34.771721, 31.873621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241240, 34.394894, 32.158337>,  <30.478256, 34.102188, 31.823402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241240, 34.394894, 32.158337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923298, 34.619701, 32.249851>,  <30.732533, 34.754585, 32.304760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923298, 34.619701, 32.249851>,  <31.241240, 34.394894, 32.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923298, 34.619701, 32.249851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210716, -0.097922, 0.972630,
		0.569036, 0.821310, -0.040592,
		-0.794856, 0.562015, 0.228785,
		30.684841, 34.788307, 32.318485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443151, 34.950256, 32.761047>,  <31.241240, 34.394894, 32.158337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443151, 34.950256, 32.761047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063883, 34.823223, 32.765285>,  <30.836321, 34.747002, 32.767830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063883, 34.823223, 32.765285>,  <31.443151, 34.950256, 32.761047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063883, 34.823223, 32.765285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118975, -0.323885, 0.938586,
		-0.294647, 0.891200, 0.344883,
		-0.948171, -0.317584, 0.010598,
		30.779432, 34.727947, 32.768463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050009, 35.361958, 33.286697>,  <31.443151, 34.950256, 32.761047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050009, 35.361958, 33.286697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885342, 35.004898, 33.213264>,  <30.786541, 34.790661, 33.169205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885342, 35.004898, 33.213264>,  <31.050009, 35.361958, 33.286697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885342, 35.004898, 33.213264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084461, -0.237952, 0.967598,
		-0.907411, 0.382825, 0.173351,
		-0.411669, -0.892650, -0.183586,
		30.761841, 34.737103, 33.158188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412361, 35.276379, 33.730556>,  <31.050009, 35.361958, 33.286697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412361, 35.276379, 33.730556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570398, 34.922085, 33.633095>,  <30.665220, 34.709507, 33.574615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570398, 34.922085, 33.633095>,  <30.412361, 35.276379, 33.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570398, 34.922085, 33.633095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096149, -0.303652, 0.947919,
		-0.913595, -0.351089, -0.205134,
		0.395093, -0.885738, -0.243659,
		30.688927, 34.656364, 33.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965652, 34.707561, 34.025208>,  <30.412361, 35.276379, 33.730556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965652, 34.707561, 34.025208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344553, 34.593037, 33.967598>,  <30.571894, 34.524323, 33.933033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344553, 34.593037, 33.967598>,  <29.965652, 34.707561, 34.025208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344553, 34.593037, 33.967598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035007, -0.539122, 0.841500,
		-0.318578, -0.792069, -0.520706,
		0.947250, -0.286312, -0.144024,
		30.628727, 34.507141, 33.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037859, 33.919876, 34.218136>,  <29.965652, 34.707561, 34.025208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037859, 33.919876, 34.218136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398155, 34.088623, 34.259514>,  <30.614332, 34.189869, 34.284340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398155, 34.088623, 34.259514>,  <30.037859, 33.919876, 34.218136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398155, 34.088623, 34.259514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102713, -0.438260, 0.892960,
		0.422041, -0.793700, -0.438089,
		0.900740, 0.421863, 0.103441,
		30.668377, 34.215183, 34.290546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278893, 33.454777, 34.693554>,  <30.037859, 33.919876, 34.218136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278893, 33.454777, 34.693554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528454, 33.767143, 34.705624>,  <30.678190, 33.954563, 34.712864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528454, 33.767143, 34.705624>,  <30.278893, 33.454777, 34.693554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528454, 33.767143, 34.705624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337669, -0.304189, 0.890757,
		0.704786, -0.545559, -0.453477,
		0.623904, 0.780918, 0.030170,
		30.715626, 34.001419, 34.714676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979532, 33.108337, 34.833588>,  <30.278893, 33.454777, 34.693554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979532, 33.108337, 34.833588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006882, 33.484806, 34.965965>,  <31.023291, 33.710686, 35.045391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006882, 33.484806, 34.965965>,  <30.979532, 33.108337, 34.833588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006882, 33.484806, 34.965965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215602, -0.337819, 0.916184,
		0.974084, 0.008709, -0.226016,
		0.068373, 0.941171, 0.330942,
		31.027393, 33.767159, 35.065247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540390, 33.174713, 35.306648>,  <30.979532, 33.108337, 34.833588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540390, 33.174713, 35.306648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324799, 33.497879, 35.401966>,  <31.195444, 33.691776, 35.459156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324799, 33.497879, 35.401966>,  <31.540390, 33.174713, 35.306648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324799, 33.497879, 35.401966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219942, -0.138101, 0.965688,
		0.813099, 0.572894, -0.103261,
		-0.538976, 0.807911, 0.238293,
		31.163105, 33.740253, 35.473454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977295, 33.554462, 35.701649>,  <31.540390, 33.174713, 35.306648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977295, 33.554462, 35.701649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595726, 33.643269, 35.782387>,  <31.366785, 33.696552, 35.830830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595726, 33.643269, 35.782387>,  <31.977295, 33.554462, 35.701649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595726, 33.643269, 35.782387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196628, -0.045592, 0.979418,
		0.226651, 0.973976, -0.000164,
		-0.953922, 0.222018, 0.201844,
		31.309549, 33.709873, 35.842941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075283, 34.032959, 36.201889>,  <31.977295, 33.554462, 35.701649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075283, 34.032959, 36.201889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686665, 33.941353, 36.226051>,  <31.453493, 33.886387, 36.240547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686665, 33.941353, 36.226051>,  <32.075283, 34.032959, 36.201889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686665, 33.941353, 36.226051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045803, 0.068551, 0.996596,
		-0.232379, 0.971005, -0.056111,
		-0.971546, -0.229018, 0.060405,
		31.395201, 33.872646, 36.244171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778214, 34.453232, 36.784691>,  <32.075283, 34.032959, 36.201889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778214, 34.453232, 36.784691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531675, 34.142227, 36.734745>,  <31.383753, 33.955624, 36.704777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531675, 34.142227, 36.734745>,  <31.778214, 34.453232, 36.784691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531675, 34.142227, 36.734745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135883, -0.051174, 0.989402,
		-0.775664, 0.626780, -0.074110,
		-0.616345, -0.777514, -0.124863,
		31.346771, 33.908974, 36.697285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283707, 34.511261, 37.257305>,  <31.778214, 34.453232, 36.784691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283707, 34.511261, 37.257305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269045, 34.118950, 37.180653>,  <31.260248, 33.883564, 37.134663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269045, 34.118950, 37.180653>,  <31.283707, 34.511261, 37.257305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269045, 34.118950, 37.180653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105768, -0.186876, 0.976674,
		-0.993715, 0.056067, -0.096886,
		-0.036654, -0.980783, -0.191631,
		31.258049, 33.824715, 37.123165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699610, 34.288593, 37.627399>,  <31.283707, 34.511261, 37.257305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699610, 34.288593, 37.627399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930231, 33.968628, 37.560795>,  <31.068604, 33.776649, 37.520832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930231, 33.968628, 37.560795>,  <30.699610, 34.288593, 37.627399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930231, 33.968628, 37.560795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155588, -0.307554, 0.938724,
		-0.802107, -0.515319, -0.301779,
		0.576556, -0.799910, -0.166514,
		31.103197, 33.728653, 37.510841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303341, 33.820370, 37.949490>,  <30.699610, 34.288593, 37.627399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303341, 33.820370, 37.949490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673780, 33.670979, 37.928120>,  <30.896044, 33.581345, 37.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673780, 33.670979, 37.928120>,  <30.303341, 33.820370, 37.949490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673780, 33.670979, 37.928120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044258, -0.248179, 0.967703,
		-0.374673, -0.893825, -0.246368,
		0.926100, -0.373476, -0.053427,
		30.951611, 33.558937, 37.912090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267231, 33.232822, 38.404095>,  <30.303341, 33.820370, 37.949490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267231, 33.232822, 38.404095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662796, 33.286343, 38.378319>,  <30.900135, 33.318455, 38.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662796, 33.286343, 38.378319>,  <30.267231, 33.232822, 38.404095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662796, 33.286343, 38.378319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116268, -0.427583, 0.896468,
		0.092395, -0.894019, -0.438398,
		0.988911, 0.133801, -0.064439,
		30.959469, 33.326485, 38.358986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629831, 32.661991, 38.553589>,  <30.267231, 33.232822, 38.404095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629831, 32.661991, 38.553589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938406, 32.914524, 38.585335>,  <31.123550, 33.066044, 38.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938406, 32.914524, 38.585335>,  <30.629831, 32.661991, 38.553589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938406, 32.914524, 38.585335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336639, -0.510785, 0.791058,
		0.539962, -0.583535, -0.606571,
		0.771437, 0.631337, 0.079363,
		31.169838, 33.103924, 38.609142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333172, 32.287613, 38.603176>,  <30.629831, 32.661991, 38.553589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333172, 32.287613, 38.603176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327543, 32.641319, 38.789886>,  <31.324165, 32.853542, 38.901913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327543, 32.641319, 38.789886>,  <31.333172, 32.287613, 38.603176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327543, 32.641319, 38.789886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103140, -0.463046, 0.880313,
		0.994567, 0.060532, -0.084686,
		-0.014073, 0.884265, 0.466774,
		31.323320, 32.906597, 38.929920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678938, 32.167194, 39.188030>,  <31.333172, 32.287613, 38.603176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678938, 32.167194, 39.188030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513395, 32.518578, 39.283566>,  <31.414070, 32.729408, 39.340885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513395, 32.518578, 39.283566>,  <31.678938, 32.167194, 39.188030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513395, 32.518578, 39.283566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061163, -0.288597, 0.955495,
		0.908286, 0.380829, 0.173166,
		-0.413855, 0.878454, 0.238836,
		31.389238, 32.782112, 39.355217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969076, 32.326672, 39.838783>,  <31.678938, 32.167194, 39.188030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969076, 32.326672, 39.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670612, 32.590897, 39.805538>,  <31.491535, 32.749432, 39.785591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670612, 32.590897, 39.805538>,  <31.969076, 32.326672, 39.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670612, 32.590897, 39.805538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073312, 0.042558, 0.996400,
		0.661720, 0.749566, 0.016672,
		-0.746158, 0.660560, -0.083113,
		31.446764, 32.789066, 39.780605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166046, 32.880955, 40.313175>,  <31.969076, 32.326672, 39.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166046, 32.880955, 40.313175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770088, 32.889107, 40.257046>,  <31.532513, 32.893997, 40.223370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770088, 32.889107, 40.257046>,  <32.166046, 32.880955, 40.313175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770088, 32.889107, 40.257046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133797, 0.193439, 0.971946,
		0.046954, 0.980901, -0.188757,
		-0.989896, 0.020382, -0.140324,
		31.473120, 32.895222, 40.214947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003174, 33.468647, 40.695770>,  <32.166046, 32.880955, 40.313175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003174, 33.468647, 40.695770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696245, 33.220711, 40.630028>,  <31.512089, 33.071949, 40.590580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696245, 33.220711, 40.630028>,  <32.003174, 33.468647, 40.695770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696245, 33.220711, 40.630028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187813, -0.027841, 0.981810,
		-0.613145, 0.784231, -0.095052,
		-0.767320, -0.619844, -0.164359,
		31.466049, 33.034760, 40.580719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310049, 33.782322, 41.035984>,  <32.003174, 33.468647, 40.695770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310049, 33.782322, 41.035984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301607, 33.382645, 41.022289>,  <31.296541, 33.142838, 41.014072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301607, 33.382645, 41.022289>,  <31.310049, 33.782322, 41.035984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301607, 33.382645, 41.022289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378700, -0.023699, 0.925216,
		-0.925279, 0.032492, -0.377894,
		-0.021107, -0.999191, -0.034233,
		31.295275, 33.082886, 41.012020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053427, 33.773125, 41.732368>,  <31.310049, 33.782322, 41.035984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053427, 33.773125, 41.732368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079771, 33.391201, 41.616432>,  <31.095577, 33.162048, 41.546871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079771, 33.391201, 41.616432>,  <31.053427, 33.773125, 41.732368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079771, 33.391201, 41.616432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083238, -0.294712, 0.951953,
		-0.994351, -0.038570, -0.098886,
		0.065860, -0.954807, -0.289837,
		31.099529, 33.104759, 41.529480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449673, 33.353527, 41.906361>,  <31.053427, 33.773125, 41.732368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449673, 33.353527, 41.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723419, 33.066856, 41.852673>,  <30.887667, 32.894852, 41.820457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723419, 33.066856, 41.852673>,  <30.449673, 33.353527, 41.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723419, 33.066856, 41.852673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190833, -0.353722, 0.915676,
		-0.703724, -0.601042, -0.378841,
		0.684364, -0.716679, -0.134224,
		30.928728, 32.851852, 41.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139755, 32.828350, 42.264698>,  <30.449673, 33.353527, 41.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139755, 32.828350, 42.264698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526587, 32.731930, 42.232071>,  <30.758686, 32.674080, 42.212494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526587, 32.731930, 42.232071>,  <30.139755, 32.828350, 42.264698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526587, 32.731930, 42.232071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054719, -0.510025, 0.858417,
		-0.248522, -0.825694, -0.506425,
		0.967079, -0.241047, -0.081571,
		30.816710, 32.659615, 42.207600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184675, 32.188942, 42.405273>,  <30.139755, 32.828350, 42.264698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184675, 32.188942, 42.405273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558184, 32.319248, 42.464539>,  <30.782288, 32.397430, 42.500099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558184, 32.319248, 42.464539>,  <30.184675, 32.188942, 42.405273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558184, 32.319248, 42.464539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033379, -0.491476, 0.870252,
		0.356316, -0.807669, -0.469799,
		0.933769, 0.325766, 0.148161,
		30.838314, 32.416977, 42.508987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547163, 31.625448, 42.559223>,  <30.184675, 32.188942, 42.405273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547163, 31.625448, 42.559223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755692, 31.939568, 42.692810>,  <30.880808, 32.128040, 42.772961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755692, 31.939568, 42.692810>,  <30.547163, 31.625448, 42.559223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755692, 31.939568, 42.692810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058064, -0.423089, 0.904226,
		0.851383, -0.452000, -0.266162,
		0.521321, 0.785297, 0.333966,
		30.912088, 32.175156, 42.792999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128613, 31.361153, 42.967953>,  <30.547163, 31.625448, 42.559223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128613, 31.361153, 42.967953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107080, 31.739326, 43.096485>,  <31.094162, 31.966230, 43.173607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107080, 31.739326, 43.096485>,  <31.128613, 31.361153, 42.967953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107080, 31.739326, 43.096485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206614, -0.304291, 0.929902,
		0.976941, 0.116450, -0.178959,
		-0.053831, 0.945435, 0.321334,
		31.090931, 32.022957, 43.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430971, 31.346266, 43.592049>,  <31.128613, 31.361153, 42.967953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430971, 31.346266, 43.592049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258881, 31.705341, 43.630112>,  <31.155626, 31.920788, 43.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258881, 31.705341, 43.630112>,  <31.430971, 31.346266, 43.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258881, 31.705341, 43.630112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119121, -0.048035, 0.991717,
		0.894826, 0.438001, -0.086268,
		-0.430229, 0.897691, 0.095158,
		31.129812, 31.974649, 43.658661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810925, 31.761660, 44.072533>,  <31.430971, 31.346266, 43.592049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810925, 31.761660, 44.072533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445114, 31.922516, 44.054981>,  <31.225628, 32.019028, 44.044449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445114, 31.922516, 44.054981>,  <31.810925, 31.761660, 44.072533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445114, 31.922516, 44.054981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101088, -0.122154, 0.987350,
		0.391692, 0.907393, 0.152365,
		-0.914526, 0.402139, -0.043880,
		31.170755, 32.043159, 44.041817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781401, 32.391300, 44.515762>,  <31.810925, 31.761660, 44.072533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781401, 32.391300, 44.515762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415384, 32.235409, 44.474159>,  <31.195774, 32.141876, 44.449196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415384, 32.235409, 44.474159>,  <31.781401, 32.391300, 44.515762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415384, 32.235409, 44.474159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052178, -0.141319, 0.988588,
		-0.399976, 0.910024, 0.108977,
		-0.915039, -0.389725, -0.104008,
		31.140873, 32.118492, 44.442959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363428, 32.640366, 45.125759>,  <31.781401, 32.391300, 44.515762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363428, 32.640366, 45.125759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158236, 32.332878, 44.972958>,  <31.035120, 32.148388, 44.881275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158236, 32.332878, 44.972958>,  <31.363428, 32.640366, 45.125759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158236, 32.332878, 44.972958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073701, -0.403933, 0.911815,
		-0.855231, 0.495897, 0.150554,
		-0.512980, -0.768716, -0.382004,
		31.004341, 32.102264, 44.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762192, 32.666218, 45.411621>,  <31.363428, 32.640366, 45.125759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762192, 32.666218, 45.411621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824152, 32.285786, 45.304699>,  <30.861328, 32.057526, 45.240547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824152, 32.285786, 45.304699>,  <30.762192, 32.666218, 45.411621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824152, 32.285786, 45.304699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185227, -0.293728, 0.937771,
		-0.970411, -0.095749, -0.221664,
		0.154900, -0.951081, -0.267302,
		30.870623, 32.000462, 45.224510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353210, 32.323906, 45.948345>,  <30.762192, 32.666218, 45.411621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353210, 32.323906, 45.948345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618191, 32.075191, 45.781231>,  <30.777178, 31.925962, 45.680962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618191, 32.075191, 45.781231>,  <30.353210, 32.323906, 45.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618191, 32.075191, 45.781231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105158, -0.629376, 0.769953,
		-0.741691, -0.466120, -0.482314,
		0.662448, -0.621787, -0.417786,
		30.816925, 31.888657, 45.655895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142372, 31.713478, 46.076275>,  <30.353210, 32.323906, 45.948345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142372, 31.713478, 46.076275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510342, 31.626886, 45.945507>,  <30.731123, 31.574932, 45.867046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510342, 31.626886, 45.945507>,  <30.142372, 31.713478, 46.076275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510342, 31.626886, 45.945507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089153, -0.696450, 0.712046,
		-0.381823, -0.684174, -0.621382,
		0.919925, -0.216478, -0.326917,
		30.786320, 31.561943, 45.847431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250790, 30.964178, 46.199596>,  <30.142372, 31.713478, 46.076275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250790, 30.964178, 46.199596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624075, 31.100689, 46.154621>,  <30.848045, 31.182596, 46.127636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624075, 31.100689, 46.154621>,  <30.250790, 30.964178, 46.199596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624075, 31.100689, 46.154621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343210, -0.753940, 0.560162,
		0.106399, -0.561340, -0.820717,
		0.933213, 0.341279, -0.112439,
		30.904039, 31.203072, 46.120888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639126, 30.378683, 46.259621>,  <30.250790, 30.964178, 46.199596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639126, 30.378683, 46.259621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924446, 30.655176, 46.305923>,  <31.095638, 30.821072, 46.333706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924446, 30.655176, 46.305923>,  <30.639126, 30.378683, 46.259621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924446, 30.655176, 46.305923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510063, -0.625261, 0.590664,
		0.480663, -0.362280, -0.798572,
		0.713301, 0.691232, 0.115754,
		31.138437, 30.862545, 46.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286369, 29.982199, 46.157894>,  <30.639126, 30.378683, 46.259621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286369, 29.982199, 46.157894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367767, 30.320919, 46.354473>,  <31.416607, 30.524151, 46.472420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367767, 30.320919, 46.354473>,  <31.286369, 29.982199, 46.157894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367767, 30.320919, 46.354473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563077, -0.511855, 0.648806,
		0.800959, 0.144695, -0.580972,
		0.203494, 0.846799, 0.491449,
		31.428816, 30.574959, 46.501907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971739, 29.927055, 46.342278>,  <31.286369, 29.982199, 46.157894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971739, 29.927055, 46.342278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853462, 30.206812, 46.602562>,  <31.782497, 30.374666, 46.758732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853462, 30.206812, 46.602562>,  <31.971739, 29.927055, 46.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853462, 30.206812, 46.602562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663312, -0.339868, 0.666714,
		0.687448, 0.628762, -0.363418,
		-0.295690, 0.699391, 0.650707,
		31.764755, 30.416630, 46.797775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585865, 30.196558, 46.784588>,  <31.971739, 29.927055, 46.342278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585865, 30.196558, 46.784588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248241, 30.295969, 46.974663>,  <32.045670, 30.355616, 47.088707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248241, 30.295969, 46.974663>,  <32.585865, 30.196558, 46.784588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248241, 30.295969, 46.974663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435436, -0.199571, 0.877820,
		0.312998, 0.947842, 0.060230,
		-0.844054, 0.248530, 0.475190,
		31.995026, 30.370527, 47.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735077, 30.653759, 47.344105>,  <32.585865, 30.196558, 46.784588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735077, 30.653759, 47.344105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392406, 30.473621, 47.444740>,  <32.186806, 30.365540, 47.505119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392406, 30.473621, 47.444740>,  <32.735077, 30.653759, 47.344105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392406, 30.473621, 47.444740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425853, -0.342159, 0.837602,
		-0.291125, 0.824693, 0.484899,
		-0.856677, -0.450342, 0.251587,
		32.135403, 30.338518, 47.520218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525200, 30.881798, 48.059566>,  <32.735077, 30.653759, 47.344105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525200, 30.881798, 48.059566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310616, 30.548010, 48.009174>,  <32.181866, 30.347736, 47.978939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310616, 30.548010, 48.009174>,  <32.525200, 30.881798, 48.059566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310616, 30.548010, 48.009174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160887, -0.247664, 0.955394,
		-0.828449, 0.492260, 0.267117,
		-0.536458, -0.834471, -0.125979,
		32.149677, 30.297668, 47.971382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011864, 30.789690, 48.577061>,  <32.525200, 30.881798, 48.059566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011864, 30.789690, 48.577061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082287, 30.421865, 48.436543>,  <32.124538, 30.201170, 48.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082287, 30.421865, 48.436543>,  <32.011864, 30.789690, 48.577061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082287, 30.421865, 48.436543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008263, -0.355480, 0.934647,
		-0.984346, -0.167452, -0.054985,
		0.176055, -0.919562, -0.351299,
		32.135105, 30.145996, 48.331154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062061, 30.334393, 49.163422>,  <32.011864, 30.789690, 48.577061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062061, 30.334393, 49.163422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031773, 30.072533, 48.862568>,  <32.013599, 29.915417, 48.682056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031773, 30.072533, 48.862568>,  <32.062061, 30.334393, 49.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031773, 30.072533, 48.862568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098051, -0.755530, 0.647735,
		-0.992296, -0.024697, 0.121402,
		-0.075726, -0.654649, -0.752131,
		32.009056, 29.876139, 48.636929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518827, 29.956074, 49.243492>,  <32.062061, 30.334393, 49.163422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518827, 29.956074, 49.243492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786081, 29.759287, 49.020218>,  <31.946434, 29.641214, 48.886253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786081, 29.759287, 49.020218>,  <31.518827, 29.956074, 49.243492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786081, 29.759287, 49.020218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194623, -0.608525, 0.769298,
		-0.718136, -0.622629, -0.310828,
		0.668134, -0.491966, -0.558181,
		31.986523, 29.611698, 48.852764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345798, 29.214655, 49.203621>,  <31.518827, 29.956074, 49.243492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345798, 29.214655, 49.203621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732622, 29.314135, 49.181904>,  <31.964716, 29.373823, 49.168873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732622, 29.314135, 49.181904>,  <31.345798, 29.214655, 49.203621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732622, 29.314135, 49.181904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165963, -0.454254, 0.875277,
		0.193019, -0.855454, -0.480565,
		0.967058, 0.248701, -0.054294,
		32.022739, 29.388744, 49.165615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897074, 28.614540, 49.231529>,  <31.345798, 29.214655, 49.203621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897074, 28.614540, 49.231529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998823, 28.966436, 49.392200>,  <32.059872, 29.177574, 49.488605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998823, 28.966436, 49.392200>,  <31.897074, 28.614540, 49.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998823, 28.966436, 49.392200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066624, -0.430299, 0.900225,
		0.964808, -0.202232, -0.168068,
		0.254374, 0.879741, 0.401682,
		32.075134, 29.230358, 49.512707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588539, 28.023878, 49.258335>,  <31.897074, 28.614540, 49.231529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588539, 28.023878, 49.258335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198708, 28.113495, 49.258377>,  <30.964809, 28.167265, 49.258404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198708, 28.113495, 49.258377>,  <31.588539, 28.023878, 49.258335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198708, 28.113495, 49.258377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223173, 0.970749, 0.088546,
		0.019735, 0.086319, -0.996072,
		-0.974579, 0.224044, 0.000107,
		30.906334, 28.180708, 49.258408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444084, 28.571259, 48.630863>,  <31.588539, 28.023878, 49.258335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444084, 28.571259, 48.630863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218363, 28.602880, 48.959572>,  <31.082932, 28.621855, 49.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218363, 28.602880, 48.959572>,  <31.444084, 28.571259, 48.630863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218363, 28.602880, 48.959572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208946, 0.976673, 0.049522,
		-0.798690, 0.199652, -0.567656,
		-0.564301, 0.079057, 0.821775,
		31.049072, 28.626598, 49.206104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324448, 27.862892, 48.456509>,  <31.444084, 28.571259, 48.630863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324448, 27.862892, 48.456509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152683, 28.168966, 48.264633>,  <31.049625, 28.352612, 48.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152683, 28.168966, 48.264633>,  <31.324448, 27.862892, 48.456509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152683, 28.168966, 48.264633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113128, -0.481389, -0.869176,
		-0.895996, -0.427499, 0.120150,
		-0.429411, 0.765185, -0.479685,
		31.023859, 28.398521, 48.120728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906153, 27.613735, 47.884483>,  <31.324448, 27.862892, 48.456509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906153, 27.613735, 47.884483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920517, 27.999578, 47.779995>,  <30.929134, 28.231085, 47.717300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920517, 27.999578, 47.779995>,  <30.906153, 27.613735, 47.884483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920517, 27.999578, 47.779995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045205, -0.262691, -0.963820,
		-0.998332, 0.022801, -0.053038,
		0.035908, 0.964610, -0.261223,
		30.931290, 28.288961, 47.701630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457804, 27.383820, 47.306332>,  <30.906153, 27.613735, 47.884483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457804, 27.383820, 47.306332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616085, 27.743956, 47.378780>,  <31.711054, 27.960037, 47.422249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616085, 27.743956, 47.378780>,  <31.457804, 27.383820, 47.306332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616085, 27.743956, 47.378780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885965, -0.426174, 0.182869,
		0.241834, 0.088107, -0.966309,
		0.395704, 0.900340, 0.181123,
		31.734797, 28.014057, 47.433117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942375, 27.598135, 46.778389>,  <31.457804, 27.383820, 47.306332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942375, 27.598135, 46.778389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992380, 27.714262, 47.157879>,  <32.022381, 27.783939, 47.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992380, 27.714262, 47.157879>,  <31.942375, 27.598135, 46.778389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992380, 27.714262, 47.157879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805130, -0.588466, 0.073986,
		0.579775, 0.754601, -0.307309,
		0.125010, 0.290319, 0.948729,
		32.029884, 27.801357, 47.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619167, 27.722927, 47.061104>,  <31.942375, 27.598135, 46.778389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619167, 27.722927, 47.061104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434845, 27.577553, 47.384972>,  <32.324249, 27.490328, 47.579292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434845, 27.577553, 47.384972>,  <32.619167, 27.722927, 47.061104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434845, 27.577553, 47.384972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775226, -0.608973, 0.167858,
		0.432064, 0.705030, 0.562364,
		-0.460810, -0.363434, 0.809673,
		32.296600, 27.468523, 47.627872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845806, 28.053091, 47.819538>,  <32.619167, 27.722927, 47.061104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845806, 28.053091, 47.819538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732903, 27.669624, 47.805176>,  <32.665161, 27.439545, 47.796558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732903, 27.669624, 47.805176>,  <32.845806, 28.053091, 47.819538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732903, 27.669624, 47.805176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872629, -0.272117, 0.405551,
		-0.398558, 0.083140, 0.913367,
		-0.282261, -0.958666, -0.035904,
		32.648224, 27.382025, 47.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497051, 27.998329, 47.425667>,  <32.845806, 28.053091, 47.819538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497051, 27.998329, 47.425667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460682, 28.371483, 47.565071>,  <33.438858, 28.595375, 47.648712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460682, 28.371483, 47.565071>,  <33.497051, 27.998329, 47.425667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460682, 28.371483, 47.565071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454277, 0.350280, -0.819107,
		-0.886208, 0.083839, -0.455638,
		-0.090928, 0.932885, 0.348507,
		33.433403, 28.651348, 47.669624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007484, 28.393681, 46.920292>,  <33.497051, 27.998329, 47.425667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007484, 28.393681, 46.920292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242035, 28.649780, 47.118782>,  <33.382767, 28.803440, 47.237877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242035, 28.649780, 47.118782>,  <33.007484, 28.393681, 46.920292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242035, 28.649780, 47.118782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428207, 0.275008, -0.860819,
		-0.687604, 0.717255, -0.112900,
		0.586378, 0.640247, 0.496230,
		33.417950, 28.841854, 47.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951946, 29.060562, 46.528011>,  <33.007484, 28.393681, 46.920292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951946, 29.060562, 46.528011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292458, 29.052769, 46.737751>,  <33.496765, 29.048092, 46.863594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292458, 29.052769, 46.737751>,  <32.951946, 29.060562, 46.528011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292458, 29.052769, 46.737751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504164, 0.307306, -0.807082,
		-0.145412, 0.951411, 0.271425,
		0.851278, -0.019484, 0.524354,
		33.547840, 29.046925, 46.895058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307339, 29.816761, 46.452957>,  <32.951946, 29.060562, 46.528011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307339, 29.816761, 46.452957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580204, 29.544367, 46.559479>,  <33.743923, 29.380930, 46.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580204, 29.544367, 46.559479>,  <33.307339, 29.816761, 46.452957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580204, 29.544367, 46.559479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582961, 0.286660, -0.760252,
		0.441379, 0.673859, 0.592535,
		0.682159, -0.680984, 0.266308,
		33.784851, 29.340071, 46.639370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913403, 30.210962, 46.401836>,  <33.307339, 29.816761, 46.452957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913403, 30.210962, 46.401836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013210, 29.823828, 46.389008>,  <34.073097, 29.591547, 46.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013210, 29.823828, 46.389008>,  <33.913403, 30.210962, 46.401836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013210, 29.823828, 46.389008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576925, 0.175175, -0.797791,
		0.777750, 0.180564, 0.602080,
		0.249522, -0.967838, -0.032071,
		34.088066, 29.533476, 46.379387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654392, 30.208281, 46.218521>,  <33.913403, 30.210962, 46.401836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654392, 30.208281, 46.218521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526604, 29.837448, 46.140076>,  <34.449932, 29.614948, 46.093010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526604, 29.837448, 46.140076>,  <34.654392, 30.208281, 46.218521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526604, 29.837448, 46.140076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412402, 0.050304, -0.909612,
		0.853148, -0.371473, 0.366259,
		-0.319472, -0.927080, -0.196113,
		34.430763, 29.559324, 46.081242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182087, 29.852247, 45.988007>,  <34.654392, 30.208281, 46.218521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182087, 29.852247, 45.988007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868195, 29.658792, 45.832939>,  <34.679859, 29.542719, 45.739899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868195, 29.658792, 45.832939>,  <35.182087, 29.852247, 45.988007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868195, 29.658792, 45.832939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477937, -0.073874, -0.875282,
		0.394682, -0.872144, 0.289121,
		-0.784731, -0.483639, -0.387673,
		34.632774, 29.513700, 45.716637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436878, 29.371346, 45.581017>,  <35.182087, 29.852247, 45.988007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436878, 29.371346, 45.581017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055935, 29.372545, 45.459030>,  <34.827370, 29.373264, 45.385838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055935, 29.372545, 45.459030>,  <35.436878, 29.371346, 45.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055935, 29.372545, 45.459030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303877, -0.075621, -0.949705,
		-0.025905, -0.997132, 0.071109,
		-0.952359, 0.002994, -0.304965,
		34.770226, 29.373446, 45.367542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275776, 28.667976, 45.280209>,  <35.436878, 29.371346, 45.581017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275776, 28.667976, 45.280209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033497, 28.948330, 45.129532>,  <34.888130, 29.116543, 45.039127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033497, 28.948330, 45.129532>,  <35.275776, 28.667976, 45.280209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033497, 28.948330, 45.129532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469547, -0.067360, -0.880334,
		-0.642386, -0.710088, -0.288299,
		-0.605695, 0.700884, -0.376691,
		34.851788, 29.158594, 45.016525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220245, 28.505213, 44.605511>,  <35.275776, 28.667976, 45.280209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220245, 28.505213, 44.605511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103336, 28.887503, 44.591877>,  <35.033192, 29.116877, 44.583698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103336, 28.887503, 44.591877>,  <35.220245, 28.505213, 44.605511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103336, 28.887503, 44.591877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227178, 0.034770, -0.973233,
		-0.928959, -0.292194, -0.227282,
		-0.292275, 0.955727, -0.034080,
		35.015656, 29.174221, 44.581654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844658, 28.597452, 43.996319>,  <35.220245, 28.505213, 44.605511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844658, 28.597452, 43.996319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911369, 28.981668, 44.085354>,  <34.951397, 29.212198, 44.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911369, 28.981668, 44.085354>,  <34.844658, 28.597452, 43.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911369, 28.981668, 44.085354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151349, 0.198131, -0.968420,
		-0.974310, 0.195196, -0.112334,
		0.166775, 0.960543, 0.222584,
		34.961403, 29.269831, 44.152130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558235, 29.056524, 43.432636>,  <34.844658, 28.597452, 43.996319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558235, 29.056524, 43.432636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808609, 29.311604, 43.612213>,  <34.958832, 29.464651, 43.719959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808609, 29.311604, 43.612213>,  <34.558235, 29.056524, 43.432636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808609, 29.311604, 43.612213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318854, 0.316088, -0.893544,
		-0.711717, 0.702445, -0.005483,
		0.625933, 0.637698, 0.448942,
		34.996387, 29.502913, 43.746895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402512, 29.649897, 43.081295>,  <34.558235, 29.056524, 43.432636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402512, 29.649897, 43.081295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757675, 29.706318, 43.256435>,  <34.970776, 29.740171, 43.361519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757675, 29.706318, 43.256435>,  <34.402512, 29.649897, 43.081295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757675, 29.706318, 43.256435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304436, 0.533383, -0.789190,
		-0.344863, 0.834030, 0.430655,
		0.887912, 0.141055, 0.437853,
		35.024048, 29.748634, 43.387791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494709, 30.337950, 43.112122>,  <34.402512, 29.649897, 43.081295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494709, 30.337950, 43.112122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846169, 30.146973, 43.110325>,  <35.057045, 30.032387, 43.109245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846169, 30.146973, 43.110325>,  <34.494709, 30.337950, 43.112122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846169, 30.146973, 43.110325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255149, 0.477473, -0.840785,
		0.403570, 0.737611, 0.541351,
		0.878653, -0.477440, -0.004493,
		35.109764, 30.003740, 43.108978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929138, 30.850670, 42.868137>,  <34.494709, 30.337950, 43.112122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929138, 30.850670, 42.868137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145123, 30.515812, 42.833187>,  <35.274712, 30.314898, 42.812218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145123, 30.515812, 42.833187>,  <34.929138, 30.850670, 42.868137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145123, 30.515812, 42.833187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394180, 0.343228, -0.852536,
		0.743685, 0.425892, 0.515314,
		0.539958, -0.837144, -0.087376,
		35.307110, 30.264669, 42.806973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557465, 31.066486, 42.567856>,  <34.929138, 30.850670, 42.868137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557465, 31.066486, 42.567856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549713, 30.671915, 42.502644>,  <35.545063, 30.435171, 42.463516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549713, 30.671915, 42.502644>,  <35.557465, 31.066486, 42.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549713, 30.671915, 42.502644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368874, 0.144504, -0.918178,
		0.929277, -0.077933, 0.361068,
		-0.019381, -0.986431, -0.163032,
		35.543900, 30.375986, 42.453735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158344, 30.943195, 42.248817>,  <35.557465, 31.066486, 42.567856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158344, 30.943195, 42.248817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918709, 30.641415, 42.141563>,  <35.774929, 30.460346, 42.077209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918709, 30.641415, 42.141563>,  <36.158344, 30.943195, 42.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918709, 30.641415, 42.141563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337087, 0.066104, -0.939149,
		0.726267, -0.653019, 0.214713,
		-0.599090, -0.754450, -0.268134,
		35.738983, 30.415079, 42.061123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506226, 30.552771, 41.651661>,  <36.158344, 30.943195, 42.248817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506226, 30.552771, 41.651661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122845, 30.448954, 41.604317>,  <35.892815, 30.386663, 41.575912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122845, 30.448954, 41.604317>,  <36.506226, 30.552771, 41.651661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122845, 30.448954, 41.604317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050222, 0.254903, -0.965661,
		0.280807, -0.931482, -0.231277,
		-0.958449, -0.259549, -0.118360,
		35.835308, 30.371090, 41.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592918, 30.160337, 41.070786>,  <36.506226, 30.552771, 41.651661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592918, 30.160337, 41.070786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206078, 30.256224, 41.104832>,  <35.973972, 30.313755, 41.125259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206078, 30.256224, 41.104832>,  <36.592918, 30.160337, 41.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206078, 30.256224, 41.104832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012815, 0.288277, -0.957461,
		-0.254054, -0.927056, -0.275722,
		-0.967105, 0.239714, 0.085118,
		35.915947, 30.328138, 41.130367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267281, 29.716650, 40.503929>,  <36.592918, 30.160337, 41.070786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267281, 29.716650, 40.503929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994209, 30.000387, 40.574116>,  <35.830368, 30.170630, 40.616226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994209, 30.000387, 40.574116>,  <36.267281, 29.716650, 40.503929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994209, 30.000387, 40.574116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099742, 0.328340, -0.939279,
		-0.723882, -0.623722, -0.294901,
		-0.682676, 0.709341, 0.175467,
		35.789406, 30.213190, 40.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613888, 29.473955, 40.140720>,  <36.267281, 29.716650, 40.503929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613888, 29.473955, 40.140720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626141, 29.866686, 40.215633>,  <35.633492, 30.102325, 40.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626141, 29.866686, 40.215633>,  <35.613888, 29.473955, 40.140720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626141, 29.866686, 40.215633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015623, 0.187815, -0.982080,
		-0.999409, 0.027154, 0.021092,
		0.030629, 0.981829, 0.187280,
		35.635330, 30.161234, 40.271816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073750, 29.760077, 39.710907>,  <35.613888, 29.473955, 40.140720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073750, 29.760077, 39.710907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323952, 30.060337, 39.796013>,  <35.474072, 30.240494, 39.847076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323952, 30.060337, 39.796013>,  <35.073750, 29.760077, 39.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323952, 30.060337, 39.796013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005786, 0.268226, -0.963339,
		-0.780199, 0.603804, 0.163433,
		0.625505, 0.750650, 0.212764,
		35.511604, 30.285532, 39.859840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849461, 30.318777, 39.346512>,  <35.073750, 29.760077, 39.710907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849461, 30.318777, 39.346512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232483, 30.406399, 39.421459>,  <35.462296, 30.458971, 39.466427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232483, 30.406399, 39.421459>,  <34.849461, 30.318777, 39.346512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232483, 30.406399, 39.421459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112903, 0.313055, -0.943000,
		-0.265224, 0.924128, 0.275035,
		0.957554, 0.219054, 0.187366,
		35.519749, 30.472115, 39.477669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863873, 30.939152, 39.052536>,  <34.849461, 30.318777, 39.346512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863873, 30.939152, 39.052536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258114, 30.884521, 39.092411>,  <35.494659, 30.851744, 39.116337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258114, 30.884521, 39.092411>,  <34.863873, 30.939152, 39.052536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258114, 30.884521, 39.092411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151655, 0.453256, -0.878385,
		0.074782, 0.880855, 0.467442,
		0.985601, -0.136577, 0.099691,
		35.553795, 30.843548, 39.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060150, 31.601002, 39.021687>,  <34.863873, 30.939152, 39.052536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060150, 31.601002, 39.021687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369431, 31.360500, 38.941032>,  <35.555000, 31.216200, 38.892639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369431, 31.360500, 38.941032>,  <35.060150, 31.601002, 39.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369431, 31.360500, 38.941032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075146, 0.402586, -0.912293,
		0.629693, 0.690233, 0.356461,
		0.773201, -0.601251, -0.201637,
		35.601391, 31.180124, 38.880543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558376, 32.060825, 38.897804>,  <35.060150, 31.601002, 39.021687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558376, 32.060825, 38.897804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623253, 31.716776, 38.704361>,  <35.662178, 31.510345, 38.588295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623253, 31.716776, 38.704361>,  <35.558376, 32.060825, 38.897804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623253, 31.716776, 38.704361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043589, 0.495868, -0.867303,
		0.985796, 0.119588, 0.117917,
		0.162190, -0.860124, -0.483612,
		35.671909, 31.458738, 38.559277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138733, 32.261761, 38.460999>,  <35.558376, 32.060825, 38.897804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138733, 32.261761, 38.460999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007370, 31.927034, 38.285774>,  <35.928551, 31.726200, 38.180641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007370, 31.927034, 38.285774>,  <36.138733, 32.261761, 38.460999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007370, 31.927034, 38.285774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099718, 0.430472, -0.897079,
		0.939258, -0.338290, -0.057925,
		-0.328408, -0.836812, -0.438057,
		35.908848, 31.675991, 38.154358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528965, 32.263519, 37.991142>,  <36.138733, 32.261761, 38.460999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528965, 32.263519, 37.991142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244587, 32.010853, 37.867493>,  <36.073959, 31.859255, 37.793301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244587, 32.010853, 37.867493>,  <36.528965, 32.263519, 37.991142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244587, 32.010853, 37.867493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082560, 0.511500, -0.855308,
		0.698385, -0.582555, -0.415798,
		-0.710945, -0.631662, -0.309128,
		36.031303, 31.821354, 37.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722195, 32.021259, 37.387508>,  <36.528965, 32.263519, 37.991142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722195, 32.021259, 37.387508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329502, 31.946224, 37.400200>,  <36.093887, 31.901203, 37.407814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329502, 31.946224, 37.400200>,  <36.722195, 32.021259, 37.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329502, 31.946224, 37.400200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120851, 0.486105, -0.865504,
		0.146933, -0.853530, -0.499897,
		-0.981736, -0.187584, 0.031725,
		36.034981, 31.889948, 37.409718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491714, 31.775841, 36.759571>,  <36.722195, 32.021259, 37.387508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491714, 31.775841, 36.759571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141300, 31.912682, 36.895527>,  <35.931049, 31.994785, 36.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141300, 31.912682, 36.895527>,  <36.491714, 31.775841, 36.759571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141300, 31.912682, 36.895527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165729, 0.448307, -0.878382,
		-0.452869, -0.825826, -0.336038,
		-0.876038, 0.342101, 0.339888,
		35.878490, 32.015312, 36.997494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144192, 31.850550, 36.162403>,  <36.491714, 31.775841, 36.759571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144192, 31.850550, 36.162403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931679, 32.066307, 36.423721>,  <35.804169, 32.195763, 36.580513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931679, 32.066307, 36.423721>,  <36.144192, 31.850550, 36.162403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931679, 32.066307, 36.423721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204401, 0.666736, -0.716717,
		-0.822166, -0.514315, -0.243974,
		-0.531285, 0.539392, 0.653294,
		35.772293, 32.228127, 36.619709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475269, 31.960524, 35.848930>,  <36.144192, 31.850550, 36.162403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475269, 31.960524, 35.848930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499454, 32.250145, 36.123768>,  <35.513966, 32.423916, 36.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499454, 32.250145, 36.123768>,  <35.475269, 31.960524, 35.848930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499454, 32.250145, 36.123768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340966, 0.661924, -0.667531,
		-0.938129, -0.193916, 0.286897,
		0.060459, 0.724053, 0.687089,
		35.517593, 32.467361, 36.329895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764057, 32.244278, 35.984310>,  <35.475269, 31.960524, 35.848930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764057, 32.244278, 35.984310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037052, 32.524296, 36.068363>,  <35.200848, 32.692307, 36.118793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037052, 32.524296, 36.068363>,  <34.764057, 32.244278, 35.984310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037052, 32.524296, 36.068363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437146, 0.621364, -0.650239,
		-0.585764, 0.351919, 0.730092,
		0.682484, 0.700043, 0.210133,
		35.241798, 32.734310, 36.131405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388630, 32.880127, 36.026558>,  <34.764057, 32.244278, 35.984310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388630, 32.880127, 36.026558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767632, 33.001518, 35.986301>,  <34.995033, 33.074352, 35.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767632, 33.001518, 35.986301>,  <34.388630, 32.880127, 36.026558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767632, 33.001518, 35.986301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294069, 0.703606, -0.646886,
		-0.125503, 0.642526, 0.755917,
		0.947509, 0.303478, -0.100643,
		35.051884, 33.092560, 35.956108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271477, 33.637154, 36.059608>,  <34.388630, 32.880127, 36.026558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271477, 33.637154, 36.059608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626961, 33.548782, 35.898918>,  <34.840252, 33.495758, 35.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626961, 33.548782, 35.898918>,  <34.271477, 33.637154, 36.059608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626961, 33.548782, 35.898918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208691, 0.585256, -0.783532,
		0.408216, 0.780171, 0.474018,
		0.888711, -0.220927, -0.401726,
		34.893574, 33.482506, 35.778400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552574, 34.248760, 35.898830>,  <34.271477, 33.637154, 36.059608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552574, 34.248760, 35.898830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799297, 34.034283, 35.668339>,  <34.947330, 33.905598, 35.530045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799297, 34.034283, 35.668339>,  <34.552574, 34.248760, 35.898830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799297, 34.034283, 35.668339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094935, 0.676060, -0.730706,
		0.781368, 0.505409, 0.366095,
		0.616807, -0.536195, -0.576232,
		34.984341, 33.873425, 35.495468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075611, 34.695339, 35.585728>,  <34.552574, 34.248760, 35.898830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075611, 34.695339, 35.585728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068138, 34.364094, 35.361626>,  <35.063656, 34.165348, 35.227165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068138, 34.364094, 35.361626>,  <35.075611, 34.695339, 35.585728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068138, 34.364094, 35.361626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136022, 0.557246, -0.819131,
		0.990530, 0.060907, -0.123049,
		-0.018678, -0.828111, -0.560253,
		35.062534, 34.115662, 35.193550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254536, 34.958202, 34.957081>,  <35.075611, 34.695339, 35.585728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254536, 34.958202, 34.957081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079048, 34.611496, 34.862228>,  <34.973755, 34.403473, 34.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079048, 34.611496, 34.862228>,  <35.254536, 34.958202, 34.957081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079048, 34.611496, 34.862228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370925, 0.415027, -0.830763,
		0.818497, -0.276517, -0.503589,
		-0.438723, -0.866771, -0.237131,
		34.947430, 34.351463, 34.791088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802959, 35.043865, 35.379776>,  <35.254536, 34.958202, 34.957081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802959, 35.043865, 35.379776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138729, 35.134823, 35.182331>,  <36.340191, 35.189396, 35.063866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138729, 35.134823, 35.182331>,  <35.802959, 35.043865, 35.379776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138729, 35.134823, 35.182331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541518, -0.273046, 0.795113,
		0.046025, -0.934740, -0.352341,
		0.839429, 0.227394, -0.493611,
		36.390556, 35.203041, 35.034248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342163, 34.470356, 35.289150>,  <35.802959, 35.043865, 35.379776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342163, 34.470356, 35.289150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483429, 34.843639, 35.315651>,  <36.568188, 35.067612, 35.331551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483429, 34.843639, 35.315651>,  <36.342163, 34.470356, 35.289150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483429, 34.843639, 35.315651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515272, -0.253128, 0.818793,
		0.780877, -0.255034, -0.570254,
		0.353167, 0.933212, 0.066250,
		36.589378, 35.123604, 35.335526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994850, 34.511181, 35.188007>,  <36.342163, 34.470356, 35.289150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994850, 34.511181, 35.188007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909451, 34.810646, 35.439060>,  <36.858212, 34.990326, 35.589691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909451, 34.810646, 35.439060>,  <36.994850, 34.511181, 35.188007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909451, 34.810646, 35.439060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625796, -0.388533, 0.676330,
		0.750199, 0.537162, -0.385562,
		-0.213495, 0.748665, 0.627631,
		36.845402, 35.035244, 35.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551132, 34.595371, 35.594654>,  <36.994850, 34.511181, 35.188007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551132, 34.595371, 35.594654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299709, 34.809750, 35.820103>,  <37.148853, 34.938377, 35.955372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299709, 34.809750, 35.820103>,  <37.551132, 34.595371, 35.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299709, 34.809750, 35.820103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460877, -0.327079, 0.824992,
		0.626502, 0.778319, -0.041417,
		-0.628560, 0.535947, 0.563625,
		37.111141, 34.970535, 35.989189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929028, 35.094097, 35.962738>,  <37.551132, 34.595371, 35.594654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929028, 35.094097, 35.962738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603649, 35.039597, 36.188923>,  <37.408424, 35.006897, 36.324635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603649, 35.039597, 36.188923>,  <37.929028, 35.094097, 35.962738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603649, 35.039597, 36.188923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581585, -0.204463, 0.787372,
		0.008335, 0.969345, 0.245561,
		-0.813443, -0.136252, 0.565461,
		37.359615, 34.998722, 36.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071243, 35.398647, 36.617397>,  <37.929028, 35.094097, 35.962738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071243, 35.398647, 36.617397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767921, 35.147469, 36.687443>,  <37.585930, 34.996761, 36.729469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767921, 35.147469, 36.687443>,  <38.071243, 35.398647, 36.617397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767921, 35.147469, 36.687443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438443, -0.292474, 0.849839,
		-0.482436, 0.721211, 0.497101,
		-0.758303, -0.627944, 0.175110,
		37.540432, 34.959084, 36.739975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885052, 35.495945, 37.305882>,  <38.071243, 35.398647, 36.617397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885052, 35.495945, 37.305882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662563, 35.168873, 37.246536>,  <37.529068, 34.972630, 37.210930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662563, 35.168873, 37.246536>,  <37.885052, 35.495945, 37.305882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662563, 35.168873, 37.246536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242522, -0.330477, 0.912123,
		-0.794857, 0.471363, 0.382125,
		-0.556225, -0.817680, -0.148366,
		37.495697, 34.923569, 37.202026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400238, 35.447693, 37.814461>,  <37.885052, 35.495945, 37.305882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400238, 35.447693, 37.814461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421703, 35.066456, 37.695312>,  <37.434582, 34.837711, 37.623825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421703, 35.066456, 37.695312>,  <37.400238, 35.447693, 37.814461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421703, 35.066456, 37.695312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131980, -0.288915, 0.948214,
		-0.989799, -0.090195, 0.110286,
		0.053661, -0.953096, -0.297872,
		37.437801, 34.780525, 37.605949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085052, 35.034130, 38.426243>,  <37.400238, 35.447693, 37.814461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085052, 35.034130, 38.426243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239918, 34.742203, 38.200863>,  <37.332836, 34.567047, 38.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239918, 34.742203, 38.200863>,  <37.085052, 35.034130, 38.426243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239918, 34.742203, 38.200863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336084, -0.457360, 0.823328,
		-0.858577, -0.508127, 0.068207,
		0.387160, -0.729814, -0.563453,
		37.356064, 34.523258, 38.031826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698170, 34.392994, 38.573559>,  <37.085052, 35.034130, 38.426243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698170, 34.392994, 38.573559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070179, 34.318092, 38.447071>,  <37.293385, 34.273151, 38.371178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070179, 34.318092, 38.447071>,  <36.698170, 34.392994, 38.573559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070179, 34.318092, 38.447071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228808, -0.378302, 0.896958,
		-0.287580, -0.906546, -0.308986,
		0.930024, -0.187249, -0.316217,
		37.349186, 34.261917, 38.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802391, 33.716824, 38.936535>,  <36.698170, 34.392994, 38.573559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802391, 33.716824, 38.936535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160923, 33.824551, 38.795650>,  <37.376041, 33.889187, 38.711121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160923, 33.824551, 38.795650>,  <36.802391, 33.716824, 38.936535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160923, 33.824551, 38.795650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441831, -0.476098, 0.760340,
		0.037087, -0.837136, -0.545736,
		0.896331, 0.269322, -0.352216,
		37.429821, 33.905346, 38.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325275, 33.103508, 38.926361>,  <36.802391, 33.716824, 38.936535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325275, 33.103508, 38.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535187, 33.443848, 38.936592>,  <37.661133, 33.648052, 38.942730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535187, 33.443848, 38.936592>,  <37.325275, 33.103508, 38.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535187, 33.443848, 38.936592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340881, -0.237593, 0.909587,
		0.780004, -0.468613, -0.414724,
		0.524780, 0.850853, 0.025582,
		37.692619, 33.699104, 38.944267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003696, 32.847763, 38.985226>,  <37.325275, 33.103508, 38.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003696, 32.847763, 38.985226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985126, 33.230343, 39.100494>,  <37.973984, 33.459892, 39.169655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985126, 33.230343, 39.100494>,  <38.003696, 32.847763, 38.985226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985126, 33.230343, 39.100494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428657, -0.241500, 0.870592,
		0.902274, 0.163942, -0.398779,
		-0.046421, 0.956452, 0.288174,
		37.971199, 33.517277, 39.186947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720345, 33.098202, 39.130783>,  <38.003696, 32.847763, 38.985226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720345, 33.098202, 39.130783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480450, 33.321579, 39.360027>,  <38.336514, 33.455605, 39.497574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480450, 33.321579, 39.360027>,  <38.720345, 33.098202, 39.130783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480450, 33.321579, 39.360027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511550, -0.283183, 0.811248,
		0.615333, 0.779710, -0.115838,
		-0.599735, 0.558445, 0.573112,
		38.300529, 33.489113, 39.531960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215630, 33.347721, 39.704582>,  <38.720345, 33.098202, 39.130783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215630, 33.347721, 39.704582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839314, 33.372890, 39.837826>,  <38.613525, 33.387993, 39.917770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839314, 33.372890, 39.837826>,  <39.215630, 33.347721, 39.704582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839314, 33.372890, 39.837826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290396, -0.357366, 0.887671,
		0.174897, 0.931842, 0.317933,
		-0.940787, 0.062924, 0.333106,
		38.557076, 33.391769, 39.937759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303452, 33.465389, 40.469051>,  <39.215630, 33.347721, 39.704582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303452, 33.465389, 40.469051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909683, 33.402092, 40.438370>,  <38.673424, 33.364113, 40.419960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909683, 33.402092, 40.438370>,  <39.303452, 33.465389, 40.469051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909683, 33.402092, 40.438370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008460, -0.393075, 0.919467,
		-0.175648, 0.905788, 0.385611,
		-0.984417, -0.158240, -0.076706,
		38.614357, 33.354618, 40.415359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856808, 33.747673, 41.076885>,  <39.303452, 33.465389, 40.469051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856808, 33.747673, 41.076885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645458, 33.441093, 40.930805>,  <38.518646, 33.257145, 40.843159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645458, 33.441093, 40.930805>,  <38.856808, 33.747673, 41.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645458, 33.441093, 40.930805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080041, -0.383263, 0.920165,
		-0.845229, 0.515423, 0.141159,
		-0.528376, -0.766452, -0.365200,
		38.486946, 33.211159, 40.821243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422276, 33.570885, 41.631496>,  <38.856808, 33.747673, 41.076885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422276, 33.570885, 41.631496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393791, 33.247307, 41.398075>,  <38.376701, 33.053162, 41.258022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393791, 33.247307, 41.398075>,  <38.422276, 33.570885, 41.631496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393791, 33.247307, 41.398075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380428, -0.518789, 0.765592,
		-0.922064, 0.276522, -0.270800,
		-0.071215, -0.808946, -0.583554,
		38.372425, 33.004623, 41.223007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789135, 33.255787, 41.809155>,  <38.422276, 33.570885, 41.631496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789135, 33.255787, 41.809155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019241, 32.964527, 41.660091>,  <38.157303, 32.789772, 41.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019241, 32.964527, 41.660091>,  <37.789135, 33.255787, 41.809155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019241, 32.964527, 41.660091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384492, -0.642832, 0.662520,
		-0.721969, -0.237839, -0.649764,
		0.575262, -0.728148, -0.372657,
		38.191822, 32.746082, 41.548294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375252, 32.697205, 41.729000>,  <37.789135, 33.255787, 41.809155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375252, 32.697205, 41.729000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720974, 32.500786, 41.685448>,  <37.928406, 32.382935, 41.659317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720974, 32.500786, 41.685448>,  <37.375252, 32.697205, 41.729000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720974, 32.500786, 41.685448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319664, -0.703415, 0.634840,
		-0.388323, -0.513889, -0.764933,
		0.864303, -0.491045, -0.108881,
		37.980267, 32.353474, 41.652782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195686, 31.986330, 41.528908>,  <37.375252, 32.697205, 41.729000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195686, 31.986330, 41.528908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553150, 32.002754, 41.707657>,  <37.767628, 32.012608, 41.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553150, 32.002754, 41.707657>,  <37.195686, 31.986330, 41.528908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553150, 32.002754, 41.707657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269250, -0.747586, 0.607140,
		0.359004, -0.662895, -0.657028,
		0.893655, 0.041061, 0.446871,
		37.821247, 32.015072, 41.841717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315331, 31.341814, 41.643490>,  <37.195686, 31.986330, 41.528908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315331, 31.341814, 41.643490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533405, 31.541306, 41.913021>,  <37.664249, 31.660999, 42.074738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533405, 31.541306, 41.913021>,  <37.315331, 31.341814, 41.643490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533405, 31.541306, 41.913021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097903, -0.760409, 0.642023,
		0.832578, -0.415992, -0.365738,
		0.545187, 0.498727, 0.673827,
		37.696960, 31.690924, 42.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622341, 30.785357, 41.910236>,  <37.315331, 31.341814, 41.643490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622341, 30.785357, 41.910236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690086, 31.061972, 42.191120>,  <37.730736, 31.227940, 42.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690086, 31.061972, 42.191120>,  <37.622341, 30.785357, 41.910236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690086, 31.061972, 42.191120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056445, -0.704524, 0.707433,
		0.983936, -0.159451, -0.080289,
		0.169367, 0.691536, 0.702206,
		37.740898, 31.269432, 42.401783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020863, 30.446102, 42.402966>,  <37.622341, 30.785357, 41.910236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020863, 30.446102, 42.402966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875877, 30.761629, 42.601513>,  <37.788887, 30.950945, 42.720642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875877, 30.761629, 42.601513>,  <38.020863, 30.446102, 42.402966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875877, 30.761629, 42.601513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108218, -0.564609, 0.818233,
		0.925694, 0.242864, 0.290014,
		-0.362464, 0.788818, 0.496373,
		37.767139, 30.998274, 42.750423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426151, 30.395700, 43.036320>,  <38.020863, 30.446102, 42.402966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426151, 30.395700, 43.036320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094795, 30.614481, 43.084671>,  <37.895981, 30.745749, 43.113682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094795, 30.614481, 43.084671>,  <38.426151, 30.395700, 43.036320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094795, 30.614481, 43.084671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213224, -0.507460, 0.834877,
		0.517980, 0.665830, 0.536998,
		-0.828392, 0.546950, 0.120883,
		37.846279, 30.778566, 43.120937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486298, 30.686123, 43.662617>,  <38.426151, 30.395700, 43.036320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486298, 30.686123, 43.662617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093067, 30.724997, 43.600494>,  <37.857128, 30.748320, 43.563221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093067, 30.724997, 43.600494>,  <38.486298, 30.686123, 43.662617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093067, 30.724997, 43.600494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163413, -0.081934, 0.983150,
		0.082821, 0.991888, 0.096428,
		-0.983075, 0.097183, -0.155302,
		37.798145, 30.754152, 43.553905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175594, 31.253374, 44.231472>,  <38.486298, 30.686123, 43.662617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175594, 31.253374, 44.231472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905235, 31.001577, 44.078163>,  <37.743019, 30.850500, 43.986179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905235, 31.001577, 44.078163>,  <38.175594, 31.253374, 44.231472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905235, 31.001577, 44.078163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394738, -0.129952, 0.909557,
		-0.622366, 0.766062, -0.160650,
		-0.675901, -0.629492, -0.383272,
		37.702465, 30.812729, 43.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684593, 31.555248, 44.515495>,  <38.175594, 31.253374, 44.231472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684593, 31.555248, 44.515495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556923, 31.186148, 44.429089>,  <37.480320, 30.964687, 44.377247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556923, 31.186148, 44.429089>,  <37.684593, 31.555248, 44.515495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556923, 31.186148, 44.429089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527936, -0.016170, 0.849130,
		-0.787028, 0.385060, -0.481992,
		-0.319172, -0.922750, -0.216013,
		37.461170, 30.909323, 44.364285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867271, 31.524147, 44.534946>,  <37.684593, 31.555248, 44.515495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867271, 31.524147, 44.534946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002365, 31.150091, 44.577751>,  <37.083420, 30.925657, 44.603432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002365, 31.150091, 44.577751>,  <36.867271, 31.524147, 44.534946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002365, 31.150091, 44.577751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486921, -0.076290, 0.870108,
		-0.805508, -0.345970, -0.481104,
		0.337735, -0.935139, 0.107007,
		37.103687, 30.869549, 44.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300957, 31.187571, 44.753975>,  <36.867271, 31.524147, 44.534946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300957, 31.187571, 44.753975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588982, 30.925798, 44.846256>,  <36.761799, 30.768734, 44.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588982, 30.925798, 44.846256>,  <36.300957, 31.187571, 44.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588982, 30.925798, 44.846256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363848, -0.072982, 0.928594,
		-0.590865, -0.752590, -0.290666,
		0.720065, -0.654432, 0.230706,
		36.805000, 30.729469, 44.915470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928268, 30.658480, 45.229755>,  <36.300957, 31.187571, 44.753975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928268, 30.658480, 45.229755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320107, 30.622547, 45.301670>,  <36.555210, 30.600988, 45.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320107, 30.622547, 45.301670>,  <35.928268, 30.658480, 45.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320107, 30.622547, 45.301670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184442, -0.046502, 0.981743,
		-0.079831, -0.994871, -0.062122,
		0.979596, -0.089831, 0.179783,
		36.613987, 30.595598, 45.355606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988003, 30.200594, 45.786842>,  <35.928268, 30.658480, 45.229755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988003, 30.200594, 45.786842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323551, 30.417519, 45.805569>,  <36.524879, 30.547674, 45.816803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323551, 30.417519, 45.805569>,  <35.988003, 30.200594, 45.786842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323551, 30.417519, 45.805569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038687, -0.026388, 0.998903,
		0.542952, -0.839763, -0.001156,
		0.838872, 0.542312, 0.046815,
		36.575214, 30.580212, 45.819614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397858, 29.891006, 46.203808>,  <35.988003, 30.200594, 45.786842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397858, 29.891006, 46.203808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532597, 30.267437, 46.215836>,  <36.613441, 30.493296, 46.223053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532597, 30.267437, 46.215836>,  <36.397858, 29.891006, 46.203808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532597, 30.267437, 46.215836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071136, -0.006411, 0.997446,
		0.938867, -0.338129, 0.064785,
		0.336850, 0.941078, 0.030072,
		36.633652, 30.549761, 46.224857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636562, 29.894844, 46.855724>,  <36.397858, 29.891006, 46.203808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636562, 29.894844, 46.855724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646320, 30.286768, 46.776344>,  <36.652176, 30.521921, 46.728718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646320, 30.286768, 46.776344>,  <36.636562, 29.894844, 46.855724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646320, 30.286768, 46.776344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152795, 0.199827, 0.967844,
		0.987957, 0.006710, 0.154585,
		0.024396, 0.979808, -0.198446,
		36.653641, 30.580711, 46.716812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137276, 30.248817, 47.362534>,  <36.636562, 29.894844, 46.855724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137276, 30.248817, 47.362534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869293, 30.512966, 47.226849>,  <36.708504, 30.671455, 47.145435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869293, 30.512966, 47.226849>,  <37.137276, 30.248817, 47.362534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869293, 30.512966, 47.226849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236729, 0.243040, 0.940686,
		0.703646, 0.710521, -0.006497,
		-0.669956, 0.660372, -0.339215,
		36.668304, 30.711079, 47.125084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271313, 30.841261, 47.742790>,  <37.137276, 30.248817, 47.362534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271313, 30.841261, 47.742790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902431, 30.906631, 47.602600>,  <36.681103, 30.945854, 47.518486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902431, 30.906631, 47.602600>,  <37.271313, 30.841261, 47.742790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902431, 30.906631, 47.602600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295585, 0.286468, 0.911354,
		0.249339, 0.944049, -0.215876,
		-0.922204, 0.163426, -0.350474,
		36.625771, 30.955660, 47.497459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147358, 31.396809, 48.060707>,  <37.271313, 30.841261, 47.742790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147358, 31.396809, 48.060707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787685, 31.284513, 47.926449>,  <36.571880, 31.217136, 47.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787685, 31.284513, 47.926449>,  <37.147358, 31.396809, 48.060707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787685, 31.284513, 47.926449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407731, 0.259109, 0.875567,
		-0.158835, 0.924147, -0.347452,
		-0.899181, -0.280738, -0.335647,
		36.517929, 31.200293, 47.825756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731091, 31.853451, 48.408596>,  <37.147358, 31.396809, 48.060707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731091, 31.853451, 48.408596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500603, 31.546341, 48.296532>,  <36.362309, 31.362074, 48.229294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500603, 31.546341, 48.296532>,  <36.731091, 31.853451, 48.408596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500603, 31.546341, 48.296532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501856, 0.061833, 0.862738,
		-0.645067, 0.637728, -0.420943,
		-0.576220, -0.767776, -0.280161,
		36.327736, 31.316008, 48.212482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091999, 32.078915, 48.701706>,  <36.731091, 31.853451, 48.408596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091999, 32.078915, 48.701706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109425, 31.683920, 48.641071>,  <36.119881, 31.446924, 48.604691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109425, 31.683920, 48.641071>,  <36.091999, 32.078915, 48.701706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109425, 31.683920, 48.641071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365548, -0.156963, 0.917462,
		-0.929772, 0.015441, -0.367811,
		0.043566, -0.987484, -0.151585,
		36.122494, 31.387674, 48.595596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777359, 32.654362, 49.152916>,  <36.091999, 32.078915, 48.701706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777359, 32.654362, 49.152916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752544, 33.044384, 49.238163>,  <35.737656, 33.278397, 49.289310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752544, 33.044384, 49.238163>,  <35.777359, 32.654362, 49.152916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752544, 33.044384, 49.238163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022756, 0.214857, -0.976380,
		-0.997814, -0.055723, -0.035518,
		-0.062038, 0.975055, 0.213119,
		35.733932, 33.336899, 49.302097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299450, 32.900169, 48.686665>,  <35.777359, 32.654362, 49.152916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299450, 32.900169, 48.686665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522205, 33.206783, 48.814598>,  <35.655857, 33.390751, 48.891357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522205, 33.206783, 48.814598>,  <35.299450, 32.900169, 48.686665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522205, 33.206783, 48.814598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088980, 0.327801, -0.940547,
		-0.825806, 0.552240, 0.114342,
		0.556889, 0.766536, 0.319838,
		35.689274, 33.436745, 48.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986912, 33.581276, 48.503334>,  <35.299450, 32.900169, 48.686665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986912, 33.581276, 48.503334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368729, 33.667675, 48.585506>,  <35.597816, 33.719513, 48.634811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368729, 33.667675, 48.585506>,  <34.986912, 33.581276, 48.503334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368729, 33.667675, 48.585506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091771, 0.442765, -0.891929,
		-0.283612, 0.870233, 0.402814,
		0.954538, 0.215995, 0.205436,
		35.655090, 33.732475, 48.647137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027248, 34.199692, 48.376976>,  <34.986912, 33.581276, 48.503334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027248, 34.199692, 48.376976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406906, 34.076900, 48.348991>,  <35.634701, 34.003227, 48.332203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406906, 34.076900, 48.348991>,  <35.027248, 34.199692, 48.376976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406906, 34.076900, 48.348991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130881, 0.586787, -0.799094,
		0.286352, 0.749298, 0.597122,
		0.949143, -0.306974, -0.069959,
		35.691650, 33.984810, 48.328003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395161, 34.765953, 47.996819>,  <35.027248, 34.199692, 48.376976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395161, 34.765953, 47.996819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639244, 34.451977, 47.953918>,  <35.785694, 34.263592, 47.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639244, 34.451977, 47.953918>,  <35.395161, 34.765953, 47.996819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639244, 34.451977, 47.953918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151106, 0.248213, -0.956847,
		0.777693, 0.567674, 0.270073,
		0.610213, -0.784944, -0.107254,
		35.822308, 34.216496, 47.921741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031624, 35.052635, 47.939571>,  <35.395161, 34.765953, 47.996819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031624, 35.052635, 47.939571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052769, 34.690819, 47.770329>,  <36.065456, 34.473728, 47.668781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052769, 34.690819, 47.770329>,  <36.031624, 35.052635, 47.939571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052769, 34.690819, 47.770329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251171, 0.422121, -0.871050,
		0.966498, -0.060229, 0.249507,
		0.052860, -0.904537, -0.423107,
		36.068626, 34.419456, 47.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582115, 35.121807, 47.390644>,  <36.031624, 35.052635, 47.939571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582115, 35.121807, 47.390644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369049, 34.795078, 47.302036>,  <36.241211, 34.599041, 47.248871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369049, 34.795078, 47.302036>,  <36.582115, 35.121807, 47.390644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369049, 34.795078, 47.302036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070661, 0.217910, -0.973407,
		0.843372, -0.534152, -0.058355,
		-0.532663, -0.816821, -0.221523,
		36.209251, 34.550034, 47.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855129, 34.829395, 46.864971>,  <36.582115, 35.121807, 47.390644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855129, 34.829395, 46.864971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486412, 34.675877, 46.843098>,  <36.265182, 34.583763, 46.829971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486412, 34.675877, 46.843098>,  <36.855129, 34.829395, 46.864971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486412, 34.675877, 46.843098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019612, 0.094719, -0.995311,
		0.387181, -0.918545, -0.079784,
		-0.921795, -0.383801, -0.054688,
		36.209873, 34.560738, 46.826691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867729, 34.358990, 46.257427>,  <36.855129, 34.829395, 46.864971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867729, 34.358990, 46.257427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497665, 34.483913, 46.343719>,  <36.275627, 34.558868, 46.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497665, 34.483913, 46.343719>,  <36.867729, 34.358990, 46.257427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497665, 34.483913, 46.343719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229924, -0.008872, -0.973168,
		-0.302018, -0.949938, 0.080016,
		-0.925159, 0.312312, 0.215734,
		36.220116, 34.577606, 46.408440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452305, 34.085033, 45.662842>,  <36.867729, 34.358990, 46.257427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452305, 34.085033, 45.662842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196339, 34.335743, 45.840679>,  <36.042759, 34.486168, 45.947380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196339, 34.335743, 45.840679>,  <36.452305, 34.085033, 45.662842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196339, 34.335743, 45.840679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459688, 0.151394, -0.875081,
		-0.615788, -0.764351, 0.191242,
		-0.639916, 0.626776, 0.444590,
		36.004364, 34.523777, 45.974056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949772, 33.966908, 45.356361>,  <36.452305, 34.085033, 45.662842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949772, 33.966908, 45.356361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848888, 34.328804, 45.493668>,  <35.788357, 34.545940, 45.576054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848888, 34.328804, 45.493668>,  <35.949772, 33.966908, 45.356361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848888, 34.328804, 45.493668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568632, 0.148462, -0.809084,
		-0.782974, -0.399251, 0.477022,
		-0.252208, 0.904742, 0.343269,
		35.773228, 34.600227, 45.596649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239204, 34.139938, 45.142403>,  <35.949772, 33.966908, 45.356361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239204, 34.139938, 45.142403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411858, 34.491943, 45.221676>,  <35.515450, 34.703144, 45.269241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411858, 34.491943, 45.221676>,  <35.239204, 34.139938, 45.142403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411858, 34.491943, 45.221676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382011, 0.377358, -0.843605,
		-0.817168, 0.288416, 0.499053,
		0.431630, 0.880010, 0.198186,
		35.541348, 34.755947, 45.281132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736092, 34.666531, 44.872887>,  <35.239204, 34.139938, 45.142403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736092, 34.666531, 44.872887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102470, 34.823246, 44.907608>,  <35.322300, 34.917274, 44.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102470, 34.823246, 44.907608>,  <34.736092, 34.666531, 44.872887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102470, 34.823246, 44.907608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094559, 0.420947, -0.902143,
		-0.389990, 0.818111, 0.422614,
		0.915951, 0.391789, 0.086805,
		35.377254, 34.940784, 44.933651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773823, 35.288200, 44.508640>,  <34.736092, 34.666531, 44.872887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773823, 35.288200, 44.508640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156796, 35.172737, 44.509304>,  <35.386578, 35.103458, 44.509701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156796, 35.172737, 44.509304>,  <34.773823, 35.288200, 44.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156796, 35.172737, 44.509304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084845, 0.275913, -0.957431,
		0.275913, 0.916814, 0.288659,
		0.957431, -0.288659, 0.001659,
		35.444023, 35.086140, 44.509800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131302, 35.788197, 44.178860>,  <34.773823, 35.288200, 44.508640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131302, 35.788197, 44.178860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408520, 35.500477, 44.159702>,  <35.574852, 35.327847, 44.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408520, 35.500477, 44.159702>,  <35.131302, 35.788197, 44.178860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408520, 35.500477, 44.159702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276209, 0.326323, -0.904003,
		0.665877, 0.613289, 0.424834,
		0.693048, -0.719298, -0.047895,
		35.616436, 35.284687, 44.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725132, 36.136292, 43.945629>,  <35.131302, 35.788197, 44.178860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725132, 36.136292, 43.945629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811855, 35.750107, 43.887825>,  <35.863888, 35.518398, 43.853142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811855, 35.750107, 43.887825>,  <35.725132, 36.136292, 43.945629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811855, 35.750107, 43.887825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503758, 0.237444, -0.830571,
		0.836196, 0.107275, 0.537837,
		0.216805, -0.965460, -0.144509,
		35.876896, 35.460468, 43.844471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413681, 36.103100, 43.773193>,  <35.725132, 36.136292, 43.945629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413681, 36.103100, 43.773193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248062, 35.765312, 43.637287>,  <36.148689, 35.562641, 43.555744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248062, 35.765312, 43.637287>,  <36.413681, 36.103100, 43.773193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248062, 35.765312, 43.637287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461111, 0.127239, -0.878172,
		0.784818, -0.520277, 0.336709,
		-0.414050, -0.844466, -0.339764,
		36.123848, 35.511974, 43.535358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979439, 35.856636, 43.410286>,  <36.413681, 36.103100, 43.773193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979439, 35.856636, 43.410286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654240, 35.677547, 43.261387>,  <36.459118, 35.570095, 43.172047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654240, 35.677547, 43.261387>,  <36.979439, 35.856636, 43.410286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654240, 35.677547, 43.261387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451337, -0.080671, -0.888700,
		0.367864, -0.890524, 0.267661,
		-0.813001, -0.447726, -0.372251,
		36.410339, 35.543228, 43.149712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232788, 35.439911, 42.974415>,  <36.979439, 35.856636, 43.410286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232788, 35.439911, 42.974415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859150, 35.481655, 42.837849>,  <36.634964, 35.506702, 42.755909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859150, 35.481655, 42.837849>,  <37.232788, 35.439911, 42.974415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859150, 35.481655, 42.837849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335548, -0.069940, -0.939423,
		-0.121921, -0.992077, 0.030312,
		-0.934100, 0.104364, -0.341417,
		36.578918, 35.512962, 42.735424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177406, 34.893620, 42.314362>,  <37.232788, 35.439911, 42.974415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177406, 34.893620, 42.314362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857685, 35.133076, 42.293423>,  <36.665852, 35.276749, 42.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857685, 35.133076, 42.293423>,  <37.177406, 34.893620, 42.314362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857685, 35.133076, 42.293423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074786, 0.012659, -0.997119,
		-0.596251, -0.800920, -0.054888,
		-0.799307, 0.598638, -0.052349,
		36.617893, 35.312668, 42.277718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704254, 34.587097, 41.804993>,  <37.177406, 34.893620, 42.314362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704254, 34.587097, 41.804993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643559, 34.981285, 41.835506>,  <36.607140, 35.217800, 41.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643559, 34.981285, 41.835506>,  <36.704254, 34.587097, 41.804993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643559, 34.981285, 41.835506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147565, 0.098901, -0.984095,
		-0.977343, -0.138067, -0.160428,
		-0.151738, 0.985473, 0.076286,
		36.598038, 35.276928, 41.858391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392399, 34.859894, 41.151344>,  <36.704254, 34.587097, 41.804993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392399, 34.859894, 41.151344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511971, 35.210907, 41.301319>,  <36.583714, 35.421516, 41.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511971, 35.210907, 41.301319>,  <36.392399, 34.859894, 41.151344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511971, 35.210907, 41.301319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319439, 0.278212, -0.905846,
		-0.899221, 0.390556, -0.197151,
		0.298934, 0.877533, 0.374932,
		36.601650, 35.474167, 41.413799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099606, 35.195625, 40.595078>,  <36.392399, 34.859894, 41.151344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099606, 35.195625, 40.595078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335949, 35.453602, 40.788956>,  <36.477757, 35.608387, 40.905285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335949, 35.453602, 40.788956>,  <36.099606, 35.195625, 40.595078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335949, 35.453602, 40.788956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499397, 0.179468, -0.847581,
		-0.633628, 0.742861, -0.216040,
		0.590863, 0.644941, 0.484698,
		36.513206, 35.647083, 40.934364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174953, 35.774773, 40.141243>,  <36.099606, 35.195625, 40.595078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174953, 35.774773, 40.141243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492409, 35.814995, 40.381252>,  <36.682880, 35.839127, 40.525257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492409, 35.814995, 40.381252>,  <36.174953, 35.774773, 40.141243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492409, 35.814995, 40.381252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528952, 0.373214, -0.762182,
		-0.300578, 0.922280, 0.243008,
		0.793639, 0.100556, 0.600022,
		36.730499, 35.845161, 40.561260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433334, 36.489738, 40.125370>,  <36.174953, 35.774773, 40.141243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433334, 36.489738, 40.125370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745464, 36.261078, 40.226807>,  <36.932743, 36.123882, 40.287670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745464, 36.261078, 40.226807>,  <36.433334, 36.489738, 40.125370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745464, 36.261078, 40.226807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535802, 0.402008, -0.742500,
		0.322503, 0.715267, 0.619988,
		0.780326, -0.571649, 0.253593,
		36.979561, 36.089584, 40.302883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004513, 36.894054, 39.916306>,  <36.433334, 36.489738, 40.125370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004513, 36.894054, 39.916306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180195, 36.546509, 40.007671>,  <37.285603, 36.337982, 40.062492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180195, 36.546509, 40.007671>,  <37.004513, 36.894054, 39.916306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180195, 36.546509, 40.007671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818050, 0.281691, -0.501442,
		0.371343, 0.407092, 0.834494,
		0.439202, -0.868865, 0.228418,
		37.311954, 36.285851, 40.076195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751991, 37.095108, 40.036179>,  <37.004513, 36.894054, 39.916306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751991, 37.095108, 40.036179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705406, 36.711914, 39.931328>,  <37.677456, 36.481998, 39.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705406, 36.711914, 39.931328>,  <37.751991, 37.095108, 40.036179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705406, 36.711914, 39.931328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635890, 0.130813, -0.760613,
		0.762942, -0.255267, 0.593935,
		-0.116465, -0.957980, -0.262125,
		37.670467, 36.424519, 39.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309628, 36.736336, 40.115459>,  <37.751991, 37.095108, 40.036179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309628, 36.736336, 40.115459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111511, 36.538746, 39.829609>,  <37.992641, 36.420193, 39.658100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111511, 36.538746, 39.829609>,  <38.309628, 36.736336, 40.115459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111511, 36.538746, 39.829609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734876, 0.200471, -0.647896,
		0.463303, -0.846052, 0.263716,
		-0.495286, -0.493971, -0.714622,
		37.962925, 36.390556, 39.615223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829861, 36.439407, 39.738945>,  <38.309628, 36.736336, 40.115459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829861, 36.439407, 39.738945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506981, 36.413021, 39.504311>,  <38.313255, 36.397190, 39.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506981, 36.413021, 39.504311>,  <38.829861, 36.439407, 39.738945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506981, 36.413021, 39.504311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579255, 0.102673, -0.808655,
		0.113593, -0.992524, -0.044649,
		-0.807193, -0.065995, -0.586587,
		38.264820, 36.393230, 39.328335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958042, 35.917770, 39.259727>,  <38.829861, 36.439407, 39.738945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958042, 35.917770, 39.259727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664082, 36.138741, 39.102375>,  <38.487705, 36.271320, 39.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664082, 36.138741, 39.102375>,  <38.958042, 35.917770, 39.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664082, 36.138741, 39.102375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644622, 0.388811, -0.658247,
		-0.210677, -0.737330, -0.641840,
		-0.734900, 0.552422, -0.393385,
		38.443611, 36.304466, 38.984360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018410, 35.799034, 38.586796>,  <38.958042, 35.917770, 39.259727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018410, 35.799034, 38.586796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773983, 36.115631, 38.582127>,  <38.627327, 36.305592, 38.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773983, 36.115631, 38.582127>,  <39.018410, 35.799034, 38.586796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773983, 36.115631, 38.582127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406570, 0.301172, -0.862552,
		-0.679191, -0.531819, -0.505834,
		-0.611064, 0.791495, -0.011669,
		38.590664, 36.353081, 38.578625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943470, 35.875881, 37.915634>,  <39.018410, 35.799034, 38.586796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943470, 35.875881, 37.915634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860458, 36.235508, 38.069832>,  <38.810650, 36.451286, 38.162350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860458, 36.235508, 38.069832>,  <38.943470, 35.875881, 37.915634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860458, 36.235508, 38.069832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361862, 0.436674, -0.823633,
		-0.908838, -0.031435, -0.415963,
		-0.207531, 0.899071, 0.385491,
		38.798199, 36.505230, 38.185478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575428, 36.286144, 37.433247>,  <38.943470, 35.875881, 37.915634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575428, 36.286144, 37.433247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755363, 36.551170, 37.672798>,  <38.863323, 36.710186, 37.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755363, 36.551170, 37.672798>,  <38.575428, 36.286144, 37.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755363, 36.551170, 37.672798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284712, 0.529189, -0.799311,
		-0.846514, 0.530069, 0.049409,
		0.449836, 0.662560, 0.598883,
		38.890316, 36.749939, 37.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359810, 36.986568, 37.253162>,  <38.575428, 36.286144, 37.433247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359810, 36.986568, 37.253162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727722, 37.014996, 37.407539>,  <38.948471, 37.032051, 37.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727722, 37.014996, 37.407539>,  <38.359810, 36.986568, 37.253162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727722, 37.014996, 37.407539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302801, 0.497047, -0.813176,
		-0.249621, 0.864808, 0.435656,
		0.919783, 0.071069, 0.385938,
		39.003658, 37.036316, 37.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407101, 37.747398, 37.217777>,  <38.359810, 36.986568, 37.253162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407101, 37.747398, 37.217777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763844, 37.582581, 37.292412>,  <38.977890, 37.483688, 37.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763844, 37.582581, 37.292412>,  <38.407101, 37.747398, 37.217777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763844, 37.582581, 37.292412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445934, 0.731881, -0.515261,
		0.075749, 0.542744, 0.836475,
		0.891855, -0.412044, 0.186589,
		39.031399, 37.458969, 37.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940128, 38.304932, 37.384396>,  <38.407101, 37.747398, 37.217777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940128, 38.304932, 37.384396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110661, 37.975765, 37.234165>,  <39.212982, 37.778267, 37.144028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110661, 37.975765, 37.234165>,  <38.940128, 38.304932, 37.384396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110661, 37.975765, 37.234165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628618, 0.568086, -0.531147,
		0.650446, -0.009646, 0.759492,
		0.426333, -0.822912, -0.375573,
		39.238560, 37.728893, 37.121494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610390, 38.505478, 37.471661>,  <38.940128, 38.304932, 37.384396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610390, 38.505478, 37.471661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609020, 38.185047, 37.232239>,  <39.608200, 37.992790, 37.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609020, 38.185047, 37.232239>,  <39.610390, 38.505478, 37.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609020, 38.185047, 37.232239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419106, 0.542301, -0.728190,
		0.907931, -0.253346, 0.333881,
		-0.003420, -0.801077, -0.598551,
		39.607994, 37.944725, 37.052673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336647, 38.407478, 37.205051>,  <39.610390, 38.505478, 37.471661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336647, 38.407478, 37.205051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082195, 38.227612, 36.954250>,  <39.929523, 38.119694, 36.803768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082195, 38.227612, 36.954250>,  <40.336647, 38.407478, 37.205051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082195, 38.227612, 36.954250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452610, 0.440657, -0.775220,
		0.624883, -0.776932, -0.076794,
		-0.636133, -0.449664, -0.627007,
		39.891354, 38.092712, 36.766148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635300, 38.441998, 36.542675>,  <40.336647, 38.407478, 37.205051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635300, 38.441998, 36.542675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283585, 38.297539, 36.418468>,  <40.072556, 38.210861, 36.343945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283585, 38.297539, 36.418468>,  <40.635300, 38.441998, 36.542675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283585, 38.297539, 36.418468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174911, 0.361548, -0.915800,
		0.443008, -0.859566, -0.254736,
		-0.879289, -0.361151, -0.310516,
		40.019798, 38.189194, 36.325314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763519, 37.899605, 36.153320>,  <40.635300, 38.441998, 36.542675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763519, 37.899605, 36.153320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478104, 38.171719, 36.086292>,  <40.306854, 38.334988, 36.046074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478104, 38.171719, 36.086292>,  <40.763519, 37.899605, 36.153320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478104, 38.171719, 36.086292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528585, 0.365718, -0.766060,
		-0.459854, -0.635188, -0.620540,
		-0.713535, 0.680285, -0.167574,
		40.264042, 38.375805, 36.036018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187550, 37.355145, 36.553707>,  <40.763519, 37.899605, 36.153320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187550, 37.355145, 36.553707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306072, 37.207214, 36.201473>,  <41.377186, 37.118458, 35.990131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306072, 37.207214, 36.201473>,  <41.187550, 37.355145, 36.553707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306072, 37.207214, 36.201473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329370, -0.825865, 0.457670,
		-0.896503, -0.425650, -0.122902,
		0.296308, -0.369822, -0.880587,
		41.394966, 37.096268, 35.937298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909523, 36.628807, 36.392376>,  <41.187550, 37.355145, 36.553707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909523, 36.628807, 36.392376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272690, 36.682762, 36.233631>,  <41.490589, 36.715134, 36.138386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272690, 36.682762, 36.233631>,  <40.909523, 36.628807, 36.392376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272690, 36.682762, 36.233631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322461, -0.829662, 0.455718,
		-0.267791, -0.541725, -0.796757,
		0.907913, 0.134886, -0.396861,
		41.545063, 36.723228, 36.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101490, 36.034733, 36.096813>,  <40.909523, 36.628807, 36.392376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101490, 36.034733, 36.096813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424648, 36.249596, 36.193779>,  <41.618546, 36.378513, 36.251957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424648, 36.249596, 36.193779>,  <41.101490, 36.034733, 36.096813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424648, 36.249596, 36.193779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362379, -0.777189, 0.514450,
		0.464740, -0.327778, -0.822544,
		0.807897, 0.537158, 0.242411,
		41.667019, 36.410744, 36.266502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720867, 35.590054, 36.028927>,  <41.101490, 36.034733, 36.096813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720867, 35.590054, 36.028927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811123, 35.878487, 36.290958>,  <41.865276, 36.051548, 36.448177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811123, 35.878487, 36.290958>,  <41.720867, 35.590054, 36.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811123, 35.878487, 36.290958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543867, -0.651115, 0.529395,
		0.808268, 0.236822, -0.539090,
		0.225637, 0.721086, 0.655075,
		41.878815, 36.094814, 36.487480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480801, 35.552769, 36.219208>,  <41.720867, 35.590054, 36.028927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480801, 35.552769, 36.219208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229870, 35.656918, 36.512783>,  <42.079311, 35.719406, 36.688931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229870, 35.656918, 36.512783>,  <42.480801, 35.552769, 36.219208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229870, 35.656918, 36.512783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400095, -0.700807, 0.590587,
		0.668122, 0.664137, 0.335462,
		-0.627325, 0.260368, 0.733943,
		42.041672, 35.735027, 36.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211319, 35.729939, 36.223167>,  <42.480801, 35.552769, 36.219208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211319, 35.729939, 36.223167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365871, 36.072529, 36.360085>,  <43.458603, 36.278084, 36.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365871, 36.072529, 36.360085>,  <43.211319, 35.729939, 36.223167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365871, 36.072529, 36.360085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427984, -0.495227, 0.756029,
		0.817032, -0.145616, -0.557902,
		0.386378, 0.856473, 0.342295,
		43.481785, 36.329472, 36.462772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830421, 35.754444, 36.625328>,  <43.211319, 35.729939, 36.223167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830421, 35.754444, 36.625328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224297, 35.759274, 36.694881>,  <44.460625, 35.762173, 36.736614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224297, 35.759274, 36.694881>,  <43.830421, 35.754444, 36.625328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224297, 35.759274, 36.694881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174138, 0.111282, 0.978413,
		-0.007535, -0.993716, 0.111681,
		0.984693, 0.012076, 0.173882,
		44.519703, 35.762897, 36.747047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130760, 35.192093, 37.102104>,  <43.830421, 35.754444, 36.625328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130760, 35.192093, 37.102104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362778, 35.517731, 37.113453>,  <44.501987, 35.713112, 37.120262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362778, 35.517731, 37.113453>,  <44.130760, 35.192093, 37.102104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362778, 35.517731, 37.113453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136459, 0.062772, 0.988655,
		0.803077, -0.577331, 0.147501,
		0.580040, 0.814094, 0.028371,
		44.536789, 35.761959, 37.121964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541752, 35.096863, 37.706490>,  <44.130760, 35.192093, 37.102104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541752, 35.096863, 37.706490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584682, 35.487507, 37.631973>,  <44.610443, 35.721893, 37.587265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584682, 35.487507, 37.631973>,  <44.541752, 35.096863, 37.706490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584682, 35.487507, 37.631973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198652, 0.204660, 0.958463,
		0.974176, -0.065865, 0.215972,
		0.107330, 0.976615, -0.186291,
		44.616882, 35.780491, 37.576088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004490, 35.465118, 38.292389>,  <44.541752, 35.096863, 37.706490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004490, 35.465118, 38.292389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772003, 35.747719, 38.130871>,  <44.632511, 35.917278, 38.033958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772003, 35.747719, 38.130871>,  <45.004490, 35.465118, 38.292389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772003, 35.747719, 38.130871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255948, 0.312317, 0.914849,
		0.772450, 0.635075, -0.000697,
		-0.581215, 0.706497, -0.403795,
		44.597637, 35.959667, 38.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164558, 36.043533, 38.558266>,  <45.004490, 35.465118, 38.292389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164558, 36.043533, 38.558266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807369, 36.161903, 38.422607>,  <44.593056, 36.232925, 38.341213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807369, 36.161903, 38.422607>,  <45.164558, 36.043533, 38.558266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807369, 36.161903, 38.422607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194907, 0.424955, 0.883982,
		0.405715, 0.855478, -0.321797,
		-0.892976, 0.295924, -0.339149,
		44.539474, 36.250679, 38.320862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070137, 36.749737, 38.756428>,  <45.164558, 36.043533, 38.558266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070137, 36.749737, 38.756428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696926, 36.621761, 38.690590>,  <44.473000, 36.544975, 38.651085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696926, 36.621761, 38.690590>,  <45.070137, 36.749737, 38.756428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696926, 36.621761, 38.690590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313643, 0.499079, 0.807805,
		-0.176300, 0.805332, -0.566003,
		-0.933031, -0.319938, -0.164599,
		44.417015, 36.525780, 38.641209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642410, 37.311558, 39.046288>,  <45.070137, 36.749737, 38.756428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642410, 37.311558, 39.046288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367561, 37.031029, 38.970394>,  <44.202652, 36.862709, 38.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367561, 37.031029, 38.970394>,  <44.642410, 37.311558, 39.046288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367561, 37.031029, 38.970394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558593, 0.342970, 0.755212,
		-0.464575, 0.624912, -0.627420,
		-0.687127, -0.701325, -0.189736,
		44.161423, 36.820633, 38.913475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011665, 37.569263, 38.843903>,  <44.642410, 37.311558, 39.046288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011665, 37.569263, 38.843903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946918, 37.212242, 39.012257>,  <43.908070, 36.998028, 39.113270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946918, 37.212242, 39.012257>,  <44.011665, 37.569263, 38.843903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946918, 37.212242, 39.012257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485888, 0.443311, 0.753251,
		-0.858901, -0.082571, -0.505442,
		-0.161871, -0.892557, 0.420881,
		43.898357, 36.944473, 39.138519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337147, 37.632359, 39.060379>,  <44.011665, 37.569263, 38.843903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337147, 37.632359, 39.060379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499195, 37.336208, 39.274937>,  <43.596424, 37.158516, 39.403671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499195, 37.336208, 39.274937>,  <43.337147, 37.632359, 39.060379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499195, 37.336208, 39.274937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428742, 0.364334, 0.826705,
		-0.807500, -0.564889, -0.169832,
		0.405121, -0.740379, 0.536391,
		43.620731, 37.114094, 39.435856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808151, 37.417042, 39.597500>,  <43.337147, 37.632359, 39.060379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808151, 37.417042, 39.597500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150661, 37.275974, 39.748451>,  <43.356167, 37.191334, 39.839024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150661, 37.275974, 39.748451>,  <42.808151, 37.417042, 39.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150661, 37.275974, 39.748451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272420, 0.312387, 0.910056,
		-0.438839, -0.882065, 0.171415,
		0.856276, -0.352671, 0.377380,
		43.407543, 37.170174, 39.861664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694344, 36.947586, 40.171642>,  <42.808151, 37.417042, 39.597500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694344, 36.947586, 40.171642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064983, 37.080406, 40.242241>,  <43.287369, 37.160099, 40.284599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064983, 37.080406, 40.242241>,  <42.694344, 36.947586, 40.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064983, 37.080406, 40.242241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240195, 0.161489, 0.957198,
		0.289333, -0.929336, 0.229392,
		0.926603, 0.332047, 0.176498,
		43.342964, 37.180019, 40.295189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882278, 36.823608, 40.804813>,  <42.694344, 36.947586, 40.171642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882278, 36.823608, 40.804813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167084, 37.094997, 40.732468>,  <43.337967, 37.257832, 40.689060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167084, 37.094997, 40.732468>,  <42.882278, 36.823608, 40.804813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167084, 37.094997, 40.732468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009357, 0.248386, 0.968616,
		0.702100, -0.691364, 0.170506,
		0.712017, 0.678469, -0.180861,
		43.380688, 37.298538, 40.678211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256016, 36.771919, 41.335506>,  <42.882278, 36.823608, 40.804813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256016, 36.771919, 41.335506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354843, 37.125343, 41.176373>,  <43.414139, 37.337399, 41.080894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354843, 37.125343, 41.176373>,  <43.256016, 36.771919, 41.335506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354843, 37.125343, 41.176373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037856, 0.401445, 0.915101,
		0.968258, -0.241154, 0.065736,
		0.247069, 0.883565, -0.397831,
		43.428963, 37.390411, 41.057022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837498, 36.962688, 41.708347>,  <43.256016, 36.771919, 41.335506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837498, 36.962688, 41.708347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718460, 37.305134, 41.539349>,  <43.647038, 37.510601, 41.437950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718460, 37.305134, 41.539349>,  <43.837498, 36.962688, 41.708347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718460, 37.305134, 41.539349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052955, 0.456668, 0.888060,
		0.953223, 0.241909, -0.181237,
		-0.297595, 0.856116, -0.422496,
		43.629181, 37.561970, 41.412601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210735, 37.492493, 41.924427>,  <43.837498, 36.962688, 41.708347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210735, 37.492493, 41.924427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876884, 37.678322, 41.806053>,  <43.676575, 37.789818, 41.735027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876884, 37.678322, 41.806053>,  <44.210735, 37.492493, 41.924427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876884, 37.678322, 41.806053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013885, 0.554834, 0.831845,
		0.550645, 0.690169, -0.469528,
		-0.834624, 0.464571, -0.295934,
		43.626495, 37.817692, 41.717274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346111, 38.249088, 42.083439>,  <44.210735, 37.492493, 41.924427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346111, 38.249088, 42.083439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949863, 38.206455, 42.049232>,  <43.712116, 38.180874, 42.028709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949863, 38.206455, 42.049232>,  <44.346111, 38.249088, 42.083439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949863, 38.206455, 42.049232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133558, 0.622753, 0.770935,
		-0.028910, 0.775125, -0.631145,
		-0.990619, -0.106582, -0.085520,
		43.652679, 38.174480, 42.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110878, 38.904648, 42.153179>,  <44.346111, 38.249088, 42.083439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110878, 38.904648, 42.153179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802975, 38.665970, 42.243885>,  <43.618233, 38.522762, 42.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802975, 38.665970, 42.243885>,  <44.110878, 38.904648, 42.153179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802975, 38.665970, 42.243885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195923, 0.558952, 0.805722,
		-0.607523, 0.575783, -0.547165,
		-0.769760, -0.596697, 0.226767,
		43.572048, 38.486961, 42.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559540, 39.375332, 42.118233>,  <44.110878, 38.904648, 42.153179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559540, 39.375332, 42.118233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463154, 39.055588, 42.338398>,  <43.405323, 38.863739, 42.470497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463154, 39.055588, 42.338398>,  <43.559540, 39.375332, 42.118233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463154, 39.055588, 42.338398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059373, 0.578204, 0.813729,
		-0.968716, 0.163401, -0.186788,
		-0.240966, -0.799362, 0.550414,
		43.390865, 38.815781, 42.503521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980919, 39.610611, 42.605766>,  <43.559540, 39.375332, 42.118233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980919, 39.610611, 42.605766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101406, 39.272289, 42.781891>,  <43.173698, 39.069294, 42.887566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101406, 39.272289, 42.781891>,  <42.980919, 39.610611, 42.605766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101406, 39.272289, 42.781891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084503, 0.436267, 0.895841,
		-0.949804, -0.307050, 0.059938,
		0.301216, -0.845808, 0.440315,
		43.191772, 39.018547, 42.913986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586876, 39.527245, 43.115402>,  <42.980919, 39.610611, 42.605766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586876, 39.527245, 43.115402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905537, 39.301662, 43.202408>,  <43.096733, 39.166313, 43.254612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905537, 39.301662, 43.202408>,  <42.586876, 39.527245, 43.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905537, 39.301662, 43.202408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025241, 0.390576, 0.920225,
		-0.603916, -0.727605, 0.325386,
		0.796648, -0.563952, 0.217510,
		43.144531, 39.132477, 43.267662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513641, 39.276951, 43.873493>,  <42.586876, 39.527245, 43.115402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513641, 39.276951, 43.873493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900375, 39.247181, 43.775764>,  <43.132416, 39.229317, 43.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900375, 39.247181, 43.775764>,  <42.513641, 39.276951, 43.873493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900375, 39.247181, 43.775764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251036, 0.453100, 0.855384,
		0.047037, -0.888347, 0.456756,
		0.966834, -0.074427, -0.244320,
		43.190426, 39.224854, 43.702469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743977, 38.977020, 44.436558>,  <42.513641, 39.276951, 43.873493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743977, 38.977020, 44.436558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044022, 39.147263, 44.234093>,  <43.224049, 39.249409, 44.112614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044022, 39.147263, 44.234093>,  <42.743977, 38.977020, 44.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044022, 39.147263, 44.234093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243566, 0.533786, 0.809783,
		0.614830, -0.730708, 0.296733,
		0.750106, 0.425605, -0.506163,
		43.269054, 39.274944, 44.082245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461567, 38.895485, 44.737526>,  <42.743977, 38.977020, 44.436558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461567, 38.895485, 44.737526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434113, 39.246361, 44.547440>,  <43.417641, 39.456886, 44.433388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434113, 39.246361, 44.547440>,  <43.461567, 38.895485, 44.737526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434113, 39.246361, 44.547440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268959, 0.474973, 0.837891,
		0.960703, -0.070300, -0.268530,
		-0.068641, 0.877188, -0.475216,
		43.413521, 39.509518, 44.404877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091633, 39.458931, 44.745865>,  <43.461567, 38.895485, 44.737526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091633, 39.458931, 44.745865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725319, 39.617779, 44.769985>,  <43.505531, 39.713089, 44.784458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725319, 39.617779, 44.769985>,  <44.091633, 39.458931, 44.745865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725319, 39.617779, 44.769985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303111, 0.584724, 0.752477,
		0.263564, 0.707384, -0.655852,
		-0.915783, 0.397121, 0.060303,
		43.450584, 39.736916, 44.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730572, 39.888039, 45.216087>,  <44.091633, 39.458931, 44.745865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730572, 39.888039, 45.216087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742123, 40.149750, 45.518368>,  <43.749054, 40.306778, 45.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742123, 40.149750, 45.518368>,  <43.730572, 39.888039, 45.216087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742123, 40.149750, 45.518368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119408, -0.748344, 0.652474,
		0.992425, -0.109079, 0.056516,
		0.028878, 0.654280, 0.755701,
		43.750786, 40.346035, 45.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176826, 39.478104, 45.782299>,  <43.730572, 39.888039, 45.216087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176826, 39.478104, 45.782299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920868, 39.770939, 45.875751>,  <43.767292, 39.946640, 45.931824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920868, 39.770939, 45.875751>,  <44.176826, 39.478104, 45.782299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920868, 39.770939, 45.875751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223757, -0.468352, 0.854739,
		0.735164, 0.494667, 0.463506,
		-0.639895, 0.732086, 0.233631,
		43.728901, 39.990566, 45.945839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856503, 39.549240, 46.110321>,  <44.176826, 39.478104, 45.782299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856503, 39.549240, 46.110321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187191, 39.740108, 45.991096>,  <45.385605, 39.854630, 45.919563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187191, 39.740108, 45.991096>,  <44.856503, 39.549240, 46.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187191, 39.740108, 45.991096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161500, -0.708760, -0.686715,
		-0.538935, 0.519584, -0.663009,
		0.826720, 0.477171, -0.298062,
		45.435207, 39.883259, 45.901676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922722, 39.733486, 45.343666>,  <44.856503, 39.549240, 46.110321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922722, 39.733486, 45.343666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301819, 39.681499, 45.460213>,  <45.529278, 39.650307, 45.530140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301819, 39.681499, 45.460213>,  <44.922722, 39.733486, 45.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301819, 39.681499, 45.460213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157181, -0.604515, -0.780933,
		0.277629, 0.785920, -0.552496,
		0.947743, -0.129968, 0.291363,
		45.586143, 39.642509, 45.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189663, 39.304604, 44.748631>,  <44.922722, 39.733486, 45.343666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189663, 39.304604, 44.748631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495590, 39.378029, 44.995647>,  <45.679146, 39.422085, 45.143856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495590, 39.378029, 44.995647>,  <45.189663, 39.304604, 44.748631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495590, 39.378029, 44.995647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565719, -0.649980, -0.507432,
		0.308246, 0.737449, -0.600961,
		0.764818, 0.183562, 0.617543,
		45.725037, 39.433098, 45.180912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681713, 39.820660, 44.528065>,  <45.189663, 39.304604, 44.748631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681713, 39.820660, 44.528065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841129, 39.504848, 44.714741>,  <45.936779, 39.315361, 44.826748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841129, 39.504848, 44.714741>,  <45.681713, 39.820660, 44.528065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841129, 39.504848, 44.714741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391650, -0.313615, -0.865018,
		0.829322, 0.527526, 0.184232,
		0.398542, -0.789532, 0.466694,
		45.960693, 39.267990, 44.854748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276310, 39.680843, 44.292477>,  <45.681713, 39.820660, 44.528065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276310, 39.680843, 44.292477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222900, 39.316036, 44.447598>,  <46.190857, 39.097153, 44.540672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.222900, 39.316036, 44.447598>,  <46.276310, 39.680843, 44.292477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222900, 39.316036, 44.447598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223449, -0.408937, -0.884783,
		0.965527, -0.031483, 0.258391,
		-0.133521, -0.912019, 0.387805,
		46.182842, 39.042431, 44.563938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963120, 39.230835, 44.283535>,  <46.276310, 39.680843, 44.292477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963120, 39.230835, 44.283535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628017, 39.012730, 44.271893>,  <46.426956, 38.881866, 44.264908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628017, 39.012730, 44.271893>,  <46.963120, 39.230835, 44.283535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628017, 39.012730, 44.271893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373139, -0.532755, -0.759565,
		0.398657, -0.647193, 0.649780,
		-0.837759, -0.545265, -0.029106,
		46.376690, 38.849152, 44.263161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185066, 38.518398, 44.429947>,  <46.963120, 39.230835, 44.283535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185066, 38.518398, 44.429947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885426, 38.576946, 44.171513>,  <46.705643, 38.612076, 44.016453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885426, 38.576946, 44.171513>,  <47.185066, 38.518398, 44.429947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885426, 38.576946, 44.171513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542578, -0.424002, -0.725142,
		-0.380078, -0.893756, 0.238205,
		-0.749100, 0.146366, -0.646086,
		46.660698, 38.620857, 43.977688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.045734, 37.917618, 44.136543>,  <47.185066, 38.518398, 44.429947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.045734, 37.917618, 44.136543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824532, 38.140606, 43.888863>,  <46.691811, 38.274399, 43.740253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824532, 38.140606, 43.888863>,  <47.045734, 37.917618, 44.136543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824532, 38.140606, 43.888863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355358, -0.514382, -0.780469,
		-0.753595, -0.651643, 0.086355,
		-0.553006, 0.557470, -0.619202,
		46.658630, 38.307846, 43.703102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910740, 37.500603, 43.656860>,  <47.045734, 37.917618, 44.136543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910740, 37.500603, 43.656860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824509, 37.831852, 43.449886>,  <46.772770, 38.030602, 43.325703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824509, 37.831852, 43.449886>,  <46.910740, 37.500603, 43.656860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824509, 37.831852, 43.449886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234487, -0.470493, -0.850678,
		-0.947915, -0.304718, -0.092757,
		-0.215575, 0.828121, -0.517439,
		46.759834, 38.080288, 43.294655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502460, 37.197029, 43.165852>,  <46.910740, 37.500603, 43.656860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502460, 37.197029, 43.165852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623512, 37.549622, 43.020855>,  <46.696144, 37.761177, 42.933857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623512, 37.549622, 43.020855>,  <46.502460, 37.197029, 43.165852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623512, 37.549622, 43.020855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102679, -0.408268, -0.907069,
		-0.947561, 0.237287, -0.214065,
		0.302631, 0.881483, -0.362495,
		46.714302, 37.814068, 42.912106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090046, 37.422909, 42.608219>,  <46.502460, 37.197029, 43.165852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090046, 37.422909, 42.608219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415932, 37.650665, 42.564339>,  <46.611462, 37.787319, 42.538010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415932, 37.650665, 42.564339>,  <46.090046, 37.422909, 42.608219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415932, 37.650665, 42.564339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140530, -0.377427, -0.915314,
		-0.562579, 0.730301, -0.387511,
		0.814712, 0.569394, -0.109703,
		46.660347, 37.821484, 42.531429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040462, 37.759781, 41.964764>,  <46.090046, 37.422909, 42.608219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040462, 37.759781, 41.964764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426842, 37.781319, 42.065990>,  <46.658669, 37.794243, 42.126724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426842, 37.781319, 42.065990>,  <46.040462, 37.759781, 41.964764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426842, 37.781319, 42.065990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257031, -0.311556, -0.914805,
		0.029586, 0.948701, -0.314787,
		0.965950, 0.053845, 0.253064,
		46.716625, 37.797474, 42.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258503, 38.149845, 41.427139>,  <46.040462, 37.759781, 41.964764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258503, 38.149845, 41.427139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590405, 37.985901, 41.578674>,  <46.789547, 37.887535, 41.669594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590405, 37.985901, 41.578674>,  <46.258503, 38.149845, 41.427139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590405, 37.985901, 41.578674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248920, -0.335765, -0.908460,
		0.499542, 0.848102, -0.176581,
		0.829757, -0.409859, 0.378838,
		46.839333, 37.862942, 41.692326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706924, 38.408569, 41.028961>,  <46.258503, 38.149845, 41.427139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706924, 38.408569, 41.028961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877174, 38.091572, 41.203686>,  <46.979324, 37.901375, 41.308521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877174, 38.091572, 41.203686>,  <46.706924, 38.408569, 41.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877174, 38.091572, 41.203686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219448, -0.377909, -0.899459,
		0.877886, 0.478691, 0.013062,
		0.425627, -0.792489, 0.436809,
		47.004864, 37.853825, 41.334728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409477, 38.239262, 40.654793>,  <46.706924, 38.408569, 41.028961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409477, 38.239262, 40.654793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285812, 37.917015, 40.856945>,  <47.211613, 37.723667, 40.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285812, 37.917015, 40.856945>,  <47.409477, 38.239262, 40.654793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285812, 37.917015, 40.856945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109351, -0.558001, -0.822604,
		0.944701, -0.199056, 0.260608,
		-0.309164, -0.805613, 0.505377,
		47.193062, 37.675331, 41.008556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844673, 37.584332, 40.505329>,  <47.409477, 38.239262, 40.654793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844673, 37.584332, 40.505329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499352, 37.439003, 40.645443>,  <47.292156, 37.351807, 40.729511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.499352, 37.439003, 40.645443>,  <47.844673, 37.584332, 40.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.499352, 37.439003, 40.645443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071852, -0.598519, -0.797880,
		0.499538, -0.713984, 0.490600,
		-0.863307, -0.363321, 0.350284,
		47.240360, 37.330006, 40.750526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.032883, 36.932838, 40.513050>,  <47.844673, 37.584332, 40.505329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.032883, 36.932838, 40.513050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639828, 37.001423, 40.484703>,  <47.403996, 37.042572, 40.467693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639828, 37.001423, 40.484703>,  <48.032883, 36.932838, 40.513050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639828, 37.001423, 40.484703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036137, -0.551541, -0.833364,
		-0.181975, -0.816335, 0.548162,
		-0.982639, 0.171461, -0.070866,
		47.345036, 37.052860, 40.463444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795269, 36.344864, 40.179615>,  <48.032883, 36.932838, 40.513050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795269, 36.344864, 40.179615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482761, 36.593288, 40.154644>,  <47.295258, 36.742344, 40.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482761, 36.593288, 40.154644>,  <47.795269, 36.344864, 40.179615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482761, 36.593288, 40.154644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176108, -0.315268, -0.932519,
		-0.598834, -0.717557, 0.355684,
		-0.781271, 0.621063, -0.062426,
		47.248379, 36.779606, 40.135918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190655, 35.930622, 40.058697>,  <47.795269, 36.344864, 40.179615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190655, 35.930622, 40.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137440, 36.304131, 39.925804>,  <47.105511, 36.528236, 39.846069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137440, 36.304131, 39.925804>,  <47.190655, 35.930622, 40.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137440, 36.304131, 39.925804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172566, -0.351918, -0.919986,
		-0.975972, -0.065064, 0.207956,
		-0.133041, 0.933767, -0.332235,
		47.097527, 36.584259, 39.826134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628922, 35.906551, 39.744793>,  <47.190655, 35.930622, 40.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628922, 35.906551, 39.744793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775841, 36.234146, 39.568447>,  <46.863991, 36.430702, 39.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775841, 36.234146, 39.568447>,  <46.628922, 35.906551, 39.744793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775841, 36.234146, 39.568447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218566, -0.384722, -0.896782,
		-0.904059, 0.425743, 0.037694,
		0.367297, 0.818982, -0.440864,
		46.886028, 36.479839, 39.436188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353115, 35.940720, 39.045235>,  <46.628922, 35.906551, 39.744793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353115, 35.940720, 39.045235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632347, 36.224369, 39.005577>,  <46.799885, 36.394558, 38.981781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632347, 36.224369, 39.005577>,  <46.353115, 35.940720, 39.045235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632347, 36.224369, 39.005577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070700, -0.206059, -0.975982,
		-0.712522, 0.674303, -0.193980,
		0.698079, 0.709123, -0.099148,
		46.841770, 36.437107, 38.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163246, 36.452885, 38.508648>,  <46.353115, 35.940720, 39.045235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163246, 36.452885, 38.508648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562359, 36.456905, 38.534977>,  <46.801826, 36.459316, 38.550774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562359, 36.456905, 38.534977>,  <46.163246, 36.452885, 38.508648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562359, 36.456905, 38.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066137, -0.034639, -0.997209,
		-0.007742, 0.999349, -0.035227,
		0.997780, 0.010051, 0.065826,
		46.861694, 36.459919, 38.554726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349628, 37.055374, 37.974434>,  <46.163246, 36.452885, 38.508648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349628, 37.055374, 37.974434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642040, 36.785568, 38.015678>,  <46.817486, 36.623684, 38.040424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642040, 36.785568, 38.015678>,  <46.349628, 37.055374, 37.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642040, 36.785568, 38.015678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151914, 0.013559, -0.988301,
		0.665223, 0.738139, 0.112380,
		0.731027, -0.674513, 0.103114,
		46.861347, 36.583214, 38.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.967960, 37.295631, 37.608189>,  <46.349628, 37.055374, 37.974434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.967960, 37.295631, 37.608189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042599, 36.905346, 37.654072>,  <47.087383, 36.671173, 37.681602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042599, 36.905346, 37.654072>,  <46.967960, 37.295631, 37.608189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042599, 36.905346, 37.654072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187968, -0.079147, -0.978981,
		0.964287, 0.204239, 0.168634,
		0.186599, -0.975716, 0.114711,
		47.098579, 36.612633, 37.688484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535275, 37.185925, 37.214012>,  <46.967960, 37.295631, 37.608189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535275, 37.185925, 37.214012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394447, 36.815613, 37.269119>,  <47.309952, 36.593426, 37.302185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394447, 36.815613, 37.269119>,  <47.535275, 37.185925, 37.214012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394447, 36.815613, 37.269119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249387, -0.234660, -0.939543,
		0.902138, -0.296426, 0.313494,
		-0.352069, -0.925779, 0.137771,
		47.288826, 36.537880, 37.310452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000019, 36.772587, 36.813595>,  <47.535275, 37.185925, 37.214012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000019, 36.772587, 36.813595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656452, 36.572945, 36.859451>,  <47.450310, 36.453159, 36.886967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656452, 36.572945, 36.859451>,  <48.000019, 36.772587, 36.813595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656452, 36.572945, 36.859451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010909, -0.205984, -0.978495,
		0.511991, -0.841700, 0.171479,
		-0.858921, -0.499110, 0.114644,
		47.398777, 36.423210, 36.893845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054020, 36.015800, 36.482174>,  <48.000019, 36.772587, 36.813595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054020, 36.015800, 36.482174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680588, 36.158752, 36.492794>,  <47.456528, 36.244522, 36.499168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680588, 36.158752, 36.492794>,  <48.054020, 36.015800, 36.482174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680588, 36.158752, 36.492794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083422, -0.144668, -0.985958,
		-0.348522, -0.922686, 0.164872,
		-0.933581, 0.357382, 0.026552,
		47.400513, 36.265968, 36.500759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657627, 35.524849, 36.061424>,  <48.054020, 36.015800, 36.482174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657627, 35.524849, 36.061424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438374, 35.856937, 36.101986>,  <47.306820, 36.056190, 36.126324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438374, 35.856937, 36.101986>,  <47.657627, 35.524849, 36.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.438374, 35.856937, 36.101986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280458, -0.068225, -0.957439,
		-0.787965, -0.553249, 0.270237,
		-0.548139, 0.830218, 0.101404,
		47.273933, 36.106003, 36.132408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966690, 35.276077, 35.892445>,  <47.657627, 35.524849, 36.061424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966690, 35.276077, 35.892445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051014, 35.657642, 35.807022>,  <47.101608, 35.886581, 35.755768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051014, 35.657642, 35.807022>,  <46.966690, 35.276077, 35.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051014, 35.657642, 35.807022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528025, -0.072732, -0.846108,
		-0.822648, 0.291128, 0.488359,
		0.210807, 0.953915, -0.213556,
		47.114258, 35.943817, 35.742954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689236, 35.250450, 35.170532>,  <46.966690, 35.276077, 35.892445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689236, 35.250450, 35.170532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830620, 35.624546, 35.162567>,  <46.915451, 35.849003, 35.157787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830620, 35.624546, 35.162567>,  <46.689236, 35.250450, 35.170532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830620, 35.624546, 35.162567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373770, 0.121689, -0.919504,
		-0.857531, 0.332452, 0.392576,
		0.353463, 0.935237, -0.019908,
		46.936657, 35.905117, 35.156593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432255, 35.165020, 34.986031>,  <46.689236, 35.250450, 35.170532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432255, 35.165020, 34.986031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810085, 35.227512, 34.870533>,  <48.036781, 35.265007, 34.801235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810085, 35.227512, 34.870533>,  <47.432255, 35.165020, 34.986031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.810085, 35.227512, 34.870533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194952, -0.974577, 0.110422,
		-0.264153, -0.160593, -0.951017,
		0.944572, 0.156235, -0.288745,
		48.093456, 35.274384, 34.783909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.645016, 35.754883, 43.373577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347794, 35.496521, 43.303516>,  <32.169460, 35.341503, 43.261478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347794, 35.496521, 43.303516>,  <32.645016, 35.754883, 43.373577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347794, 35.496521, 43.303516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166359, 0.075236, -0.983191,
		0.648226, -0.759701, 0.051548,
		-0.743053, -0.645905, -0.175153,
		32.124878, 35.302750, 43.250969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934196, 35.299313, 42.728096>,  <32.645016, 35.754883, 43.373577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934196, 35.299313, 42.728096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536255, 35.261650, 42.743080>,  <32.297489, 35.239052, 42.752071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536255, 35.261650, 42.743080>,  <32.934196, 35.299313, 42.728096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536255, 35.261650, 42.743080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043908, 0.067404, -0.996759,
		0.091341, -0.993272, -0.071192,
		-0.994851, -0.094171, 0.037456,
		32.237801, 35.233402, 42.754318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815090, 34.702316, 42.323128>,  <32.934196, 35.299313, 42.728096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815090, 34.702316, 42.323128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491596, 34.936985, 42.339924>,  <32.297501, 35.077785, 42.350002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491596, 34.936985, 42.339924>,  <32.815090, 34.702316, 42.323128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491596, 34.936985, 42.339924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051605, 0.000346, -0.998668,
		-0.585908, -0.809823, 0.029996,
		-0.808733, 0.586675, 0.041994,
		32.248978, 35.112988, 42.352524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438686, 34.417599, 41.711533>,  <32.815090, 34.702316, 42.323128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438686, 34.417599, 41.711533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268463, 34.763626, 41.817776>,  <32.166328, 34.971245, 41.881523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268463, 34.763626, 41.817776>,  <32.438686, 34.417599, 41.711533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268463, 34.763626, 41.817776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294497, 0.145140, -0.944566,
		-0.855669, -0.480190, 0.192996,
		-0.425560, 0.865073, 0.265607,
		32.140797, 35.023148, 41.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828186, 34.411224, 41.311649>,  <32.438686, 34.417599, 41.711533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828186, 34.411224, 41.311649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872019, 34.796329, 41.410507>,  <31.898317, 35.027393, 41.469822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872019, 34.796329, 41.410507>,  <31.828186, 34.411224, 41.311649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872019, 34.796329, 41.410507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221436, 0.266041, -0.938184,
		-0.968999, 0.048079, 0.242343,
		0.109580, 0.962762, 0.247147,
		31.904892, 35.085159, 41.484650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233824, 34.792900, 40.997673>,  <31.828186, 34.411224, 41.311649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233824, 34.792900, 40.997673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543194, 35.039024, 41.058601>,  <31.728817, 35.186699, 41.095158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543194, 35.039024, 41.058601>,  <31.233824, 34.792900, 40.997673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543194, 35.039024, 41.058601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185331, 0.449301, -0.873945,
		-0.606188, 0.647703, 0.461538,
		0.773427, 0.615312, 0.152321,
		31.775223, 35.223618, 41.104298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012825, 35.509605, 40.804054>,  <31.233824, 34.792900, 40.997673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012825, 35.509605, 40.804054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412344, 35.490891, 40.798210>,  <31.652056, 35.479664, 40.794704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412344, 35.490891, 40.798210>,  <31.012825, 35.509605, 40.804054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412344, 35.490891, 40.798210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006086, 0.414211, -0.910161,
		0.048635, 0.908978, 0.413998,
		0.998798, -0.046785, -0.014613,
		31.711983, 35.476856, 40.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212652, 36.140926, 40.437088>,  <31.012825, 35.509605, 40.804054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212652, 36.140926, 40.437088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.547138, 35.921719, 40.445225>,  <31.747829, 35.790192, 40.450108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.547138, 35.921719, 40.445225>,  <31.212652, 36.140926, 40.437088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547138, 35.921719, 40.445225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173253, 0.228802, -0.957931,
		0.520312, 0.804563, 0.286275,
		0.836217, -0.548022, 0.020345,
		31.798004, 35.757313, 40.451328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848740, 36.525738, 40.217865>,  <31.212652, 36.140926, 40.437088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848740, 36.525738, 40.217865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977739, 36.150555, 40.166908>,  <32.055141, 35.925446, 40.136333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977739, 36.150555, 40.166908>,  <31.848740, 36.525738, 40.217865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977739, 36.150555, 40.166908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289651, 0.225916, -0.930088,
		0.901163, 0.263055, 0.344539,
		0.322502, -0.937957, -0.127393,
		32.074490, 35.869167, 40.128689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032284, 36.479675, 39.542656>,  <31.848740, 36.525738, 40.217865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032284, 36.479675, 39.542656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 36.115940, 39.587685>,  <32.288624, 35.897697, 39.614704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.192497, 36.115940, 39.587685>,  <32.032284, 36.479675, 39.542656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192497, 36.115940, 39.587685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482385, 0.104810, -0.869666,
		0.779024, 0.402633, 0.480632,
		0.400532, -0.909341, 0.112574,
		32.312656, 35.843140, 39.621456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815598, 36.507858, 39.390034>,  <32.032284, 36.479675, 39.542656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815598, 36.507858, 39.390034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660259, 36.143250, 39.335896>,  <32.567059, 35.924484, 39.303413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660259, 36.143250, 39.335896>,  <32.815598, 36.507858, 39.390034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660259, 36.143250, 39.335896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439745, -0.054238, -0.896483,
		0.809824, -0.407659, 0.421900,
		-0.388342, -0.911522, -0.135342,
		32.543755, 35.869793, 39.295292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426838, 36.113457, 39.143482>,  <32.815598, 36.507858, 39.390034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426838, 36.113457, 39.143482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119259, 35.876350, 39.047691>,  <32.934711, 35.734085, 38.990215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119259, 35.876350, 39.047691>,  <33.426838, 36.113457, 39.143482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119259, 35.876350, 39.047691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432260, -0.206069, -0.877888,
		0.471032, -0.778566, 0.414685,
		-0.768947, -0.592765, -0.239478,
		32.888577, 35.698521, 38.975849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674450, 35.513943, 38.788578>,  <33.426838, 36.113457, 39.143482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674450, 35.513943, 38.788578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294514, 35.509289, 38.663574>,  <33.066551, 35.506496, 38.588573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294514, 35.509289, 38.663574>,  <33.674450, 35.513943, 38.788578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294514, 35.509289, 38.663574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310555, -0.152571, -0.938231,
		-0.036764, -0.988224, 0.148532,
		-0.949844, -0.011634, -0.312507,
		33.009560, 35.505798, 38.569820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635540, 34.903999, 38.278042>,  <33.674450, 35.513943, 38.788578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635540, 34.903999, 38.278042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345669, 35.173733, 38.221306>,  <33.171745, 35.335571, 38.187263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.345669, 35.173733, 38.221306>,  <33.635540, 34.903999, 38.278042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345669, 35.173733, 38.221306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333642, 0.163261, -0.928455,
		-0.602928, -0.720156, -0.343296,
		-0.724680, 0.674330, -0.141840,
		33.128265, 35.376030, 38.178753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575611, 34.868938, 37.555626>,  <33.635540, 34.903999, 38.278042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575611, 34.868938, 37.555626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.333488, 35.172581, 37.651432>,  <33.188217, 35.354767, 37.708916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.333488, 35.172581, 37.651432>,  <33.575611, 34.868938, 37.555626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333488, 35.172581, 37.651432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065095, 0.347098, -0.935567,
		-0.793329, -0.550710, -0.259514,
		-0.605303, 0.759106, 0.239515,
		33.151897, 35.400311, 37.723286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011192, 34.849922, 37.060703>,  <33.575611, 34.868938, 37.555626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011192, 34.849922, 37.060703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044777, 35.216114, 37.218109>,  <33.064926, 35.435829, 37.312553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044777, 35.216114, 37.218109>,  <33.011192, 34.849922, 37.060703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044777, 35.216114, 37.218109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083652, 0.387041, -0.918260,
		-0.992952, 0.110016, -0.044085,
		0.083960, 0.915476, 0.393516,
		33.069965, 35.490757, 37.336163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727768, 35.299568, 36.546387>,  <33.011192, 34.849922, 37.060703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727768, 35.299568, 36.546387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939003, 35.556206, 36.768913>,  <33.065746, 35.710186, 36.902428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939003, 35.556206, 36.768913>,  <32.727768, 35.299568, 36.546387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939003, 35.556206, 36.768913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356253, 0.427290, -0.830968,
		-0.770847, 0.637013, -0.002921,
		0.528089, 0.641590, 0.556313,
		33.097431, 35.748684, 36.935806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647095, 35.880009, 36.213146>,  <32.727768, 35.299568, 36.546387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647095, 35.880009, 36.213146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964138, 35.959927, 36.443577>,  <33.154362, 36.007877, 36.581833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964138, 35.959927, 36.443577>,  <32.647095, 35.880009, 36.213146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964138, 35.959927, 36.443577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430411, 0.485877, -0.760703,
		-0.431884, 0.850886, 0.299116,
		0.792605, 0.199793, 0.576073,
		33.201920, 36.019863, 36.616398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874111, 36.669865, 36.187084>,  <32.647095, 35.880009, 36.213146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874111, 36.669865, 36.187084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.197769, 36.484104, 36.331097>,  <33.391964, 36.372650, 36.417503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.197769, 36.484104, 36.331097>,  <32.874111, 36.669865, 36.187084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197769, 36.484104, 36.331097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559246, 0.420549, -0.714411,
		0.180360, 0.779406, 0.599997,
		0.809144, -0.464397, 0.360029,
		33.440514, 36.344784, 36.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418610, 37.193954, 36.375298>,  <32.874111, 36.669865, 36.187084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418610, 37.193954, 36.375298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.580902, 36.840050, 36.283573>,  <33.678276, 36.627708, 36.228539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.580902, 36.840050, 36.283573>,  <33.418610, 37.193954, 36.375298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580902, 36.840050, 36.283573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578819, 0.442891, -0.684701,
		0.707356, 0.145074, 0.691810,
		0.405729, -0.884760, -0.229310,
		33.702621, 36.574623, 36.214779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184452, 37.220520, 36.523319>,  <33.418610, 37.193954, 36.375298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184452, 37.220520, 36.523319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087688, 36.960011, 36.235619>,  <34.029629, 36.803707, 36.063000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.087688, 36.960011, 36.235619>,  <34.184452, 37.220520, 36.523319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087688, 36.960011, 36.235619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575472, 0.500523, -0.646767,
		0.781225, -0.570369, 0.253707,
		-0.241910, -0.651272, -0.719253,
		34.015114, 36.764629, 36.019844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816544, 37.058102, 36.163441>,  <34.184452, 37.220520, 36.523319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816544, 37.058102, 36.163441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496834, 37.031670, 35.924515>,  <34.305008, 37.015812, 35.781158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496834, 37.031670, 35.924515>,  <34.816544, 37.058102, 36.163441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496834, 37.031670, 35.924515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488161, 0.508321, -0.709443,
		0.350506, -0.858629, -0.374034,
		-0.799277, -0.066075, -0.597319,
		34.257050, 37.011848, 35.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391979, 37.547791, 35.977837>,  <34.816544, 37.058102, 36.163441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391979, 37.547791, 35.977837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656437, 37.762936, 36.187061>,  <35.815109, 37.892021, 36.312595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656437, 37.762936, 36.187061>,  <35.391979, 37.547791, 35.977837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656437, 37.762936, 36.187061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425786, -0.305043, 0.851854,
		0.617737, -0.785909, 0.027338,
		0.661141, 0.537862, 0.523065,
		35.854778, 37.924294, 36.343983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632339, 37.107632, 36.486286>,  <35.391979, 37.547791, 35.977837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632339, 37.107632, 36.486286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687210, 37.480232, 36.621033>,  <35.720131, 37.703793, 36.701881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687210, 37.480232, 36.621033>,  <35.632339, 37.107632, 36.486286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687210, 37.480232, 36.621033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359987, -0.269950, 0.893049,
		0.922818, -0.243770, 0.298300,
		0.137173, 0.931506, 0.336869,
		35.728363, 37.759686, 36.722092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008244, 36.953087, 37.195187>,  <35.632339, 37.107632, 36.486286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008244, 36.953087, 37.195187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864578, 37.325829, 37.174595>,  <35.778381, 37.549473, 37.162239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864578, 37.325829, 37.174595>,  <36.008244, 36.953087, 37.195187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864578, 37.325829, 37.174595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350372, -0.083506, 0.932880,
		0.865011, 0.353089, 0.356488,
		-0.359159, 0.931856, -0.051479,
		35.756832, 37.605385, 37.159153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266991, 37.294861, 37.860577>,  <36.008244, 36.953087, 37.195187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266991, 37.294861, 37.860577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960606, 37.509815, 37.719429>,  <35.776775, 37.638786, 37.634739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960606, 37.509815, 37.719429>,  <36.266991, 37.294861, 37.860577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960606, 37.509815, 37.719429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317443, 0.161149, 0.934484,
		0.559040, 0.827798, 0.047154,
		-0.765966, 0.537383, -0.352867,
		35.730816, 37.671032, 37.613567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174099, 37.914879, 38.330360>,  <36.266991, 37.294861, 37.860577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174099, 37.914879, 38.330360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822269, 37.901394, 38.140533>,  <35.611172, 37.893303, 38.026638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.822269, 37.901394, 38.140533>,  <36.174099, 37.914879, 38.330360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822269, 37.901394, 38.140533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457787, 0.331547, 0.824929,
		0.129531, 0.942836, -0.307053,
		-0.879575, -0.033711, -0.474564,
		35.558395, 37.891281, 37.998165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826492, 38.571327, 38.459534>,  <36.174099, 37.914879, 38.330360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826492, 38.571327, 38.459534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537098, 38.322704, 38.339378>,  <35.363461, 38.173531, 38.267284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537098, 38.322704, 38.339378>,  <35.826492, 38.571327, 38.459534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537098, 38.322704, 38.339378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490655, 0.156887, 0.857114,
		-0.485618, 0.767498, -0.418475,
		-0.723487, -0.621557, -0.300390,
		35.320053, 38.136238, 38.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204540, 38.949062, 38.516270>,  <35.826492, 38.571327, 38.459534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204540, 38.949062, 38.516270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125225, 38.557007, 38.515999>,  <35.077637, 38.321774, 38.515839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125225, 38.557007, 38.515999>,  <35.204540, 38.949062, 38.516270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125225, 38.557007, 38.515999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521053, 0.104831, 0.847062,
		-0.830171, 0.168318, -0.531493,
		-0.198292, -0.980143, -0.000675,
		35.065739, 38.262962, 38.515797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544811, 39.052975, 38.537258>,  <35.204540, 38.949062, 38.516270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544811, 39.052975, 38.537258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635033, 38.688663, 38.675598>,  <34.689167, 38.470078, 38.758602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635033, 38.688663, 38.675598>,  <34.544811, 39.052975, 38.537258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635033, 38.688663, 38.675598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599191, 0.150222, 0.786386,
		-0.768176, -0.384604, -0.511845,
		0.225557, -0.910776, 0.345848,
		34.702702, 38.415432, 38.779354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909817, 38.797977, 38.756622>,  <34.544811, 39.052975, 38.537258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909817, 38.797977, 38.756622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188911, 38.595627, 38.959503>,  <34.356369, 38.474216, 39.081234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188911, 38.595627, 38.959503>,  <33.909817, 38.797977, 38.756622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188911, 38.595627, 38.959503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409086, 0.299851, 0.861823,
		-0.588063, -0.808812, 0.002268,
		0.697732, -0.505878, 0.507205,
		34.398232, 38.443863, 39.111664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485065, 38.519917, 39.257973>,  <33.909817, 38.797977, 38.756622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485065, 38.519917, 39.257973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859634, 38.464386, 39.386875>,  <34.084373, 38.431068, 39.464214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.859634, 38.464386, 39.386875>,  <33.485065, 38.519917, 39.257973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859634, 38.464386, 39.386875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322794, 0.019224, 0.946274,
		-0.137569, -0.990129, -0.026812,
		0.936418, -0.138832, 0.322253,
		34.140560, 38.422737, 39.483551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498787, 37.896244, 39.599598>,  <33.485065, 38.519917, 39.257973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498787, 37.896244, 39.599598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843246, 38.055546, 39.725979>,  <34.049923, 38.151127, 39.801807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.843246, 38.055546, 39.725979>,  <33.498787, 37.896244, 39.599598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843246, 38.055546, 39.725979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185311, -0.332825, 0.924601,
		0.473380, -0.854765, -0.212810,
		0.861145, 0.398252, 0.315950,
		34.101589, 38.175022, 39.820763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042938, 37.416901, 39.987469>,  <33.498787, 37.896244, 39.599598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042938, 37.416901, 39.987469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.088593, 37.791958, 40.118801>,  <34.115986, 38.016991, 40.197601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.088593, 37.791958, 40.118801>,  <34.042938, 37.416901, 39.987469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088593, 37.791958, 40.118801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149174, -0.310572, 0.938772,
		0.982202, -0.156127, 0.104424,
		0.114136, 0.937641, 0.328334,
		34.122833, 38.073250, 40.217300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676666, 37.461708, 40.484398>,  <34.042938, 37.416901, 39.987469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676666, 37.461708, 40.484398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429699, 37.768574, 40.553963>,  <34.281517, 37.952694, 40.595699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.429699, 37.768574, 40.553963>,  <34.676666, 37.461708, 40.484398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429699, 37.768574, 40.553963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006654, -0.215979, 0.976375,
		0.786605, 0.603992, 0.128245,
		-0.617421, 0.767168, 0.173909,
		34.244473, 37.998726, 40.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933216, 37.832062, 41.019463>,  <34.676666, 37.461708, 40.484398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933216, 37.832062, 41.019463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544281, 37.924442, 41.033417>,  <34.310921, 37.979870, 41.041790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544281, 37.924442, 41.033417>,  <34.933216, 37.832062, 41.019463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544281, 37.924442, 41.033417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005152, -0.170523, 0.985340,
		0.233512, 0.957906, 0.166996,
		-0.972340, 0.230949, 0.034885,
		34.252579, 37.993729, 41.043880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922466, 38.361488, 41.441383>,  <34.933216, 37.832062, 41.019463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922466, 38.361488, 41.441383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.553967, 38.205902, 41.440014>,  <34.332867, 38.112549, 41.439194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.553967, 38.205902, 41.440014>,  <34.922466, 38.361488, 41.441383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553967, 38.205902, 41.440014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046682, -0.119286, 0.991762,
		-0.386169, 0.913497, 0.128049,
		-0.921246, -0.388965, -0.003421,
		34.277592, 38.089214, 41.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525936, 38.653866, 42.009670>,  <34.922466, 38.361488, 41.441383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525936, 38.653866, 42.009670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327709, 38.314087, 41.937168>,  <34.208771, 38.110222, 41.893665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327709, 38.314087, 41.937168>,  <34.525936, 38.653866, 42.009670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327709, 38.314087, 41.937168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069962, -0.168968, 0.983135,
		-0.865745, 0.499895, 0.024307,
		-0.495572, -0.849444, -0.181257,
		34.179039, 38.059254, 41.882790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029362, 38.594948, 42.599815>,  <34.525936, 38.653866, 42.009670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029362, 38.594948, 42.599815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031986, 38.221481, 42.456581>,  <34.033562, 37.997402, 42.370640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031986, 38.221481, 42.456581>,  <34.029362, 38.594948, 42.599815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031986, 38.221481, 42.456581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268511, -0.346587, 0.898765,
		-0.963254, 0.090257, -0.252972,
		0.006557, -0.933665, -0.358087,
		34.033955, 37.941383, 42.349155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395660, 38.210857, 42.869804>,  <34.029362, 38.594948, 42.599815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395660, 38.210857, 42.869804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640686, 37.915401, 42.757248>,  <33.787701, 37.738129, 42.689713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640686, 37.915401, 42.757248>,  <33.395660, 38.210857, 42.869804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640686, 37.915401, 42.757248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320002, -0.557270, 0.766191,
		-0.722748, -0.379295, -0.577729,
		0.612564, -0.738637, -0.281390,
		33.824455, 37.693810, 42.672832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.968777, 37.637230, 42.869488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.340675, 37.490547, 42.882748>,  <33.563816, 37.402538, 42.890705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.340675, 37.490547, 42.882748>,  <32.968777, 37.637230, 42.869488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340675, 37.490547, 42.882748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285821, -0.662029, 0.692838,
		-0.232121, -0.653638, -0.720331,
		0.929745, -0.366708, 0.033152,
		33.619598, 37.380535, 42.892693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935261, 36.898483, 42.774151>,  <32.968777, 37.637230, 42.869488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935261, 36.898483, 42.774151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272202, 37.000172, 42.964226>,  <33.474365, 37.061184, 43.078270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272202, 37.000172, 42.964226>,  <32.935261, 36.898483, 42.774151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272202, 37.000172, 42.964226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146572, -0.740436, 0.655951,
		0.518606, -0.622194, -0.586449,
		0.842356, 0.254224, 0.475191,
		33.524910, 37.076439, 43.106785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120186, 36.288223, 43.116058>,  <32.935261, 36.898483, 42.774151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120186, 36.288223, 43.116058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376064, 36.519127, 43.319057>,  <33.529591, 36.657669, 43.440857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376064, 36.519127, 43.319057>,  <33.120186, 36.288223, 43.116058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376064, 36.519127, 43.319057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261786, -0.457155, 0.849987,
		0.722670, -0.676592, -0.141323,
		0.639700, 0.577263, 0.507495,
		33.567974, 36.692307, 43.471306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488949, 35.871311, 43.576496>,  <33.120186, 36.288223, 43.116058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488949, 35.871311, 43.576496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544556, 36.231571, 43.741180>,  <33.577919, 36.447727, 43.839989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544556, 36.231571, 43.741180>,  <33.488949, 35.871311, 43.576496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544556, 36.231571, 43.741180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192137, -0.383312, 0.903413,
		0.971472, -0.204696, 0.119760,
		0.139020, 0.900650, 0.411707,
		33.586262, 36.501766, 43.864693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918182, 35.763996, 44.180290>,  <33.488949, 35.871311, 43.576496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918182, 35.763996, 44.180290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749062, 36.122257, 44.235489>,  <33.647591, 36.337215, 44.268608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749062, 36.122257, 44.235489>,  <33.918182, 35.763996, 44.180290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749062, 36.122257, 44.235489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069491, -0.183866, 0.980492,
		0.903556, 0.404961, 0.139978,
		-0.422798, 0.895656, 0.137992,
		33.622223, 36.390953, 44.276886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267395, 36.083073, 44.727467>,  <33.918182, 35.763996, 44.180290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267395, 36.083073, 44.727467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907974, 36.257923, 44.711872>,  <33.692322, 36.362835, 44.702515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907974, 36.257923, 44.711872>,  <34.267395, 36.083073, 44.727467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907974, 36.257923, 44.711872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169394, -0.263498, 0.949670,
		0.404853, 0.859935, 0.310814,
		-0.898554, 0.437127, -0.038990,
		33.638409, 36.389061, 44.700176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246231, 36.411888, 45.436298>,  <34.267395, 36.083073, 44.727467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246231, 36.411888, 45.436298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870987, 36.412769, 45.297771>,  <33.645840, 36.413300, 45.214657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870987, 36.412769, 45.297771>,  <34.246231, 36.411888, 45.436298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870987, 36.412769, 45.297771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340368, -0.190523, 0.920788,
		-0.063954, 0.981680, 0.179482,
		-0.938115, 0.002202, -0.346318,
		33.589554, 36.413429, 45.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854912, 36.877914, 45.836224>,  <34.246231, 36.411888, 45.436298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854912, 36.877914, 45.836224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582504, 36.621670, 45.694336>,  <33.419060, 36.467922, 45.609203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582504, 36.621670, 45.694336>,  <33.854912, 36.877914, 45.836224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582504, 36.621670, 45.694336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224313, -0.278620, 0.933839,
		-0.697059, 0.715533, 0.046049,
		-0.681023, -0.640611, -0.354718,
		33.378197, 36.429485, 45.587921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253700, 36.904785, 46.454964>,  <33.854912, 36.877914, 45.836224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253700, 36.904785, 46.454964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233837, 36.570217, 46.236629>,  <33.221920, 36.369476, 46.105629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233837, 36.570217, 46.236629>,  <33.253700, 36.904785, 46.454964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233837, 36.570217, 46.236629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030295, -0.544999, 0.837889,
		-0.998307, 0.058140, 0.001722,
		-0.049653, -0.836418, -0.545838,
		33.218941, 36.319290, 46.072880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727760, 36.556873, 46.781933>,  <33.253700, 36.904785, 46.454964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727760, 36.556873, 46.781933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888309, 36.259872, 46.567425>,  <32.984638, 36.081673, 46.438721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888309, 36.259872, 46.567425>,  <32.727760, 36.556873, 46.781933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888309, 36.259872, 46.567425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059082, -0.605273, 0.793822,
		-0.914007, -0.286936, -0.286810,
		0.401374, -0.742504, -0.536271,
		33.008720, 36.037121, 46.406544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333271, 35.910736, 46.822990>,  <32.727760, 36.556873, 46.781933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333271, 35.910736, 46.822990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700996, 35.787788, 46.724689>,  <32.921631, 35.714020, 46.665710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700996, 35.787788, 46.724689>,  <32.333271, 35.910736, 46.822990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700996, 35.787788, 46.724689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008931, -0.608012, 0.793878,
		-0.393432, -0.732015, -0.556206,
		0.919311, -0.307370, -0.245749,
		32.976788, 35.695576, 46.650963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284958, 35.162624, 46.984447>,  <32.333271, 35.910736, 46.822990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284958, 35.162624, 46.984447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671455, 35.251492, 46.932266>,  <32.903355, 35.304813, 46.900955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671455, 35.251492, 46.932266>,  <32.284958, 35.162624, 46.984447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671455, 35.251492, 46.932266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238416, -0.579128, 0.779595,
		0.097649, -0.784380, -0.612546,
		0.966241, 0.222168, -0.130457,
		32.961327, 35.318142, 46.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682858, 34.525066, 46.896103>,  <32.284958, 35.162624, 46.984447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682858, 34.525066, 46.896103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927528, 34.811535, 47.030540>,  <33.074329, 34.983414, 47.111202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927528, 34.811535, 47.030540>,  <32.682858, 34.525066, 46.896103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927528, 34.811535, 47.030540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205933, -0.554330, 0.806417,
		0.763838, -0.424051, -0.486552,
		0.611673, 0.716169, 0.336092,
		33.111031, 35.026386, 47.131367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307533, 34.106110, 47.015617>,  <32.682858, 34.525066, 46.896103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307533, 34.106110, 47.015617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331123, 34.459347, 47.201805>,  <33.345276, 34.671291, 47.313519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331123, 34.459347, 47.201805>,  <33.307533, 34.106110, 47.015617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331123, 34.459347, 47.201805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227994, -0.465872, 0.854975,
		0.971875, 0.055706, -0.228814,
		0.058971, 0.883097, 0.465470,
		33.348816, 34.724277, 47.341446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843151, 33.926472, 47.466179>,  <33.307533, 34.106110, 47.015617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843151, 33.926472, 47.466179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663273, 34.255150, 47.606232>,  <33.555344, 34.452354, 47.690266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663273, 34.255150, 47.606232>,  <33.843151, 33.926472, 47.466179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663273, 34.255150, 47.606232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133868, -0.325575, 0.935991,
		0.883091, 0.467786, 0.036412,
		-0.449699, 0.821692, 0.350134,
		33.528362, 34.501656, 47.711273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237888, 34.138569, 48.021770>,  <33.843151, 33.926472, 47.466179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237888, 34.138569, 48.021770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883881, 34.312462, 48.088406>,  <33.671478, 34.416798, 48.128387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883881, 34.312462, 48.088406>,  <34.237888, 34.138569, 48.021770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883881, 34.312462, 48.088406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006156, -0.368725, 0.929518,
		0.465520, 0.821613, 0.329004,
		-0.885016, 0.434734, 0.166591,
		33.618374, 34.442883, 48.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266148, 34.554173, 48.674980>,  <34.237888, 34.138569, 48.021770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266148, 34.554173, 48.674980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885387, 34.454739, 48.603336>,  <33.656929, 34.395077, 48.560349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885387, 34.454739, 48.603336>,  <34.266148, 34.554173, 48.674980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885387, 34.454739, 48.603336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112223, -0.261081, 0.958771,
		-0.285101, 0.932760, 0.220627,
		-0.951905, -0.248588, -0.179111,
		33.599815, 34.380161, 48.549603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851013, 34.828495, 49.191612>,  <34.266148, 34.554173, 48.674980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851013, 34.828495, 49.191612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626705, 34.520733, 49.069271>,  <33.492119, 34.336075, 48.995865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626705, 34.520733, 49.069271>,  <33.851013, 34.828495, 49.191612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626705, 34.520733, 49.069271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074212, -0.321211, 0.944095,
		-0.824636, 0.552122, 0.123028,
		-0.560774, -0.769405, -0.305856,
		33.458473, 34.289909, 48.977512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418842, 34.696518, 49.746868>,  <33.851013, 34.828495, 49.191612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418842, 34.696518, 49.746868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372368, 34.356754, 49.540951>,  <33.344482, 34.152897, 49.417400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372368, 34.356754, 49.540951>,  <33.418842, 34.696518, 49.746868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372368, 34.356754, 49.540951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019756, -0.520177, 0.853830,
		-0.993031, 0.089031, 0.077217,
		-0.116184, -0.849405, -0.514793,
		33.337513, 34.101933, 49.386513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060684, 34.184639, 50.128330>,  <33.418842, 34.696518, 49.746868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060684, 34.184639, 50.128330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257942, 33.974186, 49.851204>,  <33.376297, 33.847916, 49.684929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257942, 33.974186, 49.851204>,  <33.060684, 34.184639, 50.128330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257942, 33.974186, 49.851204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252855, -0.675315, 0.692830,
		-0.832388, -0.516849, -0.199995,
		0.493148, -0.526133, -0.692812,
		33.405888, 33.816345, 49.643360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766212, 33.560417, 50.116028>,  <33.060684, 34.184639, 50.128330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766212, 33.560417, 50.116028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.128693, 33.486259, 49.964012>,  <33.346180, 33.441765, 49.872803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.128693, 33.486259, 49.964012>,  <32.766212, 33.560417, 50.116028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128693, 33.486259, 49.964012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137819, -0.720188, 0.679952,
		-0.399763, -0.668548, -0.627083,
		0.906198, -0.185396, -0.380043,
		33.400551, 33.430641, 49.849998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583439, 32.918297, 49.945274>,  <32.766212, 33.560417, 50.116028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583439, 32.918297, 49.945274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958553, 33.037140, 50.017147>,  <33.183620, 33.108444, 50.060268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958553, 33.037140, 50.017147>,  <32.583439, 32.918297, 49.945274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958553, 33.037140, 50.017147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064873, -0.658302, 0.749953,
		0.341100, -0.691639, -0.636621,
		0.937786, 0.297109, 0.179678,
		33.239887, 33.126274, 50.071049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618374, 32.528301, 50.625690>,  <32.583439, 32.918297, 49.945274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618374, 32.528301, 50.625690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512913, 32.892761, 50.752365>,  <32.449635, 33.111439, 50.828369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512913, 32.892761, 50.752365>,  <32.618374, 32.528301, 50.625690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512913, 32.892761, 50.752365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961227, -0.275665, -0.007125,
		0.080809, -0.306290, 0.948502,
		-0.263652, 0.911151, 0.316690,
		32.433819, 33.166107, 50.847374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911139, 32.354130, 50.670513>,  <32.618374, 32.528301, 50.625690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911139, 32.354130, 50.670513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923431, 32.734112, 50.794865>,  <31.930807, 32.962101, 50.869476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923431, 32.734112, 50.794865>,  <31.911139, 32.354130, 50.670513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923431, 32.734112, 50.794865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981952, -0.029377, 0.186836,
		0.186618, -0.311010, 0.931905,
		0.030731, 0.949952, 0.310879,
		31.932652, 33.019096, 50.888130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085388, 32.358925, 50.765179>,  <31.911139, 32.354130, 50.670513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085388, 32.358925, 50.765179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812071, 32.111462, 50.610069>,  <30.648081, 31.962984, 50.517002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812071, 32.111462, 50.610069>,  <31.085388, 32.358925, 50.765179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812071, 32.111462, 50.610069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501824, -0.012142, -0.864884,
		0.530360, -0.785566, 0.318754,
		-0.683294, -0.618658, -0.387777,
		30.607082, 31.925865, 50.493736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469265, 31.779018, 50.342705>,  <31.085388, 32.358925, 50.765179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469265, 31.779018, 50.342705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092239, 31.813826, 50.213707>,  <30.866024, 31.834709, 50.136311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092239, 31.813826, 50.213707>,  <31.469265, 31.779018, 50.342705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092239, 31.813826, 50.213707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330313, 0.099277, -0.938636,
		-0.049661, -0.991248, -0.122318,
		-0.942564, 0.087016, -0.322492,
		30.809469, 31.839930, 50.116959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463482, 31.400999, 49.799362>,  <31.469265, 31.779018, 50.342705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463482, 31.400999, 49.799362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137449, 31.628414, 49.754814>,  <30.941830, 31.764864, 49.728085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137449, 31.628414, 49.754814>,  <31.463482, 31.400999, 49.799362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137449, 31.628414, 49.754814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251968, 0.174785, -0.951821,
		-0.521682, -0.803874, -0.285718,
		-0.815083, 0.568540, -0.111368,
		30.892925, 31.798977, 49.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192661, 31.294693, 49.107094>,  <31.463482, 31.400999, 49.799362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192661, 31.294693, 49.107094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.017969, 31.639929, 49.208557>,  <30.913153, 31.847071, 49.269436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.017969, 31.639929, 49.208557>,  <31.192661, 31.294693, 49.107094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017969, 31.639929, 49.208557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204437, 0.369819, -0.906333,
		-0.876054, -0.343967, -0.337959,
		-0.436732, 0.863088, 0.253662,
		30.886950, 31.898855, 49.284657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926928, 31.474369, 48.528610>,  <31.192661, 31.294693, 49.107094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926928, 31.474369, 48.528610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945402, 31.823244, 48.723408>,  <30.956486, 32.032570, 48.840286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945402, 31.823244, 48.723408>,  <30.926928, 31.474369, 48.528610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945402, 31.823244, 48.723408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032866, 0.485919, -0.873386,
		-0.998392, 0.056342, -0.006224,
		0.046184, 0.872186, 0.486989,
		30.959257, 32.084900, 48.869503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468534, 31.928186, 48.209202>,  <30.926928, 31.474369, 48.528610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468534, 31.928186, 48.209202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694431, 32.194496, 48.404266>,  <30.829969, 32.354282, 48.521305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694431, 32.194496, 48.404266>,  <30.468534, 31.928186, 48.209202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694431, 32.194496, 48.404266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164799, 0.488028, -0.857129,
		-0.808647, 0.564421, 0.165890,
		0.564740, 0.665776, 0.487658,
		30.863853, 32.394230, 48.550564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246296, 32.505569, 47.971172>,  <30.468534, 31.928186, 48.209202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246296, 32.505569, 47.971172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612831, 32.598389, 48.101696>,  <30.832752, 32.654079, 48.180008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612831, 32.598389, 48.101696>,  <30.246296, 32.505569, 47.971172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612831, 32.598389, 48.101696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219121, 0.391462, -0.893724,
		-0.335122, 0.890456, 0.307867,
		0.916340, 0.232046, 0.326305,
		30.887733, 32.668003, 48.199589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369938, 33.123039, 47.675659>,  <30.246296, 32.505569, 47.971172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369938, 33.123039, 47.675659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744936, 33.014088, 47.762295>,  <30.969934, 32.948715, 47.814278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744936, 33.014088, 47.762295>,  <30.369938, 33.123039, 47.675659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744936, 33.014088, 47.762295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331897, 0.512719, -0.791811,
		0.104621, 0.814205, 0.571073,
		0.937496, -0.272377, 0.216591,
		31.026184, 32.932373, 47.827271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743254, 33.740387, 47.797066>,  <30.369938, 33.123039, 47.675659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743254, 33.740387, 47.797066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005198, 33.459324, 47.685760>,  <31.162365, 33.290688, 47.618977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005198, 33.459324, 47.685760>,  <30.743254, 33.740387, 47.797066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005198, 33.459324, 47.685760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246443, 0.546607, -0.800304,
		0.714439, 0.455513, 0.531117,
		0.654861, -0.702659, -0.278259,
		31.201656, 33.248528, 47.602283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311806, 34.076050, 47.575199>,  <30.743254, 33.740387, 47.797066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311806, 34.076050, 47.575199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348408, 33.712887, 47.411575>,  <31.370369, 33.494987, 47.313400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348408, 33.712887, 47.411575>,  <31.311806, 34.076050, 47.575199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348408, 33.712887, 47.411575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378539, 0.411661, -0.829002,
		0.921051, -0.078989, 0.381347,
		0.091503, -0.907908, -0.409061,
		31.375858, 33.440514, 47.288857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058582, 34.026455, 47.310982>,  <31.311806, 34.076050, 47.575199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058582, 34.026455, 47.310982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852268, 33.760658, 47.094677>,  <31.728481, 33.601181, 46.964893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852268, 33.760658, 47.094677>,  <32.058582, 34.026455, 47.310982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852268, 33.760658, 47.094677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328974, 0.429194, -0.841171,
		0.791040, -0.611758, -0.002771,
		-0.515782, -0.664489, -0.540762,
		31.697533, 33.561310, 46.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478306, 33.884998, 46.585064>,  <32.058582, 34.026455, 47.310982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478306, 33.884998, 46.585064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129051, 33.709415, 46.500263>,  <31.919498, 33.604065, 46.449383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129051, 33.709415, 46.500263>,  <32.478306, 33.884998, 46.585064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129051, 33.709415, 46.500263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060133, 0.334600, -0.940440,
		0.483751, -0.833882, -0.265755,
		-0.873137, -0.438958, -0.212007,
		31.867109, 33.577728, 46.436661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570675, 33.462715, 46.015106>,  <32.478306, 33.884998, 46.585064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570675, 33.462715, 46.015106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189266, 33.578472, 46.048668>,  <31.960421, 33.647926, 46.068806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189266, 33.578472, 46.048668>,  <32.570675, 33.462715, 46.015106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189266, 33.578472, 46.048668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004851, 0.293161, -0.956051,
		-0.301272, -0.911212, -0.280941,
		-0.953526, 0.289394, 0.083901,
		31.903208, 33.665291, 46.073837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240334, 33.236149, 45.483376>,  <32.570675, 33.462715, 46.015106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240334, 33.236149, 45.483376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972019, 33.513668, 45.588215>,  <31.811031, 33.680180, 45.651119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972019, 33.513668, 45.588215>,  <32.240334, 33.236149, 45.483376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972019, 33.513668, 45.588215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039488, 0.386306, -0.921525,
		-0.740601, -0.607794, -0.286524,
		-0.670783, 0.693797, 0.262099,
		31.770784, 33.721806, 45.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771725, 33.254280, 44.937481>,  <32.240334, 33.236149, 45.483376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771725, 33.254280, 44.937481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711182, 33.600052, 45.129253>,  <31.674856, 33.807514, 45.244316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711182, 33.600052, 45.129253>,  <31.771725, 33.254280, 44.937481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711182, 33.600052, 45.129253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082333, 0.494359, -0.865350,
		-0.985044, -0.091503, -0.145995,
		-0.151356, 0.864428, 0.479432,
		31.665775, 33.859379, 45.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174231, 33.565300, 44.687969>,  <31.771725, 33.254280, 44.937481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174231, 33.565300, 44.687969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359852, 33.881989, 44.846882>,  <31.471226, 34.072002, 44.942230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359852, 33.881989, 44.846882>,  <31.174231, 33.565300, 44.687969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359852, 33.881989, 44.846882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135654, 0.506729, -0.851366,
		-0.875358, 0.341187, 0.342550,
		0.464055, 0.791718, 0.397286,
		31.499069, 34.119503, 44.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768867, 34.190529, 44.504814>,  <31.174231, 33.565300, 44.687969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768867, 34.190529, 44.504814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132286, 34.326588, 44.601841>,  <31.350338, 34.408222, 44.660057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132286, 34.326588, 44.601841>,  <30.768867, 34.190529, 44.504814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132286, 34.326588, 44.601841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078869, 0.709821, -0.699953,
		-0.410268, 0.616810, 0.671734,
		0.908548, 0.340147, 0.242569,
		31.404850, 34.428631, 44.674610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680288, 34.964275, 44.575260>,  <30.768867, 34.190529, 44.504814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680288, 34.964275, 44.575260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055836, 34.858524, 44.487053>,  <31.281164, 34.795074, 44.434128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055836, 34.858524, 44.487053>,  <30.680288, 34.964275, 44.575260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055836, 34.858524, 44.487053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017670, 0.602688, -0.797781,
		0.343820, 0.752909, 0.561174,
		0.938869, -0.264377, -0.220520,
		31.337496, 34.779213, 44.420898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003693, 35.556622, 44.383278>,  <30.680288, 34.964275, 44.575260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003693, 35.556622, 44.383278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264709, 35.288330, 44.242245>,  <31.421320, 35.127357, 44.157623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264709, 35.288330, 44.242245>,  <31.003693, 35.556622, 44.383278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264709, 35.288330, 44.242245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155906, 0.574184, -0.803745,
		0.741540, 0.469508, 0.479250,
		0.652542, -0.670727, -0.352582,
		31.460472, 35.087112, 44.136471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565977, 35.936352, 44.084278>,  <31.003693, 35.556622, 44.383278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565977, 35.936352, 44.084278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595581, 35.583916, 43.897427>,  <31.613344, 35.372456, 43.785316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595581, 35.583916, 43.897427>,  <31.565977, 35.936352, 44.084278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595581, 35.583916, 43.897427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371373, 0.459072, -0.807053,
		0.925529, -0.113749, 0.361188,
		0.074010, -0.881087, -0.467128,
		31.617785, 35.319592, 43.757290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.395969, 39.742638, 43.585613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071182, 39.570007, 43.742817>,  <43.876312, 39.466431, 43.837139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.071182, 39.570007, 43.742817>,  <44.395969, 39.742638, 43.585613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071182, 39.570007, 43.742817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164048, -0.477438, -0.863216,
		0.560180, -0.765373, 0.316864,
		-0.811965, -0.431575, 0.393009,
		43.827591, 39.440536, 43.860718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435371, 39.056011, 43.432755>,  <44.395969, 39.742638, 43.585613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435371, 39.056011, 43.432755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050240, 39.107044, 43.527981>,  <43.819160, 39.137665, 43.585117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050240, 39.107044, 43.527981>,  <44.435371, 39.056011, 43.432755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050240, 39.107044, 43.527981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264526, -0.623536, -0.735682,
		0.054578, -0.771313, 0.634111,
		-0.962833, 0.127587, 0.238063,
		43.761391, 39.145321, 43.599400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191868, 38.411293, 43.480324>,  <44.435371, 39.056011, 43.432755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191868, 38.411293, 43.480324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862759, 38.634861, 43.439056>,  <43.665291, 38.769001, 43.414295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862759, 38.634861, 43.439056>,  <44.191868, 38.411293, 43.480324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862759, 38.634861, 43.439056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281952, -0.558995, -0.779761,
		-0.493496, -0.612481, 0.617518,
		-0.822779, 0.558920, -0.103172,
		43.615925, 38.802536, 43.408104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625313, 37.916328, 43.481079>,  <44.191868, 38.411293, 43.480324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625313, 37.916328, 43.481079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518036, 38.251118, 43.290272>,  <43.453671, 38.451992, 43.175789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518036, 38.251118, 43.290272>,  <43.625313, 37.916328, 43.481079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518036, 38.251118, 43.290272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186829, -0.530944, -0.826555,
		-0.945077, -0.132552, 0.298765,
		-0.268188, 0.836976, -0.477018,
		43.437580, 38.502209, 43.147167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883953, 37.795952, 43.194695>,  <43.625313, 37.916328, 43.481079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883953, 37.795952, 43.194695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035694, 38.110985, 43.000454>,  <43.126740, 38.300003, 42.883911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035694, 38.110985, 43.000454>,  <42.883953, 37.795952, 43.194695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035694, 38.110985, 43.000454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184268, -0.450007, -0.873807,
		-0.906718, 0.420961, -0.025585,
		0.379352, 0.787582, -0.485599,
		43.149498, 38.347260, 42.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440769, 37.878502, 42.586094>,  <42.883953, 37.795952, 43.194695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440769, 37.878502, 42.586094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788219, 38.061611, 42.510269>,  <42.996689, 38.171478, 42.464775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788219, 38.061611, 42.510269>,  <42.440769, 37.878502, 42.586094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788219, 38.061611, 42.510269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035848, -0.439660, -0.897448,
		-0.494172, 0.772751, -0.398310,
		0.868625, 0.457772, -0.189566,
		43.048805, 38.198944, 42.453400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362518, 38.086685, 41.951134>,  <42.440769, 37.878502, 42.586094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362518, 38.086685, 41.951134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759544, 38.135353, 41.952374>,  <42.997761, 38.164555, 41.953117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759544, 38.135353, 41.952374>,  <42.362518, 38.086685, 41.951134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759544, 38.135353, 41.952374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049714, -0.382052, -0.922803,
		-0.111095, 0.916096, -0.385261,
		0.992566, 0.121672, 0.003098,
		43.057316, 38.171856, 41.953304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604946, 38.489613, 41.361099>,  <42.362518, 38.086685, 41.951134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604946, 38.489613, 41.361099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916702, 38.269436, 41.480804>,  <43.103756, 38.137329, 41.552628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916702, 38.269436, 41.480804>,  <42.604946, 38.489613, 41.361099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916702, 38.269436, 41.480804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193618, -0.242659, -0.950594,
		0.595867, 0.798829, -0.082551,
		0.779394, -0.550444, 0.299260,
		43.150520, 38.104301, 41.570583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043640, 38.586117, 40.786983>,  <42.604946, 38.489613, 41.361099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043640, 38.586117, 40.786983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211388, 38.282909, 40.986801>,  <43.312035, 38.100986, 41.106693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211388, 38.282909, 40.986801>,  <43.043640, 38.586117, 40.786983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211388, 38.282909, 40.986801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363787, -0.363835, -0.857486,
		0.831740, 0.541327, 0.123177,
		0.419365, -0.758016, 0.499545,
		43.337196, 38.055504, 41.136665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773598, 38.582260, 40.634319>,  <43.043640, 38.586117, 40.786983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773598, 38.582260, 40.634319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699261, 38.205078, 40.744804>,  <43.654659, 37.978767, 40.811096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699261, 38.205078, 40.744804>,  <43.773598, 38.582260, 40.634319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699261, 38.205078, 40.744804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363789, -0.327166, -0.872135,
		0.912755, -0.061593, 0.403838,
		-0.185840, -0.942957, 0.276216,
		43.643509, 37.922192, 40.827667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340046, 38.092934, 40.392353>,  <43.773598, 38.582260, 40.634319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340046, 38.092934, 40.392353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025681, 37.857506, 40.468174>,  <43.837063, 37.716248, 40.513664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025681, 37.857506, 40.468174>,  <44.340046, 38.092934, 40.392353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025681, 37.857506, 40.468174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224908, -0.557643, -0.799031,
		0.575987, -0.585336, 0.570632,
		-0.785911, -0.588571, 0.189548,
		43.789906, 37.680935, 40.525040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640564, 37.388882, 40.430611>,  <44.340046, 38.092934, 40.392353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640564, 37.388882, 40.430611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250370, 37.345455, 40.354034>,  <44.016254, 37.319401, 40.308090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250370, 37.345455, 40.354034>,  <44.640564, 37.388882, 40.430611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250370, 37.345455, 40.354034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214080, -0.669807, -0.711005,
		-0.051036, -0.734556, 0.676626,
		-0.975482, -0.108565, -0.191439,
		43.957726, 37.312885, 40.296604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529388, 36.639278, 40.293377>,  <44.640564, 37.388882, 40.430611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529388, 36.639278, 40.293377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199253, 36.817444, 40.154575>,  <44.001171, 36.924343, 40.071293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199253, 36.817444, 40.154575>,  <44.529388, 36.639278, 40.293377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199253, 36.817444, 40.154575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002654, -0.611504, -0.791237,
		-0.564626, -0.653963, 0.503518,
		-0.825343, 0.445416, -0.347007,
		43.951653, 36.951069, 40.050472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136833, 36.072773, 40.042782>,  <44.529388, 36.639278, 40.293377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136833, 36.072773, 40.042782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990879, 36.399315, 39.863712>,  <43.903305, 36.595242, 39.756271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990879, 36.399315, 39.863712>,  <44.136833, 36.072773, 40.042782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990879, 36.399315, 39.863712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145092, -0.425097, -0.893443,
		-0.919677, -0.390960, 0.036665,
		-0.364887, 0.816359, -0.447677,
		43.881413, 36.644222, 39.729408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699554, 35.756523, 39.583733>,  <44.136833, 36.072773, 40.042782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699554, 35.756523, 39.583733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784782, 36.126144, 39.456779>,  <43.835918, 36.347916, 39.380608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784782, 36.126144, 39.456779>,  <43.699554, 35.756523, 39.583733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784782, 36.126144, 39.456779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133355, -0.349309, -0.927469,
		-0.967893, 0.155293, -0.197655,
		0.213072, 0.924049, -0.317385,
		43.848705, 36.403358, 39.361565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341824, 35.731129, 38.852062>,  <43.699554, 35.756523, 39.583733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341824, 35.731129, 38.852062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592316, 36.042889, 38.859745>,  <43.742611, 36.229946, 38.864353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592316, 36.042889, 38.859745>,  <43.341824, 35.731129, 38.852062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592316, 36.042889, 38.859745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330996, -0.243483, -0.911678,
		-0.705884, 0.577281, -0.410455,
		0.626234, 0.779399, 0.019207,
		43.780186, 36.276707, 38.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157574, 36.160419, 38.337646>,  <43.341824, 35.731129, 38.852062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157574, 36.160419, 38.337646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535355, 36.245995, 38.437447>,  <43.762024, 36.297340, 38.497326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535355, 36.245995, 38.437447>,  <43.157574, 36.160419, 38.337646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535355, 36.245995, 38.437447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298835, -0.242977, -0.922854,
		-0.136807, 0.946147, -0.293410,
		0.944448, 0.213934, 0.249501,
		43.818687, 36.310173, 38.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413486, 36.584888, 37.678627>,  <43.157574, 36.160419, 38.337646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413486, 36.584888, 37.678627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721340, 36.450928, 37.896069>,  <43.906052, 36.370552, 38.026535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721340, 36.450928, 37.896069>,  <43.413486, 36.584888, 37.678627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721340, 36.450928, 37.896069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554854, -0.070450, -0.828959,
		0.315919, 0.939615, 0.131602,
		0.769631, -0.334904, 0.543605,
		43.952229, 36.350456, 38.059151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046696, 36.968395, 37.390316>,  <43.413486, 36.584888, 37.678627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046696, 36.968395, 37.390316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216202, 36.661789, 37.583344>,  <44.317905, 36.477825, 37.699162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216202, 36.661789, 37.583344>,  <44.046696, 36.968395, 37.390316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216202, 36.661789, 37.583344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574532, -0.184409, -0.797438,
		0.700238, 0.615182, 0.362240,
		0.423769, -0.766515, 0.482572,
		44.343334, 36.431835, 37.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707775, 36.989632, 37.146996>,  <44.046696, 36.968395, 37.390316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707775, 36.989632, 37.146996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670486, 36.615803, 37.284332>,  <44.648113, 36.391506, 37.366734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670486, 36.615803, 37.284332>,  <44.707775, 36.989632, 37.146996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670486, 36.615803, 37.284332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515227, -0.340364, -0.786571,
		0.851969, 0.103576, 0.513245,
		-0.093220, -0.934572, 0.343345,
		44.642521, 36.335430, 37.387337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409687, 36.675011, 37.023560>,  <44.707775, 36.989632, 37.146996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409687, 36.675011, 37.023560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109589, 36.412640, 37.056778>,  <44.929531, 36.255219, 37.076710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109589, 36.412640, 37.056778>,  <45.409687, 36.675011, 37.023560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109589, 36.412640, 37.056778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179337, -0.322778, -0.929329,
		0.636376, -0.682330, 0.359794,
		-0.750243, -0.655927, 0.083041,
		44.884518, 36.215862, 37.081692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145992, 36.367493, 36.654190>,  <45.409687, 36.675011, 37.023560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145992, 36.367493, 36.654190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542320, 36.356777, 36.601173>,  <46.780117, 36.350349, 36.569363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542320, 36.356777, 36.601173>,  <46.145992, 36.367493, 36.654190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542320, 36.356777, 36.601173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119129, -0.290786, 0.949343,
		-0.063973, -0.956413, -0.284924,
		0.990816, -0.026789, -0.132539,
		46.839565, 36.348740, 36.561413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306122, 35.733879, 37.023342>,  <46.145992, 36.367493, 36.654190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306122, 35.733879, 37.023342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648262, 35.934826, 36.972752>,  <46.853546, 36.055393, 36.942398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648262, 35.934826, 36.972752>,  <46.306122, 35.733879, 37.023342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648262, 35.934826, 36.972752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150966, -0.008166, 0.988505,
		0.495563, -0.864614, -0.082826,
		0.855352, 0.502370, -0.126480,
		46.904869, 36.085537, 36.934807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775436, 35.344383, 37.492401>,  <46.306122, 35.733879, 37.023342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775436, 35.344383, 37.492401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.919308, 35.713108, 37.434593>,  <47.005630, 35.934345, 37.399910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.919308, 35.713108, 37.434593>,  <46.775436, 35.344383, 37.492401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919308, 35.713108, 37.434593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193963, 0.077635, 0.977932,
		0.912692, -0.379777, -0.150874,
		0.359683, 0.921815, -0.144520,
		47.027214, 35.989651, 37.391235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447811, 35.385933, 37.969658>,  <46.775436, 35.344383, 37.492401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447811, 35.385933, 37.969658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.331635, 35.759285, 37.885323>,  <47.261929, 35.983295, 37.834721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.331635, 35.759285, 37.885323>,  <47.447811, 35.385933, 37.969658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331635, 35.759285, 37.885323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231657, 0.282367, 0.930916,
		0.928429, 0.221534, -0.298234,
		-0.290441, 0.933376, -0.210838,
		47.244503, 36.039299, 37.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.954746, 35.867046, 38.240669>,  <47.447811, 35.385933, 37.969658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.954746, 35.867046, 38.240669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.622528, 36.084270, 38.191223>,  <47.423199, 36.214603, 38.161556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.622528, 36.084270, 38.191223>,  <47.954746, 35.867046, 38.240669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622528, 36.084270, 38.191223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163884, 0.450414, 0.877650,
		0.532292, 0.708671, -0.463088,
		-0.830546, 0.543059, -0.123611,
		47.373363, 36.247189, 38.154140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.107357, 36.543907, 38.621746>,  <47.954746, 35.867046, 38.240669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.107357, 36.543907, 38.621746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.710697, 36.520103, 38.575974>,  <47.472702, 36.505821, 38.548508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.710697, 36.520103, 38.575974>,  <48.107357, 36.543907, 38.621746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710697, 36.520103, 38.575974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128982, 0.458917, 0.879067,
		0.000204, 0.886484, -0.462759,
		-0.991647, -0.059508, -0.114434,
		47.413204, 36.502251, 38.541645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.849503, 37.199738, 38.722164>,  <48.107357, 36.543907, 38.621746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.849503, 37.199738, 38.722164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.524246, 36.985798, 38.814022>,  <47.329094, 36.857433, 38.869137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.524246, 36.985798, 38.814022>,  <47.849503, 37.199738, 38.722164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.524246, 36.985798, 38.814022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031703, 0.434649, 0.900042,
		-0.581205, 0.724579, -0.370386,
		-0.813139, -0.534852, 0.229648,
		47.280304, 36.825344, 38.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387638, 37.639565, 39.189041>,  <47.849503, 37.199738, 38.722164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387638, 37.639565, 39.189041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.195568, 37.291809, 39.235687>,  <47.080326, 37.083157, 39.263676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.195568, 37.291809, 39.235687>,  <47.387638, 37.639565, 39.189041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195568, 37.291809, 39.235687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289820, 0.282718, 0.914371,
		-0.827911, 0.405261, -0.387720,
		-0.480175, -0.869387, 0.116613,
		47.051517, 37.030994, 39.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756195, 37.812084, 39.480289>,  <47.387638, 37.639565, 39.189041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756195, 37.812084, 39.480289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844662, 37.433132, 39.572853>,  <46.897739, 37.205761, 39.628391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844662, 37.433132, 39.572853>,  <46.756195, 37.812084, 39.480289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844662, 37.433132, 39.572853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122029, 0.208537, 0.970372,
		-0.967572, -0.242850, -0.069488,
		0.221164, -0.947384, 0.231410,
		46.911011, 37.148918, 39.642277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220417, 37.521408, 39.916931>,  <46.756195, 37.812084, 39.480289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220417, 37.521408, 39.916931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.543812, 37.299477, 39.995434>,  <46.737846, 37.166317, 40.042534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.543812, 37.299477, 39.995434>,  <46.220417, 37.521408, 39.916931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543812, 37.299477, 39.995434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140663, 0.141633, 0.979874,
		-0.571459, -0.819820, 0.036464,
		0.808485, -0.554829, 0.196256,
		46.786358, 37.133026, 40.054310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033764, 37.065140, 40.508579>,  <46.220417, 37.521408, 39.916931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033764, 37.065140, 40.508579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433586, 37.070889, 40.498177>,  <46.673481, 37.074337, 40.491936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433586, 37.070889, 40.498177>,  <46.033764, 37.065140, 40.508579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433586, 37.070889, 40.498177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024288, 0.108844, 0.993762,
		0.017111, -0.993955, 0.108447,
		0.999558, 0.014371, -0.026004,
		46.733452, 37.075199, 40.490376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128010, 36.853271, 41.134926>,  <46.033764, 37.065140, 40.508579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128010, 36.853271, 41.134926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.474308, 37.003197, 41.002262>,  <46.682087, 37.093151, 40.922665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.474308, 37.003197, 41.002262>,  <46.128010, 36.853271, 41.134926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474308, 37.003197, 41.002262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189578, 0.367712, 0.910411,
		0.463191, -0.851060, 0.247288,
		0.865745, 0.374814, -0.331663,
		46.734032, 37.115639, 40.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739620, 36.520546, 41.420414>,  <46.128010, 36.853271, 41.134926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739620, 36.520546, 41.420414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875439, 36.878471, 41.304470>,  <46.956928, 37.093227, 41.234901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.875439, 36.878471, 41.304470>,  <46.739620, 36.520546, 41.420414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875439, 36.878471, 41.304470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107214, 0.269345, 0.957057,
		0.934460, -0.356040, -0.004482,
		0.339543, 0.894812, -0.289864,
		46.977303, 37.146915, 41.217510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406006, 36.671753, 41.789818>,  <46.739620, 36.520546, 41.420414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406006, 36.671753, 41.789818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.260742, 37.023384, 41.666309>,  <47.173584, 37.234364, 41.592205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.260742, 37.023384, 41.666309>,  <47.406006, 36.671753, 41.789818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260742, 37.023384, 41.666309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203898, 0.398348, 0.894284,
		0.909142, 0.261813, -0.323907,
		-0.363163, 0.879075, -0.308771,
		47.151794, 37.287106, 41.573677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779537, 37.157528, 42.255859>,  <47.406006, 36.671753, 41.789818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779537, 37.157528, 42.255859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.507214, 37.390793, 42.078583>,  <47.343819, 37.530750, 41.972214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.507214, 37.390793, 42.078583>,  <47.779537, 37.157528, 42.255859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507214, 37.390793, 42.078583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057306, 0.560816, 0.825954,
		0.730215, 0.587716, -0.348391,
		-0.680810, 0.583159, -0.443196,
		47.302971, 37.565742, 41.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035484, 37.916122, 42.320942>,  <47.779537, 37.157528, 42.255859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035484, 37.916122, 42.320942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.638790, 37.883209, 42.281559>,  <47.400776, 37.863461, 42.257931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.638790, 37.883209, 42.281559>,  <48.035484, 37.916122, 42.320942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638790, 37.883209, 42.281559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124292, 0.425367, 0.896446,
		-0.031883, 0.901273, -0.432078,
		-0.991733, -0.082285, -0.098458,
		47.341270, 37.858524, 42.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748058, 38.604462, 42.427113>,  <48.035484, 37.916122, 42.320942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748058, 38.604462, 42.427113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.429943, 38.363609, 42.455257>,  <47.239075, 38.219097, 42.472145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.429943, 38.363609, 42.455257>,  <47.748058, 38.604462, 42.427113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429943, 38.363609, 42.455257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297430, 0.488678, 0.820201,
		-0.528254, 0.631370, -0.567733,
		-0.795289, -0.602134, 0.070358,
		47.191357, 38.182968, 42.476364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212376, 39.031116, 42.609402>,  <47.748058, 38.604462, 42.427113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212376, 39.031116, 42.609402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.043125, 38.674389, 42.673435>,  <46.941574, 38.460354, 42.711857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.043125, 38.674389, 42.673435>,  <47.212376, 39.031116, 42.609402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.043125, 38.674389, 42.673435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538766, 0.389692, 0.746908,
		-0.728489, 0.229788, -0.645369,
		-0.423125, -0.891817, 0.160085,
		46.916187, 38.406845, 42.721462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627266, 39.152615, 42.591995>,  <47.212376, 39.031116, 42.609402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627266, 39.152615, 42.591995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650589, 38.819553, 42.812279>,  <46.664581, 38.619717, 42.944450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650589, 38.819553, 42.812279>,  <46.627266, 39.152615, 42.591995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650589, 38.819553, 42.812279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516601, 0.446876, 0.730359,
		-0.854238, -0.327084, -0.404095,
		0.058309, -0.832657, 0.550711,
		46.668083, 38.569756, 42.977493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022770, 38.993938, 42.823456>,  <46.627266, 39.152615, 42.591995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022770, 38.993938, 42.823456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223541, 38.769436, 43.086685>,  <46.344006, 38.634735, 43.244621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223541, 38.769436, 43.086685>,  <46.022770, 38.993938, 42.823456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223541, 38.769436, 43.086685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525830, 0.406075, 0.747400,
		-0.686711, -0.721173, -0.091307,
		0.501927, -0.561260, 0.658071,
		46.374119, 38.601059, 43.284107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552753, 38.762695, 43.297756>,  <46.022770, 38.993938, 42.823456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552753, 38.762695, 43.297756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900013, 38.738094, 43.494743>,  <46.108368, 38.723335, 43.612938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.900013, 38.738094, 43.494743>,  <45.552753, 38.762695, 43.297756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900013, 38.738094, 43.494743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449078, 0.325088, 0.832254,
		-0.211283, -0.943682, 0.254606,
		0.868152, -0.061503, 0.492472,
		46.160458, 38.719643, 43.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.566040, 39.269928, 40.535858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429516, 38.899052, 40.474121>,  <34.347603, 38.676525, 40.437077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429516, 38.899052, 40.474121>,  <34.566040, 39.269928, 40.535858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429516, 38.899052, 40.474121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510891, -0.045159, -0.858459,
		0.788986, -0.371854, 0.489107,
		-0.341309, -0.927192, -0.154347,
		34.327122, 38.620895, 40.427818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134037, 38.868813, 40.281006>,  <34.566040, 39.269928, 40.535858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134037, 38.868813, 40.281006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817890, 38.655376, 40.160606>,  <34.628204, 38.527313, 40.088367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817890, 38.655376, 40.160606>,  <35.134037, 38.868813, 40.281006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817890, 38.655376, 40.160606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406152, -0.088548, -0.909505,
		0.458654, -0.841092, 0.286706,
		-0.790365, -0.533595, -0.300998,
		34.580780, 38.495296, 40.070309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404881, 38.276276, 39.984116>,  <35.134037, 38.868813, 40.281006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404881, 38.276276, 39.984116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035091, 38.284927, 39.831863>,  <34.813217, 38.290119, 39.740513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035091, 38.284927, 39.831863>,  <35.404881, 38.276276, 39.984116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035091, 38.284927, 39.831863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355462, -0.311989, -0.881084,
		-0.137806, -0.949839, 0.280739,
		-0.924476, 0.021626, -0.380625,
		34.757748, 38.291416, 39.717674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305969, 37.664185, 39.614170>,  <35.404881, 38.276276, 39.984116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305969, 37.664185, 39.614170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011406, 37.891876, 39.467918>,  <34.834667, 38.028492, 39.380169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011406, 37.891876, 39.467918>,  <35.305969, 37.664185, 39.614170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011406, 37.891876, 39.467918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238355, -0.287493, -0.927650,
		-0.633164, -0.770275, 0.076031,
		-0.736404, 0.569232, -0.365629,
		34.790485, 38.062645, 39.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035778, 37.192215, 39.167458>,  <35.305969, 37.664185, 39.614170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035778, 37.192215, 39.167458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926483, 37.554623, 39.038166>,  <34.860905, 37.772068, 38.960590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926483, 37.554623, 39.038166>,  <35.035778, 37.192215, 39.167458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926483, 37.554623, 39.038166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219121, -0.268558, -0.938010,
		-0.936656, -0.327129, -0.125146,
		-0.273242, 0.906015, -0.323227,
		34.844509, 37.826427, 38.941196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574268, 37.064182, 38.550491>,  <35.035778, 37.192215, 39.167458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574268, 37.064182, 38.550491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705505, 37.441841, 38.538151>,  <34.784248, 37.668434, 38.530746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705505, 37.441841, 38.538151>,  <34.574268, 37.064182, 38.550491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705505, 37.441841, 38.538151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119739, -0.073961, -0.990047,
		-0.937027, 0.321129, -0.137317,
		0.328089, 0.944143, -0.030851,
		34.803932, 37.725082, 38.528896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418442, 37.231159, 37.831635>,  <34.574268, 37.064182, 38.550491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418442, 37.231159, 37.831635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678856, 37.496891, 37.978504>,  <34.835106, 37.656330, 38.066628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678856, 37.496891, 37.978504>,  <34.418442, 37.231159, 37.831635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678856, 37.496891, 37.978504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363440, 0.151857, -0.919158,
		-0.666380, 0.731853, -0.142579,
		0.651037, 0.664328, 0.367179,
		34.874168, 37.696190, 38.088657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463135, 37.667656, 37.331135>,  <34.418442, 37.231159, 37.831635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463135, 37.667656, 37.331135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811295, 37.699894, 37.525414>,  <35.020191, 37.719234, 37.641983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811295, 37.699894, 37.525414>,  <34.463135, 37.667656, 37.331135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811295, 37.699894, 37.525414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464968, 0.189789, -0.864745,
		-0.161872, 0.978512, 0.127720,
		0.870403, 0.080592, 0.485699,
		35.072414, 37.724072, 37.671124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671139, 38.290844, 37.075848>,  <34.463135, 37.667656, 37.331135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671139, 38.290844, 37.075848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978916, 38.082626, 37.223896>,  <35.163582, 37.957695, 37.312725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978916, 38.082626, 37.223896>,  <34.671139, 38.290844, 37.075848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978916, 38.082626, 37.223896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549676, 0.244552, -0.798780,
		0.325287, 0.818063, 0.474301,
		0.769444, -0.520545, 0.370120,
		35.209751, 37.926464, 37.334930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150623, 38.765942, 37.132706>,  <34.671139, 38.290844, 37.075848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150623, 38.765942, 37.132706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338230, 38.412670, 37.131229>,  <35.450794, 38.200706, 37.130344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338230, 38.412670, 37.131229>,  <35.150623, 38.765942, 37.132706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338230, 38.412670, 37.131229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526492, 0.282940, -0.801718,
		0.709107, 0.374075, 0.597692,
		0.469013, -0.883183, -0.003688,
		35.478935, 38.147717, 37.130123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834274, 38.933346, 37.185871>,  <35.150623, 38.765942, 37.132706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834274, 38.933346, 37.185871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810059, 38.563519, 37.035404>,  <35.795528, 38.341621, 36.945126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810059, 38.563519, 37.035404>,  <35.834274, 38.933346, 37.185871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810059, 38.563519, 37.035404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578395, 0.274648, -0.768133,
		0.813508, -0.264072, 0.518142,
		-0.060535, -0.924573, -0.376166,
		35.791897, 38.286148, 36.922554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591854, 38.782444, 37.034546>,  <35.834274, 38.933346, 37.185871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591854, 38.782444, 37.034546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365814, 38.530914, 36.820915>,  <36.230190, 38.379997, 36.692738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365814, 38.530914, 36.820915>,  <36.591854, 38.782444, 37.034546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365814, 38.530914, 36.820915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627347, 0.092914, -0.773177,
		0.535818, -0.771973, 0.341988,
		-0.565097, -0.628827, -0.534081,
		36.196285, 38.342266, 36.660690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112381, 38.311981, 36.533390>,  <36.591854, 38.782444, 37.034546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112381, 38.311981, 36.533390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752365, 38.370911, 36.369331>,  <36.536354, 38.406269, 36.270897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752365, 38.370911, 36.369331>,  <37.112381, 38.311981, 36.533390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752365, 38.370911, 36.369331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430859, 0.159445, -0.888222,
		-0.065457, -0.976153, -0.206981,
		-0.900042, 0.147320, -0.410147,
		36.482353, 38.415108, 36.246288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658817, 38.373386, 36.097881>,  <37.112381, 38.311981, 36.533390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658817, 38.373386, 36.097881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627205, 38.003185, 36.246040>,  <37.608238, 37.781063, 36.334934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627205, 38.003185, 36.246040>,  <37.658817, 38.373386, 36.097881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627205, 38.003185, 36.246040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177788, -0.352518, -0.918761,
		0.980890, -0.138465, -0.136683,
		-0.079033, -0.925504, 0.370399,
		37.603497, 37.725533, 36.357159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159187, 37.855076, 35.731495>,  <37.658817, 38.373386, 36.097881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159187, 37.855076, 35.731495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811283, 37.702728, 35.857006>,  <37.602543, 37.611320, 35.932312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811283, 37.702728, 35.857006>,  <38.159187, 37.855076, 35.731495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811283, 37.702728, 35.857006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249197, -0.209834, -0.945447,
		0.425936, -0.900503, 0.087593,
		-0.869758, -0.380872, 0.313778,
		37.550354, 37.588467, 35.951141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911324, 37.884113, 35.791679>,  <38.159187, 37.855076, 35.731495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911324, 37.884113, 35.791679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277187, 37.949074, 35.939747>,  <39.496704, 37.988052, 36.028587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277187, 37.949074, 35.939747>,  <38.911324, 37.884113, 35.791679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277187, 37.949074, 35.939747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186578, -0.642740, 0.743017,
		0.358590, -0.748672, -0.557587,
		0.914660, 0.162405, 0.370166,
		39.551586, 37.997795, 36.050797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165386, 37.329834, 35.965401>,  <38.911324, 37.884113, 35.791679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165386, 37.329834, 35.965401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387215, 37.566692, 36.199257>,  <39.520313, 37.708809, 36.339573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387215, 37.566692, 36.199257>,  <39.165386, 37.329834, 35.965401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387215, 37.566692, 36.199257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152780, -0.618185, 0.771041,
		0.817991, -0.516920, -0.252359,
		0.554571, 0.592149, 0.584645,
		39.553585, 37.744339, 36.374649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745518, 36.929447, 36.257576>,  <39.165386, 37.329834, 35.965401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745518, 36.929447, 36.257576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683533, 37.243870, 36.496941>,  <39.646339, 37.432522, 36.640560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683533, 37.243870, 36.496941>,  <39.745518, 36.929447, 36.257576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683533, 37.243870, 36.496941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133843, -0.616853, 0.775615,
		0.978811, 0.040100, 0.200800,
		-0.154966, 0.786057, 0.598415,
		39.637043, 37.479687, 36.676464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055553, 36.696064, 36.914574>,  <39.745518, 36.929447, 36.257576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055553, 36.696064, 36.914574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820988, 37.009026, 36.998447>,  <39.680248, 37.196800, 37.048771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820988, 37.009026, 36.998447>,  <40.055553, 36.696064, 36.914574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820988, 37.009026, 36.998447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212455, -0.398367, 0.892282,
		0.781653, 0.478698, 0.399833,
		-0.586414, 0.782401, 0.209683,
		39.645065, 37.243748, 37.061352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212826, 36.955090, 37.608719>,  <40.055553, 36.696064, 36.914574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212826, 36.955090, 37.608719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848156, 37.103706, 37.538509>,  <39.629353, 37.192875, 37.496384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848156, 37.103706, 37.538509>,  <40.212826, 36.955090, 37.608719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848156, 37.103706, 37.538509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294425, -0.292671, 0.909757,
		0.286643, 0.881079, 0.376212,
		-0.911674, 0.371542, -0.175520,
		39.574654, 37.215168, 37.485855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003262, 37.309879, 38.237381>,  <40.212826, 36.955090, 37.608719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003262, 37.309879, 38.237381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678680, 37.235161, 38.015877>,  <39.483932, 37.190331, 37.882977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678680, 37.235161, 38.015877>,  <40.003262, 37.309879, 38.237381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678680, 37.235161, 38.015877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487076, -0.307449, 0.817454,
		-0.322951, 0.933050, 0.158496,
		-0.811455, -0.186798, -0.553757,
		39.435246, 37.179123, 37.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403557, 37.600853, 38.650524>,  <40.003262, 37.309879, 38.237381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403557, 37.600853, 38.650524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231354, 37.357693, 38.383656>,  <39.128033, 37.211796, 38.223534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231354, 37.357693, 38.383656>,  <39.403557, 37.600853, 38.650524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231354, 37.357693, 38.383656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632971, -0.323609, 0.703295,
		-0.643439, 0.725073, -0.245471,
		-0.430504, -0.607904, -0.667173,
		39.102203, 37.175323, 38.183502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602898, 37.661545, 38.704979>,  <39.403557, 37.600853, 38.650524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602898, 37.661545, 38.704979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653175, 37.303059, 38.534805>,  <38.683342, 37.087967, 38.432701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653175, 37.303059, 38.534805>,  <38.602898, 37.661545, 38.704979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653175, 37.303059, 38.534805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728983, -0.374305, 0.573132,
		-0.672894, 0.238098, -0.700374,
		0.125692, -0.896217, -0.425437,
		38.690884, 37.034195, 38.407173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887386, 37.436398, 38.505806>,  <38.602898, 37.661545, 38.704979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887386, 37.436398, 38.505806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094212, 37.094025, 38.507725>,  <38.218307, 36.888599, 38.508877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094212, 37.094025, 38.507725>,  <37.887386, 37.436398, 38.505806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094212, 37.094025, 38.507725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697707, -0.418220, 0.581633,
		-0.495838, -0.304081, -0.813437,
		0.517059, -0.855937, 0.004790,
		38.249329, 36.837242, 38.509163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450428, 36.908424, 38.385170>,  <37.887386, 37.436398, 38.505806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450428, 36.908424, 38.385170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753830, 36.723373, 38.568756>,  <37.935871, 36.612343, 38.678909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753830, 36.723373, 38.568756>,  <37.450428, 36.908424, 38.385170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753830, 36.723373, 38.568756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651598, -0.528028, 0.544616,
		-0.009603, -0.712156, -0.701955,
		0.758504, -0.462623, 0.458969,
		37.981380, 36.584587, 38.706448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228947, 36.242256, 38.562588>,  <37.450428, 36.908424, 38.385170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228947, 36.242256, 38.562588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548203, 36.286743, 38.799435>,  <37.739758, 36.313435, 38.941544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548203, 36.286743, 38.799435>,  <37.228947, 36.242256, 38.562588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548203, 36.286743, 38.799435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465972, -0.509025, 0.723715,
		0.381890, -0.853536, -0.354451,
		0.798142, 0.111215, 0.592116,
		37.787643, 36.320107, 38.977070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295357, 35.544212, 38.914181>,  <37.228947, 36.242256, 38.562588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295357, 35.544212, 38.914181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504585, 35.811363, 39.125969>,  <37.630123, 35.971653, 39.253040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504585, 35.811363, 39.125969>,  <37.295357, 35.544212, 38.914181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504585, 35.811363, 39.125969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300763, -0.436617, 0.847884,
		0.797457, -0.602748, -0.027509,
		0.523072, 0.667877, 0.529468,
		37.661507, 36.011726, 39.284809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587708, 35.187870, 39.381573>,  <37.295357, 35.544212, 38.914181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587708, 35.187870, 39.381573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605064, 35.554359, 39.540894>,  <37.615479, 35.774254, 39.636486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605064, 35.554359, 39.540894>,  <37.587708, 35.187870, 39.381573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605064, 35.554359, 39.540894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364318, -0.356711, 0.860250,
		0.930263, -0.182440, 0.318318,
		0.043396, 0.916228, 0.398301,
		37.618084, 35.829227, 39.660385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021072, 34.775646, 39.589779>,  <37.587708, 35.187870, 39.381573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021072, 34.775646, 39.589779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003796, 34.396282, 39.464142>,  <37.993431, 34.168663, 39.388760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003796, 34.396282, 39.464142>,  <38.021072, 34.775646, 39.589779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003796, 34.396282, 39.464142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294608, 0.312497, -0.903079,
		0.954642, 0.053529, -0.292906,
		-0.043191, -0.948409, -0.314093,
		37.990837, 34.111759, 39.369915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346001, 34.838188, 38.882236>,  <38.021072, 34.775646, 39.589779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346001, 34.838188, 38.882236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141487, 34.495117, 38.904087>,  <38.018780, 34.289276, 38.917198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141487, 34.495117, 38.904087>,  <38.346001, 34.838188, 38.882236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141487, 34.495117, 38.904087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214502, 0.065808, -0.974504,
		0.832213, -0.509964, -0.217620,
		-0.511283, -0.857675, 0.054622,
		37.988102, 34.237816, 38.920475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645920, 34.405140, 38.425060>,  <38.346001, 34.838188, 38.882236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645920, 34.405140, 38.425060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273346, 34.273315, 38.486790>,  <38.049801, 34.194221, 38.523827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273346, 34.273315, 38.486790>,  <38.645920, 34.405140, 38.425060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273346, 34.273315, 38.486790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153423, -0.028900, -0.987738,
		0.329985, -0.943690, -0.023644,
		-0.931435, -0.329566, 0.154321,
		37.993916, 34.174446, 38.533085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526337, 33.936188, 37.956181>,  <38.645920, 34.405140, 38.425060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526337, 33.936188, 37.956181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155037, 34.041439, 38.061337>,  <37.932255, 34.104591, 38.124428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155037, 34.041439, 38.061337>,  <38.526337, 33.936188, 37.956181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155037, 34.041439, 38.061337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275865, -0.012961, -0.961109,
		-0.249488, -0.964674, 0.084619,
		-0.928253, 0.263128, 0.262887,
		37.876560, 34.120377, 38.140202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171070, 33.639774, 37.467373>,  <38.526337, 33.936188, 37.956181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171070, 33.639774, 37.467373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923370, 33.919178, 37.610821>,  <37.774750, 34.086823, 37.696892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923370, 33.919178, 37.610821>,  <38.171070, 33.639774, 37.467373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923370, 33.919178, 37.610821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395851, 0.116717, -0.910867,
		-0.678109, -0.706016, 0.204230,
		-0.619250, 0.698512, 0.358624,
		37.737595, 34.128731, 37.718407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579144, 33.597271, 37.153648>,  <38.171070, 33.639774, 37.467373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579144, 33.597271, 37.153648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542667, 33.973160, 37.285465>,  <37.520782, 34.198692, 37.364555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542667, 33.973160, 37.285465>,  <37.579144, 33.597271, 37.153648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542667, 33.973160, 37.285465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469038, 0.251385, -0.846646,
		-0.878457, -0.231777, 0.417843,
		-0.091193, 0.939726, 0.329543,
		37.515308, 34.255077, 37.384327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921516, 33.809399, 37.129330>,  <37.579144, 33.597271, 37.153648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921516, 33.809399, 37.129330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107635, 34.163452, 37.132004>,  <37.219307, 34.375885, 37.133606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107635, 34.163452, 37.132004>,  <36.921516, 33.809399, 37.129330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107635, 34.163452, 37.132004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547123, 0.293529, -0.783899,
		-0.695815, 0.361087, 0.620853,
		0.465294, 0.885131, 0.006683,
		37.247223, 34.428993, 37.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434200, 34.364967, 37.017494>,  <36.921516, 33.809399, 37.129330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434200, 34.364967, 37.017494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789322, 34.529465, 36.934853>,  <37.002396, 34.628162, 36.885265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789322, 34.529465, 36.934853>,  <36.434200, 34.364967, 37.017494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789322, 34.529465, 36.934853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411501, 0.508292, -0.756510,
		-0.206093, 0.756650, 0.620489,
		0.887802, 0.411243, -0.206606,
		37.055664, 34.652836, 36.872871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291695, 35.082382, 37.043072>,  <36.434200, 34.364967, 37.017494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291695, 35.082382, 37.043072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608128, 35.014133, 36.808098>,  <36.797989, 34.973183, 36.667114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608128, 35.014133, 36.808098>,  <36.291695, 35.082382, 37.043072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608128, 35.014133, 36.808098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410753, 0.563446, -0.716806,
		0.453291, 0.808342, 0.375648,
		0.791081, -0.170623, -0.587433,
		36.845451, 34.962948, 36.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384552, 35.672012, 36.779831>,  <36.291695, 35.082382, 37.043072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384552, 35.672012, 36.779831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594772, 35.440937, 36.530006>,  <36.720905, 35.302292, 36.380112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594772, 35.440937, 36.530006>,  <36.384552, 35.672012, 36.779831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594772, 35.440937, 36.530006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225836, 0.613053, -0.757076,
		0.820240, 0.538931, 0.191729,
		0.525552, -0.577684, -0.624561,
		36.752438, 35.267632, 36.342640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700188, 36.117039, 36.209988>,  <36.384552, 35.672012, 36.779831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700188, 36.117039, 36.209988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729630, 35.756565, 36.039127>,  <36.747295, 35.540283, 35.936611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729630, 35.756565, 36.039127>,  <36.700188, 36.117039, 36.209988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729630, 35.756565, 36.039127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162261, 0.411783, -0.896720,
		0.983999, 0.135310, -0.115918,
		0.073602, -0.901180, -0.427150,
		36.751709, 35.486210, 35.910984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023315, 36.278938, 35.602539>,  <36.700188, 36.117039, 36.209988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023315, 36.278938, 35.602539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871555, 35.912762, 35.548851>,  <36.780499, 35.693054, 35.516636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871555, 35.912762, 35.548851>,  <37.023315, 36.278938, 35.602539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871555, 35.912762, 35.548851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000136, 0.145014, -0.989429,
		0.925234, -0.375405, -0.054893,
		-0.379397, -0.915446, -0.134223,
		36.757736, 35.638126, 35.508583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.578026, 32.174053, 42.882107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304562, 32.002899, 42.645622>,  <38.140484, 31.900208, 42.503731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304562, 32.002899, 42.645622>,  <38.578026, 32.174053, 42.882107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304562, 32.002899, 42.645622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403670, 0.453187, -0.794778,
		0.608001, -0.782009, -0.137101,
		-0.683656, -0.427882, -0.591212,
		38.099464, 31.874535, 42.468258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966888, 31.895491, 42.366402>,  <38.578026, 32.174053, 42.882107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966888, 31.895491, 42.366402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605972, 31.954622, 42.204403>,  <38.389423, 31.990101, 42.107204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605972, 31.954622, 42.204403>,  <38.966888, 31.895491, 42.366402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605972, 31.954622, 42.204403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378973, 0.719844, -0.581553,
		0.205567, -0.678211, -0.705529,
		-0.902287, 0.147828, -0.405000,
		38.335285, 31.998970, 42.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146603, 31.814436, 41.646725>,  <38.966888, 31.895491, 42.366402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146603, 31.814436, 41.646725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789036, 31.988289, 41.690563>,  <38.574497, 32.092602, 41.716866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789036, 31.988289, 41.690563>,  <39.146603, 31.814436, 41.646725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789036, 31.988289, 41.690563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157331, 0.533179, -0.831244,
		-0.419720, -0.725819, -0.544998,
		-0.893914, 0.434634, 0.109592,
		38.520863, 32.118679, 41.723442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927723, 31.855539, 40.986252>,  <39.146603, 31.814436, 41.646725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927723, 31.855539, 40.986252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701057, 32.143272, 41.146976>,  <38.565056, 32.315910, 41.243412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701057, 32.143272, 41.146976>,  <38.927723, 31.855539, 40.986252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701057, 32.143272, 41.146976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068958, 0.444550, -0.893096,
		-0.821056, -0.533796, -0.202308,
		-0.566667, 0.719331, 0.401810,
		38.531055, 32.359070, 41.267521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441513, 31.955952, 40.452591>,  <38.927723, 31.855539, 40.986252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441513, 31.955952, 40.452591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405125, 32.275467, 40.690468>,  <38.383289, 32.467175, 40.833195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405125, 32.275467, 40.690468>,  <38.441513, 31.955952, 40.452591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405125, 32.275467, 40.690468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226188, 0.564990, -0.793489,
		-0.969826, -0.206700, 0.129277,
		-0.090974, 0.798787, 0.594695,
		38.377831, 32.515102, 40.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748241, 32.270885, 40.328453>,  <38.441513, 31.955952, 40.452591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748241, 32.270885, 40.328453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987148, 32.555588, 40.476334>,  <38.130493, 32.726410, 40.565060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987148, 32.555588, 40.476334>,  <37.748241, 32.270885, 40.328453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987148, 32.555588, 40.476334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133262, 0.542604, -0.829351,
		-0.790894, 0.446077, 0.418929,
		0.597267, 0.711756, 0.369697,
		38.166328, 32.769115, 40.587242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355354, 32.936596, 40.287994>,  <37.748241, 32.270885, 40.328453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355354, 32.936596, 40.287994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730892, 33.069729, 40.323288>,  <37.956215, 33.149609, 40.344463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730892, 33.069729, 40.323288>,  <37.355354, 32.936596, 40.287994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730892, 33.069729, 40.323288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213139, 0.763004, -0.610243,
		-0.270433, 0.554120, 0.787285,
		0.938849, 0.332830, 0.088237,
		38.012547, 33.169579, 40.349758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338921, 33.677258, 40.392872>,  <37.355354, 32.936596, 40.287994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338921, 33.677258, 40.392872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698013, 33.602459, 40.233315>,  <37.913467, 33.557579, 40.137581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698013, 33.602459, 40.233315>,  <37.338921, 33.677258, 40.392872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698013, 33.602459, 40.233315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169296, 0.689489, -0.704232,
		0.406722, 0.699741, 0.587316,
		0.897729, -0.186996, -0.398894,
		37.967331, 33.546360, 40.113647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668716, 34.385418, 40.243862>,  <37.338921, 33.677258, 40.392872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668716, 34.385418, 40.243862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859779, 34.112907, 40.021976>,  <37.974415, 33.949402, 39.888844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859779, 34.112907, 40.021976>,  <37.668716, 34.385418, 40.243862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859779, 34.112907, 40.021976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148607, 0.559653, -0.815294,
		0.865888, 0.471865, 0.166079,
		0.477655, -0.681273, -0.554719,
		38.003075, 33.908527, 39.855560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932129, 35.125996, 40.216648>,  <37.668716, 34.385418, 40.243862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932129, 35.125996, 40.216648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733406, 35.471153, 40.179573>,  <37.614174, 35.678249, 40.157326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733406, 35.471153, 40.179573>,  <37.932129, 35.125996, 40.216648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733406, 35.471153, 40.179573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307809, -0.075335, 0.948461,
		0.811441, 0.499733, 0.303035,
		-0.496807, 0.862897, -0.092692,
		37.584366, 35.730022, 40.151764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132351, 35.591442, 40.745178>,  <37.932129, 35.125996, 40.216648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132351, 35.591442, 40.745178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769760, 35.711506, 40.626377>,  <37.552208, 35.783543, 40.555096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769760, 35.711506, 40.626377>,  <38.132351, 35.591442, 40.745178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769760, 35.711506, 40.626377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292708, 0.060287, 0.954300,
		0.304344, 0.951983, 0.033209,
		-0.906475, 0.300156, -0.297001,
		37.497818, 35.801552, 40.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754959, 35.888905, 41.309456>,  <38.132351, 35.591442, 40.745178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754959, 35.888905, 41.309456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439667, 35.860683, 41.064926>,  <37.250492, 35.843750, 40.918209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439667, 35.860683, 41.064926>,  <37.754959, 35.888905, 41.309456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439667, 35.860683, 41.064926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614437, 0.035126, 0.788183,
		-0.034134, 0.996889, -0.071038,
		-0.788227, -0.070552, -0.611327,
		37.203197, 35.839520, 40.881527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405533, 36.438549, 41.493088>,  <37.754959, 35.888905, 41.309456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405533, 36.438549, 41.493088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156391, 36.170353, 41.331844>,  <37.006905, 36.009438, 41.235096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156391, 36.170353, 41.331844>,  <37.405533, 36.438549, 41.493088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156391, 36.170353, 41.331844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491737, -0.065238, 0.868297,
		-0.608479, 0.739049, -0.289069,
		-0.622855, -0.670486, -0.403113,
		36.969536, 35.969208, 41.210911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774860, 36.724678, 41.668179>,  <37.405533, 36.438549, 41.493088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774860, 36.724678, 41.668179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717064, 36.332638, 41.613739>,  <36.682384, 36.097412, 41.581078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717064, 36.332638, 41.613739>,  <36.774860, 36.724678, 41.668179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717064, 36.332638, 41.613739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514359, -0.043103, 0.856491,
		-0.845315, 0.193757, -0.497897,
		-0.144491, -0.980102, -0.136096,
		36.673717, 36.038609, 41.572910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320488, 36.558018, 42.169197>,  <36.774860, 36.724678, 41.668179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320488, 36.558018, 42.169197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352936, 36.178673, 42.046547>,  <36.372406, 35.951065, 41.972958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352936, 36.178673, 42.046547>,  <36.320488, 36.558018, 42.169197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352936, 36.178673, 42.046547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339309, -0.315545, 0.886172,
		-0.937171, 0.032156, -0.347386,
		0.081120, -0.948366, -0.306630,
		36.377274, 35.894161, 41.954559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668533, 36.228508, 42.357327>,  <36.320488, 36.558018, 42.169197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668533, 36.228508, 42.357327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932888, 35.936642, 42.287117>,  <36.091499, 35.761520, 42.244991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932888, 35.936642, 42.287117>,  <35.668533, 36.228508, 42.357327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932888, 35.936642, 42.287117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282120, -0.458276, 0.842847,
		-0.695439, -0.507508, -0.508723,
		0.660887, -0.729670, -0.175525,
		36.131153, 35.717739, 42.234459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358978, 35.530399, 42.332451>,  <35.668533, 36.228508, 42.357327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358978, 35.530399, 42.332451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734818, 35.513134, 42.468266>,  <35.960323, 35.502773, 42.549755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734818, 35.513134, 42.468266>,  <35.358978, 35.530399, 42.332451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734818, 35.513134, 42.468266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329277, -0.384756, 0.862287,
		0.093420, -0.922009, -0.375730,
		0.939600, -0.043165, 0.339540,
		36.016697, 35.500183, 42.570129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312664, 35.035477, 42.782356>,  <35.358978, 35.530399, 42.332451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312664, 35.035477, 42.782356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663036, 35.197506, 42.887169>,  <35.873260, 35.294724, 42.950054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663036, 35.197506, 42.887169>,  <35.312664, 35.035477, 42.782356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663036, 35.197506, 42.887169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126361, -0.331537, 0.934942,
		0.465592, -0.852055, -0.239218,
		0.875932, 0.405074, 0.262028,
		35.925816, 35.319027, 42.965778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587196, 34.407051, 43.128513>,  <35.312664, 35.035477, 42.782356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587196, 34.407051, 43.128513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749931, 34.752514, 43.247559>,  <35.847572, 34.959793, 43.318985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749931, 34.752514, 43.247559>,  <35.587196, 34.407051, 43.128513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749931, 34.752514, 43.247559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117190, -0.273763, 0.954631,
		0.905951, -0.423260, -0.010166,
		0.406840, 0.863658, 0.297618,
		35.871983, 35.011612, 43.336845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090801, 34.215286, 43.569706>,  <35.587196, 34.407051, 43.128513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090801, 34.215286, 43.569706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052898, 34.602196, 43.663853>,  <36.030155, 34.834343, 43.720341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052898, 34.602196, 43.663853>,  <36.090801, 34.215286, 43.569706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052898, 34.602196, 43.663853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135614, -0.246769, 0.959539,
		0.986220, 0.059005, 0.154560,
		-0.094758, 0.967276, 0.235366,
		36.024471, 34.892380, 43.734463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498127, 34.344036, 44.157162>,  <36.090801, 34.215286, 43.569706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498127, 34.344036, 44.157162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235294, 34.645088, 44.140278>,  <36.077595, 34.825722, 44.130150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235294, 34.645088, 44.140278>,  <36.498127, 34.344036, 44.157162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235294, 34.645088, 44.140278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079929, -0.013889, 0.996704,
		0.749566, 0.658294, 0.069283,
		-0.657086, 0.752633, -0.042206,
		36.038170, 34.870876, 44.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765053, 34.951012, 44.620884>,  <36.498127, 34.344036, 44.157162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765053, 34.951012, 44.620884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368145, 34.986904, 44.586613>,  <36.130001, 35.008442, 44.566048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368145, 34.986904, 44.586613>,  <36.765053, 34.951012, 44.620884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368145, 34.986904, 44.586613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098667, -0.152014, 0.983441,
		0.075223, 0.984297, 0.159693,
		-0.992273, 0.089734, -0.085683,
		36.070461, 35.013824, 44.560909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586365, 35.549660, 45.003830>,  <36.765053, 34.951012, 44.620884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586365, 35.549660, 45.003830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234722, 35.359219, 45.012745>,  <36.023735, 35.244953, 45.018093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234722, 35.359219, 45.012745>,  <36.586365, 35.549660, 45.003830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234722, 35.359219, 45.012745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017152, 0.015128, 0.999738,
		-0.476317, 0.879259, -0.005133,
		-0.879106, -0.476104, 0.022286,
		35.970989, 35.216389, 45.019432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.965435, 32.394947, 43.890247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349091, 32.298752, 43.949875>,  <30.579283, 32.241035, 43.985653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349091, 32.298752, 43.949875>,  <29.965435, 32.394947, 43.890247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349091, 32.298752, 43.949875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212843, 0.266125, -0.940147,
		0.186424, 0.933457, 0.306436,
		0.959137, -0.240489, 0.149068,
		30.636831, 32.226604, 43.994595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371082, 33.043671, 43.763947>,  <29.965435, 32.394947, 43.890247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371082, 33.043671, 43.763947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596352, 32.715488, 43.724567>,  <30.731514, 32.518581, 43.700939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596352, 32.715488, 43.724567>,  <30.371082, 33.043671, 43.763947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596352, 32.715488, 43.724567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405865, 0.378415, -0.831911,
		0.719799, 0.428553, 0.546106,
		0.563173, -0.820454, -0.098448,
		30.765303, 32.469353, 43.695034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037247, 33.243408, 43.643009>,  <30.371082, 33.043671, 43.763947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037247, 33.243408, 43.643009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048023, 32.870182, 43.499527>,  <31.054489, 32.646248, 43.413437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048023, 32.870182, 43.499527>,  <31.037247, 33.243408, 43.643009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048023, 32.870182, 43.499527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348286, 0.345110, -0.871548,
		0.937001, -0.101448, 0.334271,
		0.026943, -0.933063, -0.358701,
		31.056107, 32.590263, 43.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672924, 33.175873, 43.244709>,  <31.037247, 33.243408, 43.643009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672924, 33.175873, 43.244709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428720, 32.886932, 43.114792>,  <31.282198, 32.713570, 43.036842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428720, 32.886932, 43.114792>,  <31.672924, 33.175873, 43.244709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428720, 32.886932, 43.114792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242979, 0.219484, -0.944875,
		0.753817, -0.655772, 0.041520,
		-0.610509, -0.722351, -0.324789,
		31.245567, 32.670227, 43.017357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076603, 32.826939, 42.670242>,  <31.672924, 33.175873, 43.244709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076603, 32.826939, 42.670242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692434, 32.726994, 42.621002>,  <31.461933, 32.667027, 42.591457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692434, 32.726994, 42.621002>,  <32.076603, 32.826939, 42.670242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692434, 32.726994, 42.621002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108652, 0.070887, -0.991549,
		0.256480, -0.965683, -0.040933,
		-0.960423, -0.249865, -0.123105,
		31.404306, 32.652035, 42.584072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110104, 32.499916, 42.077751>,  <32.076603, 32.826939, 42.670242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110104, 32.499916, 42.077751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714161, 32.552460, 42.099373>,  <31.476595, 32.583984, 42.112347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714161, 32.552460, 42.099373>,  <32.110104, 32.499916, 42.077751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714161, 32.552460, 42.099373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069136, -0.113135, -0.991171,
		-0.124105, -0.984855, 0.121071,
		-0.989857, 0.131379, 0.054048,
		31.417202, 32.591866, 42.115589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901577, 31.992859, 41.498699>,  <32.110104, 32.499916, 42.077751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901577, 31.992859, 41.498699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598444, 32.230618, 41.606316>,  <31.416565, 32.373272, 41.670883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598444, 32.230618, 41.606316>,  <31.901577, 31.992859, 41.498699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598444, 32.230618, 41.606316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241942, 0.126936, -0.961952,
		-0.605932, -0.794090, 0.047613,
		-0.757833, 0.594397, 0.269038,
		31.371094, 32.408936, 41.687027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304598, 31.864876, 41.136276>,  <31.901577, 31.992859, 41.498699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304598, 31.864876, 41.136276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257666, 32.247108, 41.244423>,  <31.229506, 32.476448, 41.309311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.257666, 32.247108, 41.244423>,  <31.304598, 31.864876, 41.136276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257666, 32.247108, 41.244423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091470, 0.260690, -0.961080,
		-0.988871, -0.137496, 0.056819,
		-0.117332, 0.955581, 0.270366,
		31.222466, 32.533783, 41.325531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910402, 31.936378, 40.604515>,  <31.304598, 31.864876, 41.136276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910402, 31.936378, 40.604515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.035751, 32.286850, 40.750999>,  <31.110962, 32.497131, 40.838890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.035751, 32.286850, 40.750999>,  <30.910402, 31.936378, 40.604515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035751, 32.286850, 40.750999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012097, 0.389283, -0.921038,
		-0.949552, 0.284200, 0.132591,
		0.313375, 0.876178, 0.366207,
		31.129765, 32.549702, 40.860863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358469, 32.375023, 40.495903>,  <30.910402, 31.936378, 40.604515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358469, 32.375023, 40.495903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698277, 32.585697, 40.508057>,  <30.902161, 32.712101, 40.515347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.698277, 32.585697, 40.508057>,  <30.358469, 32.375023, 40.495903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698277, 32.585697, 40.508057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124260, 0.255730, -0.958729,
		-0.512715, 0.810684, 0.282693,
		0.849519, 0.526682, 0.030381,
		30.953133, 32.743702, 40.517170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174582, 32.909355, 40.156315>,  <30.358469, 32.375023, 40.495903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174582, 32.909355, 40.156315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573969, 32.887604, 40.160473>,  <30.813601, 32.874554, 40.162968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.573969, 32.887604, 40.160473>,  <30.174582, 32.909355, 40.156315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573969, 32.887604, 40.160473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028411, 0.342130, -0.939223,
		0.047516, 0.938078, 0.343150,
		0.998466, -0.054377, 0.010395,
		30.873508, 32.871292, 40.163589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319159, 33.412754, 39.775913>,  <30.174582, 32.909355, 40.156315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319159, 33.412754, 39.775913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659842, 33.203510, 39.788261>,  <30.864252, 33.077965, 39.795670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659842, 33.203510, 39.788261>,  <30.319159, 33.412754, 39.775913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659842, 33.203510, 39.788261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265050, 0.379231, -0.886528,
		0.452041, 0.763246, 0.461643,
		0.851708, -0.523106, 0.030870,
		30.915354, 33.046577, 39.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694063, 33.931259, 39.482349>,  <30.319159, 33.412754, 39.775913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694063, 33.931259, 39.482349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.885017, 33.582783, 39.436523>,  <30.999590, 33.373695, 39.409027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.885017, 33.582783, 39.436523>,  <30.694063, 33.931259, 39.482349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885017, 33.582783, 39.436523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386914, 0.325477, -0.862764,
		0.788923, 0.367544, 0.492455,
		0.477387, -0.871192, -0.114568,
		31.028233, 33.321426, 39.402153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399254, 34.087730, 39.449219>,  <30.694063, 33.931259, 39.482349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399254, 34.087730, 39.449219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358828, 33.727329, 39.280468>,  <31.334572, 33.511089, 39.179218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358828, 33.727329, 39.280468>,  <31.399254, 34.087730, 39.449219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358828, 33.727329, 39.280468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333506, 0.368828, -0.867606,
		0.937315, -0.228382, 0.263214,
		-0.101065, -0.901004, -0.421875,
		31.328508, 33.457027, 39.153904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734051, 34.575783, 39.787426>,  <31.399254, 34.087730, 39.449219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734051, 34.575783, 39.787426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928831, 34.918938, 39.721806>,  <32.045700, 35.124828, 39.682434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928831, 34.918938, 39.721806>,  <31.734051, 34.575783, 39.787426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928831, 34.918938, 39.721806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112610, 0.124587, 0.985798,
		0.866139, -0.498510, -0.035938,
		0.486952, 0.857884, -0.164047,
		32.074917, 35.176304, 39.672592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369915, 34.655586, 40.013313>,  <31.734051, 34.575783, 39.787426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369915, 34.655586, 40.013313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.290024, 35.047230, 40.028526>,  <32.242088, 35.282215, 40.037655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.290024, 35.047230, 40.028526>,  <32.369915, 34.655586, 40.013313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290024, 35.047230, 40.028526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029898, -0.032710, 0.999017,
		0.979395, 0.200667, -0.022741,
		-0.199726, 0.979113, 0.038036,
		32.230106, 35.340965, 40.039936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846493, 34.941471, 40.408653>,  <32.369915, 34.655586, 40.013313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846493, 34.941471, 40.408653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557312, 35.217823, 40.410141>,  <32.383804, 35.383636, 40.411034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557312, 35.217823, 40.410141>,  <32.846493, 34.941471, 40.408653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557312, 35.217823, 40.410141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001834, -0.003463, 0.999992,
		0.690892, 0.722957, 0.001236,
		-0.722956, 0.690884, 0.003718,
		32.340424, 35.425087, 40.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049599, 35.517754, 40.748997>,  <32.846493, 34.941471, 40.408653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049599, 35.517754, 40.748997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650925, 35.527916, 40.779892>,  <32.411720, 35.534012, 40.798431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650925, 35.527916, 40.779892>,  <33.049599, 35.517754, 40.748997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650925, 35.527916, 40.779892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077840, 0.023502, 0.996689,
		0.023502, 0.999401, -0.025402,
		-0.996689, 0.025402, 0.077241,
		32.351917, 35.535538, 40.803062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788601, 35.976986, 41.287472>,  <33.049599, 35.517754, 40.748997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788601, 35.976986, 41.287472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459183, 35.752056, 41.257645>,  <32.261532, 35.617100, 41.239750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459183, 35.752056, 41.257645>,  <32.788601, 35.976986, 41.287472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459183, 35.752056, 41.257645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037250, -0.077558, 0.996292,
		-0.566020, 0.823273, 0.042927,
		-0.823550, -0.562322, -0.074566,
		32.212116, 35.583359, 41.235275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298767, 36.294678, 41.749634>,  <32.788601, 35.976986, 41.287472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298767, 36.294678, 41.749634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136768, 35.939705, 41.661594>,  <32.039570, 35.726723, 41.608772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136768, 35.939705, 41.661594>,  <32.298767, 36.294678, 41.749634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136768, 35.939705, 41.661594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141499, -0.176985, 0.973989,
		-0.903301, 0.425610, -0.053891,
		-0.405001, -0.887430, -0.220094,
		32.015266, 35.673477, 41.595566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611742, 36.170254, 42.071022>,  <32.298767, 36.294678, 41.749634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611742, 36.170254, 42.071022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783800, 35.812164, 42.024456>,  <31.887035, 35.597309, 41.996517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783800, 35.812164, 42.024456>,  <31.611742, 36.170254, 42.071022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783800, 35.812164, 42.024456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155985, -0.200719, 0.967151,
		-0.889183, -0.397854, -0.225979,
		0.430143, -0.895223, -0.116417,
		31.912844, 35.543598, 41.989532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202974, 35.822746, 42.496273>,  <31.611742, 36.170254, 42.071022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202974, 35.822746, 42.496273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532867, 35.602692, 42.443855>,  <31.730803, 35.470661, 42.412407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532867, 35.602692, 42.443855>,  <31.202974, 35.822746, 42.496273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532867, 35.602692, 42.443855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135474, -0.417160, 0.898679,
		-0.549061, -0.723415, -0.418573,
		0.824730, -0.550135, -0.131043,
		31.780287, 35.437653, 42.404541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959146, 35.188999, 42.723976>,  <31.202974, 35.822746, 42.496273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959146, 35.188999, 42.723976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358280, 35.193707, 42.749878>,  <31.597759, 35.196529, 42.765419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358280, 35.193707, 42.749878>,  <30.959146, 35.188999, 42.723976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358280, 35.193707, 42.749878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054108, -0.413471, 0.908908,
		0.037468, -0.910441, -0.411938,
		0.997832, 0.011766, 0.064754,
		31.657629, 35.197235, 42.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143831, 34.525406, 42.932407>,  <30.959146, 35.188999, 42.723976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143831, 34.525406, 42.932407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427534, 34.784767, 43.043068>,  <31.597755, 34.940384, 43.109463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427534, 34.784767, 43.043068>,  <31.143831, 34.525406, 42.932407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427534, 34.784767, 43.043068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021309, -0.372536, 0.927773,
		0.704629, -0.663924, -0.250407,
		0.709256, 0.648399, 0.276647,
		31.640310, 34.979286, 43.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678452, 34.192318, 43.242012>,  <31.143831, 34.525406, 42.932407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678452, 34.192318, 43.242012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653967, 34.548798, 43.421799>,  <31.639277, 34.762684, 43.529671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653967, 34.548798, 43.421799>,  <31.678452, 34.192318, 43.242012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653967, 34.548798, 43.421799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202588, -0.429847, 0.879880,
		0.977349, 0.144918, -0.154233,
		-0.061214, 0.891196, 0.449470,
		31.635603, 34.816154, 43.556641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212082, 34.151943, 43.676968>,  <31.678452, 34.192318, 43.242012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212082, 34.151943, 43.676968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.977613, 34.451702, 43.800129>,  <31.836933, 34.631557, 43.874027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.977613, 34.451702, 43.800129>,  <32.212082, 34.151943, 43.676968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977613, 34.451702, 43.800129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211073, -0.225664, 0.951065,
		0.782209, 0.622477, -0.025900,
		-0.586171, 0.749398, 0.307905,
		31.801762, 34.676521, 43.892502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618710, 34.582180, 44.135838>,  <32.212082, 34.151943, 43.676968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618710, 34.582180, 44.135838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.235287, 34.639397, 44.234394>,  <32.005234, 34.673729, 44.293530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.235287, 34.639397, 44.234394>,  <32.618710, 34.582180, 44.135838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235287, 34.639397, 44.234394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164938, -0.426550, 0.889298,
		0.232309, 0.893081, 0.385278,
		-0.958555, 0.143044, 0.246394,
		31.947720, 34.682308, 44.308311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551579, 34.992222, 44.780910>,  <32.618710, 34.582180, 44.135838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551579, 34.992222, 44.780910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196655, 34.810272, 44.750515>,  <31.983702, 34.701103, 44.732277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196655, 34.810272, 44.750515>,  <32.551579, 34.992222, 44.780910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196655, 34.810272, 44.750515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010104, -0.183910, 0.982891,
		-0.461068, 0.871359, 0.167781,
		-0.887307, -0.454875, -0.075991,
		31.930464, 34.673809, 44.727718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462734, 35.667274, 45.111080>,  <32.551579, 34.992222, 44.780910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462734, 35.667274, 45.111080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734604, 35.914593, 45.268940>,  <32.897728, 36.062984, 45.363655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734604, 35.914593, 45.268940>,  <32.462734, 35.667274, 45.111080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734604, 35.914593, 45.268940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035004, 0.510072, -0.859420,
		-0.732674, 0.597944, 0.325042,
		0.679679, 0.618297, 0.394647,
		32.938507, 36.100082, 45.387333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321522, 36.313347, 44.785851>,  <32.462734, 35.667274, 45.111080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321522, 36.313347, 44.785851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700340, 36.356308, 44.906891>,  <32.927631, 36.382084, 44.979515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700340, 36.356308, 44.906891>,  <32.321522, 36.313347, 44.785851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700340, 36.356308, 44.906891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241608, 0.382342, -0.891874,
		-0.211488, 0.917757, 0.336147,
		0.947047, 0.107405, 0.302598,
		32.984455, 36.388531, 44.997669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441818, 36.937263, 44.648563>,  <32.321522, 36.313347, 44.785851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441818, 36.937263, 44.648563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807190, 36.774960, 44.661316>,  <33.026413, 36.677578, 44.668968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807190, 36.774960, 44.661316>,  <32.441818, 36.937263, 44.648563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807190, 36.774960, 44.661316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284181, 0.579742, -0.763636,
		0.291368, 0.706584, 0.644859,
		0.913425, -0.405756, 0.031880,
		33.081219, 36.653233, 44.670879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979248, 37.469738, 44.562939>,  <32.441818, 36.937263, 44.648563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979248, 37.469738, 44.562939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194736, 37.143223, 44.479565>,  <33.324032, 36.947311, 44.429539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194736, 37.143223, 44.479565>,  <32.979248, 37.469738, 44.562939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194736, 37.143223, 44.479565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380626, 0.456539, -0.804174,
		0.751599, 0.353892, 0.556650,
		0.538723, -0.816292, -0.208434,
		33.356354, 36.898335, 44.417034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759033, 37.723522, 44.382534>,  <32.979248, 37.469738, 44.562939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759033, 37.723522, 44.382534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699284, 37.357006, 44.233887>,  <33.663433, 37.137096, 44.144699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699284, 37.357006, 44.233887>,  <33.759033, 37.723522, 44.382534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699284, 37.357006, 44.233887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368792, 0.297086, -0.880757,
		0.917431, -0.268614, 0.293542,
		-0.149377, -0.916289, -0.371618,
		33.654472, 37.082119, 44.122402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330769, 37.608166, 44.106365>,  <33.759033, 37.723522, 44.382534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330769, 37.608166, 44.106365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106575, 37.341419, 43.909939>,  <33.972057, 37.181374, 43.792084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106575, 37.341419, 43.909939>,  <34.330769, 37.608166, 44.106365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106575, 37.341419, 43.909939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398012, 0.303086, -0.865867,
		0.726251, -0.680757, 0.095545,
		-0.560487, -0.666865, -0.491066,
		33.938427, 37.141361, 43.762619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724152, 37.205235, 43.654598>,  <34.330769, 37.608166, 44.106365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724152, 37.205235, 43.654598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361706, 37.173180, 43.488449>,  <34.144238, 37.153946, 43.388760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361706, 37.173180, 43.488449>,  <34.724152, 37.205235, 43.654598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361706, 37.173180, 43.488449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364138, 0.352005, -0.862262,
		0.215309, -0.932562, -0.289777,
		-0.906115, -0.080134, -0.415371,
		34.089870, 37.149139, 43.363838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912746, 36.952480, 42.955421>,  <34.724152, 37.205235, 43.654598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912746, 36.952480, 42.955421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524216, 37.042721, 42.925400>,  <34.291100, 37.096867, 42.907387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524216, 37.042721, 42.925400>,  <34.912746, 36.952480, 42.955421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524216, 37.042721, 42.925400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171126, 0.444203, -0.879431,
		-0.165062, -0.867057, -0.470071,
		-0.971324, 0.225602, -0.075055,
		34.232819, 37.110401, 42.902882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686550, 36.781990, 42.340050>,  <34.912746, 36.952480, 42.955421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686550, 36.781990, 42.340050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422901, 37.060509, 42.453701>,  <34.264713, 37.227619, 42.521893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422901, 37.060509, 42.453701>,  <34.686550, 36.781990, 42.340050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422901, 37.060509, 42.453701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067379, 0.321612, -0.944471,
		-0.749012, -0.641665, -0.165066,
		-0.659122, 0.696298, 0.284126,
		34.225166, 37.269398, 42.538940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013313, 36.675697, 41.980679>,  <34.686550, 36.781990, 42.340050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013313, 36.675697, 41.980679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033600, 37.066174, 42.065041>,  <34.045773, 37.300461, 42.115658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033600, 37.066174, 42.065041>,  <34.013313, 36.675697, 41.980679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033600, 37.066174, 42.065041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148615, 0.216202, -0.964971,
		-0.987594, 0.017594, 0.156041,
		0.050714, 0.976190, 0.210905,
		34.048813, 37.359032, 42.128311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548126, 36.929066, 41.629120>,  <34.013313, 36.675697, 41.980679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548126, 36.929066, 41.629120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749363, 37.267323, 41.700436>,  <33.870106, 37.470276, 41.743225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749363, 37.267323, 41.700436>,  <33.548126, 36.929066, 41.629120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749363, 37.267323, 41.700436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206863, 0.318127, -0.925204,
		-0.839113, 0.428578, 0.334978,
		0.503088, 0.845645, 0.178288,
		33.900288, 37.521015, 41.753922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089218, 37.591667, 41.434448>,  <33.548126, 36.929066, 41.629120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089218, 37.591667, 41.434448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465816, 37.726456, 41.436481>,  <33.691776, 37.807331, 41.437702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.465816, 37.726456, 41.436481>,  <33.089218, 37.591667, 41.434448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465816, 37.726456, 41.436481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150259, 0.433228, -0.888671,
		-0.301661, 0.835920, 0.458518,
		0.941500, 0.336974, 0.005084,
		33.748268, 37.827549, 41.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020962, 38.182629, 41.094616>,  <33.089218, 37.591667, 41.434448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020962, 38.182629, 41.094616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418362, 38.137745, 41.102291>,  <33.656803, 38.110813, 41.106895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418362, 38.137745, 41.102291>,  <33.020962, 38.182629, 41.094616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418362, 38.137745, 41.102291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089079, 0.661334, -0.744783,
		0.070879, 0.741651, 0.667031,
		0.993499, -0.112208, 0.019191,
		33.716412, 38.104084, 41.108047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375431, 38.866776, 40.915562>,  <33.020962, 38.182629, 41.094616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375431, 38.866776, 40.915562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639557, 38.591034, 40.796383>,  <33.798031, 38.425587, 40.724876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639557, 38.591034, 40.796383>,  <33.375431, 38.866776, 40.915562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639557, 38.591034, 40.796383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095432, 0.470542, -0.877202,
		0.744900, 0.550797, 0.376493,
		0.660316, -0.689357, -0.297943,
		33.837650, 38.384228, 40.707001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.840965, 37.629494, 25.010273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801178, 37.237522, 24.941175>,  <26.777306, 37.002338, 24.899717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801178, 37.237522, 24.941175>,  <26.840965, 37.629494, 25.010273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801178, 37.237522, 24.941175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395431, -0.120378, 0.910573,
		-0.913094, 0.158879, -0.375522,
		-0.099466, -0.979932, -0.172742,
		26.771338, 36.943542, 24.889353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212479, 37.449417, 25.450260>,  <26.840965, 37.629494, 25.010273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212479, 37.449417, 25.450260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361738, 37.087708, 25.367266>,  <26.451294, 36.870682, 25.317469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361738, 37.087708, 25.367266>,  <26.212479, 37.449417, 25.450260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361738, 37.087708, 25.367266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307937, -0.331678, 0.891720,
		-0.875177, -0.268851, -0.402224,
		0.373148, -0.904273, -0.207488,
		26.473682, 36.816425, 25.305019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692488, 36.970863, 25.663866>,  <26.212479, 37.449417, 25.450260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692488, 36.970863, 25.663866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045492, 36.782894, 25.671282>,  <26.257296, 36.670113, 25.675732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045492, 36.782894, 25.671282>,  <25.692488, 36.970863, 25.663866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045492, 36.782894, 25.671282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132068, -0.209799, 0.968784,
		-0.451368, -0.857410, -0.247212,
		0.882511, -0.469927, 0.018540,
		26.310246, 36.641914, 25.676844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560122, 36.353546, 25.932365>,  <25.692488, 36.970863, 25.663866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560122, 36.353546, 25.932365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950903, 36.417198, 25.989273>,  <26.185371, 36.455387, 26.023418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950903, 36.417198, 25.989273>,  <25.560122, 36.353546, 25.932365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950903, 36.417198, 25.989273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113316, -0.178194, 0.977449,
		0.180890, -0.971043, -0.156056,
		0.976953, 0.159127, 0.142269,
		26.243990, 36.464935, 26.031954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691195, 35.911098, 26.407547>,  <25.560122, 36.353546, 25.932365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691195, 35.911098, 26.407547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004574, 36.159416, 26.418978>,  <26.192602, 36.308407, 26.425837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004574, 36.159416, 26.418978>,  <25.691195, 35.911098, 26.407547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004574, 36.159416, 26.418978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083448, -0.150659, 0.985058,
		0.615827, -0.769358, -0.169838,
		0.783449, 0.620798, 0.028579,
		26.239609, 36.345657, 26.427551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070368, 35.722786, 26.902721>,  <25.691195, 35.911098, 26.407547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070368, 35.722786, 26.902721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219547, 36.091640, 26.861582>,  <26.309055, 36.312954, 26.836899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219547, 36.091640, 26.861582>,  <26.070368, 35.722786, 26.902721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219547, 36.091640, 26.861582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183437, 0.035381, 0.982395,
		0.909539, -0.385248, -0.155959,
		0.372947, 0.922134, -0.102850,
		26.331432, 36.368282, 26.830727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604639, 35.781456, 27.270212>,  <26.070368, 35.722786, 26.902721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604639, 35.781456, 27.270212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497042, 36.163204, 27.218323>,  <26.432484, 36.392254, 27.187189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497042, 36.163204, 27.218323>,  <26.604639, 35.781456, 27.270212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497042, 36.163204, 27.218323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181159, 0.182419, 0.966388,
		0.945952, 0.236450, -0.221961,
		-0.268992, 0.954366, -0.129725,
		26.416344, 36.449512, 27.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077471, 36.218376, 27.570538>,  <26.604639, 35.781456, 27.270212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077471, 36.218376, 27.570538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740683, 36.434025, 27.578854>,  <26.538610, 36.563416, 27.583843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740683, 36.434025, 27.578854>,  <27.077471, 36.218376, 27.570538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740683, 36.434025, 27.578854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124403, 0.156502, 0.979812,
		0.524985, 0.827559, -0.198838,
		-0.841971, 0.539122, 0.020790,
		26.488091, 36.595760, 27.585091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314482, 36.751484, 27.939703>,  <27.077471, 36.218376, 27.570538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314482, 36.751484, 27.939703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915066, 36.765190, 27.956423>,  <26.675417, 36.773415, 27.966455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915066, 36.765190, 27.956423>,  <27.314482, 36.751484, 27.939703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915066, 36.765190, 27.956423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050771, 0.329314, 0.942855,
		0.018546, 0.943599, -0.330572,
		-0.998538, 0.034269, 0.041800,
		26.615505, 36.775471, 27.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188782, 37.367626, 28.294724>,  <27.314482, 36.751484, 27.939703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188782, 37.367626, 28.294724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841843, 37.168644, 28.300974>,  <26.633678, 37.049255, 28.304724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841843, 37.168644, 28.300974>,  <27.188782, 37.367626, 28.294724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841843, 37.168644, 28.300974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095033, 0.196350, 0.975918,
		-0.488543, 0.844977, -0.217579,
		-0.867349, -0.497455, 0.015624,
		26.581638, 37.019409, 28.305662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788980, 37.725193, 28.782478>,  <27.188782, 37.367626, 28.294724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788980, 37.725193, 28.782478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646069, 37.352692, 28.753889>,  <26.560322, 37.129189, 28.736736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646069, 37.352692, 28.753889>,  <26.788980, 37.725193, 28.782478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646069, 37.352692, 28.753889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051232, -0.056867, 0.997067,
		-0.932591, 0.359895, -0.027393,
		-0.357282, -0.931258, -0.071471,
		26.538883, 37.073315, 28.732449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283934, 37.748322, 29.269670>,  <26.788980, 37.725193, 28.782478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283934, 37.748322, 29.269670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.366407, 37.360661, 29.215672>,  <26.415892, 37.128063, 29.183271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.366407, 37.360661, 29.215672>,  <26.283934, 37.748322, 29.269670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366407, 37.360661, 29.215672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000765, -0.138123, 0.990415,
		-0.978513, -0.204104, -0.029220,
		0.206184, -0.969156, -0.134999,
		26.428263, 37.069912, 29.175171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886631, 37.401165, 29.728611>,  <26.283934, 37.748322, 29.269670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886631, 37.401165, 29.728611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159073, 37.121883, 29.640421>,  <26.322538, 36.954315, 29.587507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159073, 37.121883, 29.640421>,  <25.886631, 37.401165, 29.728611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159073, 37.121883, 29.640421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026164, -0.277718, 0.960306,
		-0.731719, -0.659837, -0.170887,
		0.681104, -0.698203, -0.220476,
		26.363403, 36.912422, 29.574278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659601, 36.822742, 30.110937>,  <25.886631, 37.401165, 29.728611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659601, 36.822742, 30.110937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046333, 36.758148, 30.031780>,  <26.278372, 36.719391, 29.984287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046333, 36.758148, 30.031780>,  <25.659601, 36.822742, 30.110937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046333, 36.758148, 30.031780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137975, -0.321803, 0.936699,
		-0.214943, -0.932934, -0.288849,
		0.966831, -0.161483, -0.197891,
		26.336382, 36.709702, 29.972412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750532, 36.164967, 30.355478>,  <25.659601, 36.822742, 30.110937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750532, 36.164967, 30.355478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108400, 36.341427, 30.327345>,  <26.323122, 36.447304, 30.310465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108400, 36.341427, 30.327345>,  <25.750532, 36.164967, 30.355478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108400, 36.341427, 30.327345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163620, -0.177094, 0.970498,
		0.415683, -0.879785, -0.230622,
		0.894671, 0.441154, -0.070335,
		26.376802, 36.473774, 30.306244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289501, 35.701126, 30.704718>,  <25.750532, 36.164967, 30.355478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289501, 35.701126, 30.704718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456549, 36.064571, 30.703121>,  <26.556778, 36.282639, 30.702164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456549, 36.064571, 30.703121>,  <26.289501, 35.701126, 30.704718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456549, 36.064571, 30.703121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310843, -0.138742, 0.940280,
		0.853798, -0.393919, -0.340377,
		0.417619, 0.908613, -0.003989,
		26.581835, 36.337154, 30.701925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954231, 35.545918, 30.993868>,  <26.289501, 35.701126, 30.704718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954231, 35.545918, 30.993868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896027, 35.939533, 31.034828>,  <26.861103, 36.175705, 31.059404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896027, 35.939533, 31.034828>,  <26.954231, 35.545918, 30.993868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896027, 35.939533, 31.034828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542510, -0.007191, 0.840019,
		0.827351, 0.177786, -0.532806,
		-0.145512, 0.984043, 0.102400,
		26.852373, 36.234745, 31.065548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537516, 35.743633, 31.340649>,  <26.954231, 35.545918, 30.993868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537516, 35.743633, 31.340649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321699, 36.078526, 31.376287>,  <27.192209, 36.279461, 31.397671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321699, 36.078526, 31.376287>,  <27.537516, 35.743633, 31.340649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321699, 36.078526, 31.376287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402689, 0.163667, 0.900586,
		0.739416, 0.521782, -0.425449,
		-0.539541, 0.837232, 0.089098,
		27.159838, 36.329697, 31.403017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983362, 36.329987, 31.564913>,  <27.537516, 35.743633, 31.340649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983362, 36.329987, 31.564913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608599, 36.415249, 31.675739>,  <27.383741, 36.466408, 31.742235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608599, 36.415249, 31.675739>,  <27.983362, 36.329987, 31.564913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608599, 36.415249, 31.675739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321261, 0.212557, 0.922828,
		0.137818, 0.953615, -0.267627,
		-0.936908, 0.213160, 0.277065,
		27.327526, 36.479198, 31.758860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055752, 37.013363, 31.698887>,  <27.983362, 36.329987, 31.564913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055752, 37.013363, 31.698887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.740725, 36.849533, 31.883055>,  <27.551708, 36.751236, 31.993555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.740725, 36.849533, 31.883055>,  <28.055752, 37.013363, 31.698887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740725, 36.849533, 31.883055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354236, 0.310463, 0.882117,
		-0.504236, 0.857823, -0.099424,
		-0.787568, -0.409575, 0.460418,
		27.504454, 36.726662, 32.021179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378677, 37.612690, 31.598631>,  <28.055752, 37.013363, 31.698887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378677, 37.612690, 31.598631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639332, 37.311947, 31.558455>,  <28.795725, 37.131500, 31.534348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639332, 37.311947, 31.558455>,  <28.378677, 37.612690, 31.598631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639332, 37.311947, 31.558455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160793, 0.266324, -0.950377,
		0.741295, 0.603148, 0.294438,
		0.651635, -0.751853, -0.100443,
		28.834822, 37.086391, 31.528322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843456, 37.868149, 31.148062>,  <28.378677, 37.612690, 31.598631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843456, 37.868149, 31.148062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907112, 37.473827, 31.126625>,  <28.945305, 37.237236, 31.113762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907112, 37.473827, 31.126625>,  <28.843456, 37.868149, 31.148062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907112, 37.473827, 31.126625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115655, 0.072526, -0.990638,
		0.980458, 0.151451, 0.125554,
		0.159139, -0.985800, -0.053593,
		28.954853, 37.178085, 31.110548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481050, 37.814678, 30.789173>,  <28.843456, 37.868149, 31.148062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481050, 37.814678, 30.789173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323690, 37.448509, 30.755136>,  <29.229275, 37.228809, 30.734715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323690, 37.448509, 30.755136>,  <29.481050, 37.814678, 30.789173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323690, 37.448509, 30.755136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150409, 0.027224, -0.988249,
		0.906981, -0.401574, 0.126978,
		-0.393398, -0.915422, -0.085092,
		29.205671, 37.173882, 30.729609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967253, 37.411682, 30.423061>,  <29.481050, 37.814678, 30.789173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967253, 37.411682, 30.423061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.604143, 37.249378, 30.380541>,  <29.386276, 37.151997, 30.355028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.604143, 37.249378, 30.380541>,  <29.967253, 37.411682, 30.423061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604143, 37.249378, 30.380541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133146, -0.038418, -0.990352,
		0.397764, -0.913171, 0.088900,
		-0.907775, -0.405762, -0.106304,
		29.331810, 37.127651, 30.348650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084599, 36.934547, 29.948784>,  <29.967253, 37.411682, 30.423061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084599, 36.934547, 29.948784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686954, 36.972023, 29.926979>,  <29.448368, 36.994507, 29.913897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686954, 36.972023, 29.926979>,  <30.084599, 36.934547, 29.948784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686954, 36.972023, 29.926979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031453, -0.231937, -0.972222,
		-0.103729, -0.968209, 0.227624,
		-0.994108, 0.093688, -0.054512,
		29.388721, 37.000130, 29.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821768, 36.333996, 29.597916>,  <30.084599, 36.934547, 29.948784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821768, 36.333996, 29.597916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534548, 36.609940, 29.561033>,  <29.362215, 36.775505, 29.538904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534548, 36.609940, 29.561033>,  <29.821768, 36.333996, 29.597916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534548, 36.609940, 29.561033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018840, -0.113165, -0.993398,
		-0.695736, -0.715046, 0.068261,
		-0.718050, 0.689857, -0.092204,
		29.319132, 36.816898, 29.533373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357080, 36.027065, 29.047791>,  <29.821768, 36.333996, 29.597916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357080, 36.027065, 29.047791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276957, 36.418938, 29.051958>,  <29.228882, 36.654060, 29.054459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276957, 36.418938, 29.051958>,  <29.357080, 36.027065, 29.047791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276957, 36.418938, 29.051958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108090, 0.032666, -0.993604,
		-0.973752, -0.197902, -0.112437,
		-0.200310, 0.979677, 0.010418,
		29.216864, 36.712841, 29.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821901, 36.156696, 28.557907>,  <29.357080, 36.027065, 29.047791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821901, 36.156696, 28.557907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011812, 36.502865, 28.621941>,  <29.125759, 36.710567, 28.660360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011812, 36.502865, 28.621941>,  <28.821901, 36.156696, 28.557907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011812, 36.502865, 28.621941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157135, 0.095617, -0.982937,
		-0.865965, 0.491832, -0.090591,
		0.474778, 0.865424, 0.160085,
		29.154245, 36.762493, 28.669966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471573, 36.612522, 28.128418>,  <28.821901, 36.156696, 28.557907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471573, 36.612522, 28.128418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812527, 36.794670, 28.231239>,  <29.017099, 36.903957, 28.292933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812527, 36.794670, 28.231239>,  <28.471573, 36.612522, 28.128418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812527, 36.794670, 28.231239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088049, 0.359574, -0.928953,
		-0.515448, 0.814459, 0.266400,
		0.852385, 0.455371, 0.257054,
		29.068243, 36.931282, 28.308355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473528, 37.397911, 27.858437>,  <28.471573, 36.612522, 28.128418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473528, 37.397911, 27.858437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848318, 37.262093, 27.891396>,  <29.073193, 37.180603, 27.911171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848318, 37.262093, 27.891396>,  <28.473528, 37.397911, 27.858437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848318, 37.262093, 27.891396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179633, 0.265862, -0.947127,
		0.299683, 0.902236, 0.310099,
		0.936975, -0.339541, 0.082397,
		29.129410, 37.160229, 27.916115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715246, 37.863590, 27.313232>,  <28.473528, 37.397911, 27.858437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715246, 37.863590, 27.313232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012253, 37.613182, 27.408533>,  <29.190456, 37.462936, 27.465714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012253, 37.613182, 27.408533>,  <28.715246, 37.863590, 27.313232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012253, 37.613182, 27.408533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358596, 0.071088, -0.930782,
		0.565753, 0.776558, 0.277273,
		0.742517, -0.626022, 0.238253,
		29.235008, 37.425377, 27.480009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273943, 38.094265, 26.813068>,  <28.715246, 37.863590, 27.313232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273943, 38.094265, 26.813068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350695, 37.721363, 26.935762>,  <29.396746, 37.497623, 27.009378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350695, 37.721363, 26.935762>,  <29.273943, 38.094265, 26.813068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350695, 37.721363, 26.935762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232463, -0.260476, -0.937077,
		0.953490, 0.251112, 0.166734,
		0.191881, -0.932253, 0.306735,
		29.408258, 37.441689, 27.027782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926996, 37.805042, 26.486300>,  <29.273943, 38.094265, 26.813068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926996, 37.805042, 26.486300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712114, 37.490471, 26.608250>,  <29.583185, 37.301727, 26.681419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712114, 37.490471, 26.608250>,  <29.926996, 37.805042, 26.486300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712114, 37.490471, 26.608250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026595, -0.377077, -0.925800,
		0.843034, -0.489234, 0.223482,
		-0.537203, -0.786424, 0.304878,
		29.550953, 37.254543, 26.699713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278124, 37.180992, 26.086901>,  <29.926996, 37.805042, 26.486300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278124, 37.180992, 26.086901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905621, 37.087334, 26.198566>,  <29.682119, 37.031139, 26.265566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905621, 37.087334, 26.198566>,  <30.278124, 37.180992, 26.086901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905621, 37.087334, 26.198566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238147, -0.188722, -0.952717,
		0.275760, -0.953708, 0.119988,
		-0.931258, -0.234147, 0.279165,
		29.626244, 37.017090, 26.282316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095224, 36.556477, 25.674437>,  <30.278124, 37.180992, 26.086901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095224, 36.556477, 25.674437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756699, 36.742100, 25.779057>,  <29.553583, 36.853474, 25.841829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756699, 36.742100, 25.779057>,  <30.095224, 36.556477, 25.674437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756699, 36.742100, 25.779057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375972, -0.172537, -0.910426,
		-0.377361, -0.868840, 0.320492,
		-0.846312, 0.464055, 0.261551,
		29.502806, 36.881317, 25.857521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561443, 36.052799, 25.414200>,  <30.095224, 36.556477, 25.674437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561443, 36.052799, 25.414200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386530, 36.404850, 25.488138>,  <29.281582, 36.616081, 25.532501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386530, 36.404850, 25.488138>,  <29.561443, 36.052799, 25.414200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386530, 36.404850, 25.488138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586263, -0.123114, -0.800712,
		-0.681967, -0.458505, 0.569819,
		-0.437283, 0.880123, 0.184844,
		29.255344, 36.668888, 25.543592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852936, 35.865105, 25.475922>,  <29.561443, 36.052799, 25.414200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852936, 35.865105, 25.475922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907684, 36.238388, 25.343027>,  <28.940533, 36.462360, 25.263290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907684, 36.238388, 25.343027>,  <28.852936, 35.865105, 25.475922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907684, 36.238388, 25.343027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591913, -0.191884, -0.782828,
		-0.794296, 0.303801, 0.526117,
		0.136871, 0.933213, -0.332236,
		28.948746, 36.518353, 25.243357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156836, 36.154377, 25.393255>,  <28.852936, 35.865105, 25.475922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156836, 36.154377, 25.393255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.377514, 36.393585, 25.160706>,  <28.509922, 36.537109, 25.021175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.377514, 36.393585, 25.160706>,  <28.156836, 36.154377, 25.393255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377514, 36.393585, 25.160706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655053, -0.120792, -0.745865,
		-0.516271, 0.792323, 0.325097,
		0.551697, 0.598025, -0.581375,
		28.543022, 36.572994, 24.986294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752861, 36.557579, 24.997774>,  <28.156836, 36.154377, 25.393255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752861, 36.557579, 24.997774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071175, 36.631828, 24.767200>,  <28.262163, 36.676376, 24.628857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071175, 36.631828, 24.767200>,  <27.752861, 36.557579, 24.997774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071175, 36.631828, 24.767200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561538, -0.130203, -0.817143,
		-0.226730, 0.973957, 0.000619,
		0.795782, 0.185619, -0.576435,
		28.309910, 36.687515, 24.594271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558479, 37.208420, 24.548456>,  <27.752861, 36.557579, 24.997774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558479, 37.208420, 24.548456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847433, 36.994041, 24.373680>,  <28.020805, 36.865414, 24.268814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847433, 36.994041, 24.373680>,  <27.558479, 37.208420, 24.548456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847433, 36.994041, 24.373680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569353, -0.102402, -0.815690,
		0.392426, 0.838016, -0.379118,
		0.722384, -0.535950, -0.436942,
		28.064148, 36.833256, 24.242598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750553, 37.529167, 24.048651>,  <27.558479, 37.208420, 24.548456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750553, 37.529167, 24.048651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861616, 37.163445, 23.930696>,  <27.928253, 36.944012, 23.859924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861616, 37.163445, 23.930696>,  <27.750553, 37.529167, 24.048651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861616, 37.163445, 23.930696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537822, 0.106405, -0.836317,
		0.796024, 0.390803, -0.462188,
		0.277656, -0.914304, -0.294884,
		27.944912, 36.889153, 23.842232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680435, 37.586838, 23.378826>,  <27.750553, 37.529167, 24.048651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680435, 37.586838, 23.378826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.740324, 37.193508, 23.420101>,  <27.776258, 36.957508, 23.444866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.740324, 37.193508, 23.420101>,  <27.680435, 37.586838, 23.378826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740324, 37.193508, 23.420101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613206, -0.174219, -0.770471,
		0.775603, 0.052083, -0.629068,
		0.149724, -0.983328, 0.103187,
		27.785242, 36.898510, 23.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.133785, 35.907726, 45.574547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948299, 35.567692, 45.474697>,  <35.837006, 35.363670, 45.414787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948299, 35.567692, 45.474697>,  <36.133785, 35.907726, 45.574547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948299, 35.567692, 45.474697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075091, -0.243029, 0.967108,
		-0.882795, 0.467210, 0.048863,
		-0.463718, -0.850089, -0.249628,
		35.809185, 35.312664, 45.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688618, 35.760159, 46.122108>,  <36.133785, 35.907726, 45.574547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688618, 35.760159, 46.122108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713890, 35.405697, 45.938484>,  <35.729053, 35.193020, 45.828308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713890, 35.405697, 45.938484>,  <35.688618, 35.760159, 46.122108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713890, 35.405697, 45.938484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169192, -0.443814, 0.880002,
		-0.983556, -0.133270, 0.121889,
		0.063182, -0.886154, -0.459064,
		35.732845, 35.139851, 45.800766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328266, 35.423100, 46.639263>,  <35.688618, 35.760159, 46.122108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328266, 35.423100, 46.639263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507542, 35.142590, 46.417511>,  <35.615108, 34.974281, 46.284462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507542, 35.142590, 46.417511>,  <35.328266, 35.423100, 46.639263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507542, 35.142590, 46.417511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110932, -0.571729, 0.812909,
		-0.887029, -0.425835, -0.178448,
		0.448189, -0.701278, -0.554379,
		35.641998, 34.932205, 46.251198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932640, 34.842865, 46.640846>,  <35.328266, 35.423100, 46.639263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932640, 34.842865, 46.640846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319004, 34.762249, 46.575855>,  <35.550823, 34.713879, 46.536861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319004, 34.762249, 46.575855>,  <34.932640, 34.842865, 46.640846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319004, 34.762249, 46.575855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020313, -0.566697, 0.823676,
		-0.258081, -0.798897, -0.543285,
		0.965910, -0.201539, -0.162481,
		35.608776, 34.701786, 46.527111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028767, 34.103912, 46.663555>,  <34.932640, 34.842865, 46.640846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028767, 34.103912, 46.663555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396332, 34.248989, 46.725586>,  <35.616871, 34.336037, 46.762806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396332, 34.248989, 46.725586>,  <35.028767, 34.103912, 46.663555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396332, 34.248989, 46.725586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061607, -0.520280, 0.851770,
		0.389615, -0.773151, -0.500438,
		0.918915, 0.362693, 0.155077,
		35.672005, 34.357796, 46.772110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398884, 33.547989, 46.927132>,  <35.028767, 34.103912, 46.663555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398884, 33.547989, 46.927132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642601, 33.856567, 47.000477>,  <35.788834, 34.041714, 47.044483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642601, 33.856567, 47.000477>,  <35.398884, 33.547989, 46.927132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642601, 33.856567, 47.000477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304266, -0.441006, 0.844355,
		0.732244, -0.458669, -0.503429,
		0.609295, 0.771451, 0.183367,
		35.825390, 34.088001, 47.055489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954937, 33.256115, 47.123215>,  <35.398884, 33.547989, 46.927132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954937, 33.256115, 47.123215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974667, 33.620487, 47.287056>,  <35.986504, 33.839111, 47.385361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.974667, 33.620487, 47.287056>,  <35.954937, 33.256115, 47.123215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974667, 33.620487, 47.287056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265602, -0.407299, 0.873821,
		0.962820, 0.065690, -0.262035,
		0.049325, 0.910930, 0.409603,
		35.989464, 33.893764, 47.409935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575550, 33.210094, 47.622368>,  <35.954937, 33.256115, 47.123215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575550, 33.210094, 47.622368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348045, 33.521309, 47.729069>,  <36.211540, 33.708038, 47.793091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348045, 33.521309, 47.729069>,  <36.575550, 33.210094, 47.622368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348045, 33.521309, 47.729069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293551, -0.110941, 0.949484,
		0.768331, 0.618340, -0.165295,
		-0.568766, 0.778040, 0.266754,
		36.177414, 33.754723, 47.809093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918682, 33.567268, 48.111813>,  <36.575550, 33.210094, 47.622368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918682, 33.567268, 48.111813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539413, 33.671280, 48.184872>,  <36.311852, 33.733685, 48.228706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539413, 33.671280, 48.184872>,  <36.918682, 33.567268, 48.111813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539413, 33.671280, 48.184872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179956, -0.034321, 0.983076,
		0.261894, 0.964991, -0.014251,
		-0.948171, 0.260027, 0.182644,
		36.254963, 33.749287, 48.239666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909065, 34.106037, 48.640072>,  <36.918682, 33.567268, 48.111813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909065, 34.106037, 48.640072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538700, 33.955349, 48.651176>,  <36.316483, 33.864937, 48.657841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538700, 33.955349, 48.651176>,  <36.909065, 34.106037, 48.640072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538700, 33.955349, 48.651176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094531, -0.159921, 0.982593,
		-0.365727, 0.912417, 0.183684,
		-0.925909, -0.376724, 0.027764,
		36.260929, 33.842331, 48.659504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520115, 34.375179, 49.258072>,  <36.909065, 34.106037, 48.640072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520115, 34.375179, 49.258072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243149, 34.101498, 49.166481>,  <36.076969, 33.937290, 49.111526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243149, 34.101498, 49.166481>,  <36.520115, 34.375179, 49.258072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243149, 34.101498, 49.166481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056356, -0.367686, 0.928241,
		-0.719298, 0.629821, 0.293149,
		-0.692412, -0.684202, -0.228982,
		36.035423, 33.896236, 49.097786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094410, 34.249714, 49.815300>,  <36.520115, 34.375179, 49.258072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094410, 34.249714, 49.815300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109516, 33.911171, 49.602791>,  <36.118580, 33.708046, 49.475285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109516, 33.911171, 49.602791>,  <36.094410, 34.249714, 49.815300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109516, 33.911171, 49.602791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156404, -0.520097, 0.839664,
		-0.986971, -0.114804, 0.112732,
		0.037765, -0.846356, -0.531277,
		36.120846, 33.657265, 49.443409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461975, 33.836422, 49.783192>,  <36.094410, 34.249714, 49.815300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461975, 33.836422, 49.783192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814575, 33.654465, 49.833820>,  <36.026134, 33.545292, 49.864197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814575, 33.654465, 49.833820>,  <35.461975, 33.836422, 49.783192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814575, 33.654465, 49.833820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133280, 0.017454, 0.990925,
		-0.452976, -0.890374, -0.045243,
		0.881504, -0.454895, 0.126576,
		36.079025, 33.517998, 49.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364811, 33.191071, 50.014313>,  <35.461975, 33.836422, 49.783192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364811, 33.191071, 50.014313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712177, 33.349182, 50.134056>,  <35.920597, 33.444050, 50.205902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712177, 33.349182, 50.134056>,  <35.364811, 33.191071, 50.014313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712177, 33.349182, 50.134056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249211, -0.173992, 0.952691,
		0.428665, -0.901932, -0.052589,
		0.868412, 0.395280, 0.299356,
		35.972702, 33.467766, 50.223862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551918, 33.211842, 50.042030>,  <35.364811, 33.191071, 50.014313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551918, 33.211842, 50.042030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176876, 33.089554, 49.975773>,  <33.951851, 33.016182, 49.936016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176876, 33.089554, 49.975773>,  <34.551918, 33.211842, 50.042030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176876, 33.089554, 49.975773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069385, 0.631313, -0.772418,
		0.340720, -0.712726, -0.613132,
		-0.937601, -0.305721, -0.165648,
		33.895596, 32.997837, 49.926079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469952, 33.032448, 49.267014>,  <34.551918, 33.211842, 50.042030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469952, 33.032448, 49.267014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124104, 33.143616, 49.434433>,  <33.916595, 33.210316, 49.534885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124104, 33.143616, 49.434433>,  <34.469952, 33.032448, 49.267014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124104, 33.143616, 49.434433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251818, 0.481165, -0.839683,
		-0.434755, -0.831410, -0.346043,
		-0.864625, 0.277917, 0.418553,
		33.864716, 33.226990, 49.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874916, 32.940651, 48.747303>,  <34.469952, 33.032448, 49.267014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874916, 32.940651, 48.747303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746372, 33.197250, 49.025932>,  <33.669247, 33.351208, 49.193108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746372, 33.197250, 49.025932>,  <33.874916, 32.940651, 48.747303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746372, 33.197250, 49.025932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322104, 0.617678, -0.717442,
		-0.890491, -0.454927, 0.008130,
		-0.321362, 0.641495, 0.696571,
		33.649963, 33.389698, 49.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138458, 33.059727, 48.645386>,  <33.874916, 32.940651, 48.747303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138458, 33.059727, 48.645386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188866, 33.390339, 48.864826>,  <33.219109, 33.588707, 48.996490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188866, 33.390339, 48.864826>,  <33.138458, 33.059727, 48.645386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188866, 33.390339, 48.864826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119269, 0.561620, -0.818754,
		-0.984832, 0.037747, 0.169355,
		0.126019, 0.826534, 0.548599,
		33.226673, 33.638298, 49.029408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645222, 33.482979, 48.513733>,  <33.138458, 33.059727, 48.645386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645222, 33.482979, 48.513733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917782, 33.728291, 48.673523>,  <33.081318, 33.875477, 48.769398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917782, 33.728291, 48.673523>,  <32.645222, 33.482979, 48.513733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917782, 33.728291, 48.673523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207927, 0.685511, -0.697740,
		-0.701755, 0.392379, 0.594625,
		0.681400, 0.613281, 0.399475,
		33.122200, 33.912273, 48.793365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316269, 34.196480, 48.390820>,  <32.645222, 33.482979, 48.513733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316269, 34.196480, 48.390820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714924, 34.215611, 48.417431>,  <32.954117, 34.227089, 48.433399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714924, 34.215611, 48.417431>,  <32.316269, 34.196480, 48.390820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714924, 34.215611, 48.417431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018332, 0.661210, -0.749977,
		-0.079860, 0.748674, 0.658110,
		0.996637, 0.047828, 0.066529,
		33.013916, 34.229958, 48.437389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403091, 34.902306, 48.194435>,  <32.316269, 34.196480, 48.390820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403091, 34.902306, 48.194435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785023, 34.787170, 48.223942>,  <33.014183, 34.718090, 48.241646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785023, 34.787170, 48.223942>,  <32.403091, 34.902306, 48.194435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785023, 34.787170, 48.223942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258747, 0.683366, -0.682686,
		0.146095, 0.670938, 0.726979,
		0.954833, -0.287841, 0.073767,
		33.071472, 34.700817, 48.246071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941120, 35.498146, 48.271626>,  <32.403091, 34.902306, 48.194435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941120, 35.498146, 48.271626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129265, 35.191479, 48.096825>,  <33.242153, 35.007477, 47.991943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129265, 35.191479, 48.096825>,  <32.941120, 35.498146, 48.271626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129265, 35.191479, 48.096825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185997, 0.570211, -0.800166,
		0.862650, 0.295086, 0.410804,
		0.470363, -0.766671, -0.437007,
		33.270374, 34.961479, 47.965721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467720, 35.819370, 48.064575>,  <32.941120, 35.498146, 48.271626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467720, 35.819370, 48.064575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449696, 35.476208, 47.859848>,  <33.438881, 35.270309, 47.737011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449696, 35.476208, 47.859848>,  <33.467720, 35.819370, 48.064575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449696, 35.476208, 47.859848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239520, 0.488117, -0.839269,
		0.969845, -0.160411, 0.183490,
		-0.045064, -0.857911, -0.511819,
		33.436176, 35.218834, 47.706303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012867, 35.875828, 47.608566>,  <33.467720, 35.819370, 48.064575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012867, 35.875828, 47.608566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747910, 35.614704, 47.461559>,  <33.588936, 35.458031, 47.373356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747910, 35.614704, 47.461559>,  <34.012867, 35.875828, 47.608566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747910, 35.614704, 47.461559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100171, 0.408995, -0.907022,
		0.742430, -0.637620, -0.205522,
		-0.662392, -0.652813, -0.367521,
		33.549191, 35.418861, 47.351303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200024, 35.743412, 46.897377>,  <34.012867, 35.875828, 47.608566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200024, 35.743412, 46.897377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826870, 35.600224, 46.913277>,  <33.602978, 35.514313, 46.922817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826870, 35.600224, 46.913277>,  <34.200024, 35.743412, 46.897377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826870, 35.600224, 46.913277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151512, 0.289908, -0.944985,
		0.326748, -0.887589, -0.324688,
		-0.932888, -0.357966, 0.039754,
		33.547005, 35.492832, 46.925201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145187, 35.347755, 46.297100>,  <34.200024, 35.743412, 46.897377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145187, 35.347755, 46.297100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781620, 35.458233, 46.422054>,  <33.563480, 35.524521, 46.497028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781620, 35.458233, 46.422054>,  <34.145187, 35.347755, 46.297100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781620, 35.458233, 46.422054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200513, 0.367369, -0.908204,
		-0.365601, -0.888121, -0.278528,
		-0.908917, 0.276192, 0.312390,
		33.508945, 35.541092, 46.515770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598312, 35.001980, 45.816174>,  <34.145187, 35.347755, 46.297100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598312, 35.001980, 45.816174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441444, 35.331924, 45.979050>,  <33.347324, 35.529892, 46.076775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441444, 35.331924, 45.979050>,  <33.598312, 35.001980, 45.816174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441444, 35.331924, 45.979050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224065, 0.343664, -0.911970,
		-0.892187, -0.448884, 0.050048,
		-0.392169, 0.824862, 0.407192,
		33.323795, 35.579384, 46.101208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053322, 35.164391, 45.508503>,  <33.598312, 35.001980, 45.816174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053322, 35.164391, 45.508503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141418, 35.522572, 45.663246>,  <33.194275, 35.737480, 45.756092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141418, 35.522572, 45.663246>,  <33.053322, 35.164391, 45.508503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141418, 35.522572, 45.663246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095814, 0.414540, -0.904973,
		-0.970729, 0.162242, 0.177094,
		0.220237, 0.895452, 0.386861,
		33.207489, 35.791206, 45.779305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180214, 35.060551, 45.587597>,  <33.053322, 35.164391, 45.508503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180214, 35.060551, 45.587597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942574, 34.798649, 45.400688>,  <31.799990, 34.641510, 45.288544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942574, 34.798649, 45.400688>,  <32.180214, 35.060551, 45.587597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942574, 34.798649, 45.400688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148727, -0.481477, 0.863748,
		-0.790521, 0.582650, 0.188667,
		-0.594102, -0.654751, -0.467273,
		31.764343, 34.602222, 45.260506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470682, 35.029427, 45.844337>,  <32.180214, 35.060551, 45.587597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470682, 35.029427, 45.844337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529196, 34.671154, 45.676361>,  <31.564304, 34.456188, 45.575577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.529196, 34.671154, 45.676361>,  <31.470682, 35.029427, 45.844337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529196, 34.671154, 45.676361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257774, -0.444355, 0.857964,
		-0.955067, -0.017258, -0.295887,
		0.146286, -0.895684, -0.419940,
		31.573082, 34.402451, 45.550381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919636, 34.625885, 46.045677>,  <31.470682, 35.029427, 45.844337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919636, 34.625885, 46.045677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187016, 34.351753, 45.930088>,  <31.347443, 34.187275, 45.860733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.187016, 34.351753, 45.930088>,  <30.919636, 34.625885, 46.045677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187016, 34.351753, 45.930088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114654, -0.478840, 0.870384,
		-0.734869, -0.548673, -0.398654,
		0.668447, -0.685325, -0.288977,
		31.387550, 34.146156, 45.843395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624176, 33.921230, 46.210281>,  <30.919636, 34.625885, 46.045677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624176, 33.921230, 46.210281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020176, 33.882671, 46.169075>,  <31.257776, 33.859535, 46.144352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020176, 33.882671, 46.169075>,  <30.624176, 33.921230, 46.210281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020176, 33.882671, 46.169075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047739, -0.458191, 0.887571,
		-0.132762, -0.883611, -0.449006,
		0.989998, -0.096401, -0.103013,
		31.317175, 33.853752, 46.138172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628716, 33.273415, 46.360313>,  <30.624176, 33.921230, 46.210281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628716, 33.273415, 46.360313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021658, 33.345829, 46.379078>,  <31.257423, 33.389278, 46.390339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021658, 33.345829, 46.379078>,  <30.628716, 33.273415, 46.360313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021658, 33.345829, 46.379078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069154, -0.584705, 0.808293,
		0.173766, -0.790787, -0.586908,
		0.982356, 0.181041, 0.046916,
		31.316364, 33.400143, 46.393154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060339, 32.601849, 46.309971>,  <30.628716, 33.273415, 46.360313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060339, 32.601849, 46.309971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252594, 32.900578, 46.493816>,  <31.367947, 33.079815, 46.604122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252594, 32.900578, 46.493816>,  <31.060339, 32.601849, 46.309971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252594, 32.900578, 46.493816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049233, -0.500314, 0.864443,
		0.875536, -0.438112, -0.203701,
		0.480638, 0.746822, 0.459612,
		31.396786, 33.124622, 46.631699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543528, 32.244610, 46.715061>,  <31.060339, 32.601849, 46.309971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543528, 32.244610, 46.715061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484503, 32.609344, 46.868313>,  <31.449087, 32.828186, 46.960262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484503, 32.609344, 46.868313>,  <31.543528, 32.244610, 46.715061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484503, 32.609344, 46.868313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072166, -0.396262, 0.915297,
		0.986417, 0.107415, 0.124276,
		-0.147562, 0.911833, 0.383127,
		31.440233, 32.882893, 46.983250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044579, 31.734013, 46.704266>,  <31.543528, 32.244610, 46.715061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044579, 31.734013, 46.704266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760746, 31.477371, 46.587757>,  <31.590446, 31.323387, 46.517853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760746, 31.477371, 46.587757>,  <32.044579, 31.734013, 46.704266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760746, 31.477371, 46.587757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248342, 0.614571, -0.748751,
		0.659413, -0.458961, -0.595424,
		-0.709578, -0.641605, -0.291276,
		31.547873, 31.284891, 46.500374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119690, 31.706697, 45.976143>,  <32.044579, 31.734013, 46.704266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119690, 31.706697, 45.976143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756090, 31.549412, 46.031422>,  <31.537930, 31.455040, 46.064587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756090, 31.549412, 46.031422>,  <32.119690, 31.706697, 45.976143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756090, 31.549412, 46.031422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243523, 0.231984, -0.941743,
		0.338249, -0.889699, -0.306631,
		-0.909002, -0.393216, 0.138194,
		31.483389, 31.431448, 46.072880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007839, 31.224623, 45.480289>,  <32.119690, 31.706697, 45.976143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007839, 31.224623, 45.480289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632877, 31.314373, 45.586815>,  <31.407900, 31.368223, 45.650730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632877, 31.314373, 45.586815>,  <32.007839, 31.224623, 45.480289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632877, 31.314373, 45.586815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191048, 0.308030, -0.931997,
		-0.291148, -0.924540, -0.245883,
		-0.937408, 0.224373, 0.266314,
		31.351654, 31.381685, 45.666710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546322, 30.966215, 45.047497>,  <32.007839, 31.224623, 45.480289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546322, 30.966215, 45.047497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278843, 31.210455, 45.217209>,  <31.118357, 31.356998, 45.319035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278843, 31.210455, 45.217209>,  <31.546322, 30.966215, 45.047497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278843, 31.210455, 45.217209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405119, 0.179281, -0.896514,
		-0.623478, -0.771378, 0.127482,
		-0.668696, 0.610601, 0.424277,
		31.078234, 31.393635, 45.344494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803782, 30.794390, 44.784229>,  <31.546322, 30.966215, 45.047497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803782, 30.794390, 44.784229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813042, 31.171631, 44.916908>,  <30.818598, 31.397976, 44.996513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813042, 31.171631, 44.916908>,  <30.803782, 30.794390, 44.784229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813042, 31.171631, 44.916908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433524, 0.308436, -0.846714,
		-0.900845, -0.124195, 0.415998,
		0.023151, 0.943103, 0.331694,
		30.819986, 31.454561, 45.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170538, 31.160736, 44.547466>,  <30.803782, 30.794390, 44.784229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170538, 31.160736, 44.547466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.453135, 31.434608, 44.619110>,  <30.622692, 31.598932, 44.662094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.453135, 31.434608, 44.619110>,  <30.170538, 31.160736, 44.547466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453135, 31.434608, 44.619110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209657, 0.444196, -0.871053,
		-0.675953, 0.577841, 0.457369,
		0.706492, 0.684682, 0.179108,
		30.665083, 31.640013, 44.672844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910130, 31.738169, 44.266525>,  <30.170538, 31.160736, 44.547466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910130, 31.738169, 44.266525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.297829, 31.831022, 44.299206>,  <30.530447, 31.886734, 44.318813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.297829, 31.831022, 44.299206>,  <29.910130, 31.738169, 44.266525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297829, 31.831022, 44.299206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060168, 0.545459, -0.835975,
		-0.238623, 0.805350, 0.542652,
		0.969247, 0.232133, 0.081703,
		30.588602, 31.900661, 44.323715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.956696, 30.168921, 48.517776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976032, 30.568415, 48.523319>,  <35.987633, 30.808111, 48.526646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.976032, 30.568415, 48.523319>,  <35.956696, 30.168921, 48.517776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976032, 30.568415, 48.523319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142698, 0.006821, -0.989743,
		-0.988585, 0.049823, -0.142188,
		0.048342, 0.998735, 0.013852,
		35.990536, 30.868034, 48.527473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608387, 30.286200, 47.909691>,  <35.956696, 30.168921, 48.517776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608387, 30.286200, 47.909691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.831699, 30.602987, 48.008568>,  <35.965687, 30.793060, 48.067894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.831699, 30.602987, 48.008568>,  <35.608387, 30.286200, 47.909691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831699, 30.602987, 48.008568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274593, 0.104769, -0.955836,
		-0.782891, 0.601504, -0.158979,
		0.558283, 0.791970, 0.247191,
		35.999184, 30.840578, 48.082726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289013, 30.808899, 47.515800>,  <35.608387, 30.286200, 47.909691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289013, 30.808899, 47.515800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654633, 30.944532, 47.604820>,  <35.874004, 31.025913, 47.658234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654633, 30.944532, 47.604820>,  <35.289013, 30.808899, 47.515800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654633, 30.944532, 47.604820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198219, 0.105257, -0.974490,
		-0.353859, 0.934849, 0.028997,
		0.914053, 0.339084, 0.222551,
		35.928848, 31.046257, 47.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438072, 31.311453, 47.066708>,  <35.289013, 30.808899, 47.515800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438072, 31.311453, 47.066708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793961, 31.183887, 47.197361>,  <36.007492, 31.107347, 47.275753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793961, 31.183887, 47.197361>,  <35.438072, 31.311453, 47.066708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793961, 31.183887, 47.197361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358095, 0.043799, -0.932657,
		0.283131, 0.946771, 0.153170,
		0.889722, -0.318913, 0.326633,
		36.060879, 31.088213, 47.295353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872650, 31.616024, 46.648834>,  <35.438072, 31.311453, 47.066708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872650, 31.616024, 46.648834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.131031, 31.356274, 46.809364>,  <36.286060, 31.200424, 46.905682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.131031, 31.356274, 46.809364>,  <35.872650, 31.616024, 46.648834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131031, 31.356274, 46.809364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494504, -0.044560, -0.868033,
		0.581561, 0.759163, 0.292334,
		0.645951, -0.649374, 0.401323,
		36.324818, 31.161461, 46.929760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566746, 31.842857, 46.551823>,  <35.872650, 31.616024, 46.648834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566746, 31.842857, 46.551823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.601864, 31.445118, 46.575691>,  <36.622936, 31.206474, 46.590012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.601864, 31.445118, 46.575691>,  <36.566746, 31.842857, 46.551823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601864, 31.445118, 46.575691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467089, -0.011816, -0.884132,
		0.879841, 0.105494, 0.463412,
		0.087794, -0.994350, 0.059671,
		36.628201, 31.146812, 46.593594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170074, 31.761255, 46.174618>,  <36.566746, 31.842857, 46.551823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170074, 31.761255, 46.174618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983910, 31.407845, 46.195652>,  <36.872211, 31.195797, 46.208275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983910, 31.407845, 46.195652>,  <37.170074, 31.761255, 46.174618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983910, 31.407845, 46.195652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398290, -0.262127, -0.879008,
		0.790414, -0.388157, 0.473899,
		-0.465415, -0.883529, 0.052590,
		36.844284, 31.142786, 46.211430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598167, 31.341919, 45.770355>,  <37.170074, 31.761255, 46.174618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598167, 31.341919, 45.770355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293499, 31.083323, 45.787830>,  <37.110699, 30.928165, 45.798317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.293499, 31.083323, 45.787830>,  <37.598167, 31.341919, 45.770355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293499, 31.083323, 45.787830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245564, -0.350391, -0.903839,
		0.599630, -0.677699, 0.425637,
		-0.761671, -0.646490, 0.043687,
		37.064999, 30.889376, 45.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904343, 30.600286, 45.595554>,  <37.598167, 31.341919, 45.770355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904343, 30.600286, 45.595554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.512356, 30.606138, 45.516102>,  <37.277164, 30.609650, 45.468430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.512356, 30.606138, 45.516102>,  <37.904343, 30.600286, 45.595554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512356, 30.606138, 45.516102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163307, -0.511850, -0.843410,
		-0.114007, -0.858950, 0.499206,
		-0.979966, 0.014631, -0.198626,
		37.218365, 30.610527, 45.456512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762943, 29.945414, 45.294415>,  <37.904343, 30.600286, 45.595554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762943, 29.945414, 45.294415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.467144, 30.180586, 45.163277>,  <37.289665, 30.321690, 45.084595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.467144, 30.180586, 45.163277>,  <37.762943, 29.945414, 45.294415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467144, 30.180586, 45.163277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333634, -0.102894, -0.937070,
		-0.584664, -0.802342, -0.120063,
		-0.739497, 0.587929, -0.327847,
		37.245296, 30.356964, 45.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459980, 29.633137, 44.671154>,  <37.762943, 29.945414, 45.294415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459980, 29.633137, 44.671154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.359741, 30.020370, 44.669651>,  <37.299599, 30.252710, 44.668747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.359741, 30.020370, 44.669651>,  <37.459980, 29.633137, 44.671154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359741, 30.020370, 44.669651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198208, 0.047503, -0.979008,
		-0.947584, -0.246080, -0.203786,
		-0.250595, 0.968085, -0.003762,
		37.284561, 30.310797, 44.668522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978214, 29.746313, 44.116329>,  <37.459980, 29.633137, 44.671154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978214, 29.746313, 44.116329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.108727, 30.117666, 44.187485>,  <37.187035, 30.340479, 44.230179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.108727, 30.117666, 44.187485>,  <36.978214, 29.746313, 44.116329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108727, 30.117666, 44.187485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005816, 0.186213, -0.982492,
		-0.945254, 0.321605, 0.055359,
		0.326283, 0.928383, 0.177889,
		37.206612, 30.396181, 44.240852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202984, 29.774853, 43.892891>,  <36.978214, 29.746313, 44.116329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202984, 29.774853, 43.892891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.839420, 29.786715, 43.726513>,  <35.621281, 29.793831, 43.626686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.839420, 29.786715, 43.726513>,  <36.202984, 29.774853, 43.892891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839420, 29.786715, 43.726513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416402, -0.117812, 0.901515,
		-0.022271, 0.992593, 0.119428,
		-0.908908, 0.029653, -0.415942,
		35.566750, 29.795610, 43.601730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867397, 30.297508, 44.286221>,  <36.202984, 29.774853, 43.892891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867397, 30.297508, 44.286221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611885, 30.035395, 44.124947>,  <35.458576, 29.878126, 44.028183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.611885, 30.035395, 44.124947>,  <35.867397, 30.297508, 44.286221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611885, 30.035395, 44.124947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538704, 0.006788, 0.842468,
		-0.549320, 0.755351, -0.357341,
		-0.638785, -0.655285, -0.403182,
		35.420250, 29.838810, 44.003994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258671, 30.475060, 44.500038>,  <35.867397, 30.297508, 44.286221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258671, 30.475060, 44.500038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.175262, 30.102463, 44.380810>,  <35.125217, 29.878904, 44.309273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.175262, 30.102463, 44.380810>,  <35.258671, 30.475060, 44.500038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175262, 30.102463, 44.380810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551927, -0.139522, 0.822138,
		-0.807400, 0.335946, -0.485021,
		-0.208523, -0.931490, -0.298067,
		35.112705, 29.823015, 44.291389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517376, 30.489117, 44.591812>,  <35.258671, 30.475060, 44.500038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517376, 30.489117, 44.591812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642040, 30.109823, 44.567429>,  <34.716839, 29.882246, 44.552799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642040, 30.109823, 44.567429>,  <34.517376, 30.489117, 44.591812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642040, 30.109823, 44.567429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571005, -0.238179, 0.785636,
		-0.759486, -0.210048, -0.615679,
		0.311664, -0.948236, -0.060955,
		34.735538, 29.825352, 44.549141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949306, 30.086559, 44.658405>,  <34.517376, 30.489117, 44.591812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949306, 30.086559, 44.658405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219849, 29.807062, 44.751614>,  <34.382175, 29.639364, 44.807537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219849, 29.807062, 44.751614>,  <33.949306, 30.086559, 44.658405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219849, 29.807062, 44.751614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603816, -0.344799, 0.718693,
		-0.421838, -0.626795, -0.655120,
		0.676358, -0.698743, 0.233019,
		34.422756, 29.597439, 44.821518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550339, 29.482925, 44.881283>,  <33.949306, 30.086559, 44.658405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550339, 29.482925, 44.881283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920860, 29.440315, 45.025845>,  <34.143173, 29.414749, 45.112579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920860, 29.440315, 45.025845>,  <33.550339, 29.482925, 44.881283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920860, 29.440315, 45.025845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375387, -0.343175, 0.860997,
		0.032308, -0.933212, -0.357872,
		0.926306, -0.106523, 0.361403,
		34.198753, 29.408358, 45.134266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589947, 28.869333, 45.278828>,  <33.550339, 29.482925, 44.881283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589947, 28.869333, 45.278828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915836, 29.061718, 45.408386>,  <34.111370, 29.177149, 45.486122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915836, 29.061718, 45.408386>,  <33.589947, 28.869333, 45.278828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915836, 29.061718, 45.408386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174492, -0.329327, 0.927952,
		0.552975, -0.812539, -0.184386,
		0.814721, 0.480961, 0.323892,
		34.160252, 29.206007, 45.505554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967922, 28.415903, 45.758945>,  <33.589947, 28.869333, 45.278828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967922, 28.415903, 45.758945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115654, 28.773043, 45.862026>,  <34.204292, 28.987328, 45.923874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115654, 28.773043, 45.862026>,  <33.967922, 28.415903, 45.758945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115654, 28.773043, 45.862026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089432, -0.241875, 0.966177,
		0.924983, -0.379889, -0.009483,
		0.369334, 0.892850, 0.257704,
		34.226456, 29.040897, 45.939339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400215, 28.257048, 46.430099>,  <33.967922, 28.415903, 45.758945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400215, 28.257048, 46.430099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.295773, 28.642748, 46.412006>,  <34.233109, 28.874168, 46.401150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.295773, 28.642748, 46.412006>,  <34.400215, 28.257048, 46.430099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295773, 28.642748, 46.412006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225722, -0.015430, 0.974069,
		0.938549, 0.264544, 0.221682,
		-0.261105, 0.964250, -0.045232,
		34.217442, 28.932022, 46.398438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646301, 28.496626, 47.051987>,  <34.400215, 28.257048, 46.430099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646301, 28.496626, 47.051987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389614, 28.770370, 46.913509>,  <34.235603, 28.934618, 46.830421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389614, 28.770370, 46.913509>,  <34.646301, 28.496626, 47.051987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389614, 28.770370, 46.913509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405082, 0.080850, 0.910699,
		0.651238, 0.724645, 0.225340,
		-0.641715, 0.684363, -0.346193,
		34.197098, 28.975679, 46.809650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673187, 28.969856, 47.597588>,  <34.646301, 28.496626, 47.051987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673187, 28.969856, 47.597588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339272, 29.010305, 47.381107>,  <34.138920, 29.034575, 47.251221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339272, 29.010305, 47.381107>,  <34.673187, 28.969856, 47.597588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339272, 29.010305, 47.381107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534663, 0.085638, 0.840715,
		0.131363, 0.991181, -0.017424,
		-0.834793, 0.101123, -0.541198,
		34.088833, 29.040642, 47.218746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363262, 29.576214, 47.853077>,  <34.673187, 28.969856, 47.597588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363262, 29.576214, 47.853077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.075558, 29.343027, 47.701912>,  <33.902935, 29.203115, 47.611214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.075558, 29.343027, 47.701912>,  <34.363262, 29.576214, 47.853077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075558, 29.343027, 47.701912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549566, 0.144639, 0.822835,
		-0.425024, 0.799518, -0.424411,
		-0.719258, -0.582966, -0.377913,
		33.859779, 29.168137, 47.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764538, 29.978333, 47.976929>,  <34.363262, 29.576214, 47.853077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764538, 29.978333, 47.976929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689091, 29.590782, 47.912796>,  <33.643822, 29.358252, 47.874317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689091, 29.590782, 47.912796>,  <33.764538, 29.978333, 47.976929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689091, 29.590782, 47.912796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581708, -0.021310, 0.813118,
		-0.791227, 0.246629, -0.559584,
		-0.188613, -0.968876, -0.160327,
		33.632507, 29.300119, 47.864697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933735, 29.832533, 48.026527>,  <33.764538, 29.978333, 47.976929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933735, 29.832533, 48.026527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117527, 29.482410, 48.086826>,  <33.227802, 29.272337, 48.123005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117527, 29.482410, 48.086826>,  <32.933735, 29.832533, 48.026527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117527, 29.482410, 48.086826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396667, -0.050370, 0.916580,
		-0.794693, -0.480942, -0.370348,
		0.459476, -0.875305, 0.150744,
		33.255371, 29.219820, 48.132050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631050, 29.161934, 47.932892>,  <32.933735, 29.832533, 48.026527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631050, 29.161934, 47.932892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337639, 29.199669, 48.202126>,  <32.161594, 29.222309, 48.363667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337639, 29.199669, 48.202126>,  <32.631050, 29.161934, 47.932892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337639, 29.199669, 48.202126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418670, 0.717407, -0.556815,
		-0.535403, -0.690238, -0.486740,
		-0.733525, 0.094337, 0.673083,
		32.117580, 29.227970, 48.404049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972395, 29.028923, 47.679478>,  <32.631050, 29.161934, 47.932892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972395, 29.028923, 47.679478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945354, 29.294096, 47.977726>,  <31.929131, 29.453199, 48.156673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945354, 29.294096, 47.977726>,  <31.972395, 29.028923, 47.679478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945354, 29.294096, 47.977726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300852, 0.699001, -0.648757,
		-0.951272, -0.268179, 0.152191,
		-0.067602, 0.662932, 0.745622,
		31.925074, 29.492975, 48.201412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382393, 29.314774, 47.565624>,  <31.972395, 29.028923, 47.679478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382393, 29.314774, 47.565624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.618639, 29.589127, 47.735676>,  <31.760387, 29.753738, 47.837708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.618639, 29.589127, 47.735676>,  <31.382393, 29.314774, 47.565624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618639, 29.589127, 47.735676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310391, 0.679399, -0.664887,
		-0.744868, 0.260736, 0.614156,
		0.590617, 0.685882, 0.425133,
		31.795824, 29.794891, 47.863216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944687, 29.916616, 47.730362>,  <31.382393, 29.314774, 47.565624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944687, 29.916616, 47.730362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317369, 30.060629, 47.711170>,  <31.540979, 30.147036, 47.699654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317369, 30.060629, 47.711170>,  <30.944687, 29.916616, 47.730362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317369, 30.060629, 47.711170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314644, 0.734054, -0.601800,
		-0.181447, 0.575797, 0.797204,
		0.931706, 0.360031, -0.047979,
		31.596882, 30.168638, 47.696777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814463, 30.494646, 47.703300>,  <30.944687, 29.916616, 47.730362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814463, 30.494646, 47.703300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176968, 30.470564, 47.535938>,  <31.394470, 30.456114, 47.435520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.176968, 30.470564, 47.535938>,  <30.814463, 30.494646, 47.703300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176968, 30.470564, 47.535938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260680, 0.699595, -0.665292,
		0.332770, 0.711999, 0.618322,
		0.906262, -0.060205, -0.418408,
		31.448847, 30.452503, 47.410416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993689, 31.161190, 47.592430>,  <30.814463, 30.494646, 47.703300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993689, 31.161190, 47.592430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.237881, 30.950411, 47.355907>,  <31.384396, 30.823944, 47.213993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.237881, 30.950411, 47.355907>,  <30.993689, 31.161190, 47.592430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237881, 30.950411, 47.355907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103110, 0.687339, -0.718981,
		0.785292, 0.499892, 0.365272,
		0.610479, -0.526947, -0.591306,
		31.421024, 30.792326, 47.178516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581724, 31.657526, 47.316025>,  <30.993689, 31.161190, 47.592430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581724, 31.657526, 47.316025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525818, 31.342093, 47.076492>,  <31.492273, 31.152832, 46.932774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525818, 31.342093, 47.076492>,  <31.581724, 31.657526, 47.316025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525818, 31.342093, 47.076492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315737, 0.608693, -0.727876,
		0.938497, 0.087342, -0.334059,
		-0.139765, -0.788584, -0.598833,
		31.483889, 31.105516, 46.896843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073853, 32.299812, 47.263210>,  <31.581724, 31.657526, 47.316025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073853, 32.299812, 47.263210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843449, 32.605923, 47.378139>,  <31.705206, 32.789589, 47.447098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843449, 32.605923, 47.378139>,  <32.073853, 32.299812, 47.263210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843449, 32.605923, 47.378139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133243, -0.434690, 0.890669,
		0.806508, 0.474753, 0.352355,
		-0.576013, 0.765281, 0.287323,
		31.670645, 32.835506, 47.464336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234001, 32.514465, 47.968651>,  <32.073853, 32.299812, 47.263210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234001, 32.514465, 47.968651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860720, 32.652618, 47.928974>,  <31.636749, 32.735508, 47.905170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860720, 32.652618, 47.928974>,  <32.234001, 32.514465, 47.968651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860720, 32.652618, 47.928974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224693, -0.345448, 0.911142,
		0.280427, 0.872570, 0.399979,
		-0.933206, 0.345381, -0.099187,
		31.580757, 32.756233, 47.899220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118004, 32.870659, 48.569820>,  <32.234001, 32.514465, 47.968651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118004, 32.870659, 48.569820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738285, 32.811924, 48.458622>,  <31.510454, 32.776684, 48.391903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738285, 32.811924, 48.458622>,  <32.118004, 32.870659, 48.569820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738285, 32.811924, 48.458622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247258, -0.197462, 0.948616,
		-0.194183, 0.969251, 0.151143,
		-0.949293, -0.146834, -0.277999,
		31.453497, 32.767876, 48.375221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806551, 33.136314, 49.059803>,  <32.118004, 32.870659, 48.569820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806551, 33.136314, 49.059803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488443, 32.941048, 48.916004>,  <31.297579, 32.823887, 48.829723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488443, 32.941048, 48.916004>,  <31.806551, 33.136314, 49.059803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488443, 32.941048, 48.916004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256510, -0.266352, 0.929117,
		-0.549318, 0.831114, 0.086602,
		-0.795269, -0.488167, -0.359501,
		31.249863, 32.794598, 48.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038774, 33.336754, 49.383320>,  <31.806551, 33.136314, 49.059803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038774, 33.336754, 49.383320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.027287, 32.959190, 49.251736>,  <31.020393, 32.732655, 49.172787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.027287, 32.959190, 49.251736>,  <31.038774, 33.336754, 49.383320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027287, 32.959190, 49.251736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349916, -0.298779, 0.887857,
		-0.936341, 0.140609, -0.321706,
		-0.028722, -0.943907, -0.328960,
		31.018669, 32.676018, 49.153049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494869, 33.002319, 49.791107>,  <31.038774, 33.336754, 49.383320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494869, 33.002319, 49.791107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589394, 32.660984, 49.605217>,  <30.646109, 32.456184, 49.493683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.589394, 32.660984, 49.605217>,  <30.494869, 33.002319, 49.791107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589394, 32.660984, 49.605217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196366, -0.510343, 0.837252,
		-0.951629, -0.106596, -0.288167,
		0.236311, -0.853340, -0.464725,
		30.660288, 32.404984, 49.465801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839310, 32.583584, 49.664845>,  <30.494869, 33.002319, 49.791107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839310, 32.583584, 49.664845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.158262, 32.343346, 49.688381>,  <30.349634, 32.199203, 49.702503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.158262, 32.343346, 49.688381>,  <29.839310, 32.583584, 49.664845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158262, 32.343346, 49.688381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416411, -0.477013, 0.773990,
		-0.436784, -0.641672, -0.630458,
		0.797384, -0.600596, 0.058848,
		30.397476, 32.163166, 49.706036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602276, 31.930563, 49.675335>,  <29.839310, 32.583584, 49.664845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602276, 31.930563, 49.675335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.966068, 31.905703, 49.839764>,  <30.184343, 31.890785, 49.938419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.966068, 31.905703, 49.839764>,  <29.602276, 31.930563, 49.675335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966068, 31.905703, 49.839764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392434, -0.454772, 0.799486,
		0.137256, -0.888437, -0.437997,
		0.909481, -0.062151, 0.411073,
		30.238913, 31.887056, 49.963085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628420, 31.302479, 49.895836>,  <29.602276, 31.930563, 49.675335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628420, 31.302479, 49.895836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.923750, 31.490204, 50.089588>,  <30.100948, 31.602839, 50.205837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.923750, 31.490204, 50.089588>,  <29.628420, 31.302479, 49.895836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923750, 31.490204, 50.089588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148641, -0.587299, 0.795604,
		0.657862, -0.659413, -0.363858,
		0.738325, 0.469313, 0.484377,
		30.145247, 31.630999, 50.234901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.709194, 36.175133, 35.029182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029507, 36.309875, 35.227287>,  <34.221695, 36.390720, 35.346149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029507, 36.309875, 35.227287>,  <33.709194, 36.175133, 35.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029507, 36.309875, 35.227287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428840, -0.254811, 0.866699,
		0.418153, -0.906420, -0.059588,
		0.800777, 0.336859, 0.495259,
		34.269741, 36.410934, 35.375866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108299, 35.615116, 35.428646>,  <33.709194, 36.175133, 35.029182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108299, 35.615116, 35.428646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084549, 35.980286, 35.590164>,  <34.070301, 36.199387, 35.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084549, 35.980286, 35.590164>,  <34.108299, 35.615116, 35.428646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084549, 35.980286, 35.590164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373609, -0.395434, 0.839076,
		0.925684, -0.101045, 0.364553,
		-0.059372, 0.912919, 0.403799,
		34.066738, 36.254162, 35.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291489, 35.442928, 36.064137>,  <34.108299, 35.615116, 35.428646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291489, 35.442928, 36.064137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120365, 35.800201, 36.119564>,  <34.017693, 36.014565, 36.152821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120365, 35.800201, 36.119564>,  <34.291489, 35.442928, 36.064137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120365, 35.800201, 36.119564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433279, -0.337197, 0.835803,
		0.793252, 0.297523, 0.531254,
		-0.427807, 0.893184, 0.138572,
		33.992023, 36.068157, 36.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406429, 35.577168, 36.857250>,  <34.291489, 35.442928, 36.064137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406429, 35.577168, 36.857250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122169, 35.826164, 36.726116>,  <33.951614, 35.975563, 36.647434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122169, 35.826164, 36.726116>,  <34.406429, 35.577168, 36.857250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122169, 35.826164, 36.726116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531982, -0.170510, 0.829410,
		0.460403, 0.763824, 0.452328,
		-0.710650, 0.622494, -0.327837,
		33.908974, 36.012913, 36.627766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276524, 36.081844, 37.364109>,  <34.406429, 35.577168, 36.857250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276524, 36.081844, 37.364109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956535, 36.064766, 37.124702>,  <33.764542, 36.054520, 36.981056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956535, 36.064766, 37.124702>,  <34.276524, 36.081844, 37.364109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956535, 36.064766, 37.124702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593226, -0.093631, 0.799572,
		-0.090180, 0.994691, 0.049573,
		-0.799969, -0.042697, -0.598520,
		33.716545, 36.051956, 36.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859539, 36.576530, 37.627213>,  <34.276524, 36.081844, 37.364109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859539, 36.576530, 37.627213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616394, 36.335941, 37.419849>,  <33.470509, 36.191589, 37.295433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616394, 36.335941, 37.419849>,  <33.859539, 36.576530, 37.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616394, 36.335941, 37.419849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542577, -0.162054, 0.824226,
		-0.579755, 0.782288, -0.227837,
		-0.607860, -0.601468, -0.518403,
		33.434036, 36.155502, 37.264328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121258, 36.699825, 37.869572>,  <33.859539, 36.576530, 37.627213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121258, 36.699825, 37.869572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147430, 36.332047, 37.714481>,  <33.163136, 36.111378, 37.621429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147430, 36.332047, 37.714481>,  <33.121258, 36.699825, 37.869572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147430, 36.332047, 37.714481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537821, -0.359784, 0.762433,
		-0.840516, 0.158637, -0.518042,
		0.065433, -0.919451, -0.387722,
		33.167061, 36.056210, 37.598164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491837, 36.527569, 37.867554>,  <33.121258, 36.699825, 37.869572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491837, 36.527569, 37.867554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714577, 36.195343, 37.871082>,  <32.848221, 35.996006, 37.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714577, 36.195343, 37.871082>,  <32.491837, 36.527569, 37.867554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714577, 36.195343, 37.871082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548998, -0.360064, 0.754291,
		-0.623311, -0.424873, -0.656481,
		0.556853, -0.830564, 0.008822,
		32.881634, 35.946175, 37.873730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023762, 36.127823, 37.917717>,  <32.491837, 36.527569, 37.867554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023762, 36.127823, 37.917717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351429, 35.912006, 37.995537>,  <32.548031, 35.782516, 38.042229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351429, 35.912006, 37.995537>,  <32.023762, 36.127823, 37.917717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351429, 35.912006, 37.995537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431076, -0.355437, 0.829360,
		-0.378337, -0.763247, -0.523751,
		0.819167, -0.539554, 0.194542,
		32.597179, 35.750145, 38.053902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840532, 35.446331, 38.053844>,  <32.023762, 36.127823, 37.917717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840532, 35.446331, 38.053844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200665, 35.486328, 38.223270>,  <32.416744, 35.510326, 38.324928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200665, 35.486328, 38.223270>,  <31.840532, 35.446331, 38.053844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200665, 35.486328, 38.223270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410558, -0.127782, 0.902837,
		0.144399, -0.986749, -0.073994,
		0.900329, 0.099990, 0.423569,
		32.470764, 35.516327, 38.350342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841204, 35.002747, 38.578537>,  <31.840532, 35.446331, 38.053844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841204, 35.002747, 38.578537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155430, 35.219143, 38.698681>,  <32.343967, 35.348980, 38.770767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155430, 35.219143, 38.698681>,  <31.841204, 35.002747, 38.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155430, 35.219143, 38.698681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230253, -0.194984, 0.953396,
		0.574344, -0.818114, -0.028608,
		0.785565, 0.540990, 0.300361,
		32.391098, 35.381439, 38.788788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139011, 34.644531, 39.114624>,  <31.841204, 35.002747, 38.578537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139011, 34.644531, 39.114624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240818, 35.026520, 39.175606>,  <32.301903, 35.255714, 39.212196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240818, 35.026520, 39.175606>,  <32.139011, 34.644531, 39.114624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240818, 35.026520, 39.175606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302824, -0.071014, 0.950397,
		0.918432, -0.288061, 0.271115,
		0.254519, 0.954975, 0.152453,
		32.317173, 35.313011, 39.221340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059227, 33.997715, 38.864151>,  <32.139011, 34.644531, 39.114624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059227, 33.997715, 38.864151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776726, 33.722237, 38.798538>,  <31.607224, 33.556950, 38.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776726, 33.722237, 38.798538>,  <32.059227, 33.997715, 38.864151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776726, 33.722237, 38.798538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068616, 0.297194, -0.952348,
		0.704624, -0.661346, -0.257150,
		-0.706256, -0.688692, -0.164031,
		31.564850, 33.515629, 38.749329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214890, 33.671513, 38.291058>,  <32.059227, 33.997715, 38.864151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214890, 33.671513, 38.291058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832590, 33.558392, 38.323475>,  <31.603210, 33.490517, 38.342926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832590, 33.558392, 38.323475>,  <32.214890, 33.671513, 38.291058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832590, 33.558392, 38.323475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068656, -0.053446, -0.996208,
		0.286066, -0.957687, 0.031665,
		-0.955747, -0.282807, 0.081040,
		31.545866, 33.473549, 38.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124851, 33.034748, 37.885468>,  <32.214890, 33.671513, 38.291058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124851, 33.034748, 37.885468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749271, 33.172195, 37.892479>,  <31.523924, 33.254665, 37.896687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749271, 33.172195, 37.892479>,  <32.124851, 33.034748, 37.885468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749271, 33.172195, 37.892479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038016, -0.052991, -0.997871,
		-0.341960, -0.937612, 0.062819,
		-0.938945, 0.343620, 0.017524,
		31.467588, 33.275280, 37.897736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746578, 32.605766, 37.404152>,  <32.124851, 33.034748, 37.885468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746578, 32.605766, 37.404152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531017, 32.942421, 37.418137>,  <31.401680, 33.144413, 37.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531017, 32.942421, 37.418137>,  <31.746578, 32.605766, 37.404152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531017, 32.942421, 37.418137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097354, 0.103452, -0.989859,
		-0.836723, -0.530035, -0.137688,
		-0.538904, 0.841641, 0.034960,
		31.369347, 33.194912, 37.428623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171497, 32.571533, 36.854877>,  <31.746578, 32.605766, 37.404152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171497, 32.571533, 36.854877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195438, 32.963280, 36.932095>,  <31.209803, 33.198326, 36.978424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195438, 32.963280, 36.932095>,  <31.171497, 32.571533, 36.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195438, 32.963280, 36.932095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102709, 0.198405, -0.974724,
		-0.992909, 0.038514, 0.112464,
		0.059854, 0.979363, 0.193042,
		31.213394, 33.257088, 36.990005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596092, 32.878807, 36.510090>,  <31.171497, 32.571533, 36.854877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596092, 32.878807, 36.510090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846886, 33.186199, 36.561192>,  <30.997362, 33.370636, 36.591854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846886, 33.186199, 36.561192>,  <30.596092, 32.878807, 36.510090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846886, 33.186199, 36.561192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212280, 0.326326, -0.921112,
		-0.749551, 0.550403, 0.367736,
		0.626984, 0.768484, 0.127759,
		31.034981, 33.416744, 36.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138239, 33.457191, 36.405704>,  <30.596092, 32.878807, 36.510090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138239, 33.457191, 36.405704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515095, 33.576698, 36.344894>,  <30.741207, 33.648403, 36.308407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515095, 33.576698, 36.344894>,  <30.138239, 33.457191, 36.405704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515095, 33.576698, 36.344894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284388, 0.472247, -0.834330,
		-0.177481, 0.829288, 0.529889,
		0.942138, 0.298771, -0.152025,
		30.797737, 33.666328, 36.299286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079393, 34.103153, 36.095390>,  <30.138239, 33.457191, 36.405704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079393, 34.103153, 36.095390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458776, 33.992702, 36.033184>,  <30.686405, 33.926430, 35.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458776, 33.992702, 36.033184>,  <30.079393, 34.103153, 36.095390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458776, 33.992702, 36.033184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084655, 0.252125, -0.963985,
		0.305394, 0.927462, 0.215754,
		0.948456, -0.276130, -0.155511,
		30.743313, 33.909863, 35.986530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401447, 34.687813, 35.781700>,  <30.079393, 34.103153, 36.095390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401447, 34.687813, 35.781700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648224, 34.388195, 35.685104>,  <30.796289, 34.208424, 35.627148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648224, 34.388195, 35.685104>,  <30.401447, 34.687813, 35.781700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648224, 34.388195, 35.685104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054569, 0.265391, -0.962595,
		0.785117, 0.607041, 0.122856,
		0.616939, -0.749045, -0.241489,
		30.833305, 34.163483, 35.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928251, 35.031433, 35.276127>,  <30.401447, 34.687813, 35.781700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928251, 35.031433, 35.276127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944223, 34.635456, 35.221844>,  <30.953806, 34.397869, 35.189274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944223, 34.635456, 35.221844>,  <30.928251, 35.031433, 35.276127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944223, 34.635456, 35.221844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156458, 0.140339, -0.977664,
		0.986877, 0.017806, 0.160489,
		0.039931, -0.989943, -0.135711,
		30.956203, 34.338474, 35.181129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566317, 34.879242, 35.047695>,  <30.928251, 35.031433, 35.276127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566317, 34.879242, 35.047695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307892, 34.607780, 34.907963>,  <31.152838, 34.444904, 34.824123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307892, 34.607780, 34.907963>,  <31.566317, 34.879242, 35.047695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307892, 34.607780, 34.907963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215346, 0.277008, -0.936426,
		0.732280, -0.680213, -0.032817,
		-0.646060, -0.678658, -0.349328,
		31.114075, 34.404182, 34.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864061, 34.480003, 34.415607>,  <31.566317, 34.879242, 35.047695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864061, 34.480003, 34.415607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465075, 34.453609, 34.404999>,  <31.225681, 34.437775, 34.398636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465075, 34.453609, 34.404999>,  <31.864061, 34.480003, 34.415607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465075, 34.453609, 34.404999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004050, 0.319596, -0.947545,
		0.071000, -0.945254, -0.318520,
		-0.997468, -0.065985, -0.026519,
		31.165834, 34.433815, 34.397041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864891, 34.145752, 33.741310>,  <31.864061, 34.480003, 34.415607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864891, 34.145752, 33.741310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489717, 34.265453, 33.811432>,  <31.264614, 34.337276, 33.853504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489717, 34.265453, 33.811432>,  <31.864891, 34.145752, 33.741310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489717, 34.265453, 33.811432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134787, 0.151197, -0.979271,
		-0.319558, -0.942117, -0.101477,
		-0.937931, 0.299256, 0.175301,
		31.208338, 34.355228, 33.864021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328907, 33.602402, 33.562729>,  <31.864891, 34.145752, 33.741310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328907, 33.602402, 33.562729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585033, 33.889660, 33.453728>,  <32.738708, 34.062016, 33.388329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585033, 33.889660, 33.453728>,  <32.328907, 33.602402, 33.562729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585033, 33.889660, 33.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697360, -0.394811, 0.598175,
		0.321992, -0.573053, -0.753612,
		0.640320, 0.718147, -0.272499,
		32.777130, 34.105103, 33.371979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033573, 33.776058, 33.734013>,  <32.328907, 33.602402, 33.562729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033573, 33.776058, 33.734013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059223, 33.378563, 33.697399>,  <33.074612, 33.140068, 33.675430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059223, 33.378563, 33.697399>,  <33.033573, 33.776058, 33.734013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059223, 33.378563, 33.697399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958679, 0.086815, -0.270918,
		0.277167, -0.070375, 0.958241,
		0.064124, -0.993736, -0.091529,
		33.078461, 33.080441, 33.669941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489906, 33.373810, 34.255882>,  <33.033573, 33.776058, 33.734013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489906, 33.373810, 34.255882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505768, 33.205986, 33.893139>,  <33.515285, 33.105293, 33.675491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505768, 33.205986, 33.893139>,  <33.489906, 33.373810, 34.255882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505768, 33.205986, 33.893139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998888, -0.006499, 0.046688,
		-0.025482, -0.907704, 0.418836,
		0.039656, -0.419560, -0.906861,
		33.517666, 33.080116, 33.621082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856663, 33.873871, 34.857956>,  <33.489906, 33.373810, 34.255882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856663, 33.873871, 34.857956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165882, 34.072117, 34.699581>,  <34.351414, 34.191063, 34.604557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165882, 34.072117, 34.699581>,  <33.856663, 33.873871, 34.857956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165882, 34.072117, 34.699581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626504, -0.694369, 0.354040,
		-0.099459, -0.521745, -0.847284,
		0.773046, 0.495614, -0.395937,
		34.397797, 34.220802, 34.580799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269592, 33.317268, 34.479328>,  <33.856663, 33.873871, 34.857956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269592, 33.317268, 34.479328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493504, 33.626846, 34.597759>,  <34.627850, 33.812592, 34.668819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493504, 33.626846, 34.597759>,  <34.269592, 33.317268, 34.479328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493504, 33.626846, 34.597759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548860, -0.613988, 0.567249,
		0.620806, -0.155029, -0.768483,
		0.559779, 0.773941, 0.296078,
		34.661438, 33.859028, 34.686581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011307, 33.140354, 34.323196>,  <34.269592, 33.317268, 34.479328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011307, 33.140354, 34.323196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001289, 33.420647, 34.608391>,  <34.995277, 33.588821, 34.779507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001289, 33.420647, 34.608391>,  <35.011307, 33.140354, 34.323196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001289, 33.420647, 34.608391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670097, -0.517498, 0.532133,
		0.741851, 0.491098, -0.456596,
		-0.025042, 0.700727, 0.712990,
		34.993778, 33.630863, 34.822289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639412, 33.080059, 34.688030>,  <35.011307, 33.140354, 34.323196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639412, 33.080059, 34.688030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433132, 33.305550, 34.946106>,  <35.309364, 33.440842, 35.100952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433132, 33.305550, 34.946106>,  <35.639412, 33.080059, 34.688030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433132, 33.305550, 34.946106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527863, -0.384093, 0.757518,
		0.674842, 0.731224, -0.099490,
		-0.515702, 0.563723, 0.645188,
		35.278423, 33.474667, 35.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116150, 33.318878, 35.193439>,  <35.639412, 33.080059, 34.688030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116150, 33.318878, 35.193439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748608, 33.346561, 35.348831>,  <35.528084, 33.363171, 35.442066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748608, 33.346561, 35.348831>,  <36.116150, 33.318878, 35.193439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748608, 33.346561, 35.348831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328606, -0.410828, 0.850434,
		0.218452, 0.909083, 0.354750,
		-0.918856, 0.069206, 0.388476,
		35.472950, 33.367325, 35.465374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296986, 33.449696, 35.937672>,  <36.116150, 33.318878, 35.193439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296986, 33.449696, 35.937672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911983, 33.344803, 35.909912>,  <35.680981, 33.281868, 35.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911983, 33.344803, 35.909912>,  <36.296986, 33.449696, 35.937672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911983, 33.344803, 35.909912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060294, -0.456241, 0.887811,
		-0.264476, 0.850339, 0.454946,
		-0.962506, -0.262235, -0.069394,
		35.623230, 33.266132, 35.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094299, 33.577869, 36.623550>,  <36.296986, 33.449696, 35.937672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094299, 33.577869, 36.623550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847404, 33.316689, 36.447979>,  <35.699268, 33.159981, 36.342636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847404, 33.316689, 36.447979>,  <36.094299, 33.577869, 36.623550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847404, 33.316689, 36.447979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013732, -0.566744, 0.823779,
		-0.786655, 0.502443, 0.358784,
		-0.617240, -0.652957, -0.438933,
		35.662231, 33.120800, 36.316299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689751, 33.371880, 37.247181>,  <36.094299, 33.577869, 36.623550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689751, 33.371880, 37.247181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630203, 33.092564, 36.967113>,  <35.594475, 32.924976, 36.799072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630203, 33.092564, 36.967113>,  <35.689751, 33.371880, 37.247181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630203, 33.092564, 36.967113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081434, -0.696993, 0.712439,
		-0.985498, 0.163078, 0.046896,
		-0.148869, -0.698288, -0.700166,
		35.585541, 32.883076, 36.757065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136925, 33.046070, 37.444374>,  <35.689751, 33.371880, 37.247181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136925, 33.046070, 37.444374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304825, 32.776768, 37.200890>,  <35.405567, 32.615185, 37.054798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304825, 32.776768, 37.200890>,  <35.136925, 33.046070, 37.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304825, 32.776768, 37.200890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016401, -0.676172, 0.736561,
		-0.907490, -0.299190, -0.294867,
		0.419753, -0.673258, -0.608713,
		35.430752, 32.574791, 37.018276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772205, 32.382271, 37.508499>,  <35.136925, 33.046070, 37.444374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772205, 32.382271, 37.508499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 32.311188, 37.371021>,  <35.362358, 32.268536, 37.288536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 32.311188, 37.371021>,  <34.772205, 32.382271, 37.508499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141052, 32.311188, 37.371021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150285, -0.654030, 0.741390,
		-0.356538, -0.735298, -0.576383,
		0.922114, -0.177711, -0.343691,
		35.417686, 32.257874, 37.267914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712624, 31.632664, 37.442596>,  <34.772205, 32.382271, 37.508499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712624, 31.632664, 37.442596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105545, 31.707565, 37.443989>,  <35.341297, 31.752506, 37.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105545, 31.707565, 37.443989>,  <34.712624, 31.632664, 37.442596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105545, 31.707565, 37.443989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130473, -0.697533, 0.704574,
		0.134361, -0.691653, -0.709622,
		0.982305, 0.187254, 0.003480,
		35.400238, 31.763741, 37.445034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964012, 31.035915, 37.517097>,  <34.712624, 31.632664, 37.442596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964012, 31.035915, 37.517097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265659, 31.283676, 37.604416>,  <35.446648, 31.432333, 37.656807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265659, 31.283676, 37.604416>,  <34.964012, 31.035915, 37.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265659, 31.283676, 37.604416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384489, -0.685860, 0.617871,
		0.532429, -0.382014, -0.755371,
		0.754114, 0.619404, 0.218291,
		35.491894, 31.469498, 37.669903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454880, 30.562849, 37.619652>,  <34.964012, 31.035915, 37.517097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454880, 30.562849, 37.619652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569195, 30.897865, 37.805920>,  <35.637783, 31.098875, 37.917679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569195, 30.897865, 37.805920>,  <35.454880, 30.562849, 37.619652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569195, 30.897865, 37.805920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253074, -0.534650, 0.806290,
		0.924271, -0.112582, -0.364758,
		0.285791, 0.837541, 0.465670,
		35.654934, 31.149128, 37.945621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063015, 30.347620, 38.008354>,  <35.454880, 30.562849, 37.619652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063015, 30.347620, 38.008354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938484, 30.689379, 38.174763>,  <35.863766, 30.894434, 38.274609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938484, 30.689379, 38.174763>,  <36.063015, 30.347620, 38.008354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938484, 30.689379, 38.174763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270985, -0.339788, 0.900617,
		0.910847, 0.393124, -0.125743,
		-0.311328, 0.854399, 0.416026,
		35.845085, 30.945698, 38.299572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610149, 30.408447, 38.487240>,  <36.063015, 30.347620, 38.008354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610149, 30.408447, 38.487240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296280, 30.624485, 38.608948>,  <36.107956, 30.754107, 38.681973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296280, 30.624485, 38.608948>,  <36.610149, 30.408447, 38.487240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296280, 30.624485, 38.608948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177030, -0.275156, 0.944960,
		0.594088, 0.795354, 0.120297,
		-0.784678, 0.540093, 0.304268,
		36.060875, 30.786512, 38.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784554, 30.528517, 39.257183>,  <36.610149, 30.408447, 38.487240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784554, 30.528517, 39.257183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398544, 30.626741, 39.220444>,  <36.166939, 30.685677, 39.198399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398544, 30.626741, 39.220444>,  <36.784554, 30.528517, 39.257183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398544, 30.626741, 39.220444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127832, -0.134839, 0.982587,
		0.228902, 0.959957, 0.161513,
		-0.965020, 0.245563, -0.091849,
		36.109039, 30.700411, 39.192890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660168, 31.085531, 39.702484>,  <36.784554, 30.528517, 39.257183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660168, 31.085531, 39.702484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302700, 30.918732, 39.636189>,  <36.088219, 30.818653, 39.596409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302700, 30.918732, 39.636189>,  <36.660168, 31.085531, 39.702484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302700, 30.918732, 39.636189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082448, -0.210481, 0.974115,
		-0.441089, 0.884201, 0.153720,
		-0.893668, -0.416997, -0.165741,
		36.034599, 30.793633, 39.586468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378799, 31.151508, 40.342541>,  <36.660168, 31.085531, 39.702484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378799, 31.151508, 40.342541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113583, 30.908451, 40.167660>,  <35.954453, 30.762617, 40.062733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113583, 30.908451, 40.167660>,  <36.378799, 31.151508, 40.342541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113583, 30.908451, 40.167660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272067, -0.348492, 0.896957,
		-0.697392, 0.713668, 0.065745,
		-0.663042, -0.607643, -0.437201,
		35.914669, 30.726158, 40.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704849, 31.389542, 40.633514>,  <36.378799, 31.151508, 40.342541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704849, 31.389542, 40.633514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673874, 31.011820, 40.505581>,  <35.655289, 30.785187, 40.428822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673874, 31.011820, 40.505581>,  <35.704849, 31.389542, 40.633514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673874, 31.011820, 40.505581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420039, -0.260036, 0.869453,
		-0.904196, 0.201675, -0.376507,
		-0.077442, -0.944303, -0.319834,
		35.650642, 30.728529, 40.409630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967289, 31.145569, 40.883301>,  <35.704849, 31.389542, 40.633514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967289, 31.145569, 40.883301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215588, 30.846247, 40.789738>,  <35.364567, 30.666655, 40.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215588, 30.846247, 40.789738>,  <34.967289, 31.145569, 40.883301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215588, 30.846247, 40.789738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212426, -0.447723, 0.868573,
		-0.754684, -0.489475, -0.436882,
		0.620747, -0.748303, -0.233912,
		35.401814, 30.621756, 40.719563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628338, 30.565050, 40.983772>,  <34.967289, 31.145569, 40.883301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628338, 30.565050, 40.983772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012768, 30.468246, 41.037083>,  <35.243427, 30.410164, 41.069069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012768, 30.468246, 41.037083>,  <34.628338, 30.565050, 40.983772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012768, 30.468246, 41.037083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227568, -0.419889, 0.878582,
		-0.156665, -0.874714, -0.458619,
		0.961077, -0.242010, 0.133274,
		35.301090, 30.395643, 41.077065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604282, 30.081017, 41.451809>,  <34.628338, 30.565050, 40.983772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604282, 30.081017, 41.451809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995602, 30.158257, 41.481876>,  <35.230392, 30.204601, 41.499916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995602, 30.158257, 41.481876>,  <34.604282, 30.081017, 41.451809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995602, 30.158257, 41.481876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001946, -0.371318, 0.928504,
		0.207209, -0.908204, -0.363634,
		0.978295, 0.193102, 0.075173,
		35.289089, 30.216187, 41.504429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947468, 29.512695, 41.661106>,  <34.604282, 30.081017, 41.451809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947468, 29.512695, 41.661106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203552, 29.798344, 41.774353>,  <35.357204, 29.969732, 41.842300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203552, 29.798344, 41.774353>,  <34.947468, 29.512695, 41.661106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203552, 29.798344, 41.774353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136431, -0.256997, 0.956733,
		0.755987, -0.651138, -0.067105,
		0.640212, 0.714123, 0.283122,
		35.395615, 30.012581, 41.859291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581898, 29.151857, 42.037342>,  <34.947468, 29.512695, 41.661106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581898, 29.151857, 42.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523544, 29.524288, 42.171097>,  <35.488533, 29.747747, 42.251350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523544, 29.524288, 42.171097>,  <35.581898, 29.151857, 42.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523544, 29.524288, 42.171097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008162, -0.336856, 0.941521,
		0.989268, 0.140084, 0.041543,
		-0.145886, 0.931077, 0.334384,
		35.479778, 29.803612, 42.271412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914825, 29.085411, 42.686852>,  <35.581898, 29.151857, 42.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914825, 29.085411, 42.686852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736530, 29.442493, 42.713364>,  <35.629555, 29.656744, 42.729271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736530, 29.442493, 42.713364>,  <35.914825, 29.085411, 42.686852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736530, 29.442493, 42.713364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089900, -0.118315, 0.988898,
		0.890640, 0.434826, 0.132992,
		-0.445734, 0.892708, 0.066285,
		35.602810, 29.710306, 42.733250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305061, 29.435476, 43.219879>,  <35.914825, 29.085411, 42.686852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305061, 29.435476, 43.219879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937965, 29.590054, 43.183189>,  <35.717709, 29.682800, 43.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937965, 29.590054, 43.183189>,  <36.305061, 29.435476, 43.219879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937965, 29.590054, 43.183189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111740, -0.029601, 0.993297,
		0.381139, 0.921837, 0.070348,
		-0.917740, 0.386445, -0.091724,
		35.662643, 29.705986, 43.155674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731213, 30.059574, 43.519356>,  <36.305061, 29.435476, 43.219879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731213, 30.059574, 43.519356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014572, 30.294535, 43.675880>,  <37.184589, 30.435511, 43.769794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014572, 30.294535, 43.675880>,  <36.731213, 30.059574, 43.519356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014572, 30.294535, 43.675880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223832, 0.338829, -0.913835,
		-0.669377, 0.734950, 0.108547,
		0.708402, 0.587404, 0.391310,
		37.227093, 30.470757, 43.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563812, 30.744480, 43.368011>,  <36.731213, 30.059574, 43.519356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563812, 30.744480, 43.368011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958374, 30.739038, 43.433525>,  <37.195110, 30.735773, 43.472832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958374, 30.739038, 43.433525>,  <36.563812, 30.744480, 43.368011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958374, 30.739038, 43.433525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141984, 0.572426, -0.807569,
		-0.082768, 0.819843, 0.566574,
		0.986402, -0.013603, 0.163784,
		37.254295, 30.734957, 43.482658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717545, 31.441645, 43.337017>,  <36.563812, 30.744480, 43.368011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717545, 31.441645, 43.337017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062687, 31.253569, 43.262829>,  <37.269772, 31.140724, 43.218315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062687, 31.253569, 43.262829>,  <36.717545, 31.441645, 43.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062687, 31.253569, 43.262829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111400, 0.534833, -0.837582,
		0.493020, 0.702051, 0.513863,
		0.862857, -0.470188, -0.185475,
		37.321545, 31.112513, 43.207188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218060, 31.994856, 43.317802>,  <36.717545, 31.441645, 43.337017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218060, 31.994856, 43.317802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412437, 31.679783, 43.166325>,  <37.529064, 31.490740, 43.075436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412437, 31.679783, 43.166325>,  <37.218060, 31.994856, 43.317802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412437, 31.679783, 43.166325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398212, 0.585256, -0.706331,
		0.777998, 0.192440, 0.598069,
		0.485949, -0.787682, -0.378696,
		37.558224, 31.443478, 43.052715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934723, 32.134022, 43.335129>,  <37.218060, 31.994856, 43.317802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934723, 32.134022, 43.335129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856506, 31.886446, 43.030846>,  <37.809578, 31.737900, 42.848274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856506, 31.886446, 43.030846>,  <37.934723, 32.134022, 43.335129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856506, 31.886446, 43.030846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532670, 0.584258, -0.612295,
		0.823425, -0.524933, 0.215446,
		-0.195538, -0.618940, -0.760709,
		37.797844, 31.700764, 42.802631>
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
