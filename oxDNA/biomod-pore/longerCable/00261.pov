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
	<24.265024, 34.797325, 35.136158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258408, 35.183250, 35.031189>,  <24.254436, 35.414806, 34.968208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.258408, 35.183250, 35.031189>,  <24.265024, 34.797325, 35.136158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258408, 35.183250, 35.031189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441281, -0.228470, -0.867798,
		-0.897217, -0.130157, -0.421973,
		-0.016542, 0.964811, -0.262423,
		24.253445, 35.472694, 34.952461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031168, 34.917450, 34.513901>,  <24.265024, 34.797325, 35.136158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031168, 34.917450, 34.513901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249285, 35.249187, 34.562630>,  <24.380156, 35.448231, 34.591866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249285, 35.249187, 34.562630>,  <24.031168, 34.917450, 34.513901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249285, 35.249187, 34.562630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287533, -0.048548, -0.956539,
		-0.787389, 0.556621, -0.264937,
		0.545292, 0.829347, 0.121821,
		24.412872, 35.497990, 34.599174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839516, 35.551746, 34.041367>,  <24.031168, 34.917450, 34.513901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839516, 35.551746, 34.041367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226038, 35.552341, 34.144325>,  <24.457951, 35.552700, 34.206100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226038, 35.552341, 34.144325>,  <23.839516, 35.551746, 34.041367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226038, 35.552341, 34.144325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257050, 0.046261, -0.965290,
		-0.013347, 0.998928, 0.044319,
		0.966306, 0.001492, 0.257392,
		24.515930, 35.552788, 34.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248220, 36.033638, 33.570934>,  <23.839516, 35.551746, 34.041367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248220, 36.033638, 33.570934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473396, 35.737339, 33.717575>,  <24.608501, 35.559559, 33.805557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473396, 35.737339, 33.717575>,  <24.248220, 36.033638, 33.570934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473396, 35.737339, 33.717575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344819, -0.192617, -0.918694,
		0.751130, 0.643581, 0.146990,
		0.562941, -0.740744, 0.366599,
		24.642279, 35.515118, 33.827557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905008, 36.110680, 33.336414>,  <24.248220, 36.033638, 33.570934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905008, 36.110680, 33.336414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957451, 35.719151, 33.399311>,  <24.988916, 35.484234, 33.437050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957451, 35.719151, 33.399311>,  <24.905008, 36.110680, 33.336414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957451, 35.719151, 33.399311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526386, -0.065673, -0.847706,
		0.840077, 0.193911, 0.506626,
		0.131107, -0.978819, 0.157242,
		24.996782, 35.425507, 33.446484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689226, 35.925339, 33.424114>,  <24.905008, 36.110680, 33.336414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689226, 35.925339, 33.424114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492409, 35.607220, 33.282475>,  <25.374317, 35.416348, 33.197491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492409, 35.607220, 33.282475>,  <25.689226, 35.925339, 33.424114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492409, 35.607220, 33.282475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577183, 0.006480, -0.816589,
		0.651730, -0.606178, 0.455847,
		-0.492045, -0.795303, -0.354099,
		25.344795, 35.368629, 33.176247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232237, 35.643459, 33.141342>,  <25.689226, 35.925339, 33.424114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232237, 35.643459, 33.141342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899231, 35.484024, 32.987438>,  <25.699427, 35.388363, 32.895096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899231, 35.484024, 32.987438>,  <26.232237, 35.643459, 33.141342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899231, 35.484024, 32.987438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434347, -0.038492, -0.899923,
		0.343893, -0.916320, 0.205173,
		-0.832515, -0.398593, -0.384764,
		25.649477, 35.364445, 32.872009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355728, 34.996834, 32.807816>,  <26.232237, 35.643459, 33.141342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355728, 34.996834, 32.807816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041883, 35.180042, 32.640675>,  <25.853577, 35.289967, 32.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041883, 35.180042, 32.640675>,  <26.355728, 34.996834, 32.807816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041883, 35.180042, 32.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406702, -0.128468, -0.904483,
		-0.467950, -0.879611, -0.085479,
		-0.784612, 0.458017, -0.417856,
		25.806499, 35.317448, 32.515316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257006, 34.694321, 32.242493>,  <26.355728, 34.996834, 32.807816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257006, 34.694321, 32.242493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081886, 35.047558, 32.174999>,  <25.976814, 35.259502, 32.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081886, 35.047558, 32.174999>,  <26.257006, 34.694321, 32.242493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081886, 35.047558, 32.174999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396301, 0.021085, -0.917879,
		-0.807017, -0.468719, -0.359203,
		-0.437801, 0.883096, -0.168738,
		25.950546, 35.312485, 32.124378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897751, 34.714920, 31.530479>,  <26.257006, 34.694321, 32.242493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897751, 34.714920, 31.530479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973434, 35.091915, 31.640694>,  <26.018845, 35.318111, 31.706823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973434, 35.091915, 31.640694>,  <25.897751, 34.714920, 31.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973434, 35.091915, 31.640694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550636, 0.130496, -0.824482,
		-0.813019, 0.307720, -0.494276,
		0.189209, 0.942486, 0.275537,
		26.030197, 35.374660, 31.723354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866875, 35.093430, 30.878094>,  <25.897751, 34.714920, 31.530479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866875, 35.093430, 30.878094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063292, 35.320755, 31.142183>,  <26.181141, 35.457150, 31.300636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063292, 35.320755, 31.142183>,  <25.866875, 35.093430, 30.878094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063292, 35.320755, 31.142183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669691, 0.238434, -0.703323,
		-0.557130, 0.787506, -0.263516,
		0.491040, 0.568316, 0.660225,
		26.210604, 35.491249, 31.340250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066507, 35.747112, 30.570795>,  <25.866875, 35.093430, 30.878094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066507, 35.747112, 30.570795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344803, 35.671520, 30.847990>,  <26.511780, 35.626163, 31.014307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344803, 35.671520, 30.847990>,  <26.066507, 35.747112, 30.570795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344803, 35.671520, 30.847990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686443, -0.109180, -0.718941,
		0.211530, 0.975892, 0.053766,
		0.695738, -0.188985, 0.692989,
		26.553524, 35.614826, 31.055887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710279, 36.194183, 30.485147>,  <26.066507, 35.747112, 30.570795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710279, 36.194183, 30.485147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777464, 35.831978, 30.641012>,  <26.817774, 35.614655, 30.734531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777464, 35.831978, 30.641012>,  <26.710279, 36.194183, 30.485147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777464, 35.831978, 30.641012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673708, -0.183125, -0.715948,
		0.719657, 0.382769, 0.579293,
		0.167960, -0.905512, 0.389662,
		26.827852, 35.560326, 30.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457569, 35.843925, 30.634645>,  <26.710279, 36.194183, 30.485147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457569, 35.843925, 30.634645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355341, 36.158863, 30.859062>,  <27.294004, 36.347828, 30.993711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355341, 36.158863, 30.859062>,  <27.457569, 35.843925, 30.634645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355341, 36.158863, 30.859062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791784, -0.503454, 0.345850,
		0.554763, -0.355834, 0.752078,
		-0.255572, 0.787347, 0.561041,
		27.278669, 36.395069, 31.027374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412844, 35.562244, 31.240860>,  <27.457569, 35.843925, 30.634645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412844, 35.562244, 31.240860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177691, 35.884491, 31.211529>,  <27.036598, 36.077839, 31.193930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177691, 35.884491, 31.211529>,  <27.412844, 35.562244, 31.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177691, 35.884491, 31.211529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676440, -0.439851, 0.590728,
		0.443647, 0.396881, 0.803532,
		-0.587883, 0.805616, -0.073328,
		27.001326, 36.126175, 31.189531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247421, 35.857960, 31.934027>,  <27.412844, 35.562244, 31.240860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247421, 35.857960, 31.934027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973047, 35.924877, 31.650759>,  <26.808422, 35.965027, 31.480799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973047, 35.924877, 31.650759>,  <27.247421, 35.857960, 31.934027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973047, 35.924877, 31.650759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724492, -0.247761, 0.643215,
		-0.067848, 0.954267, 0.291154,
		-0.685935, 0.167298, -0.708169,
		26.767267, 35.975067, 31.438309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756601, 36.277290, 32.252937>,  <27.247421, 35.857960, 31.934027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756601, 36.277290, 32.252937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582731, 36.084766, 31.948463>,  <26.478409, 35.969254, 31.765779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582731, 36.084766, 31.948463>,  <26.756601, 36.277290, 32.252937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582731, 36.084766, 31.948463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838060, -0.093260, 0.537548,
		-0.329715, 0.871575, -0.362829,
		-0.434676, -0.481311, -0.761181,
		26.452328, 35.940372, 31.720110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154314, 36.572075, 32.164856>,  <26.756601, 36.277290, 32.252937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154314, 36.572075, 32.164856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097290, 36.206215, 32.013546>,  <26.063076, 35.986698, 31.922760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097290, 36.206215, 32.013546>,  <26.154314, 36.572075, 32.164856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097290, 36.206215, 32.013546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831735, -0.096475, 0.546727,
		-0.536558, 0.392563, -0.746994,
		-0.142559, -0.914651, -0.378273,
		26.054522, 35.931820, 31.900064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385757, 36.490173, 31.993095>,  <26.154314, 36.572075, 32.164856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385757, 36.490173, 31.993095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575083, 36.140091, 32.033058>,  <25.688679, 35.930042, 32.057037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575083, 36.140091, 32.033058>,  <25.385757, 36.490173, 31.993095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575083, 36.140091, 32.033058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629694, -0.256849, 0.733154,
		-0.616002, -0.409924, -0.672684,
		0.473315, -0.875209, 0.099907,
		25.717077, 35.877529, 32.063030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916132, 35.968262, 31.855778>,  <25.385757, 36.490173, 31.993095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916132, 35.968262, 31.855778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192932, 35.778069, 32.073051>,  <25.359013, 35.663952, 32.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192932, 35.778069, 32.073051>,  <24.916132, 35.968262, 31.855778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192932, 35.778069, 32.073051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662784, -0.120268, 0.739090,
		-0.286097, -0.871465, -0.398368,
		0.692001, -0.475483, 0.543184,
		25.400534, 35.635426, 32.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720484, 35.380695, 31.961926>,  <24.916132, 35.968262, 31.855778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720484, 35.380695, 31.961926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957354, 35.502895, 32.260185>,  <25.099476, 35.576218, 32.439140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957354, 35.502895, 32.260185>,  <24.720484, 35.380695, 31.961926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957354, 35.502895, 32.260185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761826, -0.089278, 0.641600,
		0.262582, -0.947996, 0.179873,
		0.592175, 0.305504, 0.745651,
		25.135006, 35.594547, 32.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772917, 34.819878, 32.370560>,  <24.720484, 35.380695, 31.961926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772917, 34.819878, 32.370560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109947, 34.842812, 32.584766>,  <25.312166, 34.856571, 32.713291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109947, 34.842812, 32.584766>,  <24.772917, 34.819878, 32.370560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109947, 34.842812, 32.584766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533910, 0.219518, 0.816549,
		-0.070738, -0.973922, 0.215574,
		0.842577, 0.057336, 0.535515,
		25.362720, 34.860012, 32.745422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759060, 34.278282, 32.815533>,  <24.772917, 34.819878, 32.370560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759060, 34.278282, 32.815533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936138, 34.623646, 32.912315>,  <25.042385, 34.830864, 32.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936138, 34.623646, 32.912315>,  <24.759060, 34.278282, 32.815533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936138, 34.623646, 32.912315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704653, 0.168116, 0.689349,
		0.554512, -0.475670, 0.682828,
		0.442697, 0.863409, 0.241960,
		25.068947, 34.882668, 32.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626787, 34.383915, 33.607967>,  <24.759060, 34.278282, 32.815533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626787, 34.383915, 33.607967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714550, 34.737827, 33.443516>,  <24.767208, 34.950172, 33.344845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714550, 34.737827, 33.443516>,  <24.626787, 34.383915, 33.607967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714550, 34.737827, 33.443516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601761, 0.454421, 0.656800,
		0.767949, 0.103297, 0.632127,
		0.219406, 0.884778, -0.411132,
		24.780373, 35.003262, 33.320175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215370, 34.201084, 33.769680>,  <24.626787, 34.383915, 33.607967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215370, 34.201084, 33.769680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099960, 34.573601, 33.680733>,  <25.030714, 34.797112, 33.627365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099960, 34.573601, 33.680733>,  <25.215370, 34.201084, 33.769680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099960, 34.573601, 33.680733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040640, 0.220122, 0.974625,
		0.956610, 0.290240, -0.025663,
		-0.288524, 0.931293, -0.222366,
		25.013403, 34.852989, 33.614021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547089, 34.707584, 34.293663>,  <25.215370, 34.201084, 33.769680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547089, 34.707584, 34.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251907, 34.937023, 34.151443>,  <25.074799, 35.074688, 34.066113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251907, 34.937023, 34.151443>,  <25.547089, 34.707584, 34.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251907, 34.937023, 34.151443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186903, 0.332527, 0.924388,
		0.648453, 0.748608, -0.138183,
		-0.737954, 0.573596, -0.355545,
		25.030521, 35.109100, 34.044781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750151, 35.428543, 34.695045>,  <25.547089, 34.707584, 34.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750151, 35.428543, 34.695045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378780, 35.461113, 34.550053>,  <25.155958, 35.480656, 34.463055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378780, 35.461113, 34.550053>,  <25.750151, 35.428543, 34.695045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378780, 35.461113, 34.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257534, 0.562168, 0.785902,
		0.267773, 0.823004, -0.500961,
		-0.928425, 0.081429, -0.362485,
		25.100252, 35.485542, 34.441307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822594, 36.032204, 35.092606>,  <25.750151, 35.428543, 34.695045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822594, 36.032204, 35.092606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054838, 36.146870, 34.787788>,  <26.194185, 36.215668, 34.604897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054838, 36.146870, 34.787788>,  <25.822594, 36.032204, 35.092606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054838, 36.146870, 34.787788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712122, 0.274916, 0.645990,
		0.394682, -0.917739, -0.044521,
		0.580610, 0.286665, -0.762047,
		26.229021, 36.232868, 34.559174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450701, 36.453251, 35.686966>,  <25.822594, 36.032204, 35.092606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450701, 36.453251, 35.686966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516626, 36.763165, 35.931114>,  <25.556183, 36.949112, 36.077602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516626, 36.763165, 35.931114>,  <25.450701, 36.453251, 35.686966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516626, 36.763165, 35.931114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753220, 0.498394, -0.429258,
		-0.636785, -0.388993, 0.665725,
		0.164815, 0.774782, 0.610367,
		25.566071, 36.995598, 36.114223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082006, 37.088058, 36.022388>,  <25.450701, 36.453251, 35.686966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082006, 37.088058, 36.022388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159046, 37.480434, 36.032642>,  <25.205269, 37.715862, 36.038795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159046, 37.480434, 36.032642>,  <25.082006, 37.088058, 36.022388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159046, 37.480434, 36.032642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029104, 0.031823, -0.999070,
		-0.980846, 0.191672, 0.034678,
		0.192597, 0.980943, 0.025635,
		25.216825, 37.774719, 36.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.623627, 37.489723, 35.651726>,  <25.082006, 37.088058, 36.022388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.623627, 37.489723, 35.651726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932819, 37.741493, 35.683544>,  <25.118334, 37.892555, 35.702637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932819, 37.741493, 35.683544>,  <24.623627, 37.489723, 35.651726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932819, 37.741493, 35.683544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089687, 0.232535, -0.968444,
		-0.628058, 0.741454, 0.236197,
		0.772981, 0.629423, 0.079547,
		25.164713, 37.930321, 35.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406399, 37.917091, 35.190609>,  <24.623627, 37.489723, 35.651726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406399, 37.917091, 35.190609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803791, 37.942257, 35.228634>,  <25.042227, 37.957355, 35.251450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803791, 37.942257, 35.228634>,  <24.406399, 37.917091, 35.190609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803791, 37.942257, 35.228634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063888, 0.383331, -0.921399,
		-0.094411, 0.921466, 0.376813,
		0.993481, 0.062917, 0.095061,
		25.101835, 37.961132, 35.257153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.656826, 38.549438, 35.195557>,  <24.406399, 37.917091, 35.190609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.656826, 38.549438, 35.195557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975143, 38.355576, 35.050327>,  <25.166134, 38.239258, 34.963188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975143, 38.355576, 35.050327>,  <24.656826, 38.549438, 35.195557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975143, 38.355576, 35.050327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093067, 0.690314, -0.717499,
		0.598376, 0.537190, 0.594452,
		0.795792, -0.484658, -0.363073,
		25.213881, 38.210178, 34.941406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204996, 38.983109, 35.246361>,  <24.656826, 38.549438, 35.195557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204996, 38.983109, 35.246361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287687, 38.726505, 34.950867>,  <25.337303, 38.572544, 34.773571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287687, 38.726505, 34.950867>,  <25.204996, 38.983109, 35.246361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287687, 38.726505, 34.950867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247830, 0.764756, -0.594751,
		0.946490, -0.060128, 0.317084,
		0.206730, -0.641509, -0.738735,
		25.349707, 38.534054, 34.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671421, 38.447445, 35.176441>,  <25.204996, 38.983109, 35.246361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671421, 38.447445, 35.176441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014105, 38.443150, 34.970165>,  <26.219715, 38.440571, 34.846401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014105, 38.443150, 34.970165>,  <25.671421, 38.447445, 35.176441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014105, 38.443150, 34.970165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440128, 0.506111, -0.741714,
		0.268962, 0.862401, 0.428863,
		0.856707, -0.010738, -0.515691,
		26.271116, 38.439930, 34.815456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926228, 39.180279, 35.003407>,  <25.671421, 38.447445, 35.176441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926228, 39.180279, 35.003407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975924, 38.887814, 34.735088>,  <26.005741, 38.712334, 34.574097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975924, 38.887814, 34.735088>,  <25.926228, 39.180279, 35.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975924, 38.887814, 34.735088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455297, 0.558657, -0.693258,
		0.881628, 0.391544, -0.263486,
		0.124242, -0.731161, -0.670797,
		26.013197, 38.668465, 34.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215769, 39.406387, 34.295437>,  <25.926228, 39.180279, 35.003407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215769, 39.406387, 34.295437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965157, 39.097454, 34.253574>,  <25.814789, 38.912094, 34.228458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965157, 39.097454, 34.253574>,  <26.215769, 39.406387, 34.295437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965157, 39.097454, 34.253574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502550, 0.502961, -0.703188,
		0.595737, -0.387974, -0.703260,
		-0.626531, -0.772338, -0.104656,
		25.777197, 38.865753, 34.222179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094637, 39.315948, 33.506977>,  <26.215769, 39.406387, 34.295437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094637, 39.315948, 33.506977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791328, 39.136948, 33.696613>,  <25.609343, 39.029549, 33.810394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791328, 39.136948, 33.696613>,  <26.094637, 39.315948, 33.506977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791328, 39.136948, 33.696613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624725, 0.290850, -0.724655,
		0.186395, -0.845664, -0.500109,
		-0.758271, -0.447503, 0.474094,
		25.563847, 39.002697, 33.838840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672953, 38.895721, 32.953625>,  <26.094637, 39.315948, 33.506977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672953, 38.895721, 32.953625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461893, 39.002888, 33.276070>,  <25.335258, 39.067188, 33.469536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461893, 39.002888, 33.276070>,  <25.672953, 38.895721, 32.953625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461893, 39.002888, 33.276070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652967, 0.479067, -0.586625,
		-0.543345, -0.835893, -0.077840,
		-0.527646, 0.267913, 0.806109,
		25.303598, 39.083263, 33.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522518, 39.414200, 32.453487>,  <25.672953, 38.895721, 32.953625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522518, 39.414200, 32.453487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316303, 39.316769, 32.124878>,  <25.192575, 39.258312, 31.927713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316303, 39.316769, 32.124878>,  <25.522518, 39.414200, 32.453487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316303, 39.316769, 32.124878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412907, -0.910708, 0.010904,
		-0.750820, -0.333589, 0.570077,
		-0.515536, -0.243575, -0.821519,
		25.161642, 39.243694, 31.878422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015230, 39.719494, 32.945431>,  <25.522518, 39.414200, 32.453487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015230, 39.719494, 32.945431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639322, 39.666988, 33.071671>,  <24.413776, 39.635487, 33.147415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639322, 39.666988, 33.071671>,  <25.015230, 39.719494, 32.945431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639322, 39.666988, 33.071671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332499, -0.565038, 0.755100,
		0.079209, 0.814556, 0.574651,
		-0.939771, -0.131261, 0.315595,
		24.357391, 39.627609, 33.166348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943316, 40.060555, 33.530430>,  <25.015230, 39.719494, 32.945431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943316, 40.060555, 33.530430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671482, 39.768299, 33.504089>,  <24.508381, 39.592945, 33.488285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671482, 39.768299, 33.504089>,  <24.943316, 40.060555, 33.530430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671482, 39.768299, 33.504089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522260, -0.544894, 0.655999,
		-0.515180, 0.411415, 0.751883,
		-0.679584, -0.730636, -0.065853,
		24.467607, 39.549107, 33.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578899, 39.739513, 34.217266>,  <24.943316, 40.060555, 33.530430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578899, 39.739513, 34.217266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650253, 39.486332, 33.915924>,  <24.693066, 39.334423, 33.735119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650253, 39.486332, 33.915924>,  <24.578899, 39.739513, 34.217266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650253, 39.486332, 33.915924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593504, -0.541463, 0.595458,
		-0.784813, -0.553342, 0.279071,
		0.178385, -0.632953, -0.753358,
		24.703770, 39.296448, 33.689915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521408, 39.113392, 34.486591>,  <24.578899, 39.739513, 34.217266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521408, 39.113392, 34.486591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734303, 39.062962, 34.151730>,  <24.862040, 39.032703, 33.950813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734303, 39.062962, 34.151730>,  <24.521408, 39.113392, 34.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734303, 39.062962, 34.151730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608664, -0.630325, 0.481891,
		-0.588434, -0.766026, -0.258745,
		0.532234, -0.126072, -0.837157,
		24.893972, 39.025139, 33.900581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572191, 38.401260, 34.386250>,  <24.521408, 39.113392, 34.486591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572191, 38.401260, 34.386250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878334, 38.574993, 34.196270>,  <25.062019, 38.679234, 34.082283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878334, 38.574993, 34.196270>,  <24.572191, 38.401260, 34.386250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878334, 38.574993, 34.196270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641731, -0.571249, 0.511719,
		-0.049059, -0.696440, -0.715936,
		0.765359, 0.434334, -0.474952,
		25.107943, 38.705292, 34.053783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007057, 37.882298, 34.063717>,  <24.572191, 38.401260, 34.386250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007057, 37.882298, 34.063717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256538, 38.191467, 34.110332>,  <25.406227, 38.376968, 34.138302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256538, 38.191467, 34.110332>,  <25.007057, 37.882298, 34.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256538, 38.191467, 34.110332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587627, -0.561954, 0.582153,
		0.515449, -0.294611, -0.804684,
		0.623704, 0.772924, 0.116538,
		25.443649, 38.423344, 34.145294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620159, 37.640396, 33.872097>,  <25.007057, 37.882298, 34.063717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620159, 37.640396, 33.872097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570919, 37.921497, 34.152378>,  <25.541376, 38.090160, 34.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570919, 37.921497, 34.152378>,  <25.620159, 37.640396, 33.872097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570919, 37.921497, 34.152378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036445, -0.708795, 0.704473,
		0.991725, 0.061183, 0.112863,
		-0.123099, 0.702757, 0.700700,
		25.533989, 38.132324, 34.362587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131351, 37.479446, 34.444378>,  <25.620159, 37.640396, 33.872097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131351, 37.479446, 34.444378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836216, 37.702698, 34.596214>,  <25.659136, 37.836651, 34.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836216, 37.702698, 34.596214>,  <26.131351, 37.479446, 34.444378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836216, 37.702698, 34.596214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077012, -0.628306, 0.774145,
		0.670572, 0.541960, 0.506570,
		-0.737837, 0.558131, 0.379587,
		25.614864, 37.870136, 34.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323002, 37.355892, 35.137188>,  <26.131351, 37.479446, 34.444378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323002, 37.355892, 35.137188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950178, 37.498608, 35.112011>,  <25.726484, 37.584236, 35.096905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950178, 37.498608, 35.112011>,  <26.323002, 37.355892, 35.137188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950178, 37.498608, 35.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290204, -0.631220, 0.719266,
		0.216897, 0.688666, 0.691878,
		-0.932061, 0.356793, -0.062944,
		25.670561, 37.605644, 35.093128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030956, 37.045277, 35.076103>,  <26.323002, 37.355892, 35.137188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030956, 37.045277, 35.076103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768337, 36.863506, 35.316917>,  <26.610765, 36.754444, 35.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768337, 36.863506, 35.316917>,  <27.030956, 37.045277, 35.076103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768337, 36.863506, 35.316917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339293, -0.534919, -0.773784,
		0.673664, -0.712292, 0.197018,
		-0.656550, -0.454424, 0.602031,
		26.571373, 36.727180, 35.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066164, 36.527248, 35.657116>,  <27.030956, 37.045277, 35.076103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066164, 36.527248, 35.657116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966879, 36.527836, 36.044598>,  <26.907309, 36.528187, 36.277088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966879, 36.527836, 36.044598>,  <27.066164, 36.527248, 35.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966879, 36.527836, 36.044598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285706, -0.955627, -0.071761,
		0.925615, -0.294577, 0.237615,
		-0.248210, 0.001465, 0.968705,
		26.892416, 36.528275, 36.335209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402260, 36.010838, 35.903481>,  <27.066164, 36.527248, 35.657116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402260, 36.010838, 35.903481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064991, 36.070900, 36.109982>,  <26.862629, 36.106937, 36.233883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064991, 36.070900, 36.109982>,  <27.402260, 36.010838, 35.903481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064991, 36.070900, 36.109982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362025, -0.868466, -0.338681,
		0.397490, -0.472461, 0.786627,
		-0.843173, 0.150156, 0.516249,
		26.812038, 36.115948, 36.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236200, 35.453556, 36.195393>,  <27.402260, 36.010838, 35.903481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236200, 35.453556, 36.195393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872950, 35.620468, 36.181648>,  <26.654999, 35.720615, 36.173401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872950, 35.620468, 36.181648>,  <27.236200, 35.453556, 36.195393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872950, 35.620468, 36.181648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411067, -0.904171, -0.116185,
		-0.079547, -0.091388, 0.992633,
		-0.908128, 0.417281, -0.034358,
		26.600512, 35.745651, 36.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862873, 34.881702, 36.126598>,  <27.236200, 35.453556, 36.195393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862873, 34.881702, 36.126598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884506, 34.671452, 36.466194>,  <27.897486, 34.545300, 36.669952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884506, 34.671452, 36.466194>,  <27.862873, 34.881702, 36.126598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884506, 34.671452, 36.466194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196781, 0.827954, 0.525138,
		-0.978954, -0.195468, -0.058654,
		0.054085, -0.525628, 0.848993,
		27.900732, 34.513763, 36.720894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704807, 34.024734, 35.989407>,  <27.862873, 34.881702, 36.126598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704807, 34.024734, 35.989407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855040, 33.699852, 36.167957>,  <27.945179, 33.504921, 36.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855040, 33.699852, 36.167957>,  <27.704807, 34.024734, 35.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855040, 33.699852, 36.167957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004561, 0.483253, 0.875469,
		-0.926778, -0.326774, 0.185205,
		0.375581, -0.812211, 0.446378,
		27.967714, 33.456188, 36.301872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209520, 33.716522, 36.416351>,  <27.704807, 34.024734, 35.989407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209520, 33.716522, 36.416351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575916, 33.639980, 36.557404>,  <27.795753, 33.594055, 36.642033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575916, 33.639980, 36.557404>,  <27.209520, 33.716522, 36.416351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575916, 33.639980, 36.557404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258663, 0.390201, 0.883650,
		-0.306684, -0.900626, 0.307924,
		0.915991, -0.191353, 0.352627,
		27.850714, 33.582573, 36.663193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088835, 33.436867, 37.088043>,  <27.209520, 33.716522, 36.416351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088835, 33.436867, 37.088043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447298, 33.614281, 37.082813>,  <27.662376, 33.720730, 37.079674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447298, 33.614281, 37.082813>,  <27.088835, 33.436867, 37.088043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447298, 33.614281, 37.082813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280315, 0.588721, 0.758177,
		0.343979, -0.675782, 0.651918,
		0.896160, 0.443539, -0.013075,
		27.716146, 33.747341, 37.078892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179819, 33.458481, 37.810059>,  <27.088835, 33.436867, 37.088043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179819, 33.458481, 37.810059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424261, 33.729420, 37.646225>,  <27.570927, 33.891983, 37.547924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424261, 33.729420, 37.646225>,  <27.179819, 33.458481, 37.810059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424261, 33.729420, 37.646225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289783, 0.672963, 0.680549,
		0.736600, -0.297195, 0.607532,
		0.611102, 0.677346, -0.409583,
		27.607592, 33.932625, 37.523350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755568, 33.776512, 38.309662>,  <27.179819, 33.458481, 37.810059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755568, 33.776512, 38.309662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580435, 33.991013, 38.021015>,  <27.475355, 34.119713, 37.847828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580435, 33.991013, 38.021015>,  <27.755568, 33.776512, 38.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580435, 33.991013, 38.021015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332693, 0.649026, 0.684164,
		0.835236, 0.539627, -0.105757,
		-0.437832, 0.536254, -0.721620,
		27.449085, 34.151890, 37.804531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334141, 34.383511, 38.321362>,  <27.755568, 33.776512, 38.309662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334141, 34.383511, 38.321362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706238, 34.496170, 38.415443>,  <27.929497, 34.563766, 38.471893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706238, 34.496170, 38.415443>,  <27.334141, 34.383511, 38.321362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706238, 34.496170, 38.415443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269766, -0.090400, -0.958673,
		-0.248747, 0.955249, -0.160074,
		0.930243, 0.281649, 0.235207,
		27.985312, 34.580666, 38.486004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476658, 34.990688, 37.921078>,  <27.334141, 34.383511, 38.321362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476658, 34.990688, 37.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798239, 34.776588, 38.024742>,  <27.991188, 34.648129, 38.086941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798239, 34.776588, 38.024742>,  <27.476658, 34.990688, 37.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798239, 34.776588, 38.024742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148623, -0.241115, -0.959049,
		0.575821, 0.809547, -0.114294,
		0.803954, -0.535254, 0.259157,
		28.039425, 34.616013, 38.102489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837090, 34.993237, 37.292782>,  <27.476658, 34.990688, 37.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837090, 34.993237, 37.292782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951321, 34.676620, 37.508892>,  <28.019859, 34.486649, 37.638557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951321, 34.676620, 37.508892>,  <27.837090, 34.993237, 37.292782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951321, 34.676620, 37.508892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038508, -0.553824, -0.831743,
		0.957581, 0.258333, -0.127679,
		0.285578, -0.791545, 0.540279,
		28.036995, 34.439156, 37.670975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376400, 34.741585, 37.005859>,  <27.837090, 34.993237, 37.292782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376400, 34.741585, 37.005859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230141, 34.421719, 37.196369>,  <28.142385, 34.229797, 37.310677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230141, 34.421719, 37.196369>,  <28.376400, 34.741585, 37.005859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230141, 34.421719, 37.196369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298762, -0.585468, -0.753637,
		0.881501, -0.133272, 0.452984,
		-0.365646, -0.799666, 0.476274,
		28.120447, 34.181820, 37.339252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861448, 34.265617, 37.217564>,  <28.376400, 34.741585, 37.005859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861448, 34.265617, 37.217564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514820, 34.072388, 37.167450>,  <28.306843, 33.956451, 37.137383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514820, 34.072388, 37.167450>,  <28.861448, 34.265617, 37.217564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514820, 34.072388, 37.167450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422882, -0.577472, -0.698353,
		0.265006, -0.658153, 0.704703,
		-0.866569, -0.483074, -0.125287,
		28.254848, 33.927464, 37.129864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065479, 33.611069, 37.097256>,  <28.861448, 34.265617, 37.217564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065479, 33.611069, 37.097256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688049, 33.586277, 36.967133>,  <28.461592, 33.571404, 36.889061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688049, 33.586277, 36.967133>,  <29.065479, 33.611069, 37.097256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688049, 33.586277, 36.967133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258532, -0.751740, -0.606669,
		-0.206943, -0.656540, 0.725348,
		-0.943576, -0.061980, -0.325304,
		28.404976, 33.567684, 36.869541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033251, 32.883099, 36.874863>,  <29.065479, 33.611069, 37.097256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033251, 32.883099, 36.874863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767328, 33.129089, 36.705238>,  <28.607775, 33.276684, 36.603462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767328, 33.129089, 36.705238>,  <29.033251, 32.883099, 36.874863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767328, 33.129089, 36.705238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236476, -0.365227, -0.900382,
		-0.708597, -0.698862, 0.097378,
		-0.664808, 0.614980, -0.424063,
		28.567886, 33.313583, 36.578018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471804, 32.536797, 36.446720>,  <29.033251, 32.883099, 36.874863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471804, 32.536797, 36.446720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544918, 32.902332, 36.301682>,  <28.588787, 33.121655, 36.214657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544918, 32.902332, 36.301682>,  <28.471804, 32.536797, 36.446720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544918, 32.902332, 36.301682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073935, -0.380546, -0.921801,
		-0.980368, 0.141685, -0.137124,
		0.182788, 0.913844, -0.362600,
		28.599754, 33.176487, 36.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881708, 32.810349, 36.190166>,  <28.471804, 32.536797, 36.446720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881708, 32.810349, 36.190166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191641, 32.958801, 35.985462>,  <28.377602, 33.047871, 35.862640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191641, 32.958801, 35.985462>,  <27.881708, 32.810349, 36.190166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191641, 32.958801, 35.985462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389124, -0.357998, -0.848775,
		-0.498214, 0.856797, -0.132974,
		0.774833, 0.371128, -0.511760,
		28.424091, 33.070141, 35.831936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696789, 33.288509, 35.645798>,  <27.881708, 32.810349, 36.190166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696789, 33.288509, 35.645798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055353, 33.145157, 35.541481>,  <28.270493, 33.059147, 35.478893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055353, 33.145157, 35.541481>,  <27.696789, 33.288509, 35.645798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055353, 33.145157, 35.541481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368658, -0.276243, -0.887570,
		0.246045, 0.891770, -0.379747,
		0.896411, -0.358379, -0.260790,
		28.324276, 33.037643, 35.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677696, 33.490894, 35.000340>,  <27.696789, 33.288509, 35.645798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677696, 33.490894, 35.000340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998098, 33.251457, 35.003784>,  <28.190340, 33.107796, 35.005852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998098, 33.251457, 35.003784>,  <27.677696, 33.490894, 35.000340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998098, 33.251457, 35.003784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165331, -0.235018, -0.957827,
		0.575372, 0.765803, -0.287217,
		0.801008, -0.598592, 0.008612,
		28.238401, 33.071880, 35.006367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106176, 33.682434, 34.516685>,  <27.677696, 33.490894, 35.000340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106176, 33.682434, 34.516685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194221, 33.294552, 34.559055>,  <28.247049, 33.061821, 34.584476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194221, 33.294552, 34.559055>,  <28.106176, 33.682434, 34.516685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194221, 33.294552, 34.559055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181907, -0.147483, -0.972193,
		0.958363, 0.194726, -0.208860,
		0.220115, -0.969706, 0.105920,
		28.260256, 33.003639, 34.590832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351822, 33.557129, 33.962341>,  <28.106176, 33.682434, 34.516685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351822, 33.557129, 33.962341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307497, 33.176983, 34.078636>,  <28.280903, 32.948895, 34.148415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307497, 33.176983, 34.078636>,  <28.351822, 33.557129, 33.962341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307497, 33.176983, 34.078636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000212, -0.292564, -0.956246,
		0.993841, -0.105902, 0.032621,
		-0.110812, -0.950364, 0.290739,
		28.274254, 32.891872, 34.165859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924330, 33.145519, 33.650173>,  <28.351822, 33.557129, 33.962341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924330, 33.145519, 33.650173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614210, 32.906307, 33.731441>,  <28.428139, 32.762779, 33.780201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614210, 32.906307, 33.731441>,  <28.924330, 33.145519, 33.650173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614210, 32.906307, 33.731441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056744, -0.386326, -0.920615,
		0.629042, -0.702223, 0.333452,
		-0.775298, -0.598027, 0.203168,
		28.381620, 32.726898, 33.792393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088514, 32.584377, 33.206226>,  <28.924330, 33.145519, 33.650173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088514, 32.584377, 33.206226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710615, 32.508736, 33.313328>,  <28.483875, 32.463352, 33.377590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710615, 32.508736, 33.313328>,  <29.088514, 32.584377, 33.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710615, 32.508736, 33.313328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108618, -0.590095, -0.799993,
		0.309283, -0.784875, 0.536951,
		-0.944746, -0.189101, 0.267758,
		28.427191, 32.452003, 33.393654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913874, 31.858303, 33.189445>,  <29.088514, 32.584377, 33.206226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913874, 31.858303, 33.189445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553650, 32.031345, 33.172272>,  <28.337515, 32.135170, 33.161968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553650, 32.031345, 33.172272>,  <28.913874, 31.858303, 33.189445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553650, 32.031345, 33.172272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221388, -0.541357, -0.811122,
		-0.374136, -0.720961, 0.583299,
		-0.900561, 0.432605, -0.042929,
		28.283482, 32.161125, 33.159393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547852, 31.385290, 32.827869>,  <28.913874, 31.858303, 33.189445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547852, 31.385290, 32.827869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317045, 31.709517, 32.787807>,  <28.178560, 31.904053, 32.763771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317045, 31.709517, 32.787807>,  <28.547852, 31.385290, 32.827869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317045, 31.709517, 32.787807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282182, -0.312934, -0.906888,
		-0.766436, -0.495028, 0.409296,
		-0.577018, 0.810567, -0.100156,
		28.143940, 31.952686, 32.757759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000870, 31.150969, 32.441067>,  <28.547852, 31.385290, 32.827869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000870, 31.150969, 32.441067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974695, 31.549023, 32.411613>,  <27.958990, 31.787855, 32.393940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974695, 31.549023, 32.411613>,  <28.000870, 31.150969, 32.441067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974695, 31.549023, 32.411613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165855, -0.083614, -0.982599,
		-0.983977, -0.052086, 0.170520,
		-0.065438, 0.995136, -0.073635,
		27.955065, 31.847563, 32.389523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460701, 31.280067, 31.995787>,  <28.000870, 31.150969, 32.441067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460701, 31.280067, 31.995787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659159, 31.627165, 32.007565>,  <27.778233, 31.835423, 32.014633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659159, 31.627165, 32.007565>,  <27.460701, 31.280067, 31.995787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659159, 31.627165, 32.007565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070290, 0.073945, -0.994782,
		-0.865391, 0.491484, 0.097681,
		0.496142, 0.867742, 0.029445,
		27.808001, 31.887487, 32.016399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112785, 31.755579, 31.611580>,  <27.460701, 31.280067, 31.995787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112785, 31.755579, 31.611580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478758, 31.917007, 31.609426>,  <27.698341, 32.013863, 31.608135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478758, 31.917007, 31.609426>,  <27.112785, 31.755579, 31.611580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478758, 31.917007, 31.609426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052794, 0.106445, -0.992916,
		-0.400138, 0.908736, 0.118696,
		0.914933, 0.403570, -0.005383,
		27.753239, 32.038078, 31.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969370, 32.380753, 31.197083>,  <27.112785, 31.755579, 31.611580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969370, 32.380753, 31.197083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353716, 32.270123, 31.190842>,  <27.584324, 32.203743, 31.187098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353716, 32.270123, 31.190842>,  <26.969370, 32.380753, 31.197083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353716, 32.270123, 31.190842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074422, 0.311979, -0.947170,
		0.266829, 0.908942, 0.320354,
		0.960866, -0.276574, -0.015600,
		27.641975, 32.187149, 31.186161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294695, 32.892124, 30.839359>,  <26.969370, 32.380753, 31.197083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294695, 32.892124, 30.839359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560331, 32.595123, 30.804321>,  <27.719713, 32.416924, 30.783298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560331, 32.595123, 30.804321>,  <27.294695, 32.892124, 30.839359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560331, 32.595123, 30.804321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162046, 0.257319, -0.952642,
		0.729877, 0.618449, 0.291204,
		0.664093, -0.742501, -0.087594,
		27.759560, 32.372372, 30.778044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985706, 33.132015, 30.699759>,  <27.294695, 32.892124, 30.839359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985706, 33.132015, 30.699759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973284, 32.760033, 30.553219>,  <27.965830, 32.536842, 30.465294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973284, 32.760033, 30.553219>,  <27.985706, 33.132015, 30.699759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973284, 32.760033, 30.553219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206540, 0.352645, -0.912679,
		0.977945, -0.104010, 0.181122,
		-0.031056, -0.929959, -0.366350,
		27.963966, 32.481045, 30.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661936, 33.075092, 30.310947>,  <27.985706, 33.132015, 30.699759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661936, 33.075092, 30.310947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430384, 32.765327, 30.208822>,  <28.291452, 32.579468, 30.147547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430384, 32.765327, 30.208822>,  <28.661936, 33.075092, 30.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430384, 32.765327, 30.208822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109490, 0.236451, -0.965455,
		0.808027, -0.586838, -0.052086,
		-0.578881, -0.774411, -0.255312,
		28.256720, 32.533005, 30.132229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086418, 32.790573, 29.901949>,  <28.661936, 33.075092, 30.310947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086418, 32.790573, 29.901949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716080, 32.672787, 29.807209>,  <28.493876, 32.602116, 29.750366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716080, 32.672787, 29.807209>,  <29.086418, 32.790573, 29.901949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716080, 32.672787, 29.807209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202750, 0.141844, -0.968903,
		0.318904, -0.945077, -0.071623,
		-0.925847, -0.294466, -0.236848,
		28.438326, 32.584446, 29.736155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125988, 32.629822, 29.214758>,  <29.086418, 32.790573, 29.901949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125988, 32.629822, 29.214758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728031, 32.617306, 29.253139>,  <28.489256, 32.609795, 29.276169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728031, 32.617306, 29.253139>,  <29.125988, 32.629822, 29.214758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728031, 32.617306, 29.253139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100503, 0.220066, -0.970294,
		0.009246, -0.974983, -0.222087,
		-0.994894, -0.031292, 0.095954,
		28.429564, 32.607918, 29.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904055, 32.252987, 28.595509>,  <29.125988, 32.629822, 29.214758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904055, 32.252987, 28.595509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604794, 32.474659, 28.741470>,  <28.425238, 32.607662, 28.829048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604794, 32.474659, 28.741470>,  <28.904055, 32.252987, 28.595509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604794, 32.474659, 28.741470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242760, 0.283209, -0.927825,
		-0.617526, -0.782738, -0.077351,
		-0.748151, 0.554178, 0.364906,
		28.380348, 32.640911, 28.850943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404770, 32.223137, 28.078163>,  <28.904055, 32.252987, 28.595509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404770, 32.223137, 28.078163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283621, 32.543938, 28.284098>,  <28.210932, 32.736420, 28.407658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283621, 32.543938, 28.284098>,  <28.404770, 32.223137, 28.078163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283621, 32.543938, 28.284098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178846, 0.482780, -0.857285,
		-0.936100, -0.351722, -0.002784,
		-0.302870, 0.802007, 0.514835,
		28.192760, 32.784538, 28.438549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721605, 32.457577, 27.810955>,  <28.404770, 32.223137, 28.078163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721605, 32.457577, 27.810955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869360, 32.775925, 28.002851>,  <27.958012, 32.966934, 28.117989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869360, 32.775925, 28.002851>,  <27.721605, 32.457577, 27.810955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869360, 32.775925, 28.002851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409988, 0.602865, -0.684445,
		-0.833945, 0.056136, 0.548985,
		0.369386, 0.795866, 0.479741,
		27.980175, 33.014683, 28.146774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194078, 33.010914, 27.809052>,  <27.721605, 32.457577, 27.810955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194078, 33.010914, 27.809052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534580, 33.206337, 27.885660>,  <27.738882, 33.323589, 27.931625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534580, 33.206337, 27.885660>,  <27.194078, 33.010914, 27.809052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534580, 33.206337, 27.885660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308417, 0.761084, -0.570640,
		-0.424554, 0.426691, 0.798554,
		0.851254, 0.488555, 0.191522,
		27.789957, 33.352905, 27.943117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029316, 33.721062, 28.008959>,  <27.194078, 33.010914, 27.809052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029316, 33.721062, 28.008959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403294, 33.715691, 27.867146>,  <27.627682, 33.712467, 27.782057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403294, 33.715691, 27.867146>,  <27.029316, 33.721062, 28.008959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403294, 33.715691, 27.867146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214978, 0.773508, -0.596213,
		0.282240, 0.633644, 0.720303,
		0.934946, -0.013426, -0.354534,
		27.683777, 33.711662, 27.760786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220146, 34.403873, 27.946560>,  <27.029316, 33.721062, 28.008959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220146, 34.403873, 27.946560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461744, 34.196026, 27.704838>,  <27.606703, 34.071316, 27.559805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461744, 34.196026, 27.704838>,  <27.220146, 34.403873, 27.946560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461744, 34.196026, 27.704838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222459, 0.618182, -0.753899,
		0.765312, 0.589784, 0.257784,
		0.603994, -0.519622, -0.604304,
		27.642942, 34.040138, 27.523546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482214, 34.866364, 27.535927>,  <27.220146, 34.403873, 27.946560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482214, 34.866364, 27.535927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577999, 34.541615, 27.322943>,  <27.635471, 34.346764, 27.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577999, 34.541615, 27.322943>,  <27.482214, 34.866364, 27.535927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577999, 34.541615, 27.322943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150295, 0.510807, -0.846456,
		0.959202, 0.282722, 0.000300,
		0.239465, -0.811877, -0.532459,
		27.649839, 34.298050, 27.163204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767054, 35.131554, 26.963255>,  <27.482214, 34.866364, 27.535927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767054, 35.131554, 26.963255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667250, 34.765121, 26.837692>,  <27.607367, 34.545261, 26.762354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667250, 34.765121, 26.837692>,  <27.767054, 35.131554, 26.963255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667250, 34.765121, 26.837692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165455, 0.359723, -0.918272,
		0.954133, -0.177181, -0.241325,
		-0.249510, -0.916082, -0.313908,
		27.592396, 34.490295, 26.743521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158403, 34.937149, 26.460068>,  <27.767054, 35.131554, 26.963255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158403, 34.937149, 26.460068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842941, 34.706596, 26.374458>,  <27.653664, 34.568264, 26.323093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842941, 34.706596, 26.374458>,  <28.158403, 34.937149, 26.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842941, 34.706596, 26.374458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006946, 0.356427, -0.934297,
		0.614799, -0.735350, -0.285101,
		-0.788653, -0.576386, -0.214023,
		27.606346, 34.533680, 26.310251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301617, 34.717861, 25.816658>,  <28.158403, 34.937149, 26.460068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301617, 34.717861, 25.816658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917362, 34.611431, 25.848606>,  <27.686810, 34.547573, 25.867775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917362, 34.611431, 25.848606>,  <28.301617, 34.717861, 25.816658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917362, 34.611431, 25.848606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129489, 0.174502, -0.976105,
		0.245786, -0.948024, -0.202087,
		-0.960636, -0.266081, 0.079869,
		27.629171, 34.531609, 25.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188309, 34.349442, 25.220528>,  <28.301617, 34.717861, 25.816658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188309, 34.349442, 25.220528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827906, 34.474030, 25.341305>,  <27.611664, 34.548782, 25.413771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827906, 34.474030, 25.341305>,  <28.188309, 34.349442, 25.220528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827906, 34.474030, 25.341305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291154, 0.081786, -0.953174,
		-0.321577, -0.946731, 0.016995,
		-0.901009, 0.311467, 0.301944,
		27.557602, 34.567471, 25.431889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688408, 34.089317, 24.703325>,  <28.188309, 34.349442, 25.220528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688408, 34.089317, 24.703325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485603, 34.375984, 24.894880>,  <27.363920, 34.547985, 25.009813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485603, 34.375984, 24.894880>,  <27.688408, 34.089317, 24.703325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485603, 34.375984, 24.894880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485575, 0.221558, -0.845653,
		-0.712150, -0.661291, 0.235661,
		-0.507010, 0.716663, 0.478889,
		27.333500, 34.590984, 25.038548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050673, 33.957256, 24.493591>,  <27.688408, 34.089317, 24.703325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050673, 33.957256, 24.493591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048729, 34.335888, 24.622570>,  <27.047562, 34.563065, 24.699957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048729, 34.335888, 24.622570>,  <27.050673, 33.957256, 24.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048729, 34.335888, 24.622570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425325, 0.289872, -0.857364,
		-0.905028, -0.141310, 0.401194,
		-0.004860, 0.946576, 0.322445,
		27.047272, 34.619862, 24.719303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394012, 34.278938, 24.237516>,  <27.050673, 33.957256, 24.493591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394012, 34.278938, 24.237516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623577, 34.591293, 24.336174>,  <26.761316, 34.778706, 24.395369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623577, 34.591293, 24.336174>,  <26.394012, 34.278938, 24.237516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623577, 34.591293, 24.336174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344956, 0.503688, -0.792025,
		-0.742717, 0.369472, 0.558445,
		0.573913, 0.780890, 0.246646,
		26.795752, 34.825562, 24.410168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995111, 34.918991, 23.989555>,  <26.394012, 34.278938, 24.237516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995111, 34.918991, 23.989555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375692, 35.039818, 24.013189>,  <26.604040, 35.112316, 24.027370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375692, 35.039818, 24.013189>,  <25.995111, 34.918991, 23.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375692, 35.039818, 24.013189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103680, 0.495282, -0.862523,
		-0.289807, 0.814524, 0.502557,
		0.951453, 0.302070, 0.059087,
		26.661129, 35.130440, 24.030916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936394, 35.573784, 23.835691>,  <25.995111, 34.918991, 23.989555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936394, 35.573784, 23.835691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323711, 35.496113, 23.772821>,  <26.556103, 35.449512, 23.735100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323711, 35.496113, 23.772821>,  <25.936394, 35.573784, 23.835691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323711, 35.496113, 23.772821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047399, 0.474938, -0.878742,
		0.245277, 0.858330, 0.450676,
		0.968293, -0.194173, -0.157176,
		26.614199, 35.437862, 23.725668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255779, 36.157806, 23.539772>,  <25.936394, 35.573784, 23.835691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255779, 36.157806, 23.539772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513252, 35.865086, 23.450201>,  <26.667736, 35.689453, 23.396458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513252, 35.865086, 23.450201>,  <26.255779, 36.157806, 23.539772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513252, 35.865086, 23.450201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108505, 0.376915, -0.919870,
		0.757563, 0.567806, 0.322017,
		0.643681, -0.731800, -0.223927,
		26.706356, 35.645546, 23.383022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793926, 36.530910, 23.345963>,  <26.255779, 36.157806, 23.539772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793926, 36.530910, 23.345963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870867, 36.169044, 23.193869>,  <26.917032, 35.951923, 23.102612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870867, 36.169044, 23.193869>,  <26.793926, 36.530910, 23.345963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870867, 36.169044, 23.193869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215387, 0.416943, -0.883044,
		0.957397, 0.087959, 0.275054,
		0.192354, -0.904666, -0.380235,
		26.928574, 35.897644, 23.079798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565546, 36.502270, 23.101265>,  <26.793926, 36.530910, 23.345963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565546, 36.502270, 23.101265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359425, 36.219425, 22.907579>,  <27.235752, 36.049721, 22.791368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359425, 36.219425, 22.907579>,  <27.565546, 36.502270, 23.101265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359425, 36.219425, 22.907579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305701, 0.376174, -0.874666,
		0.800630, -0.598743, 0.022319,
		-0.515304, -0.707107, -0.484212,
		27.204834, 36.007294, 22.762316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002258, 36.185352, 22.733206>,  <27.565546, 36.502270, 23.101265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002258, 36.185352, 22.733206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650614, 36.103321, 22.561110>,  <27.439627, 36.054100, 22.457851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650614, 36.103321, 22.561110>,  <28.002258, 36.185352, 22.733206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650614, 36.103321, 22.561110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321829, 0.410416, -0.853220,
		0.351557, -0.888538, -0.294800,
		-0.879110, -0.205080, -0.430242,
		27.386881, 36.041798, 22.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196182, 35.850437, 22.101126>,  <28.002258, 36.185352, 22.733206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196182, 35.850437, 22.101126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824444, 35.994255, 22.067560>,  <27.601400, 36.080547, 22.047421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824444, 35.994255, 22.067560>,  <28.196182, 35.850437, 22.101126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824444, 35.994255, 22.067560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267671, 0.499596, -0.823867,
		-0.254295, -0.788119, -0.560538,
		-0.929347, 0.359545, -0.083911,
		27.545639, 36.102119, 22.042387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045656, 35.992985, 21.463181>,  <28.196182, 35.850437, 22.101126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045656, 35.992985, 21.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731359, 36.216957, 21.568316>,  <27.542782, 36.351341, 21.631397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731359, 36.216957, 21.568316>,  <28.045656, 35.992985, 21.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731359, 36.216957, 21.568316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283814, 0.703914, -0.651118,
		-0.549598, -0.437014, -0.712012,
		-0.785743, 0.559932, 0.262839,
		27.495636, 36.384937, 21.647167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665615, 36.123123, 20.842859>,  <28.045656, 35.992985, 21.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665615, 36.123123, 20.842859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581921, 36.404865, 21.114183>,  <27.531704, 36.573910, 21.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581921, 36.404865, 21.114183>,  <27.665615, 36.123123, 20.842859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581921, 36.404865, 21.114183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246082, 0.709270, -0.660590,
		-0.946395, 0.028700, -0.321734,
		-0.209237, 0.704352, 0.678312,
		27.519150, 36.616173, 21.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393438, 36.621288, 20.455608>,  <27.665615, 36.123123, 20.842859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393438, 36.621288, 20.455608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460901, 36.808117, 20.802803>,  <27.501379, 36.920216, 21.011120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460901, 36.808117, 20.802803>,  <27.393438, 36.621288, 20.455608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460901, 36.808117, 20.802803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112762, 0.865677, -0.487738,
		-0.979203, 0.180136, 0.093335,
		0.168657, 0.467070, 0.867986,
		27.511497, 36.948238, 21.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127481, 37.238754, 20.293072>,  <27.393438, 36.621288, 20.455608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127481, 37.238754, 20.293072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347288, 37.306808, 20.620262>,  <27.479172, 37.347641, 20.816576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347288, 37.306808, 20.620262>,  <27.127481, 37.238754, 20.293072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347288, 37.306808, 20.620262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046094, 0.971382, -0.233005,
		-0.834209, 0.165744, 0.525951,
		0.549519, 0.170132, 0.817976,
		27.512144, 37.357849, 20.865654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965944, 37.747543, 20.814188>,  <27.127481, 37.238754, 20.293072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965944, 37.747543, 20.814188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103907, 38.118969, 20.759335>,  <27.186684, 38.341824, 20.726423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103907, 38.118969, 20.759335>,  <26.965944, 37.747543, 20.814188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103907, 38.118969, 20.759335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344466, -0.010686, -0.938738,
		-0.873145, 0.371015, 0.316173,
		0.344907, 0.928566, -0.137132,
		27.207378, 38.397537, 20.718195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418583, 38.222218, 20.472780>,  <26.965944, 37.747543, 20.814188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418583, 38.222218, 20.472780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764830, 38.400047, 20.380638>,  <26.972578, 38.506744, 20.325354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764830, 38.400047, 20.380638>,  <26.418583, 38.222218, 20.472780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764830, 38.400047, 20.380638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204235, -0.106549, -0.973106,
		-0.457164, 0.889381, -0.001432,
		0.865615, 0.444577, -0.230353,
		27.024513, 38.533421, 20.311533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270720, 38.591774, 19.907503>,  <26.418583, 38.222218, 20.472780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270720, 38.591774, 19.907503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667252, 38.548100, 19.878254>,  <26.905170, 38.521896, 19.860704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667252, 38.548100, 19.878254>,  <26.270720, 38.591774, 19.907503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667252, 38.548100, 19.878254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110016, -0.385245, -0.916233,
		0.071868, 0.916332, -0.393916,
		0.991328, -0.109185, -0.073124,
		26.964649, 38.515343, 19.856318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527771, 38.795406, 19.213326>,  <26.270720, 38.591774, 19.907503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527771, 38.795406, 19.213326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795683, 38.540386, 19.365597>,  <26.956430, 38.387375, 19.456961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795683, 38.540386, 19.365597>,  <26.527771, 38.795406, 19.213326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795683, 38.540386, 19.365597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103439, -0.587769, -0.802389,
		0.735318, 0.498049, -0.459625,
		0.669782, -0.637554, 0.380679,
		26.996618, 38.349121, 19.479801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217258, 38.433849, 18.581434>,  <26.527771, 38.795406, 19.213326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217258, 38.433849, 18.581434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493036, 38.171135, 18.459251>,  <26.658503, 38.013508, 18.385942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493036, 38.171135, 18.459251>,  <26.217258, 38.433849, 18.581434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493036, 38.171135, 18.459251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652825, 0.380719, 0.654884,
		-0.313823, -0.650916, 0.691248,
		0.689445, -0.656782, -0.305456,
		26.699869, 37.974102, 18.367615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549698, 38.055275, 19.227627>,  <26.217258, 38.433849, 18.581434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549698, 38.055275, 19.227627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807352, 38.082367, 18.922863>,  <26.961945, 38.098621, 18.740005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807352, 38.082367, 18.922863>,  <26.549698, 38.055275, 19.227627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807352, 38.082367, 18.922863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716144, 0.296577, 0.631807,
		0.268758, -0.952604, 0.142529,
		0.644133, 0.067732, -0.761909,
		27.000591, 38.102688, 18.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154716, 37.610222, 19.439964>,  <26.549698, 38.055275, 19.227627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154716, 37.610222, 19.439964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230558, 37.924416, 19.204315>,  <27.276064, 38.112930, 19.062925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230558, 37.924416, 19.204315>,  <27.154716, 37.610222, 19.439964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230558, 37.924416, 19.204315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504720, 0.436690, 0.744687,
		0.842203, -0.438539, -0.313650,
		0.189607, 0.785483, -0.589122,
		27.287441, 38.160061, 19.027578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889801, 37.835690, 19.322664>,  <27.154716, 37.610222, 19.439964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889801, 37.835690, 19.322664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626579, 38.136772, 19.330637>,  <27.468647, 38.317421, 19.335421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626579, 38.136772, 19.330637>,  <27.889801, 37.835690, 19.322664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626579, 38.136772, 19.330637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470021, 0.389945, 0.791848,
		0.588257, 0.530448, -0.610392,
		-0.658054, 0.752707, 0.019934,
		27.429163, 38.362583, 19.336617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205412, 38.398731, 19.675163>,  <27.889801, 37.835690, 19.322664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205412, 38.398731, 19.675163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814526, 38.439358, 19.749712>,  <27.579994, 38.463734, 19.794441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814526, 38.439358, 19.749712>,  <28.205412, 38.398731, 19.675163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814526, 38.439358, 19.749712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211549, 0.394963, 0.894008,
		0.017188, 0.913066, -0.407450,
		-0.977216, 0.101562, 0.186370,
		27.521360, 38.469826, 19.805622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264977, 38.910954, 20.121193>,  <28.205412, 38.398731, 19.675163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264977, 38.910954, 20.121193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883051, 38.804073, 20.173248>,  <27.653896, 38.739944, 20.204481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883051, 38.804073, 20.173248>,  <28.264977, 38.910954, 20.121193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883051, 38.804073, 20.173248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045156, 0.302364, 0.952122,
		-0.293752, 0.914977, -0.276636,
		-0.954815, -0.267196, 0.130137,
		27.596607, 38.723915, 20.212290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845068, 39.496960, 20.475773>,  <28.264977, 38.910954, 20.121193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845068, 39.496960, 20.475773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681492, 39.140194, 20.552986>,  <27.583347, 38.926136, 20.599314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681492, 39.140194, 20.552986>,  <27.845068, 39.496960, 20.475773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681492, 39.140194, 20.552986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046085, 0.191077, 0.980493,
		-0.911397, 0.409858, -0.037035,
		-0.408939, -0.891912, 0.193035,
		27.558809, 38.872620, 20.610897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202299, 39.540646, 20.935246>,  <27.845068, 39.496960, 20.475773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202299, 39.540646, 20.935246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421099, 39.209126, 20.982359>,  <27.552380, 39.010212, 21.010628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421099, 39.209126, 20.982359>,  <27.202299, 39.540646, 20.935246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421099, 39.209126, 20.982359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157044, 0.239796, 0.958037,
		-0.822270, -0.505550, 0.261327,
		0.547001, -0.828805, 0.117784,
		27.585199, 38.960484, 21.017694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138546, 39.435272, 21.654829>,  <27.202299, 39.540646, 20.935246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138546, 39.435272, 21.654829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458220, 39.221684, 21.544424>,  <27.650023, 39.093529, 21.478182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458220, 39.221684, 21.544424>,  <27.138546, 39.435272, 21.654829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458220, 39.221684, 21.544424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396543, 0.123268, 0.909702,
		-0.451733, -0.836468, 0.310257,
		0.799181, -0.533972, -0.276011,
		27.697973, 39.061493, 21.461620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297703, 38.944729, 22.184462>,  <27.138546, 39.435272, 21.654829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297703, 38.944729, 22.184462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630743, 39.012096, 21.973404>,  <27.830568, 39.052517, 21.846769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630743, 39.012096, 21.973404>,  <27.297703, 38.944729, 22.184462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630743, 39.012096, 21.973404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512699, 0.126075, 0.849261,
		0.209558, -0.977619, 0.018620,
		0.832602, 0.168423, -0.527644,
		27.880524, 39.062622, 21.815111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708960, 38.369854, 22.268866>,  <27.297703, 38.944729, 22.184462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708960, 38.369854, 22.268866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959044, 38.670868, 22.186113>,  <28.109095, 38.851479, 22.136463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959044, 38.670868, 22.186113>,  <27.708960, 38.369854, 22.268866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959044, 38.670868, 22.186113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360710, -0.043557, 0.931660,
		0.692100, -0.657106, -0.298681,
		0.625209, 0.752539, -0.206879,
		28.146606, 38.896629, 22.124050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315018, 38.132782, 22.559177>,  <27.708960, 38.369854, 22.268866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315018, 38.132782, 22.559177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372103, 38.526318, 22.515934>,  <28.406353, 38.762440, 22.489988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372103, 38.526318, 22.515934>,  <28.315018, 38.132782, 22.559177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372103, 38.526318, 22.515934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476865, 0.027365, 0.878551,
		0.867314, -0.176930, -0.465255,
		0.142711, 0.983843, -0.108106,
		28.414915, 38.821472, 22.483501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033506, 38.269573, 22.681141>,  <28.315018, 38.132782, 22.559177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033506, 38.269573, 22.681141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837667, 38.612804, 22.743103>,  <28.720165, 38.818745, 22.780281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837667, 38.612804, 22.743103>,  <29.033506, 38.269573, 22.681141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837667, 38.612804, 22.743103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624421, 0.221031, 0.749162,
		0.608601, 0.463513, -0.644018,
		-0.489595, 0.858080, 0.154907,
		28.690788, 38.870228, 22.789576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489307, 38.811523, 22.758745>,  <29.033506, 38.269573, 22.681141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489307, 38.811523, 22.758745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177349, 38.972679, 22.950346>,  <28.990175, 39.069374, 23.065306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177349, 38.972679, 22.950346>,  <29.489307, 38.811523, 22.758745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177349, 38.972679, 22.950346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598013, 0.253702, 0.760273,
		0.184785, 0.879382, -0.438796,
		-0.779894, 0.402893, 0.479002,
		28.943380, 39.093548, 23.094046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771908, 39.304535, 23.044683>,  <29.489307, 38.811523, 22.758745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771908, 39.304535, 23.044683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431711, 39.273647, 23.252798>,  <29.227592, 39.255116, 23.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431711, 39.273647, 23.252798>,  <29.771908, 39.304535, 23.044683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431711, 39.273647, 23.252798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513824, 0.089515, 0.853213,
		-0.112459, 0.992988, -0.036455,
		-0.850493, -0.077220, 0.520288,
		29.176563, 39.250481, 23.408884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863798, 39.720520, 23.670782>,  <29.771908, 39.304535, 23.044683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863798, 39.720520, 23.670782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562235, 39.482880, 23.782976>,  <29.381296, 39.340298, 23.850292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562235, 39.482880, 23.782976>,  <29.863798, 39.720520, 23.670782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562235, 39.482880, 23.782976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391869, -0.063974, 0.917794,
		-0.527316, 0.801845, 0.281040,
		-0.753908, -0.594098, 0.280484,
		29.336063, 39.304649, 23.867121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626600, 39.947521, 24.395500>,  <29.863798, 39.720520, 23.670782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626600, 39.947521, 24.395500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513258, 39.568642, 24.335478>,  <29.445251, 39.341312, 24.299465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513258, 39.568642, 24.335478>,  <29.626600, 39.947521, 24.395500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513258, 39.568642, 24.335478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351586, -0.248177, 0.902660,
		-0.892242, 0.203017, 0.403346,
		-0.283357, -0.947202, -0.150056,
		29.428251, 39.284481, 24.290461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429668, 39.750614, 25.050220>,  <29.626600, 39.947521, 24.395500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429668, 39.750614, 25.050220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461636, 39.394062, 24.871756>,  <29.480816, 39.180130, 24.764677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461636, 39.394062, 24.871756>,  <29.429668, 39.750614, 25.050220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461636, 39.394062, 24.871756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279546, -0.409589, 0.868384,
		-0.956800, -0.194124, 0.216447,
		0.079920, -0.891377, -0.446162,
		29.485611, 39.126648, 24.737907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992863, 39.230457, 25.369129>,  <29.429668, 39.750614, 25.050220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992863, 39.230457, 25.369129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289711, 39.017262, 25.206562>,  <29.467819, 38.889343, 25.109022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289711, 39.017262, 25.206562>,  <28.992863, 39.230457, 25.369129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289711, 39.017262, 25.206562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156107, -0.452236, 0.878131,
		-0.651835, -0.715123, -0.252409,
		0.742120, -0.532993, -0.406419,
		29.512346, 38.857365, 25.084637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849745, 38.615849, 25.467819>,  <28.992863, 39.230457, 25.369129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849745, 38.615849, 25.467819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239096, 38.574821, 25.385824>,  <29.472706, 38.550205, 25.336628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239096, 38.574821, 25.385824>,  <28.849745, 38.615849, 25.467819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239096, 38.574821, 25.385824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138791, -0.447982, 0.883204,
		-0.182419, -0.888139, -0.421820,
		0.973376, -0.102568, -0.204986,
		29.531109, 38.544052, 25.324327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030996, 37.931046, 25.548470>,  <28.849745, 38.615849, 25.467819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030996, 37.931046, 25.548470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362530, 38.149513, 25.597029>,  <29.561451, 38.280594, 25.626163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362530, 38.149513, 25.597029>,  <29.030996, 37.931046, 25.548470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362530, 38.149513, 25.597029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155759, -0.433641, 0.887522,
		0.537376, -0.716700, -0.444487,
		0.828834, 0.546165, 0.121396,
		29.611179, 38.313362, 25.633448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588337, 37.449150, 25.795788>,  <29.030996, 37.931046, 25.548470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588337, 37.449150, 25.795788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692867, 37.824612, 25.885796>,  <29.755585, 38.049889, 25.939800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692867, 37.824612, 25.885796>,  <29.588337, 37.449150, 25.795788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692867, 37.824612, 25.885796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180228, -0.276469, 0.943972,
		0.948276, -0.206129, -0.241420,
		0.261325, 0.938656, 0.225019,
		29.771265, 38.106209, 25.953300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030586, 37.278954, 26.338648>,  <29.588337, 37.449150, 25.795788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030586, 37.278954, 26.338648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010855, 37.677689, 26.363571>,  <29.999016, 37.916931, 26.378525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010855, 37.677689, 26.363571>,  <30.030586, 37.278954, 26.338648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010855, 37.677689, 26.363571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000521, -0.062412, 0.998051,
		0.998783, 0.049199, 0.003598,
		-0.049328, 0.996837, 0.062310,
		29.996056, 37.976738, 26.382265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487453, 37.465988, 26.826340>,  <30.030586, 37.278954, 26.338648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487453, 37.465988, 26.826340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270512, 37.802036, 26.829304>,  <30.140347, 38.003666, 26.831081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270512, 37.802036, 26.829304>,  <30.487453, 37.465988, 26.826340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270512, 37.802036, 26.829304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116491, 0.066462, 0.990966,
		0.832035, 0.538318, -0.133912,
		-0.542355, 0.840117, 0.007411,
		30.107805, 38.054070, 26.831528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737963, 37.835419, 27.364016>,  <30.487453, 37.465988, 26.826340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737963, 37.835419, 27.364016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382196, 37.999271, 27.282881>,  <30.168737, 38.097584, 27.234200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382196, 37.999271, 27.282881>,  <30.737963, 37.835419, 27.364016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382196, 37.999271, 27.282881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212074, 0.023299, 0.976976,
		0.404928, 0.911953, 0.066150,
		-0.889414, 0.409633, -0.202836,
		30.115372, 38.122162, 27.222031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623455, 38.368008, 27.771439>,  <30.737963, 37.835419, 27.364016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623455, 38.368008, 27.771439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248571, 38.292496, 27.654133>,  <30.023642, 38.247189, 27.583750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248571, 38.292496, 27.654133>,  <30.623455, 38.368008, 27.771439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248571, 38.292496, 27.654133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242837, -0.250343, 0.937208,
		-0.250343, 0.949574, 0.188780,
		-0.937208, -0.188780, -0.293263,
		29.967409, 38.235863, 27.566154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231783, 38.865093, 28.132206>,  <30.623455, 38.368008, 27.771439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231783, 38.865093, 28.132206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998379, 38.563351, 28.011900>,  <29.858335, 38.382305, 27.939716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998379, 38.563351, 28.011900>,  <30.231783, 38.865093, 28.132206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998379, 38.563351, 28.011900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364865, -0.087351, 0.926954,
		-0.725527, 0.650626, -0.224268,
		-0.583510, -0.754358, -0.300766,
		29.823326, 38.337044, 27.921671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603617, 39.023277, 28.476519>,  <30.231783, 38.865093, 28.132206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603617, 39.023277, 28.476519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595766, 38.637367, 28.371586>,  <29.591055, 38.405819, 28.308626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595766, 38.637367, 28.371586>,  <29.603617, 39.023277, 28.476519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595766, 38.637367, 28.371586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349599, -0.239199, 0.905850,
		-0.936694, 0.109491, -0.332590,
		-0.019628, -0.964778, -0.262334,
		29.589878, 38.347935, 28.292885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982208, 38.712288, 28.752014>,  <29.603617, 39.023277, 28.476519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982208, 38.712288, 28.752014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203880, 38.390438, 28.666727>,  <29.336884, 38.197327, 28.615555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203880, 38.390438, 28.666727>,  <28.982208, 38.712288, 28.752014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203880, 38.390438, 28.666727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349445, -0.457368, 0.817743,
		-0.755497, -0.378668, -0.534636,
		0.554178, -0.804628, -0.213217,
		29.370134, 38.149052, 28.602762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530724, 37.966427, 28.878042>,  <28.982208, 38.712288, 28.752014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530724, 37.966427, 28.878042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922785, 37.890057, 28.899376>,  <29.158022, 37.844234, 28.912176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922785, 37.890057, 28.899376>,  <28.530724, 37.966427, 28.878042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922785, 37.890057, 28.899376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147140, -0.520380, 0.841163,
		-0.132846, -0.832317, -0.538145,
		0.980154, -0.190928, 0.053337,
		29.216831, 37.832779, 28.915377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551453, 37.293179, 29.004953>,  <28.530724, 37.966427, 28.878042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551453, 37.293179, 29.004953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919521, 37.407753, 29.111713>,  <29.140364, 37.476498, 29.175770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919521, 37.407753, 29.111713>,  <28.551453, 37.293179, 29.004953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919521, 37.407753, 29.111713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051890, -0.586484, 0.808297,
		0.388057, -0.757623, -0.524804,
		0.920174, 0.286433, 0.266903,
		29.195574, 37.493683, 29.191784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904001, 36.662479, 29.197252>,  <28.551453, 37.293179, 29.004953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904001, 36.662479, 29.197252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174768, 36.922558, 29.335253>,  <29.337229, 37.078606, 29.418053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174768, 36.922558, 29.335253>,  <28.904001, 36.662479, 29.197252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174768, 36.922558, 29.335253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147103, -0.578760, 0.802121,
		0.721208, -0.492221, -0.487420,
		0.676920, 0.650196, 0.344999,
		29.377844, 37.117619, 29.438753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524733, 36.275890, 29.423281>,  <28.904001, 36.662479, 29.197252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524733, 36.275890, 29.423281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489283, 36.622276, 29.620153>,  <29.468012, 36.830109, 29.738277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489283, 36.622276, 29.620153>,  <29.524733, 36.275890, 29.423281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489283, 36.622276, 29.620153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045155, -0.490127, 0.870481,
		0.995041, 0.099372, 0.004335,
		-0.088626, 0.865968, 0.492183,
		29.462694, 36.882069, 29.767809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121187, 36.338417, 29.841673>,  <29.524733, 36.275890, 29.423281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121187, 36.338417, 29.841673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834545, 36.563229, 30.006887>,  <29.662560, 36.698116, 30.106016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834545, 36.563229, 30.006887>,  <30.121187, 36.338417, 29.841673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834545, 36.563229, 30.006887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127525, -0.476625, 0.869808,
		0.685722, 0.675982, 0.269879,
		-0.716605, 0.562030, 0.413036,
		29.619564, 36.731838, 30.130798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430836, 36.639793, 30.440149>,  <30.121187, 36.338417, 29.841673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430836, 36.639793, 30.440149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034435, 36.670643, 30.483919>,  <29.796595, 36.689152, 30.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034435, 36.670643, 30.483919>,  <30.430836, 36.639793, 30.440149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034435, 36.670643, 30.483919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052384, -0.528799, 0.847129,
		0.123197, 0.845236, 0.519999,
		-0.990999, 0.077124, 0.109423,
		29.737135, 36.693779, 30.516747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340588, 36.565514, 31.159883>,  <30.430836, 36.639793, 30.440149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340588, 36.565514, 31.159883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953245, 36.532413, 31.065699>,  <29.720840, 36.512554, 31.009188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953245, 36.532413, 31.065699>,  <30.340588, 36.565514, 31.159883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953245, 36.532413, 31.065699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171932, -0.462696, 0.869685,
		-0.180912, 0.882647, 0.433826,
		-0.968354, -0.082748, -0.235463,
		29.662739, 36.507587, 30.995060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882862, 36.952301, 31.789740>,  <30.340588, 36.565514, 31.159883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882862, 36.952301, 31.789740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681063, 36.679108, 31.578451>,  <29.559984, 36.515190, 31.451679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681063, 36.679108, 31.578451>,  <29.882862, 36.952301, 31.789740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681063, 36.679108, 31.578451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095481, -0.563897, 0.820307,
		-0.858117, 0.464278, 0.219273,
		-0.504498, -0.682983, -0.528220,
		29.529713, 36.474213, 31.419985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347263, 36.764847, 32.270100>,  <29.882862, 36.952301, 31.789740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347263, 36.764847, 32.270100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378731, 36.460297, 32.012688>,  <29.397612, 36.277569, 31.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378731, 36.460297, 32.012688>,  <29.347263, 36.764847, 32.270100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378731, 36.460297, 32.012688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105130, -0.648262, 0.754124,
		-0.991342, 0.008328, -0.131041,
		0.078669, -0.761371, -0.643525,
		29.402332, 36.231884, 31.819630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864225, 36.279987, 32.394035>,  <29.347263, 36.764847, 32.270100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864225, 36.279987, 32.394035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134151, 36.066704, 32.189953>,  <29.296106, 35.938732, 32.067501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134151, 36.066704, 32.189953>,  <28.864225, 36.279987, 32.394035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134151, 36.066704, 32.189953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016755, -0.680103, 0.732925,
		-0.737799, -0.503136, -0.450008,
		0.674812, -0.533212, -0.510210,
		29.336596, 35.906742, 32.036892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605124, 35.632435, 32.427433>,  <28.864225, 36.279987, 32.394035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605124, 35.632435, 32.427433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997047, 35.592510, 32.358143>,  <29.232203, 35.568554, 32.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997047, 35.592510, 32.358143>,  <28.605124, 35.632435, 32.427433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997047, 35.592510, 32.358143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050899, -0.713370, 0.698936,
		-0.193342, -0.693642, -0.693887,
		0.979810, -0.099816, -0.173230,
		29.290991, 35.562565, 32.306175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740946, 34.926109, 32.467392>,  <28.605124, 35.632435, 32.427433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740946, 34.926109, 32.467392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114820, 35.057350, 32.522106>,  <29.339146, 35.136093, 32.554935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114820, 35.057350, 32.522106>,  <28.740946, 34.926109, 32.467392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114820, 35.057350, 32.522106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085583, -0.581186, 0.809258,
		0.345012, -0.744698, -0.571307,
		0.934688, 0.328098, 0.136783,
		29.395227, 35.155781, 32.563141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181192, 34.289200, 32.630154>,  <28.740946, 34.926109, 32.467392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181192, 34.289200, 32.630154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409475, 34.590206, 32.761612>,  <29.546446, 34.770809, 32.840488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409475, 34.590206, 32.761612>,  <29.181192, 34.289200, 32.630154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409475, 34.590206, 32.761612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204755, -0.517996, 0.830515,
		0.795215, -0.406691, -0.449707,
		0.570709, 0.752518, 0.328645,
		29.580688, 34.815960, 32.860207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914913, 34.038940, 32.846825>,  <29.181192, 34.289200, 32.630154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914913, 34.038940, 32.846825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847424, 34.372299, 33.057339>,  <29.806931, 34.572315, 33.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847424, 34.372299, 33.057339>,  <29.914913, 34.038940, 32.846825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847424, 34.372299, 33.057339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331225, -0.454951, 0.826626,
		0.928344, 0.313789, -0.199283,
		-0.168723, 0.833400, 0.526285,
		29.796806, 34.622318, 33.215225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438206, 33.962376, 33.322968>,  <29.914913, 34.038940, 32.846825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438206, 33.962376, 33.322968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181070, 34.232769, 33.467079>,  <30.026789, 34.395004, 33.553547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181070, 34.232769, 33.467079>,  <30.438206, 33.962376, 33.322968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181070, 34.232769, 33.467079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189450, -0.315421, 0.929849,
		0.742204, 0.665998, 0.074699,
		-0.642839, 0.675985, 0.360280,
		29.988218, 34.435566, 33.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847908, 34.488178, 33.694546>,  <30.438206, 33.962376, 33.322968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847908, 34.488178, 33.694546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495131, 34.639927, 33.582653>,  <30.283464, 34.730976, 33.515518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495131, 34.639927, 33.582653>,  <30.847908, 34.488178, 33.694546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495131, 34.639927, 33.582653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469054, -0.647778, 0.600310,
		0.046536, 0.660650, 0.749250,
		-0.881942, 0.379375, -0.279736,
		30.230547, 34.753738, 33.498734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875105, 35.151279, 33.389202>,  <30.847908, 34.488178, 33.694546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875105, 35.151279, 33.389202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196060, 35.040695, 33.600761>,  <31.388634, 34.974342, 33.727699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196060, 35.040695, 33.600761>,  <30.875105, 35.151279, 33.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196060, 35.040695, 33.600761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592174, 0.258694, -0.763156,
		0.074162, 0.925551, 0.371289,
		0.802390, -0.276465, 0.528902,
		31.436777, 34.957756, 33.759434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330395, 35.782722, 33.583549>,  <30.875105, 35.151279, 33.389202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330395, 35.782722, 33.583549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528959, 35.437157, 33.549564>,  <31.648098, 35.229816, 33.529175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528959, 35.437157, 33.549564>,  <31.330395, 35.782722, 33.583549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528959, 35.437157, 33.549564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327842, 0.277200, -0.903150,
		0.803800, 0.420481, 0.420834,
		0.496413, -0.863919, -0.084962,
		31.677883, 35.177982, 33.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911491, 36.062466, 33.349712>,  <31.330395, 35.782722, 33.583549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911491, 36.062466, 33.349712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935364, 35.670242, 33.274948>,  <31.949688, 35.434906, 33.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935364, 35.670242, 33.274948>,  <31.911491, 36.062466, 33.349712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935364, 35.670242, 33.274948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460196, 0.193190, -0.866543,
		0.885809, -0.034300, 0.462781,
		0.059682, -0.980561, -0.186914,
		31.953268, 35.376072, 33.218872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593872, 36.006020, 33.071430>,  <31.911491, 36.062466, 33.349712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593872, 36.006020, 33.071430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405823, 35.668774, 32.967014>,  <32.292992, 35.466427, 32.904366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405823, 35.668774, 32.967014>,  <32.593872, 36.006020, 33.071430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405823, 35.668774, 32.967014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391440, 0.065903, -0.917841,
		0.791049, -0.533679, 0.299047,
		-0.470124, -0.843116, -0.261036,
		32.264786, 35.415840, 32.888702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205845, 35.497826, 32.732452>,  <32.593872, 36.006020, 33.071430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205845, 35.497826, 32.732452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852016, 35.361195, 32.605415>,  <32.639721, 35.279217, 32.529194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852016, 35.361195, 32.605415>,  <33.205845, 35.497826, 32.732452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852016, 35.361195, 32.605415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264341, 0.193845, -0.944748,
		0.384264, -0.919648, -0.081178,
		-0.884571, -0.341574, -0.317588,
		32.586647, 35.258724, 32.510139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328197, 35.144646, 32.134705>,  <33.205845, 35.497826, 32.732452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328197, 35.144646, 32.134705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940460, 35.241184, 32.116276>,  <32.707817, 35.299107, 32.105217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940460, 35.241184, 32.116276>,  <33.328197, 35.144646, 32.134705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940460, 35.241184, 32.116276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083496, 0.147207, -0.985575,
		-0.231079, -0.959210, -0.162846,
		-0.969346, 0.241342, -0.046074,
		32.649658, 35.313587, 32.102455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117184, 34.822369, 31.488180>,  <33.328197, 35.144646, 32.134705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117184, 34.822369, 31.488180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818947, 35.073948, 31.576284>,  <32.640003, 35.224895, 31.629147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818947, 35.073948, 31.576284>,  <33.117184, 34.822369, 31.488180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818947, 35.073948, 31.576284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155761, 0.156894, -0.975255,
		-0.647941, -0.761453, -0.019014,
		-0.745595, 0.628946, 0.220262,
		32.595268, 35.262630, 31.642363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481529, 34.602779, 31.149296>,  <33.117184, 34.822369, 31.488180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481529, 34.602779, 31.149296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441326, 34.993889, 31.222904>,  <32.417206, 35.228554, 31.267069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441326, 34.993889, 31.222904>,  <32.481529, 34.602779, 31.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441326, 34.993889, 31.222904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292065, 0.147812, -0.944907,
		-0.951102, -0.148717, 0.270716,
		-0.100508, 0.977770, 0.184020,
		32.411175, 35.287220, 31.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875280, 34.833984, 30.763901>,  <32.481529, 34.602779, 31.149296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875280, 34.833984, 30.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078152, 35.169701, 30.842245>,  <32.199875, 35.371132, 30.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078152, 35.169701, 30.842245>,  <31.875280, 34.833984, 30.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078152, 35.169701, 30.842245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197479, 0.334387, -0.921514,
		-0.838911, 0.428694, 0.335336,
		0.507179, 0.839290, 0.195863,
		32.230305, 35.421486, 30.901005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555832, 35.375378, 30.509340>,  <31.875280, 34.833984, 30.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555832, 35.375378, 30.509340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932629, 35.509518, 30.514866>,  <32.158707, 35.590000, 30.518181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932629, 35.509518, 30.514866>,  <31.555832, 35.375378, 30.509340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932629, 35.509518, 30.514866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086157, 0.281384, -0.955720,
		-0.324383, 0.899092, 0.293955,
		0.941994, 0.335346, 0.013813,
		32.215225, 35.610123, 30.519011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495268, 35.925152, 30.130024>,  <31.555832, 35.375378, 30.509340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495268, 35.925152, 30.130024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892433, 35.877918, 30.124689>,  <32.130733, 35.849579, 30.121489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892433, 35.877918, 30.124689>,  <31.495268, 35.925152, 30.130024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892433, 35.877918, 30.124689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040582, 0.442427, -0.895886,
		0.111694, 0.888996, 0.444084,
		0.992914, -0.118087, -0.013339,
		32.190308, 35.842491, 30.120687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871462, 36.654514, 30.073206>,  <31.495268, 35.925152, 30.130024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871462, 36.654514, 30.073206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112453, 36.353313, 29.967375>,  <32.257050, 36.172592, 29.903875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112453, 36.353313, 29.967375>,  <31.871462, 36.654514, 30.073206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112453, 36.353313, 29.967375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137235, 0.424293, -0.895065,
		0.786248, 0.502949, 0.358967,
		0.602479, -0.753006, -0.264578,
		32.293198, 36.127411, 29.888002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531498, 36.909065, 29.813578>,  <31.871462, 36.654514, 30.073206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531498, 36.909065, 29.813578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467472, 36.544868, 29.661064>,  <32.429058, 36.326351, 29.569555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467472, 36.544868, 29.661064>,  <32.531498, 36.909065, 29.813578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467472, 36.544868, 29.661064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175978, 0.353757, -0.918633,
		0.971294, -0.214134, 0.103605,
		-0.160060, -0.910495, -0.381285,
		32.419453, 36.271721, 29.546679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988388, 36.937141, 29.289394>,  <32.531498, 36.909065, 29.813578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988388, 36.937141, 29.289394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741440, 36.634075, 29.204731>,  <32.593269, 36.452236, 29.153933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741440, 36.634075, 29.204731>,  <32.988388, 36.937141, 29.289394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741440, 36.634075, 29.204731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140582, 0.158467, -0.977305,
		0.774010, -0.633113, 0.008682,
		-0.617369, -0.757665, -0.211659,
		32.556229, 36.406776, 29.141233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400711, 36.565430, 28.701637>,  <32.988388, 36.937141, 29.289394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400711, 36.565430, 28.701637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033283, 36.407906, 28.688070>,  <32.812828, 36.313393, 28.679930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033283, 36.407906, 28.688070>,  <33.400711, 36.565430, 28.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033283, 36.407906, 28.688070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027279, 0.022445, -0.999376,
		0.394325, -0.918918, -0.009875,
		-0.918566, -0.393810, -0.033918,
		32.757713, 36.289764, 28.677895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345280, 36.005882, 28.184879>,  <33.400711, 36.565430, 28.701637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345280, 36.005882, 28.184879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975204, 36.152271, 28.225050>,  <32.753159, 36.240105, 28.249153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975204, 36.152271, 28.225050>,  <33.345280, 36.005882, 28.184879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975204, 36.152271, 28.225050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058241, 0.124567, -0.990500,
		-0.375009, -0.922250, -0.093934,
		-0.925190, 0.365976, 0.100426,
		32.697647, 36.262066, 28.255178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920311, 35.660221, 27.712759>,  <33.345280, 36.005882, 28.184879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920311, 35.660221, 27.712759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739731, 36.000908, 27.819172>,  <32.631382, 36.205318, 27.883020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739731, 36.000908, 27.819172>,  <32.920311, 35.660221, 27.712759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739731, 36.000908, 27.819172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090214, 0.253050, -0.963238,
		-0.887725, -0.458853, -0.037402,
		-0.451449, 0.851716, 0.266034,
		32.604298, 36.256424, 27.898983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263226, 35.633163, 27.270990>,  <32.920311, 35.660221, 27.712759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263226, 35.633163, 27.270990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287727, 36.011818, 27.397562>,  <32.302429, 36.239010, 27.473505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287727, 36.011818, 27.397562>,  <32.263226, 35.633163, 27.270990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287727, 36.011818, 27.397562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138523, 0.322017, -0.936545,
		-0.988463, 0.013535, 0.150856,
		0.061254, 0.946637, 0.316427,
		32.306103, 36.295811, 27.492491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811159, 35.884472, 26.828392>,  <32.263226, 35.633163, 27.270990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811159, 35.884472, 26.828392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026321, 36.206306, 26.929026>,  <32.155418, 36.399406, 26.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026321, 36.206306, 26.929026>,  <31.811159, 35.884472, 26.828392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026321, 36.206306, 26.929026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047322, 0.269147, -0.961935,
		-0.841675, 0.529336, 0.106701,
		0.537906, 0.804588, 0.251584,
		32.187695, 36.447681, 27.004501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472328, 36.446873, 26.640636>,  <31.811159, 35.884472, 26.828392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472328, 36.446873, 26.640636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857252, 36.555622, 26.643444>,  <32.088207, 36.620872, 26.645128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857252, 36.555622, 26.643444>,  <31.472328, 36.446873, 26.640636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857252, 36.555622, 26.643444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071554, 0.278008, -0.957910,
		-0.262380, 0.921302, 0.286982,
		0.962308, 0.271871, 0.007020,
		32.145943, 36.637184, 26.645550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337360, 37.144936, 26.464054>,  <31.472328, 36.446873, 26.640636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337360, 37.144936, 26.464054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730568, 37.095062, 26.410200>,  <31.966492, 37.065140, 26.377888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730568, 37.095062, 26.410200>,  <31.337360, 37.144936, 26.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730568, 37.095062, 26.410200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079866, 0.369869, -0.925645,
		0.165209, 0.920680, 0.353631,
		0.983020, -0.124682, -0.134636,
		32.025475, 37.057659, 26.369810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631411, 37.770828, 26.282864>,  <31.337360, 37.144936, 26.464054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631411, 37.770828, 26.282864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876783, 37.492802, 26.132889>,  <32.024006, 37.325985, 26.042904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876783, 37.492802, 26.132889>,  <31.631411, 37.770828, 26.282864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876783, 37.492802, 26.132889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131473, 0.378253, -0.916319,
		0.778726, 0.611395, 0.140650,
		0.613434, -0.695069, -0.374937,
		32.060814, 37.284283, 26.020409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138020, 38.107414, 25.888767>,  <31.631411, 37.770828, 26.282864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138020, 38.107414, 25.888767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168499, 37.728409, 25.764561>,  <32.186787, 37.501007, 25.690037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168499, 37.728409, 25.764561>,  <32.138020, 38.107414, 25.888767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168499, 37.728409, 25.764561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080697, 0.304538, -0.949075,
		0.993822, 0.097380, -0.053254,
		0.076203, -0.947509, -0.310515,
		32.191360, 37.444157, 25.671406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616238, 38.156013, 25.332748>,  <32.138020, 38.107414, 25.888767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616238, 38.156013, 25.332748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402416, 37.819775, 25.297752>,  <32.274124, 37.618031, 25.276754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402416, 37.819775, 25.297752>,  <32.616238, 38.156013, 25.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402416, 37.819775, 25.297752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080001, 0.153389, -0.984922,
		0.841338, -0.519496, -0.149243,
		-0.534555, -0.840592, -0.087492,
		32.242050, 37.567596, 25.271505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947536, 37.684841, 24.808638>,  <32.616238, 38.156013, 25.332748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947536, 37.684841, 24.808638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556053, 37.602894, 24.803497>,  <32.321163, 37.553726, 24.800413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556053, 37.602894, 24.803497>,  <32.947536, 37.684841, 24.808638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556053, 37.602894, 24.803497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020247, 0.158640, -0.987129,
		0.204276, -0.965847, -0.159410,
		-0.978704, -0.204874, -0.012851,
		32.262444, 37.541431, 24.799643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801186, 37.412697, 24.169901>,  <32.947536, 37.684841, 24.808638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801186, 37.412697, 24.169901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431232, 37.480179, 24.306211>,  <32.209259, 37.520668, 24.387999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431232, 37.480179, 24.306211>,  <32.801186, 37.412697, 24.169901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431232, 37.480179, 24.306211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326654, 0.106256, -0.939152,
		-0.194647, -0.979923, -0.043167,
		-0.924883, 0.168703, 0.340778,
		32.153767, 37.530788, 24.408445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356987, 36.939369, 23.844595>,  <32.801186, 37.412697, 24.169901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356987, 36.939369, 23.844595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097050, 37.212990, 23.977129>,  <31.941088, 37.377163, 24.056650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097050, 37.212990, 23.977129>,  <32.356987, 36.939369, 23.844595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097050, 37.212990, 23.977129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407337, 0.054610, -0.911644,
		-0.641705, -0.727387, 0.243152,
		-0.649839, 0.684051, 0.331336,
		31.902098, 37.418205, 24.076530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644932, 36.623779, 23.752457>,  <32.356987, 36.939369, 23.844595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644932, 36.623779, 23.752457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598276, 37.021049, 23.751453>,  <31.570282, 37.259411, 23.750851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598276, 37.021049, 23.751453>,  <31.644932, 36.623779, 23.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598276, 37.021049, 23.751453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492945, -0.060084, -0.867983,
		-0.862207, -0.100006, 0.496587,
		-0.116640, 0.993171, -0.002508,
		31.563284, 37.319000, 23.750702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839832, 36.793190, 23.567282>,  <31.644932, 36.623779, 23.752457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839832, 36.793190, 23.567282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047831, 37.132587, 23.527943>,  <31.172628, 37.336224, 23.504339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047831, 37.132587, 23.527943>,  <30.839832, 36.793190, 23.567282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047831, 37.132587, 23.527943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498275, 0.207801, -0.841749,
		-0.693778, 0.486708, 0.530836,
		0.519994, 0.848489, -0.098347,
		31.203829, 37.387135, 23.498438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349535, 37.261215, 23.261314>,  <30.839832, 36.793190, 23.567282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349535, 37.261215, 23.261314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687565, 37.455429, 23.171782>,  <30.890383, 37.571957, 23.118061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687565, 37.455429, 23.171782>,  <30.349535, 37.261215, 23.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687565, 37.455429, 23.171782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390523, 0.274634, -0.878674,
		-0.365154, 0.829959, 0.421699,
		0.845076, 0.485535, -0.223834,
		30.941088, 37.601089, 23.104631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204157, 37.911381, 23.046753>,  <30.349535, 37.261215, 23.261314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204157, 37.911381, 23.046753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553141, 37.870918, 22.855513>,  <30.762531, 37.846642, 22.740768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553141, 37.870918, 22.855513>,  <30.204157, 37.911381, 23.046753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553141, 37.870918, 22.855513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437139, 0.275792, -0.856065,
		0.218453, 0.955880, 0.196399,
		0.872461, -0.101156, -0.478100,
		30.814878, 37.840572, 22.712082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210115, 38.447407, 22.596239>,  <30.204157, 37.911381, 23.046753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210115, 38.447407, 22.596239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485268, 38.201462, 22.441963>,  <30.650360, 38.053894, 22.349398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485268, 38.201462, 22.441963>,  <30.210115, 38.447407, 22.596239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485268, 38.201462, 22.441963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312035, 0.229255, -0.921996,
		0.655326, 0.754574, -0.034159,
		0.687882, -0.614866, -0.385690,
		30.691633, 38.017002, 22.326256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555857, 38.792145, 21.933556>,  <30.210115, 38.447407, 22.596239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555857, 38.792145, 21.933556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564114, 38.392231, 21.932486>,  <30.569069, 38.152283, 21.931843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564114, 38.392231, 21.932486>,  <30.555857, 38.792145, 21.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564114, 38.392231, 21.932486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349405, -0.004707, -0.936960,
		0.936745, 0.020278, -0.349426,
		0.020644, -0.999783, -0.002675,
		30.570307, 38.092297, 21.931683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666323, 38.684097, 21.293751>,  <30.555857, 38.792145, 21.933556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666323, 38.684097, 21.293751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560505, 38.316845, 21.411766>,  <30.497015, 38.096493, 21.482574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560505, 38.316845, 21.411766>,  <30.666323, 38.684097, 21.293751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560505, 38.316845, 21.411766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231154, -0.236651, -0.943697,
		0.936262, -0.317847, -0.149626,
		-0.264542, -0.918134, 0.295039,
		30.481142, 38.041405, 21.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922529, 38.266205, 20.735355>,  <30.666323, 38.684097, 21.293751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922529, 38.266205, 20.735355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664152, 38.024525, 20.921989>,  <30.509127, 37.879517, 21.033970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664152, 38.024525, 20.921989>,  <30.922529, 38.266205, 20.735355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664152, 38.024525, 20.921989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317302, -0.343409, -0.883963,
		0.694318, -0.719038, 0.030110,
		-0.645942, -0.604198, 0.466587,
		30.470369, 37.843266, 21.061966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958080, 37.723701, 20.320755>,  <30.922529, 38.266205, 20.735355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958080, 37.723701, 20.320755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601019, 37.702271, 20.499773>,  <30.386782, 37.689411, 20.607183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601019, 37.702271, 20.499773>,  <30.958080, 37.723701, 20.320755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601019, 37.702271, 20.499773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397613, -0.374058, -0.837845,
		0.212302, -0.925856, 0.312600,
		-0.892654, -0.053583, 0.447546,
		30.333223, 37.686195, 20.634037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587700, 37.001846, 20.036146>,  <30.958080, 37.723701, 20.320755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587700, 37.001846, 20.036146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293409, 37.199730, 20.221174>,  <30.116835, 37.318459, 20.332191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293409, 37.199730, 20.221174>,  <30.587700, 37.001846, 20.036146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293409, 37.199730, 20.221174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632564, -0.257859, -0.730323,
		-0.242021, -0.829921, 0.502650,
		-0.735723, 0.494711, 0.462571,
		30.072693, 37.348145, 20.359945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935747, 36.575809, 20.009768>,  <30.587700, 37.001846, 20.036146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935747, 36.575809, 20.009768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827219, 36.956711, 20.065760>,  <29.762102, 37.185253, 20.099354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827219, 36.956711, 20.065760>,  <29.935747, 36.575809, 20.009768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827219, 36.956711, 20.065760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644349, -0.071673, -0.761366,
		-0.714982, -0.296771, 0.633031,
		-0.271322, 0.952255, 0.139979,
		29.745823, 37.242386, 20.107754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778639, 35.939262, 19.572443>,  <29.935747, 36.575809, 20.009768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778639, 35.939262, 19.572443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956398, 35.581467, 19.552841>,  <30.063053, 35.366791, 19.541080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956398, 35.581467, 19.552841>,  <29.778639, 35.939262, 19.572443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956398, 35.581467, 19.552841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212603, -0.158449, 0.964206,
		-0.870236, -0.418072, -0.260585,
		0.444397, -0.894488, -0.049005,
		30.089718, 35.313122, 19.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286913, 35.550900, 19.907471>,  <29.778639, 35.939262, 19.572443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286913, 35.550900, 19.907471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602589, 35.305283, 19.902815>,  <29.791994, 35.157913, 19.900023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602589, 35.305283, 19.902815>,  <29.286913, 35.550900, 19.907471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602589, 35.305283, 19.902815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194333, -0.267652, 0.943715,
		-0.582592, -0.742509, -0.330556,
		0.789190, -0.614038, -0.011638,
		29.839346, 35.121071, 19.899324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058500, 34.954266, 20.163782>,  <29.286913, 35.550900, 19.907471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058500, 34.954266, 20.163782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451101, 34.912178, 20.227760>,  <29.686663, 34.886925, 20.266148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451101, 34.912178, 20.227760>,  <29.058500, 34.954266, 20.163782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451101, 34.912178, 20.227760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176892, -0.178866, 0.967841,
		-0.073227, -0.978231, -0.194170,
		0.981502, -0.105219, 0.159944,
		29.745552, 34.880611, 20.275743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086824, 34.419216, 20.617842>,  <29.058500, 34.954266, 20.163782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086824, 34.419216, 20.617842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448568, 34.583614, 20.663832>,  <29.665615, 34.682251, 20.691425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448568, 34.583614, 20.663832>,  <29.086824, 34.419216, 20.617842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448568, 34.583614, 20.663832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038561, -0.189611, 0.981102,
		0.425026, -0.891702, -0.155628,
		0.904359, 0.410993, 0.114974,
		29.719875, 34.706913, 20.698324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521925, 34.000889, 21.100567>,  <29.086824, 34.419216, 20.617842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521925, 34.000889, 21.100567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671198, 34.371990, 21.100525>,  <29.760761, 34.594650, 21.100500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671198, 34.371990, 21.100525>,  <29.521925, 34.000889, 21.100567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671198, 34.371990, 21.100525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071076, -0.028477, 0.997064,
		0.925031, -0.372094, -0.076569,
		0.373182, 0.927758, -0.000104,
		29.783152, 34.650318, 21.100494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163839, 34.016701, 21.576384>,  <29.521925, 34.000889, 21.100567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163839, 34.016701, 21.576384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088089, 34.408665, 21.551382>,  <30.042639, 34.643845, 21.536381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088089, 34.408665, 21.551382>,  <30.163839, 34.016701, 21.576384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088089, 34.408665, 21.551382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227006, 0.105622, 0.968149,
		0.955304, 0.169154, -0.242449,
		-0.189374, 0.979914, -0.062502,
		30.031277, 34.702641, 21.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794453, 34.273716, 21.740404>,  <30.163839, 34.016701, 21.576384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794453, 34.273716, 21.740404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504963, 34.540409, 21.811605>,  <30.331268, 34.700424, 21.854326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504963, 34.540409, 21.811605>,  <30.794453, 34.273716, 21.740404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504963, 34.540409, 21.811605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281517, 0.049743, 0.958266,
		0.630055, 0.743633, -0.223698,
		-0.723725, 0.666735, 0.178004,
		30.287846, 34.740429, 21.865007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061153, 34.755974, 22.099129>,  <30.794453, 34.273716, 21.740404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061153, 34.755974, 22.099129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676903, 34.800964, 22.200752>,  <30.446352, 34.827961, 22.261726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676903, 34.800964, 22.200752>,  <31.061153, 34.755974, 22.099129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676903, 34.800964, 22.200752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261585, 0.057940, 0.963440,
		0.093646, 0.991963, -0.085081,
		-0.960627, 0.112479, 0.254057,
		30.388714, 34.834709, 22.276970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082153, 35.096783, 22.729599>,  <31.061153, 34.755974, 22.099129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082153, 35.096783, 22.729599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703724, 34.967484, 22.738148>,  <30.476665, 34.889904, 22.743277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703724, 34.967484, 22.738148>,  <31.082153, 35.096783, 22.729599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703724, 34.967484, 22.738148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011834, 0.031448, 0.999435,
		-0.323734, 0.945793, -0.025927,
		-0.946074, -0.323244, 0.021374,
		30.419901, 34.870510, 22.744560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728642, 35.498528, 23.149712>,  <31.082153, 35.096783, 22.729599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728642, 35.498528, 23.149712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488510, 35.179272, 23.129408>,  <30.344431, 34.987717, 23.117226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488510, 35.179272, 23.129408>,  <30.728642, 35.498528, 23.149712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488510, 35.179272, 23.129408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092991, -0.132699, 0.986784,
		-0.794330, 0.587673, 0.153883,
		-0.600327, -0.798142, -0.050759,
		30.308413, 34.939831, 23.114180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223766, 35.646736, 23.591326>,  <30.728642, 35.498528, 23.149712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223766, 35.646736, 23.591326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218323, 35.249348, 23.546030>,  <30.215055, 35.010914, 23.518852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218323, 35.249348, 23.546030>,  <30.223766, 35.646736, 23.591326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218323, 35.249348, 23.546030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154002, -0.113980, 0.981474,
		-0.987977, -0.004080, 0.154548,
		-0.013611, -0.993475, -0.113238,
		30.214239, 34.951305, 23.512058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015930, 35.396423, 24.201227>,  <30.223766, 35.646736, 23.591326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015930, 35.396423, 24.201227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216787, 35.072769, 24.079140>,  <30.337301, 34.878578, 24.005888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216787, 35.072769, 24.079140>,  <30.015930, 35.396423, 24.201227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216787, 35.072769, 24.079140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262459, -0.193703, 0.945301,
		-0.823995, -0.554783, 0.115098,
		0.502142, -0.809132, -0.305218,
		30.367430, 34.830029, 23.987574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698456, 34.739899, 24.631807>,  <30.015930, 35.396423, 24.201227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698456, 34.739899, 24.631807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065863, 34.667919, 24.490986>,  <30.286306, 34.624729, 24.406494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065863, 34.667919, 24.490986>,  <29.698456, 34.739899, 24.631807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065863, 34.667919, 24.490986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330593, -0.138849, 0.933504,
		-0.216869, -0.973826, -0.068044,
		0.918519, -0.179953, -0.352052,
		30.341419, 34.613934, 24.385370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816195, 34.014660, 24.904697>,  <29.698456, 34.739899, 24.631807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816195, 34.014660, 24.904697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169933, 34.174080, 24.807463>,  <30.382177, 34.269730, 24.749123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169933, 34.174080, 24.807463>,  <29.816195, 34.014660, 24.904697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169933, 34.174080, 24.807463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358332, -0.245767, 0.900665,
		0.299216, -0.883605, -0.360156,
		0.884346, 0.398548, -0.243086,
		30.435238, 34.293644, 24.734537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380732, 33.392372, 24.966251>,  <29.816195, 34.014660, 24.904697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380732, 33.392372, 24.966251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603498, 33.724564, 24.971117>,  <30.737160, 33.923878, 24.974035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603498, 33.724564, 24.971117>,  <30.380732, 33.392372, 24.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603498, 33.724564, 24.971117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322225, -0.229535, 0.918414,
		0.765514, -0.507564, -0.395433,
		0.556920, 0.830477, 0.012163,
		30.770575, 33.973705, 24.974766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181847, 33.260162, 25.077816>,  <30.380732, 33.392372, 24.966251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181847, 33.260162, 25.077816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097479, 33.630619, 25.202892>,  <31.046858, 33.852894, 25.277939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097479, 33.630619, 25.202892>,  <31.181847, 33.260162, 25.077816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097479, 33.630619, 25.202892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487095, -0.177765, 0.855066,
		0.847497, 0.332659, -0.413625,
		-0.210918, 0.926141, 0.312692,
		31.034204, 33.908463, 25.296700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916737, 33.635117, 25.254913>,  <31.181847, 33.260162, 25.077816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916737, 33.635117, 25.254913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618341, 33.812878, 25.453310>,  <31.439304, 33.919533, 25.572348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618341, 33.812878, 25.453310>,  <31.916737, 33.635117, 25.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618341, 33.812878, 25.453310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530895, -0.052803, 0.845791,
		0.402059, 0.894271, -0.196539,
		-0.745989, 0.444400, 0.495993,
		31.394545, 33.946198, 25.602108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170246, 34.215168, 25.585896>,  <31.916737, 33.635117, 25.254913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170246, 34.215168, 25.585896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831612, 34.152489, 25.789358>,  <31.628429, 34.114880, 25.911436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831612, 34.152489, 25.789358>,  <32.170246, 34.215168, 25.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831612, 34.152489, 25.789358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449444, 0.301462, 0.840905,
		-0.285110, 0.940514, -0.184787,
		-0.846589, -0.156699, 0.508658,
		31.577635, 34.105480, 25.941956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879389, 34.812988, 25.989868>,  <32.170246, 34.215168, 25.585896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879389, 34.812988, 25.989868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766794, 34.474506, 26.170849>,  <31.699238, 34.271420, 26.279436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766794, 34.474506, 26.170849>,  <31.879389, 34.812988, 25.989868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766794, 34.474506, 26.170849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493335, 0.276806, 0.824621,
		-0.823036, 0.455327, 0.339544,
		-0.281484, -0.846201, 0.452450,
		31.682348, 34.220646, 26.306583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731312, 35.028503, 26.650322>,  <31.879389, 34.812988, 25.989868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731312, 35.028503, 26.650322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751987, 34.630772, 26.687494>,  <31.764393, 34.392132, 26.709797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751987, 34.630772, 26.687494>,  <31.731312, 35.028503, 26.650322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751987, 34.630772, 26.687494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222463, 0.102181, 0.969572,
		-0.973570, -0.029443, 0.226483,
		0.051689, -0.994330, 0.092930,
		31.767494, 34.332474, 26.715374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629570, 34.925671, 27.410147>,  <31.731312, 35.028503, 26.650322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629570, 34.925671, 27.410147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781584, 34.587654, 27.259691>,  <31.872791, 34.384846, 27.169418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781584, 34.587654, 27.259691>,  <31.629570, 34.925671, 27.410147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781584, 34.587654, 27.259691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622223, -0.067335, 0.779938,
		-0.684406, -0.530447, 0.500214,
		0.380034, -0.845040, -0.376140,
		31.895594, 34.334141, 27.146849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543493, 34.547649, 27.915504>,  <31.629570, 34.925671, 27.410147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543493, 34.547649, 27.915504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838682, 34.389019, 27.697102>,  <32.015797, 34.293839, 27.566059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838682, 34.389019, 27.697102>,  <31.543493, 34.547649, 27.915504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838682, 34.389019, 27.697102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536001, -0.147114, 0.831301,
		-0.410002, -0.906135, 0.104001,
		0.737971, -0.396580, -0.546006,
		32.060074, 34.270046, 27.533300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772221, 34.065414, 28.351751>,  <31.543493, 34.547649, 27.915504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772221, 34.065414, 28.351751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056820, 34.097378, 28.072498>,  <32.227577, 34.116558, 27.904947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056820, 34.097378, 28.072498>,  <31.772221, 34.065414, 28.351751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056820, 34.097378, 28.072498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698799, -0.184870, 0.691015,
		-0.073843, -0.979509, -0.187377,
		0.711496, 0.079912, -0.698132,
		32.270267, 34.121353, 27.863058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126236, 33.397205, 28.347673>,  <31.772221, 34.065414, 28.351751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126236, 33.397205, 28.347673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355194, 33.675358, 28.173866>,  <32.492569, 33.842251, 28.069582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355194, 33.675358, 28.173866>,  <32.126236, 33.397205, 28.347673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355194, 33.675358, 28.173866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795818, -0.343434, 0.498725,
		0.197576, -0.631266, -0.749978,
		0.572396, 0.695382, -0.434519,
		32.526913, 33.883972, 28.043510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703369, 33.045464, 28.308090>,  <32.126236, 33.397205, 28.347673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703369, 33.045464, 28.308090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813080, 33.426807, 28.257694>,  <32.878906, 33.655613, 28.227457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813080, 33.426807, 28.257694>,  <32.703369, 33.045464, 28.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813080, 33.426807, 28.257694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879700, -0.195815, 0.433341,
		0.388460, -0.229688, -0.892380,
		0.274275, 0.953362, -0.125990,
		32.895363, 33.712814, 28.219896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508194, 33.146950, 28.129946>,  <32.703369, 33.045464, 28.308090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508194, 33.146950, 28.129946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359802, 33.490108, 28.272146>,  <33.270767, 33.696003, 28.357466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359802, 33.490108, 28.272146>,  <33.508194, 33.146950, 28.129946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359802, 33.490108, 28.272146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686368, -0.004552, 0.727240,
		0.625517, 0.513798, -0.587146,
		-0.370982, 0.857899, 0.355501,
		33.248508, 33.747478, 28.378798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117176, 33.599583, 28.184959>,  <33.508194, 33.146950, 28.129946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117176, 33.599583, 28.184959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846748, 33.775719, 28.421276>,  <33.684494, 33.881401, 28.563066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846748, 33.775719, 28.421276>,  <34.117176, 33.599583, 28.184959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846748, 33.775719, 28.421276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717026, 0.208470, 0.665142,
		0.169724, 0.873295, -0.456673,
		-0.676068, 0.440337, 0.590793,
		33.643929, 33.907822, 28.598515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482124, 34.068970, 28.466965>,  <34.117176, 33.599583, 28.184959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482124, 34.068970, 28.466965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164139, 34.049450, 28.708841>,  <33.973347, 34.037739, 28.853968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164139, 34.049450, 28.708841>,  <34.482124, 34.068970, 28.466965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164139, 34.049450, 28.708841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600550, 0.077753, 0.795798,
		-0.085851, 0.995778, -0.032505,
		-0.794965, -0.048799, 0.604690,
		33.925648, 34.034809, 28.890247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670765, 34.600666, 28.971222>,  <34.482124, 34.068970, 28.466965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670765, 34.600666, 28.971222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405487, 34.338970, 29.116629>,  <34.246323, 34.181953, 29.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405487, 34.338970, 29.116629>,  <34.670765, 34.600666, 28.971222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405487, 34.338970, 29.116629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521580, -0.055662, 0.851385,
		-0.536778, 0.754234, 0.378154,
		-0.663192, -0.654243, 0.363515,
		34.206528, 34.142696, 29.225683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431881, 34.888844, 29.640862>,  <34.670765, 34.600666, 28.971222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431881, 34.888844, 29.640862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379860, 34.492313, 29.648376>,  <34.348648, 34.254395, 29.652885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379860, 34.492313, 29.648376>,  <34.431881, 34.888844, 29.640862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379860, 34.492313, 29.648376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566453, -0.058731, 0.821999,
		-0.813768, 0.117543, 0.569179,
		-0.130049, -0.991330, 0.018789,
		34.340847, 34.194916, 29.654013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522926, 34.811642, 30.284073>,  <34.431881, 34.888844, 29.640862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522926, 34.811642, 30.284073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563053, 34.438877, 30.144663>,  <34.587132, 34.215218, 30.061018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563053, 34.438877, 30.144663>,  <34.522926, 34.811642, 30.284073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563053, 34.438877, 30.144663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482706, -0.260717, 0.836075,
		-0.870018, -0.252109, 0.423686,
		0.100320, -0.931916, -0.348523,
		34.593147, 34.159302, 30.040106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406914, 34.317913, 30.855478>,  <34.522926, 34.811642, 30.284073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406914, 34.317913, 30.855478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601135, 34.056747, 30.622948>,  <34.717667, 33.900047, 30.483429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601135, 34.056747, 30.622948>,  <34.406914, 34.317913, 30.855478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601135, 34.056747, 30.622948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491305, -0.346219, 0.799220,
		-0.723088, -0.673673, 0.152672,
		0.485555, -0.652915, -0.581325,
		34.746803, 33.860874, 30.448549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319069, 33.676838, 31.044506>,  <34.406914, 34.317913, 30.855478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319069, 33.676838, 31.044506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663128, 33.631809, 30.845516>,  <34.869564, 33.604794, 30.726122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663128, 33.631809, 30.845516>,  <34.319069, 33.676838, 31.044506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663128, 33.631809, 30.845516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434558, -0.348917, 0.830311,
		-0.267041, -0.930369, -0.251203,
		0.860144, -0.112565, -0.497475,
		34.921169, 33.598038, 30.696274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484829, 32.938477, 31.053156>,  <34.319069, 33.676838, 31.044506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484829, 32.938477, 31.053156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835869, 33.115005, 30.978260>,  <35.046494, 33.220924, 30.933323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835869, 33.115005, 30.978260>,  <34.484829, 32.938477, 31.053156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835869, 33.115005, 30.978260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421538, -0.524362, 0.739831,
		0.228325, -0.728201, -0.646213,
		0.877595, 0.441325, -0.187239,
		35.099148, 33.247402, 30.922089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017799, 32.391132, 31.014664>,  <34.484829, 32.938477, 31.053156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017799, 32.391132, 31.014664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279728, 32.688965, 31.066515>,  <35.436886, 32.867664, 31.097626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279728, 32.688965, 31.066515>,  <35.017799, 32.391132, 31.014664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279728, 32.688965, 31.066515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488501, -0.547845, 0.679141,
		0.576692, -0.381394, -0.722471,
		0.654823, 0.744583, 0.129627,
		35.476173, 32.912338, 31.105404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715076, 32.074898, 31.043636>,  <35.017799, 32.391132, 31.014664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715076, 32.074898, 31.043636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742889, 32.432232, 31.221230>,  <35.759575, 32.646633, 31.327785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742889, 32.432232, 31.221230>,  <35.715076, 32.074898, 31.043636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742889, 32.432232, 31.221230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814713, -0.307683, 0.491501,
		0.575680, 0.327546, -0.749203,
		0.069528, 0.893333, 0.443984,
		35.763748, 32.700233, 31.354425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353825, 32.246216, 31.028555>,  <35.715076, 32.074898, 31.043636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353825, 32.246216, 31.028555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224571, 32.488773, 31.319174>,  <36.147018, 32.634308, 31.493546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224571, 32.488773, 31.319174>,  <36.353825, 32.246216, 31.028555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224571, 32.488773, 31.319174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747681, -0.307054, 0.588805,
		0.580137, 0.733488, -0.354170,
		-0.323132, 0.606394, 0.726548,
		36.127632, 32.670692, 31.537138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987732, 32.571964, 31.181238>,  <36.353825, 32.246216, 31.028555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987732, 32.571964, 31.181238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743835, 32.609741, 31.496019>,  <36.597496, 32.632408, 31.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743835, 32.609741, 31.496019>,  <36.987732, 32.571964, 31.181238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743835, 32.609741, 31.496019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689541, -0.426373, 0.585439,
		0.390824, 0.899604, 0.194857,
		-0.609745, 0.094442, 0.786951,
		36.560913, 32.638073, 31.732105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369328, 32.729031, 31.730438>,  <36.987732, 32.571964, 31.181238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369328, 32.729031, 31.730438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039181, 32.593464, 31.911062>,  <36.841095, 32.512123, 32.019436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039181, 32.593464, 31.911062>,  <37.369328, 32.729031, 31.730438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039181, 32.593464, 31.911062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564305, -0.521041, 0.640372,
		0.018248, 0.783358, 0.621302,
		-0.825365, -0.338919, 0.451561,
		36.791573, 32.491787, 32.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584198, 32.723148, 32.353405>,  <37.369328, 32.729031, 31.730438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584198, 32.723148, 32.353405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265446, 32.483376, 32.383507>,  <37.074192, 32.339512, 32.401566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265446, 32.483376, 32.383507>,  <37.584198, 32.723148, 32.353405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265446, 32.483376, 32.383507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475202, -0.545018, 0.690752,
		-0.373043, 0.586208, 0.719165,
		-0.796882, -0.599429, 0.075253,
		37.026382, 32.303547, 32.406082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512589, 32.677097, 33.002785>,  <37.584198, 32.723148, 32.353405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512589, 32.677097, 33.002785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329220, 32.352402, 32.858047>,  <37.219196, 32.157585, 32.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329220, 32.352402, 32.858047>,  <37.512589, 32.677097, 33.002785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329220, 32.352402, 32.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529673, -0.576481, 0.622186,
		-0.713648, 0.093565, 0.694227,
		-0.458424, -0.811736, -0.361846,
		37.191692, 32.108883, 32.749493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765259, 32.312958, 33.695423>,  <37.512589, 32.677097, 33.002785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765259, 32.312958, 33.695423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466366, 32.213711, 33.448822>,  <37.287029, 32.154163, 33.300861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466366, 32.213711, 33.448822>,  <37.765259, 32.312958, 33.695423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466366, 32.213711, 33.448822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379429, -0.602341, 0.702296,
		-0.545596, 0.758700, 0.355948,
		-0.747234, -0.248113, -0.616507,
		37.242195, 32.139278, 33.263870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968910, 32.977356, 33.455784>,  <37.765259, 32.312958, 33.695423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968910, 32.977356, 33.455784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087975, 33.137222, 33.108990>,  <38.159412, 33.233143, 32.900913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087975, 33.137222, 33.108990>,  <37.968910, 32.977356, 33.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087975, 33.137222, 33.108990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695968, 0.712475, 0.089487,
		0.653470, 0.576758, 0.490231,
		0.297665, 0.399662, -0.866986,
		38.177273, 33.257122, 32.848892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893185, 33.696686, 33.706123>,  <37.968910, 32.977356, 33.455784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893185, 33.696686, 33.706123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772713, 33.669403, 34.086575>,  <37.700432, 33.653034, 34.314846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772713, 33.669403, 34.086575>,  <37.893185, 33.696686, 33.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772713, 33.669403, 34.086575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937407, -0.204037, 0.282199,
		0.174817, 0.976584, 0.125390,
		-0.301175, -0.068208, 0.951126,
		37.682362, 33.648941, 34.371914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450897, 34.004395, 34.194675>,  <37.893185, 33.696686, 33.706123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450897, 34.004395, 34.194675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101234, 34.139595, 34.334167>,  <37.891438, 34.220715, 34.417862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101234, 34.139595, 34.334167>,  <38.450897, 34.004395, 34.194675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101234, 34.139595, 34.334167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371913, 0.004129, 0.928258,
		0.312309, 0.941138, -0.129315,
		-0.874153, 0.337997, 0.348732,
		37.838989, 34.240993, 34.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611130, 34.317345, 34.707954>,  <38.450897, 34.004395, 34.194675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611130, 34.317345, 34.707954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229633, 34.213383, 34.768387>,  <38.000736, 34.151005, 34.804646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229633, 34.213383, 34.768387>,  <38.611130, 34.317345, 34.707954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229633, 34.213383, 34.768387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179004, -0.087225, 0.979974,
		-0.241526, 0.961686, 0.129715,
		-0.953742, -0.259908, 0.151078,
		37.943512, 34.135410, 34.813709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464561, 34.939018, 34.578651>,  <38.611130, 34.317345, 34.707954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464561, 34.939018, 34.578651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147198, 34.767345, 34.751301>,  <37.956779, 34.664341, 34.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147198, 34.767345, 34.751301>,  <38.464561, 34.939018, 34.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147198, 34.767345, 34.751301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404472, 0.158158, 0.900771,
		-0.454860, 0.889263, 0.048107,
		-0.793413, -0.429183, 0.431622,
		37.909172, 34.638592, 34.880787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399517, 35.320839, 35.166973>,  <38.464561, 34.939018, 34.578651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399517, 35.320839, 35.166973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182991, 34.992172, 35.238354>,  <38.053078, 34.794971, 35.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182991, 34.992172, 35.238354>,  <38.399517, 35.320839, 35.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182991, 34.992172, 35.238354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299900, 0.009600, 0.953922,
		-0.785519, 0.569888, 0.241221,
		-0.541313, -0.821666, 0.178450,
		38.020596, 34.745674, 35.291889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145802, 35.439529, 35.802505>,  <38.399517, 35.320839, 35.166973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145802, 35.439529, 35.802505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115948, 35.042824, 35.760880>,  <38.098034, 34.804798, 35.735905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115948, 35.042824, 35.760880>,  <38.145802, 35.439529, 35.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115948, 35.042824, 35.760880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246920, -0.119486, 0.961641,
		-0.966157, 0.046080, 0.253805,
		-0.074638, -0.991766, -0.104064,
		38.093555, 34.745293, 35.729660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817276, 35.250809, 36.436134>,  <38.145802, 35.439529, 35.802505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817276, 35.250809, 36.436134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977936, 34.923847, 36.270954>,  <38.074329, 34.727669, 36.171844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977936, 34.923847, 36.270954>,  <37.817276, 35.250809, 36.436134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977936, 34.923847, 36.270954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389398, -0.255693, 0.884867,
		-0.828884, -0.516205, 0.215599,
		0.401646, -0.817406, -0.412950,
		38.098431, 34.678627, 36.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824543, 34.639450, 36.893452>,  <37.817276, 35.250809, 36.436134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824543, 34.639450, 36.893452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132526, 34.533356, 36.661308>,  <38.317314, 34.469700, 36.522022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132526, 34.533356, 36.661308>,  <37.824543, 34.639450, 36.893452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132526, 34.533356, 36.661308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483589, -0.350839, 0.801906,
		-0.416308, -0.898088, -0.141865,
		0.769954, -0.265236, -0.580363,
		38.363514, 34.453785, 36.487198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967915, 33.963612, 37.107063>,  <37.824543, 34.639450, 36.893452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967915, 33.963612, 37.107063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303337, 34.150272, 36.994591>,  <38.504589, 34.262268, 36.927109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303337, 34.150272, 36.994591>,  <37.967915, 33.963612, 37.107063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303337, 34.150272, 36.994591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417050, -0.217727, 0.882419,
		0.350560, -0.857224, -0.377193,
		0.838557, 0.466649, -0.281179,
		38.554905, 34.290268, 36.910236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494404, 33.659740, 37.488686>,  <37.967915, 33.963612, 37.107063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494404, 33.659740, 37.488686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770756, 33.911316, 37.346073>,  <38.936569, 34.062263, 37.260506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770756, 33.911316, 37.346073>,  <38.494404, 33.659740, 37.488686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770756, 33.911316, 37.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532730, -0.109490, 0.839173,
		0.488754, -0.769704, -0.410701,
		0.690882, 0.628941, -0.356531,
		38.978020, 34.099998, 37.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272705, 33.380604, 37.421616>,  <38.494404, 33.659740, 37.488686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272705, 33.380604, 37.421616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251144, 33.772495, 37.498787>,  <39.238209, 34.007629, 37.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251144, 33.772495, 37.498787>,  <39.272705, 33.380604, 37.421616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251144, 33.772495, 37.498787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520092, -0.137393, 0.842987,
		0.852408, 0.145778, -0.502145,
		-0.053898, 0.979731, 0.192933,
		39.234974, 34.066414, 37.556667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840401, 33.471546, 37.693779>,  <39.272705, 33.380604, 37.421616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840401, 33.471546, 37.693779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632408, 33.788094, 37.822380>,  <39.507614, 33.978020, 37.899540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632408, 33.788094, 37.822380>,  <39.840401, 33.471546, 37.693779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632408, 33.788094, 37.822380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430226, -0.082517, 0.898942,
		0.737919, 0.605751, -0.297558,
		-0.519981, 0.791364, 0.321501,
		39.476414, 34.025501, 37.918831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374043, 33.927311, 37.928398>,  <39.840401, 33.471546, 37.693779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374043, 33.927311, 37.928398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023548, 34.018185, 38.098381>,  <39.813251, 34.072708, 38.200371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023548, 34.018185, 38.098381>,  <40.374043, 33.927311, 37.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023548, 34.018185, 38.098381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397395, -0.158091, 0.903927,
		0.272544, 0.960933, 0.048242,
		-0.876240, 0.227188, 0.424957,
		39.760677, 34.086342, 38.225868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542301, 34.264153, 38.606285>,  <40.374043, 33.927311, 37.928398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542301, 34.264153, 38.606285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152893, 34.224846, 38.688839>,  <39.919247, 34.201263, 38.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152893, 34.224846, 38.688839>,  <40.542301, 34.264153, 38.606285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152893, 34.224846, 38.688839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219778, -0.154127, 0.963298,
		-0.062850, 0.983152, 0.171643,
		-0.973523, -0.098267, 0.206389,
		39.860836, 34.195366, 38.750755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493351, 34.690456, 39.116741>,  <40.542301, 34.264153, 38.606285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493351, 34.690456, 39.116741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205582, 34.413425, 39.137798>,  <40.032921, 34.247208, 39.150433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205582, 34.413425, 39.137798>,  <40.493351, 34.690456, 39.116741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205582, 34.413425, 39.137798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265226, -0.203876, 0.942385,
		-0.641938, 0.691937, 0.330362,
		-0.719424, -0.692573, 0.052644,
		39.989754, 34.205654, 39.153591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242126, 34.786564, 39.810112>,  <40.493351, 34.690456, 39.116741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242126, 34.786564, 39.810112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117626, 34.428001, 39.683887>,  <40.042927, 34.212864, 39.608150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117626, 34.428001, 39.683887>,  <40.242126, 34.786564, 39.810112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117626, 34.428001, 39.683887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264899, -0.400732, 0.877065,
		-0.912663, 0.189392, 0.362184,
		-0.311248, -0.896407, -0.315563,
		40.024250, 34.159081, 39.589218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694096, 34.497601, 40.303734>,  <40.242126, 34.786564, 39.810112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694096, 34.497601, 40.303734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894962, 34.208267, 40.114159>,  <40.015484, 34.034668, 40.000412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894962, 34.208267, 40.114159>,  <39.694096, 34.497601, 40.303734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894962, 34.208267, 40.114159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192519, -0.440788, 0.876723,
		-0.843068, -0.531504, -0.082095,
		0.502168, -0.723332, -0.473939,
		40.045612, 33.991268, 39.971977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384113, 33.978432, 40.500263>,  <39.694096, 34.497601, 40.303734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384113, 33.978432, 40.500263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756077, 33.879894, 40.391022>,  <39.979256, 33.820770, 40.325478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756077, 33.879894, 40.391022>,  <39.384113, 33.978432, 40.500263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756077, 33.879894, 40.391022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, -0.477593, 0.869100,
		-0.344529, -0.843338, -0.412408,
		0.929909, -0.246343, -0.273103,
		40.035049, 33.805992, 40.309090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548492, 33.283623, 40.556355>,  <39.384113, 33.978432, 40.500263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548492, 33.283623, 40.556355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915997, 33.440475, 40.574776>,  <40.136497, 33.534588, 40.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915997, 33.440475, 40.574776>,  <39.548492, 33.283623, 40.556355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915997, 33.440475, 40.574776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166711, -0.491027, 0.855043,
		0.357902, -0.777899, -0.516507,
		0.918756, 0.392129, 0.046055,
		40.191624, 33.558113, 40.588593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152630, 32.824223, 40.530205>,  <39.548492, 33.283623, 40.556355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152630, 32.824223, 40.530205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272099, 33.146725, 40.734459>,  <40.343781, 33.340225, 40.857010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272099, 33.146725, 40.734459>,  <40.152630, 32.824223, 40.530205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272099, 33.146725, 40.734459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321343, -0.588773, 0.741677,
		0.898627, -0.057433, -0.434937,
		0.298676, 0.806255, 0.510632,
		40.361702, 33.388599, 40.887650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954075, 32.959499, 40.670010>,  <40.152630, 32.824223, 40.530205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954075, 32.959499, 40.670010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676769, 33.083401, 40.930298>,  <40.510387, 33.157742, 41.086472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676769, 33.083401, 40.930298>,  <40.954075, 32.959499, 40.670010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676769, 33.083401, 40.930298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258357, -0.736096, 0.625632,
		0.672784, 0.601846, 0.430282,
		-0.693263, 0.309749, 0.650724,
		40.468792, 33.176327, 41.125515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833805, 33.311714, 39.911781>,  <40.954075, 32.959499, 40.670010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833805, 33.311714, 39.911781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436729, 33.323338, 39.958641>,  <40.198483, 33.330311, 39.986755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436729, 33.323338, 39.958641>,  <40.833805, 33.311714, 39.911781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436729, 33.323338, 39.958641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096872, 0.387183, -0.916900,
		-0.072003, -0.921545, -0.381537,
		-0.992689, 0.029060, 0.117150,
		40.138924, 33.332054, 39.993786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403019, 32.982037, 39.319893>,  <40.833805, 33.311714, 39.911781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403019, 32.982037, 39.319893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189915, 33.260738, 39.512020>,  <40.062054, 33.427959, 39.627296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189915, 33.260738, 39.512020>,  <40.403019, 32.982037, 39.319893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189915, 33.260738, 39.512020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279233, 0.391058, -0.876985,
		-0.798873, -0.601342, -0.013784,
		-0.532758, 0.696750, 0.480321,
		40.030087, 33.469765, 39.656116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634792, 32.988480, 39.139111>,  <40.403019, 32.982037, 39.319893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634792, 32.988480, 39.139111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746387, 33.348694, 39.272495>,  <39.813343, 33.564823, 39.352524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746387, 33.348694, 39.272495>,  <39.634792, 32.988480, 39.139111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746387, 33.348694, 39.272495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459506, 0.430102, -0.777088,
		-0.843220, 0.063570, 0.533796,
		0.278986, 0.900539, 0.333460,
		39.830082, 33.618855, 39.372532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016270, 33.306938, 39.151108>,  <39.634792, 32.988480, 39.139111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016270, 33.306938, 39.151108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300236, 33.588463, 39.161442>,  <39.470615, 33.757378, 39.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300236, 33.588463, 39.161442>,  <39.016270, 33.306938, 39.151108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300236, 33.588463, 39.161442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487313, 0.517353, -0.703471,
		-0.508479, 0.486814, 0.710254,
		0.709912, 0.703816, 0.025832,
		39.513210, 33.799606, 39.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627754, 33.978252, 39.105198>,  <39.016270, 33.306938, 39.151108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627754, 33.978252, 39.105198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000786, 34.033611, 38.971844>,  <39.224606, 34.066826, 38.891830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000786, 34.033611, 38.971844>,  <38.627754, 33.978252, 39.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000786, 34.033611, 38.971844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359441, 0.271014, -0.892946,
		-0.033226, 0.952575, 0.302486,
		0.932576, 0.138395, -0.333390,
		39.280560, 34.075130, 38.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572800, 34.553688, 38.720078>,  <38.627754, 33.978252, 39.105198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572800, 34.553688, 38.720078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940964, 34.431114, 38.622967>,  <39.161861, 34.357571, 38.564701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940964, 34.431114, 38.622967>,  <38.572800, 34.553688, 38.720078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940964, 34.431114, 38.622967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215323, 0.120984, -0.969020,
		0.326313, 0.944172, 0.045373,
		0.920411, -0.306434, -0.242780,
		39.217087, 34.339184, 38.550133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800823, 35.077045, 38.334492>,  <38.572800, 34.553688, 38.720078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800823, 35.077045, 38.334492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024738, 34.770882, 38.207508>,  <39.159088, 34.587181, 38.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024738, 34.770882, 38.207508>,  <38.800823, 35.077045, 38.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024738, 34.770882, 38.207508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237976, 0.218466, -0.946382,
		0.793726, 0.605324, -0.059854,
		0.559792, -0.765412, -0.317455,
		39.192677, 34.541260, 38.112270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010750, 35.344402, 37.767078>,  <38.800823, 35.077045, 38.334492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010750, 35.344402, 37.767078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088104, 34.958176, 37.697479>,  <39.134518, 34.726440, 37.655720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088104, 34.958176, 37.697479>,  <39.010750, 35.344402, 37.767078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088104, 34.958176, 37.697479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412821, 0.080805, -0.907221,
		0.890044, 0.247279, -0.382981,
		0.193390, -0.965569, -0.174002,
		39.146122, 34.668507, 37.645279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376827, 35.277004, 37.137741>,  <39.010750, 35.344402, 37.767078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376827, 35.277004, 37.137741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154198, 34.951633, 37.205345>,  <39.020618, 34.756413, 37.245907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154198, 34.951633, 37.205345>,  <39.376827, 35.277004, 37.137741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154198, 34.951633, 37.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511433, 0.175141, -0.841286,
		0.654724, -0.554674, -0.513492,
		-0.556573, -0.813427, 0.169009,
		38.987225, 34.707607, 37.256046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248264, 35.113541, 36.517532>,  <39.376827, 35.277004, 37.137741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248264, 35.113541, 36.517532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969345, 34.890854, 36.698124>,  <38.801994, 34.757240, 36.806480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969345, 34.890854, 36.698124>,  <39.248264, 35.113541, 36.517532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969345, 34.890854, 36.698124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465991, -0.126498, -0.875700,
		0.544630, -0.821013, -0.171219,
		-0.697302, -0.556719, 0.451479,
		38.760155, 34.723839, 36.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454784, 34.540459, 36.143803>,  <39.248264, 35.113541, 36.517532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454784, 34.540459, 36.143803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156612, 34.343388, 36.323402>,  <38.977707, 34.225143, 36.431160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156612, 34.343388, 36.323402>,  <39.454784, 34.540459, 36.143803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156612, 34.343388, 36.323402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603233, 0.212001, -0.768873,
		0.283624, -0.843989, -0.455235,
		-0.745431, -0.492684, 0.448994,
		38.932983, 34.195583, 36.458099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223469, 34.025726, 35.677471>,  <39.454784, 34.540459, 36.143803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223469, 34.025726, 35.677471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949524, 34.149586, 35.941315>,  <38.785156, 34.223900, 36.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949524, 34.149586, 35.941315>,  <39.223469, 34.025726, 35.677471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949524, 34.149586, 35.941315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672414, 0.080220, -0.735816,
		-0.280758, -0.947461, 0.153273,
		-0.684861, 0.309649, 0.659608,
		38.744064, 34.242481, 36.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733585, 33.578293, 35.584164>,  <39.223469, 34.025726, 35.677471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733585, 33.578293, 35.584164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555840, 33.892094, 35.757179>,  <38.449192, 34.080376, 35.860989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555840, 33.892094, 35.757179>,  <38.733585, 33.578293, 35.584164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555840, 33.892094, 35.757179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748259, -0.059535, -0.660730,
		-0.492595, -0.617257, 0.613468,
		-0.444363, 0.784506, 0.432542,
		38.422531, 34.127445, 35.886940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095451, 33.372192, 35.543289>,  <38.733585, 33.578293, 35.584164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095451, 33.372192, 35.543289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099396, 33.767639, 35.603352>,  <38.101761, 34.004906, 35.639389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099396, 33.767639, 35.603352>,  <38.095451, 33.372192, 35.543289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099396, 33.767639, 35.603352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707762, 0.112978, -0.697358,
		-0.706382, -0.099404, 0.700816,
		0.009857, 0.988613, 0.150160,
		38.102352, 34.064224, 35.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403103, 33.623344, 35.544487>,  <38.095451, 33.372192, 35.543289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403103, 33.623344, 35.544487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621868, 33.943417, 35.446018>,  <37.753128, 34.135460, 35.386936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621868, 33.943417, 35.446018>,  <37.403103, 33.623344, 35.544487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621868, 33.943417, 35.446018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476113, 0.055419, -0.877636,
		-0.688625, 0.597193, 0.411286,
		0.546911, 0.800181, -0.246168,
		37.785942, 34.183472, 35.372169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891975, 34.081997, 35.381927>,  <37.403103, 33.623344, 35.544487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891975, 34.081997, 35.381927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226528, 34.220425, 35.211891>,  <37.427258, 34.303482, 35.109867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226528, 34.220425, 35.211891>,  <36.891975, 34.081997, 35.381927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226528, 34.220425, 35.211891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505540, 0.187210, -0.842248,
		-0.211895, 0.919341, 0.331531,
		0.836379, 0.346070, -0.425095,
		37.477444, 34.324245, 35.084362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756706, 34.799557, 35.003761>,  <36.891975, 34.081997, 35.381927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756706, 34.799557, 35.003761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060238, 34.620110, 34.814899>,  <37.242355, 34.512444, 34.701584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060238, 34.620110, 34.814899>,  <36.756706, 34.799557, 35.003761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060238, 34.620110, 34.814899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450077, 0.162798, -0.878025,
		0.470761, 0.878773, -0.078376,
		0.758825, -0.448615, -0.472154,
		37.287884, 34.485523, 34.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073971, 35.226116, 34.442314>,  <36.756706, 34.799557, 35.003761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073971, 35.226116, 34.442314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172188, 34.849281, 34.350952>,  <37.231117, 34.623180, 34.296135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172188, 34.849281, 34.350952>,  <37.073971, 35.226116, 34.442314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172188, 34.849281, 34.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376133, 0.124568, -0.918154,
		0.893437, 0.311361, -0.323765,
		0.245547, -0.942092, -0.228407,
		37.245853, 34.566654, 34.282429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555954, 35.451584, 33.968441>,  <37.073971, 35.226116, 34.442314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555954, 35.451584, 33.968441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598351, 35.757244, 34.222946>,  <36.623791, 35.940643, 34.375648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598351, 35.757244, 34.222946>,  <36.555954, 35.451584, 33.968441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598351, 35.757244, 34.222946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964031, 0.077875, -0.254126,
		-0.243740, 0.640314, -0.728415,
		0.105995, 0.764155, 0.636264,
		36.630150, 35.986492, 34.413826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861881, 36.012161, 33.594147>,  <36.555954, 35.451584, 33.968441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861881, 36.012161, 33.594147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960083, 36.029720, 33.981506>,  <37.019005, 36.040257, 34.213924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960083, 36.029720, 33.981506>,  <36.861881, 36.012161, 33.594147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960083, 36.029720, 33.981506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969380, -0.005475, -0.245504,
		-0.005475, 0.999021, -0.043900,
		0.245504, 0.043900, 0.968401,
		37.033733, 36.042889, 34.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532890, 36.221359, 33.480743>,  <36.861881, 36.012161, 33.594147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532890, 36.221359, 33.480743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678268, 36.049278, 33.811279>,  <37.765495, 35.946030, 34.009602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678268, 36.049278, 33.811279>,  <37.532890, 36.221359, 33.480743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678268, 36.049278, 33.811279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631525, -0.538326, -0.558015,
		0.684899, 0.724660, 0.076032,
		0.363441, -0.430201, 0.826340,
		37.787300, 35.920219, 34.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128769, 35.938251, 33.246616>,  <37.532890, 36.221359, 33.480743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128769, 35.938251, 33.246616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092514, 35.768761, 33.607113>,  <38.070763, 35.667065, 33.823410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092514, 35.768761, 33.607113>,  <38.128769, 35.938251, 33.246616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092514, 35.768761, 33.607113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742173, -0.632167, -0.222583,
		0.664051, 0.648705, 0.371778,
		-0.090635, -0.423730, 0.901243,
		38.065323, 35.641644, 33.877487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832722, 35.839455, 33.598228>,  <38.128769, 35.938251, 33.246616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832722, 35.839455, 33.598228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590347, 35.595325, 33.802326>,  <38.444923, 35.448849, 33.924786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590347, 35.595325, 33.802326>,  <38.832722, 35.839455, 33.598228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590347, 35.595325, 33.802326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707945, -0.706256, -0.004061,
		0.362839, 0.358761, 0.860023,
		-0.605940, -0.610322, 0.510240,
		38.408566, 35.412228, 33.955399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326370, 36.512680, 33.492714>,  <38.832722, 35.839455, 33.598228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326370, 36.512680, 33.492714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661148, 36.524895, 33.274143>,  <39.862015, 36.532223, 33.143002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661148, 36.524895, 33.274143>,  <39.326370, 36.512680, 33.492714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661148, 36.524895, 33.274143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461836, -0.575117, 0.675239,
		-0.293638, -0.817501, -0.495448,
		0.836949, 0.030539, -0.546428,
		39.912231, 36.534058, 33.110214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575886, 35.859043, 33.242100>,  <39.326370, 36.512680, 33.492714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575886, 35.859043, 33.242100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872780, 36.121174, 33.298134>,  <40.050919, 36.278454, 33.331757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872780, 36.121174, 33.298134>,  <39.575886, 35.859043, 33.242100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872780, 36.121174, 33.298134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396281, -0.597798, 0.696850,
		0.540410, -0.461715, -0.703403,
		0.742239, 0.655330, 0.140087,
		40.095451, 36.317772, 33.340160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327221, 35.600338, 33.234169>,  <39.575886, 35.859043, 33.242100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327221, 35.600338, 33.234169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332714, 35.944153, 33.438522>,  <40.336010, 36.150444, 33.561134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332714, 35.944153, 33.438522>,  <40.327221, 35.600338, 33.234169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332714, 35.944153, 33.438522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594118, -0.417976, 0.687256,
		0.804261, 0.294090, -0.516406,
		0.013730, 0.859539, 0.510886,
		40.336834, 36.202015, 33.591789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018520, 35.578712, 33.549244>,  <40.327221, 35.600338, 33.234169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018520, 35.578712, 33.549244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735466, 35.787296, 33.739964>,  <40.565632, 35.912445, 33.854393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735466, 35.787296, 33.739964>,  <41.018520, 35.578712, 33.549244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735466, 35.787296, 33.739964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342472, -0.337111, 0.876966,
		0.618033, 0.783861, 0.059967,
		-0.707635, 0.521457, 0.476797,
		40.523174, 35.943733, 33.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339237, 35.966427, 34.036972>,  <41.018520, 35.578712, 33.549244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339237, 35.966427, 34.036972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959736, 35.900829, 34.145031>,  <40.732037, 35.861473, 34.209866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959736, 35.900829, 34.145031>,  <41.339237, 35.966427, 34.036972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959736, 35.900829, 34.145031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287630, -0.093957, 0.953122,
		-0.130921, 0.981977, 0.136311,
		-0.948751, -0.163991, 0.270145,
		40.675110, 35.851631, 34.226074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523338, 35.514236, 34.643909>,  <41.339237, 35.966427, 34.036972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523338, 35.514236, 34.643909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624416, 35.130756, 34.696129>,  <41.685062, 34.900669, 34.727459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624416, 35.130756, 34.696129>,  <41.523338, 35.514236, 34.643909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624416, 35.130756, 34.696129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967029, 0.245849, -0.066433,
		0.031594, 0.143033, 0.989213,
		0.252699, -0.958697, 0.130550,
		41.700226, 34.843147, 34.735294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987228, 35.784508, 35.131550>,  <41.523338, 35.514236, 34.643909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987228, 35.784508, 35.131550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052475, 35.497448, 35.402367>,  <42.091621, 35.325214, 35.564857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052475, 35.497448, 35.402367>,  <41.987228, 35.784508, 35.131550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052475, 35.497448, 35.402367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983725, 0.170718, -0.056041,
		-0.075365, 0.675160, 0.733812,
		0.163112, -0.717645, 0.677038,
		42.101410, 35.282154, 35.605476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408852, 36.093838, 35.686913>,  <41.987228, 35.784508, 35.131550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408852, 36.093838, 35.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448257, 35.697079, 35.654831>,  <42.471901, 35.459023, 35.635582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448257, 35.697079, 35.654831>,  <42.408852, 36.093838, 35.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448257, 35.697079, 35.654831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980980, 0.110343, -0.159696,
		0.167251, -0.062943, 0.983903,
		0.098515, -0.991898, -0.080201,
		42.477814, 35.399509, 35.630772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006359, 35.962902, 36.105278>,  <42.408852, 36.093838, 35.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006359, 35.962902, 36.105278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955536, 35.680817, 35.826271>,  <42.925041, 35.511566, 35.658867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955536, 35.680817, 35.826271>,  <43.006359, 35.962902, 36.105278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955536, 35.680817, 35.826271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968200, 0.064615, -0.241692,
		0.215514, -0.706046, 0.674576,
		-0.127057, -0.705212, -0.697519,
		42.917419, 35.469254, 35.617016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476871, 35.530937, 36.283978>,  <43.006359, 35.962902, 36.105278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476871, 35.530937, 36.283978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391026, 35.521896, 35.893402>,  <43.339520, 35.516472, 35.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391026, 35.521896, 35.893402>,  <43.476871, 35.530937, 36.283978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391026, 35.521896, 35.893402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933033, 0.290839, -0.211808,
		0.288776, -0.956505, -0.041317,
		-0.214612, -0.022615, -0.976438,
		43.326641, 35.515114, 35.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411438, 35.044979, 35.750935>,  <43.476871, 35.530937, 36.283978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411438, 35.044979, 35.750935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268196, 34.772659, 36.006523>,  <43.182251, 34.609268, 36.159874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268196, 34.772659, 36.006523>,  <43.411438, 35.044979, 35.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268196, 34.772659, 36.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556668, -0.705095, -0.439274,
		0.749588, 0.198387, 0.631475,
		-0.358104, -0.680796, 0.638967,
		43.160767, 34.568420, 36.198212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017403, 34.569386, 35.999176>,  <43.411438, 35.044979, 35.750935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017403, 34.569386, 35.999176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681347, 34.357582, 36.046135>,  <43.479713, 34.230499, 36.074310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681347, 34.357582, 36.046135>,  <44.017403, 34.569386, 35.999176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681347, 34.357582, 36.046135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426547, -0.778754, -0.460000,
		0.334996, -0.336391, 0.880124,
		-0.840140, -0.529513, 0.117393,
		43.429306, 34.198727, 36.081352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514275, 34.877625, 35.684982>,  <44.017403, 34.569386, 35.999176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514275, 34.877625, 35.684982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760715, 34.770767, 35.388592>,  <44.908581, 34.706654, 35.210758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760715, 34.770767, 35.388592>,  <44.514275, 34.877625, 35.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760715, 34.770767, 35.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526212, 0.839596, 0.134830,
		0.586101, -0.472980, 0.657857,
		0.616106, -0.267148, -0.740976,
		44.945549, 34.690624, 35.166298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142731, 34.856773, 35.919094>,  <44.514275, 34.877625, 35.684982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142731, 34.856773, 35.919094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199947, 34.970432, 35.539875>,  <45.234280, 35.038628, 35.312344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.199947, 34.970432, 35.539875>,  <45.142731, 34.856773, 35.919094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199947, 34.970432, 35.539875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441206, 0.839146, 0.318075,
		0.885932, -0.463785, -0.005331,
		0.143045, 0.284144, -0.948050,
		45.242863, 35.055676, 35.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834881, 35.138878, 35.795467>,  <45.142731, 34.856773, 35.919094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834881, 35.138878, 35.795467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602188, 35.306225, 35.516453>,  <45.462570, 35.406631, 35.349045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602188, 35.306225, 35.516453>,  <45.834881, 35.138878, 35.795467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602188, 35.306225, 35.516453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426815, 0.887033, 0.176069,
		0.692397, -0.195293, -0.694584,
		-0.581735, 0.418369, -0.697533,
		45.427670, 35.431736, 35.307194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128815, 35.784069, 35.713764>,  <45.834881, 35.138878, 35.795467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128815, 35.784069, 35.713764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332874, 35.481136, 35.876835>,  <46.455311, 35.299377, 35.974678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332874, 35.481136, 35.876835>,  <46.128815, 35.784069, 35.713764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332874, 35.481136, 35.876835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690594, 0.078150, -0.719008,
		0.512667, 0.648339, 0.562876,
		0.510150, -0.757330, 0.407674,
		46.485920, 35.253937, 35.999138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733639, 36.160965, 35.909424>,  <46.128815, 35.784069, 35.713764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733639, 36.160965, 35.909424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758541, 35.766098, 35.850594>,  <46.773483, 35.529179, 35.815296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758541, 35.766098, 35.850594>,  <46.733639, 36.160965, 35.909424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758541, 35.766098, 35.850594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708541, 0.147497, -0.690083,
		0.702918, -0.061250, 0.708628,
		0.062253, -0.987164, -0.147076,
		46.777218, 35.469948, 35.806469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422646, 35.921062, 35.856316>,  <46.733639, 36.160965, 35.909424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422646, 35.921062, 35.856316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209103, 35.640625, 35.667225>,  <47.080978, 35.472363, 35.553772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209103, 35.640625, 35.667225>,  <47.422646, 35.921062, 35.856316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209103, 35.640625, 35.667225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608929, 0.069134, -0.790206,
		0.586691, -0.709709, 0.390009,
		-0.533853, -0.701095, -0.472723,
		47.048946, 35.430298, 35.525410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.956165, 35.474163, 35.575966>,  <47.422646, 35.921062, 35.856316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.956165, 35.474163, 35.575966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617317, 35.385105, 35.382965>,  <47.414009, 35.331669, 35.267162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.617317, 35.385105, 35.382965>,  <47.956165, 35.474163, 35.575966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.617317, 35.385105, 35.382965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525984, -0.222053, -0.820996,
		0.075650, -0.949274, 0.305214,
		-0.847124, -0.222646, -0.482505,
		47.363178, 35.318310, 35.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898556, 34.747227, 35.226086>,  <47.956165, 35.474163, 35.575966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898556, 34.747227, 35.226086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709629, 35.040573, 35.030495>,  <47.596275, 35.216579, 34.913139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709629, 35.040573, 35.030495>,  <47.898556, 34.747227, 35.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709629, 35.040573, 35.030495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657188, -0.076690, -0.749815,
		-0.587386, -0.675498, -0.445735,
		-0.472315, 0.733362, -0.488976,
		47.567936, 35.260582, 34.883801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.467131, 31.120564, 26.202549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070814, 31.149197, 26.156572>,  <29.833025, 31.166376, 26.128986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070814, 31.149197, 26.156572>,  <30.467131, 31.120564, 26.202549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070814, 31.149197, 26.156572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123005, -0.120896, 0.985015,
		0.056613, 0.990081, 0.128587,
		-0.990790, 0.071581, -0.114941,
		29.773577, 31.170671, 26.122089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376019, 31.366125, 26.830593>,  <30.467131, 31.120564, 26.202549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376019, 31.366125, 26.830593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014469, 31.254847, 26.700598>,  <29.797539, 31.188080, 26.622601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.014469, 31.254847, 26.700598>,  <30.376019, 31.366125, 26.830593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014469, 31.254847, 26.700598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280316, -0.188712, 0.941175,
		-0.323161, 0.941804, 0.092589,
		-0.903875, -0.278197, -0.324987,
		29.743307, 31.171387, 26.603102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907461, 31.687092, 27.222086>,  <30.376019, 31.366125, 26.830593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907461, 31.687092, 27.222086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.706713, 31.364950, 27.095892>,  <29.586264, 31.171665, 27.020176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.706713, 31.364950, 27.095892>,  <29.907461, 31.687092, 27.222086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706713, 31.364950, 27.095892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289255, -0.187472, 0.938715,
		-0.815143, 0.562368, -0.138867,
		-0.501869, -0.805355, -0.315484,
		29.556152, 31.123344, 27.001247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318661, 31.667395, 27.590252>,  <29.907461, 31.687092, 27.222086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318661, 31.667395, 27.590252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.310726, 31.291180, 27.454609>,  <29.305965, 31.065451, 27.373224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.310726, 31.291180, 27.454609>,  <29.318661, 31.667395, 27.590252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310726, 31.291180, 27.454609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262838, -0.322337, 0.909404,
		-0.964636, 0.107168, -0.240816,
		-0.019835, -0.940539, -0.339106,
		29.304775, 31.009018, 27.352877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648968, 31.365284, 27.768818>,  <29.318661, 31.667395, 27.590252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648968, 31.365284, 27.768818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898615, 31.054899, 27.732248>,  <29.048403, 30.868668, 27.710306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.898615, 31.054899, 27.732248>,  <28.648968, 31.365284, 27.768818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898615, 31.054899, 27.732248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216495, -0.284176, 0.934009,
		-0.750737, -0.563139, -0.345352,
		0.624118, -0.775963, -0.091424,
		29.085850, 30.822111, 27.704821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333776, 30.771687, 28.098225>,  <28.648968, 31.365284, 27.768818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333776, 30.771687, 28.098225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716614, 30.657408, 28.078846>,  <28.946316, 30.588840, 28.067219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.716614, 30.657408, 28.078846>,  <28.333776, 30.771687, 28.098225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716614, 30.657408, 28.078846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, -0.204990, 0.978695,
		-0.289544, -0.936139, -0.199523,
		0.957094, -0.285700, -0.048448,
		29.003742, 30.571699, 28.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436020, 30.190416, 28.506626>,  <28.333776, 30.771687, 28.098225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436020, 30.190416, 28.506626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.816336, 30.314238, 28.501369>,  <29.044525, 30.388531, 28.498215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.816336, 30.314238, 28.501369>,  <28.436020, 30.190416, 28.506626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816336, 30.314238, 28.501369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090684, -0.237475, 0.967152,
		0.296264, -0.920751, -0.253861,
		0.950792, 0.309553, -0.013142,
		29.101574, 30.407103, 28.497427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794014, 29.656532, 28.880136>,  <28.436020, 30.190416, 28.506626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794014, 29.656532, 28.880136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.037661, 29.973619, 28.870558>,  <29.183849, 30.163872, 28.864811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.037661, 29.973619, 28.870558>,  <28.794014, 29.656532, 28.880136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037661, 29.973619, 28.870558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246863, -0.160818, 0.955613,
		0.753681, -0.587993, -0.293650,
		0.609118, 0.792718, -0.023948,
		29.220396, 30.211435, 28.863373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386372, 29.390940, 29.251118>,  <28.794014, 29.656532, 28.880136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386372, 29.390940, 29.251118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.405931, 29.789915, 29.272009>,  <29.417667, 30.029301, 29.284544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.405931, 29.789915, 29.272009>,  <29.386372, 29.390940, 29.251118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405931, 29.789915, 29.272009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304365, -0.064686, 0.950357,
		0.951300, -0.030578, -0.306748,
		0.048902, 0.997437, 0.052229,
		29.420603, 30.089146, 29.287678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877920, 29.479750, 29.633194>,  <29.386372, 29.390940, 29.251118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877920, 29.479750, 29.633194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698273, 29.836941, 29.645103>,  <29.590485, 30.051254, 29.652250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698273, 29.836941, 29.645103>,  <29.877920, 29.479750, 29.633194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698273, 29.836941, 29.645103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143174, 0.039035, 0.988927,
		0.881926, 0.448409, -0.145382,
		-0.449119, 0.892976, 0.029775,
		29.563538, 30.104834, 29.654036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292067, 29.918463, 29.846224>,  <29.877920, 29.479750, 29.633194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292067, 29.918463, 29.846224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940126, 30.077269, 29.950722>,  <29.728962, 30.172552, 30.013420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940126, 30.077269, 29.950722>,  <30.292067, 29.918463, 29.846224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940126, 30.077269, 29.950722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372204, 0.233823, 0.898215,
		0.295518, 0.887529, -0.353498,
		-0.879848, 0.397012, 0.261243,
		29.676172, 30.196373, 30.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447124, 30.592747, 30.260540>,  <30.292067, 29.918463, 29.846224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447124, 30.592747, 30.260540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.075729, 30.467007, 30.339632>,  <29.852892, 30.391563, 30.387087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.075729, 30.467007, 30.339632>,  <30.447124, 30.592747, 30.260540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075729, 30.467007, 30.339632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129698, 0.224426, 0.965822,
		-0.347982, 0.922397, -0.167606,
		-0.928486, -0.314351, 0.197729,
		29.797184, 30.372702, 30.398951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276148, 31.161755, 30.703062>,  <30.447124, 30.592747, 30.260540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276148, 31.161755, 30.703062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.040590, 30.851860, 30.795139>,  <29.899256, 30.665924, 30.850386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.040590, 30.851860, 30.795139>,  <30.276148, 31.161755, 30.703062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040590, 30.851860, 30.795139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381688, -0.015540, 0.924161,
		-0.712404, 0.632094, 0.304858,
		-0.588894, -0.774736, 0.230192,
		29.863922, 30.619440, 30.864197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004894, 31.317713, 31.324150>,  <30.276148, 31.161755, 30.703062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004894, 31.317713, 31.324150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951660, 30.923141, 31.285679>,  <29.919720, 30.686399, 31.262596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951660, 30.923141, 31.285679>,  <30.004894, 31.317713, 31.324150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951660, 30.923141, 31.285679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455344, -0.147047, 0.878088,
		-0.880312, 0.073068, 0.468734,
		-0.133086, -0.986427, -0.096176,
		29.911734, 30.627213, 31.256826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083246, 31.122408, 32.022713>,  <30.004894, 31.317713, 31.324150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083246, 31.122408, 32.022713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.099184, 30.767023, 31.839825>,  <30.108747, 30.553793, 31.730093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.099184, 30.767023, 31.839825>,  <30.083246, 31.122408, 32.022713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099184, 30.767023, 31.839825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572516, -0.354721, 0.739187,
		-0.818924, -0.291218, 0.494525,
		0.039846, -0.888462, -0.457217,
		30.111137, 30.500484, 31.702660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020777, 30.632353, 32.531784>,  <30.083246, 31.122408, 32.022713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020777, 30.632353, 32.531784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.215784, 30.443319, 32.238121>,  <30.332788, 30.329899, 32.061924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.215784, 30.443319, 32.238121>,  <30.020777, 30.632353, 32.531784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215784, 30.443319, 32.238121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644179, -0.372908, 0.667812,
		-0.589372, -0.798500, 0.122631,
		0.487518, -0.472586, -0.734159,
		30.362040, 30.301544, 32.017872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263386, 30.040031, 32.924088>,  <30.020777, 30.632353, 32.531784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263386, 30.040031, 32.924088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.441788, 30.060177, 32.566643>,  <30.548828, 30.072264, 32.352177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.441788, 30.060177, 32.566643>,  <30.263386, 30.040031, 32.924088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441788, 30.060177, 32.566643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830444, -0.395676, 0.392178,
		-0.333830, -0.917009, -0.218296,
		0.446005, 0.050362, -0.893612,
		30.575588, 30.075285, 32.298557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601355, 29.399797, 32.834053>,  <30.263386, 30.040031, 32.924088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601355, 29.399797, 32.834053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.794333, 29.629223, 32.569244>,  <30.910120, 29.766878, 32.410358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.794333, 29.629223, 32.569244>,  <30.601355, 29.399797, 32.834053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794333, 29.629223, 32.569244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870297, -0.399426, 0.288170,
		-0.099143, -0.715179, -0.691874,
		0.482446, 0.573565, -0.662019,
		30.939066, 29.801292, 32.370640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098221, 28.965586, 32.520432>,  <30.601355, 29.399797, 32.834053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098221, 28.965586, 32.520432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209089, 29.349165, 32.496464>,  <31.275612, 29.579313, 32.482082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209089, 29.349165, 32.496464>,  <31.098221, 28.965586, 32.520432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209089, 29.349165, 32.496464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844029, -0.213209, 0.492094,
		0.459118, -0.186968, -0.868478,
		0.277173, 0.958950, -0.059918,
		31.292242, 29.636850, 32.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731716, 28.933725, 32.261024>,  <31.098221, 28.965586, 32.520432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731716, 28.933725, 32.261024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731417, 29.279085, 32.462833>,  <31.731237, 29.486301, 32.583920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731417, 29.279085, 32.462833>,  <31.731716, 28.933725, 32.261024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731417, 29.279085, 32.462833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922692, -0.193914, 0.333221,
		0.385536, 0.465765, -0.796508,
		-0.000749, 0.863400, 0.504519,
		31.731192, 29.538105, 32.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314529, 29.255224, 32.193069>,  <31.731716, 28.933725, 32.261024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314529, 29.255224, 32.193069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.193825, 29.436909, 32.528362>,  <32.121403, 29.545919, 32.729538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.193825, 29.436909, 32.528362>,  <32.314529, 29.255224, 32.193069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193825, 29.436909, 32.528362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872901, -0.221932, 0.434500,
		0.383385, 0.862809, -0.329509,
		-0.301762, 0.454210, 0.838232,
		32.103294, 29.573172, 32.779831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925140, 29.566998, 32.563305>,  <32.314529, 29.255224, 32.193069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925140, 29.566998, 32.563305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.642857, 29.495312, 32.837486>,  <32.473484, 29.452301, 33.001995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.642857, 29.495312, 32.837486>,  <32.925140, 29.566998, 32.563305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642857, 29.495312, 32.837486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696000, -0.356275, 0.623420,
		0.132487, 0.917034, 0.376160,
		-0.705713, -0.179213, 0.685457,
		32.431141, 29.441547, 33.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103867, 30.348129, 32.728760>,  <32.925140, 29.566998, 32.563305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103867, 30.348129, 32.728760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.497608, 30.358604, 32.659065>,  <33.733852, 30.364889, 32.617249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.497608, 30.358604, 32.659065>,  <33.103867, 30.348129, 32.728760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497608, 30.358604, 32.659065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175608, 0.226507, -0.958048,
		0.014376, 0.973657, 0.227563,
		0.984355, 0.026189, -0.174239,
		33.792915, 30.366461, 32.606792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239944, 31.009710, 32.267643>,  <33.103867, 30.348129, 32.728760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239944, 31.009710, 32.267643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520866, 30.728653, 32.221920>,  <33.689419, 30.560019, 32.194489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520866, 30.728653, 32.221920>,  <33.239944, 31.009710, 32.267643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520866, 30.728653, 32.221920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025300, 0.135828, -0.990409,
		0.711429, 0.698459, 0.077615,
		0.702302, -0.702643, -0.114303,
		33.731556, 30.517860, 32.187630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688026, 31.285561, 31.744799>,  <33.239944, 31.009710, 32.267643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688026, 31.285561, 31.744799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741928, 30.889280, 31.752270>,  <33.774269, 30.651512, 31.756752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741928, 30.889280, 31.752270>,  <33.688026, 31.285561, 31.744799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741928, 30.889280, 31.752270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026181, -0.022405, -0.999406,
		0.990533, 0.134184, -0.028956,
		0.134753, -0.990703, 0.018680,
		33.782352, 30.592070, 31.757874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167782, 31.113604, 31.243858>,  <33.688026, 31.285561, 31.744799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167782, 31.113604, 31.243858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992355, 30.759642, 31.306601>,  <33.887100, 30.547264, 31.344246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992355, 30.759642, 31.306601>,  <34.167782, 31.113604, 31.243858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992355, 30.759642, 31.306601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163970, -0.092814, -0.982089,
		0.883612, -0.456434, -0.104392,
		-0.438570, -0.884903, 0.156853,
		33.860783, 30.494171, 31.353657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432419, 30.701931, 30.791998>,  <34.167782, 31.113604, 31.243858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432419, 30.701931, 30.791998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093868, 30.504377, 30.871719>,  <33.890736, 30.385845, 30.919552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093868, 30.504377, 30.871719>,  <34.432419, 30.701931, 30.791998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093868, 30.504377, 30.871719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163438, -0.115299, -0.979793,
		0.506883, -0.861850, 0.016867,
		-0.846379, -0.493884, 0.199302,
		33.839954, 30.356213, 30.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417828, 30.090221, 30.378092>,  <34.432419, 30.701931, 30.791998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417828, 30.090221, 30.378092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036213, 30.129711, 30.491283>,  <33.807243, 30.153406, 30.559198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036213, 30.129711, 30.491283>,  <34.417828, 30.090221, 30.378092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036213, 30.129711, 30.491283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288759, -0.049954, -0.956098,
		-0.080260, -0.993860, 0.076167,
		-0.954032, 0.098730, 0.282977,
		33.750004, 30.159328, 30.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112690, 29.543669, 30.055908>,  <34.417828, 30.090221, 30.378092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112690, 29.543669, 30.055908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.818588, 29.805059, 30.127871>,  <33.642128, 29.961893, 30.171049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.818588, 29.805059, 30.127871>,  <34.112690, 29.543669, 30.055908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818588, 29.805059, 30.127871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290359, -0.063836, -0.954786,
		-0.612446, -0.754251, 0.236678,
		-0.735257, 0.653476, 0.179907,
		33.598011, 30.001102, 30.181843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518963, 29.313557, 29.611259>,  <34.112690, 29.543669, 30.055908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518963, 29.313557, 29.611259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.410404, 29.689568, 29.693913>,  <33.345268, 29.915174, 29.743504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.410404, 29.689568, 29.693913>,  <33.518963, 29.313557, 29.611259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410404, 29.689568, 29.693913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376789, 0.093787, -0.921539,
		-0.885650, -0.327957, 0.328738,
		-0.271394, 0.940026, 0.206633,
		33.328987, 29.971575, 29.755903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920441, 29.382114, 29.295563>,  <33.518963, 29.313557, 29.611259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920441, 29.382114, 29.295563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037689, 29.762897, 29.331017>,  <33.108040, 29.991367, 29.352289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037689, 29.762897, 29.331017>,  <32.920441, 29.382114, 29.295563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037689, 29.762897, 29.331017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400298, 0.206389, -0.892841,
		-0.868240, 0.226232, 0.441564,
		0.293124, 0.951957, 0.088635,
		33.125626, 30.048485, 29.357607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353203, 29.793993, 29.086033>,  <32.920441, 29.382114, 29.295563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353203, 29.793993, 29.086033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641922, 30.068947, 29.053766>,  <32.815155, 30.233919, 29.034407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641922, 30.068947, 29.053766>,  <32.353203, 29.793993, 29.086033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641922, 30.068947, 29.053766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299355, 0.204988, -0.931862,
		-0.624013, 0.696765, 0.353733,
		0.721799, 0.687386, -0.080665,
		32.858463, 30.275162, 29.029566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130356, 30.452023, 28.800514>,  <32.353203, 29.793993, 29.086033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130356, 30.452023, 28.800514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524353, 30.441412, 28.732290>,  <32.760750, 30.435045, 28.691357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524353, 30.441412, 28.732290>,  <32.130356, 30.452023, 28.800514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524353, 30.441412, 28.732290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149669, 0.360986, -0.920483,
		0.085985, 0.932194, 0.351597,
		0.984990, -0.026524, -0.170560,
		32.819851, 30.433455, 28.681122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193413, 31.084415, 28.442976>,  <32.130356, 30.452023, 28.800514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193413, 31.084415, 28.442976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490864, 30.828291, 28.366011>,  <32.669334, 30.674616, 28.319832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490864, 30.828291, 28.366011>,  <32.193413, 31.084415, 28.442976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490864, 30.828291, 28.366011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132052, 0.141464, -0.981096,
		0.655426, 0.754977, 0.020643,
		0.743626, -0.640310, -0.192415,
		32.713951, 30.636198, 28.308287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534836, 31.437908, 28.000244>,  <32.193413, 31.084415, 28.442976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534836, 31.437908, 28.000244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688843, 31.073854, 27.939037>,  <32.781246, 30.855421, 27.902313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688843, 31.073854, 27.939037>,  <32.534836, 31.437908, 28.000244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688843, 31.073854, 27.939037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095480, 0.204188, -0.974264,
		0.917956, 0.360500, 0.165516,
		0.385019, -0.910136, -0.153016,
		32.804348, 30.800814, 27.893133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998966, 31.548023, 27.384724>,  <32.534836, 31.437908, 28.000244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998966, 31.548023, 27.384724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.933197, 31.154606, 27.414671>,  <32.893734, 30.918554, 27.432640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.933197, 31.154606, 27.414671>,  <32.998966, 31.548023, 27.384724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933197, 31.154606, 27.414671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092718, -0.060155, -0.993874,
		0.982023, -0.170357, -0.081301,
		-0.164423, -0.983544, 0.074868,
		32.883869, 30.859543, 27.437132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444790, 31.224068, 26.892426>,  <32.998966, 31.548023, 27.384724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444790, 31.224068, 26.892426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130295, 30.987949, 26.965515>,  <32.941597, 30.846279, 27.009369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130295, 30.987949, 26.965515>,  <33.444790, 31.224068, 26.892426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130295, 30.987949, 26.965515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219420, -0.009732, -0.975582,
		0.577659, -0.807130, -0.121871,
		-0.786235, -0.590294, 0.182722,
		32.894424, 30.810862, 27.020332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470146, 30.733324, 26.436836>,  <33.444790, 31.224068, 26.892426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470146, 30.733324, 26.436836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088055, 30.700144, 26.550436>,  <32.858799, 30.680235, 26.618595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088055, 30.700144, 26.550436>,  <33.470146, 30.733324, 26.436836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088055, 30.700144, 26.550436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291466, 0.098896, -0.951455,
		0.050840, -0.991634, -0.118646,
		-0.955229, -0.082953, 0.284000,
		32.801487, 30.675259, 26.635635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154655, 30.307720, 25.915892>,  <33.470146, 30.733324, 26.436836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154655, 30.307720, 25.915892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.873653, 30.524370, 26.100557>,  <32.705051, 30.654360, 26.211357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.873653, 30.524370, 26.100557>,  <33.154655, 30.307720, 25.915892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873653, 30.524370, 26.100557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417204, 0.212121, -0.883711,
		-0.576569, -0.813416, 0.076953,
		-0.702502, 0.541626, 0.461664,
		32.662903, 30.686857, 26.239056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552502, 30.082155, 25.617670>,  <33.154655, 30.307720, 25.915892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552502, 30.082155, 25.617670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459766, 30.440872, 25.768410>,  <32.404125, 30.656103, 25.858852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459766, 30.440872, 25.768410>,  <32.552502, 30.082155, 25.617670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459766, 30.440872, 25.768410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522619, 0.211915, -0.825809,
		-0.820440, -0.388399, 0.419552,
		-0.231835, 0.896793, 0.376848,
		32.390217, 30.709909, 25.881464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.760920, 30.220037, 25.431791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852251, 30.583992, 25.570337>,  <31.907051, 30.802364, 25.653465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852251, 30.583992, 25.570337>,  <31.760920, 30.220037, 25.431791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852251, 30.583992, 25.570337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586439, 0.412520, -0.697077,
		-0.777145, -0.043959, 0.627785,
		0.228331, 0.909887, 0.346367,
		31.920750, 30.856958, 25.674248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153994, 30.586283, 25.642464>,  <31.760920, 30.220037, 25.431791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153994, 30.586283, 25.642464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454203, 30.824774, 25.528461>,  <31.634329, 30.967869, 25.460060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454203, 30.824774, 25.528461>,  <31.153994, 30.586283, 25.642464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454203, 30.824774, 25.528461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615593, 0.473923, -0.629637,
		-0.240337, 0.648003, 0.722724,
		0.750522, 0.596228, -0.285005,
		31.679359, 31.003643, 25.442961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854654, 31.325697, 25.618383>,  <31.153994, 30.586283, 25.642464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854654, 31.325697, 25.618383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188341, 31.308308, 25.398495>,  <31.388554, 31.297874, 25.266562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188341, 31.308308, 25.398495>,  <30.854654, 31.325697, 25.618383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188341, 31.308308, 25.398495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483299, 0.422387, -0.766818,
		0.265532, 0.905372, 0.331351,
		0.834215, -0.043473, -0.549723,
		31.438606, 31.295265, 25.233578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764450, 31.888153, 25.309603>,  <30.854654, 31.325697, 25.618383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764450, 31.888153, 25.309603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048613, 31.694311, 25.105453>,  <31.219110, 31.578005, 24.982964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.048613, 31.694311, 25.105453>,  <30.764450, 31.888153, 25.309603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048613, 31.694311, 25.105453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471864, 0.210085, -0.856276,
		0.522179, 0.849130, -0.079423,
		0.710404, -0.484606, -0.510375,
		31.261734, 31.548929, 24.952341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999376, 32.335754, 24.772619>,  <30.764450, 31.888153, 25.309603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999376, 32.335754, 24.772619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082766, 31.968876, 24.636799>,  <31.132799, 31.748749, 24.555305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082766, 31.968876, 24.636799>,  <30.999376, 32.335754, 24.772619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082766, 31.968876, 24.636799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259947, 0.282730, -0.923304,
		0.942849, 0.280752, -0.179479,
		0.208476, -0.917192, -0.339552,
		31.145308, 31.693718, 24.534933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062462, 32.400299, 24.103777>,  <30.999376, 32.335754, 24.772619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062462, 32.400299, 24.103777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070993, 32.000397, 24.106379>,  <31.076113, 31.760456, 24.107941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070993, 32.000397, 24.106379>,  <31.062462, 32.400299, 24.103777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070993, 32.000397, 24.106379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399972, -0.014496, -0.916413,
		0.916279, 0.016945, -0.400182,
		0.021330, -0.999751, 0.006505,
		31.077393, 31.700472, 24.108330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469528, 32.208214, 23.447428>,  <31.062462, 32.400299, 24.103777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469528, 32.208214, 23.447428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220724, 31.924068, 23.579176>,  <31.071442, 31.753580, 23.658226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220724, 31.924068, 23.579176>,  <31.469528, 32.208214, 23.447428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220724, 31.924068, 23.579176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484714, 0.018964, -0.874467,
		0.614946, -0.703577, -0.356120,
		-0.622008, -0.710366, 0.329372,
		31.034122, 31.710958, 23.677988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491072, 31.709105, 22.995102>,  <31.469528, 32.208214, 23.447428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491072, 31.709105, 22.995102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138515, 31.630093, 23.166746>,  <30.926983, 31.582685, 23.269733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138515, 31.630093, 23.166746>,  <31.491072, 31.709105, 22.995102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138515, 31.630093, 23.166746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412589, -0.120481, -0.902914,
		0.230054, -0.972865, 0.024691,
		-0.881388, -0.197532, 0.429111,
		30.874100, 31.570833, 23.295479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224354, 31.104187, 22.689405>,  <31.491072, 31.709105, 22.995102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224354, 31.104187, 22.689405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915970, 31.301979, 22.849960>,  <30.730940, 31.420654, 22.946293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915970, 31.301979, 22.849960>,  <31.224354, 31.104187, 22.689405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915970, 31.301979, 22.849960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477421, -0.031576, -0.878107,
		-0.421532, -0.868615, 0.260419,
		-0.770960, 0.494480, 0.401385,
		30.684681, 31.450323, 22.970375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681726, 30.701376, 22.573616>,  <31.224354, 31.104187, 22.689405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681726, 30.701376, 22.573616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.533365, 31.070091, 22.618761>,  <30.444349, 31.291321, 22.645849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.533365, 31.070091, 22.618761>,  <30.681726, 30.701376, 22.573616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533365, 31.070091, 22.618761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548521, -0.119380, -0.827571,
		-0.749372, -0.368855, 0.549899,
		-0.370900, 0.921789, 0.112865,
		30.422094, 31.346628, 22.652620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921661, 30.676138, 22.389503>,  <30.681726, 30.701376, 22.573616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921661, 30.676138, 22.389503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997507, 31.068665, 22.376432>,  <30.043015, 31.304180, 22.368589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997507, 31.068665, 22.376432>,  <29.921661, 30.676138, 22.389503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997507, 31.068665, 22.376432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463517, 0.060125, -0.884046,
		-0.865563, 0.182771, 0.466257,
		0.189612, 0.981315, -0.032675,
		30.054390, 31.363060, 22.366631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343966, 30.885519, 22.136000>,  <29.921661, 30.676138, 22.389503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343966, 30.885519, 22.136000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603191, 31.184851, 22.079405>,  <29.758726, 31.364450, 22.045448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603191, 31.184851, 22.079405>,  <29.343966, 30.885519, 22.136000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603191, 31.184851, 22.079405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365576, 0.142689, -0.919779,
		-0.668109, 0.647799, 0.366043,
		0.648062, 0.748329, -0.141488,
		29.797609, 31.409349, 22.036959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917864, 31.315622, 21.998026>,  <29.343966, 30.885519, 22.136000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917864, 31.315622, 21.998026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258179, 31.456392, 21.841917>,  <29.462368, 31.540854, 21.748253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258179, 31.456392, 21.841917>,  <28.917864, 31.315622, 21.998026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258179, 31.456392, 21.841917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448977, 0.100839, -0.887835,
		-0.273095, 0.930581, 0.243798,
		0.850787, 0.351923, -0.390271,
		29.513414, 31.561970, 21.724836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775406, 31.951645, 21.701580>,  <28.917864, 31.315622, 21.998026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775406, 31.951645, 21.701580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108522, 31.854084, 21.502796>,  <29.308393, 31.795547, 21.383526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108522, 31.854084, 21.502796>,  <28.775406, 31.951645, 21.701580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108522, 31.854084, 21.502796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384397, 0.391226, -0.836170,
		0.398366, 0.887387, 0.232055,
		0.832793, -0.243900, -0.496960,
		29.358360, 31.780914, 21.353708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048889, 32.566795, 21.480955>,  <28.775406, 31.951645, 21.701580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048889, 32.566795, 21.480955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205404, 32.296082, 21.231520>,  <29.299313, 32.133656, 21.081858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205404, 32.296082, 21.231520>,  <29.048889, 32.566795, 21.480955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205404, 32.296082, 21.231520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143140, 0.624611, -0.767706,
		0.909069, 0.389653, 0.147527,
		0.391286, -0.676780, -0.623589,
		29.322790, 32.093048, 21.044443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386797, 32.952652, 21.126335>,  <29.048889, 32.566795, 21.480955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386797, 32.952652, 21.126335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380203, 32.607952, 20.923508>,  <29.376247, 32.401134, 20.801811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380203, 32.607952, 20.923508>,  <29.386797, 32.952652, 21.126335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380203, 32.607952, 20.923508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173323, 0.501924, -0.847367,
		0.984727, 0.073920, -0.157633,
		-0.016483, -0.861747, -0.507070,
		29.375257, 32.349426, 20.771387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881573, 33.059258, 20.614414>,  <29.386797, 32.952652, 21.126335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881573, 33.059258, 20.614414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636017, 32.773392, 20.480314>,  <29.488684, 32.601871, 20.399855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636017, 32.773392, 20.480314>,  <29.881573, 33.059258, 20.614414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636017, 32.773392, 20.480314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197283, 0.550115, -0.811451,
		0.764341, -0.432004, -0.478702,
		-0.613891, -0.714665, -0.335248,
		29.451849, 32.558990, 20.379740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015444, 32.979980, 19.902203>,  <29.881573, 33.059258, 20.614414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015444, 32.979980, 19.902203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676544, 32.768299, 19.920557>,  <29.473204, 32.641289, 19.931570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676544, 32.768299, 19.920557>,  <30.015444, 32.979980, 19.902203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676544, 32.768299, 19.920557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287537, 0.384277, -0.877299,
		0.446641, -0.756486, -0.477746,
		-0.847251, -0.529208, 0.045884,
		29.422369, 32.609535, 19.934322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936691, 32.549831, 19.235561>,  <30.015444, 32.979980, 19.902203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936691, 32.549831, 19.235561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.577816, 32.630180, 19.392889>,  <29.362490, 32.678391, 19.487286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.577816, 32.630180, 19.392889>,  <29.936691, 32.549831, 19.235561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577816, 32.630180, 19.392889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253934, 0.494018, -0.831543,
		-0.361341, -0.845930, -0.392219,
		-0.897190, 0.200873, 0.393319,
		29.308659, 32.690441, 19.510885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322054, 32.324238, 18.701824>,  <29.936691, 32.549831, 19.235561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322054, 32.324238, 18.701824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.182978, 32.596977, 18.959257>,  <29.099533, 32.760620, 19.113716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.182978, 32.596977, 18.959257>,  <29.322054, 32.324238, 18.701824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182978, 32.596977, 18.959257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392992, 0.517222, -0.760288,
		-0.851275, -0.517266, 0.088128,
		-0.347689, 0.681848, 0.643580,
		29.078671, 32.801533, 19.152330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659056, 32.388798, 18.443991>,  <29.322054, 32.324238, 18.701824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659056, 32.388798, 18.443991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718796, 32.716187, 18.665909>,  <28.754641, 32.912621, 18.799059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.718796, 32.716187, 18.665909>,  <28.659056, 32.388798, 18.443991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718796, 32.716187, 18.665909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617096, 0.515559, -0.594468,
		-0.772585, -0.253575, 0.582076,
		0.149352, 0.818473, 0.554793,
		28.763601, 32.961727, 18.832346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949923, 32.710136, 18.527985>,  <28.659056, 32.388798, 18.443991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949923, 32.710136, 18.527985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229534, 32.986546, 18.601578>,  <28.397301, 33.152390, 18.645733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.229534, 32.986546, 18.601578>,  <27.949923, 32.710136, 18.527985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229534, 32.986546, 18.601578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423093, 0.607085, -0.672636,
		-0.576498, 0.392351, 0.716736,
		0.699029, 0.691020, 0.183982,
		28.439243, 33.193851, 18.656773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597258, 33.394661, 18.742401>,  <27.949923, 32.710136, 18.527985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597258, 33.394661, 18.742401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.957483, 33.465450, 18.583572>,  <28.173618, 33.507923, 18.488276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.957483, 33.465450, 18.583572>,  <27.597258, 33.394661, 18.742401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957483, 33.465450, 18.583572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433673, 0.429256, -0.792255,
		0.030240, 0.885675, 0.463319,
		0.900563, 0.176972, -0.397074,
		28.227652, 33.518543, 18.464451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720949, 34.107395, 18.722454>,  <27.597258, 33.394661, 18.742401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720949, 34.107395, 18.722454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.890188, 33.884586, 18.436598>,  <27.991732, 33.750900, 18.265083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.890188, 33.884586, 18.436598>,  <27.720949, 34.107395, 18.722454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890188, 33.884586, 18.436598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477254, 0.533434, -0.698338,
		0.770205, 0.636531, -0.040147,
		0.423098, -0.557024, -0.714641,
		28.017118, 33.717480, 18.222206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262152, 34.717709, 18.677082>,  <27.720949, 34.107395, 18.722454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262152, 34.717709, 18.677082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.977077, 34.784134, 18.949699>,  <26.806032, 34.823990, 19.113270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.977077, 34.784134, 18.949699>,  <27.262152, 34.717709, 18.677082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977077, 34.784134, 18.949699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575453, -0.417221, 0.703407,
		0.401164, 0.893504, 0.201786,
		-0.712686, 0.166063, 0.681544,
		26.763271, 34.833954, 19.154163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490824, 35.058544, 19.357574>,  <27.262152, 34.717709, 18.677082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490824, 35.058544, 19.357574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.151379, 34.859142, 19.428398>,  <26.947712, 34.739502, 19.470892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.151379, 34.859142, 19.428398>,  <27.490824, 35.058544, 19.357574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151379, 34.859142, 19.428398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396012, -0.376707, 0.837416,
		-0.350756, 0.780760, 0.517092,
		-0.848613, -0.498504, 0.177058,
		26.896795, 34.709591, 19.481516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392851, 35.169704, 20.086151>,  <27.490824, 35.058544, 19.357574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392851, 35.169704, 20.086151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.119621, 34.882130, 20.034716>,  <26.955683, 34.709583, 20.003855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.119621, 34.882130, 20.034716>,  <27.392851, 35.169704, 20.086151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119621, 34.882130, 20.034716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233375, -0.381692, 0.894342,
		-0.692058, 0.580893, 0.428507,
		-0.683075, -0.718940, -0.128587,
		26.914700, 34.666447, 19.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094036, 35.191658, 20.720301>,  <27.392851, 35.169704, 20.086151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094036, 35.191658, 20.720301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.992222, 34.837032, 20.565786>,  <26.931133, 34.624256, 20.473078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.992222, 34.837032, 20.565786>,  <27.094036, 35.191658, 20.720301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992222, 34.837032, 20.565786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165285, -0.433447, 0.885892,
		-0.952834, 0.161642, 0.256862,
		-0.254534, -0.886564, -0.386286,
		26.915861, 34.571064, 20.449900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672832, 34.967430, 21.241495>,  <27.094036, 35.191658, 20.720301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672832, 34.967430, 21.241495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.771326, 34.660740, 21.004347>,  <26.830421, 34.476727, 20.862057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.771326, 34.660740, 21.004347>,  <26.672832, 34.967430, 21.241495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771326, 34.660740, 21.004347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123917, -0.581782, 0.803849,
		-0.961256, -0.271402, -0.048245,
		0.246235, -0.766727, -0.592873,
		26.845196, 34.430721, 20.826485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346035, 34.415520, 21.587526>,  <26.672832, 34.967430, 21.241495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346035, 34.415520, 21.587526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.630329, 34.234837, 21.371819>,  <26.800905, 34.126427, 21.242393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.630329, 34.234837, 21.371819>,  <26.346035, 34.415520, 21.587526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630329, 34.234837, 21.371819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204323, -0.600987, 0.772701,
		-0.673133, -0.659371, -0.334847,
		0.710735, -0.451714, -0.539268,
		26.843550, 34.099323, 21.210039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142349, 33.678532, 21.655380>,  <26.346035, 34.415520, 21.587526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142349, 33.678532, 21.655380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529942, 33.688725, 21.557053>,  <26.762497, 33.694839, 21.498056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.529942, 33.688725, 21.557053>,  <26.142349, 33.678532, 21.655380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529942, 33.688725, 21.557053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208033, -0.621066, 0.755645,
		-0.133415, -0.783344, -0.607101,
		0.968980, 0.025483, -0.245821,
		26.820635, 33.696369, 21.483307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441811, 33.012398, 21.824329>,  <26.142349, 33.678532, 21.655380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441811, 33.012398, 21.824329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763840, 33.248875, 21.804922>,  <26.957058, 33.390759, 21.793278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763840, 33.248875, 21.804922>,  <26.441811, 33.012398, 21.824329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763840, 33.248875, 21.804922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365265, -0.429639, 0.825828,
		0.467376, -0.682573, -0.561831,
		0.805072, 0.591189, -0.048517,
		27.005362, 33.426231, 21.790367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051311, 32.550053, 21.948242>,  <26.441811, 33.012398, 21.824329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051311, 32.550053, 21.948242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193880, 32.918549, 22.010565>,  <27.279421, 33.139648, 22.047958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193880, 32.918549, 22.010565>,  <27.051311, 32.550053, 21.948242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193880, 32.918549, 22.010565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488386, -0.325860, 0.809503,
		0.796519, -0.212431, -0.566065,
		0.356422, 0.921243, 0.155805,
		27.300806, 33.194920, 22.057306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736376, 32.508503, 22.013466>,  <27.051311, 32.550053, 21.948242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736376, 32.508503, 22.013466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632551, 32.832344, 22.224052>,  <27.570255, 33.026649, 22.350405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.632551, 32.832344, 22.224052>,  <27.736376, 32.508503, 22.013466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632551, 32.832344, 22.224052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500152, -0.353648, 0.790430,
		0.826120, 0.468480, -0.313132,
		-0.259562, 0.809604, 0.526468,
		27.554682, 33.075226, 22.381992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311602, 32.745281, 22.147144>,  <27.736376, 32.508503, 22.013466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311602, 32.745281, 22.147144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063803, 32.892319, 22.424589>,  <27.915123, 32.980541, 22.591057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063803, 32.892319, 22.424589>,  <28.311602, 32.745281, 22.147144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063803, 32.892319, 22.424589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529149, -0.457128, 0.714867,
		0.579849, 0.809883, 0.088678,
		-0.619496, 0.367591, 0.693614,
		27.877954, 33.002598, 22.632673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750126, 33.004482, 22.707365>,  <28.311602, 32.745281, 22.147144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750126, 33.004482, 22.707365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399424, 32.976589, 22.897705>,  <28.189001, 32.959854, 23.011909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399424, 32.976589, 22.897705>,  <28.750126, 33.004482, 22.707365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399424, 32.976589, 22.897705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472068, -0.313884, 0.823789,
		0.091918, 0.946897, 0.308119,
		-0.876757, -0.069732, 0.475851,
		28.136396, 32.955669, 23.040461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846891, 33.321102, 23.381393>,  <28.750126, 33.004482, 22.707365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846891, 33.321102, 23.381393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.527967, 33.081482, 23.410879>,  <28.336613, 32.937710, 23.428570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.527967, 33.081482, 23.410879>,  <28.846891, 33.321102, 23.381393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527967, 33.081482, 23.410879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440125, -0.493471, 0.750184,
		-0.413026, 0.630571, 0.657107,
		-0.797308, -0.599054, 0.073714,
		28.288774, 32.901764, 23.432993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678745, 33.340252, 24.120110>,  <28.846891, 33.321102, 23.381393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678745, 33.340252, 24.120110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.493982, 33.007427, 23.997267>,  <28.383125, 32.807732, 23.923561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.493982, 33.007427, 23.997267>,  <28.678745, 33.340252, 24.120110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493982, 33.007427, 23.997267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334081, -0.483982, 0.808797,
		-0.821604, 0.270989, 0.501530,
		-0.461906, -0.832062, -0.307109,
		28.355412, 32.757809, 23.905134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228006, 33.007530, 24.722858>,  <28.678745, 33.340252, 24.120110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228006, 33.007530, 24.722858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.307558, 32.697151, 24.483410>,  <28.355289, 32.510921, 24.339741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.307558, 32.697151, 24.483410>,  <28.228006, 33.007530, 24.722858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307558, 32.697151, 24.483410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113625, -0.588447, 0.800512,
		-0.973415, -0.227224, -0.028863,
		0.198880, -0.775951, -0.598621,
		28.367222, 32.464367, 24.303823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014469, 32.366177, 25.133961>,  <28.228006, 33.007530, 24.722858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014469, 32.366177, 25.133961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210842, 32.169575, 24.846235>,  <28.328667, 32.051613, 24.673599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210842, 32.169575, 24.846235>,  <28.014469, 32.366177, 25.133961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210842, 32.169575, 24.846235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295698, -0.682639, 0.668256,
		-0.819480, -0.540768, -0.189793,
		0.490932, -0.491501, -0.719314,
		28.358122, 32.022125, 24.630442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921734, 31.596724, 25.206642>,  <28.014469, 32.366177, 25.133961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921734, 31.596724, 25.206642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.260351, 31.664637, 25.004835>,  <28.463522, 31.705383, 24.883751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.260351, 31.664637, 25.004835>,  <27.921734, 31.596724, 25.206642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260351, 31.664637, 25.004835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469186, -0.685679, 0.556515,
		-0.251451, -0.707827, -0.660116,
		0.846544, 0.169781, -0.504518,
		28.514315, 31.715570, 24.853479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151051, 30.925888, 24.958748>,  <27.921734, 31.596724, 25.206642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151051, 30.925888, 24.958748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449224, 31.190271, 24.993296>,  <28.628130, 31.348902, 25.014025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449224, 31.190271, 24.993296>,  <28.151051, 30.925888, 24.958748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449224, 31.190271, 24.993296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549628, -0.682782, 0.481372,
		0.377138, -0.311360, -0.872251,
		0.745437, 0.660957, 0.086371,
		28.672855, 31.388559, 25.019207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739672, 30.521164, 25.024813>,  <28.151051, 30.925888, 24.958748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739672, 30.521164, 25.024813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855715, 30.876970, 25.166004>,  <28.925341, 31.090454, 25.250719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855715, 30.876970, 25.166004>,  <28.739672, 30.521164, 25.024813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855715, 30.876970, 25.166004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616765, -0.455812, 0.641745,
		0.731736, 0.031529, -0.680858,
		0.290110, 0.889518, 0.352980,
		28.942747, 31.143826, 25.271898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384869, 30.430695, 25.188749>,  <28.739672, 30.521164, 25.024813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384869, 30.430695, 25.188749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287642, 30.748611, 25.411182>,  <29.229305, 30.939362, 25.544641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287642, 30.748611, 25.411182>,  <29.384869, 30.430695, 25.188749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287642, 30.748611, 25.411182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516158, -0.379399, 0.767878,
		0.821279, 0.473672, -0.318018,
		-0.243067, 0.794790, 0.556082,
		29.214722, 30.987049, 25.578007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.822231, 30.062431, 27.919403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.478058, 30.215103, 28.054440>,  <33.271553, 30.306705, 28.135462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.478058, 30.215103, 28.054440>,  <33.822231, 30.062431, 27.919403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478058, 30.215103, 28.054440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369445, 0.010996, 0.929188,
		0.350938, 0.924230, -0.150470,
		-0.860438, 0.381677, 0.337593,
		33.219925, 30.329607, 28.155718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042465, 30.587109, 28.287802>,  <33.822231, 30.062431, 27.919403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042465, 30.587109, 28.287802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.669998, 30.538046, 28.425135>,  <33.446518, 30.508608, 28.507534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.669998, 30.538046, 28.425135>,  <34.042465, 30.587109, 28.287802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669998, 30.538046, 28.425135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322803, 0.160367, 0.932781,
		-0.169472, 0.979407, -0.109735,
		-0.931170, -0.122658, 0.343333,
		33.390648, 30.501249, 28.528135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016277, 30.960703, 28.913347>,  <34.042465, 30.587109, 28.287802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016277, 30.960703, 28.913347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.670334, 30.766663, 28.965036>,  <33.462769, 30.650238, 28.996050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.670334, 30.766663, 28.965036>,  <34.016277, 30.960703, 28.913347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670334, 30.766663, 28.965036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108637, 0.070458, 0.991581,
		-0.490123, 0.871614, -0.008236,
		-0.864857, -0.485102, 0.129223,
		33.410877, 30.621132, 29.003803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652237, 31.240963, 29.491112>,  <34.016277, 30.960703, 28.913347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652237, 31.240963, 29.491112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.482815, 30.881910, 29.442364>,  <33.381161, 30.666479, 29.413115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.482815, 30.881910, 29.442364>,  <33.652237, 31.240963, 29.491112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482815, 30.881910, 29.442364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052319, -0.158552, 0.985964,
		-0.904357, 0.411237, 0.114119,
		-0.423559, -0.897633, -0.121872,
		33.355747, 30.612621, 29.405802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103279, 31.223663, 30.029268>,  <33.652237, 31.240963, 29.491112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103279, 31.223663, 30.029268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.193619, 30.842978, 29.946100>,  <33.247822, 30.614565, 29.896200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.193619, 30.842978, 29.946100>,  <33.103279, 31.223663, 30.029268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193619, 30.842978, 29.946100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060332, -0.199358, 0.978068,
		-0.972293, -0.233438, 0.012395,
		0.225847, -0.951716, -0.207918,
		33.261372, 30.557463, 29.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661949, 30.823479, 30.445965>,  <33.103279, 31.223663, 30.029268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661949, 30.823479, 30.445965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.945332, 30.553167, 30.364561>,  <33.115360, 30.390980, 30.315720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.945332, 30.553167, 30.364561>,  <32.661949, 30.823479, 30.445965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945332, 30.553167, 30.364561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004131, -0.284379, 0.958703,
		-0.705747, -0.680036, -0.198678,
		0.708452, -0.675781, -0.203509,
		33.157867, 30.350433, 30.303509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487946, 30.239845, 30.862299>,  <32.661949, 30.823479, 30.445965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487946, 30.239845, 30.862299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874165, 30.217728, 30.760592>,  <33.105896, 30.204456, 30.699566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874165, 30.217728, 30.760592>,  <32.487946, 30.239845, 30.862299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874165, 30.217728, 30.760592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239791, -0.190392, 0.951972,
		-0.101050, -0.980150, -0.170574,
		0.965551, -0.055295, -0.254270,
		33.163830, 30.201139, 30.684311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777561, 29.773689, 31.405012>,  <32.487946, 30.239845, 30.862299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777561, 29.773689, 31.405012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.099232, 29.938490, 31.233635>,  <33.292233, 30.037371, 31.130808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.099232, 29.938490, 31.233635>,  <32.777561, 29.773689, 31.405012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099232, 29.938490, 31.233635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534661, -0.186454, 0.824241,
		0.259703, -0.891903, -0.370222,
		0.804172, 0.412001, -0.428443,
		33.340485, 30.062090, 31.105103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328812, 29.363625, 31.627546>,  <32.777561, 29.773689, 31.405012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328812, 29.363625, 31.627546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.527283, 29.695612, 31.525599>,  <33.646366, 29.894804, 31.464430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.527283, 29.695612, 31.525599>,  <33.328812, 29.363625, 31.627546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527283, 29.695612, 31.525599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435950, 0.015702, 0.899834,
		0.750837, -0.557586, -0.354035,
		0.496176, 0.829971, -0.254869,
		33.676136, 29.944603, 31.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105160, 29.362698, 31.840626>,  <33.328812, 29.363625, 31.627546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105160, 29.362698, 31.840626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.018089, 29.748377, 31.780045>,  <33.965847, 29.979784, 31.743696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.018089, 29.748377, 31.780045>,  <34.105160, 29.362698, 31.840626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018089, 29.748377, 31.780045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434071, 0.234621, 0.869790,
		0.874184, 0.123591, -0.469603,
		-0.217677, 0.964198, -0.151455,
		33.952785, 30.037636, 31.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763748, 29.711685, 32.086906>,  <34.105160, 29.362698, 31.840626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763748, 29.711685, 32.086906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460041, 29.971325, 32.105610>,  <34.277817, 30.127110, 32.116833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.460041, 29.971325, 32.105610>,  <34.763748, 29.711685, 32.086906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460041, 29.971325, 32.105610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275749, 0.255807, 0.926567,
		0.589474, 0.716402, -0.373213,
		-0.759265, 0.649100, 0.046755,
		34.232262, 30.166056, 32.119637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016533, 30.316992, 32.427650>,  <34.763748, 29.711685, 32.086906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016533, 30.316992, 32.427650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623753, 30.310860, 32.503048>,  <34.388084, 30.307180, 32.548286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.623753, 30.310860, 32.503048>,  <35.016533, 30.316992, 32.427650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623753, 30.310860, 32.503048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177874, 0.263678, 0.948069,
		-0.064238, 0.964489, -0.256193,
		-0.981954, -0.015332, 0.188496,
		34.329166, 30.306259, 32.559597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683155, 30.933502, 32.635906>,  <35.016533, 30.316992, 32.427650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683155, 30.933502, 32.635906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514511, 30.616936, 32.812950>,  <34.413322, 30.426996, 32.919178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514511, 30.616936, 32.812950>,  <34.683155, 30.933502, 32.635906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514511, 30.616936, 32.812950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384708, 0.285894, 0.877647,
		-0.821123, 0.540304, 0.183927,
		-0.421612, -0.791414, 0.442613,
		34.388027, 30.379511, 32.945736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211613, 31.256962, 32.250141>,  <34.683155, 30.933502, 32.635906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211613, 31.256962, 32.250141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298820, 30.879225, 32.151604>,  <35.351147, 30.652582, 32.092484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298820, 30.879225, 32.151604>,  <35.211613, 31.256962, 32.250141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298820, 30.879225, 32.151604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682293, 0.032995, -0.730334,
		0.697814, 0.327303, -0.637125,
		0.218018, -0.944343, -0.246341,
		35.364227, 30.595922, 32.077702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070679, 31.436775, 32.290394>,  <35.211613, 31.256962, 32.250141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070679, 31.436775, 32.290394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335049, 31.726160, 32.370167>,  <36.493671, 31.899792, 32.418030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335049, 31.726160, 32.370167>,  <36.070679, 31.436775, 32.290394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335049, 31.726160, 32.370167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575886, 0.659347, -0.483339,
		-0.481173, 0.204603, 0.852414,
		0.660930, 0.723463, 0.199432,
		36.533329, 31.943199, 32.429996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807785, 32.023926, 32.713215>,  <36.070679, 31.436775, 32.290394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807785, 32.023926, 32.713215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104107, 32.189888, 32.501907>,  <36.281898, 32.289467, 32.375122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104107, 32.189888, 32.501907>,  <35.807785, 32.023926, 32.713215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104107, 32.189888, 32.501907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664664, 0.566476, -0.487161,
		0.097124, 0.712010, 0.695420,
		0.740802, 0.414906, -0.528266,
		36.326347, 32.314362, 32.343426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692688, 32.677406, 32.710155>,  <35.807785, 32.023926, 32.713215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692688, 32.677406, 32.710155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.970150, 32.689087, 32.422272>,  <36.136627, 32.696095, 32.249542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.970150, 32.689087, 32.422272>,  <35.692688, 32.677406, 32.710155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970150, 32.689087, 32.422272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607607, 0.560344, -0.562876,
		0.386850, 0.827745, 0.406429,
		0.693658, 0.029200, -0.719712,
		36.178246, 32.697845, 32.206356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707809, 33.446854, 32.490646>,  <35.692688, 32.677406, 32.710155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707809, 33.446854, 32.490646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851898, 33.213871, 32.199173>,  <35.938351, 33.074081, 32.024288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851898, 33.213871, 32.199173>,  <35.707809, 33.446854, 32.490646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851898, 33.213871, 32.199173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400787, 0.608733, -0.684700,
		0.842385, 0.538690, -0.014166,
		0.360217, -0.582458, -0.728688,
		35.959965, 33.039135, 31.980566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844185, 33.856293, 32.003780>,  <35.707809, 33.446854, 32.490646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844185, 33.856293, 32.003780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822350, 33.516579, 31.793739>,  <35.809246, 33.312752, 31.667715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.822350, 33.516579, 31.793739>,  <35.844185, 33.856293, 32.003780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822350, 33.516579, 31.793739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240148, 0.521619, -0.818683,
		0.969200, 0.081409, -0.232431,
		-0.054592, -0.849286, -0.525104,
		35.805973, 33.261791, 31.636208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196987, 33.942852, 31.415207>,  <35.844185, 33.856293, 32.003780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196987, 33.942852, 31.415207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953556, 33.639465, 31.321941>,  <35.807499, 33.457432, 31.265982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953556, 33.639465, 31.321941>,  <36.196987, 33.942852, 31.415207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953556, 33.639465, 31.321941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085221, 0.354619, -0.931119,
		0.788907, -0.546784, -0.280449,
		-0.608574, -0.758467, -0.233164,
		35.770985, 33.411926, 31.251993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335506, 33.632309, 30.721014>,  <36.196987, 33.942852, 31.415207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335506, 33.632309, 30.721014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949215, 33.549774, 30.783989>,  <35.717438, 33.500252, 30.821774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949215, 33.549774, 30.783989>,  <36.335506, 33.632309, 30.721014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949215, 33.549774, 30.783989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229105, 0.392688, -0.890678,
		0.121958, -0.896226, -0.426504,
		-0.965731, -0.206339, 0.157439,
		35.659496, 33.487873, 30.831221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011646, 33.320068, 29.992905>,  <36.335506, 33.632309, 30.721014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011646, 33.320068, 29.992905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.690536, 33.424412, 30.207382>,  <35.497871, 33.487019, 30.336069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.690536, 33.424412, 30.207382>,  <36.011646, 33.320068, 29.992905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690536, 33.424412, 30.207382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520217, 0.133082, -0.843601,
		-0.291416, -0.956161, 0.028867,
		-0.802777, 0.260856, 0.536193,
		35.449703, 33.502670, 30.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368099, 33.100433, 29.578928>,  <36.011646, 33.320068, 29.992905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368099, 33.100433, 29.578928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190052, 33.339741, 29.845446>,  <35.083221, 33.483326, 30.005356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190052, 33.339741, 29.845446>,  <35.368099, 33.100433, 29.578928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190052, 33.339741, 29.845446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793092, 0.082096, -0.603544,
		-0.415780, -0.797081, 0.437937,
		-0.445121, 0.598266, 0.666292,
		35.056515, 33.519222, 30.045334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684093, 32.920410, 29.512302>,  <35.368099, 33.100433, 29.578928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684093, 32.920410, 29.512302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654072, 33.288784, 29.665274>,  <34.636059, 33.509808, 29.757057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654072, 33.288784, 29.665274>,  <34.684093, 32.920410, 29.512302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654072, 33.288784, 29.665274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768223, 0.191112, -0.610991,
		-0.635768, -0.339648, 0.693137,
		-0.075055, 0.920932, 0.382428,
		34.631554, 33.565063, 29.780003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052208, 32.907112, 29.795744>,  <34.684093, 32.920410, 29.512302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052208, 32.907112, 29.795744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.144798, 33.291256, 29.733614>,  <34.200352, 33.521744, 29.696335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.144798, 33.291256, 29.733614>,  <34.052208, 32.907112, 29.795744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144798, 33.291256, 29.733614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856534, 0.125489, -0.500601,
		-0.461266, 0.248921, 0.851629,
		0.231480, 0.960360, -0.155326,
		34.214241, 33.579365, 29.687016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478806, 33.298820, 29.934797>,  <34.052208, 32.907112, 29.795744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478806, 33.298820, 29.934797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.699753, 33.541348, 29.705969>,  <33.832321, 33.686863, 29.568672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.699753, 33.541348, 29.705969>,  <33.478806, 33.298820, 29.934797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699753, 33.541348, 29.705969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809663, 0.226961, -0.541235,
		-0.198322, 0.762148, 0.616278,
		0.552372, 0.606316, -0.572072,
		33.865463, 33.723244, 29.534348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023251, 33.807247, 29.784222>,  <33.478806, 33.298820, 29.934797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023251, 33.807247, 29.784222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.291134, 33.874477, 29.494879>,  <33.451862, 33.914814, 29.321274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.291134, 33.874477, 29.494879>,  <33.023251, 33.807247, 29.784222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291134, 33.874477, 29.494879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742230, 0.183204, -0.644616,
		0.024180, 0.968601, 0.247441,
		0.669708, 0.168071, -0.723355,
		33.492046, 33.924900, 29.277872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785137, 34.432766, 29.390862>,  <33.023251, 33.807247, 29.784222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785137, 34.432766, 29.390862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.043369, 34.234245, 29.158688>,  <33.198311, 34.115131, 29.019382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.043369, 34.234245, 29.158688>,  <32.785137, 34.432766, 29.390862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043369, 34.234245, 29.158688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657080, 0.026347, -0.753360,
		0.389187, 0.867750, -0.309101,
		0.645585, -0.496302, -0.580435,
		33.237045, 34.085354, 28.984556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156265, 35.190521, 29.527620>,  <32.785137, 34.432766, 29.390862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156265, 35.190521, 29.527620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.910240, 35.490665, 29.624500>,  <32.762627, 35.670753, 29.682629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.910240, 35.490665, 29.624500>,  <33.156265, 35.190521, 29.527620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910240, 35.490665, 29.624500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274982, -0.083755, 0.957794,
		0.738976, 0.655701, -0.154821,
		-0.615060, 0.750360, 0.242199,
		32.725723, 35.715775, 29.697161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471008, 35.605522, 30.086283>,  <33.156265, 35.190521, 29.527620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471008, 35.605522, 30.086283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.083466, 35.703857, 30.098085>,  <32.850941, 35.762859, 30.105167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.083466, 35.703857, 30.098085>,  <33.471008, 35.605522, 30.086283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083466, 35.703857, 30.098085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049821, 0.076818, 0.995800,
		0.242543, 0.966261, -0.086674,
		-0.968860, 0.245843, 0.029509,
		32.792809, 35.777611, 30.106937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327755, 36.165810, 30.551497>,  <33.471008, 35.605522, 30.086283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327755, 36.165810, 30.551497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.960335, 36.007698, 30.553118>,  <32.739883, 35.912830, 30.554090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.960335, 36.007698, 30.553118>,  <33.327755, 36.165810, 30.551497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960335, 36.007698, 30.553118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048900, 0.123797, 0.991102,
		-0.392265, 0.910180, -0.133043,
		-0.918552, -0.395281, 0.004053,
		32.684769, 35.889114, 30.554333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959061, 36.508339, 31.111532>,  <33.327755, 36.165810, 30.551497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959061, 36.508339, 31.111532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.757256, 36.171528, 31.035156>,  <32.636173, 35.969440, 30.989330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.757256, 36.171528, 31.035156>,  <32.959061, 36.508339, 31.111532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757256, 36.171528, 31.035156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196752, -0.103210, 0.975006,
		-0.840690, 0.529468, -0.113600,
		-0.504509, -0.842028, -0.190942,
		32.605904, 35.918919, 30.977873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290920, 36.604183, 31.486214>,  <32.959061, 36.508339, 31.111532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290920, 36.604183, 31.486214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.340939, 36.213013, 31.419258>,  <32.370949, 35.978310, 31.379084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.340939, 36.213013, 31.419258>,  <32.290920, 36.604183, 31.486214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340939, 36.213013, 31.419258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146670, -0.185081, 0.971716,
		-0.981250, -0.096955, -0.166576,
		0.125043, -0.977929, -0.167390,
		32.378452, 35.919636, 31.369041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779749, 36.236931, 31.866625>,  <32.290920, 36.604183, 31.486214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779749, 36.236931, 31.866625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.017548, 35.923500, 31.794415>,  <32.160225, 35.735443, 31.751087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.017548, 35.923500, 31.794415>,  <31.779749, 36.236931, 31.866625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017548, 35.923500, 31.794415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137678, -0.320384, 0.937229,
		-0.792225, -0.532324, -0.298347,
		0.594495, -0.783572, -0.180527,
		32.195896, 35.688427, 31.740257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378712, 35.632751, 32.115730>,  <31.779749, 36.236931, 31.866625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378712, 35.632751, 32.115730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.767475, 35.539566, 32.102333>,  <32.000732, 35.483654, 32.094296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.767475, 35.539566, 32.102333>,  <31.378712, 35.632751, 32.115730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767475, 35.539566, 32.102333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079287, -0.458068, 0.885374,
		-0.221605, -0.857846, -0.463671,
		0.971908, -0.232966, -0.033494,
		32.059048, 35.469677, 32.092285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358059, 34.945995, 32.121395>,  <31.378712, 35.632751, 32.115730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358059, 34.945995, 32.121395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.725088, 35.042637, 32.247688>,  <31.945307, 35.100620, 32.323463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.725088, 35.042637, 32.247688>,  <31.358059, 34.945995, 32.121395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725088, 35.042637, 32.247688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153622, -0.517006, 0.842084,
		0.366685, -0.821177, -0.437276,
		0.917574, 0.241604, 0.315729,
		32.000359, 35.115120, 32.342407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655853, 34.386353, 32.412174>,  <31.358059, 34.945995, 32.121395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655853, 34.386353, 32.412174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.862154, 34.685398, 32.579536>,  <31.985935, 34.864826, 32.679955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.862154, 34.685398, 32.579536>,  <31.655853, 34.386353, 32.412174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862154, 34.685398, 32.579536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198068, -0.371094, 0.907225,
		0.833527, -0.550778, -0.043314,
		0.515754, 0.747618, 0.418409,
		32.016880, 34.909683, 32.705059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027992, 34.118603, 32.931602>,  <31.655853, 34.386353, 32.412174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027992, 34.118603, 32.931602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.022350, 34.508808, 33.019398>,  <32.018963, 34.742931, 33.072075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.022350, 34.508808, 33.019398>,  <32.027992, 34.118603, 32.931602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022350, 34.508808, 33.019398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201486, -0.217777, 0.954975,
		0.979390, -0.030751, 0.199624,
		-0.014107, 0.975514, 0.219485,
		32.018120, 34.801464, 33.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434929, 34.153187, 33.571079>,  <32.027992, 34.118603, 32.931602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434929, 34.153187, 33.571079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.196205, 34.472797, 33.541733>,  <32.052971, 34.664562, 33.524124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.196205, 34.472797, 33.541733>,  <32.434929, 34.153187, 33.571079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196205, 34.472797, 33.541733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196597, -0.056969, 0.978828,
		0.777927, 0.598595, 0.191086,
		-0.596807, 0.799024, -0.073364,
		32.017162, 34.712505, 33.519722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593891, 34.560223, 34.114334>,  <32.434929, 34.153187, 33.571079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593891, 34.560223, 34.114334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.221695, 34.679958, 34.029881>,  <31.998377, 34.751801, 33.979206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.221695, 34.679958, 34.029881>,  <32.593891, 34.560223, 34.114334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221695, 34.679958, 34.029881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199491, 0.069320, 0.977445,
		0.307228, 0.951624, -0.004785,
		-0.930491, 0.299344, -0.211138,
		31.942547, 34.769760, 33.966537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.231541, 36.667763, 26.208460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858990, 36.805168, 26.256670>,  <32.635460, 36.887611, 26.285595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858990, 36.805168, 26.256670>,  <33.231541, 36.667763, 26.208460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858990, 36.805168, 26.256670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043012, -0.224911, 0.973430,
		0.361496, 0.911818, 0.194702,
		-0.931381, 0.343516, 0.120524,
		32.579575, 36.908222, 26.292828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373840, 36.970436, 26.799040>,  <33.231541, 36.667763, 26.208460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373840, 36.970436, 26.799040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981560, 36.910648, 26.748631>,  <32.746193, 36.874775, 26.718386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981560, 36.910648, 26.748631>,  <33.373840, 36.970436, 26.799040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981560, 36.910648, 26.748631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118402, -0.058866, 0.991219,
		-0.155572, 0.987013, 0.040033,
		-0.980703, -0.149466, -0.126022,
		32.687347, 36.865810, 26.710823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006306, 37.436474, 27.286100>,  <33.373840, 36.970436, 26.799040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006306, 37.436474, 27.286100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757027, 37.137436, 27.194252>,  <32.607460, 36.958012, 27.139143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757027, 37.137436, 27.194252>,  <33.006306, 37.436474, 27.286100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757027, 37.137436, 27.194252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208315, -0.124318, 0.970129,
		-0.753813, 0.652411, -0.078262,
		-0.623193, -0.747599, -0.229620,
		32.570068, 36.913155, 27.125366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448811, 37.545815, 27.784212>,  <33.006306, 37.436474, 27.286100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448811, 37.545815, 27.784212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423443, 37.158710, 27.686708>,  <32.408222, 36.926449, 27.628206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423443, 37.158710, 27.686708>,  <32.448811, 37.545815, 27.784212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423443, 37.158710, 27.686708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237203, -0.222633, 0.945605,
		-0.969388, 0.117792, -0.215436,
		-0.063421, -0.967760, -0.243758,
		32.404415, 36.868382, 27.613581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894358, 37.380028, 28.185377>,  <32.448811, 37.545815, 27.784212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894358, 37.380028, 28.185377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118343, 37.057926, 28.107393>,  <32.252735, 36.864666, 28.060604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118343, 37.057926, 28.107393>,  <31.894358, 37.380028, 28.185377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118343, 37.057926, 28.107393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144283, -0.326492, 0.934123,
		-0.815858, -0.494945, -0.299008,
		0.559963, -0.805253, -0.194959,
		32.286331, 36.816349, 28.048906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518610, 36.823669, 28.440176>,  <31.894358, 37.380028, 28.185377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518610, 36.823669, 28.440176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881418, 36.662132, 28.392462>,  <32.099102, 36.565212, 28.363832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881418, 36.662132, 28.392462>,  <31.518610, 36.823669, 28.440176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881418, 36.662132, 28.392462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067783, -0.419608, 0.905171,
		-0.415559, -0.812939, -0.407971,
		0.907037, -0.403805, -0.119268,
		32.153522, 36.540981, 28.356676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394266, 36.164108, 28.691996>,  <31.518610, 36.823669, 28.440176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394266, 36.164108, 28.691996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794226, 36.159981, 28.695934>,  <32.034203, 36.157505, 28.698298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794226, 36.159981, 28.695934>,  <31.394266, 36.164108, 28.691996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794226, 36.159981, 28.695934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014095, -0.609640, 0.792553,
		-0.002173, -0.792611, -0.609723,
		0.999899, -0.010316, 0.009847,
		32.094196, 36.156887, 28.698889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673605, 35.459412, 28.900835>,  <31.394266, 36.164108, 28.691996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673605, 35.459412, 28.900835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958820, 35.733170, 28.961737>,  <32.129948, 35.897423, 28.998278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958820, 35.733170, 28.961737>,  <31.673605, 35.459412, 28.900835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958820, 35.733170, 28.961737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176564, -0.385439, 0.905683,
		0.678530, -0.618903, -0.395672,
		0.713037, 0.684395, 0.152256,
		32.172729, 35.938488, 29.007414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191196, 35.069843, 29.158033>,  <31.673605, 35.459412, 28.900835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191196, 35.069843, 29.158033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286015, 35.444031, 29.262884>,  <32.342907, 35.668545, 29.325794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286015, 35.444031, 29.262884>,  <32.191196, 35.069843, 29.158033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286015, 35.444031, 29.262884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359061, -0.335074, 0.871092,
		0.902710, -0.112369, -0.415317,
		0.237045, 0.935467, 0.262127,
		32.357128, 35.724670, 29.341522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671837, 34.897861, 28.679502>,  <32.191196, 35.069843, 29.158033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671837, 34.897861, 28.679502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865036, 34.556438, 28.601379>,  <32.980957, 34.351585, 28.554504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865036, 34.556438, 28.601379>,  <32.671837, 34.897861, 28.679502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865036, 34.556438, 28.601379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573414, -0.139759, -0.807257,
		0.661748, 0.501896, -0.556947,
		0.482998, -0.853562, -0.195309,
		33.009933, 34.300369, 28.542788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025421, 34.999954, 28.015911>,  <32.671837, 34.897861, 28.679502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025421, 34.999954, 28.015911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003952, 34.607101, 28.088068>,  <32.991070, 34.371391, 28.131361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003952, 34.607101, 28.088068>,  <33.025421, 34.999954, 28.015911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003952, 34.607101, 28.088068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485441, -0.132206, -0.864216,
		0.872621, -0.133950, -0.469671,
		-0.053668, -0.982130, 0.180390,
		32.987850, 34.312462, 28.142185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243919, 34.739746, 27.396107>,  <33.025421, 34.999954, 28.015911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243919, 34.739746, 27.396107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042606, 34.456902, 27.594786>,  <32.921818, 34.287197, 27.713993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042606, 34.456902, 27.594786>,  <33.243919, 34.739746, 27.396107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042606, 34.456902, 27.594786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594728, -0.133568, -0.792753,
		0.626905, -0.694377, -0.353315,
		-0.503278, -0.707107, 0.496700,
		32.891624, 34.244770, 27.743795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202267, 34.248608, 26.957253>,  <33.243919, 34.739746, 27.396107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202267, 34.248608, 26.957253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940136, 34.150288, 27.242945>,  <32.782856, 34.091293, 27.414360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940136, 34.150288, 27.242945>,  <33.202267, 34.248608, 26.957253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940136, 34.150288, 27.242945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663491, -0.264601, -0.699833,
		0.361009, -0.932505, 0.010311,
		-0.655326, -0.245805, 0.714232,
		32.743538, 34.076546, 27.457214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916008, 33.582939, 26.888016>,  <33.202267, 34.248608, 26.957253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916008, 33.582939, 26.888016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640480, 33.755722, 27.120888>,  <32.475163, 33.859390, 27.260611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640480, 33.755722, 27.120888>,  <32.916008, 33.582939, 26.888016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640480, 33.755722, 27.120888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703199, -0.202988, -0.681401,
		-0.176159, -0.878755, 0.443574,
		-0.688824, 0.431956, 0.582181,
		32.433834, 33.885307, 27.295542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325329, 33.124588, 26.796316>,  <32.916008, 33.582939, 26.888016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325329, 33.124588, 26.796316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209209, 33.493935, 26.896818>,  <32.139538, 33.715542, 26.957119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209209, 33.493935, 26.896818>,  <32.325329, 33.124588, 26.796316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209209, 33.493935, 26.896818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673306, -0.010515, -0.739289,
		-0.679990, -0.383787, 0.624757,
		-0.290299, 0.923362, 0.251256,
		32.122120, 33.770943, 26.972195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620958, 33.086094, 26.973944>,  <32.325329, 33.124588, 26.796316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620958, 33.086094, 26.973944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663715, 33.470921, 26.873545>,  <31.689369, 33.701817, 26.813305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663715, 33.470921, 26.873545>,  <31.620958, 33.086094, 26.973944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663715, 33.470921, 26.873545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811172, -0.061597, -0.581554,
		-0.574955, 0.265765, 0.773819,
		0.106892, 0.962068, -0.250997,
		31.695784, 33.759541, 26.798246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883806, 33.450661, 26.920004>,  <31.620958, 33.086094, 26.973944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883806, 33.450661, 26.920004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133511, 33.690742, 26.719984>,  <31.283333, 33.834793, 26.599972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133511, 33.690742, 26.719984>,  <30.883806, 33.450661, 26.920004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133511, 33.690742, 26.719984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647211, 0.038872, -0.761319,
		-0.437510, 0.798900, 0.412727,
		0.624261, 0.600206, -0.500050,
		31.320789, 33.870804, 26.569969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463856, 33.859291, 26.499866>,  <30.883806, 33.450661, 26.920004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463856, 33.859291, 26.499866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812601, 33.967888, 26.336823>,  <31.021849, 34.033047, 26.238997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812601, 33.967888, 26.336823>,  <30.463856, 33.859291, 26.499866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812601, 33.967888, 26.336823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472247, 0.245546, -0.846576,
		-0.129753, 0.930591, 0.342294,
		0.871864, 0.271493, -0.407608,
		31.074160, 34.049335, 26.214540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366312, 34.566273, 26.152411>,  <30.463856, 33.859291, 26.499866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366312, 34.566273, 26.152411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701010, 34.408943, 26.000015>,  <30.901829, 34.314545, 25.908577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701010, 34.408943, 26.000015>,  <30.366312, 34.566273, 26.152411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701010, 34.408943, 26.000015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299268, 0.254193, -0.919687,
		0.458579, 0.883563, 0.094986,
		0.836746, -0.393323, -0.380990,
		30.952034, 34.290947, 25.885719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724497, 35.097637, 25.721159>,  <30.366312, 34.566273, 26.152411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724497, 35.097637, 25.721159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828072, 34.740051, 25.574860>,  <30.890217, 34.525497, 25.487080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828072, 34.740051, 25.574860>,  <30.724497, 35.097637, 25.721159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828072, 34.740051, 25.574860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287667, 0.290106, -0.912736,
		0.922062, 0.341557, -0.182045,
		0.258939, -0.893967, -0.365751,
		30.905754, 34.471863, 25.465134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134809, 35.198563, 25.035826>,  <30.724497, 35.097637, 25.721159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134809, 35.198563, 25.035826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023085, 34.814835, 25.019335>,  <30.956051, 34.584599, 25.009439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023085, 34.814835, 25.019335>,  <31.134809, 35.198563, 25.035826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023085, 34.814835, 25.019335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210895, 0.103178, -0.972048,
		0.936754, -0.262809, -0.231133,
		-0.279311, -0.959315, -0.041228,
		30.939291, 34.527039, 25.006966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574114, 34.784084, 24.458309>,  <31.134809, 35.198563, 25.035826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574114, 34.784084, 24.458309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213491, 34.631752, 24.540447>,  <30.997118, 34.540352, 24.589729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213491, 34.631752, 24.540447>,  <31.574114, 34.784084, 24.458309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213491, 34.631752, 24.540447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241163, 0.048277, -0.969283,
		0.359219, -0.923384, -0.135367,
		-0.901555, -0.380830, 0.205344,
		30.943026, 34.517502, 24.602051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505186, 34.248497, 23.939976>,  <31.574114, 34.784084, 24.458309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505186, 34.248497, 23.939976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145531, 34.361263, 24.073889>,  <30.929737, 34.428921, 24.154236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145531, 34.361263, 24.073889>,  <31.505186, 34.248497, 23.939976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145531, 34.361263, 24.073889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341228, 0.027465, -0.939579,
		-0.274076, -0.959046, 0.071502,
		-0.899136, 0.281914, 0.334781,
		30.875790, 34.445839, 24.174322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.381231, 34.334465, 25.954865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.775591, 34.392090, 25.920795>,  <27.012207, 34.426662, 25.900354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.775591, 34.392090, 25.920795>,  <26.381231, 34.334465, 25.954865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775591, 34.392090, 25.920795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149208, -0.526150, 0.837200,
		0.075793, -0.838101, -0.540225,
		0.985897, 0.144059, -0.085173,
		27.071360, 34.435307, 25.895243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713678, 33.657162, 26.074802>,  <26.381231, 34.334465, 25.954865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713678, 33.657162, 26.074802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.008347, 33.920528, 26.136505>,  <27.185148, 34.078548, 26.173527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.008347, 33.920528, 26.136505>,  <26.713678, 33.657162, 26.074802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008347, 33.920528, 26.136505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353061, -0.569019, 0.742674,
		0.576768, -0.492645, -0.651644,
		0.736673, 0.658421, 0.154258,
		27.229349, 34.118053, 26.182783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246250, 33.273022, 26.335081>,  <26.713678, 33.657162, 26.074802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246250, 33.273022, 26.335081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.363251, 33.635273, 26.457903>,  <27.433451, 33.852623, 26.531595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.363251, 33.635273, 26.457903>,  <27.246250, 33.273022, 26.335081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363251, 33.635273, 26.457903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429589, -0.411316, 0.803910,
		0.854339, -0.103240, -0.509359,
		0.292503, 0.905627, 0.307053,
		27.451002, 33.906960, 26.550018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085470, 33.348099, 26.372808>,  <27.246250, 33.273022, 26.335081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085470, 33.348099, 26.372808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.913279, 33.611206, 26.620043>,  <27.809963, 33.769070, 26.768383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.913279, 33.611206, 26.620043>,  <28.085470, 33.348099, 26.372808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913279, 33.611206, 26.620043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464582, -0.425634, 0.776530,
		0.773854, 0.621433, -0.122359,
		-0.430481, 0.657767, 0.618085,
		27.784134, 33.808537, 26.805468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621414, 33.444252, 26.819525>,  <28.085470, 33.348099, 26.372808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621414, 33.444252, 26.819525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.325226, 33.610477, 27.030811>,  <28.147514, 33.710213, 27.157583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.325226, 33.610477, 27.030811>,  <28.621414, 33.444252, 26.819525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325226, 33.610477, 27.030811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351063, -0.431039, 0.831240,
		0.573115, 0.800944, 0.173282,
		-0.740468, 0.415564, 0.528217,
		28.103085, 33.735146, 27.189276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951674, 33.585175, 27.419958>,  <28.621414, 33.444252, 26.819525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951674, 33.585175, 27.419958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.571165, 33.645187, 27.527716>,  <28.342859, 33.681194, 27.592371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.571165, 33.645187, 27.527716>,  <28.951674, 33.585175, 27.419958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571165, 33.645187, 27.527716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187265, -0.412998, 0.891271,
		0.244980, 0.898289, 0.364777,
		-0.951271, 0.150033, 0.269394,
		28.285784, 33.690197, 27.608534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982487, 33.813385, 28.120296>,  <28.951674, 33.585175, 27.419958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982487, 33.813385, 28.120296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.607130, 33.691120, 28.055809>,  <28.381916, 33.617764, 28.017117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.607130, 33.691120, 28.055809>,  <28.982487, 33.813385, 28.120296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607130, 33.691120, 28.055809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028252, -0.397105, 0.917338,
		-0.344413, 0.865378, 0.364005,
		-0.938393, -0.305659, -0.161217,
		28.325613, 33.599422, 28.007444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613331, 34.003319, 28.685081>,  <28.982487, 33.813385, 28.120296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613331, 34.003319, 28.685081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420992, 33.697136, 28.514036>,  <28.305588, 33.513424, 28.411409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420992, 33.697136, 28.514036>,  <28.613331, 34.003319, 28.685081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420992, 33.697136, 28.514036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128009, -0.421185, 0.897896,
		-0.867409, 0.486490, 0.104540,
		-0.480848, -0.765461, -0.427615,
		28.276737, 33.467499, 28.385752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970303, 33.843685, 29.077089>,  <28.613331, 34.003319, 28.685081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970303, 33.843685, 29.077089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.006941, 33.493309, 28.887630>,  <28.028923, 33.283085, 28.773954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.006941, 33.493309, 28.887630>,  <27.970303, 33.843685, 29.077089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006941, 33.493309, 28.887630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022482, -0.473706, 0.880396,
		-0.995543, -0.091289, -0.023696,
		0.091595, -0.875939, -0.473647,
		28.034420, 33.230526, 28.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460121, 33.405582, 29.366962>,  <27.970303, 33.843685, 29.077089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460121, 33.405582, 29.366962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724985, 33.161236, 29.193352>,  <27.883904, 33.014626, 29.089186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.724985, 33.161236, 29.193352>,  <27.460121, 33.405582, 29.366962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724985, 33.161236, 29.193352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015934, -0.590544, 0.806848,
		-0.749192, -0.527347, -0.400769,
		0.662161, -0.610870, -0.434028,
		27.923634, 32.977974, 29.063143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190613, 32.751518, 29.470011>,  <27.460121, 33.405582, 29.366962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190613, 32.751518, 29.470011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.583420, 32.701679, 29.413279>,  <27.819105, 32.671776, 29.379240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.583420, 32.701679, 29.413279>,  <27.190613, 32.751518, 29.470011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583420, 32.701679, 29.413279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020311, -0.677182, 0.735535,
		-0.187688, -0.725190, -0.662475,
		0.982019, -0.124596, -0.141828,
		27.878025, 32.664299, 29.370729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259125, 32.083351, 29.435848>,  <27.190613, 32.751518, 29.470011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259125, 32.083351, 29.435848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.614735, 32.242840, 29.525871>,  <27.828100, 32.338535, 29.579885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.614735, 32.242840, 29.525871>,  <27.259125, 32.083351, 29.435848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614735, 32.242840, 29.525871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015300, -0.517145, 0.855761,
		0.457603, -0.757350, -0.465855,
		0.889025, 0.398726, 0.225060,
		27.881443, 32.362457, 29.593390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686449, 31.479330, 29.672045>,  <27.259125, 32.083351, 29.435848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686449, 31.479330, 29.672045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.854521, 31.811485, 29.818415>,  <27.955364, 32.010780, 29.906237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.854521, 31.811485, 29.818415>,  <27.686449, 31.479330, 29.672045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854521, 31.811485, 29.818415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133563, -0.455451, 0.880185,
		0.897558, -0.320962, -0.302281,
		0.420180, 0.830390, 0.365925,
		27.980576, 32.060604, 29.928192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326899, 31.285120, 29.964203>,  <27.686449, 31.479330, 29.672045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326899, 31.285120, 29.964203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208702, 31.630753, 30.127201>,  <28.137783, 31.838131, 30.225000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208702, 31.630753, 30.127201>,  <28.326899, 31.285120, 29.964203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208702, 31.630753, 30.127201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239149, -0.346057, 0.907222,
		0.924928, 0.365530, -0.104386,
		-0.295493, 0.864079, 0.407494,
		28.120054, 31.889977, 30.249449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989136, 31.275801, 29.765936>,  <28.326899, 31.285120, 29.964203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989136, 31.275801, 29.765936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.166908, 30.921797, 29.710453>,  <29.273573, 30.709394, 29.677164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.166908, 30.921797, 29.710453>,  <28.989136, 31.275801, 29.765936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166908, 30.921797, 29.710453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021397, 0.165281, -0.986014,
		0.895556, 0.435250, 0.092393,
		0.444433, -0.885009, -0.138705,
		29.300238, 30.656294, 29.668842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664740, 31.341602, 29.398758>,  <28.989136, 31.275801, 29.765936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664740, 31.341602, 29.398758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.516811, 30.975370, 29.335577>,  <29.428055, 30.755630, 29.297668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.516811, 30.975370, 29.335577>,  <29.664740, 31.341602, 29.398758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516811, 30.975370, 29.335577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337702, 0.025915, -0.940896,
		0.865558, -0.401302, 0.299609,
		-0.369819, -0.915579, -0.157952,
		29.405865, 30.700697, 29.288191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863688, 31.336540, 28.814920>,  <29.664740, 31.341602, 29.398758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863688, 31.336540, 28.814920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.695293, 30.974077, 28.831173>,  <29.594257, 30.756599, 28.840925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.695293, 30.974077, 28.831173>,  <29.863688, 31.336540, 28.814920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695293, 30.974077, 28.831173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194925, -0.134126, -0.971604,
		0.885875, -0.401113, 0.233098,
		-0.420987, -0.906156, 0.040632,
		29.568996, 30.702230, 28.843363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334316, 30.909962, 28.453232>,  <29.863688, 31.336540, 28.814920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334316, 30.909962, 28.453232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.966545, 30.753023, 28.463940>,  <29.745882, 30.658859, 28.470364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.966545, 30.753023, 28.463940>,  <30.334316, 30.909962, 28.453232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966545, 30.753023, 28.463940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035312, 0.014573, -0.999270,
		0.391671, -0.919701, -0.027253,
		-0.919427, -0.392348, 0.026769,
		29.690718, 30.635319, 28.471970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278282, 30.353695, 27.956579>,  <30.334316, 30.909962, 28.453232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278282, 30.353695, 27.956579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888226, 30.424395, 28.010038>,  <29.654192, 30.466814, 28.042114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.888226, 30.424395, 28.010038>,  <30.278282, 30.353695, 27.956579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888226, 30.424395, 28.010038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174840, -0.243166, -0.954097,
		-0.136134, -0.953746, 0.268024,
		-0.975140, 0.176747, 0.133650,
		29.595684, 30.477419, 28.050133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954346, 29.862158, 27.490688>,  <30.278282, 30.353695, 27.956579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954346, 29.862158, 27.490688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.674807, 30.144833, 27.534876>,  <29.507082, 30.314438, 27.561388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.674807, 30.144833, 27.534876>,  <29.954346, 29.862158, 27.490688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674807, 30.144833, 27.534876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048534, 0.200936, -0.978401,
		-0.713620, -0.678394, -0.174722,
		-0.698850, 0.706686, 0.110467,
		29.465151, 30.356838, 27.568016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427372, 29.777422, 26.909004>,  <29.954346, 29.862158, 27.490688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427372, 29.777422, 26.909004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.375381, 30.150640, 27.043186>,  <29.344187, 30.374571, 27.123695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.375381, 30.150640, 27.043186>,  <29.427372, 29.777422, 26.909004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375381, 30.150640, 27.043186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013705, 0.339983, -0.940332,
		-0.991423, -0.117622, -0.056976,
		-0.129974, 0.933047, 0.335455,
		29.336390, 30.430555, 27.143824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997482, 30.114622, 26.464493>,  <29.427372, 29.777422, 26.909004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997482, 30.114622, 26.464493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.165672, 30.429417, 26.645092>,  <29.266586, 30.618294, 26.753452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.165672, 30.429417, 26.645092>,  <28.997482, 30.114622, 26.464493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165672, 30.429417, 26.645092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028963, 0.485731, -0.873628,
		-0.906841, 0.380417, 0.181445,
		0.420477, 0.786987, 0.451498,
		29.291815, 30.665512, 26.780542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552813, 30.684340, 26.259588>,  <28.997482, 30.114622, 26.464493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552813, 30.684340, 26.259588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.917494, 30.817511, 26.355885>,  <29.136303, 30.897413, 26.413662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.917494, 30.817511, 26.355885>,  <28.552813, 30.684340, 26.259588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917494, 30.817511, 26.355885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066261, 0.459137, -0.885891,
		-0.405469, 0.823622, 0.396537,
		0.911704, 0.332927, 0.240740,
		29.191006, 30.917389, 26.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544373, 31.385880, 26.277287>,  <28.552813, 30.684340, 26.259588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544373, 31.385880, 26.277287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926544, 31.301794, 26.194376>,  <29.155848, 31.251343, 26.144630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926544, 31.301794, 26.194376>,  <28.544373, 31.385880, 26.277287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926544, 31.301794, 26.194376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073032, 0.511984, -0.855885,
		0.286040, 0.832876, 0.473813,
		0.955431, -0.210214, -0.207274,
		29.213173, 31.238729, 26.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822973, 32.112846, 26.150265>,  <28.544373, 31.385880, 26.277287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822973, 32.112846, 26.150265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966616, 31.778503, 25.984190>,  <29.052801, 31.577896, 25.884544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966616, 31.778503, 25.984190>,  <28.822973, 32.112846, 26.150265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966616, 31.778503, 25.984190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234105, 0.349966, -0.907038,
		0.903459, 0.422919, -0.070005,
		0.359105, -0.835861, -0.415188,
		29.074347, 31.527744, 25.859634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268473, 32.320492, 25.685453>,  <28.822973, 32.112846, 26.150265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268473, 32.320492, 25.685453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171392, 31.949141, 25.572882>,  <29.113144, 31.726328, 25.505339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.171392, 31.949141, 25.572882>,  <29.268473, 32.320492, 25.685453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171392, 31.949141, 25.572882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199749, 0.331710, -0.921992,
		0.949314, -0.167554, -0.265950,
		-0.242701, -0.928383, -0.281428,
		29.098581, 31.670626, 25.488453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612352, 32.224422, 25.091190>,  <29.268473, 32.320492, 25.685453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612352, 32.224422, 25.091190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.319557, 31.951944, 25.085941>,  <29.143881, 31.788458, 25.082792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.319557, 31.951944, 25.085941>,  <29.612352, 32.224422, 25.091190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319557, 31.951944, 25.085941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307086, 0.347056, -0.886143,
		0.608190, -0.644614, -0.463225,
		-0.731985, -0.681194, -0.013124,
		29.099962, 31.747587, 25.082005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681955, 32.047924, 24.319500>,  <29.612352, 32.224422, 25.091190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681955, 32.047924, 24.319500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.326313, 31.974640, 24.487272>,  <29.112926, 31.930670, 24.587936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.326313, 31.974640, 24.487272>,  <29.681955, 32.047924, 24.319500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326313, 31.974640, 24.487272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453517, 0.229049, -0.861312,
		0.061729, -0.956019, -0.286737,
		-0.889107, -0.183208, 0.419432,
		29.059582, 31.919678, 24.613102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700459, 31.332558, 23.921947>,  <29.681955, 32.047924, 24.319500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700459, 31.332558, 23.921947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.053057, 31.406973, 23.748348>,  <30.264616, 31.451622, 23.644188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.053057, 31.406973, 23.748348>,  <29.700459, 31.332558, 23.921947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053057, 31.406973, 23.748348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471306, -0.402971, 0.784529,
		-0.028936, -0.896105, -0.442899,
		0.881495, 0.186039, -0.434000,
		30.317505, 31.462784, 23.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178381, 30.786064, 24.110796>,  <29.700459, 31.332558, 23.921947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178381, 30.786064, 24.110796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.413708, 31.080597, 23.977110>,  <30.554903, 31.257317, 23.896898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.413708, 31.080597, 23.977110>,  <30.178381, 30.786064, 24.110796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413708, 31.080597, 23.977110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631079, -0.159670, 0.759107,
		0.505591, -0.657511, -0.558620,
		0.588317, 0.736332, -0.334214,
		30.590202, 31.301497, 23.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838097, 30.477922, 24.082344>,  <30.178381, 30.786064, 24.110796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838097, 30.477922, 24.082344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898918, 30.873072, 24.094906>,  <30.935411, 31.110161, 24.102444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898918, 30.873072, 24.094906>,  <30.838097, 30.477922, 24.082344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898918, 30.873072, 24.094906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711604, -0.131473, 0.690171,
		0.685930, -0.082595, -0.722965,
		0.152056, 0.987873, 0.031406,
		30.944534, 31.169434, 24.104328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573997, 30.515524, 24.147884>,  <30.838097, 30.477922, 24.082344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573997, 30.515524, 24.147884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423809, 30.864815, 24.272141>,  <31.333696, 31.074389, 24.346695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423809, 30.864815, 24.272141>,  <31.573997, 30.515524, 24.147884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423809, 30.864815, 24.272141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688459, 0.038377, 0.724259,
		0.620520, 0.485804, -0.615589,
		-0.375472, 0.873225, 0.310642,
		31.311167, 31.126781, 24.365334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160999, 30.921160, 24.199837>,  <31.573997, 30.515524, 24.147884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160999, 30.921160, 24.199837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887262, 31.082319, 24.442932>,  <31.723021, 31.179014, 24.588789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887262, 31.082319, 24.442932>,  <32.160999, 30.921160, 24.199837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887262, 31.082319, 24.442932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702707, 0.141957, 0.697173,
		0.194617, 0.904169, -0.380266,
		-0.684344, 0.402898, 0.607739,
		31.681959, 31.203188, 24.625254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560616, 31.416378, 24.591442>,  <32.160999, 30.921160, 24.199837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560616, 31.416378, 24.591442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215881, 31.388170, 24.792349>,  <32.009041, 31.371246, 24.912893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215881, 31.388170, 24.792349>,  <32.560616, 31.416378, 24.591442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215881, 31.388170, 24.792349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505852, -0.191514, 0.841092,
		0.036879, 0.978953, 0.200724,
		-0.861831, -0.070518, 0.502268,
		31.957333, 31.367016, 24.943029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659809, 31.850786, 25.157665>,  <32.560616, 31.416378, 24.591442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659809, 31.850786, 25.157665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351299, 31.612570, 25.247520>,  <32.166191, 31.469639, 25.301434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351299, 31.612570, 25.247520>,  <32.659809, 31.850786, 25.157665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351299, 31.612570, 25.247520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420613, -0.211994, 0.882124,
		-0.477720, 0.774847, 0.413999,
		-0.771277, -0.595542, 0.224637,
		32.119915, 31.433907, 25.314911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443859, 32.042164, 25.801598>,  <32.659809, 31.850786, 25.157665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443859, 32.042164, 25.801598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282383, 31.677401, 25.772070>,  <32.185497, 31.458542, 25.754353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282383, 31.677401, 25.772070>,  <32.443859, 32.042164, 25.801598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282383, 31.677401, 25.772070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353763, -0.229999, 0.906616,
		-0.843731, 0.339881, 0.415450,
		-0.403695, -0.911911, -0.073820,
		32.161274, 31.403828, 25.749924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187283, 31.898314, 26.460974>,  <32.443859, 32.042164, 25.801598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187283, 31.898314, 26.460974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208988, 31.537971, 26.288689>,  <32.222012, 31.321766, 26.185318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208988, 31.537971, 26.288689>,  <32.187283, 31.898314, 26.460974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208988, 31.537971, 26.288689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130105, -0.421291, 0.897545,
		-0.990014, -0.104738, 0.094347,
		0.054260, -0.900857, -0.430711,
		32.225266, 31.267714, 26.159475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789120, 31.475641, 26.891445>,  <32.187283, 31.898314, 26.460974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789120, 31.475641, 26.891445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.042938, 31.242075, 26.688904>,  <32.195229, 31.101934, 26.567379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.042938, 31.242075, 26.688904>,  <31.789120, 31.475641, 26.891445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042938, 31.242075, 26.688904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222857, -0.489091, 0.843282,
		-0.740060, -0.647944, -0.180220,
		0.634544, -0.583916, -0.506356,
		32.233303, 31.066900, 26.536997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580254, 30.632893, 27.038179>,  <31.789120, 31.475641, 26.891445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580254, 30.632893, 27.038179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.959179, 30.677786, 26.918177>,  <32.186535, 30.704721, 26.846176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.959179, 30.677786, 26.918177>,  <31.580254, 30.632893, 27.038179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959179, 30.677786, 26.918177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314404, -0.504861, 0.803907,
		-0.061237, -0.855873, -0.513547,
		0.947312, 0.112233, -0.300006,
		32.243374, 30.711456, 26.828175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892225, 30.037374, 27.227505>,  <31.580254, 30.632893, 27.038179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892225, 30.037374, 27.227505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202637, 30.286051, 27.185019>,  <32.388885, 30.435257, 27.159527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202637, 30.286051, 27.185019>,  <31.892225, 30.037374, 27.227505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202637, 30.286051, 27.185019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431545, -0.400588, 0.808268,
		0.459943, -0.673076, -0.579155,
		0.776029, 0.621689, -0.106215,
		32.435444, 30.472557, 27.153154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487728, 29.608841, 27.477901>,  <31.892225, 30.037374, 27.227505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487728, 29.608841, 27.477901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601444, 29.992306, 27.473080>,  <32.669674, 30.222385, 27.470186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601444, 29.992306, 27.473080>,  <32.487728, 29.608841, 27.477901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601444, 29.992306, 27.473080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579695, -0.161865, 0.798595,
		0.763632, -0.234020, -0.601748,
		0.284289, 0.958663, -0.012055,
		32.686729, 30.279905, 27.469463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217270, 29.594664, 27.658619>,  <32.487728, 29.608841, 27.477901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217270, 29.594664, 27.658619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082703, 29.964178, 27.731764>,  <33.001961, 30.185886, 27.775650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082703, 29.964178, 27.731764>,  <33.217270, 29.594664, 27.658619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082703, 29.964178, 27.731764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372781, -0.047679, 0.926694,
		0.864786, 0.379927, -0.328330,
		-0.336421, 0.923787, 0.182861,
		32.981777, 30.241314, 27.786623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.064766, 33.683758, 23.686306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867193, 34.024189, 23.757528>,  <30.748650, 34.228447, 23.800261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867193, 34.024189, 23.757528>,  <31.064766, 33.683758, 23.686306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867193, 34.024189, 23.757528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440256, -0.068206, -0.895278,
		-0.749804, -0.520596, 0.408380,
		-0.493932, 0.851075, 0.178054,
		30.719013, 34.279510, 23.810946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313734, 33.624496, 23.376547>,  <31.064766, 33.683758, 23.686306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313734, 33.624496, 23.376547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293272, 34.020302, 23.430574>,  <30.280994, 34.257786, 23.462992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293272, 34.020302, 23.430574>,  <30.313734, 33.624496, 23.376547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293272, 34.020302, 23.430574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458388, 0.096894, -0.883454,
		-0.887278, -0.107109, 0.448625,
		-0.051157, 0.989515, 0.135070,
		30.277925, 34.317158, 23.471096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561026, 33.879169, 23.139961>,  <30.313734, 33.624496, 23.376547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561026, 33.879169, 23.139961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802155, 34.197971, 23.125092>,  <29.946833, 34.389252, 23.116169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.802155, 34.197971, 23.125092>,  <29.561026, 33.879169, 23.139961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802155, 34.197971, 23.125092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449145, 0.300467, -0.841420,
		-0.659449, 0.523925, 0.539101,
		0.602823, 0.797008, -0.037176,
		29.983002, 34.437073, 23.113939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247272, 34.332169, 22.664846>,  <29.561026, 33.879169, 23.139961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247272, 34.332169, 22.664846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608713, 34.502178, 22.686226>,  <29.825579, 34.604183, 22.699053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.608713, 34.502178, 22.686226>,  <29.247272, 34.332169, 22.664846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608713, 34.502178, 22.686226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140338, 0.411598, -0.900496,
		-0.404730, 0.806190, 0.431568,
		0.903603, 0.425023, 0.053447,
		29.879795, 34.629684, 22.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165052, 35.071270, 22.559336>,  <29.247272, 34.332169, 22.664846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165052, 35.071270, 22.559336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549545, 35.019630, 22.461874>,  <29.780241, 34.988647, 22.403397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549545, 35.019630, 22.461874>,  <29.165052, 35.071270, 22.559336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549545, 35.019630, 22.461874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191366, 0.323859, -0.926550,
		0.198526, 0.937256, 0.286598,
		0.961232, -0.129099, -0.243653,
		29.837915, 34.980900, 22.388779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325773, 35.579704, 22.074459>,  <29.165052, 35.071270, 22.559336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325773, 35.579704, 22.074459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639425, 35.338718, 22.014894>,  <29.827616, 35.194126, 21.979155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639425, 35.338718, 22.014894>,  <29.325773, 35.579704, 22.074459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639425, 35.338718, 22.014894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018457, 0.217205, -0.975951,
		0.620321, 0.768022, 0.159197,
		0.784131, -0.602465, -0.148912,
		29.874664, 35.157978, 21.970221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660395, 35.961239, 21.517384>,  <29.325773, 35.579704, 22.074459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660395, 35.961239, 21.517384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786106, 35.581776, 21.503130>,  <29.861532, 35.354095, 21.494577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786106, 35.581776, 21.503130>,  <29.660395, 35.961239, 21.517384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786106, 35.581776, 21.503130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224682, 0.110797, -0.968113,
		0.922360, 0.296250, 0.247968,
		0.314278, -0.948662, -0.035633,
		29.880390, 35.297176, 21.492439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232855, 35.852589, 21.110149>,  <29.660395, 35.961239, 21.517384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232855, 35.852589, 21.110149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087570, 35.479996, 21.102053>,  <30.000399, 35.256439, 21.097195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087570, 35.479996, 21.102053>,  <30.232855, 35.852589, 21.110149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087570, 35.479996, 21.102053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297018, -0.095169, -0.950117,
		0.883096, -0.351105, 0.311235,
		-0.363211, -0.931487, -0.020241,
		29.978607, 35.200550, 21.095980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804335, 35.320389, 21.065548>,  <30.232855, 35.852589, 21.110149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804335, 35.320389, 21.065548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.465948, 35.161831, 20.922884>,  <30.262917, 35.066696, 20.837286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.465948, 35.161831, 20.922884>,  <30.804335, 35.320389, 21.065548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465948, 35.161831, 20.922884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443476, -0.151623, -0.883368,
		0.296087, -0.905472, 0.304061,
		-0.845968, -0.396398, -0.356661,
		30.212158, 35.042912, 20.815886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038925, 34.858433, 20.561232>,  <30.804335, 35.320389, 21.065548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038925, 34.858433, 20.561232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653444, 34.891773, 20.459776>,  <30.422155, 34.911777, 20.398903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653444, 34.891773, 20.459776>,  <31.038925, 34.858433, 20.561232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653444, 34.891773, 20.459776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219196, -0.295360, -0.929901,
		-0.152421, -0.951743, 0.266369,
		-0.963702, 0.083349, -0.253638,
		30.364334, 34.916779, 20.383684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933611, 34.369190, 20.027166>,  <31.038925, 34.858433, 20.561232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933611, 34.369190, 20.027166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630478, 34.626499, 19.983536>,  <30.448599, 34.780884, 19.957357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630478, 34.626499, 19.983536>,  <30.933611, 34.369190, 20.027166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630478, 34.626499, 19.983536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054343, -0.104371, -0.993053,
		-0.650184, -0.758494, 0.044138,
		-0.757831, 0.643268, -0.109079,
		30.403128, 34.819481, 19.950811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536751, 34.100739, 19.568768>,  <30.933611, 34.369190, 20.027166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536751, 34.100739, 19.568768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432474, 34.486088, 19.543629>,  <30.369907, 34.717297, 19.528545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432474, 34.486088, 19.543629>,  <30.536751, 34.100739, 19.568768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432474, 34.486088, 19.543629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270174, 0.010305, -0.962756,
		-0.926847, -0.267963, -0.262965,
		-0.260693, 0.963374, -0.062846,
		30.354265, 34.775101, 19.524775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365345, 34.118622, 18.858980>,  <30.536751, 34.100739, 19.568768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365345, 34.118622, 18.858980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339642, 34.502316, 18.969065>,  <30.324219, 34.732533, 19.035114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339642, 34.502316, 18.969065>,  <30.365345, 34.118622, 18.858980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339642, 34.502316, 18.969065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066901, 0.279301, -0.957870,
		-0.995688, -0.043140, -0.082121,
		-0.064259, 0.959234, 0.275210,
		30.320364, 34.790085, 19.051628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765205, 34.439293, 18.476231>,  <30.365345, 34.118622, 18.858980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765205, 34.439293, 18.476231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.030945, 34.716473, 18.588272>,  <30.190388, 34.882782, 18.655497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.030945, 34.716473, 18.588272>,  <29.765205, 34.439293, 18.476231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030945, 34.716473, 18.588272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022600, 0.355964, -0.934226,
		-0.747082, 0.626981, 0.220823,
		0.664347, 0.692953, 0.280104,
		30.230249, 34.924358, 18.672304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259912, 34.107212, 19.033491>,  <29.765205, 34.439293, 18.476231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259912, 34.107212, 19.033491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.988420, 33.834076, 18.925375>,  <28.825525, 33.670197, 18.860506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.988420, 33.834076, 18.925375>,  <29.259912, 34.107212, 19.033491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988420, 33.834076, 18.925375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252218, -0.562404, 0.787456,
		-0.689717, 0.466299, 0.553946,
		-0.678732, -0.682837, -0.270291,
		28.784801, 33.629227, 18.844288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896769, 33.944725, 19.665112>,  <29.259912, 34.107212, 19.033491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896769, 33.944725, 19.665112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.857588, 33.639866, 19.409132>,  <28.834080, 33.456951, 19.255545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.857588, 33.639866, 19.409132>,  <28.896769, 33.944725, 19.665112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857588, 33.639866, 19.409132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112260, -0.647399, 0.753838,
		-0.988839, 0.002001, 0.148975,
		-0.097954, -0.762148, -0.639949,
		28.828201, 33.411221, 19.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372072, 33.521988, 20.059448>,  <28.896769, 33.944725, 19.665112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372072, 33.521988, 20.059448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575016, 33.321106, 19.779341>,  <28.696783, 33.200577, 19.611277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.575016, 33.321106, 19.779341>,  <28.372072, 33.521988, 20.059448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575016, 33.321106, 19.779341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233220, -0.702277, 0.672619,
		-0.829575, -0.504576, -0.239183,
		0.507360, -0.502205, -0.700268,
		28.727224, 33.170444, 19.569260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151367, 32.843887, 20.047194>,  <28.372072, 33.521988, 20.059448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151367, 32.843887, 20.047194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.512289, 32.812038, 19.877722>,  <28.728842, 32.792931, 19.776039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.512289, 32.812038, 19.877722>,  <28.151367, 32.843887, 20.047194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512289, 32.812038, 19.877722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271484, -0.658479, 0.701927,
		-0.334873, -0.748375, -0.572533,
		0.902306, -0.079623, -0.423679,
		28.782980, 32.788151, 19.750618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198990, 32.164715, 20.036657>,  <28.151367, 32.843887, 20.047194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198990, 32.164715, 20.036657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580151, 32.281445, 20.003618>,  <28.808847, 32.351482, 19.983795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580151, 32.281445, 20.003618>,  <28.198990, 32.164715, 20.036657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580151, 32.281445, 20.003618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256611, -0.630621, 0.732439,
		0.161655, -0.719136, -0.675804,
		0.952900, 0.291821, -0.082595,
		28.866020, 32.368992, 19.978840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670916, 31.536861, 20.054325>,  <28.198990, 32.164715, 20.036657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670916, 31.536861, 20.054325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.895447, 31.849995, 20.161722>,  <29.030165, 32.037876, 20.226160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.895447, 31.849995, 20.161722>,  <28.670916, 31.536861, 20.054325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895447, 31.849995, 20.161722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409066, -0.544468, 0.732270,
		0.719429, -0.301212, -0.625854,
		0.561326, 0.782832, 0.268491,
		29.063845, 32.084843, 20.242270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273840, 31.226259, 20.132235>,  <28.670916, 31.536861, 20.054325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273840, 31.226259, 20.132235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356436, 31.576380, 20.307146>,  <29.405993, 31.786451, 20.412092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.356436, 31.576380, 20.307146>,  <29.273840, 31.226259, 20.132235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356436, 31.576380, 20.307146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457480, -0.481420, 0.747628,
		0.864913, 0.045668, -0.499840,
		0.206490, 0.875300, 0.437278,
		29.418383, 31.838970, 20.438330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987473, 31.150919, 20.331379>,  <29.273840, 31.226259, 20.132235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987473, 31.150919, 20.331379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.805017, 31.438026, 20.541807>,  <29.695545, 31.610291, 20.668064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.805017, 31.438026, 20.541807>,  <29.987473, 31.150919, 20.331379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805017, 31.438026, 20.541807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399220, -0.363283, 0.841813,
		0.795338, 0.593999, -0.120840,
		-0.456137, 0.717768, 0.526069,
		29.668177, 31.653357, 20.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499651, 31.375351, 20.843208>,  <29.987473, 31.150919, 20.331379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499651, 31.375351, 20.843208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154922, 31.520395, 20.985071>,  <29.948086, 31.607422, 21.070189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.154922, 31.520395, 20.985071>,  <30.499651, 31.375351, 20.843208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154922, 31.520395, 20.985071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356461, -0.064438, 0.932085,
		0.360836, 0.929711, -0.073722,
		-0.861819, 0.362609, 0.354658,
		29.896378, 31.629179, 21.091469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567627, 32.073723, 21.113087>,  <30.499651, 31.375351, 20.843208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567627, 32.073723, 21.113087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.252516, 31.907825, 21.295248>,  <30.063450, 31.808287, 21.404545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.252516, 31.907825, 21.295248>,  <30.567627, 32.073723, 21.113087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252516, 31.907825, 21.295248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448856, 0.119782, 0.885540,
		-0.421821, 0.902020, 0.091798,
		-0.787779, -0.414744, 0.455403,
		30.016182, 31.783401, 21.431870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696892, 32.344692, 21.918531>,  <30.567627, 32.073723, 21.113087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696892, 32.344692, 21.918531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428404, 32.048332, 21.927685>,  <30.267311, 31.870516, 21.933176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.428404, 32.048332, 21.927685>,  <30.696892, 32.344692, 21.918531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428404, 32.048332, 21.927685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018454, 0.047561, 0.998698,
		-0.741028, 0.669925, -0.045597,
		-0.671221, -0.740904, 0.022882,
		30.227037, 31.826061, 21.934549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243401, 32.611439, 22.403643>,  <30.696892, 32.344692, 21.918531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243401, 32.611439, 22.403643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191547, 32.215118, 22.388130>,  <30.160437, 31.977325, 22.378822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.191547, 32.215118, 22.388130>,  <30.243401, 32.611439, 22.403643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191547, 32.215118, 22.388130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162677, -0.059833, 0.984863,
		-0.978127, 0.121361, 0.168937,
		-0.129632, -0.990803, -0.038782,
		30.152658, 31.917877, 22.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825779, 32.502907, 22.970291>,  <30.243401, 32.611439, 22.403643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825779, 32.502907, 22.970291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.010677, 32.163269, 22.868023>,  <30.121616, 31.959486, 22.806662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.010677, 32.163269, 22.868023>,  <29.825779, 32.502907, 22.970291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010677, 32.163269, 22.868023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250979, -0.151258, 0.956101,
		-0.850492, -0.506124, 0.143186,
		0.462248, -0.849093, -0.255671,
		30.149351, 31.908541, 22.791321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587524, 32.043667, 23.432257>,  <29.825779, 32.502907, 22.970291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587524, 32.043667, 23.432257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.932865, 31.881165, 23.312540>,  <30.140070, 31.783663, 23.240709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.932865, 31.881165, 23.312540>,  <29.587524, 32.043667, 23.432257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932865, 31.881165, 23.312540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250194, -0.170441, 0.953075,
		-0.438206, -0.897722, -0.045507,
		0.863353, -0.406258, -0.299293,
		30.191872, 31.759287, 23.222752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033800, 31.455229, 23.686646>,  <29.587524, 32.043667, 23.432257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033800, 31.455229, 23.686646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.815975, 31.625879, 23.975489>,  <28.685280, 31.728270, 24.148794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.815975, 31.625879, 23.975489>,  <29.033800, 31.455229, 23.686646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815975, 31.625879, 23.975489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499962, 0.526157, -0.687893,
		-0.673417, -0.735627, -0.073228,
		-0.544562, 0.426628, 0.722108,
		28.652607, 31.753868, 24.192122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389971, 31.491302, 23.427155>,  <29.033800, 31.455229, 23.686646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389971, 31.491302, 23.427155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373487, 31.775747, 23.707903>,  <28.363598, 31.946415, 23.876352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.373487, 31.775747, 23.707903>,  <28.389971, 31.491302, 23.427155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373487, 31.775747, 23.707903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505124, 0.591257, -0.628700,
		-0.862062, -0.380439, 0.334835,
		-0.041208, 0.711112, 0.701870,
		28.361124, 31.989080, 23.918465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684929, 31.713255, 23.466221>,  <28.389971, 31.491302, 23.427155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684929, 31.713255, 23.466221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.905354, 32.018349, 23.601614>,  <28.037609, 32.201405, 23.682850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.905354, 32.018349, 23.601614>,  <27.684929, 31.713255, 23.466221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905354, 32.018349, 23.601614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471026, 0.619144, -0.628327,
		-0.688815, 0.186814, 0.700453,
		0.551062, 0.762733, 0.338482,
		28.070673, 32.247169, 23.703159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228271, 32.280594, 23.745190>,  <27.684929, 31.713255, 23.466221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228271, 32.280594, 23.745190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.564774, 32.466442, 23.634613>,  <27.766676, 32.577950, 23.568268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.564774, 32.466442, 23.634613>,  <27.228271, 32.280594, 23.745190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564774, 32.466442, 23.634613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523347, 0.571570, -0.631994,
		-0.135631, 0.676343, 0.723992,
		0.841257, 0.464617, -0.276439,
		27.817150, 32.605827, 23.551682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956240, 32.928478, 23.586103>,  <27.228271, 32.280594, 23.745190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956240, 32.928478, 23.586103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.324516, 32.944500, 23.430809>,  <27.545483, 32.954113, 23.337633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.324516, 32.944500, 23.430809>,  <26.956240, 32.928478, 23.586103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324516, 32.944500, 23.430809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346684, 0.540844, -0.766354,
		0.179278, 0.840169, 0.511836,
		0.920690, 0.040055, -0.388234,
		27.600723, 32.956516, 23.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194683, 33.694431, 23.479282>,  <26.956240, 32.928478, 23.586103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194683, 33.694431, 23.479282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378567, 33.460125, 23.212288>,  <27.488897, 33.319542, 23.052090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378567, 33.460125, 23.212288>,  <27.194683, 33.694431, 23.479282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378567, 33.460125, 23.212288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325488, 0.588180, -0.740339,
		0.826272, 0.557600, 0.079730,
		0.459709, -0.585770, -0.667489,
		27.516479, 33.284393, 23.012041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188454, 34.134449, 22.996479>,  <27.194683, 33.694431, 23.479282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188454, 34.134449, 22.996479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.344912, 33.816284, 22.811298>,  <27.438786, 33.625385, 22.700190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.344912, 33.816284, 22.811298>,  <27.188454, 34.134449, 22.996479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344912, 33.816284, 22.811298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198584, 0.418234, -0.886366,
		0.898649, 0.438632, 0.005634,
		0.391145, -0.795413, -0.462951,
		27.462255, 33.577660, 22.672413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631760, 34.818676, 23.023069>,  <27.188454, 34.134449, 22.996479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631760, 34.818676, 23.023069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.341825, 35.061741, 23.152905>,  <27.167866, 35.207581, 23.230806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.341825, 35.061741, 23.152905>,  <27.631760, 34.818676, 23.023069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341825, 35.061741, 23.152905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164550, -0.304809, 0.938091,
		0.668983, 0.733372, 0.120944,
		-0.724835, 0.607665, 0.324588,
		27.124374, 35.244041, 23.250280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942667, 35.190449, 23.491774>,  <27.631760, 34.818676, 23.023069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942667, 35.190449, 23.491774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.550632, 35.217110, 23.566591>,  <27.315411, 35.233105, 23.611483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.550632, 35.217110, 23.566591>,  <27.942667, 35.190449, 23.491774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550632, 35.217110, 23.566591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184880, -0.037327, 0.982052,
		0.072434, 0.997078, 0.024262,
		-0.980088, 0.066648, 0.187043,
		27.256605, 35.237103, 23.622704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922642, 35.552528, 24.104214>,  <27.942667, 35.190449, 23.491774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922642, 35.552528, 24.104214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.541786, 35.432995, 24.078497>,  <27.313272, 35.361275, 24.063066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.541786, 35.432995, 24.078497>,  <27.922642, 35.552528, 24.104214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541786, 35.432995, 24.078497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029115, -0.120713, 0.992260,
		-0.304280, 0.946640, 0.106235,
		-0.952137, -0.298832, -0.064292,
		27.256145, 35.343346, 24.059210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637331, 35.834675, 24.613180>,  <27.922642, 35.552528, 24.104214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637331, 35.834675, 24.613180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378059, 35.538391, 24.542519>,  <27.222496, 35.360619, 24.500122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.378059, 35.538391, 24.542519>,  <27.637331, 35.834675, 24.613180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378059, 35.538391, 24.542519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016971, -0.217879, 0.975828,
		-0.761298, 0.635510, 0.128654,
		-0.648180, -0.740713, -0.176656,
		27.183605, 35.316177, 24.489521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115501, 35.925053, 25.027151>,  <27.637331, 35.834675, 24.613180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115501, 35.925053, 25.027151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.151320, 35.540287, 24.923845>,  <27.172810, 35.309429, 24.861862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.151320, 35.540287, 24.923845>,  <27.115501, 35.925053, 25.027151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151320, 35.540287, 24.923845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130412, -0.245752, 0.960520,
		-0.987408, -0.119691, 0.103439,
		0.089545, -0.961915, -0.258266,
		27.178183, 35.251713, 24.846365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793770, 35.599037, 25.616341>,  <27.115501, 35.925053, 25.027151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793770, 35.599037, 25.616341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.969320, 35.291557, 25.430229>,  <27.074650, 35.107067, 25.318562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.969320, 35.291557, 25.430229>,  <26.793770, 35.599037, 25.616341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969320, 35.291557, 25.430229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099972, -0.472826, 0.875466,
		-0.892970, -0.430735, -0.130663,
		0.438874, -0.768702, -0.465281,
		27.100983, 35.060947, 25.290646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467747, 35.078091, 25.895866>,  <26.793770, 35.599037, 25.616341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467747, 35.078091, 25.895866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807188, 34.923573, 25.751284>,  <27.010853, 34.830864, 25.664534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807188, 34.923573, 25.751284>,  <26.467747, 35.078091, 25.895866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807188, 34.923573, 25.751284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102273, -0.550567, 0.828502,
		-0.519049, -0.740038, -0.427706,
		0.848604, -0.386290, -0.361457,
		27.061769, 34.807686, 25.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.450434, 38.471275, 20.258457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505981, 38.076160, 20.230213>,  <29.539310, 37.839092, 20.213266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505981, 38.076160, 20.230213>,  <29.450434, 38.471275, 20.258457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505981, 38.076160, 20.230213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391719, -0.010694, 0.920023,
		-0.909545, -0.155423, 0.385451,
		0.138871, -0.987790, -0.070609,
		29.547644, 37.779823, 20.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205170, 38.135586, 20.900444>,  <29.450434, 38.471275, 20.258457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205170, 38.135586, 20.900444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472504, 37.896717, 20.723036>,  <29.632904, 37.753395, 20.616590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472504, 37.896717, 20.723036>,  <29.205170, 38.135586, 20.900444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472504, 37.896717, 20.723036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484857, -0.102453, 0.868572,
		-0.564130, -0.795541, 0.221072,
		0.668335, -0.597175, -0.443520,
		29.673004, 37.717564, 20.589979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284868, 37.599529, 21.344055>,  <29.205170, 38.135586, 20.900444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284868, 37.599529, 21.344055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621386, 37.616905, 21.128523>,  <29.823296, 37.627331, 20.999205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621386, 37.616905, 21.128523>,  <29.284868, 37.599529, 21.344055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621386, 37.616905, 21.128523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537154, 0.044812, 0.842293,
		0.060742, -0.998050, 0.014363,
		0.841295, 0.043447, -0.538829,
		29.873774, 37.629936, 20.966875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629091, 37.116444, 21.723461>,  <29.284868, 37.599529, 21.344055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629091, 37.116444, 21.723461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882820, 37.326931, 21.496929>,  <30.035057, 37.453224, 21.361010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882820, 37.326931, 21.496929>,  <29.629091, 37.116444, 21.723461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882820, 37.326931, 21.496929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585601, 0.151175, 0.796378,
		0.504684, -0.836803, -0.212261,
		0.634323, 0.526220, -0.566328,
		30.073116, 37.484798, 21.327030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199503, 36.822021, 21.763163>,  <29.629091, 37.116444, 21.723461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199503, 36.822021, 21.763163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288246, 37.205540, 21.692184>,  <30.341492, 37.435650, 21.649597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.288246, 37.205540, 21.692184>,  <30.199503, 36.822021, 21.763163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288246, 37.205540, 21.692184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611151, 0.005070, 0.791498,
		0.759785, -0.284047, -0.584845,
		0.221858, 0.958797, -0.177448,
		30.354803, 37.493179, 21.638950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935490, 36.836357, 21.727163>,  <30.199503, 36.822021, 21.763163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935490, 36.836357, 21.727163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780457, 37.194897, 21.813265>,  <30.687437, 37.410019, 21.864925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780457, 37.194897, 21.813265>,  <30.935490, 36.836357, 21.727163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780457, 37.194897, 21.813265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569044, 0.048931, 0.820850,
		0.725237, 0.440638, -0.529027,
		-0.387583, 0.896350, 0.215256,
		30.664181, 37.463802, 21.877842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548574, 37.235996, 21.723419>,  <30.935490, 36.836357, 21.727163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548574, 37.235996, 21.723419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.298958, 37.476089, 21.923534>,  <31.149189, 37.620148, 22.043604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.298958, 37.476089, 21.923534>,  <31.548574, 37.235996, 21.723419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298958, 37.476089, 21.923534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579243, -0.074374, 0.811755,
		0.524453, 0.796358, -0.301270,
		-0.624041, 0.600236, 0.500290,
		31.111746, 37.656158, 22.073622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950109, 37.711632, 22.112438>,  <31.548574, 37.235996, 21.723419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950109, 37.711632, 22.112438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595518, 37.740356, 22.295303>,  <31.382763, 37.757591, 22.405024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595518, 37.740356, 22.295303>,  <31.950109, 37.711632, 22.112438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595518, 37.740356, 22.295303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433310, -0.218043, 0.874471,
		0.162477, 0.973294, 0.162175,
		-0.886478, 0.071810, 0.457165,
		31.329575, 37.761898, 22.432453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123066, 38.051899, 22.803707>,  <31.950109, 37.711632, 22.112438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123066, 38.051899, 22.803707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744448, 37.950600, 22.883617>,  <31.517277, 37.889820, 22.931564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744448, 37.950600, 22.883617>,  <32.123066, 38.051899, 22.803707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744448, 37.950600, 22.883617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215665, -0.036316, 0.975792,
		-0.239863, 0.966719, 0.088992,
		-0.946549, -0.253249, 0.199776,
		31.460484, 37.874626, 22.943550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896004, 38.457798, 23.309393>,  <32.123066, 38.051899, 22.803707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896004, 38.457798, 23.309393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670570, 38.128632, 23.338184>,  <31.535311, 37.931129, 23.355459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670570, 38.128632, 23.338184>,  <31.896004, 38.457798, 23.309393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670570, 38.128632, 23.338184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140489, -0.009620, 0.990036,
		-0.814025, 0.568079, 0.121032,
		-0.563583, -0.822918, 0.071978,
		31.501495, 37.881756, 23.359777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547588, 38.635551, 23.889122>,  <31.896004, 38.457798, 23.309393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547588, 38.635551, 23.889122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.538006, 38.239777, 23.831942>,  <31.532257, 38.002312, 23.797634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.538006, 38.239777, 23.831942>,  <31.547588, 38.635551, 23.889122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538006, 38.239777, 23.831942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175072, -0.144933, 0.973830,
		-0.984264, -0.001699, 0.176695,
		-0.023955, -0.989440, -0.142949,
		31.530819, 37.942944, 23.789057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023670, 38.351536, 24.325441>,  <31.547588, 38.635551, 23.889122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023670, 38.351536, 24.325441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.305143, 38.076050, 24.255579>,  <31.474028, 37.910759, 24.213661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.305143, 38.076050, 24.255579>,  <31.023670, 38.351536, 24.325441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305143, 38.076050, 24.255579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093923, -0.153495, 0.983676,
		-0.704280, -0.708599, -0.043326,
		0.703682, -0.688714, -0.174657,
		31.516249, 37.869434, 24.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329725, 38.134106, 24.377455>,  <31.023670, 38.351536, 24.325441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329725, 38.134106, 24.377455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047081, 38.325851, 24.585649>,  <29.877495, 38.440899, 24.710567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.047081, 38.325851, 24.585649>,  <30.329725, 38.134106, 24.377455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047081, 38.325851, 24.585649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273396, 0.493492, -0.825663,
		-0.652653, -0.725723, -0.217650,
		-0.706611, 0.479367, 0.520489,
		29.835098, 38.469662, 24.741796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707514, 37.981281, 24.045841>,  <30.329725, 38.134106, 24.377455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707514, 37.981281, 24.045841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630947, 38.313416, 24.255186>,  <29.585007, 38.512695, 24.380793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630947, 38.313416, 24.255186>,  <29.707514, 37.981281, 24.045841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630947, 38.313416, 24.255186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426592, 0.409843, -0.806256,
		-0.883957, -0.377592, 0.275763,
		-0.191416, 0.830333, 0.523361,
		29.573523, 38.562515, 24.412195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021452, 38.086308, 24.163338>,  <29.707514, 37.981281, 24.045841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021452, 38.086308, 24.163338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154776, 38.460827, 24.207602>,  <29.234770, 38.685539, 24.234159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154776, 38.460827, 24.207602>,  <29.021452, 38.086308, 24.163338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154776, 38.460827, 24.207602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666906, 0.317103, -0.674302,
		-0.666440, 0.150952, 0.730118,
		0.333309, 0.936301, 0.110659,
		29.254768, 38.741718, 24.240799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403454, 38.524860, 24.251858>,  <29.021452, 38.086308, 24.163338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403454, 38.524860, 24.251858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698118, 38.770161, 24.137840>,  <28.874916, 38.917343, 24.069429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698118, 38.770161, 24.137840>,  <28.403454, 38.524860, 24.251858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698118, 38.770161, 24.137840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566918, 0.330216, -0.754693,
		-0.368693, 0.717549, 0.590922,
		0.736661, 0.613254, -0.285043,
		28.919117, 38.954136, 24.052328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015125, 39.182453, 24.110794>,  <28.403454, 38.524860, 24.251858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015125, 39.182453, 24.110794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351095, 39.187477, 23.893770>,  <28.552677, 39.190491, 23.763556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351095, 39.187477, 23.893770>,  <28.015125, 39.182453, 24.110794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351095, 39.187477, 23.893770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520016, 0.304659, -0.797977,
		0.155276, 0.952379, 0.262420,
		0.839924, 0.012555, -0.542558,
		28.603073, 39.191242, 23.731003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879169, 39.642670, 23.602470>,  <28.015125, 39.182453, 24.110794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879169, 39.642670, 23.602470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188309, 39.440224, 23.449343>,  <28.373793, 39.318756, 23.357466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188309, 39.440224, 23.449343>,  <27.879169, 39.642670, 23.602470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188309, 39.440224, 23.449343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364883, 0.139140, -0.920598,
		0.519197, 0.851166, -0.077140,
		0.772848, -0.506119, -0.382817,
		28.420164, 39.288387, 23.334497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982584, 39.901325, 22.848175>,  <27.879169, 39.642670, 23.602470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982584, 39.901325, 22.848175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230406, 39.587345, 22.849234>,  <28.379099, 39.398956, 22.849869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230406, 39.587345, 22.849234>,  <27.982584, 39.901325, 22.848175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230406, 39.587345, 22.849234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112605, -0.092213, -0.989352,
		0.776833, 0.612662, -0.145520,
		0.619557, -0.784947, 0.002645,
		28.416273, 39.351860, 22.850027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562386, 40.093307, 22.421711>,  <27.982584, 39.901325, 22.848175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562386, 40.093307, 22.421711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501652, 39.698563, 22.443785>,  <28.465212, 39.461716, 22.457029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501652, 39.698563, 22.443785>,  <28.562386, 40.093307, 22.421711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501652, 39.698563, 22.443785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233525, -0.018434, -0.972176,
		0.960423, -0.160495, -0.227659,
		-0.151833, -0.986864, 0.055184,
		28.456102, 39.402504, 22.460340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878822, 39.931545, 21.859060>,  <28.562386, 40.093307, 22.421711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878822, 39.931545, 21.859060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654636, 39.611416, 21.944260>,  <28.520124, 39.419338, 21.995378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654636, 39.611416, 21.944260>,  <28.878822, 39.931545, 21.859060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654636, 39.611416, 21.944260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350818, -0.003545, -0.936437,
		0.750205, -0.599562, -0.278780,
		-0.560463, -0.800321, 0.212997,
		28.486498, 39.371319, 22.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944809, 39.425583, 21.252506>,  <28.878822, 39.931545, 21.859060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944809, 39.425583, 21.252506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604145, 39.315826, 21.431116>,  <28.399746, 39.249973, 21.538282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604145, 39.315826, 21.431116>,  <28.944809, 39.425583, 21.252506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604145, 39.315826, 21.431116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444946, -0.071662, -0.892685,
		0.276946, -0.958944, -0.061059,
		-0.851659, -0.274393, 0.446525,
		28.348648, 39.233509, 21.565073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775093, 38.713406, 21.056135>,  <28.944809, 39.425583, 21.252506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775093, 38.713406, 21.056135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432590, 38.899132, 21.146675>,  <28.227089, 39.010567, 21.200998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432590, 38.899132, 21.146675>,  <28.775093, 38.713406, 21.056135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432590, 38.899132, 21.146675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364109, -0.231714, -0.902071,
		-0.366397, -0.854822, 0.367468,
		-0.856258, 0.464315, 0.226349,
		28.175713, 39.038425, 21.214581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437214, 38.155312, 20.588251>,  <28.775093, 38.713406, 21.056135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437214, 38.155312, 20.588251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253447, 38.212666, 20.938879>,  <28.143187, 38.247078, 21.149256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253447, 38.212666, 20.938879>,  <28.437214, 38.155312, 20.588251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253447, 38.212666, 20.938879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147201, -0.985528, 0.084059,
		0.875939, -0.090414, 0.473874,
		-0.459416, 0.143385, 0.876571,
		28.115622, 38.255680, 21.201851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587311, 37.597736, 20.972538>,  <28.437214, 38.155312, 20.588251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587311, 37.597736, 20.972538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250999, 37.732967, 21.141674>,  <28.049213, 37.814106, 21.243156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250999, 37.732967, 21.141674>,  <28.587311, 37.597736, 20.972538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250999, 37.732967, 21.141674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296354, -0.941044, 0.163129,
		0.453062, 0.011845, 0.891400,
		-0.840779, 0.338078, 0.422841,
		27.998766, 37.834393, 21.268526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478352, 37.364429, 21.723598>,  <28.587311, 37.597736, 20.972538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478352, 37.364429, 21.723598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153883, 37.412735, 21.494717>,  <27.959202, 37.441719, 21.357388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153883, 37.412735, 21.494717>,  <28.478352, 37.364429, 21.723598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153883, 37.412735, 21.494717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458446, -0.738787, 0.493985,
		-0.363084, 0.663032, 0.654644,
		-0.811170, 0.120761, -0.572206,
		27.910532, 37.448963, 21.323055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812263, 37.517727, 22.187395>,  <28.478352, 37.364429, 21.723598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812263, 37.517727, 22.187395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729822, 37.343906, 21.836697>,  <27.680357, 37.239616, 21.626278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729822, 37.343906, 21.836697>,  <27.812263, 37.517727, 22.187395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729822, 37.343906, 21.836697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569886, -0.675050, 0.468548,
		-0.795456, 0.596217, -0.108512,
		-0.206106, -0.434549, -0.876748,
		27.667990, 37.213543, 21.573671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063919, 37.505741, 22.182526>,  <27.812263, 37.517727, 22.187395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063919, 37.505741, 22.182526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222942, 37.239498, 21.929888>,  <27.318357, 37.079750, 21.778305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222942, 37.239498, 21.929888>,  <27.063919, 37.505741, 22.182526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222942, 37.239498, 21.929888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570980, -0.718281, 0.397559,
		-0.718281, 0.202574, -0.665609,
		-0.397559, 0.665609, 0.631594,
		27.342211, 37.039814, 21.740410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540127, 37.090984, 22.071974>,  <27.063919, 37.505741, 22.182526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540127, 37.090984, 22.071974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839134, 36.870518, 21.923687>,  <27.018538, 36.738235, 21.834715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839134, 36.870518, 21.923687>,  <26.540127, 37.090984, 22.071974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839134, 36.870518, 21.923687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429546, -0.826812, 0.363142,
		-0.506665, -0.112216, -0.854809,
		0.747516, -0.551170, -0.370715,
		27.063389, 36.705166, 21.812471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320051, 36.537041, 21.795115>,  <26.540127, 37.090984, 22.071974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320051, 36.537041, 21.795115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.687990, 36.423695, 21.903620>,  <26.908754, 36.355686, 21.968723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.687990, 36.423695, 21.903620>,  <26.320051, 36.537041, 21.795115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687990, 36.423695, 21.903620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373373, -0.844501, 0.383941,
		0.120288, -0.454451, -0.882613,
		0.919850, -0.283361, 0.271263,
		26.963945, 36.338688, 21.984999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256866, 35.732616, 21.853786>,  <26.320051, 36.537041, 21.795115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256866, 35.732616, 21.853786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593113, 35.842049, 22.040771>,  <26.794861, 35.907707, 22.152962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593113, 35.842049, 22.040771>,  <26.256866, 35.732616, 21.853786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593113, 35.842049, 22.040771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048903, -0.821196, 0.568547,
		0.539422, -0.500789, -0.676930,
		0.840614, 0.273583, 0.467461,
		26.845297, 35.924122, 22.181009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633118, 35.086193, 22.052950>,  <26.256866, 35.732616, 21.853786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633118, 35.086193, 22.052950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777065, 35.383984, 22.277895>,  <26.863434, 35.562656, 22.412863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777065, 35.383984, 22.277895>,  <26.633118, 35.086193, 22.052950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777065, 35.383984, 22.277895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058878, -0.583424, 0.810031,
		0.931144, -0.324615, -0.166122,
		0.359868, 0.744474, 0.562364,
		26.885025, 35.607327, 22.446604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040592, 34.758926, 22.493059>,  <26.633118, 35.086193, 22.052950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040592, 34.758926, 22.493059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966158, 35.105816, 22.677797>,  <26.921497, 35.313950, 22.788641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966158, 35.105816, 22.677797>,  <27.040592, 34.758926, 22.493059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966158, 35.105816, 22.677797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201341, -0.426424, 0.881830,
		0.961683, 0.257082, -0.095256,
		-0.186083, 0.867220, 0.461846,
		26.910334, 35.365982, 22.816351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686085, 34.406471, 22.296473>,  <27.040592, 34.758926, 22.493059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686085, 34.406471, 22.296473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575357, 34.027603, 22.231667>,  <27.508921, 33.800282, 22.192783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575357, 34.027603, 22.231667>,  <27.686085, 34.406471, 22.296473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575357, 34.027603, 22.231667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142766, 0.207270, -0.967810,
		0.950257, -0.244779, -0.192599,
		-0.276819, -0.947165, -0.162014,
		27.492311, 33.743454, 22.183062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107265, 34.180801, 21.718626>,  <27.686085, 34.406471, 22.296473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107265, 34.180801, 21.718626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780588, 33.952385, 21.751913>,  <27.584581, 33.815334, 21.771885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780588, 33.952385, 21.751913>,  <28.107265, 34.180801, 21.718626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780588, 33.952385, 21.751913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224228, 0.181142, -0.957554,
		0.531730, -0.800686, -0.275980,
		-0.816692, -0.571042, 0.083218,
		27.535580, 33.781071, 21.776878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108620, 33.792282, 21.106134>,  <28.107265, 34.180801, 21.718626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108620, 33.792282, 21.106134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728926, 33.768463, 21.229685>,  <27.501108, 33.754169, 21.303816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728926, 33.768463, 21.229685>,  <28.108620, 33.792282, 21.106134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728926, 33.768463, 21.229685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311152, 0.321985, -0.894153,
		-0.046207, -0.944870, -0.324169,
		-0.949236, -0.059550, 0.308876,
		27.444155, 33.750599, 21.322348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769360, 33.429684, 20.655689>,  <28.108620, 33.792282, 21.106134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769360, 33.429684, 20.655689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475277, 33.647358, 20.817347>,  <27.298828, 33.777962, 20.914341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475277, 33.647358, 20.817347>,  <27.769360, 33.429684, 20.655689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475277, 33.647358, 20.817347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282253, 0.296296, -0.912437,
		-0.616284, -0.784899, -0.064240,
		-0.735205, 0.544189, 0.404143,
		27.254715, 33.810616, 20.938589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238506, 33.375942, 20.226376>,  <27.769360, 33.429684, 20.655689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238506, 33.375942, 20.226376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097641, 33.693424, 20.424774>,  <27.013123, 33.883915, 20.543814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097641, 33.693424, 20.424774>,  <27.238506, 33.375942, 20.226376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097641, 33.693424, 20.424774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234000, 0.438452, -0.867758,
		-0.906215, -0.421656, 0.031320,
		-0.352163, 0.793704, 0.495999,
		26.991993, 33.931534, 20.573574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604660, 33.428986, 19.906816>,  <27.238506, 33.375942, 20.226376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604660, 33.428986, 19.906816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664028, 33.783550, 20.082203>,  <26.699650, 33.996288, 20.187435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664028, 33.783550, 20.082203>,  <26.604660, 33.428986, 19.906816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664028, 33.783550, 20.082203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454462, 0.454923, -0.765839,
		-0.878314, -0.085601, 0.470359,
		0.148420, 0.886407, 0.438468,
		26.708553, 34.049473, 20.213743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944981, 33.751949, 19.801641>,  <26.604660, 33.428986, 19.906816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944981, 33.751949, 19.801641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237226, 34.017960, 19.863544>,  <26.412573, 34.177567, 19.900686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237226, 34.017960, 19.863544>,  <25.944981, 33.751949, 19.801641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237226, 34.017960, 19.863544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308707, 0.523896, -0.793872,
		-0.609019, 0.532239, 0.588063,
		0.730613, 0.665022, 0.154757,
		26.456411, 34.217464, 19.909971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660250, 34.350899, 19.853205>,  <25.944981, 33.751949, 19.801641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660250, 34.350899, 19.853205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032642, 34.426342, 19.728176>,  <26.256079, 34.471607, 19.653160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.032642, 34.426342, 19.728176>,  <25.660250, 34.350899, 19.853205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032642, 34.426342, 19.728176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347207, 0.721963, -0.598511,
		0.112781, 0.665730, 0.737621,
		0.930982, 0.188607, -0.312570,
		26.311937, 34.482925, 19.634405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774031, 34.982594, 19.970264>,  <25.660250, 34.350899, 19.853205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774031, 34.982594, 19.970264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046907, 34.917538, 19.685123>,  <26.210634, 34.878506, 19.514038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.046907, 34.917538, 19.685123>,  <25.774031, 34.982594, 19.970264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046907, 34.917538, 19.685123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311257, 0.817601, -0.484404,
		0.661613, 0.552338, 0.507140,
		0.682193, -0.162637, -0.712855,
		26.251566, 34.868748, 19.471268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.484797, 29.553965, 33.771782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842257, 29.585140, 33.595005>,  <32.056732, 29.603846, 33.488941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842257, 29.585140, 33.595005>,  <31.484797, 29.553965, 33.771782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842257, 29.585140, 33.595005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436150, 0.382666, -0.814457,
		0.105637, 0.920593, 0.375963,
		0.893652, 0.077939, -0.441940,
		32.110352, 29.608522, 33.462421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561096, 30.263638, 33.683609>,  <31.484797, 29.553965, 33.771782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561096, 30.263638, 33.683609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744406, 30.060450, 33.391869>,  <31.854391, 29.938538, 33.216824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744406, 30.060450, 33.391869>,  <31.561096, 30.263638, 33.683609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744406, 30.060450, 33.391869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630964, 0.392019, -0.669482,
		0.625995, 0.767000, -0.140858,
		0.458274, -0.507969, -0.729351,
		31.881887, 29.908058, 33.173061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572130, 30.735714, 33.056793>,  <31.561096, 30.263638, 33.683609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572130, 30.735714, 33.056793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637541, 30.368092, 32.913349>,  <31.676786, 30.147518, 32.827282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637541, 30.368092, 32.913349>,  <31.572130, 30.735714, 33.056793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637541, 30.368092, 32.913349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625234, 0.184628, -0.758285,
		0.763114, 0.348211, -0.544432,
		0.163526, -0.919055, -0.358606,
		31.686598, 30.092375, 32.805767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674210, 30.794529, 32.318413>,  <31.572130, 30.735714, 33.056793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674210, 30.794529, 32.318413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566780, 30.414089, 32.379440>,  <31.502321, 30.185825, 32.416058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566780, 30.414089, 32.379440>,  <31.674210, 30.794529, 32.318413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566780, 30.414089, 32.379440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689984, 0.079434, -0.719453,
		0.672153, -0.298494, -0.677578,
		-0.268575, -0.951100, 0.152564,
		31.486208, 30.128759, 32.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558193, 30.610260, 31.592024>,  <31.674210, 30.794529, 32.318413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558193, 30.610260, 31.592024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369074, 30.360825, 31.841055>,  <31.255602, 30.211164, 31.990473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369074, 30.360825, 31.841055>,  <31.558193, 30.610260, 31.592024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369074, 30.360825, 31.841055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827868, 0.072345, -0.556238,
		0.301823, -0.778399, -0.550453,
		-0.472798, -0.623588, 0.622576,
		31.227234, 30.173748, 32.027828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364502, 30.150446, 31.189823>,  <31.558193, 30.610260, 31.592024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364502, 30.150446, 31.189823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.135489, 30.103785, 31.514439>,  <30.998081, 30.075788, 31.709209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.135489, 30.103785, 31.514439>,  <31.364502, 30.150446, 31.189823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135489, 30.103785, 31.514439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819768, 0.097978, -0.564252,
		-0.013694, -0.988328, -0.151721,
		-0.572532, -0.116649, 0.811541,
		30.963728, 30.068789, 31.757900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878931, 29.622864, 31.063856>,  <31.364502, 30.150446, 31.189823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878931, 29.622864, 31.063856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714277, 29.847685, 31.350815>,  <30.615486, 29.982578, 31.522989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714277, 29.847685, 31.350815>,  <30.878931, 29.622864, 31.063856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714277, 29.847685, 31.350815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851965, 0.042185, -0.521897,
		-0.323597, -0.826025, 0.461484,
		-0.411632, 0.562052, 0.717395,
		30.590788, 30.016300, 31.566034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258669, 29.340229, 31.069412>,  <30.878931, 29.622864, 31.063856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258669, 29.340229, 31.069412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210793, 29.698336, 31.241074>,  <30.182066, 29.913198, 31.344070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210793, 29.698336, 31.241074>,  <30.258669, 29.340229, 31.069412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210793, 29.698336, 31.241074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812661, 0.159964, -0.560351,
		-0.570312, -0.415827, 0.708401,
		-0.119691, 0.895265, 0.429156,
		30.174885, 29.966915, 31.369820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592266, 29.341757, 31.217144>,  <30.258669, 29.340229, 31.069412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592266, 29.341757, 31.217144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695280, 29.727659, 31.238777>,  <29.757088, 29.959200, 31.251757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.695280, 29.727659, 31.238777>,  <29.592266, 29.341757, 31.217144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695280, 29.727659, 31.238777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647126, 0.213769, -0.731800,
		-0.717568, 0.153467, 0.679370,
		0.257536, 0.964754, 0.054082,
		29.772541, 30.017086, 31.255001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930798, 29.712070, 31.136951>,  <29.592266, 29.341757, 31.217144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930798, 29.712070, 31.136951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205988, 29.980860, 31.027302>,  <29.371101, 30.142134, 30.961512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205988, 29.980860, 31.027302>,  <28.930798, 29.712070, 31.136951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205988, 29.980860, 31.027302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565129, 0.259058, -0.783274,
		-0.455324, 0.693789, 0.557976,
		0.687974, 0.671972, -0.274125,
		29.412380, 30.182451, 30.945065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573204, 30.056959, 30.715631>,  <28.930798, 29.712070, 31.136951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573204, 30.056959, 30.715631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.949541, 30.143127, 30.611013>,  <29.175344, 30.194828, 30.548243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.949541, 30.143127, 30.611013>,  <28.573204, 30.056959, 30.715631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949541, 30.143127, 30.611013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314946, 0.271240, -0.909526,
		-0.124989, 0.938095, 0.323041,
		0.940844, 0.215421, -0.261547,
		29.231794, 30.207754, 30.532549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534523, 30.707815, 30.371494>,  <28.573204, 30.056959, 30.715631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534523, 30.707815, 30.371494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.877335, 30.545416, 30.244583>,  <29.083021, 30.447977, 30.168436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.877335, 30.545416, 30.244583>,  <28.534523, 30.707815, 30.371494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877335, 30.545416, 30.244583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228571, 0.252299, -0.940266,
		0.461794, 0.878357, 0.123429,
		0.857031, -0.405997, -0.317277,
		29.134443, 30.423616, 30.149401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584351, 31.389866, 30.746698>,  <28.534523, 30.707815, 30.371494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584351, 31.389866, 30.746698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354849, 31.717476, 30.746799>,  <28.217148, 31.914042, 30.746861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354849, 31.717476, 30.746799>,  <28.584351, 31.389866, 30.746698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354849, 31.717476, 30.746799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072448, -0.051059, 0.996065,
		0.815816, 0.571479, 0.088632,
		-0.573756, 0.819027, 0.000252,
		28.182722, 31.963184, 30.746876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972757, 31.831678, 31.179369>,  <28.584351, 31.389866, 30.746698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972757, 31.831678, 31.179369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587996, 31.939331, 31.160156>,  <28.357138, 32.003922, 31.148628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587996, 31.939331, 31.160156>,  <28.972757, 31.831678, 31.179369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587996, 31.939331, 31.160156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035643, 0.050735, 0.998076,
		0.271051, 0.961766, -0.039210,
		-0.961905, 0.269132, -0.048032,
		28.299423, 32.020069, 31.145746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956770, 32.445637, 31.597410>,  <28.972757, 31.831678, 31.179369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956770, 32.445637, 31.597410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.578854, 32.314575, 31.598709>,  <28.352104, 32.235939, 31.599489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.578854, 32.314575, 31.598709>,  <28.956770, 32.445637, 31.597410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578854, 32.314575, 31.598709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056331, 0.172176, 0.983454,
		-0.322792, 0.928977, -0.181127,
		-0.944792, -0.327654, 0.003247,
		28.295416, 32.216278, 31.599684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626974, 32.914997, 31.972374>,  <28.956770, 32.445637, 31.597410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626974, 32.914997, 31.972374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373360, 32.606342, 31.992649>,  <28.221191, 32.421150, 32.004814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373360, 32.606342, 31.992649>,  <28.626974, 32.914997, 31.972374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373360, 32.606342, 31.992649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051311, 0.107381, 0.992893,
		-0.771599, 0.626930, -0.107677,
		-0.634037, -0.771640, 0.050687,
		28.183149, 32.374851, 32.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001055, 33.142967, 32.250546>,  <28.626974, 32.914997, 31.972374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001055, 33.142967, 32.250546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.003344, 32.746296, 32.301998>,  <28.004717, 32.508293, 32.332870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.003344, 32.746296, 32.301998>,  <28.001055, 33.142967, 32.250546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003344, 32.746296, 32.301998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154419, 0.126213, 0.979911,
		-0.987989, -0.025469, -0.152412,
		0.005721, -0.991676, 0.128630,
		28.005060, 32.448792, 32.340588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493910, 33.059566, 32.613220>,  <28.001055, 33.142967, 32.250546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493910, 33.059566, 32.613220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699387, 32.719765, 32.661327>,  <27.822674, 32.515884, 32.690193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699387, 32.719765, 32.661327>,  <27.493910, 33.059566, 32.613220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699387, 32.719765, 32.661327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002953, 0.141925, 0.989873,
		-0.857969, -0.508135, 0.075414,
		0.513693, -0.849503, 0.120266,
		27.853495, 32.464912, 32.697407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117094, 32.702080, 33.059391>,  <27.493910, 33.059566, 32.613220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117094, 32.702080, 33.059391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.484377, 32.545063, 33.080570>,  <27.704746, 32.450851, 33.093277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.484377, 32.545063, 33.080570>,  <27.117094, 32.702080, 33.059391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484377, 32.545063, 33.080570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012318, 0.161900, 0.986730,
		-0.395907, -0.905371, 0.153494,
		0.918208, -0.392544, 0.052945,
		27.759840, 32.427299, 33.096455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194056, 32.253132, 33.631077>,  <27.117094, 32.702080, 33.059391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194056, 32.253132, 33.631077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.580553, 32.328102, 33.560375>,  <27.812452, 32.373085, 33.517956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.580553, 32.328102, 33.560375>,  <27.194056, 32.253132, 33.631077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580553, 32.328102, 33.560375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173420, 0.034172, 0.984255,
		0.190513, -0.981684, 0.000515,
		0.966246, 0.187424, -0.176754,
		27.870426, 32.384331, 33.507351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532375, 31.729462, 34.068417>,  <27.194056, 32.253132, 33.631077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532375, 31.729462, 34.068417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.759993, 32.043716, 33.971287>,  <27.896563, 32.232269, 33.913010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.759993, 32.043716, 33.971287>,  <27.532375, 31.729462, 34.068417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759993, 32.043716, 33.971287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406863, -0.012379, 0.913405,
		0.714599, -0.618564, -0.326691,
		0.569044, 0.785637, -0.242825,
		27.930706, 32.279408, 33.898438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088911, 31.649981, 34.579861>,  <27.532375, 31.729462, 34.068417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088911, 31.649981, 34.579861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152431, 32.024258, 34.453835>,  <28.190544, 32.248825, 34.378220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152431, 32.024258, 34.453835>,  <28.088911, 31.649981, 34.579861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152431, 32.024258, 34.453835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490591, 0.202144, 0.847619,
		0.856797, -0.289171, -0.426941,
		0.158803, 0.935691, -0.315061,
		28.200073, 32.304966, 34.359318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779675, 31.856144, 34.529076>,  <28.088911, 31.649981, 34.579861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779675, 31.856144, 34.529076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.583935, 32.200977, 34.581764>,  <28.466492, 32.407879, 34.613377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.583935, 32.200977, 34.581764>,  <28.779675, 31.856144, 34.529076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583935, 32.200977, 34.581764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644229, 0.255541, 0.720880,
		0.587799, 0.437618, -0.680428,
		-0.489347, 0.862084, 0.131720,
		28.437130, 32.459602, 34.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178888, 32.181332, 35.102905>,  <28.779675, 31.856144, 34.529076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178888, 32.181332, 35.102905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926113, 32.487225, 35.052578>,  <28.774448, 32.670761, 35.022381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926113, 32.487225, 35.052578>,  <29.178888, 32.181332, 35.102905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926113, 32.487225, 35.052578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384222, 0.450119, 0.806081,
		0.673072, 0.461053, -0.578277,
		-0.631940, 0.764737, -0.125816,
		28.736530, 32.716644, 35.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554430, 32.909641, 35.065907>,  <29.178888, 32.181332, 35.102905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554430, 32.909641, 35.065907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176939, 32.936069, 35.195526>,  <28.950443, 32.951927, 35.273300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176939, 32.936069, 35.195526>,  <29.554430, 32.909641, 35.065907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176939, 32.936069, 35.195526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298499, 0.592022, 0.748605,
		-0.142385, 0.803209, -0.578430,
		-0.943729, 0.066071, 0.324052,
		28.893820, 32.955891, 35.292740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591753, 33.517471, 35.268673>,  <29.554430, 32.909641, 35.065907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591753, 33.517471, 35.268673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.241535, 33.389503, 35.413490>,  <29.031404, 33.312725, 35.500381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.241535, 33.389503, 35.413490>,  <29.591753, 33.517471, 35.268673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241535, 33.389503, 35.413490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137835, 0.552818, 0.821824,
		-0.463057, 0.769446, -0.439921,
		-0.875545, -0.319915, 0.362043,
		28.978872, 33.293530, 35.522102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307755, 33.624172, 34.522911>,  <29.591753, 33.517471, 35.268673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307755, 33.624172, 34.522911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.507864, 33.916771, 34.708229>,  <29.627930, 34.092331, 34.819420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.507864, 33.916771, 34.708229>,  <29.307755, 33.624172, 34.522911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507864, 33.916771, 34.708229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097001, 0.579042, -0.809507,
		-0.860415, 0.360037, 0.360637,
		0.500276, 0.731494, 0.463292,
		29.657948, 34.136219, 34.847218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015940, 34.254066, 34.629204>,  <29.307755, 33.624172, 34.522911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015940, 34.254066, 34.629204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398708, 34.347294, 34.559948>,  <29.628370, 34.403229, 34.518394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398708, 34.347294, 34.559948>,  <29.015940, 34.254066, 34.629204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398708, 34.347294, 34.559948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274197, 0.529364, -0.802864,
		-0.095465, 0.815754, 0.570466,
		0.956923, 0.233066, -0.173142,
		29.685785, 34.417213, 34.508007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881845, 34.879715, 34.335812>,  <29.015940, 34.254066, 34.629204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881845, 34.879715, 34.335812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261036, 34.767548, 34.275532>,  <29.488550, 34.700249, 34.239365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.261036, 34.767548, 34.275532>,  <28.881845, 34.879715, 34.335812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261036, 34.767548, 34.275532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011018, 0.444204, -0.895858,
		0.318156, 0.850911, 0.418004,
		0.947974, -0.280417, -0.150701,
		29.545427, 34.683422, 34.230320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144310, 35.423466, 33.961273>,  <28.881845, 34.879715, 34.335812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144310, 35.423466, 33.961273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393715, 35.131500, 33.849232>,  <29.543358, 34.956322, 33.782005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393715, 35.131500, 33.849232>,  <29.144310, 35.423466, 33.961273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393715, 35.131500, 33.849232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041703, 0.388814, -0.920372,
		0.780701, 0.562182, 0.272870,
		0.623512, -0.729915, -0.280102,
		29.580769, 34.912525, 33.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761589, 35.770142, 33.739365>,  <29.144310, 35.423466, 33.961273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761589, 35.770142, 33.739365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749630, 35.409824, 33.566082>,  <29.742455, 35.193634, 33.462112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749630, 35.409824, 33.566082>,  <29.761589, 35.770142, 33.739365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749630, 35.409824, 33.566082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170176, 0.422489, -0.890249,
		0.984960, -0.100341, 0.140662,
		-0.029900, -0.900797, -0.433210,
		29.740660, 35.139584, 33.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280714, 35.781029, 33.347912>,  <29.761589, 35.770142, 33.739365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280714, 35.781029, 33.347912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053801, 35.491005, 33.191719>,  <29.917652, 35.316990, 33.098003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053801, 35.491005, 33.191719>,  <30.280714, 35.781029, 33.347912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053801, 35.491005, 33.191719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049279, 0.443428, -0.894954,
		0.822046, -0.526937, -0.215820,
		-0.567285, -0.725058, -0.390485,
		29.883615, 35.273487, 33.074574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565119, 35.625023, 32.602489>,  <30.280714, 35.781029, 33.347912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565119, 35.625023, 32.602489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181391, 35.513157, 32.617950>,  <29.951155, 35.446037, 32.627228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181391, 35.513157, 32.617950>,  <30.565119, 35.625023, 32.602489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181391, 35.513157, 32.617950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, 0.358521, -0.922706,
		0.244193, -0.890646, -0.383563,
		-0.959319, -0.279667, 0.038650,
		29.893595, 35.429256, 32.629547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510174, 35.452667, 31.911730>,  <30.565119, 35.625023, 32.602489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510174, 35.452667, 31.911730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.133591, 35.486336, 32.042313>,  <29.907640, 35.506538, 32.120663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.133591, 35.486336, 32.042313>,  <30.510174, 35.452667, 31.911730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133591, 35.486336, 32.042313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270717, 0.388352, -0.880849,
		-0.200926, -0.917659, -0.342828,
		-0.941457, 0.084176, 0.326456,
		29.851154, 35.511589, 32.140251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158098, 35.215672, 31.330559>,  <30.510174, 35.452667, 31.911730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158098, 35.215672, 31.330559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886669, 35.413433, 31.547853>,  <29.723812, 35.532089, 31.678230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886669, 35.413433, 31.547853>,  <30.158098, 35.215672, 31.330559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886669, 35.413433, 31.547853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232313, 0.557149, -0.797255,
		-0.696829, -0.667196, -0.263210,
		-0.678572, 0.494404, 0.543235,
		29.683098, 35.561752, 31.710825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591120, 35.327782, 30.884834>,  <30.158098, 35.215672, 31.330559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591120, 35.327782, 30.884834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.537022, 35.593410, 31.178970>,  <29.504562, 35.752789, 31.355452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.537022, 35.593410, 31.178970>,  <29.591120, 35.327782, 30.884834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537022, 35.593410, 31.178970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299747, 0.679958, -0.669186,
		-0.944384, -0.310918, 0.107093,
		-0.135243, 0.664069, 0.735338,
		29.496449, 35.792633, 31.399572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901224, 35.557991, 30.739868>,  <29.591120, 35.327782, 30.884834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901224, 35.557991, 30.739868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098167, 35.839336, 30.944950>,  <29.216333, 36.008141, 31.067999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.098167, 35.839336, 30.944950>,  <28.901224, 35.557991, 30.739868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098167, 35.839336, 30.944950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092376, 0.627953, -0.772750,
		-0.865476, 0.333109, 0.374152,
		0.492360, 0.703359, 0.512707,
		29.245876, 36.050343, 31.098763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542690, 36.216698, 30.523968>,  <28.901224, 35.557991, 30.739868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542690, 36.216698, 30.523968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.895573, 36.314003, 30.685230>,  <29.107302, 36.372387, 30.781988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.895573, 36.314003, 30.685230>,  <28.542690, 36.216698, 30.523968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895573, 36.314003, 30.685230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053219, 0.799208, -0.598693,
		-0.467848, 0.549626, 0.692119,
		0.882205, 0.243263, 0.403158,
		29.160234, 36.386982, 30.806177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485783, 36.943775, 30.716248>,  <28.542690, 36.216698, 30.523968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485783, 36.943775, 30.716248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871490, 36.859352, 30.652197>,  <29.102915, 36.808697, 30.613768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871490, 36.859352, 30.652197>,  <28.485783, 36.943775, 30.716248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871490, 36.859352, 30.652197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064671, 0.773658, -0.630295,
		0.256910, 0.597419, 0.759663,
		0.964269, -0.211057, -0.160125,
		29.160770, 36.796036, 30.604160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824135, 37.551315, 30.724251>,  <28.485783, 36.943775, 30.716248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824135, 37.551315, 30.724251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041601, 37.288185, 30.515757>,  <29.172081, 37.130306, 30.390659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041601, 37.288185, 30.515757>,  <28.824135, 37.551315, 30.724251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041601, 37.288185, 30.515757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174361, 0.696010, -0.696540,
		0.820990, 0.287803, 0.493097,
		0.543667, -0.657829, -0.521235,
		29.204700, 37.090836, 30.359386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347246, 38.006107, 30.416830>,  <28.824135, 37.551315, 30.724251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347246, 38.006107, 30.416830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379868, 37.667618, 30.206209>,  <29.399441, 37.464523, 30.079836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379868, 37.667618, 30.206209>,  <29.347246, 38.006107, 30.416830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379868, 37.667618, 30.206209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244088, 0.529183, -0.812642,
		0.966318, -0.062253, 0.249709,
		0.081553, -0.846221, -0.526554,
		29.404333, 37.413750, 30.048243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889555, 38.163876, 30.071474>,  <29.347246, 38.006107, 30.416830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889555, 38.163876, 30.071474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.740997, 37.844452, 29.882002>,  <29.651863, 37.652798, 29.768318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.740997, 37.844452, 29.882002>,  <29.889555, 38.163876, 30.071474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740997, 37.844452, 29.882002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148604, 0.452470, -0.879311,
		0.916507, -0.396960, -0.049375,
		-0.371392, -0.798557, -0.473682,
		29.629580, 37.604885, 29.739897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382135, 37.908825, 29.594152>,  <29.889555, 38.163876, 30.071474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382135, 37.908825, 29.594152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021559, 37.796104, 29.462704>,  <29.805212, 37.728474, 29.383835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021559, 37.796104, 29.462704>,  <30.382135, 37.908825, 29.594152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021559, 37.796104, 29.462704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210339, 0.378365, -0.901442,
		0.378365, -0.881719, -0.281800,
		0.901442, 0.281800, 0.328620,
		29.751125, 37.711563, 29.364117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519554, 37.567757, 29.035271>,  <30.382135, 37.908825, 29.594152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519554, 37.567757, 29.035271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.131428, 37.655231, 28.993977>,  <29.898552, 37.707718, 28.969200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.131428, 37.655231, 28.993977>,  <30.519554, 37.567757, 29.035271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131428, 37.655231, 28.993977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156797, 0.243917, -0.957037,
		-0.184112, -0.944817, -0.270967,
		-0.970318, 0.218689, -0.103236,
		29.840332, 37.720837, 28.963005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162413, 37.109795, 28.487068>,  <30.519554, 37.567757, 29.035271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162413, 37.109795, 28.487068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.944077, 37.442158, 28.530260>,  <29.813076, 37.641575, 28.556175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.944077, 37.442158, 28.530260>,  <30.162413, 37.109795, 28.487068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944077, 37.442158, 28.530260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025719, 0.145423, -0.989035,
		-0.837496, -0.537077, -0.100747,
		-0.545839, 0.830904, 0.107978,
		29.780325, 37.691429, 28.562654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560860, 37.115917, 27.956619>,  <30.162413, 37.109795, 28.487068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560860, 37.115917, 27.956619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559439, 37.501534, 28.062914>,  <29.558586, 37.732903, 28.126690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559439, 37.501534, 28.062914>,  <29.560860, 37.115917, 27.956619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559439, 37.501534, 28.062914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003191, 0.265747, -0.964038,
		-0.999989, -0.002576, -0.004020,
		-0.003551, 0.964039, 0.265736,
		29.558372, 37.790745, 28.142635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896034, 37.451836, 27.590172>,  <29.560860, 37.115917, 27.956619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896034, 37.451836, 27.590172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176611, 37.714058, 27.702047>,  <29.344957, 37.871391, 27.769173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176611, 37.714058, 27.702047>,  <28.896034, 37.451836, 27.590172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176611, 37.714058, 27.702047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128027, 0.270145, -0.954270,
		-0.701134, 0.705172, 0.105562,
		0.701441, 0.655556, 0.279689,
		29.387043, 37.910725, 27.785954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785782, 37.897526, 27.111147>,  <28.896034, 37.451836, 27.590172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785782, 37.897526, 27.111147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134613, 38.017162, 27.266079>,  <29.343912, 38.088943, 27.359039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134613, 38.017162, 27.266079>,  <28.785782, 37.897526, 27.111147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134613, 38.017162, 27.266079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260524, 0.386259, -0.884834,
		-0.414258, 0.872552, 0.258927,
		0.872077, 0.299093, 0.387331,
		29.396236, 38.106892, 27.382278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881491, 38.551132, 26.968334>,  <28.785782, 37.897526, 27.111147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881491, 38.551132, 26.968334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246752, 38.399639, 27.028624>,  <29.465908, 38.308743, 27.064796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246752, 38.399639, 27.028624>,  <28.881491, 38.551132, 26.968334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246752, 38.399639, 27.028624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290456, 0.345130, -0.892480,
		0.285992, 0.858747, 0.425161,
		0.913150, -0.378733, 0.150724,
		29.520697, 38.286018, 27.073841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314266, 39.072735, 26.927212>,  <28.881491, 38.551132, 26.968334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314266, 39.072735, 26.927212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539358, 38.747787, 26.866028>,  <29.674414, 38.552818, 26.829317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.539358, 38.747787, 26.866028>,  <29.314266, 39.072735, 26.927212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539358, 38.747787, 26.866028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412756, 0.436449, -0.799465,
		0.716216, 0.386750, 0.580912,
		0.562732, -0.812364, -0.152959,
		29.708178, 38.504078, 26.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840479, 39.295853, 26.532244>,  <29.314266, 39.072735, 26.927212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840479, 39.295853, 26.532244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873013, 38.900257, 26.482784>,  <29.892532, 38.662899, 26.453108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.873013, 38.900257, 26.482784>,  <29.840479, 39.295853, 26.532244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873013, 38.900257, 26.482784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182640, 0.136750, -0.973623,
		0.979810, 0.056607, 0.191751,
		0.081335, -0.988987, -0.123650,
		29.897413, 38.603561, 26.445690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329964, 39.269520, 26.176743>,  <29.840479, 39.295853, 26.532244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329964, 39.269520, 26.176743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172106, 38.906208, 26.121202>,  <30.077391, 38.688221, 26.087877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172106, 38.906208, 26.121202>,  <30.329964, 39.269520, 26.176743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172106, 38.906208, 26.121202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145241, 0.210883, -0.966661,
		0.907282, -0.361320, -0.215144,
		-0.394644, -0.908282, -0.138851,
		30.053713, 38.633724, 26.079548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720682, 38.955452, 25.603064>,  <30.329964, 39.269520, 26.176743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720682, 38.955452, 25.603064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367279, 38.768955, 25.621098>,  <30.155237, 38.657059, 25.631918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.367279, 38.768955, 25.621098>,  <30.720682, 38.955452, 25.603064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367279, 38.768955, 25.621098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130622, 0.152803, -0.979586,
		0.449832, -0.871363, -0.195904,
		-0.883510, -0.466238, 0.045084,
		30.102226, 38.629086, 25.634623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749041, 38.470303, 25.050209>,  <30.720682, 38.955452, 25.603064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749041, 38.470303, 25.050209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360008, 38.500782, 25.138102>,  <30.126589, 38.519070, 25.190836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360008, 38.500782, 25.138102>,  <30.749041, 38.470303, 25.050209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360008, 38.500782, 25.138102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215217, 0.063189, -0.974520,
		-0.088139, -0.995089, -0.045058,
		-0.972581, 0.076196, 0.219729,
		30.068233, 38.523640, 25.204020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984814, 37.844578, 24.901129>,  <30.749041, 38.470303, 25.050209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984814, 37.844578, 24.901129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340887, 37.756050, 24.741833>,  <31.554531, 37.702934, 24.646255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340887, 37.756050, 24.741833>,  <30.984814, 37.844578, 24.901129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340887, 37.756050, 24.741833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316845, -0.327393, 0.890181,
		-0.327393, -0.918604, -0.221317,
		-0.890181, 0.221317, 0.398241,
		31.607941, 37.689655, 24.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083902, 37.067047, 24.965837>,  <30.984814, 37.844578, 24.901129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083902, 37.067047, 24.965837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446344, 37.219391, 24.892164>,  <31.663809, 37.310799, 24.847961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446344, 37.219391, 24.892164>,  <31.083902, 37.067047, 24.965837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446344, 37.219391, 24.892164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363186, -0.477011, 0.800348,
		0.216964, -0.792090, -0.570544,
		0.906103, 0.380860, -0.184182,
		31.718176, 37.333649, 24.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603962, 36.536926, 24.925346>,  <31.083902, 37.067047, 24.965837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603962, 36.536926, 24.925346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791288, 36.873589, 25.032898>,  <31.903685, 37.075584, 25.097429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791288, 36.873589, 25.032898>,  <31.603962, 36.536926, 24.925346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791288, 36.873589, 25.032898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262872, -0.423257, 0.867036,
		0.843552, -0.335364, -0.419466,
		0.468315, 0.841656, 0.268881,
		31.931784, 37.126083, 25.113562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230736, 36.276726, 25.196489>,  <31.603962, 36.536926, 24.925346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230736, 36.276726, 25.196489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236538, 36.647282, 25.347006>,  <32.240017, 36.869614, 25.437315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236538, 36.647282, 25.347006>,  <32.230736, 36.276726, 25.196489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236538, 36.647282, 25.347006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421833, -0.346869, 0.837699,
		0.906558, 0.146583, -0.395811,
		0.014502, 0.926388, 0.376290,
		32.240887, 36.925198, 25.459892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900196, 36.336552, 25.679672>,  <32.230736, 36.276726, 25.196489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900196, 36.336552, 25.679672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638298, 36.618340, 25.789240>,  <32.481159, 36.787411, 25.854980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638298, 36.618340, 25.789240>,  <32.900196, 36.336552, 25.679672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638298, 36.618340, 25.789240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127902, -0.253912, 0.958733,
		0.744946, 0.662765, 0.076147,
		-0.654749, 0.704465, 0.273920,
		32.441872, 36.829678, 25.871416>
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
