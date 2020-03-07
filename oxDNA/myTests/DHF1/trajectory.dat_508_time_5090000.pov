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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.286602, 4.010556, 0.356508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.967536, 4.056061, 0.593418>,  <2.776096, 4.083364, 0.735564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.967536, 4.056061, 0.593418>,  <3.286602, 4.010556, 0.356508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.967536, 4.056061, 0.593418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513278, 0.387582, -0.765719,
		-0.316665, -0.914789, -0.250769,
		-0.797665, 0.113762, 0.592275,
		2.728236, 4.090189, 0.771101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.734782, 3.952415, -0.011298>,  <3.286602, 4.010556, 0.356508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.734782, 3.952415, -0.011298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.553072, 4.124973, 0.300480>,  <2.444046, 4.228508, 0.487546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.553072, 4.124973, 0.300480>,  <2.734782, 3.952415, -0.011298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553072, 4.124973, 0.300480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696682, 0.373260, -0.612627,
		-0.555219, -0.821325, 0.130982,
		-0.454276, 0.431395, 0.779444,
		2.416789, 4.254392, 0.534313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990911, 3.816806, 0.073624>,  <2.734782, 3.952415, -0.011298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990911, 3.816806, 0.073624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.059761, 4.183800, 0.217064>,  <2.101071, 4.403996, 0.303128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.059761, 4.183800, 0.217064>,  <1.990911, 3.816806, 0.073624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.059761, 4.183800, 0.217064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788189, 0.346628, -0.508535,
		-0.590874, -0.195113, 0.782815,
		0.172124, 0.917486, 0.358599,
		2.111398, 4.459045, 0.324644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.391620, 4.144757, 0.533178>,  <1.990911, 3.816806, 0.073624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.391620, 4.144757, 0.533178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609699, 4.413757, 0.332977>,  <1.740547, 4.575158, 0.212857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.609699, 4.413757, 0.332977>,  <1.391620, 4.144757, 0.533178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.609699, 4.413757, 0.332977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834854, 0.381435, -0.396895,
		-0.076004, 0.634232, 0.769398,
		0.545199, 0.672501, -0.500501,
		1.773259, 4.615508, 0.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.236150, 4.782565, 0.754879>,  <1.391620, 4.144757, 0.533178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.236150, 4.782565, 0.754879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.368620, 4.826817, 0.380054>,  <1.448102, 4.853368, 0.155160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.368620, 4.826817, 0.380054>,  <1.236150, 4.782565, 0.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.368620, 4.826817, 0.380054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841527, 0.483831, -0.240291,
		0.426795, 0.868141, 0.253331,
		0.331176, 0.110630, -0.937061,
		1.467973, 4.860006, 0.098936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.050059, 5.468183, 0.593710>,  <1.236150, 4.782565, 0.754879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.050059, 5.468183, 0.593710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134516, 5.306065, 0.237923>,  <1.185190, 5.208794, 0.024450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.134516, 5.306065, 0.237923>,  <1.050059, 5.468183, 0.593710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.134516, 5.306065, 0.237923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644329, 0.626575, -0.438457,
		0.735023, 0.665687, -0.128848,
		0.211143, -0.405296, -0.889468,
		1.197859, 5.184476, -0.028918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.197979, 6.020180, 0.159802>,  <1.050059, 5.468183, 0.593710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.197979, 6.020180, 0.159802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.074371, 5.714706, -0.066929>,  <1.000207, 5.531422, -0.202968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.074371, 5.714706, -0.066929>,  <1.197979, 6.020180, 0.159802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.074371, 5.714706, -0.066929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738761, 0.568092, -0.362634,
		0.598949, 0.306690, -0.739731,
		-0.309019, -0.763684, -0.566829,
		0.981666, 5.485601, -0.236977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.993814, 6.298760, -0.470415>,  <1.197979, 6.020180, 0.159802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.993814, 6.298760, -0.470415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.792912, 5.955799, -0.425514>,  <0.672370, 5.750022, -0.398574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.792912, 5.955799, -0.425514>,  <0.993814, 6.298760, -0.470415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.792912, 5.955799, -0.425514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834839, 0.446967, -0.321346,
		0.225350, -0.255111, -0.940285,
		-0.502256, -0.857402, 0.112252,
		0.642235, 5.698578, -0.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.840213, 0.813465, 3.286213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.441797, 0.849014, 3.285332>,  <0.202748, 0.870344, 3.284803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.441797, 0.849014, 3.285332>,  <0.840213, 0.813465, 3.286213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.441797, 0.849014, 3.285332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087263, -0.972648, 0.215272,
		0.016989, 0.214612, 0.976552,
		-0.996041, 0.088874, -0.002204,
		0.142985, 0.875676, 3.284671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.557549, 0.385297, 3.784279>,  <0.840213, 0.813465, 3.286213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.557549, 0.385297, 3.784279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.256662, 0.446014, 3.527802>,  <0.076130, 0.482445, 3.373915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.256662, 0.446014, 3.527802>,  <0.557549, 0.385297, 3.784279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.256662, 0.446014, 3.527802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306675, -0.941934, 0.136785,
		-0.583199, 0.299530, 0.755090,
		-0.752216, 0.151794, -0.641194,
		0.030998, 0.491553, 3.335443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.130798, 0.177071, 3.989004>,  <0.557549, 0.385297, 3.784279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.130798, 0.177071, 3.989004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.055262, 0.118843, 3.600540>,  <-0.009940, 0.083906, 3.367462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.055262, 0.118843, 3.600540>,  <-0.130798, 0.177071, 3.989004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.055262, 0.118843, 3.600540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044713, -0.989201, 0.139579,
		-0.980989, 0.017065, -0.193311,
		0.188841, -0.145569, -0.971158,
		0.001390, 0.075172, 3.309193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.021092, -0.389079, 4.454917>,  <-0.130798, 0.177071, 3.989004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.021092, -0.389079, 4.454917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.248489, -0.061058, 4.428596>,  <0.384928, 0.135754, 4.412804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.248489, -0.061058, 4.428596>,  <0.021092, -0.389079, 4.454917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.248489, -0.061058, 4.428596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811491, -0.545810, 0.208744,
		0.135266, -0.172066, -0.975754,
		0.568494, 0.820052, -0.065801,
		0.419038, 0.184957, 4.408856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.701255, -0.553753, 4.037369>,  <0.021092, -0.389079, 4.454917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.701255, -0.553753, 4.037369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787233, -0.213036, 4.228470>,  <0.838821, -0.008605, 4.343130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787233, -0.213036, 4.228470>,  <0.701255, -0.553753, 4.037369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787233, -0.213036, 4.228470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920911, -0.339641, 0.191222,
		0.325146, 0.398864, -0.857431,
		0.214947, 0.851793, 0.477751,
		0.851717, 0.042502, 4.371795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.348440, -0.426478, 3.841419>,  <0.701255, -0.553753, 4.037369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.348440, -0.426478, 3.841419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.295824, -0.234001, 4.188095>,  <1.264254, -0.118515, 4.396101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.295824, -0.234001, 4.188095>,  <1.348440, -0.426478, 3.841419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.295824, -0.234001, 4.188095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922416, -0.260828, 0.284812,
		0.363107, 0.836912, -0.409551,
		-0.131540, 0.481193, 0.866689,
		1.256362, -0.089643, 4.448102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.907982, -0.118229, 3.905826>,  <1.348440, -0.426478, 3.841419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.907982, -0.118229, 3.905826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755827, -0.115803, 4.275749>,  <1.664534, -0.114347, 4.497703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755827, -0.115803, 4.275749>,  <1.907982, -0.118229, 3.905826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755827, -0.115803, 4.275749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918729, -0.112166, 0.378623,
		0.106029, 0.993671, 0.037094,
		-0.380387, 0.006065, 0.924808,
		1.641711, -0.113983, 4.553192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.225273, 0.410139, 4.300933>,  <1.907982, -0.118229, 3.905826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.225273, 0.410139, 4.300933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.124809, 0.135334, 4.573677>,  <2.064531, -0.029549, 4.737323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.124809, 0.135334, 4.573677>,  <2.225273, 0.410139, 4.300933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.124809, 0.135334, 4.573677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935591, 0.008306, 0.352988,
		-0.248171, 0.726598, 0.640677,
		-0.251159, -0.687013, 0.681860,
		2.049462, -0.070770, 4.778235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
