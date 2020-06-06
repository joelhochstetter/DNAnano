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
	<23.971912, 35.276569, 34.900143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.110947, 34.902386, 34.925747>,  <24.194368, 34.677876, 34.941109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.110947, 34.902386, 34.925747>,  <23.971912, 35.276569, 34.900143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.110947, 34.902386, 34.925747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756655, 0.239522, -0.608360,
		0.553766, 0.259890, 0.791076,
		0.347587, -0.935461, 0.064008,
		24.215223, 34.621746, 34.944950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719784, 35.286217, 34.736385>,  <23.971912, 35.276569, 34.900143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719784, 35.286217, 34.736385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115133, 35.312435, 34.791264>,  <25.352343, 35.328167, 34.824188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115133, 35.312435, 34.791264>,  <24.719784, 35.286217, 34.736385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115133, 35.312435, 34.791264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115698, 0.261202, -0.958325,
		-0.098652, 0.963056, 0.250581,
		0.988373, 0.065549, 0.137192,
		25.411646, 35.332100, 34.832420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909992, 36.079823, 34.724682>,  <24.719784, 35.286217, 34.736385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909992, 36.079823, 34.724682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161125, 35.798061, 34.592236>,  <25.311806, 35.629005, 34.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161125, 35.798061, 34.592236>,  <24.909992, 36.079823, 34.724682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161125, 35.798061, 34.592236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158268, 0.300991, -0.940402,
		0.762087, 0.642821, 0.077487,
		0.627833, -0.704404, -0.331119,
		25.349476, 35.586739, 34.492901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316706, 36.481537, 34.239521>,  <24.909992, 36.079823, 34.724682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316706, 36.481537, 34.239521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361361, 36.100651, 34.125801>,  <25.388153, 35.872120, 34.057571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361361, 36.100651, 34.125801>,  <25.316706, 36.481537, 34.239521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361361, 36.100651, 34.125801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090076, 0.294603, -0.951365,
		0.989658, 0.080599, 0.118660,
		0.111637, -0.952215, -0.284297,
		25.394852, 35.814987, 34.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751980, 36.540897, 33.752029>,  <25.316706, 36.481537, 34.239521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751980, 36.540897, 33.752029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552670, 36.200138, 33.687546>,  <25.433083, 35.995682, 33.648857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552670, 36.200138, 33.687546>,  <25.751980, 36.540897, 33.752029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552670, 36.200138, 33.687546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083804, 0.232388, -0.969006,
		0.862958, -0.469324, -0.187186,
		-0.498277, -0.851898, -0.161210,
		25.403187, 35.944569, 33.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207476, 36.075684, 33.296234>,  <25.751980, 36.540897, 33.752029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207476, 36.075684, 33.296234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827892, 35.978638, 33.215614>,  <25.600143, 35.920410, 33.167244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827892, 35.978638, 33.215614>,  <26.207476, 36.075684, 33.296234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827892, 35.978638, 33.215614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122998, 0.303767, -0.944774,
		0.290418, -0.921344, -0.258425,
		-0.948962, -0.242593, -0.201543,
		25.543205, 35.905853, 33.155151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136450, 35.764435, 32.553982>,  <26.207476, 36.075684, 33.296234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136450, 35.764435, 32.553982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772627, 35.891869, 32.660725>,  <25.554333, 35.968327, 32.724770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772627, 35.891869, 32.660725>,  <26.136450, 35.764435, 32.553982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772627, 35.891869, 32.660725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096685, 0.462292, -0.881441,
		-0.404177, -0.827522, -0.389678,
		-0.909557, 0.318582, 0.266856,
		25.499760, 35.987442, 32.740780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587637, 35.515144, 32.105438>,  <26.136450, 35.764435, 32.553982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587637, 35.515144, 32.105438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490034, 35.870773, 32.260365>,  <25.431473, 36.084152, 32.353321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490034, 35.870773, 32.260365>,  <25.587637, 35.515144, 32.105438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490034, 35.870773, 32.260365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106688, 0.372350, -0.921940,
		-0.963886, -0.266283, 0.003997,
		-0.244009, 0.889072, 0.387313,
		25.416832, 36.137493, 32.376556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924034, 35.792816, 31.758341>,  <25.587637, 35.515144, 32.105438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924034, 35.792816, 31.758341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144573, 36.086189, 31.917385>,  <25.276897, 36.262211, 32.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144573, 36.086189, 31.917385>,  <24.924034, 35.792816, 31.758341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144573, 36.086189, 31.917385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067756, 0.514385, -0.854878,
		-0.831519, 0.444395, 0.333299,
		0.551348, 0.733431, 0.397611,
		25.309978, 36.306217, 32.036667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517143, 36.434578, 31.659786>,  <24.924034, 35.792816, 31.758341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517143, 36.434578, 31.659786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894100, 36.555786, 31.716457>,  <25.120275, 36.628510, 31.750460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894100, 36.555786, 31.716457>,  <24.517143, 36.434578, 31.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894100, 36.555786, 31.716457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069261, 0.591122, -0.803603,
		-0.327256, 0.747498, 0.578058,
		0.942394, 0.303021, 0.141676,
		25.176819, 36.646694, 31.758961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402838, 37.090641, 31.568272>,  <24.517143, 36.434578, 31.659786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402838, 37.090641, 31.568272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790125, 37.006168, 31.514668>,  <25.022497, 36.955486, 31.482506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790125, 37.006168, 31.514668>,  <24.402838, 37.090641, 31.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790125, 37.006168, 31.514668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010134, 0.502236, -0.864671,
		0.249908, 0.838547, 0.484133,
		0.968217, -0.211182, -0.134011,
		25.080589, 36.942814, 31.474464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684336, 37.700615, 31.242964>,  <24.402838, 37.090641, 31.568272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684336, 37.700615, 31.242964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927162, 37.389603, 31.177345>,  <25.072859, 37.202995, 31.137974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927162, 37.389603, 31.177345>,  <24.684336, 37.700615, 31.242964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927162, 37.389603, 31.177345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188461, 0.341423, -0.920822,
		0.771979, 0.528085, 0.353801,
		0.607068, -0.777532, -0.164048,
		25.109283, 37.156342, 31.128130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927711, 37.962238, 30.642843>,  <24.684336, 37.700615, 31.242964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927711, 37.962238, 30.642843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257723, 37.949249, 30.417181>,  <25.455730, 37.941456, 30.281784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257723, 37.949249, 30.417181>,  <24.927711, 37.962238, 30.642843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257723, 37.949249, 30.417181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286463, -0.836526, 0.467079,
		-0.487097, -0.546964, -0.680857,
		0.825030, -0.032472, -0.564155,
		25.505232, 37.939507, 30.247934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002296, 37.281548, 30.297768>,  <24.927711, 37.962238, 30.642843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002296, 37.281548, 30.297768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347189, 37.464867, 30.384045>,  <25.554125, 37.574856, 30.435810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347189, 37.464867, 30.384045>,  <25.002296, 37.281548, 30.297768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347189, 37.464867, 30.384045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184721, -0.681019, 0.708584,
		0.471631, -0.571121, -0.671853,
		0.862231, 0.458295, 0.215692,
		25.605858, 37.602356, 30.448751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413174, 36.796234, 30.346426>,  <25.002296, 37.281548, 30.297768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413174, 36.796234, 30.346426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584524, 37.086521, 30.561768>,  <25.687334, 37.260693, 30.690973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584524, 37.086521, 30.561768>,  <25.413174, 36.796234, 30.346426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584524, 37.086521, 30.561768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090084, -0.627120, 0.773696,
		0.899098, -0.282937, -0.334020,
		0.428378, 0.725719, 0.538354,
		25.713037, 37.304237, 30.723274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981209, 36.525204, 30.727625>,  <25.413174, 36.796234, 30.346426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981209, 36.525204, 30.727625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804802, 36.830181, 30.917019>,  <25.698957, 37.013168, 31.030655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804802, 36.830181, 30.917019>,  <25.981209, 36.525204, 30.727625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804802, 36.830181, 30.917019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077163, -0.557818, 0.826369,
		0.894177, 0.327906, 0.304838,
		-0.441015, 0.762442, 0.473486,
		25.672497, 37.058914, 31.059065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344837, 36.623974, 31.338625>,  <25.981209, 36.525204, 30.727625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344837, 36.623974, 31.338625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982655, 36.785995, 31.389347>,  <25.765345, 36.883209, 31.419781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982655, 36.785995, 31.389347>,  <26.344837, 36.623974, 31.338625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982655, 36.785995, 31.389347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051662, -0.401712, 0.914308,
		0.421287, 0.821313, 0.384658,
		-0.905455, 0.405058, 0.126805,
		25.711018, 36.907513, 31.427389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403126, 37.022648, 31.922472>,  <26.344837, 36.623974, 31.338625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403126, 37.022648, 31.922472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023243, 36.908306, 31.871334>,  <25.795313, 36.839703, 31.840651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023243, 36.908306, 31.871334>,  <26.403126, 37.022648, 31.922472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023243, 36.908306, 31.871334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029617, -0.324446, 0.945440,
		-0.311738, 0.901677, 0.299662,
		-0.949706, -0.285855, -0.127847,
		25.738331, 36.822548, 31.832979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017673, 37.328888, 32.466957>,  <26.403126, 37.022648, 31.922472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017673, 37.328888, 32.466957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805012, 37.010605, 32.350891>,  <25.677414, 36.819637, 32.281250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805012, 37.010605, 32.350891>,  <26.017673, 37.328888, 32.466957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805012, 37.010605, 32.350891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099124, -0.281783, 0.954344,
		-0.841140, 0.536145, 0.070938,
		-0.531656, -0.795705, -0.290164,
		25.645515, 36.771893, 32.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334448, 37.369461, 32.804134>,  <26.017673, 37.328888, 32.466957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334448, 37.369461, 32.804134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426531, 36.991272, 32.711979>,  <25.481781, 36.764359, 32.656685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426531, 36.991272, 32.711979>,  <25.334448, 37.369461, 32.804134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426531, 36.991272, 32.711979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109031, -0.260313, 0.959348,
		-0.967014, -0.195731, -0.163013,
		0.230209, -0.945477, -0.230385,
		25.495594, 36.707630, 32.642864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842552, 36.775887, 32.939808>,  <25.334448, 37.369461, 32.804134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842552, 36.775887, 32.939808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232689, 36.702404, 32.988728>,  <25.466772, 36.658314, 33.018078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232689, 36.702404, 32.988728>,  <24.842552, 36.775887, 32.939808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232689, 36.702404, 32.988728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152365, -0.159653, 0.975344,
		-0.159653, -0.969929, -0.183707,
		-0.975344, 0.183707, -0.122295,
		25.525291, 36.647293, 33.025417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365164, 36.420223, 32.517334>,  <24.842552, 36.775887, 32.939808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365164, 36.420223, 32.517334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723713, 36.265430, 32.603832>,  <24.938843, 36.172554, 32.655731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723713, 36.265430, 32.603832>,  <24.365164, 36.420223, 32.517334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723713, 36.265430, 32.603832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434402, -0.669507, 0.602541,
		-0.088391, -0.634040, -0.768232,
		0.896371, -0.386981, 0.216250,
		24.992624, 36.149338, 32.668709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.223064, 35.763645, 32.725735>,  <24.365164, 36.420223, 32.517334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.223064, 35.763645, 32.725735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604425, 35.818130, 32.833412>,  <24.833242, 35.850822, 32.898018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604425, 35.818130, 32.833412>,  <24.223064, 35.763645, 32.725735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604425, 35.818130, 32.833412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120263, -0.646732, 0.753176,
		0.276693, -0.750455, -0.600215,
		0.953403, 0.136214, 0.269198,
		24.890446, 35.858994, 32.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409695, 35.258194, 33.160355>,  <24.223064, 35.763645, 32.725735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409695, 35.258194, 33.160355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755526, 35.456539, 33.192902>,  <24.963024, 35.575546, 33.212429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755526, 35.456539, 33.192902>,  <24.409695, 35.258194, 33.160355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755526, 35.456539, 33.192902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248912, -0.563288, 0.787876,
		0.436517, -0.660926, -0.610434,
		0.864578, 0.495866, 0.081372,
		25.014898, 35.605297, 33.217312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875074, 34.769871, 33.464878>,  <24.409695, 35.258194, 33.160355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875074, 34.769871, 33.464878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057545, 35.124134, 33.499546>,  <25.167027, 35.336693, 33.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057545, 35.124134, 33.499546>,  <24.875074, 34.769871, 33.464878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057545, 35.124134, 33.499546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413055, -0.296996, 0.860917,
		0.788220, -0.356930, -0.501308,
		0.456174, 0.885660, 0.086666,
		25.194397, 35.389832, 33.525547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574345, 34.635818, 33.644955>,  <24.875074, 34.769871, 33.464878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574345, 34.635818, 33.644955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504683, 35.012516, 33.760052>,  <25.462885, 35.238533, 33.829109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504683, 35.012516, 33.760052>,  <25.574345, 34.635818, 33.644955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504683, 35.012516, 33.760052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559080, -0.145987, 0.816160,
		0.810617, 0.303010, -0.501084,
		-0.174153, 0.941739, 0.287746,
		25.452436, 35.295036, 33.846375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220182, 35.083912, 33.695507>,  <25.574345, 34.635818, 33.644955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220182, 35.083912, 33.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923021, 35.151119, 33.954693>,  <25.744724, 35.191444, 34.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923021, 35.151119, 33.954693>,  <26.220182, 35.083912, 33.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923021, 35.151119, 33.954693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594033, -0.280742, 0.753862,
		0.308573, 0.944963, 0.108757,
		-0.742904, 0.168017, 0.647969,
		25.700150, 35.201523, 34.149082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491192, 35.421398, 34.228344>,  <26.220182, 35.083912, 33.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491192, 35.421398, 34.228344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185472, 35.227531, 34.398495>,  <26.002041, 35.111210, 34.500584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185472, 35.227531, 34.398495>,  <26.491192, 35.421398, 34.228344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185472, 35.227531, 34.398495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603550, -0.305329, 0.736547,
		-0.227104, 0.819675, 0.525886,
		-0.764297, -0.484671, 0.425374,
		25.956182, 35.082130, 34.526108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374073, 35.672134, 34.840298>,  <26.491192, 35.421398, 34.228344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374073, 35.672134, 34.840298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267132, 35.286839, 34.829773>,  <26.202967, 35.055660, 34.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267132, 35.286839, 34.829773>,  <26.374073, 35.672134, 34.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267132, 35.286839, 34.829773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634675, -0.196572, 0.747360,
		-0.725058, 0.183113, 0.663898,
		-0.267355, -0.963239, -0.026309,
		26.186926, 34.997868, 34.821880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147408, 35.664513, 34.732594>,  <26.374073, 35.672134, 34.840298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147408, 35.664513, 34.732594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454695, 35.797382, 34.513687>,  <27.639067, 35.877106, 34.382343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454695, 35.797382, 34.513687>,  <27.147408, 35.664513, 34.732594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454695, 35.797382, 34.513687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217824, 0.939473, 0.264467,
		0.601991, -0.083961, 0.794076,
		0.768219, 0.332176, -0.547265,
		27.685160, 35.897034, 34.349506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583942, 36.041485, 35.121346>,  <27.147408, 35.664513, 34.732594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583942, 36.041485, 35.121346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635574, 36.200371, 34.757904>,  <27.666553, 36.295704, 34.539841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635574, 36.200371, 34.757904>,  <27.583942, 36.041485, 35.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635574, 36.200371, 34.757904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046716, 0.917685, 0.394554,
		0.990533, -0.008483, 0.137012,
		0.129081, 0.397219, -0.908601,
		27.674299, 36.319538, 34.485325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252880, 36.537640, 35.032272>,  <27.583942, 36.041485, 35.121346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252880, 36.537640, 35.032272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959843, 36.646996, 34.782932>,  <27.784021, 36.712608, 34.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959843, 36.646996, 34.782932>,  <28.252880, 36.537640, 35.032272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959843, 36.646996, 34.782932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010129, 0.920072, 0.391619,
		0.680592, 0.280584, -0.676807,
		-0.732593, 0.273388, -0.623351,
		27.740065, 36.729012, 34.595928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332884, 37.267414, 34.905800>,  <28.252880, 36.537640, 35.032272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332884, 37.267414, 34.905800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948517, 37.206875, 34.813076>,  <27.717897, 37.170551, 34.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948517, 37.206875, 34.813076>,  <28.332884, 37.267414, 34.905800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948517, 37.206875, 34.813076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225459, 0.913735, 0.338018,
		0.160653, 0.377070, -0.912145,
		-0.960916, -0.151348, -0.231809,
		27.660242, 37.161472, 34.743534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129320, 37.866547, 34.630989>,  <28.332884, 37.267414, 34.905800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129320, 37.866547, 34.630989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783720, 37.678314, 34.702614>,  <27.576361, 37.565376, 34.745586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783720, 37.678314, 34.702614>,  <28.129320, 37.866547, 34.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783720, 37.678314, 34.702614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406116, 0.861555, 0.304617,
		-0.297615, 0.190471, -0.935493,
		-0.863999, -0.470577, 0.179058,
		27.524521, 37.537140, 34.756332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667137, 38.325005, 34.396477>,  <28.129320, 37.866547, 34.630989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667137, 38.325005, 34.396477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460234, 38.073532, 34.628754>,  <27.336092, 37.922649, 34.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460234, 38.073532, 34.628754>,  <27.667137, 38.325005, 34.396477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460234, 38.073532, 34.628754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556139, 0.762642, 0.330284,
		-0.650502, -0.152101, -0.744119,
		-0.517259, -0.628684, 0.580689,
		27.305056, 37.884926, 34.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947300, 38.416252, 34.188999>,  <27.667137, 38.325005, 34.396477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947300, 38.416252, 34.188999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961037, 38.269840, 34.560986>,  <26.969278, 38.181995, 34.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961037, 38.269840, 34.560986>,  <26.947300, 38.416252, 34.188999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961037, 38.269840, 34.560986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534494, 0.779537, 0.326555,
		-0.844474, -0.508278, -0.168869,
		0.034341, -0.366027, 0.929970,
		26.971338, 38.160030, 34.839977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271996, 38.320045, 34.448402>,  <26.947300, 38.416252, 34.188999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271996, 38.320045, 34.448402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465712, 38.177711, 34.768112>,  <26.581942, 38.092312, 34.959938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465712, 38.177711, 34.768112>,  <26.271996, 38.320045, 34.448402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465712, 38.177711, 34.768112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570319, 0.564386, 0.596829,
		-0.663474, -0.744881, 0.070386,
		0.484292, -0.355838, 0.799275,
		26.611000, 38.070961, 35.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794498, 38.336197, 34.948166>,  <26.271996, 38.320045, 34.448402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794498, 38.336197, 34.948166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115040, 38.248363, 35.170738>,  <26.307364, 38.195663, 35.304283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115040, 38.248363, 35.170738>,  <25.794498, 38.336197, 34.948166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115040, 38.248363, 35.170738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427752, 0.439904, 0.789628,
		-0.418168, -0.870785, 0.258590,
		0.801351, -0.219585, 0.556434,
		26.355446, 38.182487, 35.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278599, 38.950111, 34.849476>,  <25.794498, 38.336197, 34.948166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278599, 38.950111, 34.849476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187155, 39.097309, 35.209991>,  <25.132288, 39.185627, 35.426300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187155, 39.097309, 35.209991>,  <25.278599, 38.950111, 34.849476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187155, 39.097309, 35.209991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851905, -0.372449, 0.368158,
		0.471164, 0.851974, -0.228353,
		-0.228611, 0.367998, 0.901285,
		25.118572, 39.207710, 35.480377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710415, 39.428562, 35.092613>,  <25.278599, 38.950111, 34.849476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710415, 39.428562, 35.092613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567780, 39.235085, 35.412334>,  <25.482199, 39.118996, 35.604168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567780, 39.235085, 35.412334>,  <25.710415, 39.428562, 35.092613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567780, 39.235085, 35.412334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892006, -0.430657, 0.137332,
		0.277797, 0.761951, 0.585029,
		-0.356587, -0.483699, 0.799300,
		25.460804, 39.089973, 35.652126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314955, 39.486534, 35.655399>,  <25.710415, 39.428562, 35.092613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314955, 39.486534, 35.655399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121315, 39.152054, 35.758492>,  <26.005131, 38.951366, 35.820347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121315, 39.152054, 35.758492>,  <26.314955, 39.486534, 35.655399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121315, 39.152054, 35.758492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869901, -0.491712, 0.038615,
		0.094438, 0.242891, 0.965446,
		-0.484100, -0.836196, 0.257727,
		25.976086, 38.901196, 35.835808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482632, 39.169651, 36.334286>,  <26.314955, 39.486534, 35.655399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482632, 39.169651, 36.334286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352081, 38.884857, 36.085590>,  <26.273750, 38.713982, 35.936375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352081, 38.884857, 36.085590>,  <26.482632, 39.169651, 36.334286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352081, 38.884857, 36.085590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900435, -0.434291, 0.024649,
		-0.287565, -0.551790, 0.782837,
		-0.326378, -0.711982, -0.621738,
		26.254168, 38.671261, 35.899071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047224, 38.699005, 36.378170>,  <26.482632, 39.169651, 36.334286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047224, 38.699005, 36.378170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809263, 38.543159, 36.096947>,  <26.666487, 38.449654, 35.928211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809263, 38.543159, 36.096947>,  <27.047224, 38.699005, 36.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809263, 38.543159, 36.096947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722447, -0.642611, -0.255190,
		-0.352369, -0.659737, 0.663764,
		-0.594900, -0.389613, -0.703062,
		26.630793, 38.426277, 35.886028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319260, 37.983562, 36.203239>,  <27.047224, 38.699005, 36.378170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319260, 37.983562, 36.203239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029202, 38.025890, 35.931072>,  <26.855165, 38.051289, 35.767773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029202, 38.025890, 35.931072>,  <27.319260, 37.983562, 36.203239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029202, 38.025890, 35.931072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345693, -0.798635, -0.492624,
		-0.595531, -0.592440, 0.542548,
		-0.725148, 0.105818, -0.680414,
		26.811657, 38.057636, 35.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348854, 37.400818, 35.929821>,  <27.319260, 37.983562, 36.203239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348854, 37.400818, 35.929821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140617, 37.623943, 35.671265>,  <27.015675, 37.757820, 35.516129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140617, 37.623943, 35.671265>,  <27.348854, 37.400818, 35.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140617, 37.623943, 35.671265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219782, -0.644011, -0.732766,
		-0.825032, -0.523538, 0.212670,
		-0.520593, 0.557815, -0.646394,
		26.984440, 37.791286, 35.477348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834982, 37.088303, 35.605583>,  <27.348854, 37.400818, 35.929821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834982, 37.088303, 35.605583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948637, 37.375965, 35.351944>,  <27.016830, 37.548561, 35.199760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948637, 37.375965, 35.351944>,  <26.834982, 37.088303, 35.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948637, 37.375965, 35.351944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139096, -0.685280, -0.714873,
		-0.948640, 0.114921, -0.294745,
		0.284137, 0.719155, -0.634099,
		27.033878, 37.591713, 35.161713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367769, 37.114277, 35.109543>,  <26.834982, 37.088303, 35.605583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367769, 37.114277, 35.109543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724493, 37.235012, 34.974743>,  <26.938526, 37.307453, 34.893864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724493, 37.235012, 34.974743>,  <26.367769, 37.114277, 35.109543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724493, 37.235012, 34.974743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006714, -0.753643, -0.657249,
		-0.452363, 0.583877, -0.674132,
		0.891808, 0.301841, -0.337000,
		26.992035, 37.325565, 34.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378473, 36.964569, 34.416294>,  <26.367769, 37.114277, 35.109543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378473, 36.964569, 34.416294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764458, 37.026810, 34.500809>,  <26.996048, 37.064152, 34.551517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764458, 37.026810, 34.500809>,  <26.378473, 36.964569, 34.416294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764458, 37.026810, 34.500809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254855, -0.747441, -0.613499,
		0.062464, 0.645849, -0.760905,
		0.964960, 0.155599, 0.211286,
		27.053946, 37.073490, 34.564194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767063, 37.063271, 33.821938>,  <26.378473, 36.964569, 34.416294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767063, 37.063271, 33.821938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051498, 36.946495, 34.077789>,  <27.222158, 36.876431, 34.231300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051498, 36.946495, 34.077789>,  <26.767063, 37.063271, 33.821938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051498, 36.946495, 34.077789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228522, -0.764368, -0.602926,
		0.664932, 0.574902, -0.476817,
		0.711086, -0.291941, 0.639630,
		27.264824, 36.858913, 34.269680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558216, 37.090149, 33.623337>,  <26.767063, 37.063271, 33.821938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558216, 37.090149, 33.623337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452459, 36.790161, 33.865871>,  <27.389006, 36.610168, 34.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452459, 36.790161, 33.865871>,  <27.558216, 37.090149, 33.623337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452459, 36.790161, 33.865871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127637, -0.650390, -0.748801,
		0.955932, -0.120585, 0.267681,
		-0.264391, -0.749968, 0.606337,
		27.373142, 36.565170, 34.047771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509197, 37.200348, 32.882759>,  <27.558216, 37.090149, 33.623337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509197, 37.200348, 32.882759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616169, 37.475002, 33.153172>,  <27.680353, 37.639793, 33.315418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616169, 37.475002, 33.153172>,  <27.509197, 37.200348, 32.882759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616169, 37.475002, 33.153172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932133, -0.006582, -0.362057,
		-0.244150, 0.726976, -0.641792,
		0.267431, 0.686631, 0.676031,
		27.696398, 37.680992, 33.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881166, 37.875607, 32.556694>,  <27.509197, 37.200348, 32.882759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881166, 37.875607, 32.556694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976767, 37.747501, 32.923367>,  <28.034126, 37.670639, 33.143372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976767, 37.747501, 32.923367>,  <27.881166, 37.875607, 32.556694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976767, 37.747501, 32.923367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968140, 0.005936, -0.250340,
		0.074733, 0.947311, 0.311475,
		0.238998, -0.320260, 0.916686,
		28.048466, 37.651424, 33.198372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421831, 38.246639, 32.777786>,  <27.881166, 37.875607, 32.556694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421831, 38.246639, 32.777786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432646, 37.915207, 33.001469>,  <28.439135, 37.716347, 33.135677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432646, 37.915207, 33.001469>,  <28.421831, 38.246639, 32.777786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432646, 37.915207, 33.001469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996778, -0.019916, -0.077701,
		0.075519, 0.559509, 0.825377,
		0.027037, -0.828585, 0.559210,
		28.440758, 37.666630, 33.169231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095751, 38.323399, 32.450134>,  <28.421831, 38.246639, 32.777786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095751, 38.323399, 32.450134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363571, 38.399738, 32.737267>,  <29.524263, 38.445541, 32.909546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363571, 38.399738, 32.737267>,  <29.095751, 38.323399, 32.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363571, 38.399738, 32.737267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426810, -0.692082, 0.582113,
		0.607892, -0.696131, -0.381928,
		0.669552, 0.190852, 0.717827,
		29.564436, 38.456993, 32.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041206, 38.051411, 33.159332>,  <29.095751, 38.323399, 32.450134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041206, 38.051411, 33.159332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331976, 38.241150, 33.357960>,  <29.506437, 38.354992, 33.477135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331976, 38.241150, 33.357960>,  <29.041206, 38.051411, 33.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331976, 38.241150, 33.357960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504392, -0.859508, 0.082668,
		0.466017, 0.190371, -0.864052,
		0.726923, 0.474346, 0.496567,
		29.550053, 38.383453, 33.506931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677225, 37.829288, 32.912128>,  <29.041206, 38.051411, 33.159332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677225, 37.829288, 32.912128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704424, 37.944603, 33.294178>,  <29.720743, 38.013794, 33.523407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704424, 37.944603, 33.294178>,  <29.677225, 37.829288, 32.912128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704424, 37.944603, 33.294178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449693, -0.863434, 0.228599,
		0.890591, 0.413970, -0.188350,
		0.067995, 0.288288, 0.955127,
		29.724823, 38.031090, 33.580715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346153, 37.768311, 33.238087>,  <29.677225, 37.829288, 32.912128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346153, 37.768311, 33.238087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117287, 37.759727, 33.566029>,  <29.979967, 37.754578, 33.762794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117287, 37.759727, 33.566029>,  <30.346153, 37.768311, 33.238087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117287, 37.759727, 33.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489284, -0.811202, 0.320238,
		0.658199, 0.584372, 0.474640,
		-0.572167, -0.021454, 0.819856,
		29.945637, 37.753292, 33.811985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732113, 37.796215, 33.946571>,  <30.346153, 37.768311, 33.238087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732113, 37.796215, 33.946571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394524, 37.593296, 34.016270>,  <30.191971, 37.471546, 34.058090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394524, 37.593296, 34.016270>,  <30.732113, 37.796215, 33.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394524, 37.593296, 34.016270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518404, -0.688036, 0.507803,
		-0.137717, 0.518902, 0.843667,
		-0.843974, -0.507294, 0.174246,
		30.141331, 37.441109, 34.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576284, 37.640305, 34.630856>,  <30.732113, 37.796215, 33.946571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576284, 37.640305, 34.630856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375780, 37.351055, 34.440769>,  <30.255478, 37.177505, 34.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375780, 37.351055, 34.440769>,  <30.576284, 37.640305, 34.630856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375780, 37.351055, 34.440769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385550, -0.678315, 0.625492,
		-0.774653, 0.130317, 0.618814,
		-0.501263, -0.723123, -0.475215,
		30.225401, 37.134117, 34.298206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460669, 36.980930, 34.927853>,  <30.576284, 37.640305, 34.630856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460669, 36.980930, 34.927853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601503, 36.738976, 35.213551>,  <30.686005, 36.593803, 35.384972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601503, 36.738976, 35.213551>,  <30.460669, 36.980930, 34.927853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601503, 36.738976, 35.213551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538014, -0.493641, -0.683271,
		0.765881, 0.624847, 0.151630,
		0.352089, -0.604884, 0.714247,
		30.707130, 36.557510, 35.427826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184355, 36.785149, 34.724552>,  <30.460669, 36.980930, 34.927853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184355, 36.785149, 34.724552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001661, 36.496143, 34.932152>,  <30.892046, 36.322739, 35.056713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001661, 36.496143, 34.932152>,  <31.184355, 36.785149, 34.724552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001661, 36.496143, 34.932152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172164, -0.644169, -0.745255,
		0.872785, -0.251030, 0.418606,
		-0.456734, -0.722516, 0.519003,
		30.864641, 36.279388, 35.087852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650503, 36.224476, 34.713562>,  <31.184355, 36.785149, 34.724552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650503, 36.224476, 34.713562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276159, 36.094738, 34.768646>,  <31.051554, 36.016895, 34.801697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276159, 36.094738, 34.768646>,  <31.650503, 36.224476, 34.713562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276159, 36.094738, 34.768646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113002, -0.646428, -0.754561,
		0.333761, -0.690601, 0.641618,
		-0.935860, -0.324347, 0.137713,
		30.995401, 35.997433, 34.809959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048195, 36.017094, 35.373871>,  <31.650503, 36.224476, 34.713562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048195, 36.017094, 35.373871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147278, 36.267750, 35.078316>,  <32.206730, 36.418144, 34.900982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147278, 36.267750, 35.078316>,  <32.048195, 36.017094, 35.373871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147278, 36.267750, 35.078316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912474, -0.407228, -0.039462,
		-0.325625, -0.664442, -0.672671,
		0.247710, 0.626644, -0.738889,
		32.221592, 36.455742, 34.856647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376289, 35.609547, 34.757050>,  <32.048195, 36.017094, 35.373871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376289, 35.609547, 34.757050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505508, 35.984840, 34.806614>,  <32.583042, 36.210018, 34.836353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505508, 35.984840, 34.806614>,  <32.376289, 35.609547, 34.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505508, 35.984840, 34.806614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908773, -0.344086, 0.236086,
		0.264141, 0.036341, -0.963799,
		0.323050, 0.938235, 0.123913,
		32.602425, 36.266312, 34.843788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018398, 35.497425, 34.499107>,  <32.376289, 35.609547, 34.757050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018398, 35.497425, 34.499107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011868, 35.828075, 34.724110>,  <33.007950, 36.026466, 34.859112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011868, 35.828075, 34.724110>,  <33.018398, 35.497425, 34.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011868, 35.828075, 34.724110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933540, -0.188887, 0.304671,
		0.358101, 0.530099, -0.768609,
		-0.016325, 0.826630, 0.562509,
		33.006969, 36.076065, 34.892864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659142, 35.851589, 34.501400>,  <33.018398, 35.497425, 34.499107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659142, 35.851589, 34.501400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525360, 35.915730, 34.872868>,  <33.445091, 35.954212, 35.095749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525360, 35.915730, 34.872868>,  <33.659142, 35.851589, 34.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525360, 35.915730, 34.872868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860667, -0.349470, 0.370302,
		0.383921, 0.923124, -0.021128,
		-0.334451, 0.160351, 0.928671,
		33.425026, 35.963837, 35.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844879, 35.659565, 33.760719>,  <33.659142, 35.851589, 34.501400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844879, 35.659565, 33.760719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588131, 35.683674, 33.454945>,  <33.434082, 35.698139, 33.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588131, 35.683674, 33.454945>,  <33.844879, 35.659565, 33.760719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588131, 35.683674, 33.454945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013738, -0.997650, -0.067130,
		-0.766689, -0.032587, 0.641191,
		-0.641871, 0.060277, -0.764439,
		33.395569, 35.701756, 33.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293568, 35.168560, 33.831623>,  <33.844879, 35.659565, 33.760719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293568, 35.168560, 33.831623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356739, 35.265316, 33.448677>,  <33.394642, 35.323368, 33.218910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356739, 35.265316, 33.448677>,  <33.293568, 35.168560, 33.831623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356739, 35.265316, 33.448677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274129, -0.920683, -0.277841,
		-0.948637, 0.306320, -0.079090,
		0.157925, 0.241890, -0.957366,
		33.404118, 35.337883, 33.161469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691883, 34.965935, 33.389462>,  <33.293568, 35.168560, 33.831623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691883, 34.965935, 33.389462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001804, 34.985512, 33.137341>,  <33.187756, 34.997257, 32.986069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001804, 34.985512, 33.137341>,  <32.691883, 34.965935, 33.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001804, 34.985512, 33.137341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329362, -0.819762, -0.468520,
		-0.539629, 0.570609, -0.619036,
		0.774804, 0.048940, -0.630304,
		33.234245, 35.000195, 32.948250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519215, 34.945732, 32.662579>,  <32.691883, 34.965935, 33.389462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519215, 34.945732, 32.662579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888321, 34.793617, 32.687542>,  <33.109783, 34.702351, 32.702518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888321, 34.793617, 32.687542>,  <32.519215, 34.945732, 32.662579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888321, 34.793617, 32.687542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333330, -0.868887, -0.365960,
		0.193394, 0.316892, -0.928536,
		0.922762, -0.380283, 0.062407,
		33.165150, 34.679531, 32.706264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422230, 34.438019, 32.265137>,  <32.519215, 34.945732, 32.662579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422230, 34.438019, 32.265137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801579, 34.384506, 32.380165>,  <33.029186, 34.352398, 32.449184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801579, 34.384506, 32.380165>,  <32.422230, 34.438019, 32.265137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801579, 34.384506, 32.380165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006094, -0.914214, -0.405187,
		0.317109, 0.382514, -0.867828,
		0.948370, -0.133777, 0.287574,
		33.086090, 34.344372, 32.466438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784931, 34.363426, 31.701109>,  <32.422230, 34.438019, 32.265137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784931, 34.363426, 31.701109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983276, 34.183384, 31.998167>,  <33.102283, 34.075359, 32.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983276, 34.183384, 31.998167>,  <32.784931, 34.363426, 31.701109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983276, 34.183384, 31.998167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089011, -0.877029, -0.472120,
		0.863826, 0.168003, -0.474952,
		0.495864, -0.450105, 0.742646,
		33.132034, 34.048351, 32.220963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236740, 33.906750, 31.395206>,  <32.784931, 34.363426, 31.701109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236740, 33.906750, 31.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198017, 33.767975, 31.768358>,  <33.174782, 33.684711, 31.992249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198017, 33.767975, 31.768358>,  <33.236740, 33.906750, 31.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198017, 33.767975, 31.768358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039618, -0.935195, -0.351910,
		0.994514, -0.071028, 0.076793,
		-0.096812, -0.346937, 0.932879,
		33.168972, 33.663895, 32.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661205, 33.386402, 31.384790>,  <33.236740, 33.906750, 31.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661205, 33.386402, 31.384790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437111, 33.298840, 31.704346>,  <33.302654, 33.246304, 31.896078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437111, 33.298840, 31.704346>,  <33.661205, 33.386402, 31.384790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437111, 33.298840, 31.704346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014535, -0.966898, -0.254750,
		0.828208, -0.131107, 0.544869,
		-0.560232, -0.218906, 0.798887,
		33.269043, 33.233170, 31.944012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930992, 32.823868, 31.713921>,  <33.661205, 33.386402, 31.384790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930992, 32.823868, 31.713921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542797, 32.808949, 31.809227>,  <33.309879, 32.799995, 31.866411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542797, 32.808949, 31.809227>,  <33.930992, 32.823868, 31.713921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542797, 32.808949, 31.809227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090084, -0.860389, -0.501613,
		0.223710, -0.508271, 0.831634,
		-0.970484, -0.037299, 0.238265,
		33.251652, 32.797760, 31.880707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867260, 32.121693, 31.935917>,  <33.930992, 32.823868, 31.713921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867260, 32.121693, 31.935917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504673, 32.255150, 31.832388>,  <33.287121, 32.335224, 31.770271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504673, 32.255150, 31.832388>,  <33.867260, 32.121693, 31.935917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504673, 32.255150, 31.832388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149086, -0.826336, -0.543086,
		-0.395073, -0.453705, 0.798792,
		-0.906472, 0.333647, -0.258822,
		33.232731, 32.355244, 31.754742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497002, 31.528662, 31.908909>,  <33.867260, 32.121693, 31.935917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497002, 31.528662, 31.908909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279537, 31.807840, 31.722446>,  <33.149059, 31.975348, 31.610569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279537, 31.807840, 31.722446>,  <33.497002, 31.528662, 31.908909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279537, 31.807840, 31.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220278, -0.654594, -0.723177,
		-0.809884, -0.290478, 0.509619,
		-0.543660, 0.697947, -0.466159,
		33.116440, 32.017223, 31.582600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837639, 31.294077, 31.816362>,  <33.497002, 31.528662, 31.908909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837639, 31.294077, 31.816362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880001, 31.551695, 31.513315>,  <32.905418, 31.706266, 31.331486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880001, 31.551695, 31.513315>,  <32.837639, 31.294077, 31.816362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880001, 31.551695, 31.513315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258594, -0.717852, -0.646388,
		-0.960163, 0.264371, 0.090523,
		0.105904, 0.644047, -0.757620,
		32.911774, 31.744909, 31.286030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259319, 31.125380, 31.426390>,  <32.837639, 31.294077, 31.816362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259319, 31.125380, 31.426390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515182, 31.344549, 31.210754>,  <32.668701, 31.476051, 31.081373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515182, 31.344549, 31.210754>,  <32.259319, 31.125380, 31.426390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515182, 31.344549, 31.210754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126939, -0.616404, -0.777131,
		-0.758103, 0.565531, -0.324737,
		0.639661, 0.547924, -0.539086,
		32.707081, 31.508926, 31.049028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961767, 31.116003, 30.824417>,  <32.259319, 31.125380, 31.426390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961767, 31.116003, 30.824417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333092, 31.213007, 30.711689>,  <32.555885, 31.271210, 30.644053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333092, 31.213007, 30.711689>,  <31.961767, 31.116003, 30.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333092, 31.213007, 30.711689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095473, -0.577084, -0.811085,
		-0.359331, 0.779848, -0.512561,
		0.928313, 0.242512, -0.281819,
		32.611588, 31.285761, 30.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903450, 31.156111, 30.130409>,  <31.961767, 31.116003, 30.824417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903450, 31.156111, 30.130409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294209, 31.095301, 30.190496>,  <32.528664, 31.058815, 30.226549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294209, 31.095301, 30.190496>,  <31.903450, 31.156111, 30.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294209, 31.095301, 30.190496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073315, -0.421853, -0.903695,
		0.200754, 0.893828, -0.400961,
		0.976894, -0.152024, 0.150219,
		32.587276, 31.049694, 30.235561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125038, 31.217461, 29.491667>,  <31.903450, 31.156111, 30.130409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125038, 31.217461, 29.491667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425228, 31.034719, 29.682693>,  <32.605343, 30.925076, 29.797310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425228, 31.034719, 29.682693>,  <32.125038, 31.217461, 29.491667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425228, 31.034719, 29.682693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179100, -0.554980, -0.812355,
		0.636167, 0.695186, -0.334678,
		0.750477, -0.456852, 0.477568,
		32.650372, 30.897663, 29.825964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592411, 31.301119, 29.078199>,  <32.125038, 31.217461, 29.491667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592411, 31.301119, 29.078199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667282, 30.979574, 29.304037>,  <32.712204, 30.786648, 29.439539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667282, 30.979574, 29.304037>,  <32.592411, 31.301119, 29.078199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667282, 30.979574, 29.304037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145405, -0.545749, -0.825237,
		0.971504, 0.236564, 0.014731,
		0.187182, -0.803863, 0.564595,
		32.723438, 30.738415, 29.473415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074238, 30.947029, 28.667910>,  <32.592411, 31.301119, 29.078199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074238, 30.947029, 28.667910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931099, 30.687746, 28.936766>,  <32.845215, 30.532177, 29.098080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931099, 30.687746, 28.936766>,  <33.074238, 30.947029, 28.667910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931099, 30.687746, 28.936766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067420, -0.699992, -0.710961,
		0.931344, -0.299730, 0.206787,
		-0.357846, -0.648208, 0.672141,
		32.823746, 30.493284, 29.138409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568596, 30.317453, 28.632406>,  <33.074238, 30.947029, 28.667910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568596, 30.317453, 28.632406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217293, 30.200352, 28.783644>,  <33.006512, 30.130091, 28.874386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217293, 30.200352, 28.783644>,  <33.568596, 30.317453, 28.632406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217293, 30.200352, 28.783644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111634, -0.643313, -0.757421,
		0.464973, -0.707420, 0.532313,
		-0.878258, -0.292756, 0.378096,
		32.953815, 30.112524, 28.897072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561409, 29.608734, 28.570112>,  <33.568596, 30.317453, 28.632406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561409, 29.608734, 28.570112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173267, 29.701387, 28.597683>,  <32.940380, 29.756979, 28.614225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173267, 29.701387, 28.597683>,  <33.561409, 29.608734, 28.570112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173267, 29.701387, 28.597683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178150, -0.492872, -0.851669,
		-0.163301, -0.838704, 0.519527,
		-0.970358, 0.231632, 0.068928,
		32.882160, 29.770878, 28.618361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111206, 28.977650, 28.420006>,  <33.561409, 29.608734, 28.570112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111206, 28.977650, 28.420006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863472, 29.286371, 28.362391>,  <32.714832, 29.471603, 28.327822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863472, 29.286371, 28.362391>,  <33.111206, 28.977650, 28.420006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863472, 29.286371, 28.362391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195132, -0.329015, -0.923944,
		-0.760494, -0.544122, 0.354373,
		-0.619332, 0.771803, -0.144039,
		32.677673, 29.517912, 28.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384647, 28.660679, 28.296217>,  <33.111206, 28.977650, 28.420006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384647, 28.660679, 28.296217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379204, 29.031502, 28.146345>,  <32.375938, 29.253996, 28.056423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379204, 29.031502, 28.146345>,  <32.384647, 28.660679, 28.296217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379204, 29.031502, 28.146345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195809, -0.369928, -0.908191,
		-0.980548, 0.061005, 0.186561,
		-0.013610, 0.927055, -0.374678,
		32.375122, 29.309618, 28.033941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927732, 28.618158, 27.725700>,  <32.384647, 28.660679, 28.296217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927732, 28.618158, 27.725700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128597, 28.958670, 27.664829>,  <32.249115, 29.162977, 27.628305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128597, 28.958670, 27.664829>,  <31.927732, 28.618158, 27.725700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128597, 28.958670, 27.664829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084070, -0.223198, -0.971141,
		-0.860678, 0.474876, -0.183648,
		0.502161, 0.851279, -0.152179,
		32.279247, 29.214054, 27.619175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448555, 29.056952, 27.372330>,  <31.927732, 28.618158, 27.725700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448555, 29.056952, 27.372330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830187, 29.148003, 27.294441>,  <32.059166, 29.202633, 27.247707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830187, 29.148003, 27.294441>,  <31.448555, 29.056952, 27.372330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830187, 29.148003, 27.294441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193971, -0.025891, -0.980666,
		-0.228269, 0.973404, 0.019451,
		0.954080, 0.227629, -0.194722,
		32.116409, 29.216291, 27.236025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405201, 29.301710, 26.748430>,  <31.448555, 29.056952, 27.372330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405201, 29.301710, 26.748430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804419, 29.286488, 26.768288>,  <32.043949, 29.277355, 26.780203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804419, 29.286488, 26.768288>,  <31.405201, 29.301710, 26.748430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804419, 29.286488, 26.768288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042401, -0.171909, -0.984200,
		0.045988, 0.984378, -0.169959,
		0.998042, -0.038055, 0.049645,
		32.103832, 29.275070, 26.783180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702642, 29.708384, 26.204317>,  <31.405201, 29.301710, 26.748430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702642, 29.708384, 26.204317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986860, 29.446140, 26.306534>,  <32.157391, 29.288794, 26.367863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986860, 29.446140, 26.306534>,  <31.702642, 29.708384, 26.204317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986860, 29.446140, 26.306534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130356, -0.234230, -0.963402,
		0.691470, 0.717853, -0.080969,
		0.710546, -0.655609, 0.255540,
		32.200024, 29.249458, 26.383196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319878, 29.946104, 25.867296>,  <31.702642, 29.708384, 26.204317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319878, 29.946104, 25.867296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360516, 29.552860, 25.928194>,  <32.384899, 29.316914, 25.964733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360516, 29.552860, 25.928194>,  <32.319878, 29.946104, 25.867296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360516, 29.552860, 25.928194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294438, -0.116466, -0.948547,
		0.950255, 0.141195, 0.277632,
		0.101596, -0.983107, 0.152245,
		32.390995, 29.257929, 25.973867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867195, 29.843050, 25.497578>,  <32.319878, 29.946104, 25.867296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867195, 29.843050, 25.497578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699787, 29.484753, 25.557560>,  <32.599342, 29.269773, 25.593550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699787, 29.484753, 25.557560>,  <32.867195, 29.843050, 25.497578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699787, 29.484753, 25.557560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207106, -0.254891, -0.944531,
		0.884280, -0.364245, 0.292190,
		-0.418517, -0.895744, 0.149958,
		32.574230, 29.216030, 25.602547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372616, 29.408350, 25.293545>,  <32.867195, 29.843050, 25.497578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372616, 29.408350, 25.293545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036793, 29.191252, 25.303101>,  <32.835300, 29.060993, 25.308834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036793, 29.191252, 25.303101>,  <33.372616, 29.408350, 25.293545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036793, 29.191252, 25.303101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224936, -0.387301, -0.894093,
		0.494519, -0.745268, 0.447244,
		-0.839556, -0.542747, 0.023890,
		32.784927, 29.028427, 25.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611874, 28.769779, 25.052896>,  <33.372616, 29.408350, 25.293545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611874, 28.769779, 25.052896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216061, 28.784157, 24.996984>,  <32.978573, 28.792784, 24.963438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216061, 28.784157, 24.996984>,  <33.611874, 28.769779, 25.052896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216061, 28.784157, 24.996984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117140, -0.365756, -0.923310,
		-0.084313, -0.930017, 0.357716,
		-0.989530, 0.035944, -0.139780,
		32.919201, 28.794941, 24.955050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299782, 28.086094, 24.882812>,  <33.611874, 28.769779, 25.052896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299782, 28.086094, 24.882812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045624, 28.357655, 24.735647>,  <32.893127, 28.520592, 24.647348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045624, 28.357655, 24.735647>,  <33.299782, 28.086094, 24.882812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045624, 28.357655, 24.735647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039950, -0.446917, -0.893683,
		-0.771150, -0.582543, 0.256848,
		-0.635398, 0.678903, -0.367913,
		32.855003, 28.561325, 24.625273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761284, 27.700878, 24.563711>,  <33.299782, 28.086094, 24.882812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761284, 27.700878, 24.563711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771061, 28.067734, 24.404585>,  <32.776928, 28.287848, 24.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771061, 28.067734, 24.404585>,  <32.761284, 27.700878, 24.563711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771061, 28.067734, 24.404585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051620, -0.398564, -0.915687,
		-0.998368, 0.001851, -0.057086,
		0.024448, 0.917139, -0.397818,
		32.778397, 28.342875, 24.285240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630421, 27.583721, 23.877317>,  <32.761284, 27.700878, 24.563711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630421, 27.583721, 23.877317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732876, 27.969221, 23.847437>,  <32.794350, 28.200521, 23.829508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732876, 27.969221, 23.847437>,  <32.630421, 27.583721, 23.877317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732876, 27.969221, 23.847437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286095, -0.149401, -0.946483,
		-0.923332, 0.221059, -0.313991,
		0.256139, 0.963749, -0.074703,
		32.809719, 28.258347, 23.825026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326752, 27.749104, 23.265850>,  <32.630421, 27.583721, 23.877317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326752, 27.749104, 23.265850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599747, 28.028799, 23.350965>,  <32.763542, 28.196617, 23.402035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599747, 28.028799, 23.350965>,  <32.326752, 27.749104, 23.265850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599747, 28.028799, 23.350965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363677, -0.072344, -0.928712,
		-0.633999, 0.711217, -0.303671,
		0.682484, 0.699240, 0.212788,
		32.804493, 28.238571, 23.414803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288010, 28.294029, 22.795965>,  <32.326752, 27.749104, 23.265850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288010, 28.294029, 22.795965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664543, 28.280239, 22.930254>,  <32.890461, 28.271965, 23.010828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664543, 28.280239, 22.930254>,  <32.288010, 28.294029, 22.795965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664543, 28.280239, 22.930254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336960, 0.040414, -0.940651,
		0.018862, 0.998588, 0.049660,
		0.941330, -0.034476, 0.335722,
		32.946941, 28.269896, 23.030972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662243, 28.711977, 22.412527>,  <32.288010, 28.294029, 22.795965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662243, 28.711977, 22.412527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974133, 28.516014, 22.568487>,  <33.161266, 28.398436, 22.662064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974133, 28.516014, 22.568487>,  <32.662243, 28.711977, 22.412527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974133, 28.516014, 22.568487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466038, 0.038242, -0.883938,
		0.418139, 0.870934, 0.258135,
		0.779723, -0.489909, 0.389898,
		33.208050, 28.369041, 22.685457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269405, 29.051491, 22.281549>,  <32.662243, 28.711977, 22.412527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269405, 29.051491, 22.281549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418045, 28.688084, 22.357975>,  <33.507229, 28.470039, 22.403831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418045, 28.688084, 22.357975>,  <33.269405, 29.051491, 22.281549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418045, 28.688084, 22.357975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553598, 0.051632, -0.831182,
		0.745279, 0.414643, 0.522140,
		0.371603, -0.908518, 0.191065,
		33.529526, 28.415527, 22.415295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051056, 29.047615, 22.222385>,  <33.269405, 29.051491, 22.281549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051056, 29.047615, 22.222385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917927, 28.677538, 22.149452>,  <33.838047, 28.455492, 22.105692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917927, 28.677538, 22.149452>,  <34.051056, 29.047615, 22.222385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917927, 28.677538, 22.149452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444668, 0.016528, -0.895543,
		0.831564, -0.379138, 0.405902,
		-0.332826, -0.925193, -0.182335,
		33.818081, 28.399981, 22.094751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583939, 28.723520, 21.848841>,  <34.051056, 29.047615, 22.222385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583939, 28.723520, 21.848841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275078, 28.475065, 21.795225>,  <34.089760, 28.325993, 21.763056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275078, 28.475065, 21.795225>,  <34.583939, 28.723520, 21.848841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275078, 28.475065, 21.795225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256145, -0.111211, -0.960220,
		0.581525, -0.775769, 0.244973,
		-0.772152, -0.621140, -0.134037,
		34.043430, 28.288723, 21.755014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924442, 28.131565, 21.526312>,  <34.583939, 28.723520, 21.848841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924442, 28.131565, 21.526312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532207, 28.103418, 21.453093>,  <34.296867, 28.086531, 21.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532207, 28.103418, 21.453093>,  <34.924442, 28.131565, 21.526312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532207, 28.103418, 21.453093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189349, -0.096781, -0.977129,
		0.051041, -0.992815, 0.108226,
		-0.980582, -0.070366, -0.183048,
		34.238033, 28.082310, 21.398178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754322, 27.492830, 21.160994>,  <34.924442, 28.131565, 21.526312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754322, 27.492830, 21.160994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462440, 27.746136, 21.057837>,  <34.287312, 27.898119, 20.995941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462440, 27.746136, 21.057837>,  <34.754322, 27.492830, 21.160994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462440, 27.746136, 21.057837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152563, -0.216871, -0.964205,
		-0.666528, -0.742928, 0.061638,
		-0.729702, 0.633265, -0.257894,
		34.243530, 27.936115, 20.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403244, 27.100029, 20.584944>,  <34.754322, 27.492830, 21.160994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403244, 27.100029, 20.584944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300556, 27.486551, 20.577517>,  <34.238945, 27.718466, 20.573061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300556, 27.486551, 20.577517>,  <34.403244, 27.100029, 20.584944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300556, 27.486551, 20.577517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033391, -0.010333, -0.999389,
		-0.965909, -0.257181, -0.029613,
		-0.256717, 0.966308, -0.018569,
		34.223541, 27.776443, 20.571945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001713, 27.092157, 20.052795>,  <34.403244, 27.100029, 20.584944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001713, 27.092157, 20.052795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114277, 27.475428, 20.073629>,  <34.181816, 27.705389, 20.086130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114277, 27.475428, 20.073629>,  <34.001713, 27.092157, 20.052795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114277, 27.475428, 20.073629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024868, 0.061544, -0.997794,
		-0.959266, 0.279492, 0.041147,
		0.281408, 0.958174, 0.052087,
		34.198700, 27.762880, 20.089256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447758, 27.556379, 19.735077>,  <34.001713, 27.092157, 20.052795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447758, 27.556379, 19.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765533, 27.798908, 19.720995>,  <33.956200, 27.944426, 19.712545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765533, 27.798908, 19.720995>,  <33.447758, 27.556379, 19.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765533, 27.798908, 19.720995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054274, 0.013137, -0.998440,
		-0.604916, 0.795109, 0.043344,
		0.794438, 0.606324, -0.035207,
		34.003864, 27.980806, 19.710432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273441, 28.250937, 19.460863>,  <33.447758, 27.556379, 19.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273441, 28.250937, 19.460863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639622, 28.104206, 19.394663>,  <33.859329, 28.016169, 19.354942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639622, 28.104206, 19.394663>,  <33.273441, 28.250937, 19.460863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639622, 28.104206, 19.394663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239640, -0.166519, -0.956475,
		0.323301, 0.915265, -0.240346,
		0.915450, -0.366826, -0.165499,
		33.914257, 27.994158, 19.345013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387779, 28.897133, 19.164103>,  <33.273441, 28.250937, 19.460863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387779, 28.897133, 19.164103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504612, 29.199257, 18.929430>,  <33.574711, 29.380531, 18.788628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504612, 29.199257, 18.929430>,  <33.387779, 28.897133, 19.164103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504612, 29.199257, 18.929430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265626, -0.525229, -0.808441,
		-0.918766, 0.391967, 0.047221,
		0.292081, 0.755312, -0.586680,
		33.592236, 29.425850, 18.753426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852718, 28.992476, 18.640116>,  <33.387779, 28.897133, 19.164103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852718, 28.992476, 18.640116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168018, 29.184673, 18.486345>,  <33.357197, 29.299992, 18.394083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168018, 29.184673, 18.486345>,  <32.852718, 28.992476, 18.640116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168018, 29.184673, 18.486345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266433, -0.296635, -0.917072,
		-0.554684, 0.825307, -0.105803,
		0.788251, 0.480496, -0.384427,
		33.404495, 29.328821, 18.371017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653645, 29.413820, 18.048868>,  <32.852718, 28.992476, 18.640116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653645, 29.413820, 18.048868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035797, 29.312040, 17.988861>,  <33.265087, 29.250973, 17.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035797, 29.312040, 17.988861>,  <32.653645, 29.413820, 18.048868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035797, 29.312040, 17.988861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205499, -0.207753, -0.956352,
		0.212176, 0.944508, -0.250772,
		0.955380, -0.254448, -0.150015,
		33.322411, 29.235706, 17.943857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682476, 28.879358, 17.587278>,  <32.653645, 29.413820, 18.048868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682476, 28.879358, 17.587278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905125, 28.837114, 17.257669>,  <33.038715, 28.811768, 17.059904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905125, 28.837114, 17.257669>,  <32.682476, 28.879358, 17.587278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905125, 28.837114, 17.257669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791774, 0.367744, 0.487708,
		0.251521, -0.923910, 0.288317,
		0.556625, -0.105613, -0.824023,
		33.072113, 28.805431, 17.010462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305515, 28.436472, 17.770121>,  <32.682476, 28.879358, 17.587278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305515, 28.436472, 17.770121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282455, 28.732897, 17.502539>,  <33.268620, 28.910751, 17.341990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282455, 28.732897, 17.502539>,  <33.305515, 28.436472, 17.770121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282455, 28.732897, 17.502539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707621, 0.503004, 0.496246,
		0.704237, -0.444760, -0.553388,
		-0.057646, 0.741064, -0.668955,
		33.265163, 28.955215, 17.301851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934372, 28.722940, 17.480682>,  <33.305515, 28.436472, 17.770121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934372, 28.722940, 17.480682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660957, 29.014904, 17.481829>,  <33.496910, 29.190083, 17.482517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660957, 29.014904, 17.481829>,  <33.934372, 28.722940, 17.480682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660957, 29.014904, 17.481829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439030, 0.407993, 0.800496,
		0.583120, 0.548428, -0.599331,
		-0.683538, 0.729909, 0.002867,
		33.455894, 29.233877, 17.482689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355827, 29.223360, 17.711163>,  <33.934372, 28.722940, 17.480682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355827, 29.223360, 17.711163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990387, 29.382328, 17.745564>,  <33.771122, 29.477709, 17.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990387, 29.382328, 17.745564>,  <34.355827, 29.223360, 17.711163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990387, 29.382328, 17.745564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307785, 0.537669, 0.784972,
		0.265722, 0.743619, -0.613533,
		-0.913597, 0.397421, 0.086004,
		33.716309, 29.501554, 17.771364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389988, 29.947071, 17.807024>,  <34.355827, 29.223360, 17.711163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389988, 29.947071, 17.807024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060112, 29.785032, 17.964901>,  <33.862186, 29.687809, 18.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060112, 29.785032, 17.964901>,  <34.389988, 29.947071, 17.807024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060112, 29.785032, 17.964901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188390, 0.461249, 0.867040,
		-0.533287, 0.789396, -0.304071,
		-0.824690, -0.405097, 0.394693,
		33.812706, 29.663504, 18.083309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109249, 30.478018, 18.024912>,  <34.389988, 29.947071, 17.807024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109249, 30.478018, 18.024912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997971, 30.158726, 18.238617>,  <33.931202, 29.967152, 18.366840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997971, 30.158726, 18.238617>,  <34.109249, 30.478018, 18.024912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997971, 30.158726, 18.238617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151261, 0.585689, 0.796297,
		-0.948539, 0.140713, -0.283677,
		-0.278196, -0.798229, 0.534264,
		33.914513, 29.919258, 18.398897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410782, 30.555548, 18.205696>,  <34.109249, 30.478018, 18.024912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410782, 30.555548, 18.205696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563805, 30.300198, 18.472868>,  <33.655617, 30.146988, 18.633171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563805, 30.300198, 18.472868>,  <33.410782, 30.555548, 18.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563805, 30.300198, 18.472868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383357, 0.548086, 0.743397,
		-0.840649, -0.540445, -0.035053,
		0.382553, -0.638373, 0.667931,
		33.678570, 30.108686, 18.673248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918026, 30.550985, 18.746029>,  <33.410782, 30.555548, 18.205696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918026, 30.550985, 18.746029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257652, 30.405092, 18.898897>,  <33.461430, 30.317556, 18.990618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257652, 30.405092, 18.898897>,  <32.918026, 30.550985, 18.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257652, 30.405092, 18.898897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053007, 0.660950, 0.748556,
		-0.525616, -0.655833, 0.541859,
		0.849069, -0.364731, 0.382170,
		33.512371, 30.295673, 19.013548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751335, 30.532286, 19.421656>,  <32.918026, 30.550985, 18.746029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751335, 30.532286, 19.421656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150097, 30.501152, 19.426008>,  <33.389355, 30.482471, 19.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150097, 30.501152, 19.426008>,  <32.751335, 30.532286, 19.421656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150097, 30.501152, 19.426008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030743, 0.513617, 0.857469,
		-0.072327, -0.854482, 0.514421,
		0.996907, -0.077833, 0.010880,
		33.449169, 30.477802, 19.429272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830540, 30.359388, 20.070366>,  <32.751335, 30.532286, 19.421656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830540, 30.359388, 20.070366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170547, 30.512890, 19.926037>,  <33.374554, 30.604990, 19.839439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170547, 30.512890, 19.926037>,  <32.830540, 30.359388, 20.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170547, 30.512890, 19.926037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100318, 0.554526, 0.826097,
		0.517102, -0.738400, 0.432864,
		0.850024, 0.383753, -0.360822,
		33.425556, 30.628016, 19.817791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377373, 30.210075, 20.539703>,  <32.830540, 30.359388, 20.070366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377373, 30.210075, 20.539703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519306, 30.518959, 20.328882>,  <33.604465, 30.704288, 20.202389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519306, 30.518959, 20.328882>,  <33.377373, 30.210075, 20.539703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519306, 30.518959, 20.328882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158528, 0.505878, 0.847913,
		0.921390, -0.384424, 0.057088,
		0.354838, 0.772208, -0.527053,
		33.625759, 30.750622, 20.170767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746834, 30.608641, 21.103680>,  <33.377373, 30.210075, 20.539703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746834, 30.608641, 21.103680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763355, 30.846865, 20.782780>,  <33.773266, 30.989799, 20.590240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763355, 30.846865, 20.782780>,  <33.746834, 30.608641, 21.103680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763355, 30.846865, 20.782780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134027, 0.792376, 0.595128,
		0.990117, -0.132102, -0.047095,
		0.041301, 0.595558, -0.802250,
		33.775745, 31.025532, 20.542105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349213, 30.918392, 21.173655>,  <33.746834, 30.608641, 21.103680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349213, 30.918392, 21.173655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104218, 31.144188, 20.952311>,  <33.957218, 31.279665, 20.819504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104218, 31.144188, 20.952311>,  <34.349213, 30.918392, 21.173655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104218, 31.144188, 20.952311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175790, 0.779770, 0.600880,
		0.770684, 0.270758, -0.576833,
		-0.612490, 0.564490, -0.553360,
		33.920471, 31.313536, 20.786303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700520, 31.545128, 20.924101>,  <34.349213, 30.918392, 21.173655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700520, 31.545128, 20.924101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314377, 31.645464, 20.895355>,  <34.082691, 31.705666, 20.878107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314377, 31.645464, 20.895355>,  <34.700520, 31.545128, 20.924101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314377, 31.645464, 20.895355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157571, 0.779943, 0.605690,
		0.207982, 0.573383, -0.792449,
		-0.965357, 0.250840, -0.071866,
		34.024769, 31.720716, 20.873796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728813, 32.297298, 20.822287>,  <34.700520, 31.545128, 20.924101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728813, 32.297298, 20.822287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370338, 32.193626, 20.966331>,  <34.155254, 32.131424, 21.052757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370338, 32.193626, 20.966331>,  <34.728813, 32.297298, 20.822287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370338, 32.193626, 20.966331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064915, 0.726312, 0.684293,
		-0.438908, 0.636629, -0.634084,
		-0.896184, -0.259180, 0.360111,
		34.101482, 32.115871, 21.074366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501953, 32.793316, 21.097286>,  <34.728813, 32.297298, 20.822287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501953, 32.793316, 21.097286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 32.534748, 21.259808>,  <34.088642, 32.379608, 21.357321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243633, 32.534748, 21.259808>,  <34.501953, 32.793316, 21.097286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243633, 32.534748, 21.259808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041160, 0.501903, 0.863944,
		-0.762398, 0.574657, -0.297522,
		-0.645798, -0.646423, 0.406303,
		34.049892, 32.340820, 21.381699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987457, 33.214462, 21.502386>,  <34.501953, 32.793316, 21.097286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987457, 33.214462, 21.502386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994549, 32.841110, 21.645763>,  <33.998802, 32.617100, 21.731791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994549, 32.841110, 21.645763>,  <33.987457, 33.214462, 21.502386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994549, 32.841110, 21.645763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016640, 0.358174, 0.933506,
		-0.999704, -0.022516, -0.009181,
		0.017730, -0.933383, 0.358443,
		33.999866, 32.561096, 21.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276958, 33.061245, 21.891459>,  <33.987457, 33.214462, 21.502386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276958, 33.061245, 21.891459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550575, 32.802448, 22.026211>,  <33.714745, 32.647171, 22.107063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550575, 32.802448, 22.026211>,  <33.276958, 33.061245, 21.891459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550575, 32.802448, 22.026211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317549, 0.151651, 0.936037,
		-0.656697, -0.747263, -0.101716,
		0.684041, -0.646992, 0.336882,
		33.755787, 32.608349, 22.127275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952240, 32.682014, 22.477766>,  <33.276958, 33.061245, 21.891459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952240, 32.682014, 22.477766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335686, 32.575005, 22.516748>,  <33.565754, 32.510799, 22.540138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335686, 32.575005, 22.516748>,  <32.952240, 32.682014, 22.477766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335686, 32.575005, 22.516748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117881, -0.061349, 0.991131,
		-0.259171, -0.961597, -0.090346,
		0.958611, -0.267522, 0.097454,
		33.623268, 32.494747, 22.545984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877010, 32.057724, 22.714315>,  <32.952240, 32.682014, 22.477766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877010, 32.057724, 22.714315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234386, 32.216820, 22.797810>,  <33.448811, 32.312279, 22.847906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234386, 32.216820, 22.797810>,  <32.877010, 32.057724, 22.714315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234386, 32.216820, 22.797810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275757, 0.118844, 0.953852,
		0.354582, -0.909767, 0.215860,
		0.893437, 0.397743, 0.208735,
		33.502419, 32.336143, 22.860430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009426, 31.809507, 23.331329>,  <32.877010, 32.057724, 22.714315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009426, 31.809507, 23.331329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264790, 32.116871, 23.313499>,  <33.418007, 32.301289, 23.302801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264790, 32.116871, 23.313499>,  <33.009426, 31.809507, 23.331329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264790, 32.116871, 23.313499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139156, 0.172181, 0.975187,
		0.757017, -0.616362, 0.216850,
		0.638405, 0.768409, -0.044574,
		33.456310, 32.347393, 23.300127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662045, 31.706034, 23.808754>,  <33.009426, 31.809507, 23.331329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662045, 31.706034, 23.808754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612213, 32.099400, 23.756027>,  <33.582314, 32.335419, 23.724390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612213, 32.099400, 23.756027>,  <33.662045, 31.706034, 23.808754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612213, 32.099400, 23.756027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063910, 0.140530, 0.988012,
		0.990149, 0.114662, -0.080358,
		-0.124580, 0.983414, -0.131818,
		33.574841, 32.394424, 23.716482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084099, 32.041725, 24.408308>,  <33.662045, 31.706034, 23.808754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084099, 32.041725, 24.408308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860344, 32.341164, 24.265936>,  <33.726089, 32.520828, 24.180513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860344, 32.341164, 24.265936>,  <34.084099, 32.041725, 24.408308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860344, 32.341164, 24.265936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118738, 0.497335, 0.859395,
		0.820358, 0.438472, -0.367090,
		-0.559387, 0.748599, -0.355929,
		33.692528, 32.565742, 24.159157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415859, 32.637035, 24.690714>,  <34.084099, 32.041725, 24.408308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415859, 32.637035, 24.690714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038155, 32.736710, 24.604668>,  <33.811531, 32.796513, 24.553040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038155, 32.736710, 24.604668>,  <34.415859, 32.637035, 24.690714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038155, 32.736710, 24.604668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049704, 0.538048, 0.841448,
		0.325416, 0.805240, -0.495674,
		-0.944264, 0.249183, -0.215113,
		33.754875, 32.811466, 24.540134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373222, 33.351738, 24.679359>,  <34.415859, 32.637035, 24.690714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373222, 33.351738, 24.679359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017300, 33.191628, 24.767012>,  <33.803745, 33.095562, 24.819603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017300, 33.191628, 24.767012>,  <34.373222, 33.351738, 24.679359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017300, 33.191628, 24.767012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067191, 0.589890, 0.804683,
		-0.451359, 0.701291, -0.551785,
		-0.889810, -0.400275, 0.219132,
		33.750359, 33.071545, 24.832750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226871, 33.824978, 25.063066>,  <34.373222, 33.351738, 24.679359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226871, 33.824978, 25.063066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949337, 33.548725, 25.144667>,  <33.782818, 33.382973, 25.193626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949337, 33.548725, 25.144667>,  <34.226871, 33.824978, 25.063066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949337, 33.548725, 25.144667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116475, 0.387180, 0.914618,
		-0.710650, 0.610835, -0.349081,
		-0.693837, -0.690632, 0.204002,
		33.741184, 33.341534, 25.205868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632458, 34.138531, 25.347933>,  <34.226871, 33.824978, 25.063066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632458, 34.138531, 25.347933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568283, 33.771717, 25.493982>,  <33.529778, 33.551628, 25.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568283, 33.771717, 25.493982>,  <33.632458, 34.138531, 25.347933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568283, 33.771717, 25.493982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197377, 0.392248, 0.898434,
		-0.967111, 0.072072, -0.243930,
		-0.160433, -0.917032, 0.365122,
		33.520153, 33.496609, 25.603519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922703, 34.137974, 25.703377>,  <33.632458, 34.138531, 25.347933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922703, 34.137974, 25.703377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135479, 33.833469, 25.851709>,  <33.263145, 33.650768, 25.940708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135479, 33.833469, 25.851709>,  <32.922703, 34.137974, 25.703377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135479, 33.833469, 25.851709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255328, 0.273350, 0.927409,
		-0.807368, -0.588013, -0.048964,
		0.531944, -0.761263, 0.370830,
		33.295063, 33.605091, 25.962959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490753, 33.813957, 26.066208>,  <32.922703, 34.137974, 25.703377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490753, 33.813957, 26.066208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848690, 33.704357, 26.207163>,  <33.063454, 33.638599, 26.291735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848690, 33.704357, 26.207163>,  <32.490753, 33.813957, 26.066208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848690, 33.704357, 26.207163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270000, 0.296399, 0.916104,
		-0.355458, -0.914917, 0.191252,
		0.894846, -0.273999, 0.352385,
		33.117146, 33.622158, 26.312878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366974, 33.548645, 26.712263>,  <32.490753, 33.813957, 26.066208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366974, 33.548645, 26.712263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762680, 33.605106, 26.727343>,  <33.000103, 33.638985, 26.736389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762680, 33.605106, 26.727343>,  <32.366974, 33.548645, 26.712263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762680, 33.605106, 26.727343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073668, 0.259100, 0.963037,
		0.126169, -0.955480, 0.266719,
		0.989270, 0.141154, 0.037697,
		33.059460, 33.647453, 26.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419670, 33.479515, 27.445871>,  <32.366974, 33.548645, 26.712263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419670, 33.479515, 27.445871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760437, 33.638901, 27.309948>,  <32.964897, 33.734531, 27.228394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760437, 33.638901, 27.309948>,  <32.419670, 33.479515, 27.445871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760437, 33.638901, 27.309948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135331, 0.459335, 0.877893,
		0.505895, -0.793876, 0.337389,
		0.851913, 0.398463, -0.339811,
		33.016010, 33.758438, 27.208004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991100, 33.278965, 27.851658>,  <32.419670, 33.479515, 27.445871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991100, 33.278965, 27.851658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106369, 33.622334, 27.681917>,  <33.175529, 33.828354, 27.580072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106369, 33.622334, 27.681917>,  <32.991100, 33.278965, 27.851658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106369, 33.622334, 27.681917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319891, 0.331392, 0.887609,
		0.902566, -0.391533, -0.179101,
		0.288176, 0.858418, -0.424351,
		33.192822, 33.879860, 27.554611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582512, 33.417999, 28.204214>,  <32.991100, 33.278965, 27.851658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582512, 33.417999, 28.204214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467060, 33.757797, 28.027557>,  <33.397789, 33.961678, 27.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467060, 33.757797, 28.027557>,  <33.582512, 33.417999, 28.204214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467060, 33.757797, 28.027557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348306, 0.522833, 0.778029,
		0.891838, 0.070738, -0.446791,
		-0.288633, 0.849495, -0.441644,
		33.380470, 34.012646, 27.895063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119873, 33.854958, 28.406164>,  <33.582512, 33.417999, 28.204214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119873, 33.854958, 28.406164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839027, 34.113003, 28.285591>,  <33.670521, 34.267830, 28.213247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839027, 34.113003, 28.285591>,  <34.119873, 33.854958, 28.406164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839027, 34.113003, 28.285591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195332, 0.581576, 0.789693,
		0.684751, 0.495573, -0.534344,
		-0.702112, 0.645117, -0.301434,
		33.628395, 34.306538, 28.195162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385536, 34.516674, 28.499796>,  <34.119873, 33.854958, 28.406164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385536, 34.516674, 28.499796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988075, 34.561398, 28.504866>,  <33.749599, 34.588230, 28.507908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988075, 34.561398, 28.504866>,  <34.385536, 34.516674, 28.499796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988075, 34.561398, 28.504866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090789, 0.730055, 0.677330,
		0.066477, 0.674180, -0.735570,
		-0.993649, 0.111809, 0.012676,
		33.689980, 34.594940, 28.508669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245525, 35.233089, 28.396635>,  <34.385536, 34.516674, 28.499796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245525, 35.233089, 28.396635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918564, 35.097500, 28.582947>,  <33.722385, 35.016148, 28.694735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918564, 35.097500, 28.582947>,  <34.245525, 35.233089, 28.396635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918564, 35.097500, 28.582947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022130, 0.789478, 0.613381,
		-0.575640, 0.511687, -0.637820,
		-0.817404, -0.338972, 0.465779,
		33.673344, 34.995808, 28.722681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738731, 35.778648, 28.368431>,  <34.245525, 35.233089, 28.396635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738731, 35.778648, 28.368431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656342, 35.527531, 28.668684>,  <33.606907, 35.376862, 28.848835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656342, 35.527531, 28.668684>,  <33.738731, 35.778648, 28.368431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656342, 35.527531, 28.668684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041372, 0.760808, 0.647658,
		-0.977683, 0.164456, -0.130733,
		-0.205974, -0.627795, 0.750632,
		33.594551, 35.339191, 28.893873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168888, 36.040386, 28.714102>,  <33.738731, 35.778648, 28.368431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168888, 36.040386, 28.714102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328075, 35.798634, 28.990173>,  <33.423588, 35.653584, 29.155815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328075, 35.798634, 28.990173>,  <33.168888, 36.040386, 28.714102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328075, 35.798634, 28.990173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034197, 0.742025, 0.669500,
		-0.916760, -0.290044, 0.274637,
		0.397972, -0.604378, 0.690177,
		33.447468, 35.617321, 29.197227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942188, 36.288494, 29.311089>,  <33.168888, 36.040386, 28.714102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942188, 36.288494, 29.311089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230125, 36.048489, 29.450695>,  <33.402885, 35.904484, 29.534458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230125, 36.048489, 29.450695>,  <32.942188, 36.288494, 29.311089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230125, 36.048489, 29.450695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289022, 0.716225, 0.635207,
		-0.631108, -0.356374, 0.688985,
		0.719840, -0.600016, 0.349015,
		33.446075, 35.868484, 29.555399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842178, 36.356159, 30.023819>,  <32.942188, 36.288494, 29.311089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842178, 36.356159, 30.023819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212952, 36.226433, 29.948324>,  <33.435413, 36.148598, 29.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212952, 36.226433, 29.948324>,  <32.842178, 36.356159, 30.023819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212952, 36.226433, 29.948324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327516, 0.453785, 0.828742,
		-0.183126, -0.830000, 0.526845,
		0.926929, -0.324314, -0.188738,
		33.491032, 36.129139, 29.891703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062202, 35.983196, 30.655491>,  <32.842178, 36.356159, 30.023819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062202, 35.983196, 30.655491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386166, 36.082966, 30.443140>,  <33.580544, 36.142830, 30.315729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386166, 36.082966, 30.443140>,  <33.062202, 35.983196, 30.655491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386166, 36.082966, 30.443140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485724, 0.222163, 0.845408,
		0.328807, -0.942566, 0.058781,
		0.809912, 0.249425, -0.530876,
		33.629139, 36.157795, 30.283876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543747, 35.636585, 31.067883>,  <33.062202, 35.983196, 30.655491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543747, 35.636585, 31.067883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 35.912987, 30.835405>,  <33.818813, 36.078827, 30.695919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715664, 35.912987, 30.835405>,  <33.543747, 35.636585, 31.067883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715664, 35.912987, 30.835405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657298, 0.201875, 0.726089,
		0.619062, -0.694086, -0.367433,
		0.429793, 0.691007, -0.581194,
		33.844601, 36.120289, 30.661047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339588, 35.572491, 31.194485>,  <33.543747, 35.636585, 31.067883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339588, 35.572491, 31.194485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315132, 35.934132, 31.025316>,  <34.300461, 36.151115, 30.923815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315132, 35.934132, 31.025316>,  <34.339588, 35.572491, 31.194485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315132, 35.934132, 31.025316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568011, 0.379928, 0.730081,
		0.820747, -0.195588, -0.536768,
		-0.061138, 0.904102, -0.422921,
		34.296791, 36.205360, 30.898439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049980, 35.805191, 31.198118>,  <34.339588, 35.572491, 31.194485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049980, 35.805191, 31.198118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788891, 36.107521, 31.177427>,  <34.632236, 36.288918, 31.165012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788891, 36.107521, 31.177427>,  <35.049980, 35.805191, 31.198118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788891, 36.107521, 31.177427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471799, 0.458963, 0.752834,
		0.592752, 0.466990, -0.656175,
		-0.652726, 0.755826, -0.051726,
		34.593075, 36.334270, 31.161909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431164, 36.362534, 31.356857>,  <35.049980, 35.805191, 31.198118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431164, 36.362534, 31.356857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053875, 36.472073, 31.432045>,  <34.827499, 36.537796, 31.477158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053875, 36.472073, 31.432045>,  <35.431164, 36.362534, 31.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053875, 36.472073, 31.432045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294921, 0.430164, 0.853218,
		0.152791, 0.860214, -0.486504,
		-0.943227, 0.273844, 0.187970,
		34.770908, 36.554226, 31.488436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384777, 37.146835, 31.468151>,  <35.431164, 36.362534, 31.356857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384777, 37.146835, 31.468151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153255, 36.866146, 31.634317>,  <35.014343, 36.697731, 31.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153255, 36.866146, 31.634317>,  <35.384777, 37.146835, 31.468151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153255, 36.866146, 31.634317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394071, 0.205298, 0.895858,
		-0.713929, 0.682228, 0.157702,
		-0.578803, -0.701725, 0.415415,
		34.979614, 36.655628, 31.758942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986027, 36.842922, 31.801968>,  <35.384777, 37.146835, 31.468151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986027, 36.842922, 31.801968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234798, 36.568592, 31.650787>,  <36.384064, 36.403996, 31.560080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234798, 36.568592, 31.650787>,  <35.986027, 36.842922, 31.801968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234798, 36.568592, 31.650787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253857, 0.280007, -0.925825,
		0.740781, 0.671746, 0.000045,
		0.621932, -0.685823, -0.377952,
		36.421379, 36.362846, 31.537401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223953, 37.211422, 31.315491>,  <35.986027, 36.842922, 31.801968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223953, 37.211422, 31.315491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304817, 36.838493, 31.195555>,  <36.353336, 36.614735, 31.123592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304817, 36.838493, 31.195555>,  <36.223953, 37.211422, 31.315491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304817, 36.838493, 31.195555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003879, 0.305399, -0.952217,
		0.979345, 0.193664, 0.058124,
		0.202161, -0.932323, -0.299842,
		36.365467, 36.558796, 31.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830708, 37.339012, 30.908747>,  <36.223953, 37.211422, 31.315491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830708, 37.339012, 30.908747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675419, 36.980103, 30.824671>,  <36.582245, 36.764755, 30.774225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675419, 36.980103, 30.824671>,  <36.830708, 37.339012, 30.908747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675419, 36.980103, 30.824671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211515, 0.135238, -0.967973,
		0.896966, -0.420243, 0.137285,
		-0.388218, -0.897277, -0.210192,
		36.558952, 36.710918, 30.761614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257320, 37.062443, 30.345917>,  <36.830708, 37.339012, 30.908747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257320, 37.062443, 30.345917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951561, 36.804626, 30.339397>,  <36.768105, 36.649937, 30.335485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951561, 36.804626, 30.339397>,  <37.257320, 37.062443, 30.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951561, 36.804626, 30.339397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077652, -0.066935, -0.994731,
		0.640055, -0.761634, 0.101215,
		-0.764395, -0.644542, -0.016300,
		36.722240, 36.611263, 30.334507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423237, 36.567455, 29.912775>,  <37.257320, 37.062443, 30.345917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423237, 36.567455, 29.912775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023582, 36.555508, 29.924299>,  <36.783791, 36.548340, 29.931213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023582, 36.555508, 29.924299>,  <37.423237, 36.567455, 29.912775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023582, 36.555508, 29.924299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020919, -0.237117, -0.971256,
		0.035839, -0.971022, 0.236288,
		-0.999139, -0.029866, 0.028811,
		36.723843, 36.546547, 29.932943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209175, 35.967575, 29.440121>,  <37.423237, 36.567455, 29.912775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209175, 35.967575, 29.440121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887669, 36.199978, 29.491329>,  <36.694767, 36.339420, 29.522055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887669, 36.199978, 29.491329>,  <37.209175, 35.967575, 29.440121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887669, 36.199978, 29.491329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321623, -0.243298, -0.915076,
		-0.500523, -0.776680, 0.382421,
		-0.803763, 0.581012, 0.128022,
		36.646538, 36.374283, 29.529736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676483, 35.641239, 29.130398>,  <37.209175, 35.967575, 29.440121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676483, 35.641239, 29.130398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579948, 36.029335, 29.138231>,  <36.522026, 36.262192, 29.142931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579948, 36.029335, 29.138231>,  <36.676483, 35.641239, 29.130398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579948, 36.029335, 29.138231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277242, -0.049591, -0.959519,
		-0.929996, -0.236997, 0.280960,
		-0.241336, 0.970244, 0.019586,
		36.507549, 36.320408, 29.144108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904598, 35.599522, 28.869371>,  <36.676483, 35.641239, 29.130398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904598, 35.599522, 28.869371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069416, 35.960506, 28.819111>,  <36.168308, 36.177097, 28.788954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069416, 35.960506, 28.819111>,  <35.904598, 35.599522, 28.869371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069416, 35.960506, 28.819111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245706, -0.022743, -0.969078,
		-0.877409, 0.430178, 0.212368,
		0.412046, 0.902458, -0.125652,
		36.193031, 36.231243, 28.781416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536041, 35.810253, 28.306791>,  <35.904598, 35.599522, 28.869371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536041, 35.810253, 28.306791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856110, 36.049568, 28.323654>,  <36.048149, 36.193157, 28.333773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856110, 36.049568, 28.323654>,  <35.536041, 35.810253, 28.306791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856110, 36.049568, 28.323654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077602, -0.033573, -0.996419,
		-0.594733, 0.800575, -0.073292,
		0.800169, 0.598291, 0.042159,
		36.096161, 36.229057, 28.336302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428181, 36.189667, 27.807888>,  <35.536041, 35.810253, 28.306791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428181, 36.189667, 27.807888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820766, 36.207439, 27.882458>,  <36.056316, 36.218105, 27.927200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820766, 36.207439, 27.882458>,  <35.428181, 36.189667, 27.807888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820766, 36.207439, 27.882458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191257, -0.289273, -0.937946,
		0.012252, 0.956215, -0.292409,
		0.981464, 0.044434, 0.186427,
		36.115204, 36.220768, 27.938385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543564, 36.688236, 27.339293>,  <35.428181, 36.189667, 27.807888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543564, 36.688236, 27.339293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887783, 36.502716, 27.423521>,  <36.094315, 36.391403, 27.474058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887783, 36.502716, 27.423521>,  <35.543564, 36.688236, 27.339293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887783, 36.502716, 27.423521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069959, -0.301860, -0.950782,
		0.504536, 0.832928, -0.227319,
		0.860552, -0.463801, 0.210570,
		36.145950, 36.363575, 27.486692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880627, 36.762806, 26.745745>,  <35.543564, 36.688236, 27.339293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880627, 36.762806, 26.745745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093960, 36.483025, 26.936043>,  <36.221958, 36.315155, 27.050220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093960, 36.483025, 26.936043>,  <35.880627, 36.762806, 26.745745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093960, 36.483025, 26.936043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136702, -0.483747, -0.864466,
		0.834789, 0.526080, -0.162380,
		0.533329, -0.699449, 0.475743,
		36.253960, 36.273190, 27.078766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504719, 36.718945, 26.345808>,  <35.880627, 36.762806, 26.745745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504719, 36.718945, 26.345808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439102, 36.381638, 26.550550>,  <36.399734, 36.179253, 26.673395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439102, 36.381638, 26.550550>,  <36.504719, 36.718945, 26.345808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439102, 36.381638, 26.550550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087839, -0.529310, -0.843869,
		0.982535, -0.093467, 0.160900,
		-0.164040, -0.843264, 0.511855,
		36.389889, 36.128658, 26.704107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116020, 36.252617, 26.203297>,  <36.504719, 36.718945, 26.345808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116020, 36.252617, 26.203297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795872, 36.037441, 26.309143>,  <36.603783, 35.908337, 26.372652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795872, 36.037441, 26.309143>,  <37.116020, 36.252617, 26.203297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795872, 36.037441, 26.309143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216693, -0.671145, -0.708949,
		0.558969, -0.510084, 0.653734,
		-0.800374, -0.537940, 0.264618,
		36.555759, 35.876060, 26.388529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342495, 35.540409, 26.077049>,  <37.116020, 36.252617, 26.203297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342495, 35.540409, 26.077049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945225, 35.498791, 26.098154>,  <36.706863, 35.473820, 26.110817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945225, 35.498791, 26.098154>,  <37.342495, 35.540409, 26.077049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945225, 35.498791, 26.098154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050887, -0.793378, -0.606598,
		0.104972, -0.599772, 0.793256,
		-0.993172, -0.104042, 0.052762,
		36.647274, 35.467579, 26.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205872, 34.814671, 26.119057>,  <37.342495, 35.540409, 26.077049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205872, 34.814671, 26.119057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862137, 34.983406, 26.003412>,  <36.655895, 35.084648, 25.934025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862137, 34.983406, 26.003412>,  <37.205872, 34.814671, 26.119057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862137, 34.983406, 26.003412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164838, -0.763635, -0.624252,
		-0.484108, -0.488789, 0.725758,
		-0.859342, 0.421837, -0.289111,
		36.604336, 35.109959, 25.916679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758270, 34.222385, 26.054277>,  <37.205872, 34.814671, 26.119057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758270, 34.222385, 26.054277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573505, 34.513515, 25.851534>,  <36.462646, 34.688194, 25.729887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573505, 34.513515, 25.851534>,  <36.758270, 34.222385, 26.054277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573505, 34.513515, 25.851534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170093, -0.633566, -0.754760,
		-0.870465, -0.262416, 0.416448,
		-0.461909, 0.727827, -0.506861,
		36.434933, 34.731865, 25.699476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178741, 33.912994, 25.679098>,  <36.758270, 34.222385, 26.054277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178741, 33.912994, 25.679098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245201, 34.263428, 25.498049>,  <36.285076, 34.473690, 25.389420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245201, 34.263428, 25.498049>,  <36.178741, 33.912994, 25.679098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245201, 34.263428, 25.498049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074172, -0.446598, -0.891655,
		-0.983307, 0.181722, -0.009222,
		0.166152, 0.876086, -0.452621,
		36.295048, 34.526253, 25.362263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691200, 33.899715, 25.117983>,  <36.178741, 33.912994, 25.679098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691200, 33.899715, 25.117983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953075, 34.176666, 24.996658>,  <36.110203, 34.342834, 24.923864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953075, 34.176666, 24.996658>,  <35.691200, 33.899715, 25.117983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953075, 34.176666, 24.996658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040993, -0.368150, -0.928862,
		-0.754784, 0.620552, -0.212642,
		0.654691, 0.692374, -0.303312,
		36.149483, 34.384377, 24.905664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379158, 34.253510, 24.607073>,  <35.691200, 33.899715, 25.117983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379158, 34.253510, 24.607073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774944, 34.283081, 24.557291>,  <36.012417, 34.300823, 24.527422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774944, 34.283081, 24.557291>,  <35.379158, 34.253510, 24.607073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774944, 34.283081, 24.557291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083343, -0.412019, -0.907356,
		-0.118362, 0.908171, -0.401517,
		0.989467, 0.073933, -0.124457,
		36.071785, 34.305260, 24.519955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662098, 34.447701, 23.881216>,  <35.379158, 34.253510, 24.607073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662098, 34.447701, 23.881216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952541, 34.216019, 24.029427>,  <36.126808, 34.077007, 24.118353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952541, 34.216019, 24.029427>,  <35.662098, 34.447701, 23.881216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952541, 34.216019, 24.029427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006777, -0.532825, -0.846198,
		0.687551, 0.616940, -0.382961,
		0.726105, -0.579209, 0.370525,
		36.170372, 34.042255, 24.140585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006653, 34.212959, 23.294548>,  <35.662098, 34.447701, 23.881216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006653, 34.212959, 23.294548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146152, 33.972179, 23.581888>,  <36.229851, 33.827709, 23.754292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146152, 33.972179, 23.581888>,  <36.006653, 34.212959, 23.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146152, 33.972179, 23.581888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012867, -0.763324, -0.645888,
		0.937128, 0.234495, -0.258462,
		0.348748, -0.601954, 0.718350,
		36.250778, 33.791592, 23.797394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659435, 33.916565, 23.065935>,  <36.006653, 34.212959, 23.294548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659435, 33.916565, 23.065935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497314, 33.683357, 23.347593>,  <36.400043, 33.543434, 23.516588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497314, 33.683357, 23.347593>,  <36.659435, 33.916565, 23.065935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497314, 33.683357, 23.347593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203869, -0.693204, -0.691307,
		0.891160, -0.423742, 0.162098,
		-0.405303, -0.583019, 0.704144,
		36.375725, 33.508453, 23.558836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080978, 33.345062, 23.040112>,  <36.659435, 33.916565, 23.065935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080978, 33.345062, 23.040112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757008, 33.214775, 23.235224>,  <36.562626, 33.136600, 23.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757008, 33.214775, 23.235224>,  <37.080978, 33.345062, 23.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757008, 33.214775, 23.235224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053981, -0.869494, -0.490985,
		0.584048, -0.371328, 0.721806,
		-0.809923, -0.325722, 0.487781,
		36.514030, 33.117058, 23.381557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252865, 32.525631, 23.120924>,  <37.080978, 33.345062, 23.040112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252865, 32.525631, 23.120924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859360, 32.593197, 23.145166>,  <36.623257, 32.633736, 23.159712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859360, 32.593197, 23.145166>,  <37.252865, 32.525631, 23.120924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859360, 32.593197, 23.145166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178603, -0.888492, -0.422709,
		-0.017554, -0.426671, 0.904236,
		-0.983764, 0.168919, 0.060608,
		36.564232, 32.643871, 23.163349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024597, 31.889051, 23.335535>,  <37.252865, 32.525631, 23.120924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024597, 31.889051, 23.335535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717251, 32.095875, 23.184666>,  <36.532841, 32.219967, 23.094145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717251, 32.095875, 23.184666>,  <37.024597, 31.889051, 23.335535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717251, 32.095875, 23.184666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351951, -0.833586, -0.425753,
		-0.534545, -0.194390, 0.822481,
		-0.768370, 0.517057, -0.377173,
		36.486740, 32.250992, 23.071514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325741, 31.439098, 23.469152>,  <37.024597, 31.889051, 23.335535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325741, 31.439098, 23.469152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287891, 31.704252, 23.172064>,  <36.265182, 31.863344, 22.993811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287891, 31.704252, 23.172064>,  <36.325741, 31.439098, 23.469152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287891, 31.704252, 23.172064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317816, -0.727141, -0.608489,
		-0.943419, 0.178471, 0.279479,
		-0.094623, 0.662883, -0.742719,
		36.259506, 31.903118, 22.949247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725147, 31.303041, 23.213093>,  <36.325741, 31.439098, 23.469152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725147, 31.303041, 23.213093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921783, 31.493923, 22.921721>,  <36.039764, 31.608452, 22.746897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921783, 31.493923, 22.921721>,  <35.725147, 31.303041, 23.213093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921783, 31.493923, 22.921721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227492, -0.737064, -0.636383,
		-0.840585, 0.478555, -0.253777,
		0.491594, 0.477202, -0.728432,
		36.069263, 31.637083, 22.703192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342148, 30.977230, 22.615904>,  <35.725147, 31.303041, 23.213093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342148, 30.977230, 22.615904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662228, 31.123201, 22.425533>,  <35.854275, 31.210785, 22.311310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662228, 31.123201, 22.425533>,  <35.342148, 30.977230, 22.615904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662228, 31.123201, 22.425533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132230, -0.666683, -0.733518,
		-0.584974, 0.649894, -0.485225,
		0.800200, 0.364928, -0.475928,
		35.902287, 31.232679, 22.282755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155746, 31.020248, 21.858025>,  <35.342148, 30.977230, 22.615904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155746, 31.020248, 21.858025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554798, 31.007589, 21.882458>,  <35.794228, 30.999994, 21.897118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554798, 31.007589, 21.882458>,  <35.155746, 31.020248, 21.858025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554798, 31.007589, 21.882458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023952, -0.672581, -0.739636,
		0.064492, 0.739346, -0.670229,
		0.997631, -0.031648, 0.061085,
		35.854088, 30.998095, 21.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404057, 31.102875, 21.110727>,  <35.155746, 31.020248, 21.858025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404057, 31.102875, 21.110727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695297, 30.946274, 21.335794>,  <35.870041, 30.852314, 21.470835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695297, 30.946274, 21.335794>,  <35.404057, 31.102875, 21.110727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695297, 30.946274, 21.335794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268211, -0.592692, -0.759459,
		0.630818, 0.703877, -0.326536,
		0.728101, -0.391500, 0.562669,
		35.913727, 30.828823, 21.504595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051167, 31.013641, 20.660574>,  <35.404057, 31.102875, 21.110727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051167, 31.013641, 20.660574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104435, 30.768511, 20.972139>,  <36.136398, 30.621433, 21.159079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104435, 30.768511, 20.972139>,  <36.051167, 31.013641, 20.660574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104435, 30.768511, 20.972139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337006, -0.711085, -0.617078,
		0.932036, 0.344678, 0.111828,
		0.133174, -0.612826, 0.778916,
		36.144386, 30.584663, 21.205814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644829, 30.757408, 20.524488>,  <36.051167, 31.013641, 20.660574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644829, 30.757408, 20.524488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511051, 30.494610, 20.794748>,  <36.430786, 30.336931, 20.956903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511051, 30.494610, 20.794748>,  <36.644829, 30.757408, 20.524488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511051, 30.494610, 20.794748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491157, -0.733382, -0.470017,
		0.804309, 0.174656, 0.567964,
		-0.334443, -0.656998, 0.675649,
		36.410717, 30.297510, 20.997442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219082, 30.313223, 20.534239>,  <36.644829, 30.757408, 20.524488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219082, 30.313223, 20.534239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920403, 30.108133, 20.703735>,  <36.741196, 29.985081, 20.805433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920403, 30.108133, 20.703735>,  <37.219082, 30.313223, 20.534239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920403, 30.108133, 20.703735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179769, -0.768899, -0.613578,
		0.640410, -0.381982, 0.666307,
		-0.746698, -0.512723, 0.423742,
		36.696392, 29.954317, 20.830858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411556, 29.540678, 20.512396>,  <37.219082, 30.313223, 20.534239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411556, 29.540678, 20.512396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018307, 29.524384, 20.583738>,  <36.782356, 29.514606, 20.626543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018307, 29.524384, 20.583738>,  <37.411556, 29.540678, 20.512396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018307, 29.524384, 20.583738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104589, -0.674717, -0.730629,
		0.150104, -0.736952, 0.659069,
		-0.983123, -0.040739, 0.178354,
		36.723370, 29.512161, 20.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278427, 28.854851, 20.691416>,  <37.411556, 29.540678, 20.512396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278427, 28.854851, 20.691416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940632, 29.007214, 20.540821>,  <36.737953, 29.098631, 20.450464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940632, 29.007214, 20.540821>,  <37.278427, 28.854851, 20.691416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940632, 29.007214, 20.540821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089417, -0.592824, -0.800352,
		-0.528052, -0.709556, 0.466575,
		-0.844492, 0.380907, -0.376488,
		36.687286, 29.121487, 20.427874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866528, 28.279940, 20.344942>,  <37.278427, 28.854851, 20.691416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866528, 28.279940, 20.344942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717484, 28.613813, 20.182726>,  <36.628059, 28.814138, 20.085396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717484, 28.613813, 20.182726>,  <36.866528, 28.279940, 20.344942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717484, 28.613813, 20.182726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048861, -0.454051, -0.889635,
		-0.926702, -0.311669, 0.209967,
		-0.372607, 0.834686, -0.405541,
		36.605701, 28.864220, 20.061064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577374, 27.901630, 20.220728>,  <36.866528, 28.279940, 20.344942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577374, 27.901630, 20.220728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923428, 27.709688, 20.279081>,  <38.131062, 27.594522, 20.314093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923428, 27.709688, 20.279081>,  <37.577374, 27.901630, 20.220728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923428, 27.709688, 20.279081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003623, 0.296845, 0.954919,
		-0.501526, -0.825605, 0.258550,
		0.865135, -0.479854, 0.145884,
		38.182968, 27.565733, 20.322847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400017, 27.629559, 20.843815>,  <37.577374, 27.901630, 20.220728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400017, 27.629559, 20.843815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798035, 27.656130, 20.814213>,  <38.036846, 27.672071, 20.796452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798035, 27.656130, 20.814213>,  <37.400017, 27.629559, 20.843815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798035, 27.656130, 20.814213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064038, 0.141348, 0.987887,
		0.076080, -0.987729, 0.136393,
		0.995043, 0.066424, -0.074006,
		38.096546, 27.676058, 20.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579845, 27.432734, 21.518152>,  <37.400017, 27.629559, 20.843815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579845, 27.432734, 21.518152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852638, 27.664984, 21.340267>,  <38.016315, 27.804335, 21.233536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852638, 27.664984, 21.340267>,  <37.579845, 27.432734, 21.518152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852638, 27.664984, 21.340267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185770, 0.450591, 0.873188,
		0.707378, -0.678117, 0.199434,
		0.681986, 0.580626, -0.444712,
		38.057236, 27.839172, 21.206854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074009, 27.409464, 22.015203>,  <37.579845, 27.432734, 21.518152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074009, 27.409464, 22.015203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170895, 27.721613, 21.784605>,  <38.229027, 27.908903, 21.646246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170895, 27.721613, 21.784605>,  <38.074009, 27.409464, 22.015203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170895, 27.721613, 21.784605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174946, 0.549320, 0.817094,
		0.954319, -0.298770, -0.003468,
		0.242218, 0.780375, -0.576494,
		38.243561, 27.955725, 21.611656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534752, 27.721426, 22.379692>,  <38.074009, 27.409464, 22.015203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534752, 27.721426, 22.379692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413040, 28.006536, 22.126911>,  <38.340015, 28.177603, 21.975243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413040, 28.006536, 22.126911>,  <38.534752, 27.721426, 22.379692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413040, 28.006536, 22.126911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090391, 0.682021, 0.725726,
		0.948286, 0.163697, -0.271951,
		-0.304275, 0.712777, -0.631953,
		38.321758, 28.220369, 21.937325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968132, 28.223612, 22.481594>,  <38.534752, 27.721426, 22.379692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968132, 28.223612, 22.481594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646637, 28.405060, 22.327587>,  <38.453739, 28.513929, 22.235184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646637, 28.405060, 22.327587>,  <38.968132, 28.223612, 22.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646637, 28.405060, 22.327587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036119, 0.683106, 0.729425,
		0.593890, 0.572358, -0.565421,
		-0.803735, 0.453621, -0.385017,
		38.405518, 28.541145, 22.212082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118172, 28.936932, 22.403402>,  <38.968132, 28.223612, 22.481594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118172, 28.936932, 22.403402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720222, 28.897205, 22.411112>,  <38.481453, 28.873369, 22.415737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720222, 28.897205, 22.411112>,  <39.118172, 28.936932, 22.403402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720222, 28.897205, 22.411112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067231, 0.791383, 0.607612,
		-0.075600, 0.603198, -0.794000,
		-0.994869, -0.099317, 0.019275,
		38.421761, 28.867411, 22.416895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915939, 29.709440, 22.371531>,  <39.118172, 28.936932, 22.403402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915939, 29.709440, 22.371531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566204, 29.532429, 22.451225>,  <38.356361, 29.426222, 22.499043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566204, 29.532429, 22.451225>,  <38.915939, 29.709440, 22.371531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566204, 29.532429, 22.451225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310368, 0.825475, 0.471448,
		-0.373092, 0.350370, -0.859094,
		-0.874342, -0.442529, 0.199235,
		38.303902, 29.399670, 22.510996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408268, 30.208450, 22.222542>,  <38.915939, 29.709440, 22.371531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408268, 30.208450, 22.222542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252491, 29.950951, 22.486032>,  <38.159023, 29.796452, 22.644127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252491, 29.950951, 22.486032>,  <38.408268, 30.208450, 22.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252491, 29.950951, 22.486032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185943, 0.755415, 0.628310,
		-0.902085, 0.122207, -0.413893,
		-0.389445, -0.643750, 0.658725,
		38.135658, 29.757826, 22.683651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862339, 30.576836, 22.504032>,  <38.408268, 30.208450, 22.222542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862339, 30.576836, 22.504032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993507, 30.302448, 22.763853>,  <38.072208, 30.137815, 22.919744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993507, 30.302448, 22.763853>,  <37.862339, 30.576836, 22.504032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993507, 30.302448, 22.763853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015126, 0.683670, 0.729635,
		-0.944583, -0.249090, 0.213816,
		0.327924, -0.685966, 0.649551,
		38.091885, 30.096659, 22.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347561, 30.612898, 23.094862>,  <37.862339, 30.576836, 22.504032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347561, 30.612898, 23.094862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652100, 30.416166, 23.263840>,  <37.834824, 30.298126, 23.365227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652100, 30.416166, 23.263840>,  <37.347561, 30.612898, 23.094862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652100, 30.416166, 23.263840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012725, 0.640107, 0.768180,
		-0.648223, -0.590225, 0.481083,
		0.761344, -0.491831, 0.422443,
		37.880505, 30.268618, 23.390572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201073, 30.471994, 23.854944>,  <37.347561, 30.612898, 23.094862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201073, 30.471994, 23.854944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599094, 30.433676, 23.844412>,  <37.837906, 30.410685, 23.838093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599094, 30.433676, 23.844412>,  <37.201073, 30.471994, 23.854944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599094, 30.433676, 23.844412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080609, 0.623558, 0.777610,
		-0.058076, -0.775885, 0.628195,
		0.995052, -0.095799, -0.026330,
		37.897610, 30.404936, 23.836514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409492, 30.329906, 24.529648>,  <37.201073, 30.471994, 23.854944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409492, 30.329906, 24.529648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739872, 30.487972, 24.368826>,  <37.938099, 30.582811, 24.272333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739872, 30.487972, 24.368826>,  <37.409492, 30.329906, 24.529648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739872, 30.487972, 24.368826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140901, 0.545849, 0.825951,
		0.545849, -0.738845, 0.395166,
		-0.825951, -0.395166, 0.402056,
		37.987656, 30.606522, 24.248209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919754, 30.411873, 25.064537>,  <37.409492, 30.329906, 24.529648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919754, 30.411873, 25.064537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027821, 30.669199, 24.777998>,  <38.092663, 30.823595, 24.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027821, 30.669199, 24.777998>,  <37.919754, 30.411873, 25.064537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027821, 30.669199, 24.777998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017932, 0.740523, 0.671792,
		0.962646, -0.194343, 0.188531,
		0.270169, 0.643317, -0.716346,
		38.108871, 30.862194, 24.563095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440723, 30.811914, 25.340918>,  <37.919754, 30.411873, 25.064537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440723, 30.811914, 25.340918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326267, 31.046312, 25.037674>,  <38.257591, 31.186951, 24.855728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326267, 31.046312, 25.037674>,  <38.440723, 30.811914, 25.340918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326267, 31.046312, 25.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042651, 0.782620, 0.621037,
		0.957237, 0.210040, -0.198949,
		-0.286144, 0.585994, -0.758111,
		38.240425, 31.222111, 24.810240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001965, 31.413572, 25.305956>,  <38.440723, 30.811914, 25.340918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001965, 31.413572, 25.305956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666069, 31.540154, 25.129456>,  <38.464531, 31.616102, 25.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666069, 31.540154, 25.129456>,  <39.001965, 31.413572, 25.305956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666069, 31.540154, 25.129456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126721, 0.904394, 0.407447,
		0.528002, 0.286232, -0.799554,
		-0.839736, 0.316453, -0.441250,
		38.414146, 31.635090, 24.997080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103752, 32.060280, 24.984585>,  <39.001965, 31.413572, 25.305956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103752, 32.060280, 24.984585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706482, 32.053116, 25.030695>,  <38.468121, 32.048817, 25.058361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706482, 32.053116, 25.030695>,  <39.103752, 32.060280, 24.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706482, 32.053116, 25.030695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034189, 0.900056, 0.434431,
		-0.111539, 0.435406, -0.893298,
		-0.993172, -0.017915, 0.115277,
		38.408531, 32.047741, 25.065279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961094, 32.673328, 24.791979>,  <39.103752, 32.060280, 24.984585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961094, 32.673328, 24.791979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650185, 32.540913, 25.005993>,  <38.463638, 32.461464, 25.134401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650185, 32.540913, 25.005993>,  <38.961094, 32.673328, 24.791979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650185, 32.540913, 25.005993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030003, 0.829919, 0.557076,
		-0.628447, 0.449053, -0.635142,
		-0.777273, -0.331037, 0.535033,
		38.417004, 32.441601, 25.166502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676254, 33.283539, 24.960629>,  <38.961094, 32.673328, 24.791979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676254, 33.283539, 24.960629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496700, 33.030499, 25.213078>,  <38.388969, 32.878674, 25.364548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496700, 33.030499, 25.213078>,  <38.676254, 33.283539, 24.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496700, 33.030499, 25.213078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036216, 0.692817, 0.720203,
		-0.892857, 0.346143, -0.288083,
		-0.448882, -0.632605, 0.631123,
		38.362034, 32.840717, 25.402414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264809, 33.722691, 25.309698>,  <38.676254, 33.283539, 24.960629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264809, 33.722691, 25.309698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279076, 33.412457, 25.561794>,  <38.287636, 33.226318, 25.713051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279076, 33.412457, 25.561794>,  <38.264809, 33.722691, 25.309698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279076, 33.412457, 25.561794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225073, 0.608204, 0.761203,
		-0.973689, -0.169001, -0.152868,
		0.035669, -0.775581, 0.630239,
		38.289776, 33.179783, 25.750866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722260, 33.902714, 25.752201>,  <38.264809, 33.722691, 25.309698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722260, 33.902714, 25.752201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966175, 33.632549, 25.918079>,  <38.112526, 33.470451, 26.017607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966175, 33.632549, 25.918079>,  <37.722260, 33.902714, 25.752201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966175, 33.632549, 25.918079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052111, 0.556272, 0.829365,
		-0.790845, -0.484131, 0.374407,
		0.609793, -0.675410, 0.414697,
		38.149113, 33.429928, 26.042488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344971, 33.700336, 26.308348>,  <37.722260, 33.902714, 25.752201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344971, 33.700336, 26.308348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731693, 33.605404, 26.346220>,  <37.963726, 33.548447, 26.368944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731693, 33.605404, 26.346220>,  <37.344971, 33.700336, 26.308348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731693, 33.605404, 26.346220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047354, 0.530545, 0.846333,
		-0.251090, -0.813755, 0.524172,
		0.966805, -0.237327, 0.094680,
		38.021736, 33.534206, 26.374624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448933, 33.412079, 26.998127>,  <37.344971, 33.700336, 26.308348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448933, 33.412079, 26.998127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806057, 33.531120, 26.862879>,  <38.020332, 33.602547, 26.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806057, 33.531120, 26.862879>,  <37.448933, 33.412079, 26.998127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806057, 33.531120, 26.862879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138996, 0.531991, 0.835264,
		0.428454, -0.792728, 0.433600,
		0.892809, 0.297604, -0.338120,
		38.073898, 33.620403, 26.761442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813438, 33.363178, 27.509487>,  <37.448933, 33.412079, 26.998127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813438, 33.363178, 27.509487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015633, 33.623688, 27.283098>,  <38.136948, 33.779995, 27.147264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015633, 33.623688, 27.283098>,  <37.813438, 33.363178, 27.509487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015633, 33.623688, 27.283098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230344, 0.530279, 0.815933,
		0.831521, -0.542809, 0.118030,
		0.505484, 0.651278, -0.565971,
		38.167278, 33.819073, 27.113308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403431, 33.461731, 27.844488>,  <37.813438, 33.363178, 27.509487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403431, 33.461731, 27.844488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345047, 33.788853, 27.621819>,  <38.310017, 33.985126, 27.488216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345047, 33.788853, 27.621819>,  <38.403431, 33.461731, 27.844488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345047, 33.788853, 27.621819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208325, 0.575491, 0.790829,
		0.967108, -0.000542, -0.254367,
		-0.145957, 0.817808, -0.556675,
		38.301258, 34.034195, 27.454817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000214, 33.823914, 27.742176>,  <38.403431, 33.461731, 27.844488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000214, 33.823914, 27.742176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717510, 34.104576, 27.706015>,  <38.547890, 34.272972, 27.684317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717510, 34.104576, 27.706015>,  <39.000214, 33.823914, 27.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717510, 34.104576, 27.706015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351079, 0.458802, 0.816238,
		0.614194, 0.545146, -0.570598,
		-0.706760, 0.701653, -0.090404,
		38.505482, 34.315071, 27.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310699, 34.534435, 27.667410>,  <39.000214, 33.823914, 27.742176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310699, 34.534435, 27.667410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937542, 34.576996, 27.805042>,  <38.713650, 34.602531, 27.887623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937542, 34.576996, 27.805042>,  <39.310699, 34.534435, 27.667410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937542, 34.576996, 27.805042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345707, 0.532442, 0.772653,
		-0.100994, 0.839753, -0.533494,
		-0.932892, 0.106399, 0.344082,
		38.657673, 34.608917, 27.908266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369766, 35.172161, 27.998468>,  <39.310699, 34.534435, 27.667410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369766, 35.172161, 27.998468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012814, 35.046841, 28.128386>,  <38.798641, 34.971649, 28.206337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012814, 35.046841, 28.128386>,  <39.369766, 35.172161, 27.998468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012814, 35.046841, 28.128386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147110, 0.478445, 0.865707,
		-0.426622, 0.820325, -0.380868,
		-0.892386, -0.313300, 0.324794,
		38.745098, 34.952850, 28.225824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164524, 35.756062, 28.258856>,  <39.369766, 35.172161, 27.998468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164524, 35.756062, 28.258856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930840, 35.470173, 28.412674>,  <38.790630, 35.298641, 28.504965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930840, 35.470173, 28.412674>,  <39.164524, 35.756062, 28.258856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930840, 35.470173, 28.412674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107534, 0.537796, 0.836189,
		-0.804448, 0.447158, -0.391042,
		-0.584209, -0.714720, 0.384544,
		38.755577, 35.255756, 28.528038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498455, 35.983772, 28.547216>,  <39.164524, 35.756062, 28.258856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498455, 35.983772, 28.547216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604950, 35.649609, 28.739553>,  <38.668846, 35.449112, 28.854956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604950, 35.649609, 28.739553>,  <38.498455, 35.983772, 28.547216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604950, 35.649609, 28.739553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099309, 0.472418, 0.875762,
		-0.958778, -0.280913, 0.042812,
		0.266238, -0.835410, 0.480841,
		38.684822, 35.398987, 28.883806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264984, 36.091167, 29.236828>,  <38.498455, 35.983772, 28.547216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264984, 36.091167, 29.236828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463963, 35.749767, 29.298908>,  <38.583351, 35.544930, 29.336157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463963, 35.749767, 29.298908>,  <38.264984, 36.091167, 29.236828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463963, 35.749767, 29.298908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151936, 0.261860, 0.953071,
		-0.854086, -0.450522, 0.259938,
		0.497447, -0.853498, 0.155200,
		38.613197, 35.493717, 29.345469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929676, 35.751331, 29.856909>,  <38.264984, 36.091167, 29.236828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929676, 35.751331, 29.856909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308384, 35.626122, 29.826868>,  <38.535610, 35.550995, 29.808844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308384, 35.626122, 29.826868>,  <37.929676, 35.751331, 29.856909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308384, 35.626122, 29.826868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169480, 0.286349, 0.943017,
		-0.273686, -0.905548, 0.324159,
		0.946770, -0.313029, -0.075102,
		38.592415, 35.532211, 29.804337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088844, 35.267811, 30.461050>,  <37.929676, 35.751331, 29.856909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088844, 35.267811, 30.461050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445435, 35.387253, 30.324747>,  <38.659389, 35.458920, 30.242966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445435, 35.387253, 30.324747>,  <38.088844, 35.267811, 30.461050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445435, 35.387253, 30.324747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270319, 0.253027, 0.928927,
		0.363603, -0.920224, 0.144847,
		0.891471, 0.298606, -0.340755,
		38.712875, 35.476833, 30.222521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564400, 35.078690, 30.962606>,  <38.088844, 35.267811, 30.461050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564400, 35.078690, 30.962606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768101, 35.331944, 30.729435>,  <38.890320, 35.483894, 30.589533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768101, 35.331944, 30.729435>,  <38.564400, 35.078690, 30.962606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768101, 35.331944, 30.729435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483583, 0.349784, 0.802370,
		0.711909, -0.690500, -0.128047,
		0.509248, 0.633136, -0.582929,
		38.920876, 35.521885, 30.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349571, 34.966457, 31.109947>,  <38.564400, 35.078690, 30.962606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349571, 34.966457, 31.109947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307503, 35.336025, 30.962811>,  <39.282261, 35.557766, 30.874529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307503, 35.336025, 30.962811>,  <39.349571, 34.966457, 31.109947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307503, 35.336025, 30.962811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569975, 0.359113, 0.739031,
		0.814904, -0.131938, -0.564380,
		-0.105169, 0.923921, -0.367844,
		39.275951, 35.613201, 30.852457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963615, 35.244881, 31.149475>,  <39.349571, 34.966457, 31.109947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963615, 35.244881, 31.149475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691887, 35.538380, 31.154112>,  <39.528851, 35.714481, 31.156895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691887, 35.538380, 31.154112>,  <39.963615, 35.244881, 31.149475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691887, 35.538380, 31.154112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388605, 0.346284, 0.853858,
		0.622505, 0.584547, -0.520377,
		-0.679318, 0.733752, 0.011594,
		39.488091, 35.758507, 31.157591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422478, 35.702137, 31.457035>,  <39.963615, 35.244881, 31.149475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422478, 35.702137, 31.457035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042431, 35.823715, 31.485018>,  <39.814404, 35.896664, 31.501806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042431, 35.823715, 31.485018>,  <40.422478, 35.702137, 31.457035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042431, 35.823715, 31.485018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185354, 0.369873, 0.910405,
		0.250838, 0.877959, -0.407760,
		-0.950118, 0.303945, 0.069955,
		39.757397, 35.914898, 31.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524677, 36.430267, 31.669615>,  <40.422478, 35.702137, 31.457035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524677, 36.430267, 31.669615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147751, 36.305111, 31.717190>,  <39.921597, 36.230019, 31.745735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147751, 36.305111, 31.717190>,  <40.524677, 36.430267, 31.669615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147751, 36.305111, 31.717190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077390, 0.549341, 0.832007,
		-0.325663, 0.774806, -0.541866,
		-0.942313, -0.312889, 0.118938,
		39.865055, 36.211243, 31.752871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132755, 37.038750, 31.800394>,  <40.524677, 36.430267, 31.669615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132755, 37.038750, 31.800394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934498, 36.736584, 31.971830>,  <39.815544, 36.555283, 32.074692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934498, 36.736584, 31.971830>,  <40.132755, 37.038750, 31.800394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934498, 36.736584, 31.971830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093402, 0.536965, 0.838418,
		-0.863489, 0.375525, -0.336700,
		-0.495643, -0.755413, 0.428589,
		39.785805, 36.509960, 32.100407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827137, 37.512501, 32.328594>,  <40.132755, 37.038750, 31.800394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827137, 37.512501, 32.328594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750866, 37.136974, 32.443317>,  <39.705105, 36.911659, 32.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750866, 37.136974, 32.443317>,  <39.827137, 37.512501, 32.328594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750866, 37.136974, 32.443317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187091, 0.321567, 0.928220,
		-0.963659, 0.123331, -0.236961,
		-0.190677, -0.938821, 0.286807,
		39.693665, 36.855328, 32.529358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378326, 37.623238, 32.895535>,  <39.827137, 37.512501, 32.328594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378326, 37.623238, 32.895535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495300, 37.241310, 32.916695>,  <39.565483, 37.012154, 32.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495300, 37.241310, 32.916695>,  <39.378326, 37.623238, 32.895535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495300, 37.241310, 32.916695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016782, 0.050181, 0.998599,
		-0.956139, -0.292911, -0.001350,
		0.292433, -0.954822, 0.052896,
		39.583031, 36.954865, 32.932564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000427, 37.260349, 33.417515>,  <39.378326, 37.623238, 32.895535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000427, 37.260349, 33.417515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348892, 37.064800, 33.399303>,  <39.557972, 36.947472, 33.388378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348892, 37.064800, 33.399303>,  <39.000427, 37.260349, 33.417515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348892, 37.064800, 33.399303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158350, 0.191988, 0.968538,
		-0.464752, -0.850967, 0.244666,
		0.871167, -0.488872, -0.045524,
		39.610241, 36.918140, 33.385647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150993, 36.892864, 34.077950>,  <39.000427, 37.260349, 33.417515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150993, 36.892864, 34.077950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518631, 36.856220, 33.924648>,  <39.739212, 36.834232, 33.832668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518631, 36.856220, 33.924648>,  <39.150993, 36.892864, 34.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518631, 36.856220, 33.924648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383277, -0.018006, 0.923458,
		-0.091499, -0.995632, 0.018563,
		0.919090, -0.091610, -0.383251,
		39.794357, 36.828735, 33.809673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524982, 36.426552, 34.448029>,  <39.150993, 36.892864, 34.077950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524982, 36.426552, 34.448029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807266, 36.639847, 34.261425>,  <39.976639, 36.767826, 34.149464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807266, 36.639847, 34.261425>,  <39.524982, 36.426552, 34.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807266, 36.639847, 34.261425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428866, 0.202603, 0.880356,
		0.563956, -0.821345, -0.085709,
		0.705711, 0.533239, -0.466506,
		40.018978, 36.799820, 34.121471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124863, 36.247604, 34.811462>,  <39.524982, 36.426552, 34.448029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124863, 36.247604, 34.811462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181728, 36.629227, 34.705967>,  <40.215847, 36.858200, 34.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181728, 36.629227, 34.705967>,  <40.124863, 36.247604, 34.811462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181728, 36.629227, 34.705967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017209, 0.268789, 0.963045,
		0.989694, -0.132369, 0.054630,
		0.142162, 0.954060, -0.263741,
		40.224377, 36.915443, 34.626846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789219, 36.491703, 35.188061>,  <40.124863, 36.247604, 34.811462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789219, 36.491703, 35.188061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578056, 36.816868, 35.089684>,  <40.451359, 37.011967, 35.030655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578056, 36.816868, 35.089684>,  <40.789219, 36.491703, 35.188061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578056, 36.816868, 35.089684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145472, 0.371857, 0.916821,
		0.836749, 0.448220, -0.314562,
		-0.527909, 0.812909, -0.245947,
		40.419685, 37.060741, 35.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208206, 37.087395, 35.314301>,  <40.789219, 36.491703, 35.188061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208206, 37.087395, 35.314301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835506, 37.232624, 35.315712>,  <40.611885, 37.319763, 35.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835506, 37.232624, 35.315712>,  <41.208206, 37.087395, 35.314301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835506, 37.232624, 35.315712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223936, 0.566984, 0.792705,
		0.285813, 0.739395, -0.609595,
		-0.931753, 0.363076, 0.003525,
		40.555981, 37.341545, 35.316769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264553, 37.763794, 35.359528>,  <41.208206, 37.087395, 35.314301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264553, 37.763794, 35.359528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890121, 37.704281, 35.487038>,  <40.665462, 37.668575, 35.563545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890121, 37.704281, 35.487038>,  <41.264553, 37.763794, 35.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890121, 37.704281, 35.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204440, 0.507371, 0.837125,
		-0.286287, 0.848787, -0.444523,
		-0.936079, -0.148780, 0.318779,
		40.609299, 37.659645, 35.582672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037319, 38.432198, 35.583649>,  <41.264553, 37.763794, 35.359528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037319, 38.432198, 35.583649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744347, 38.195389, 35.718147>,  <40.568565, 38.053303, 35.798847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744347, 38.195389, 35.718147>,  <41.037319, 38.432198, 35.583649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744347, 38.195389, 35.718147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178389, 0.643481, 0.744386,
		-0.657060, 0.485226, -0.576913,
		-0.732428, -0.592021, 0.336247,
		40.524620, 38.017784, 35.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491627, 38.894260, 35.680592>,  <41.037319, 38.432198, 35.583649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491627, 38.894260, 35.680592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435474, 38.555683, 35.886051>,  <40.401783, 38.352539, 36.009327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435474, 38.555683, 35.886051>,  <40.491627, 38.894260, 35.680592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435474, 38.555683, 35.886051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127580, 0.529925, 0.838393,
		-0.981844, 0.052160, -0.182378,
		-0.140377, -0.846438, 0.513649,
		40.393360, 38.301750, 36.040146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910599, 38.929230, 36.003021>,  <40.491627, 38.894260, 35.680592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910599, 38.929230, 36.003021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108196, 38.666237, 36.230595>,  <40.226753, 38.508442, 36.367138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108196, 38.666237, 36.230595>,  <39.910599, 38.929230, 36.003021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108196, 38.666237, 36.230595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280651, 0.498745, 0.820054,
		-0.822927, -0.564770, 0.061851,
		0.493990, -0.657486, 0.568934,
		40.256393, 38.468990, 36.401276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432491, 38.833836, 36.537201>,  <39.910599, 38.929230, 36.003021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432491, 38.833836, 36.537201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762684, 38.696869, 36.716679>,  <39.960800, 38.614689, 36.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762684, 38.696869, 36.716679>,  <39.432491, 38.833836, 36.537201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762684, 38.696869, 36.716679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261987, 0.471677, 0.841953,
		-0.499939, -0.812570, 0.299652,
		0.825485, -0.342420, 0.448692,
		40.010330, 38.594143, 36.851288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229404, 38.677139, 37.247288>,  <39.432491, 38.833836, 36.537201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229404, 38.677139, 37.247288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628155, 38.702423, 37.266193>,  <39.867405, 38.717594, 37.277538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628155, 38.702423, 37.266193>,  <39.229404, 38.677139, 37.247288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628155, 38.702423, 37.266193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072843, 0.506200, 0.859334,
		0.030391, -0.860096, 0.509225,
		0.996880, 0.063210, 0.047268,
		39.927219, 38.721386, 37.280373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343929, 38.376907, 37.782619>,  <39.229404, 38.677139, 37.247288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343929, 38.376907, 37.782619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645737, 38.627892, 37.705685>,  <39.826820, 38.778481, 37.659523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645737, 38.627892, 37.705685>,  <39.343929, 38.376907, 37.782619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645737, 38.627892, 37.705685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085433, 0.384484, 0.919170,
		0.650691, -0.677102, 0.343706,
		0.754521, 0.627459, -0.192334,
		39.872093, 38.816128, 37.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851700, 38.304367, 38.280655>,  <39.343929, 38.376907, 37.782619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851700, 38.304367, 38.280655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917267, 38.663868, 38.117992>,  <39.956608, 38.879570, 38.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917267, 38.663868, 38.117992>,  <39.851700, 38.304367, 38.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917267, 38.663868, 38.117992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052858, 0.419643, 0.906149,
		0.985056, -0.127041, 0.116294,
		0.163920, 0.898755, -0.406657,
		39.966442, 38.933495, 37.995995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401302, 38.558422, 38.631351>,  <39.851700, 38.304367, 38.280655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401302, 38.558422, 38.631351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203644, 38.869751, 38.476418>,  <40.085049, 39.056549, 38.383457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203644, 38.869751, 38.476418>,  <40.401302, 38.558422, 38.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203644, 38.869751, 38.476418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064785, 0.411322, 0.909185,
		0.866961, 0.474364, -0.152829,
		-0.494147, 0.778327, -0.387332,
		40.055401, 39.103249, 38.360218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767685, 39.196743, 38.872650>,  <40.401302, 38.558422, 38.631351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767685, 39.196743, 38.872650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400528, 39.325096, 38.779270>,  <40.180233, 39.402107, 38.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400528, 39.325096, 38.779270>,  <40.767685, 39.196743, 38.872650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400528, 39.325096, 38.779270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042503, 0.505415, 0.861829,
		0.394535, 0.800992, -0.450281,
		-0.917897, 0.320884, -0.233449,
		40.125160, 39.421360, 38.709236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783600, 39.908569, 39.142303>,  <40.767685, 39.196743, 38.872650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783600, 39.908569, 39.142303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396263, 39.828716, 39.082355>,  <40.163860, 39.780804, 39.046387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396263, 39.828716, 39.082355>,  <40.783600, 39.908569, 39.142303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396263, 39.828716, 39.082355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227705, 0.460364, 0.858030,
		-0.102292, 0.864993, -0.491247,
		-0.968342, -0.199629, -0.149872,
		40.105759, 39.768829, 39.037395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350777, 40.539505, 39.360733>,  <40.783600, 39.908569, 39.142303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350777, 40.539505, 39.360733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111889, 40.218899, 39.348709>,  <39.968555, 40.026535, 39.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111889, 40.218899, 39.348709>,  <40.350777, 40.539505, 39.360733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111889, 40.218899, 39.348709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399831, 0.265017, 0.877440,
		-0.695315, 0.536042, -0.478743,
		-0.597220, -0.801514, -0.030056,
		39.932724, 39.978443, 39.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619556, 40.598091, 39.461216>,  <40.350777, 40.539505, 39.360733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619556, 40.598091, 39.461216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722355, 40.245758, 39.620258>,  <39.784035, 40.034359, 39.715683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722355, 40.245758, 39.620258>,  <39.619556, 40.598091, 39.461216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722355, 40.245758, 39.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412673, 0.272000, 0.869320,
		-0.873872, -0.387494, -0.293591,
		0.257000, -0.880831, 0.397602,
		39.799454, 39.981510, 39.739540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138294, 40.452065, 39.994564>,  <39.619556, 40.598091, 39.461216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138294, 40.452065, 39.994564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977783, 40.810818, 39.920181>,  <38.881477, 41.026070, 39.875553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977783, 40.810818, 39.920181>,  <39.138294, 40.452065, 39.994564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977783, 40.810818, 39.920181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624174, -0.119167, 0.772144,
		0.670363, 0.425911, 0.607630,
		-0.401274, 0.896883, -0.185958,
		38.857403, 41.079884, 39.864395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107597, 40.867725, 40.671112>,  <39.138294, 40.452065, 39.994564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107597, 40.867725, 40.671112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801586, 40.920631, 40.419006>,  <38.617981, 40.952377, 40.267742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801586, 40.920631, 40.419006>,  <39.107597, 40.867725, 40.671112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801586, 40.920631, 40.419006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631060, 0.041221, 0.774638,
		0.128441, 0.990356, 0.051935,
		-0.765027, 0.132269, -0.630269,
		38.572079, 40.960312, 40.229927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692108, 40.621975, 40.994385>,  <39.107597, 40.867725, 40.671112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692108, 40.621975, 40.994385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480820, 40.282482, 41.004425>,  <39.354046, 40.078785, 41.010448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480820, 40.282482, 41.004425>,  <39.692108, 40.621975, 40.994385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480820, 40.282482, 41.004425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070724, 0.014524, -0.997390,
		0.846155, -0.528620, -0.067698,
		-0.528224, -0.848734, 0.025097,
		39.322353, 40.027863, 41.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967178, 40.254578, 40.576439>,  <39.692108, 40.621975, 40.994385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967178, 40.254578, 40.576439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622654, 40.051392, 40.580746>,  <39.415939, 39.929482, 40.583328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622654, 40.051392, 40.580746>,  <39.967178, 40.254578, 40.576439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622654, 40.051392, 40.580746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200496, -0.359285, -0.911436,
		0.466843, -0.782872, 0.411301,
		-0.861312, -0.507962, 0.010767,
		39.364262, 39.899002, 40.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074139, 39.527088, 40.334938>,  <39.967178, 40.254578, 40.576439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074139, 39.527088, 40.334938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697102, 39.623981, 40.242981>,  <39.470879, 39.682117, 40.187805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697102, 39.623981, 40.242981>,  <40.074139, 39.527088, 40.334938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697102, 39.623981, 40.242981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108138, -0.429915, -0.896370,
		-0.315964, -0.869768, 0.379039,
		-0.942588, 0.242232, -0.229893,
		39.414326, 39.696651, 40.174011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632427, 38.985340, 39.996212>,  <40.074139, 39.527088, 40.334938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632427, 38.985340, 39.996212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560070, 39.348881, 39.845875>,  <39.516655, 39.567005, 39.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560070, 39.348881, 39.845875>,  <39.632427, 38.985340, 39.996212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560070, 39.348881, 39.845875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077030, -0.367882, -0.926676,
		-0.980481, -0.196585, -0.003460,
		-0.180897, 0.908855, -0.375844,
		39.505802, 39.621536, 39.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161697, 38.901451, 39.450352>,  <39.632427, 38.985340, 39.996212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161697, 38.901451, 39.450352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358463, 39.245098, 39.393867>,  <39.476524, 39.451286, 39.359978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358463, 39.245098, 39.393867>,  <39.161697, 38.901451, 39.450352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358463, 39.245098, 39.393867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000600, -0.162520, -0.986705,
		-0.870642, 0.485292, -0.080462,
		0.491917, 0.859115, -0.141206,
		39.506039, 39.502834, 39.351505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844154, 39.399414, 38.966263>,  <39.161697, 38.901451, 39.450352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844154, 39.399414, 38.966263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222260, 39.529503, 38.976902>,  <39.449123, 39.607555, 38.983288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222260, 39.529503, 38.976902>,  <38.844154, 39.399414, 38.966263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222260, 39.529503, 38.976902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128189, -0.295146, -0.946814,
		-0.300070, 0.898400, -0.320680,
		0.945265, 0.325218, 0.026601,
		39.505840, 39.627068, 38.984882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979916, 39.797848, 38.378292>,  <38.844154, 39.399414, 38.966263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979916, 39.797848, 38.378292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340942, 39.667389, 38.490719>,  <39.557560, 39.589111, 38.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340942, 39.667389, 38.490719>,  <38.979916, 39.797848, 38.378292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340942, 39.667389, 38.490719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228481, -0.190481, -0.954732,
		0.364922, 0.925929, -0.097403,
		0.902568, -0.326149, 0.281067,
		39.611713, 39.569546, 38.575039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430820, 40.076115, 37.841343>,  <38.979916, 39.797848, 38.378292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430820, 40.076115, 37.841343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625702, 39.759335, 37.988556>,  <39.742630, 39.569267, 38.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625702, 39.759335, 37.988556>,  <39.430820, 40.076115, 37.841343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625702, 39.759335, 37.988556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375481, -0.190525, -0.907036,
		0.788448, 0.580098, 0.204539,
		0.487200, -0.791952, 0.368034,
		39.771862, 39.521748, 38.098965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230988, 40.137741, 37.629887>,  <39.430820, 40.076115, 37.841343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230988, 40.137741, 37.629887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120499, 39.764790, 37.723156>,  <40.054207, 39.541019, 37.779118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120499, 39.764790, 37.723156>,  <40.230988, 40.137741, 37.629887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120499, 39.764790, 37.723156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433087, -0.337338, -0.835846,
		0.857985, -0.129890, 0.496981,
		-0.276219, -0.932380, 0.233177,
		40.037632, 39.485077, 37.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595623, 40.185814, 36.976273>,  <40.230988, 40.137741, 37.629887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595623, 40.185814, 36.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674240, 39.962051, 36.654171>,  <40.721413, 39.827793, 36.460911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674240, 39.962051, 36.654171>,  <40.595623, 40.185814, 36.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674240, 39.962051, 36.654171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904001, -0.214630, 0.369751,
		-0.379673, -0.800624, 0.463519,
		0.196546, -0.559406, -0.805254,
		40.733204, 39.794231, 36.412594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959972, 39.559696, 37.353344>,  <40.595623, 40.185814, 36.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959972, 39.559696, 37.353344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634598, 39.345222, 37.443523>,  <40.439373, 39.216537, 37.497631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634598, 39.345222, 37.443523>,  <40.959972, 39.559696, 37.353344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634598, 39.345222, 37.443523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226606, -0.649112, -0.726157,
		0.535698, -0.539593, 0.649513,
		-0.813436, -0.536184, 0.225453,
		40.390568, 39.184368, 37.511158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211094, 38.942089, 37.198685>,  <40.959972, 39.559696, 37.353344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211094, 38.942089, 37.198685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820602, 38.867435, 37.242786>,  <40.586308, 38.822643, 37.269245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820602, 38.867435, 37.242786>,  <41.211094, 38.942089, 37.198685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820602, 38.867435, 37.242786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060326, -0.722444, -0.688793,
		0.208201, -0.665765, 0.716526,
		-0.976224, -0.186632, 0.110251,
		40.527737, 38.811447, 37.275860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053371, 38.253708, 37.552055>,  <41.211094, 38.942089, 37.198685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053371, 38.253708, 37.552055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761436, 38.358437, 37.299458>,  <40.586273, 38.421272, 37.147900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761436, 38.358437, 37.299458>,  <41.053371, 38.253708, 37.552055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761436, 38.358437, 37.299458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166242, -0.828046, -0.535447,
		-0.663097, -0.495771, 0.560816,
		-0.729840, 0.261822, -0.631493,
		40.542484, 38.436981, 37.110008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824924, 37.565380, 37.162243>,  <41.053371, 38.253708, 37.552055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824924, 37.565380, 37.162243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649815, 37.843166, 36.933834>,  <40.544746, 38.009838, 36.796791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649815, 37.843166, 36.933834>,  <40.824924, 37.565380, 37.162243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649815, 37.843166, 36.933834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027038, -0.644995, -0.763709,
		-0.898677, -0.318895, 0.301141,
		-0.437777, 0.694469, -0.571019,
		40.518482, 38.051506, 36.762527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371666, 37.147202, 36.740593>,  <40.824924, 37.565380, 37.162243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371666, 37.147202, 36.740593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418930, 37.500542, 36.559166>,  <40.447289, 37.712547, 36.450310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418930, 37.500542, 36.559166>,  <40.371666, 37.147202, 36.740593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418930, 37.500542, 36.559166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211673, -0.423866, -0.880643,
		-0.970171, 0.200067, 0.136896,
		0.118162, 0.883352, -0.453572,
		40.454380, 37.765549, 36.423096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808002, 37.065048, 36.397430>,  <40.371666, 37.147202, 36.740593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808002, 37.065048, 36.397430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991119, 37.396561, 36.268711>,  <40.100990, 37.595467, 36.191479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991119, 37.396561, 36.268711>,  <39.808002, 37.065048, 36.397430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991119, 37.396561, 36.268711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323119, -0.182109, -0.928671,
		-0.828265, 0.529116, 0.184426,
		0.457789, 0.828778, -0.321802,
		40.128456, 37.645195, 36.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364037, 37.576126, 35.865673>,  <39.808002, 37.065048, 36.397430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364037, 37.576126, 35.865673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756176, 37.598858, 35.790112>,  <39.991459, 37.612499, 35.744774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756176, 37.598858, 35.790112>,  <39.364037, 37.576126, 35.865673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756176, 37.598858, 35.790112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160976, -0.323000, -0.932608,
		-0.114016, 0.944691, -0.307505,
		0.980351, 0.056831, -0.188899,
		40.050282, 37.615906, 35.733440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392727, 37.951706, 35.201015>,  <39.364037, 37.576126, 35.865673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392727, 37.951706, 35.201015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729527, 37.746906, 35.269009>,  <39.931606, 37.624027, 35.309803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729527, 37.746906, 35.269009>,  <39.392727, 37.951706, 35.201015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729527, 37.746906, 35.269009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018984, -0.286765, -0.957813,
		0.539143, 0.809705, -0.231736,
		0.842000, -0.511999, 0.169979,
		39.982128, 37.593307, 35.320004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874901, 38.132759, 34.674152>,  <39.392727, 37.951706, 35.201015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874901, 38.132759, 34.674152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103897, 37.813339, 34.748520>,  <40.241295, 37.621685, 34.793140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103897, 37.813339, 34.748520>,  <39.874901, 38.132759, 34.674152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103897, 37.813339, 34.748520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027029, -0.245014, -0.969143,
		0.819463, 0.549803, -0.161853,
		0.572494, -0.798552, 0.185919,
		40.275646, 37.573772, 34.804295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612309, 38.078724, 34.301712>,  <39.874901, 38.132759, 34.674152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612309, 38.078724, 34.301712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478031, 37.712112, 34.388691>,  <40.397465, 37.492146, 34.440876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478031, 37.712112, 34.388691>,  <40.612309, 38.078724, 34.301712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478031, 37.712112, 34.388691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110231, -0.267473, -0.957239,
		0.935501, -0.297365, 0.190818,
		-0.335689, -0.916532, 0.217443,
		40.377323, 37.437153, 34.453922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982086, 37.644108, 33.826618>,  <40.612309, 38.078724, 34.301712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982086, 37.644108, 33.826618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649498, 37.456032, 33.944996>,  <40.449947, 37.343185, 34.016022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649498, 37.456032, 33.944996>,  <40.982086, 37.644108, 33.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649498, 37.456032, 33.944996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084493, -0.419476, -0.903826,
		0.549111, -0.776507, 0.309053,
		-0.831467, -0.470188, 0.295948,
		40.400059, 37.314976, 34.033779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934765, 37.181915, 33.311153>,  <40.982086, 37.644108, 33.826618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934765, 37.181915, 33.311153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583000, 37.079090, 33.471432>,  <40.371941, 37.017395, 33.567600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583000, 37.079090, 33.471432>,  <40.934765, 37.181915, 33.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583000, 37.079090, 33.471432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261402, -0.442720, -0.857711,
		0.397880, -0.859023, 0.322136,
		-0.879410, -0.257059, 0.400699,
		40.319176, 37.001972, 33.591640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820095, 36.494644, 33.181705>,  <40.934765, 37.181915, 33.311153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820095, 36.494644, 33.181705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439816, 36.591007, 33.259815>,  <40.211647, 36.648823, 33.306683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439816, 36.591007, 33.259815>,  <40.820095, 36.494644, 33.181705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439816, 36.591007, 33.259815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279844, -0.395126, -0.874965,
		-0.133625, -0.886476, 0.443062,
		-0.950701, 0.240905, 0.195276,
		40.154606, 36.663280, 33.318398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290710, 35.842098, 33.083229>,  <40.820095, 36.494644, 33.181705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290710, 35.842098, 33.083229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083916, 36.181889, 33.041065>,  <39.959839, 36.385765, 33.015766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083916, 36.181889, 33.041065>,  <40.290710, 35.842098, 33.083229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083916, 36.181889, 33.041065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502835, -0.401033, -0.765721,
		-0.692736, -0.342865, 0.634477,
		-0.516986, 0.849480, -0.105405,
		39.928822, 36.436733, 33.009445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746807, 35.920071, 33.705082>,  <40.290710, 35.842098, 33.083229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746807, 35.920071, 33.705082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649857, 35.568245, 33.868847>,  <40.591686, 35.357151, 33.967106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649857, 35.568245, 33.868847>,  <40.746807, 35.920071, 33.705082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649857, 35.568245, 33.868847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065723, -0.435914, -0.897585,
		0.967953, -0.190647, 0.163464,
		-0.242378, -0.879564, 0.409415,
		40.577145, 35.304375, 33.991673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321171, 35.440586, 33.663773>,  <40.746807, 35.920071, 33.705082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321171, 35.440586, 33.663773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971897, 35.246723, 33.643177>,  <40.762333, 35.130405, 33.630821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971897, 35.246723, 33.643177>,  <41.321171, 35.440586, 33.663773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971897, 35.246723, 33.643177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280392, -0.413125, -0.866434,
		0.398658, -0.770993, 0.496630,
		-0.873185, -0.484662, -0.051485,
		40.709942, 35.101326, 33.627731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418922, 34.803867, 33.286083>,  <41.321171, 35.440586, 33.663773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418922, 34.803867, 33.286083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020813, 34.842438, 33.281353>,  <40.781948, 34.865582, 33.278515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020813, 34.842438, 33.281353>,  <41.418922, 34.803867, 33.286083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020813, 34.842438, 33.281353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024573, -0.367645, -0.929642,
		-0.093989, -0.924954, 0.368275,
		-0.995270, 0.096426, -0.011826,
		40.722233, 34.871365, 33.277805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212353, 34.048908, 32.931625>,  <41.418922, 34.803867, 33.286083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212353, 34.048908, 32.931625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958866, 34.358280, 32.925858>,  <40.806774, 34.543903, 32.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958866, 34.358280, 32.925858>,  <41.212353, 34.048908, 32.931625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958866, 34.358280, 32.925858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347225, -0.301060, -0.888143,
		-0.691257, -0.557826, 0.459341,
		-0.633718, 0.773430, -0.014419,
		40.768749, 34.590309, 32.921532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532543, 33.756580, 32.886486>,  <41.212353, 34.048908, 32.931625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532543, 33.756580, 32.886486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606628, 34.109417, 32.713230>,  <40.651081, 34.321117, 32.609276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606628, 34.109417, 32.713230>,  <40.532543, 33.756580, 32.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606628, 34.109417, 32.713230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349459, -0.352832, -0.867979,
		-0.918463, 0.312125, 0.242907,
		0.185213, 0.882093, -0.433138,
		40.662193, 34.374046, 32.583290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040226, 33.301029, 33.279411>,  <40.532543, 33.756580, 32.886486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040226, 33.301029, 33.279411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379261, 33.409752, 33.461716>,  <41.582684, 33.474983, 33.571098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379261, 33.409752, 33.461716>,  <41.040226, 33.301029, 33.279411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379261, 33.409752, 33.461716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172347, -0.953305, 0.248005,
		0.501883, -0.131659, -0.854856,
		0.847590, 0.271802, 0.455756,
		41.633537, 33.491291, 33.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492073, 32.720303, 33.278332>,  <41.040226, 33.301029, 33.279411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492073, 32.720303, 33.278332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731907, 32.946640, 33.504715>,  <41.875809, 33.082443, 33.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731907, 32.946640, 33.504715>,  <41.492073, 32.720303, 33.278332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731907, 32.946640, 33.504715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596524, -0.787427, 0.155299,
		0.533528, 0.244494, -0.809673,
		0.599589, 0.565846, 0.565960,
		41.911785, 33.116394, 33.674503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264503, 32.529831, 33.137787>,  <41.492073, 32.720303, 33.278332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264503, 32.529831, 33.137787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293381, 32.691711, 33.502426>,  <42.310707, 32.788837, 33.721210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293381, 32.691711, 33.502426>,  <42.264503, 32.529831, 33.137787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293381, 32.691711, 33.502426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673750, -0.693710, 0.254612,
		0.735425, 0.595808, -0.322744,
		0.072190, 0.404697, 0.911597,
		42.315037, 32.813122, 33.775906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928780, 32.802631, 33.149460>,  <42.264503, 32.529831, 33.137787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928780, 32.802631, 33.149460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785480, 32.652409, 33.491364>,  <42.699501, 32.562275, 33.696507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785480, 32.652409, 33.491364>,  <42.928780, 32.802631, 33.149460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785480, 32.652409, 33.491364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760144, -0.648891, 0.033484,
		0.542072, 0.661738, 0.517940,
		-0.358244, -0.375558, 0.854761,
		42.678009, 32.539742, 33.747791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512745, 32.625008, 33.547722>,  <42.928780, 32.802631, 33.149460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512745, 32.625008, 33.547722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217785, 32.392910, 33.686031>,  <43.040810, 32.253651, 33.769016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217785, 32.392910, 33.686031>,  <43.512745, 32.625008, 33.547722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217785, 32.392910, 33.686031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584645, -0.804662, -0.103487,
		0.338278, 0.125843, 0.932594,
		-0.737399, -0.580244, 0.345773,
		42.996567, 32.218838, 33.789764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296124, 32.885204, 33.745899>,  <43.512745, 32.625008, 33.547722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296124, 32.885204, 33.745899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311466, 32.856472, 34.144569>,  <44.320671, 32.839233, 34.383774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311466, 32.856472, 34.144569>,  <44.296124, 32.885204, 33.745899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311466, 32.856472, 34.144569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933595, 0.358187, -0.010114,
		-0.356271, 0.930883, 0.080795,
		0.038355, -0.071826, 0.996679,
		44.322971, 32.834923, 34.443573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503056, 33.505623, 33.908966>,  <44.296124, 32.885204, 33.745899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503056, 33.505623, 33.908966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594234, 33.298206, 34.238609>,  <44.648941, 33.173756, 34.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594234, 33.298206, 34.238609>,  <44.503056, 33.505623, 33.908966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594234, 33.298206, 34.238609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921471, 0.388305, -0.010551,
		-0.314535, 0.761799, 0.566330,
		0.227946, -0.518538, 0.824111,
		44.662617, 33.142647, 34.485844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600986, 33.883652, 34.680584>,  <44.503056, 33.505623, 33.908966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600986, 33.883652, 34.680584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818684, 33.563236, 34.580879>,  <44.949303, 33.370987, 34.521057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818684, 33.563236, 34.580879>,  <44.600986, 33.883652, 34.680584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818684, 33.563236, 34.580879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824445, 0.565664, -0.017745,
		0.155213, -0.195846, 0.968273,
		0.544242, -0.801042, -0.249263,
		44.981956, 33.322922, 34.506100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343967, 33.682747, 35.032139>,  <44.600986, 33.883652, 34.680584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343967, 33.682747, 35.032139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369389, 33.543175, 34.658142>,  <45.384640, 33.459431, 34.433743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369389, 33.543175, 34.658142>,  <45.343967, 33.682747, 35.032139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369389, 33.543175, 34.658142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925932, 0.370129, -0.075190,
		0.372303, -0.860960, 0.346609,
		0.063554, -0.348930, -0.934991,
		45.388454, 33.438496, 34.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003410, 33.427860, 34.944885>,  <45.343967, 33.682747, 35.032139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003410, 33.427860, 34.944885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869835, 33.546009, 34.586838>,  <45.789692, 33.616898, 34.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869835, 33.546009, 34.586838>,  <46.003410, 33.427860, 34.944885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869835, 33.546009, 34.586838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879855, 0.438349, -0.183593,
		0.338146, -0.848884, -0.406267,
		-0.333935, 0.295375, -0.895121,
		45.769653, 33.634621, 34.318302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411285, 33.089523, 34.406479>,  <46.003410, 33.427860, 34.944885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411285, 33.089523, 34.406479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253735, 33.439571, 34.294029>,  <46.159206, 33.649601, 34.226559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253735, 33.439571, 34.294029>,  <46.411285, 33.089523, 34.406479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253735, 33.439571, 34.294029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915044, 0.402245, -0.029880,
		0.086933, -0.269009, -0.959206,
		-0.393874, 0.875119, -0.281123,
		46.135571, 33.702106, 34.209694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778347, 33.460487, 33.805599>,  <46.411285, 33.089523, 34.406479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778347, 33.460487, 33.805599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655193, 33.753929, 34.047932>,  <46.581299, 33.929996, 34.193329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655193, 33.753929, 34.047932>,  <46.778347, 33.460487, 33.805599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655193, 33.753929, 34.047932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926249, 0.376627, 0.014667,
		-0.217411, 0.565663, -0.795461,
		-0.307889, 0.733606, 0.605827,
		46.562828, 33.974010, 34.229679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992668, 34.126152, 33.574104>,  <46.778347, 33.460487, 33.805599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992668, 34.126152, 33.574104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937424, 34.160934, 33.968742>,  <46.904278, 34.181805, 34.205524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937424, 34.160934, 33.968742>,  <46.992668, 34.126152, 33.574104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937424, 34.160934, 33.968742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939790, 0.325916, 0.102830,
		-0.312604, 0.941391, -0.126731,
		-0.138107, 0.086955, 0.986593,
		46.895992, 34.187019, 34.264721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106266, 34.901306, 33.860104>,  <46.992668, 34.126152, 33.574104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106266, 34.901306, 33.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175293, 34.608078, 34.123264>,  <47.216709, 34.432140, 34.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175293, 34.608078, 34.123264>,  <47.106266, 34.901306, 33.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175293, 34.608078, 34.123264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953513, 0.291848, 0.075086,
		-0.247049, 0.614356, 0.749355,
		0.172568, -0.733070, 0.657897,
		47.227062, 34.388157, 34.320633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155186, 35.091885, 34.618359>,  <47.106266, 34.901306, 33.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155186, 35.091885, 34.618359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404301, 34.803215, 34.497478>,  <47.553768, 34.630013, 34.424950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404301, 34.803215, 34.497478>,  <47.155186, 35.091885, 34.618359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404301, 34.803215, 34.497478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782324, 0.579433, 0.228533,
		0.010179, -0.378746, 0.925445,
		0.622789, -0.721671, -0.302200,
		47.591137, 34.586712, 34.406818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667492, 35.022533, 35.131237>,  <47.155186, 35.091885, 34.618359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667492, 35.022533, 35.131237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821270, 34.858261, 34.800529>,  <47.913536, 34.759697, 34.602104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821270, 34.858261, 34.800529>,  <47.667492, 35.022533, 35.131237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821270, 34.858261, 34.800529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847628, 0.511812, 0.139909,
		0.365693, -0.754580, 0.544864,
		0.384441, -0.410678, -0.826770,
		47.936604, 34.735058, 34.552498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.376396, 28.289019, 27.935375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997395, 28.214195, 27.831650>,  <35.769993, 28.169302, 27.769415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997395, 28.214195, 27.831650>,  <36.376396, 28.289019, 27.935375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997395, 28.214195, 27.831650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313711, 0.387114, 0.867023,
		-0.061800, 0.902858, -0.425474,
		-0.947505, -0.187058, -0.259313,
		35.713142, 28.158077, 27.753857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067394, 28.881760, 28.021765>,  <36.376396, 28.289019, 27.935375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067394, 28.881760, 28.021765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774281, 28.609934, 28.035742>,  <35.598412, 28.446838, 28.044128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774281, 28.609934, 28.035742>,  <36.067394, 28.881760, 28.021765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774281, 28.609934, 28.035742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303518, 0.372384, 0.877045,
		-0.609019, 0.632079, -0.479137,
		-0.732784, -0.679564, 0.034941,
		35.554447, 28.406065, 28.046225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540482, 29.282803, 28.027874>,  <36.067394, 28.881760, 28.021765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540482, 29.282803, 28.027874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426517, 28.923538, 28.161819>,  <35.358139, 28.707979, 28.242188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426517, 28.923538, 28.161819>,  <35.540482, 29.282803, 28.027874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426517, 28.923538, 28.161819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277866, 0.411729, 0.867911,
		-0.917397, 0.154228, -0.366873,
		-0.284908, -0.898161, 0.334864,
		35.341045, 28.654089, 28.262280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930855, 29.399950, 28.314369>,  <35.540482, 29.282803, 28.027874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930855, 29.399950, 28.314369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031895, 29.053484, 28.486856>,  <35.092518, 28.845604, 28.590349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031895, 29.053484, 28.486856>,  <34.930855, 29.399950, 28.314369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031895, 29.053484, 28.486856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305106, 0.351631, 0.885023,
		-0.918207, -0.355122, -0.175451,
		0.252597, -0.866166, 0.431220,
		35.107674, 28.793634, 28.616222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457657, 29.287716, 28.814232>,  <34.930855, 29.399950, 28.314369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457657, 29.287716, 28.814232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750919, 29.038614, 28.923527>,  <34.926876, 28.889153, 28.989103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750919, 29.038614, 28.923527>,  <34.457657, 29.287716, 28.814232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750919, 29.038614, 28.923527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089893, 0.309516, 0.946636,
		-0.674093, -0.718594, 0.170942,
		0.733155, -0.622754, 0.273239,
		34.970867, 28.851788, 29.005499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130791, 28.738951, 29.371120>,  <34.457657, 29.287716, 28.814232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130791, 28.738951, 29.371120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524582, 28.769005, 29.434570>,  <34.760857, 28.787037, 29.472639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524582, 28.769005, 29.434570>,  <34.130791, 28.738951, 29.371120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524582, 28.769005, 29.434570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172759, 0.255162, 0.951339,
		0.031005, -0.963975, 0.264181,
		0.984476, 0.075136, 0.158624,
		34.819923, 28.791546, 29.482157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309456, 28.422398, 30.094395>,  <34.130791, 28.738951, 29.371120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309456, 28.422398, 30.094395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620556, 28.657614, 30.005571>,  <34.807217, 28.798742, 29.952278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620556, 28.657614, 30.005571>,  <34.309456, 28.422398, 30.094395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620556, 28.657614, 30.005571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113758, 0.479123, 0.870345,
		0.618190, -0.651653, 0.439534,
		0.777753, 0.588039, -0.222059,
		34.853882, 28.834024, 29.938953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715523, 28.400095, 30.637754>,  <34.309456, 28.422398, 30.094395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715523, 28.400095, 30.637754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838158, 28.729307, 30.446497>,  <34.911739, 28.926834, 30.331741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838158, 28.729307, 30.446497>,  <34.715523, 28.400095, 30.637754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838158, 28.729307, 30.446497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025338, 0.509215, 0.860266,
		0.951506, -0.251630, 0.176973,
		0.306586, 0.823033, -0.478145,
		34.930134, 28.976217, 30.303053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119419, 28.785727, 31.052483>,  <34.715523, 28.400095, 30.637754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119419, 28.785727, 31.052483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096653, 29.072132, 30.774179>,  <35.082993, 29.243977, 30.607197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096653, 29.072132, 30.774179>,  <35.119419, 28.785727, 31.052483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096653, 29.072132, 30.774179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255473, 0.684132, 0.683152,
		0.965140, -0.138868, -0.221859,
		-0.056913, 0.716016, -0.695760,
		35.079578, 29.286938, 30.565451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721027, 29.180983, 31.149801>,  <35.119419, 28.785727, 31.052483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721027, 29.180983, 31.149801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433048, 29.393068, 30.970667>,  <35.260262, 29.520319, 30.863186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433048, 29.393068, 30.970667>,  <35.721027, 29.180983, 31.149801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433048, 29.393068, 30.970667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188087, 0.770173, 0.609473,
		0.668061, 0.354554, -0.654207,
		-0.719943, 0.530212, -0.447836,
		35.217064, 29.552132, 30.836317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081963, 29.770746, 30.871361>,  <35.721027, 29.180983, 31.149801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081963, 29.770746, 30.871361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692715, 29.833488, 30.938805>,  <35.459164, 29.871134, 30.979271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692715, 29.833488, 30.938805>,  <36.081963, 29.770746, 30.871361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692715, 29.833488, 30.938805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213759, 0.887629, 0.407949,
		-0.085676, 0.433027, -0.897300,
		-0.973122, 0.156854, 0.168612,
		35.400780, 29.880545, 30.989388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943947, 30.518250, 30.591150>,  <36.081963, 29.770746, 30.871361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943947, 30.518250, 30.591150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660545, 30.436497, 30.861336>,  <35.490505, 30.387445, 31.023447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.660545, 30.436497, 30.861336>,  <35.943947, 30.518250, 30.591150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660545, 30.436497, 30.861336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237369, 0.832360, 0.500832,
		-0.664590, 0.515176, -0.541215,
		-0.708503, -0.204381, 0.675465,
		35.447994, 30.375183, 31.063974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734524, 31.231689, 30.892897>,  <35.943947, 30.518250, 30.591150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734524, 31.231689, 30.892897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556728, 30.973255, 31.141090>,  <35.450050, 30.818195, 31.290007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556728, 30.973255, 31.141090>,  <35.734524, 31.231689, 30.892897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556728, 30.973255, 31.141090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197621, 0.604879, 0.771406,
		-0.873712, 0.465504, -0.141183,
		-0.444492, -0.646086, 0.620483,
		35.423382, 30.779428, 31.327236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209240, 31.593483, 31.250782>,  <35.734524, 31.231689, 30.892897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209240, 31.593483, 31.250782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296722, 31.297743, 31.505508>,  <35.349213, 31.120300, 31.658344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296722, 31.297743, 31.505508>,  <35.209240, 31.593483, 31.250782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296722, 31.297743, 31.505508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136880, 0.669406, 0.730178,
		-0.966143, -0.072527, 0.247605,
		0.218706, -0.739348, 0.636814,
		35.362335, 31.075939, 31.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910172, 31.794296, 31.983944>,  <35.209240, 31.593483, 31.250782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910172, 31.794296, 31.983944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193836, 31.520201, 32.050323>,  <35.364033, 31.355743, 32.090153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193836, 31.520201, 32.050323>,  <34.910172, 31.794296, 31.983944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193836, 31.520201, 32.050323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276145, 0.486520, 0.828880,
		-0.648719, -0.541982, 0.534246,
		0.709160, -0.685240, 0.165949,
		35.406586, 31.314629, 32.100109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805363, 31.483307, 32.605804>,  <34.910172, 31.794296, 31.983944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805363, 31.483307, 32.605804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200695, 31.452265, 32.553364>,  <35.437893, 31.433640, 32.521900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200695, 31.452265, 32.553364>,  <34.805363, 31.483307, 32.605804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200695, 31.452265, 32.553364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152344, 0.510126, 0.846500,
		0.001185, -0.856591, 0.515994,
		0.988327, -0.077605, -0.131101,
		35.497192, 31.428984, 32.514034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125015, 31.296455, 33.308563>,  <34.805363, 31.483307, 32.605804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125015, 31.296455, 33.308563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425598, 31.447645, 33.092251>,  <35.605949, 31.538359, 32.962463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425598, 31.447645, 33.092251>,  <35.125015, 31.296455, 33.308563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425598, 31.447645, 33.092251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175598, 0.675503, 0.716143,
		0.635980, -0.633114, 0.441243,
		0.751462, 0.377971, -0.540780,
		35.651035, 31.561037, 32.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614357, 31.351173, 33.930992>,  <35.125015, 31.296455, 33.308563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614357, 31.351173, 33.930992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739235, 31.561520, 33.614510>,  <35.814163, 31.687727, 33.424622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739235, 31.561520, 33.614510>,  <35.614357, 31.351173, 33.930992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739235, 31.561520, 33.614510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502508, 0.615378, 0.607286,
		0.806238, -0.587177, -0.072133,
		0.312195, 0.525865, -0.791202,
		35.832893, 31.719278, 33.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250767, 31.497595, 34.122780>,  <35.614357, 31.351173, 33.930992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250767, 31.497595, 34.122780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175507, 31.763647, 33.833725>,  <36.130352, 31.923279, 33.660294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175507, 31.763647, 33.833725>,  <36.250767, 31.497595, 34.122780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175507, 31.763647, 33.833725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468557, 0.707434, 0.529143,
		0.863165, -0.239036, -0.444756,
		-0.188151, 0.665131, -0.722634,
		36.119061, 31.963186, 33.616936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873970, 31.785227, 34.044670>,  <36.250767, 31.497595, 34.122780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873970, 31.785227, 34.044670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591064, 32.039040, 33.919994>,  <36.421322, 32.191326, 33.845188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591064, 32.039040, 33.919994>,  <36.873970, 31.785227, 34.044670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591064, 32.039040, 33.919994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402580, 0.723920, 0.560239,
		0.581125, 0.270759, -0.767452,
		-0.707264, 0.634530, -0.311686,
		36.378883, 32.229401, 33.826488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248322, 32.391327, 33.805454>,  <36.873970, 31.785227, 34.044670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248322, 32.391327, 33.805454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873928, 32.506004, 33.887180>,  <36.649292, 32.574810, 33.936218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873928, 32.506004, 33.887180>,  <37.248322, 32.391327, 33.805454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873928, 32.506004, 33.887180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350883, 0.806966, 0.475065,
		-0.028678, 0.516343, -0.855902,
		-0.935980, 0.286698, 0.204318,
		36.593136, 32.592014, 33.948475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257362, 33.121269, 33.621742>,  <37.248322, 32.391327, 33.805454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257362, 33.121269, 33.621742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959518, 33.045040, 33.877628>,  <36.780811, 32.999302, 34.031158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959518, 33.045040, 33.877628>,  <37.257362, 33.121269, 33.621742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959518, 33.045040, 33.877628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412224, 0.622493, 0.665262,
		-0.524998, 0.759068, -0.384958,
		-0.744613, -0.190572, 0.639714,
		36.736134, 32.987869, 34.069542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028954, 33.164814, 33.484459>,  <37.257362, 33.121269, 33.621742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028954, 33.164814, 33.484459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299236, 33.361229, 33.264530>,  <38.461407, 33.479076, 33.132572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299236, 33.361229, 33.264530>,  <38.028954, 33.164814, 33.484459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299236, 33.361229, 33.264530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374767, -0.413457, -0.829821,
		-0.634801, 0.766770, -0.095351,
		0.675705, 0.491037, -0.549823,
		38.501949, 33.508541, 33.099583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672165, 33.682663, 32.994389>,  <38.028954, 33.164814, 33.484459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672165, 33.682663, 32.994389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017941, 33.561760, 32.833698>,  <38.225407, 33.489220, 32.737286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017941, 33.561760, 32.833698>,  <37.672165, 33.682663, 32.994389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017941, 33.561760, 32.833698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473785, -0.222557, -0.852054,
		0.168133, 0.926881, -0.335593,
		0.864441, -0.302258, -0.401724,
		38.277271, 33.471081, 32.713181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678928, 33.951447, 32.320610>,  <37.672165, 33.682663, 32.994389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678928, 33.951447, 32.320610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954472, 33.661785, 32.307503>,  <38.119797, 33.487988, 32.299641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954472, 33.661785, 32.307503>,  <37.678928, 33.951447, 32.320610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954472, 33.661785, 32.307503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266051, -0.210522, -0.940690,
		0.674303, 0.656723, -0.337682,
		0.688862, -0.724151, -0.032766,
		38.161129, 33.444538, 32.297672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026806, 33.971260, 31.634857>,  <37.678928, 33.951447, 32.320610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026806, 33.971260, 31.634857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120415, 33.603668, 31.761797>,  <38.176582, 33.383114, 31.837961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120415, 33.603668, 31.761797>,  <38.026806, 33.971260, 31.634857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120415, 33.603668, 31.761797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214219, -0.367134, -0.905164,
		0.948337, 0.143849, -0.282781,
		0.234025, -0.918978, 0.317352,
		38.190620, 33.327976, 31.857002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299339, 33.712341, 31.090603>,  <38.026806, 33.971260, 31.634857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299339, 33.712341, 31.090603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196472, 33.396179, 31.313000>,  <38.134750, 33.206482, 31.446438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196472, 33.396179, 31.313000>,  <38.299339, 33.712341, 31.090603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196472, 33.396179, 31.313000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267797, -0.494521, -0.826882,
		0.928519, -0.361544, -0.084490,
		-0.257172, -0.790402, 0.555992,
		38.119320, 33.159058, 31.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624203, 33.136967, 30.670704>,  <38.299339, 33.712341, 31.090603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624203, 33.136967, 30.670704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344021, 32.999249, 30.920767>,  <38.175911, 32.916618, 31.070805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344021, 32.999249, 30.920767>,  <38.624203, 33.136967, 30.670704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344021, 32.999249, 30.920767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416050, -0.514731, -0.749636,
		0.579883, -0.785185, 0.217304,
		-0.700456, -0.344292, 0.625159,
		38.133884, 32.895962, 31.108315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564247, 32.614185, 30.364729>,  <38.624203, 33.136967, 30.670704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564247, 32.614185, 30.364729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248653, 32.588722, 30.609173>,  <38.059299, 32.573444, 30.755840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248653, 32.588722, 30.609173>,  <38.564247, 32.614185, 30.364729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248653, 32.588722, 30.609173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428112, -0.656474, -0.621098,
		0.440716, -0.751658, 0.490693,
		-0.788981, -0.063656, 0.611112,
		38.011959, 32.569626, 30.792507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478119, 31.975779, 30.593397>,  <38.564247, 32.614185, 30.364729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478119, 31.975779, 30.593397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110703, 32.132885, 30.611345>,  <37.890251, 32.227150, 30.622114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110703, 32.132885, 30.611345>,  <38.478119, 31.975779, 30.593397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110703, 32.132885, 30.611345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359361, -0.782293, -0.508800,
		-0.164736, -0.483480, 0.859715,
		-0.918543, 0.392765, 0.044872,
		37.835140, 32.250713, 30.624807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955868, 31.362373, 30.778297>,  <38.478119, 31.975779, 30.593397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955868, 31.362373, 30.778297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711407, 31.652485, 30.651512>,  <37.564732, 31.826551, 30.575441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711407, 31.652485, 30.651512>,  <37.955868, 31.362373, 30.778297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711407, 31.652485, 30.651512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465084, -0.653084, -0.597644,
		-0.640451, -0.217848, 0.736454,
		-0.611162, 0.725275, -0.316951,
		37.528061, 31.870068, 30.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281048, 31.059151, 30.783051>,  <37.955868, 31.362373, 30.778297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281048, 31.059151, 30.783051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257645, 31.371185, 30.533878>,  <37.243603, 31.558407, 30.384375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257645, 31.371185, 30.533878>,  <37.281048, 31.059151, 30.783051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257645, 31.371185, 30.533878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484401, -0.567802, -0.665550,
		-0.872887, 0.262806, 0.411097,
		-0.058511, 0.780086, -0.622931,
		37.240093, 31.605211, 30.346998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529907, 31.147377, 30.465151>,  <37.281048, 31.059151, 30.783051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529907, 31.147377, 30.465151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787891, 31.333801, 30.222893>,  <36.942684, 31.445656, 30.077538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787891, 31.333801, 30.222893>,  <36.529907, 31.147377, 30.465151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787891, 31.333801, 30.222893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241247, -0.627816, -0.740031,
		-0.725135, 0.623404, -0.292483,
		0.644964, 0.466062, -0.605646,
		36.981380, 31.473619, 30.041199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203758, 31.193008, 29.785112>,  <36.529907, 31.147377, 30.465151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203758, 31.193008, 29.785112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586529, 31.263931, 29.693159>,  <36.816193, 31.306484, 29.637987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586529, 31.263931, 29.693159>,  <36.203758, 31.193008, 29.785112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586529, 31.263931, 29.693159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164853, -0.319931, -0.932988,
		-0.238972, 0.930702, -0.276922,
		0.956930, 0.177307, -0.229884,
		36.873608, 31.317123, 29.624193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198677, 31.614904, 29.165785>,  <36.203758, 31.193008, 29.785112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198677, 31.614904, 29.165785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542057, 31.418612, 29.225439>,  <36.748085, 31.300837, 29.261232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542057, 31.418612, 29.225439>,  <36.198677, 31.614904, 29.165785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542057, 31.418612, 29.225439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092143, -0.433605, -0.896380,
		0.504549, 0.755757, -0.417446,
		0.858452, -0.490732, 0.149137,
		36.799591, 31.271391, 29.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652573, 31.881821, 28.585390>,  <36.198677, 31.614904, 29.165785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652573, 31.881821, 28.585390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720039, 31.526035, 28.755287>,  <36.760521, 31.312563, 28.857225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720039, 31.526035, 28.755287>,  <36.652573, 31.881821, 28.585390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720039, 31.526035, 28.755287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049010, -0.422814, -0.904890,
		0.984454, 0.173441, -0.027722,
		0.168666, -0.889464, 0.424741,
		36.770638, 31.259195, 28.882710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230770, 31.676674, 28.249340>,  <36.652573, 31.881821, 28.585390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230770, 31.676674, 28.249340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074100, 31.337837, 28.393019>,  <36.980099, 31.134535, 28.479227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074100, 31.337837, 28.393019>,  <37.230770, 31.676674, 28.249340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074100, 31.337837, 28.393019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112429, -0.431525, -0.895068,
		0.913209, -0.310192, 0.264255,
		-0.391676, -0.847093, 0.359198,
		36.956596, 31.083710, 28.500778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689754, 31.155264, 28.073975>,  <37.230770, 31.676674, 28.249340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689754, 31.155264, 28.073975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344425, 30.959814, 28.124443>,  <37.137226, 30.842545, 28.154724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344425, 30.959814, 28.124443>,  <37.689754, 31.155264, 28.073975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344425, 30.959814, 28.124443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291352, -0.686736, -0.665963,
		0.412052, -0.538182, 0.735237,
		-0.863323, -0.488624, 0.126170,
		37.085426, 30.813227, 28.162294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824829, 30.505121, 27.620565>,  <37.689754, 31.155264, 28.073975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824829, 30.505121, 27.620565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483494, 30.390533, 27.794807>,  <37.278694, 30.321781, 27.899353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483494, 30.390533, 27.794807>,  <37.824829, 30.505121, 27.620565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483494, 30.390533, 27.794807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091431, -0.740339, -0.665987,
		0.513279, -0.608140, 0.605566,
		-0.853338, -0.286470, 0.435604,
		37.227493, 30.304592, 27.925489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904362, 29.754923, 27.876066>,  <37.824829, 30.505121, 27.620565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904362, 29.754923, 27.876066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532253, 29.867062, 27.781416>,  <37.308987, 29.934345, 27.724625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532253, 29.867062, 27.781416>,  <37.904362, 29.754923, 27.876066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532253, 29.867062, 27.781416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003814, -0.637578, -0.770376,
		-0.366841, -0.717565, 0.592054,
		-0.930276, 0.280347, -0.236627,
		37.253170, 29.951166, 27.710428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.606213, 29.063862, 27.710051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372383, 29.338707, 27.537468>,  <37.232086, 29.503614, 27.433918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372383, 29.338707, 27.537468>,  <37.606213, 29.063862, 27.710051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372383, 29.338707, 27.537468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170932, -0.624140, -0.762385,
		-0.793133, -0.371918, 0.482303,
		-0.584570, 0.687114, -0.431454,
		37.197014, 29.544842, 27.408031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061108, 28.670176, 27.467464>,  <37.606213, 29.063862, 27.710051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061108, 28.670176, 27.467464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034790, 29.019762, 27.274858>,  <37.019001, 29.229513, 27.159294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034790, 29.019762, 27.274858>,  <37.061108, 28.670176, 27.467464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034790, 29.019762, 27.274858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435938, -0.459248, -0.773982,
		-0.897569, 0.158991, 0.411209,
		-0.065791, 0.873964, -0.481517,
		37.015053, 29.281952, 27.130404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456093, 28.642885, 27.092688>,  <37.061108, 28.670176, 27.467464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456093, 28.642885, 27.092688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655540, 28.934143, 26.904566>,  <36.775208, 29.108898, 26.791693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655540, 28.934143, 26.904566>,  <36.456093, 28.642885, 27.092688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655540, 28.934143, 26.904566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270568, -0.384714, -0.882490,
		-0.823512, 0.567275, 0.005186,
		0.498619, 0.728144, -0.470303,
		36.805126, 29.152586, 26.763475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088593, 28.957541, 26.410633>,  <36.456093, 28.642885, 27.092688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088593, 28.957541, 26.410633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485527, 29.006153, 26.401714>,  <36.723686, 29.035320, 26.396362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485527, 29.006153, 26.401714>,  <36.088593, 28.957541, 26.410633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485527, 29.006153, 26.401714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031360, -0.422265, -0.905930,
		-0.119515, 0.898289, -0.422840,
		0.992337, 0.121533, -0.022297,
		36.783230, 29.042612, 26.395025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162369, 28.945473, 25.647797>,  <36.088593, 28.957541, 26.410633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162369, 28.945473, 25.647797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526348, 28.910343, 25.809925>,  <36.744736, 28.889265, 25.907202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526348, 28.910343, 25.809925>,  <36.162369, 28.945473, 25.647797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526348, 28.910343, 25.809925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280873, -0.588569, -0.758088,
		0.305139, 0.803663, -0.510898,
		0.909946, -0.087825, 0.405322,
		36.799332, 28.883995, 25.931522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515419, 28.941605, 25.123161>,  <36.162369, 28.945473, 25.647797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515419, 28.941605, 25.123161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788960, 28.796570, 25.376421>,  <36.953083, 28.709549, 25.528376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788960, 28.796570, 25.376421>,  <36.515419, 28.941605, 25.123161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788960, 28.796570, 25.376421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326634, -0.623823, -0.710039,
		0.652422, 0.692370, -0.308171,
		0.683854, -0.362585, 0.633147,
		36.994114, 28.687794, 25.566364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188560, 28.801416, 24.675598>,  <36.515419, 28.941605, 25.123161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188560, 28.801416, 24.675598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202110, 28.583965, 25.011055>,  <37.210239, 28.453495, 25.212330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202110, 28.583965, 25.011055>,  <37.188560, 28.801416, 24.675598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202110, 28.583965, 25.011055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356836, -0.777240, -0.518234,
		0.933553, 0.316811, 0.167660,
		0.033870, -0.543626, 0.838644,
		37.212273, 28.420877, 25.262648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915089, 28.468338, 24.686047>,  <37.188560, 28.801416, 24.675598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915089, 28.468338, 24.686047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703636, 28.259148, 24.953491>,  <37.576763, 28.133633, 25.113958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703636, 28.259148, 24.953491>,  <37.915089, 28.468338, 24.686047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703636, 28.259148, 24.953491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498906, -0.828683, -0.253727,
		0.686761, 0.199446, 0.698986,
		-0.528633, -0.522977, 0.668612,
		37.545048, 28.102255, 25.154076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377895, 28.042904, 25.073446>,  <37.915089, 28.468338, 24.686047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377895, 28.042904, 25.073446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025833, 27.858900, 25.120289>,  <37.814594, 27.748497, 25.148396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025833, 27.858900, 25.120289>,  <38.377895, 28.042904, 25.073446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025833, 27.858900, 25.120289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413705, -0.864348, -0.285920,
		0.232749, -0.203207, 0.951070,
		-0.880157, -0.460010, 0.117108,
		37.761787, 27.720898, 25.155420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540092, 27.385420, 25.378958>,  <38.377895, 28.042904, 25.073446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540092, 27.385420, 25.378958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184826, 27.363766, 25.196428>,  <37.971664, 27.350773, 25.086910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184826, 27.363766, 25.196428>,  <38.540092, 27.385420, 25.378958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184826, 27.363766, 25.196428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324873, -0.776285, -0.540221,
		-0.324993, -0.628053, 0.707057,
		-0.888165, -0.054136, -0.456325,
		37.918377, 27.347525, 25.059530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332970, 26.626747, 25.438644>,  <38.540092, 27.385420, 25.378958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332970, 26.626747, 25.438644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140671, 26.790865, 25.128668>,  <38.025291, 26.889336, 24.942682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140671, 26.790865, 25.128668>,  <38.332970, 26.626747, 25.438644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140671, 26.790865, 25.128668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106696, -0.849834, -0.516138,
		-0.870343, -0.330816, 0.364779,
		-0.480749, 0.410297, -0.774944,
		37.996445, 26.913954, 24.896185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120277, 26.076653, 25.130560>,  <38.332970, 26.626747, 25.438644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120277, 26.076653, 25.130560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051090, 26.360872, 24.857737>,  <38.009579, 26.531404, 24.694042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051090, 26.360872, 24.857737>,  <38.120277, 26.076653, 25.130560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051090, 26.360872, 24.857737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017626, -0.694617, -0.719164,
		-0.984769, -0.112372, 0.132673,
		-0.172971, 0.710549, -0.682057,
		37.999199, 26.574038, 24.653120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606861, 25.817938, 24.611063>,  <38.120277, 26.076653, 25.130560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606861, 25.817938, 24.611063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806740, 26.111923, 24.427702>,  <37.926666, 26.288315, 24.317686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806740, 26.111923, 24.427702>,  <37.606861, 25.817938, 24.611063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806740, 26.111923, 24.427702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023913, -0.517302, -0.855469,
		-0.865871, 0.438436, -0.240919,
		0.499696, 0.734964, -0.458401,
		37.956650, 26.332413, 24.290182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251793, 25.907175, 24.022966>,  <37.606861, 25.817938, 24.611063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251793, 25.907175, 24.022966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610050, 26.066402, 23.943604>,  <37.825005, 26.161938, 23.895987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610050, 26.066402, 23.943604>,  <37.251793, 25.907175, 24.022966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610050, 26.066402, 23.943604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090720, -0.273207, -0.957668,
		-0.435422, 0.875729, -0.208584,
		0.895644, 0.398067, -0.198407,
		37.878742, 26.185822, 23.884081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116623, 26.292286, 23.451338>,  <37.251793, 25.907175, 24.022966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116623, 26.292286, 23.451338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510441, 26.222500, 23.457535>,  <37.746731, 26.180628, 23.461254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510441, 26.222500, 23.457535>,  <37.116623, 26.292286, 23.451338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510441, 26.222500, 23.457535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017485, -0.185918, -0.982410,
		0.174277, 0.966952, -0.186094,
		0.984541, -0.174465, 0.015494,
		37.805801, 26.170160, 23.462183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418018, 26.694460, 23.012646>,  <37.116623, 26.292286, 23.451338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418018, 26.694460, 23.012646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695923, 26.411324, 23.063660>,  <37.862667, 26.241442, 23.094269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695923, 26.411324, 23.063660>,  <37.418018, 26.694460, 23.012646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695923, 26.411324, 23.063660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140752, -0.040085, -0.989233,
		0.705331, 0.705235, 0.071780,
		0.694764, -0.707840, 0.127536,
		37.904350, 26.198971, 23.101921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883469, 26.873001, 22.575552>,  <37.418018, 26.694460, 23.012646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883469, 26.873001, 22.575552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005993, 26.502682, 22.664160>,  <38.079510, 26.280491, 22.717323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.005993, 26.502682, 22.664160>,  <37.883469, 26.873001, 22.575552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005993, 26.502682, 22.664160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178057, -0.172875, -0.968716,
		0.935130, 0.336173, 0.111891,
		0.306313, -0.925798, 0.221518,
		38.097885, 26.224943, 22.730616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445751, 26.746750, 22.257473>,  <37.883469, 26.873001, 22.575552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445751, 26.746750, 22.257473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340431, 26.364717, 22.311876>,  <38.277241, 26.135498, 22.344519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340431, 26.364717, 22.311876>,  <38.445751, 26.746750, 22.257473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340431, 26.364717, 22.311876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219915, -0.196690, -0.955484,
		0.939314, -0.221667, 0.261825,
		-0.263298, -0.955079, 0.136006,
		38.261440, 26.078194, 22.352678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980335, 26.362661, 21.886332>,  <38.445751, 26.746750, 22.257473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980335, 26.362661, 21.886332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664307, 26.119167, 21.915236>,  <38.474689, 25.973070, 21.932577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.664307, 26.119167, 21.915236>,  <38.980335, 26.362661, 21.886332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664307, 26.119167, 21.915236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164022, -0.323505, -0.931902,
		0.590660, -0.724419, 0.355440,
		-0.790074, -0.608737, 0.072261,
		38.427284, 25.936546, 21.936914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246052, 25.800385, 21.669958>,  <38.980335, 26.362661, 21.886332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246052, 25.800385, 21.669958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851204, 25.736994, 21.661270>,  <38.614296, 25.698959, 21.656057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851204, 25.736994, 21.661270>,  <39.246052, 25.800385, 21.669958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851204, 25.736994, 21.661270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053324, -0.198008, -0.978749,
		0.150807, -0.967305, 0.203909,
		-0.987124, -0.158476, -0.021719,
		38.555065, 25.689451, 21.654755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141438, 24.978100, 21.467640>,  <39.246052, 25.800385, 21.669958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141438, 24.978100, 21.467640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833332, 25.221447, 21.391132>,  <38.648468, 25.367455, 21.345228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833332, 25.221447, 21.391132>,  <39.141438, 24.978100, 21.467640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833332, 25.221447, 21.391132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006556, -0.307465, -0.951537,
		-0.637692, -0.731680, 0.240818,
		-0.770263, 0.608367, -0.191271,
		38.602253, 25.403957, 21.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678452, 24.665426, 20.973869>,  <39.141438, 24.978100, 21.467640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678452, 24.665426, 20.973869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571304, 25.048334, 20.930271>,  <38.507015, 25.278078, 20.904112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571304, 25.048334, 20.930271>,  <38.678452, 24.665426, 20.973869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571304, 25.048334, 20.930271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105150, -0.141501, -0.984338,
		-0.957700, -0.252215, 0.138561,
		-0.267871, 0.957269, -0.108995,
		38.490944, 25.335514, 20.897573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911373, 24.714954, 20.987793>,  <38.678452, 24.665426, 20.973869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911373, 24.714954, 20.987793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139675, 24.956091, 20.764788>,  <38.276657, 25.100773, 20.630985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139675, 24.956091, 20.764788>,  <37.911373, 24.714954, 20.987793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139675, 24.956091, 20.764788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348993, -0.436491, -0.829265,
		-0.743265, 0.667874, -0.038741,
		0.570755, 0.602843, -0.557512,
		38.310902, 25.136944, 20.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456490, 24.956341, 20.343801>,  <37.911373, 24.714954, 20.987793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456490, 24.956341, 20.343801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845718, 24.907692, 20.265476>,  <38.079254, 24.878502, 20.218481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845718, 24.907692, 20.265476>,  <37.456490, 24.956341, 20.343801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845718, 24.907692, 20.265476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230001, -0.568611, -0.789798,
		-0.015284, 0.813566, -0.581272,
		0.973070, -0.121622, -0.195811,
		38.137638, 24.871206, 20.206734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822628, 25.341219, 20.543451>,  <37.456490, 24.956341, 20.343801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822628, 25.341219, 20.543451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433563, 25.267956, 20.486338>,  <36.200127, 25.223999, 20.452068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433563, 25.267956, 20.486338>,  <36.822628, 25.341219, 20.543451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433563, 25.267956, 20.486338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216683, 0.494504, 0.841733,
		-0.083560, 0.849659, -0.520670,
		-0.972659, -0.183156, -0.142786,
		36.141766, 25.213009, 20.443502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519192, 25.887568, 20.812258>,  <36.822628, 25.341219, 20.543451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519192, 25.887568, 20.812258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206963, 25.637711, 20.803032>,  <36.019627, 25.487797, 20.797497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206963, 25.637711, 20.803032>,  <36.519192, 25.887568, 20.812258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206963, 25.637711, 20.803032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419667, 0.496372, 0.759931,
		-0.463235, 0.602859, -0.649595,
		-0.780572, -0.624640, -0.023063,
		35.972790, 25.450319, 20.796112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834240, 26.282366, 20.918327>,  <36.519192, 25.887568, 20.812258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834240, 26.282366, 20.918327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728458, 25.911934, 21.025986>,  <35.664989, 25.689674, 21.090580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728458, 25.911934, 21.025986>,  <35.834240, 26.282366, 20.918327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728458, 25.911934, 21.025986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492491, 0.369630, 0.787925,
		-0.829166, 0.075820, -0.553837,
		-0.264455, -0.926080, 0.269144,
		35.649120, 25.634109, 21.106730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130272, 26.136618, 20.971649>,  <35.834240, 26.282366, 20.918327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130272, 26.136618, 20.971649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281609, 25.866024, 21.224388>,  <35.372410, 25.703669, 21.376032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281609, 25.866024, 21.224388>,  <35.130272, 26.136618, 20.971649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281609, 25.866024, 21.224388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664492, 0.276731, 0.694169,
		-0.644444, -0.682489, -0.344818,
		0.378341, -0.676483, 0.631847,
		35.395111, 25.663080, 21.413942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550446, 25.945156, 21.301731>,  <35.130272, 26.136618, 20.971649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550446, 25.945156, 21.301731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838303, 25.788572, 21.531120>,  <35.011017, 25.694622, 21.668753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.838303, 25.788572, 21.531120>,  <34.550446, 25.945156, 21.301731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838303, 25.788572, 21.531120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551839, 0.178807, 0.814556,
		-0.421408, -0.902655, -0.087347,
		0.719645, -0.391462, 0.573471,
		35.054195, 25.671133, 21.703161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169216, 25.642590, 21.894463>,  <34.550446, 25.945156, 21.301731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169216, 25.642590, 21.894463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537296, 25.692696, 22.042807>,  <34.758144, 25.722759, 22.131813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537296, 25.692696, 22.042807>,  <34.169216, 25.642590, 21.894463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537296, 25.692696, 22.042807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388819, 0.183005, 0.902956,
		0.045240, -0.975099, 0.217107,
		0.920203, 0.125265, 0.370858,
		34.813358, 25.730276, 22.154064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078106, 25.372444, 22.547720>,  <34.169216, 25.642590, 21.894463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078106, 25.372444, 22.547720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431358, 25.558756, 22.570105>,  <34.643311, 25.670544, 22.583534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431358, 25.558756, 22.570105>,  <34.078106, 25.372444, 22.547720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431358, 25.558756, 22.570105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226705, 0.319290, 0.920141,
		0.410717, -0.825289, 0.387569,
		0.883128, 0.465781, 0.055959,
		34.696297, 25.698490, 22.586893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367599, 25.358528, 23.214035>,  <34.078106, 25.372444, 22.547720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367599, 25.358528, 23.214035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587433, 25.669077, 23.090612>,  <34.719334, 25.855406, 23.016558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587433, 25.669077, 23.090612>,  <34.367599, 25.358528, 23.214035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587433, 25.669077, 23.090612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070508, 0.411121, 0.908850,
		0.832460, -0.477730, 0.280684,
		0.549580, 0.776372, -0.308559,
		34.752308, 25.901989, 22.998045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991966, 25.343441, 23.604990>,  <34.367599, 25.358528, 23.214035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991966, 25.343441, 23.604990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927692, 25.716732, 23.476450>,  <34.889126, 25.940706, 23.399326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927692, 25.716732, 23.476450>,  <34.991966, 25.343441, 23.604990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927692, 25.716732, 23.476450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101038, 0.339425, 0.935191,
		0.981820, 0.117804, -0.148832,
		-0.160687, 0.933227, -0.321352,
		34.879486, 25.996700, 23.380045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457325, 25.748430, 23.990685>,  <34.991966, 25.343441, 23.604990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457325, 25.748430, 23.990685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194752, 26.023623, 23.866894>,  <35.037209, 26.188738, 23.792620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194752, 26.023623, 23.866894>,  <35.457325, 25.748430, 23.990685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194752, 26.023623, 23.866894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107694, 0.491501, 0.864192,
		0.746657, 0.533956, -0.396730,
		-0.656434, 0.687980, -0.309479,
		34.997822, 26.230017, 23.774050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812294, 26.416616, 24.085764>,  <35.457325, 25.748430, 23.990685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812294, 26.416616, 24.085764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416683, 26.475658, 24.088057>,  <35.179317, 26.511084, 24.089432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416683, 26.475658, 24.088057>,  <35.812294, 26.416616, 24.085764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416683, 26.475658, 24.088057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090698, 0.576189, 0.812268,
		0.116591, 0.803878, -0.583256,
		-0.989030, 0.147603, 0.005732,
		35.119976, 26.519939, 24.089777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808800, 27.169706, 24.221521>,  <35.812294, 26.416616, 24.085764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808800, 27.169706, 24.221521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457756, 26.991001, 24.291042>,  <35.247131, 26.883778, 24.332754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457756, 26.991001, 24.291042>,  <35.808800, 27.169706, 24.221521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457756, 26.991001, 24.291042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098498, 0.522877, 0.846698,
		-0.469149, 0.725951, -0.502886,
		-0.877609, -0.446761, 0.173803,
		35.194473, 26.856974, 24.343184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359718, 27.726156, 24.507401>,  <35.808800, 27.169706, 24.221521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359718, 27.726156, 24.507401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196926, 27.377987, 24.618204>,  <35.099251, 27.169086, 24.684687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196926, 27.377987, 24.618204>,  <35.359718, 27.726156, 24.507401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196926, 27.377987, 24.618204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149552, 0.362664, 0.919842,
		-0.901112, 0.332929, -0.277770,
		-0.406979, -0.870421, 0.277011,
		35.074833, 27.116861, 24.701307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720078, 27.848680, 25.034216>,  <35.359718, 27.726156, 24.507401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720078, 27.848680, 25.034216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846558, 27.476789, 25.109711>,  <34.922447, 27.253654, 25.155008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846558, 27.476789, 25.109711>,  <34.720078, 27.848680, 25.034216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846558, 27.476789, 25.109711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047084, 0.214079, 0.975681,
		-0.947524, -0.299623, 0.111467,
		0.316199, -0.929729, 0.188738,
		34.941418, 27.197870, 25.166332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317730, 27.527657, 25.576651>,  <34.720078, 27.848680, 25.034216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317730, 27.527657, 25.576651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652943, 27.309858, 25.590673>,  <34.854069, 27.179180, 25.599087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652943, 27.309858, 25.590673>,  <34.317730, 27.527657, 25.576651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652943, 27.309858, 25.590673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112785, 0.235731, 0.965252,
		-0.533838, -0.804958, 0.258960,
		0.838032, -0.544494, 0.035055,
		34.904354, 27.146509, 25.601191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290596, 27.164101, 26.230963>,  <34.317730, 27.527657, 25.576651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290596, 27.164101, 26.230963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673237, 27.122328, 26.122145>,  <34.902821, 27.097263, 26.056854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673237, 27.122328, 26.122145>,  <34.290596, 27.164101, 26.230963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673237, 27.122328, 26.122145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289676, 0.239279, 0.926733,
		-0.031687, -0.965318, 0.259146,
		0.956600, -0.104434, -0.272047,
		34.960217, 27.090998, 26.040531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504887, 26.749689, 26.775730>,  <34.290596, 27.164101, 26.230963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504887, 26.749689, 26.775730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839260, 26.905336, 26.620911>,  <35.039883, 26.998724, 26.528019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839260, 26.905336, 26.620911>,  <34.504887, 26.749689, 26.775730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839260, 26.905336, 26.620911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316224, 0.234914, 0.919140,
		0.448577, -0.890731, 0.073324,
		0.835931, 0.389118, -0.387047,
		35.090038, 27.022072, 26.504797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110474, 26.555971, 27.202957>,  <34.504887, 26.749689, 26.775730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110474, 26.555971, 27.202957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243771, 26.857874, 26.976936>,  <35.323750, 27.039017, 26.841324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243771, 26.857874, 26.976936>,  <35.110474, 26.555971, 27.202957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243771, 26.857874, 26.976936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361892, 0.451011, 0.815857,
		0.870621, -0.476370, -0.122844,
		0.333246, 0.754759, -0.565054,
		35.343746, 27.084301, 26.807421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808807, 26.686569, 27.446178>,  <35.110474, 26.555971, 27.202957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808807, 26.686569, 27.446178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667084, 27.019991, 27.276636>,  <35.582050, 27.220043, 27.174911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667084, 27.019991, 27.276636>,  <35.808807, 26.686569, 27.446178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667084, 27.019991, 27.276636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267854, 0.524729, 0.808031,
		0.895947, 0.172760, -0.409187,
		-0.354308, 0.833555, -0.423855,
		35.560791, 27.270058, 27.149479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337540, 27.247458, 27.654316>,  <35.808807, 26.686569, 27.446178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337540, 27.247458, 27.654316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977989, 27.401340, 27.570389>,  <35.762260, 27.493671, 27.520033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977989, 27.401340, 27.570389>,  <36.337540, 27.247458, 27.654316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977989, 27.401340, 27.570389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024017, 0.521339, 0.853011,
		0.437546, 0.761712, -0.477858,
		-0.898875, 0.384709, -0.209816,
		35.708328, 27.516752, 27.507444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.072422, 31.433226, 29.318504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688110, 31.397486, 29.423519>,  <37.457523, 31.376041, 29.486528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.688110, 31.397486, 29.423519>,  <38.072422, 31.433226, 29.318504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688110, 31.397486, 29.423519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126113, 0.702359, 0.700562,
		-0.246991, 0.706193, -0.663541,
		-0.960776, -0.089351, 0.262537,
		37.399876, 31.370680, 29.502279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768528, 32.150349, 29.254198>,  <38.072422, 31.433226, 29.318504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768528, 32.150349, 29.254198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546329, 31.937901, 29.510115>,  <37.413010, 31.810432, 29.663666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.546329, 31.937901, 29.510115>,  <37.768528, 32.150349, 29.254198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546329, 31.937901, 29.510115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149541, 0.693073, 0.705186,
		-0.817961, 0.487404, -0.305577,
		-0.555498, -0.531119, 0.639793,
		37.379681, 31.778564, 29.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136856, 32.617756, 29.541716>,  <37.768528, 32.150349, 29.254198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136856, 32.617756, 29.541716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.177216, 32.305367, 29.788260>,  <37.201431, 32.117931, 29.936186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.177216, 32.305367, 29.788260>,  <37.136856, 32.617756, 29.541716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177216, 32.305367, 29.788260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081976, 0.623943, 0.777158,
		-0.991514, -0.027887, 0.126976,
		0.100898, -0.780972, 0.616362,
		37.207485, 32.071075, 29.973167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853119, 32.851452, 30.100370>,  <37.136856, 32.617756, 29.541716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853119, 32.851452, 30.100370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070675, 32.541939, 30.230257>,  <37.201210, 32.356232, 30.308189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070675, 32.541939, 30.230257>,  <36.853119, 32.851452, 30.100370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070675, 32.541939, 30.230257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220800, 0.505282, 0.834228,
		-0.809586, -0.382031, 0.445670,
		0.543891, -0.773784, 0.324717,
		37.233841, 32.309803, 30.327673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708244, 32.878315, 30.772215>,  <36.853119, 32.851452, 30.100370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708244, 32.878315, 30.772215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043041, 32.662338, 30.736639>,  <37.243919, 32.532753, 30.715294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043041, 32.662338, 30.736639>,  <36.708244, 32.878315, 30.772215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043041, 32.662338, 30.736639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299731, 0.316373, 0.900039,
		-0.457834, -0.779979, 0.426639,
		0.836988, -0.539945, -0.088938,
		37.294136, 32.500355, 30.709957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849060, 32.632030, 31.428677>,  <36.708244, 32.878315, 30.772215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849060, 32.632030, 31.428677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206074, 32.576096, 31.257177>,  <37.420284, 32.542534, 31.154278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206074, 32.576096, 31.257177>,  <36.849060, 32.632030, 31.428677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206074, 32.576096, 31.257177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446189, 0.411964, 0.794481,
		0.065526, -0.900406, 0.430089,
		0.892537, -0.139842, -0.428746,
		37.473835, 32.534142, 31.128553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312126, 32.362823, 31.926033>,  <36.849060, 32.632030, 31.428677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312126, 32.362823, 31.926033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579365, 32.513268, 31.669224>,  <37.739708, 32.603535, 31.515139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579365, 32.513268, 31.669224>,  <37.312126, 32.362823, 31.926033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579365, 32.513268, 31.669224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533376, 0.359542, 0.765663,
		0.518808, -0.853973, 0.039599,
		0.668093, 0.376111, -0.642022,
		37.779793, 32.626102, 31.476618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943295, 32.126331, 32.164150>,  <37.312126, 32.362823, 31.926033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943295, 32.126331, 32.164150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003723, 32.459816, 31.951696>,  <38.039978, 32.659908, 31.824224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003723, 32.459816, 31.951696>,  <37.943295, 32.126331, 32.164150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003723, 32.459816, 31.951696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591522, 0.354246, 0.724300,
		0.792010, -0.423596, -0.439644,
		0.151069, 0.833712, -0.531133,
		38.049046, 32.709930, 31.792356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679817, 32.204235, 32.144955>,  <37.943295, 32.126331, 32.164150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679817, 32.204235, 32.144955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517300, 32.560577, 32.063663>,  <38.419788, 32.774384, 32.014889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517300, 32.560577, 32.063663>,  <38.679817, 32.204235, 32.144955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517300, 32.560577, 32.063663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623826, 0.432952, 0.650687,
		0.667656, 0.137592, -0.731645,
		-0.406297, 0.890854, -0.203230,
		38.395412, 32.827835, 32.002693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223366, 32.680069, 32.154083>,  <38.679817, 32.204235, 32.144955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223366, 32.680069, 32.154083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895153, 32.901211, 32.212154>,  <38.698227, 33.033897, 32.246998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.895153, 32.901211, 32.212154>,  <39.223366, 32.680069, 32.154083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895153, 32.901211, 32.212154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484328, 0.537559, 0.690258,
		0.303572, 0.636693, -0.708848,
		-0.820531, 0.552858, 0.145181,
		38.648994, 33.067070, 32.255707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485695, 33.353718, 32.326054>,  <39.223366, 32.680069, 32.154083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485695, 33.353718, 32.326054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106621, 33.371891, 32.452435>,  <38.879177, 33.382793, 32.528263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106621, 33.371891, 32.452435>,  <39.485695, 33.353718, 32.326054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106621, 33.371891, 32.452435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292321, 0.521086, 0.801884,
		-0.128206, 0.852294, -0.507107,
		-0.947687, 0.045432, 0.315950,
		38.822315, 33.385521, 32.547218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413311, 34.089165, 32.357296>,  <39.485695, 33.353718, 32.326054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413311, 34.089165, 32.357296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153423, 33.898350, 32.594040>,  <38.997490, 33.783859, 32.736088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.153423, 33.898350, 32.594040>,  <39.413311, 34.089165, 32.357296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153423, 33.898350, 32.594040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321443, 0.533147, 0.782579,
		-0.688870, 0.698704, -0.193053,
		-0.649717, -0.477040, 0.591862,
		38.958508, 33.755238, 32.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203388, 34.564781, 32.885136>,  <39.413311, 34.089165, 32.357296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203388, 34.564781, 32.885136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.100777, 34.205460, 33.027824>,  <39.039211, 33.989868, 33.113438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.100777, 34.205460, 33.027824>,  <39.203388, 34.564781, 32.885136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100777, 34.205460, 33.027824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180976, 0.317901, 0.930691,
		-0.949444, 0.303303, 0.081021,
		-0.256524, -0.898302, 0.356720,
		39.023819, 33.935970, 33.134842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492226, 34.938568, 32.498409>,  <39.203388, 34.564781, 32.885136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492226, 34.938568, 32.498409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855282, 35.088070, 32.421993>,  <40.073116, 35.177773, 32.376144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855282, 35.088070, 32.421993>,  <39.492226, 34.938568, 32.498409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855282, 35.088070, 32.421993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363030, 0.470526, -0.804248,
		-0.210703, 0.799320, 0.562753,
		0.907642, 0.373754, -0.191036,
		40.127575, 35.200195, 32.364681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610661, 35.634113, 32.920490>,  <39.492226, 34.938568, 32.498409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610661, 35.634113, 32.920490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615807, 36.015118, 32.798801>,  <39.618896, 36.243721, 32.725788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615807, 36.015118, 32.798801>,  <39.610661, 35.634113, 32.920490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615807, 36.015118, 32.798801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474393, -0.262011, -0.840417,
		-0.880219, 0.155136, 0.448495,
		0.012868, 0.952514, -0.304223,
		39.619667, 36.300873, 32.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922470, 35.754913, 32.668079>,  <39.610661, 35.634113, 32.920490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922470, 35.754913, 32.668079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206711, 35.979500, 32.498470>,  <39.377254, 36.114250, 32.396706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206711, 35.979500, 32.498470>,  <38.922470, 35.754913, 32.668079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206711, 35.979500, 32.498470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347995, -0.243314, -0.905372,
		-0.611507, 0.790919, 0.022487,
		0.710604, 0.561467, -0.424024,
		39.419891, 36.147942, 32.371262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572311, 35.894917, 32.087498>,  <38.922470, 35.754913, 32.668079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572311, 35.894917, 32.087498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939682, 36.032482, 32.009304>,  <39.160107, 36.115021, 31.962387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939682, 36.032482, 32.009304>,  <38.572311, 35.894917, 32.087498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939682, 36.032482, 32.009304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127707, -0.209943, -0.969337,
		-0.374406, 0.915232, -0.148898,
		0.918429, 0.343910, -0.195485,
		39.215210, 36.135654, 31.950659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537666, 36.307541, 31.604202>,  <38.572311, 35.894917, 32.087498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537666, 36.307541, 31.604202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922737, 36.202103, 31.579676>,  <39.153782, 36.138840, 31.564960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922737, 36.202103, 31.579676>,  <38.537666, 36.307541, 31.604202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922737, 36.202103, 31.579676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108148, -0.166999, -0.980008,
		0.248090, 0.950067, -0.189274,
		0.962681, -0.263600, -0.061317,
		39.211540, 36.123024, 31.561281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707375, 36.726353, 30.997992>,  <38.537666, 36.307541, 31.604202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707375, 36.726353, 30.997992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998859, 36.458618, 31.055920>,  <39.173752, 36.297977, 31.090677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998859, 36.458618, 31.055920>,  <38.707375, 36.726353, 30.997992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998859, 36.458618, 31.055920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059854, -0.272912, -0.960175,
		0.682201, 0.691022, -0.238936,
		0.728711, -0.669334, 0.144821,
		39.217472, 36.257816, 31.099365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062996, 36.853951, 30.425249>,  <38.707375, 36.726353, 30.997992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062996, 36.853951, 30.425249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146935, 36.484592, 30.553818>,  <39.197296, 36.262978, 30.630959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146935, 36.484592, 30.553818>,  <39.062996, 36.853951, 30.425249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146935, 36.484592, 30.553818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156604, -0.356241, -0.921177,
		0.965111, 0.142971, -0.219363,
		0.209848, -0.923392, 0.321422,
		39.209888, 36.207577, 30.650244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560040, 36.444080, 29.979849>,  <39.062996, 36.853951, 30.425249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560040, 36.444080, 29.979849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350235, 36.155697, 30.161005>,  <39.224350, 35.982666, 30.269699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350235, 36.155697, 30.161005>,  <39.560040, 36.444080, 29.979849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350235, 36.155697, 30.161005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091611, -0.481053, -0.871892,
		0.846459, -0.498808, 0.186271,
		-0.524513, -0.720956, 0.452888,
		39.192883, 35.939411, 30.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868084, 35.812428, 29.790771>,  <39.560040, 36.444080, 29.979849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868084, 35.812428, 29.790771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517914, 35.685402, 29.936527>,  <39.307812, 35.609188, 30.023981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517914, 35.685402, 29.936527>,  <39.868084, 35.812428, 29.790771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517914, 35.685402, 29.936527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068729, -0.664438, -0.744176,
		0.478436, -0.676517, 0.559843,
		-0.875429, -0.317563, 0.364387,
		39.255283, 35.590134, 30.045843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865105, 35.115356, 29.764936>,  <39.868084, 35.812428, 29.790771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865105, 35.115356, 29.764936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485199, 35.240547, 29.765240>,  <39.257256, 35.315662, 29.765421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485199, 35.240547, 29.765240>,  <39.865105, 35.115356, 29.764936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485199, 35.240547, 29.765240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187039, -0.565644, -0.803158,
		-0.250943, -0.762949, 0.595765,
		-0.949760, 0.312978, 0.000756,
		39.200272, 35.334442, 29.765467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367172, 34.512962, 29.612619>,  <39.865105, 35.115356, 29.764936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367172, 34.512962, 29.612619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170650, 34.845749, 29.509512>,  <39.052738, 35.045422, 29.447647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170650, 34.845749, 29.509512>,  <39.367172, 34.512962, 29.612619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170650, 34.845749, 29.509512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298554, -0.438885, -0.847494,
		-0.818220, -0.339421, 0.464015,
		-0.491306, 0.831970, -0.257769,
		39.023258, 35.095341, 29.432180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751038, 34.256702, 29.393026>,  <39.367172, 34.512962, 29.612619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751038, 34.256702, 29.393026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 34.629951, 29.249348>,  <38.740551, 34.853901, 29.163141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744484, 34.629951, 29.249348>,  <38.751038, 34.256702, 29.393026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744484, 34.629951, 29.249348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393923, -0.336215, -0.855444,
		-0.918997, 0.127476, 0.373087,
		-0.016388, 0.933118, -0.359197,
		38.739567, 34.909885, 29.141588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038361, 34.375141, 29.151638>,  <38.751038, 34.256702, 29.393026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038361, 34.375141, 29.151638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256149, 34.651150, 28.960882>,  <38.386822, 34.816753, 28.846428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256149, 34.651150, 28.960882>,  <38.038361, 34.375141, 29.151638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256149, 34.651150, 28.960882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511087, -0.177899, -0.840917,
		-0.665089, 0.701586, 0.255801,
		0.544469, 0.690021, -0.476890,
		38.419491, 34.858154, 28.817816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599957, 34.506996, 28.672081>,  <38.038361, 34.375141, 29.151638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599957, 34.506996, 28.672081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939907, 34.663929, 28.531355>,  <38.143879, 34.758091, 28.446918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939907, 34.663929, 28.531355>,  <37.599957, 34.506996, 28.672081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939907, 34.663929, 28.531355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357029, -0.062353, -0.932010,
		-0.387598, 0.917706, 0.087083,
		0.849881, 0.392337, -0.351816,
		38.194870, 34.781631, 28.425810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431396, 35.072735, 28.146708>,  <37.599957, 34.506996, 28.672081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431396, 35.072735, 28.146708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.801086, 34.932934, 28.085178>,  <38.022900, 34.849052, 28.048262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.801086, 34.932934, 28.085178>,  <37.431396, 35.072735, 28.146708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801086, 34.932934, 28.085178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279496, -0.344696, -0.896140,
		0.260179, 0.871226, -0.416260,
		0.924224, -0.349499, -0.153821,
		38.078354, 34.828083, 28.039032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313923, 35.791386, 27.839334>,  <37.431396, 35.072735, 28.146708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313923, 35.791386, 27.839334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.962723, 35.946262, 27.726761>,  <36.752003, 36.039188, 27.659216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.962723, 35.946262, 27.726761>,  <37.313923, 35.791386, 27.839334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962723, 35.946262, 27.726761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044574, 0.519266, 0.853449,
		0.476587, 0.761870, -0.438655,
		-0.877997, 0.387190, -0.281435,
		36.699326, 36.062420, 27.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406738, 36.397549, 28.047966>,  <37.313923, 35.791386, 27.839334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406738, 36.397549, 28.047966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010151, 36.362232, 28.009590>,  <36.772198, 36.341042, 27.986565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010151, 36.362232, 28.009590>,  <37.406738, 36.397549, 28.047966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010151, 36.362232, 28.009590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121348, 0.355757, 0.926667,
		-0.047685, 0.930398, -0.363434,
		-0.991464, -0.088290, -0.095938,
		36.712711, 36.335747, 27.980808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110985, 37.048424, 28.180950>,  <37.406738, 36.397549, 28.047966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110985, 37.048424, 28.180950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821693, 36.780731, 28.249153>,  <36.648121, 36.620117, 28.290075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821693, 36.780731, 28.249153>,  <37.110985, 37.048424, 28.180950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821693, 36.780731, 28.249153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240231, 0.475262, 0.846413,
		-0.647483, 0.571186, -0.504492,
		-0.723225, -0.669233, 0.170507,
		36.604725, 36.579960, 28.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544956, 37.432949, 28.473183>,  <37.110985, 37.048424, 28.180950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544956, 37.432949, 28.473183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445854, 37.064243, 28.592493>,  <36.386395, 36.843021, 28.664080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445854, 37.064243, 28.592493>,  <36.544956, 37.432949, 28.473183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445854, 37.064243, 28.592493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260988, 0.359990, 0.895708,
		-0.933008, 0.144067, -0.329758,
		-0.247751, -0.921766, 0.298274,
		36.371529, 36.787712, 28.681974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234577, 37.570087, 29.101238>,  <36.544956, 37.432949, 28.473183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234577, 37.570087, 29.101238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282589, 37.174126, 29.131399>,  <36.311394, 36.936550, 29.149496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282589, 37.174126, 29.131399>,  <36.234577, 37.570087, 29.101238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282589, 37.174126, 29.131399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105576, 0.062792, 0.992427,
		-0.987141, -0.127079, -0.096973,
		0.120028, -0.989903, 0.075401,
		36.318596, 36.877155, 29.154020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697388, 37.213612, 29.624041>,  <36.234577, 37.570087, 29.101238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697388, 37.213612, 29.624041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996235, 36.948578, 29.602913>,  <36.175545, 36.789558, 29.590237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.996235, 36.948578, 29.602913>,  <35.697388, 37.213612, 29.624041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996235, 36.948578, 29.602913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040593, -0.033834, 0.998603,
		-0.663448, -0.748220, 0.001618,
		0.747120, -0.662587, -0.052820,
		36.220371, 36.749802, 29.587067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429184, 36.580791, 29.940981>,  <35.697388, 37.213612, 29.624041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429184, 36.580791, 29.940981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.828636, 36.560658, 29.935301>,  <36.068306, 36.548576, 29.931892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.828636, 36.560658, 29.935301>,  <35.429184, 36.580791, 29.940981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828636, 36.560658, 29.935301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005027, -0.362657, 0.931909,
		-0.052060, -0.930562, -0.362414,
		0.998631, -0.050337, -0.014202,
		36.128227, 36.545555, 29.931040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522110, 36.035088, 30.309858>,  <35.429184, 36.580791, 29.940981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522110, 36.035088, 30.309858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887264, 36.197487, 30.292912>,  <36.106358, 36.294926, 30.282743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887264, 36.197487, 30.292912>,  <35.522110, 36.035088, 30.309858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887264, 36.197487, 30.292912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175518, -0.296692, 0.938705,
		0.368545, -0.864371, -0.342107,
		0.912890, 0.406001, -0.042369,
		36.161133, 36.319286, 30.280201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930759, 35.471146, 30.594282>,  <35.522110, 36.035088, 30.309858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930759, 35.471146, 30.594282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101749, 35.831161, 30.628208>,  <36.204342, 36.047173, 30.648563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101749, 35.831161, 30.628208>,  <35.930759, 35.471146, 30.594282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101749, 35.831161, 30.628208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282206, -0.221982, 0.933319,
		0.858853, -0.375031, -0.348888,
		0.427470, 0.900042, 0.084814,
		36.229992, 36.101173, 30.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581959, 35.319519, 30.681107>,  <35.930759, 35.471146, 30.594282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581959, 35.319519, 30.681107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548489, 35.698391, 30.804947>,  <36.528408, 35.925713, 30.879251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548489, 35.698391, 30.804947>,  <36.581959, 35.319519, 30.681107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548489, 35.698391, 30.804947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262728, -0.278727, 0.923734,
		0.961235, 0.158634, -0.225528,
		-0.083675, 0.947178, 0.309599,
		36.523388, 35.982544, 30.897827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184593, 35.507206, 31.099276>,  <36.581959, 35.319519, 30.681107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184593, 35.507206, 31.099276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.878658, 35.721989, 31.241657>,  <36.695099, 35.850861, 31.327085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.878658, 35.721989, 31.241657>,  <37.184593, 35.507206, 31.099276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878658, 35.721989, 31.241657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361565, -0.099522, 0.927020,
		0.533197, 0.837717, -0.118028,
		-0.764834, 0.536959, 0.355954,
		36.649208, 35.883076, 31.348444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464321, 35.887520, 31.597334>,  <37.184593, 35.507206, 31.099276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464321, 35.887520, 31.597334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075001, 35.917393, 31.684153>,  <36.841408, 35.935318, 31.736244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075001, 35.917393, 31.684153>,  <37.464321, 35.887520, 31.597334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075001, 35.917393, 31.684153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214307, -0.043032, 0.975818,
		0.082215, 0.996279, 0.025878,
		-0.973300, 0.074681, 0.217048,
		36.783012, 35.939796, 31.749268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.340282, 34.539654, 24.371847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941540, 34.508488, 24.366121>,  <36.702293, 34.489788, 24.362686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941540, 34.508488, 24.366121>,  <37.340282, 34.539654, 24.371847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941540, 34.508488, 24.366121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056465, 0.572068, 0.818261,
		-0.055564, 0.816497, -0.574669,
		-0.996857, -0.077915, -0.014317,
		36.642483, 34.485115, 24.361826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973133, 35.253231, 24.383419>,  <37.340282, 34.539654, 24.371847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973133, 35.253231, 24.383419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 34.979664, 24.550924>,  <36.590797, 34.815525, 24.651428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 34.979664, 24.550924>,  <36.973133, 35.253231, 24.383419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734173, 34.979664, 24.550924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028220, 0.503937, 0.863280,
		-0.801443, 0.527545, -0.281755,
		-0.597405, -0.683918, 0.418764,
		36.554951, 34.774487, 24.676554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561852, 35.641609, 24.738096>,  <36.973133, 35.253231, 24.383419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561852, 35.641609, 24.738096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476597, 35.296810, 24.922068>,  <36.425446, 35.089931, 25.032450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476597, 35.296810, 24.922068>,  <36.561852, 35.641609, 24.738096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476597, 35.296810, 24.922068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164157, 0.495644, 0.852871,
		-0.963134, 0.106274, -0.247141,
		-0.213132, -0.861999, 0.459926,
		36.412659, 35.038212, 25.060045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849487, 35.651443, 24.967216>,  <36.561852, 35.641609, 24.738096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849487, 35.651443, 24.967216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060932, 35.395348, 25.190165>,  <36.187798, 35.241688, 25.323933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060932, 35.395348, 25.190165>,  <35.849487, 35.651443, 24.967216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060932, 35.395348, 25.190165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137998, 0.583055, 0.800627,
		-0.837572, -0.500136, 0.219857,
		0.528612, -0.640243, 0.557368,
		36.219517, 35.203274, 25.357374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440086, 35.610668, 25.608860>,  <35.849487, 35.651443, 24.967216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440086, 35.610668, 25.608860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798859, 35.458389, 25.698816>,  <36.014122, 35.367020, 25.752790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798859, 35.458389, 25.698816>,  <35.440086, 35.610668, 25.608860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798859, 35.458389, 25.698816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014742, 0.482586, 0.875724,
		-0.441917, -0.788783, 0.427236,
		0.896935, -0.380699, 0.224891,
		36.067940, 35.344181, 25.766283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345604, 35.422314, 26.275835>,  <35.440086, 35.610668, 25.608860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345604, 35.422314, 26.275835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738766, 35.433395, 26.203018>,  <35.974663, 35.440044, 26.159328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738766, 35.433395, 26.203018>,  <35.345604, 35.422314, 26.275835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738766, 35.433395, 26.203018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157136, 0.389186, 0.907658,
		0.095990, -0.920743, 0.378178,
		0.982901, 0.027701, -0.182040,
		36.033634, 35.441708, 26.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625538, 35.071537, 26.805107>,  <35.345604, 35.422314, 26.275835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625538, 35.071537, 26.805107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904781, 35.328850, 26.679350>,  <36.072327, 35.483238, 26.603895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904781, 35.328850, 26.679350>,  <35.625538, 35.071537, 26.805107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904781, 35.328850, 26.679350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185396, 0.261719, 0.947170,
		0.691577, -0.719511, 0.063446,
		0.698105, 0.643278, -0.314393,
		36.114212, 35.521832, 26.585032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218151, 34.959446, 27.213783>,  <35.625538, 35.071537, 26.805107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218151, 34.959446, 27.213783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271400, 35.328041, 27.067833>,  <36.303352, 35.549198, 26.980263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271400, 35.328041, 27.067833>,  <36.218151, 34.959446, 27.213783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271400, 35.328041, 27.067833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069395, 0.358580, 0.930916,
		0.988667, -0.149251, -0.016210,
		0.133127, 0.921490, -0.364874,
		36.311340, 35.604488, 26.958370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818077, 35.190128, 27.501650>,  <36.218151, 34.959446, 27.213783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818077, 35.190128, 27.501650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634201, 35.527691, 27.391016>,  <36.523876, 35.730228, 27.324636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634201, 35.527691, 27.391016>,  <36.818077, 35.190128, 27.501650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634201, 35.527691, 27.391016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158532, 0.384418, 0.909445,
		0.873814, 0.374217, -0.310501,
		-0.459692, 0.843910, -0.276585,
		36.496292, 35.780865, 27.308041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637592, 35.223778, 27.356884>,  <36.818077, 35.190128, 27.501650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637592, 35.223778, 27.356884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880627, 34.927979, 27.472809>,  <38.026447, 34.750500, 27.542364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880627, 34.927979, 27.472809>,  <37.637592, 35.223778, 27.356884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880627, 34.927979, 27.472809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098399, -0.432157, -0.896414,
		0.788137, 0.516128, -0.335337,
		0.607583, -0.739494, 0.289813,
		38.062901, 34.706131, 27.559753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174980, 35.126080, 26.750195>,  <37.637592, 35.223778, 27.356884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174980, 35.126080, 26.750195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176731, 34.790100, 26.967251>,  <38.177784, 34.588512, 27.097485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176731, 34.790100, 26.967251>,  <38.174980, 35.126080, 26.750195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176731, 34.790100, 26.967251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083916, -0.540425, -0.837197,
		0.996463, 0.049203, 0.068118,
		0.004380, -0.839952, 0.542642,
		38.178043, 34.538113, 27.130043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719383, 34.754341, 26.480213>,  <38.174980, 35.126080, 26.750195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719383, 34.754341, 26.480213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513290, 34.463863, 26.662279>,  <38.389633, 34.289577, 26.771519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513290, 34.463863, 26.662279>,  <38.719383, 34.754341, 26.480213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513290, 34.463863, 26.662279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260637, -0.638693, -0.723974,
		0.816458, -0.254383, 0.518350,
		-0.515233, -0.726196, 0.455164,
		38.358719, 34.246006, 26.798828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201458, 34.145573, 26.371008>,  <38.719383, 34.754341, 26.480213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201458, 34.145573, 26.371008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858700, 33.990818, 26.507275>,  <38.653046, 33.897964, 26.589035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858700, 33.990818, 26.507275>,  <39.201458, 34.145573, 26.371008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858700, 33.990818, 26.507275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096126, -0.769183, -0.631757,
		0.506453, -0.508601, 0.696297,
		-0.856893, -0.386887, 0.340665,
		38.601631, 33.874752, 26.609474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326080, 33.444412, 26.676046>,  <39.201458, 34.145573, 26.371008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326080, 33.444412, 26.676046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938774, 33.455547, 26.576702>,  <38.706390, 33.462231, 26.517096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938774, 33.455547, 26.576702>,  <39.326080, 33.444412, 26.676046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938774, 33.455547, 26.576702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124888, -0.806897, -0.577339,
		-0.216476, -0.590035, 0.777815,
		-0.968267, 0.027840, -0.248362,
		38.648293, 33.463898, 26.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916061, 32.757748, 26.856457>,  <39.326080, 33.444412, 26.676046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916061, 32.757748, 26.856457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698586, 32.946472, 26.578810>,  <38.568100, 33.059708, 26.412222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698586, 32.946472, 26.578810>,  <38.916061, 32.757748, 26.856457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698586, 32.946472, 26.578810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074103, -0.850789, -0.520257,
		-0.836009, -0.231422, 0.497527,
		-0.543689, 0.471808, -0.694118,
		38.535480, 33.088013, 26.370575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517132, 32.157463, 26.536026>,  <38.916061, 32.757748, 26.856457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517132, 32.157463, 26.536026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451851, 32.474800, 26.301430>,  <38.412682, 32.665203, 26.160671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451851, 32.474800, 26.301430>,  <38.517132, 32.157463, 26.536026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451851, 32.474800, 26.301430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149826, -0.607497, -0.780064,
		-0.975149, -0.039440, 0.218010,
		-0.163206, 0.793343, -0.586491,
		38.402889, 32.712803, 26.125483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792809, 32.061104, 26.254606>,  <38.517132, 32.157463, 26.536026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792809, 32.061104, 26.254606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963234, 32.308964, 25.990938>,  <38.065491, 32.457680, 25.832737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963234, 32.308964, 25.990938>,  <37.792809, 32.061104, 26.254606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963234, 32.308964, 25.990938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334364, -0.569171, -0.751162,
		-0.840636, 0.540448, -0.035317,
		0.426066, 0.619645, -0.659172,
		38.091053, 32.494858, 25.793186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265106, 32.328148, 25.743332>,  <37.792809, 32.061104, 26.254606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265106, 32.328148, 25.743332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633255, 32.322163, 25.587027>,  <37.854145, 32.318573, 25.493244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633255, 32.322163, 25.587027>,  <37.265106, 32.328148, 25.743332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633255, 32.322163, 25.587027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332601, -0.555488, -0.762108,
		-0.205661, 0.831390, -0.516231,
		0.920370, -0.014963, -0.390764,
		37.909367, 32.317673, 25.469797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145588, 31.994318, 25.092066>,  <37.265106, 32.328148, 25.743332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145588, 31.994318, 25.092066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543411, 32.033337, 25.077410>,  <37.782104, 32.056747, 25.068617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543411, 32.033337, 25.077410>,  <37.145588, 31.994318, 25.092066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543411, 32.033337, 25.077410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061063, -0.830516, -0.553637,
		-0.084436, 0.548386, -0.831952,
		0.994556, 0.097549, -0.036639,
		37.841778, 32.062603, 25.066418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367237, 32.102306, 24.285686>,  <37.145588, 31.994318, 25.092066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367237, 32.102306, 24.285686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663467, 31.953281, 24.509380>,  <37.841206, 31.863867, 24.643597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663467, 31.953281, 24.509380>,  <37.367237, 32.102306, 24.285686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663467, 31.953281, 24.509380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081953, -0.775939, -0.625461,
		0.666955, 0.509033, -0.544110,
		0.740577, -0.372563, 0.559234,
		37.885639, 31.841513, 24.677151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789200, 31.872570, 23.818127>,  <37.367237, 32.102306, 24.285686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789200, 31.872570, 23.818127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953281, 31.681864, 24.129107>,  <38.051731, 31.567440, 24.315695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953281, 31.681864, 24.129107>,  <37.789200, 31.872570, 23.818127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953281, 31.681864, 24.129107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221845, -0.774705, -0.592130,
		0.884601, 0.415366, -0.212017,
		0.410202, -0.476764, 0.777451,
		38.076344, 31.538834, 24.362343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591568, 31.673843, 23.704830>,  <37.789200, 31.872570, 23.818127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591568, 31.673843, 23.704830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462444, 31.415611, 23.981674>,  <38.384968, 31.260672, 24.147781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462444, 31.415611, 23.981674>,  <38.591568, 31.673843, 23.704830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462444, 31.415611, 23.981674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234160, -0.763003, -0.602491,
		0.917039, -0.032428, 0.397477,
		-0.322814, -0.645581, 0.692110,
		38.365601, 31.221937, 24.189308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040104, 31.201710, 23.728758>,  <38.591568, 31.673843, 23.704830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040104, 31.201710, 23.728758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719124, 31.004185, 23.862761>,  <38.526535, 30.885670, 23.943161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719124, 31.004185, 23.862761>,  <39.040104, 31.201710, 23.728758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719124, 31.004185, 23.862761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153697, -0.713505, -0.683584,
		0.576590, -0.497051, 0.648448,
		-0.802447, -0.493812, 0.335005,
		38.478390, 30.856041, 23.963263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.655264, 28.322254, 25.219767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.992762, 28.536827, 25.227106>,  <32.195259, 28.665571, 25.231510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.992762, 28.536827, 25.227106>,  <31.655264, 28.322254, 25.219767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992762, 28.536827, 25.227106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129979, 0.171034, 0.976654,
		0.520770, -0.826431, 0.214033,
		0.843744, 0.536432, 0.018349,
		32.245884, 28.697756, 25.232611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079391, 27.973513, 25.817745>,  <31.655264, 28.322254, 25.219767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079391, 27.973513, 25.817745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.234383, 28.335987, 25.749989>,  <32.327377, 28.553471, 25.709335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.234383, 28.335987, 25.749989>,  <32.079391, 27.973513, 25.817745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234383, 28.335987, 25.749989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132073, 0.127284, 0.983034,
		0.912371, -0.403273, -0.070363,
		0.387475, 0.906184, -0.169391,
		32.350624, 28.607841, 25.699171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622112, 28.036222, 26.266584>,  <32.079391, 27.973513, 25.817745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622112, 28.036222, 26.266584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.552315, 28.419371, 26.175341>,  <32.510437, 28.649260, 26.120594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.552315, 28.419371, 26.175341>,  <32.622112, 28.036222, 26.266584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552315, 28.419371, 26.175341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044199, 0.239049, 0.970001,
		0.983666, 0.159173, -0.084049,
		-0.174490, 0.957872, -0.228109,
		32.499969, 28.706732, 26.106907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133968, 28.391363, 26.658215>,  <32.622112, 28.036222, 26.266584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133968, 28.391363, 26.658215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842487, 28.652811, 26.576454>,  <32.667599, 28.809679, 26.527399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842487, 28.652811, 26.576454>,  <33.133968, 28.391363, 26.658215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842487, 28.652811, 26.576454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039642, 0.338225, 0.940230,
		0.683685, 0.677042, -0.272376,
		-0.728699, 0.653619, -0.204400,
		32.623878, 28.848896, 26.515135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360588, 29.017311, 26.892508>,  <33.133968, 28.391363, 26.658215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360588, 29.017311, 26.892508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.963993, 29.067497, 26.878611>,  <32.726036, 29.097609, 26.870274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.963993, 29.067497, 26.878611>,  <33.360588, 29.017311, 26.892508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963993, 29.067497, 26.878611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017235, 0.391000, 0.920230,
		0.129040, 0.911799, -0.389834,
		-0.991490, 0.125465, -0.034740,
		32.666546, 29.105137, 26.868189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272034, 29.796793, 26.939241>,  <33.360588, 29.017311, 26.892508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272034, 29.796793, 26.939241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935905, 29.605635, 27.041601>,  <32.734230, 29.490940, 27.103018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935905, 29.605635, 27.041601>,  <33.272034, 29.796793, 26.939241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935905, 29.605635, 27.041601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007326, 0.462001, 0.886849,
		-0.542046, 0.747109, -0.384726,
		-0.840317, -0.477894, 0.255899,
		32.683811, 29.462267, 27.118370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021111, 30.264585, 27.411201>,  <33.272034, 29.796793, 26.939241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021111, 30.264585, 27.411201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770844, 29.956102, 27.458160>,  <32.620682, 29.771013, 27.486336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770844, 29.956102, 27.458160>,  <33.021111, 30.264585, 27.411201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770844, 29.956102, 27.458160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265406, 0.351954, 0.897601,
		-0.733553, 0.530442, -0.424889,
		-0.625667, -0.771206, 0.117395,
		32.583145, 29.724741, 27.493380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357105, 30.485100, 27.637207>,  <33.021111, 30.264585, 27.411201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357105, 30.485100, 27.637207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.382141, 30.104815, 27.758682>,  <32.397163, 29.876644, 27.831568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.382141, 30.104815, 27.758682>,  <32.357105, 30.485100, 27.637207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382141, 30.104815, 27.758682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283348, 0.274837, 0.918792,
		-0.956973, -0.143559, -0.252179,
		0.062593, -0.950713, 0.303688,
		32.400921, 29.819601, 27.849789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878616, 30.510498, 28.186476>,  <32.357105, 30.485100, 27.637207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878616, 30.510498, 28.186476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118683, 30.193085, 28.226690>,  <32.262722, 30.002636, 28.250818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118683, 30.193085, 28.226690>,  <31.878616, 30.510498, 28.186476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118683, 30.193085, 28.226690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132559, 0.025276, 0.990853,
		-0.788816, -0.608002, -0.090020,
		0.600165, -0.793533, 0.100534,
		32.298733, 29.955025, 28.256851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611242, 30.127388, 28.747868>,  <31.878616, 30.510498, 28.186476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611242, 30.127388, 28.747868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.994812, 30.020050, 28.711092>,  <32.224953, 29.955648, 28.689026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.994812, 30.020050, 28.711092>,  <31.611242, 30.127388, 28.747868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994812, 30.020050, 28.711092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160105, 0.244474, 0.956347,
		-0.234152, -0.931785, 0.277396,
		0.958926, -0.268343, -0.091939,
		32.282490, 29.939547, 28.683510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824923, 29.819849, 29.446379>,  <31.611242, 30.127388, 28.747868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824923, 29.819849, 29.446379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.179852, 29.900572, 29.280519>,  <32.392811, 29.949005, 29.181004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.179852, 29.900572, 29.280519>,  <31.824923, 29.819849, 29.446379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179852, 29.900572, 29.280519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302670, 0.423529, 0.853823,
		0.347920, -0.883119, 0.314727,
		0.887323, 0.201804, -0.414648,
		32.446049, 29.961113, 29.156126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323444, 29.549911, 29.958387>,  <31.824923, 29.819849, 29.446379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323444, 29.549911, 29.958387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490799, 29.820263, 29.715689>,  <32.591213, 29.982473, 29.570068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490799, 29.820263, 29.715689>,  <32.323444, 29.549911, 29.958387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490799, 29.820263, 29.715689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272681, 0.543740, 0.793720,
		0.866370, -0.497530, 0.043195,
		0.418386, 0.675877, -0.606748,
		32.616314, 30.023026, 29.533665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093327, 29.649574, 30.109760>,  <32.323444, 29.549911, 29.958387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093327, 29.649574, 30.109760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.946983, 29.978498, 29.935429>,  <32.859177, 30.175854, 29.830830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.946983, 29.978498, 29.935429>,  <33.093327, 29.649574, 30.109760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946983, 29.978498, 29.935429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406129, 0.562422, 0.720236,
		0.837380, 0.086504, -0.539734,
		-0.365861, 0.822313, -0.435829,
		32.837227, 30.225193, 29.804680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619835, 30.133038, 30.327549>,  <33.093327, 29.649574, 30.109760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619835, 30.133038, 30.327549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.309464, 30.352875, 30.203691>,  <33.123241, 30.484777, 30.129377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.309464, 30.352875, 30.203691>,  <33.619835, 30.133038, 30.327549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309464, 30.352875, 30.203691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222232, 0.697548, 0.681205,
		0.590377, 0.459754, -0.663385,
		-0.775930, 0.549593, -0.309644,
		33.076683, 30.517754, 30.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351837, 30.364012, 30.331594>,  <33.619835, 30.133038, 30.327549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351837, 30.364012, 30.331594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615337, 30.104910, 30.484674>,  <34.773438, 29.949448, 30.576523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.615337, 30.104910, 30.484674>,  <34.351837, 30.364012, 30.331594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615337, 30.104910, 30.484674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020887, -0.524215, -0.851330,
		0.752071, 0.552822, -0.358857,
		0.658751, -0.647756, 0.382700,
		34.812962, 29.910583, 30.599483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664272, 30.156750, 29.731503>,  <34.351837, 30.364012, 30.331594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664272, 30.156750, 29.731503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809372, 29.904202, 30.005665>,  <34.896431, 29.752672, 30.170162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809372, 29.904202, 30.005665>,  <34.664272, 30.156750, 29.731503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809372, 29.904202, 30.005665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276375, -0.629525, -0.726165,
		0.889960, 0.452846, -0.053866,
		0.362751, -0.631371, 0.685407,
		34.918198, 29.714790, 30.211287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330364, 29.955914, 29.565617>,  <34.664272, 30.156750, 29.731503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330364, 29.955914, 29.565617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221916, 29.655729, 29.806715>,  <35.156849, 29.475618, 29.951374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221916, 29.655729, 29.806715>,  <35.330364, 29.955914, 29.565617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221916, 29.655729, 29.806715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255194, -0.659832, -0.706751,
		0.928101, -0.037797, 0.370406,
		-0.271119, -0.750462, 0.602745,
		35.140579, 29.430592, 29.987539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942242, 29.529999, 29.790489>,  <35.330364, 29.955914, 29.565617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942242, 29.529999, 29.790489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 29.328585, 29.800692>,  <35.389538, 29.207737, 29.806812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 29.328585, 29.800692>,  <35.942242, 29.529999, 29.790489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596802, 29.328585, 29.800692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302045, -0.557208, -0.773491,
		0.403690, -0.660282, 0.633294,
		-0.863599, -0.503534, 0.025504,
		35.337723, 29.177525, 29.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136024, 28.803234, 29.540394>,  <35.942242, 29.529999, 29.790489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136024, 28.803234, 29.540394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736118, 28.807354, 29.532763>,  <35.496174, 28.809826, 29.528185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736118, 28.807354, 29.532763>,  <36.136024, 28.803234, 29.540394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736118, 28.807354, 29.532763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011104, -0.512506, -0.858612,
		-0.018619, -0.858622, 0.512271,
		-0.999765, 0.010298, -0.019076,
		35.436188, 28.810444, 29.527040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978081, 28.201603, 29.354387>,  <36.136024, 28.803234, 29.540394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978081, 28.201603, 29.354387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650505, 28.399721, 29.238443>,  <35.453960, 28.518591, 29.168877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.650505, 28.399721, 29.238443>,  <35.978081, 28.201603, 29.354387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650505, 28.399721, 29.238443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070173, -0.414876, -0.907168,
		-0.569573, -0.763256, 0.305003,
		-0.818940, 0.495295, -0.289862,
		35.404823, 28.548309, 29.151485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632423, 27.687523, 29.067997>,  <35.978081, 28.201603, 29.354387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632423, 27.687523, 29.067997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.462116, 28.022663, 28.931334>,  <35.359932, 28.223747, 28.849337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.462116, 28.022663, 28.931334>,  <35.632423, 27.687523, 29.067997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462116, 28.022663, 28.931334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215310, -0.460558, -0.861120,
		-0.878844, -0.293073, 0.376487,
		-0.425765, 0.837851, -0.341657,
		35.334385, 28.274019, 28.828836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094341, 27.442654, 28.683733>,  <35.632423, 27.687523, 29.067997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094341, 27.442654, 28.683733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139801, 27.819521, 28.557621>,  <35.167076, 28.045641, 28.481955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139801, 27.819521, 28.557621>,  <35.094341, 27.442654, 28.683733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139801, 27.819521, 28.557621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187782, -0.331988, -0.924403,
		-0.975613, 0.045858, -0.214654,
		0.113654, 0.942168, -0.315281,
		35.173897, 28.102171, 28.463037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726822, 27.383070, 28.131380>,  <35.094341, 27.442654, 28.683733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726822, 27.383070, 28.131380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.957878, 27.707817, 28.097424>,  <35.096512, 27.902664, 28.077049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.957878, 27.707817, 28.097424>,  <34.726822, 27.383070, 28.131380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957878, 27.707817, 28.097424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137589, -0.199342, -0.970223,
		-0.804612, 0.548760, -0.226852,
		0.577640, 0.811865, -0.084890,
		35.131168, 27.951376, 28.071957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483486, 27.766409, 27.583755>,  <34.726822, 27.383070, 28.131380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483486, 27.766409, 27.583755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863594, 27.881233, 27.632050>,  <35.091660, 27.950129, 27.661026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863594, 27.881233, 27.632050>,  <34.483486, 27.766409, 27.583755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863594, 27.881233, 27.632050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209131, -0.300975, -0.930418,
		-0.230748, 0.909401, -0.346042,
		0.950273, 0.287060, 0.120735,
		35.148678, 27.967352, 27.668270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724430, 28.200537, 27.047585>,  <34.483486, 27.766409, 27.583755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724430, 28.200537, 27.047585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029968, 27.995029, 27.203829>,  <35.213291, 27.871725, 27.297575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029968, 27.995029, 27.203829>,  <34.724430, 28.200537, 27.047585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029968, 27.995029, 27.203829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174657, -0.418092, -0.891456,
		0.621313, 0.749161, -0.229626,
		0.763849, -0.513768, 0.390612,
		35.259125, 27.840899, 27.321012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210518, 28.371948, 26.590242>,  <34.724430, 28.200537, 27.047585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210518, 28.371948, 26.590242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325649, 28.030262, 26.763435>,  <35.394726, 27.825251, 26.867352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325649, 28.030262, 26.763435>,  <35.210518, 28.371948, 26.590242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325649, 28.030262, 26.763435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224872, -0.379195, -0.897577,
		0.930908, 0.355710, 0.082947,
		0.287824, -0.854214, 0.432985,
		35.411995, 27.773998, 26.893332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711647, 28.196144, 26.222012>,  <35.210518, 28.371948, 26.590242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711647, 28.196144, 26.222012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.594334, 27.852715, 26.390219>,  <35.523945, 27.646656, 26.491142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.594334, 27.852715, 26.390219>,  <35.711647, 28.196144, 26.222012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594334, 27.852715, 26.390219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053615, -0.453937, -0.889419,
		0.954522, -0.238304, 0.179164,
		-0.293281, -0.858576, 0.420516,
		35.506348, 27.595142, 26.516373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084885, 27.653635, 25.965036>,  <35.711647, 28.196144, 26.222012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084885, 27.653635, 25.965036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800293, 27.433323, 26.139595>,  <35.629539, 27.301136, 26.244329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800293, 27.433323, 26.139595>,  <36.084885, 27.653635, 25.965036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800293, 27.433323, 26.139595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016562, -0.607704, -0.793991,
		0.702515, -0.572133, 0.423245,
		-0.711476, -0.550781, 0.436397,
		35.586849, 27.268089, 26.270514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807140, 27.397169, 25.942839>,  <36.084885, 27.653635, 25.965036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807140, 27.397169, 25.942839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021984, 27.614210, 25.684505>,  <37.150890, 27.744434, 25.529505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021984, 27.614210, 25.684505>,  <36.807140, 27.397169, 25.942839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021984, 27.614210, 25.684505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106877, 0.803252, 0.585973,
		0.836717, -0.245705, 0.489422,
		0.537106, 0.542601, -0.645834,
		37.183117, 27.776991, 25.490755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341511, 27.673857, 26.355360>,  <36.807140, 27.397169, 25.942839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341511, 27.673857, 26.355360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312572, 27.901251, 26.027557>,  <37.295212, 28.037687, 25.830875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312572, 27.901251, 26.027557>,  <37.341511, 27.673857, 26.355360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312572, 27.901251, 26.027557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037020, 0.819561, 0.571794,
		0.996693, 0.071702, -0.038243,
		-0.072341, 0.568488, -0.819505,
		37.290871, 28.071796, 25.781706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754978, 28.207577, 26.518507>,  <37.341511, 27.673857, 26.355360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754978, 28.207577, 26.518507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519428, 28.356936, 26.231789>,  <37.378098, 28.446552, 26.059757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519428, 28.356936, 26.231789>,  <37.754978, 28.207577, 26.518507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519428, 28.356936, 26.231789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076159, 0.857296, 0.509159,
		0.804625, 0.354424, -0.476407,
		-0.588879, 0.373399, -0.716794,
		37.342766, 28.468956, 26.016750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010151, 28.867794, 26.363323>,  <37.754978, 28.207577, 26.518507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010151, 28.867794, 26.363323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630310, 28.846296, 26.239798>,  <37.402405, 28.833397, 26.165682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.630310, 28.846296, 26.239798>,  <38.010151, 28.867794, 26.363323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630310, 28.846296, 26.239798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182722, 0.895405, 0.406034,
		0.254693, 0.441998, -0.860099,
		-0.949602, -0.053745, -0.308816,
		37.345428, 28.830173, 26.147152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981564, 29.474602, 26.134584>,  <38.010151, 28.867794, 26.363323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981564, 29.474602, 26.134584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621037, 29.326527, 26.224545>,  <37.404720, 29.237680, 26.278521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621037, 29.326527, 26.224545>,  <37.981564, 29.474602, 26.134584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621037, 29.326527, 26.224545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128442, 0.724285, 0.677432,
		-0.413670, 0.581697, -0.700361,
		-0.901321, -0.370189, 0.224900,
		37.350639, 29.215469, 26.292015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574860, 29.982676, 26.123497>,  <37.981564, 29.474602, 26.134584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574860, 29.982676, 26.123497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356285, 29.725887, 26.338634>,  <37.225140, 29.571814, 26.467718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356285, 29.725887, 26.338634>,  <37.574860, 29.982676, 26.123497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356285, 29.725887, 26.338634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085652, 0.681673, 0.726626,
		-0.833108, 0.350989, -0.427478,
		-0.546438, -0.641972, 0.537845,
		37.192352, 29.533295, 26.499989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009274, 30.408680, 26.446959>,  <37.574860, 29.982676, 26.123497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009274, 30.408680, 26.446959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001797, 30.068386, 26.657063>,  <36.997311, 29.864210, 26.783125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001797, 30.068386, 26.657063>,  <37.009274, 30.408680, 26.446959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001797, 30.068386, 26.657063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047683, 0.525513, 0.849448,
		-0.998688, -0.009164, -0.050391,
		-0.018697, -0.850736, 0.525261,
		36.996189, 29.813166, 26.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394630, 30.383253, 26.802357>,  <37.009274, 30.408680, 26.446959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394630, 30.383253, 26.802357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.643955, 30.135544, 26.993345>,  <36.793552, 29.986917, 27.107939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.643955, 30.135544, 26.993345>,  <36.394630, 30.383253, 26.802357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643955, 30.135544, 26.993345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172343, 0.486791, 0.856348,
		-0.762741, -0.616065, 0.196697,
		0.623317, -0.619272, 0.477471,
		36.830952, 29.949762, 27.136587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120792, 30.489702, 27.342421>,  <36.394630, 30.383253, 26.802357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120792, 30.489702, 27.342421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454544, 30.311333, 27.472015>,  <36.654793, 30.204311, 27.549772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454544, 30.311333, 27.472015>,  <36.120792, 30.489702, 27.342421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454544, 30.311333, 27.472015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057088, 0.514715, 0.855458,
		-0.548229, -0.732271, 0.404010,
		0.834377, -0.445923, 0.323986,
		36.704857, 30.177555, 27.569212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949894, 30.381525, 28.095190>,  <36.120792, 30.489702, 27.342421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949894, 30.381525, 28.095190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342239, 30.327595, 28.039001>,  <36.577648, 30.295237, 28.005289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342239, 30.327595, 28.039001>,  <35.949894, 30.381525, 28.095190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342239, 30.327595, 28.039001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185030, 0.420875, 0.888048,
		-0.060610, -0.897043, 0.437766,
		0.980862, -0.134825, -0.140470,
		36.636497, 30.287148, 27.996861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200279, 29.952400, 28.566401>,  <35.949894, 30.381525, 28.095190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200279, 29.952400, 28.566401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477306, 30.216875, 28.451042>,  <36.643524, 30.375561, 28.381826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477306, 30.216875, 28.451042>,  <36.200279, 29.952400, 28.566401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477306, 30.216875, 28.451042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166974, 0.242001, 0.955801,
		0.701758, -0.710115, 0.057202,
		0.692572, 0.661190, -0.288397,
		36.685078, 30.415232, 28.364523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806232, 29.844233, 28.961872>,  <36.200279, 29.952400, 28.566401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806232, 29.844233, 28.961872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843300, 30.218351, 28.825264>,  <36.865540, 30.442822, 28.743299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843300, 30.218351, 28.825264>,  <36.806232, 29.844233, 28.961872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843300, 30.218351, 28.825264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272848, 0.306015, 0.912090,
		0.957584, -0.177704, -0.226836,
		0.092667, 0.935295, -0.341521,
		36.871101, 30.498940, 28.722807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222424, 30.075891, 29.384308>,  <36.806232, 29.844233, 28.961872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222424, 30.075891, 29.384308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140373, 30.432146, 29.221979>,  <37.091145, 30.645899, 29.124582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140373, 30.432146, 29.221979>,  <37.222424, 30.075891, 29.384308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140373, 30.432146, 29.221979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395005, 0.454706, 0.798256,
		0.895485, 0.003441, -0.445078,
		-0.205127, 0.890635, -0.405823,
		37.078835, 30.699337, 29.100233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818222, 30.527191, 29.475830>,  <37.222424, 30.075891, 29.384308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818222, 30.527191, 29.475830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508259, 30.771345, 29.410175>,  <37.322281, 30.917837, 29.370783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508259, 30.771345, 29.410175>,  <37.818222, 30.527191, 29.475830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508259, 30.771345, 29.410175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256004, 0.540519, 0.801437,
		0.577905, 0.579023, -0.575116,
		-0.774911, 0.610386, -0.164137,
		37.275784, 30.954460, 29.360935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.188690, 30.411957, 23.612692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794704, 30.406229, 23.681551>,  <38.558311, 30.402792, 23.722866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794704, 30.406229, 23.681551>,  <39.188690, 30.411957, 23.612692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794704, 30.406229, 23.681551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105289, -0.740283, -0.663999,
		0.136946, -0.672143, 0.727647,
		-0.984967, -0.014318, 0.172148,
		38.499214, 30.401934, 23.733196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992756, 29.711517, 23.788475>,  <39.188690, 30.411957, 23.612692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992756, 29.711517, 23.788475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649738, 29.884621, 23.677238>,  <38.443928, 29.988482, 23.610497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649738, 29.884621, 23.677238>,  <38.992756, 29.711517, 23.788475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649738, 29.884621, 23.677238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235987, -0.811324, -0.534848,
		-0.457080, -0.393032, 0.797874,
		-0.857547, 0.432756, -0.278090,
		38.392475, 30.014448, 23.593811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400108, 29.188015, 23.867140>,  <38.992756, 29.711517, 23.788475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400108, 29.188015, 23.867140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319920, 29.463297, 23.588232>,  <38.271805, 29.628466, 23.420887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319920, 29.463297, 23.588232>,  <38.400108, 29.188015, 23.867140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319920, 29.463297, 23.588232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265554, -0.723246, -0.637492,
		-0.943023, 0.057364, 0.327746,
		-0.200471, 0.688204, -0.697271,
		38.259777, 29.669758, 23.379051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787136, 28.978937, 23.613348>,  <38.400108, 29.188015, 23.867140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787136, 28.978937, 23.613348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932281, 29.192434, 23.307814>,  <38.019367, 29.320532, 23.124493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932281, 29.192434, 23.307814>,  <37.787136, 28.978937, 23.613348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932281, 29.192434, 23.307814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226251, -0.744715, -0.627861,
		-0.903958, 0.400648, -0.149471,
		0.362864, 0.533742, -0.763838,
		38.041142, 29.352556, 23.078663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279922, 28.804588, 23.083075>,  <37.787136, 28.978937, 23.613348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279922, 28.804588, 23.083075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580086, 28.980057, 22.885303>,  <37.760181, 29.085339, 22.766642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580086, 28.980057, 22.885303>,  <37.279922, 28.804588, 23.083075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580086, 28.980057, 22.885303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253481, -0.499845, -0.828192,
		-0.610441, 0.746809, -0.263892,
		0.750406, 0.438671, -0.494428,
		37.805206, 29.111658, 22.736975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072159, 28.877361, 22.351963>,  <37.279922, 28.804588, 23.083075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072159, 28.877361, 22.351963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471184, 28.904522, 22.345613>,  <37.710598, 28.920818, 22.341805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471184, 28.904522, 22.345613>,  <37.072159, 28.877361, 22.351963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471184, 28.904522, 22.345613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025674, -0.569277, -0.821745,
		-0.064832, 0.819337, -0.569634,
		0.997566, 0.067901, -0.015872,
		37.770454, 28.924892, 22.340853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240711, 28.870022, 21.641350>,  <37.072159, 28.877361, 22.351963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240711, 28.870022, 21.641350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.586872, 28.799480, 21.828959>,  <37.794567, 28.757156, 21.941525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.586872, 28.799480, 21.828959>,  <37.240711, 28.870022, 21.641350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586872, 28.799480, 21.828959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330367, -0.502958, -0.798681,
		0.376748, 0.846128, -0.376999,
		0.865401, -0.176353, 0.469021,
		37.846493, 28.746574, 21.969666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826431, 29.125523, 21.160997>,  <37.240711, 28.870022, 21.641350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826431, 29.125523, 21.160997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980129, 28.837358, 21.391949>,  <38.072346, 28.664459, 21.530519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980129, 28.837358, 21.391949>,  <37.826431, 29.125523, 21.160997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980129, 28.837358, 21.391949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319927, -0.482737, -0.815237,
		0.866028, 0.497967, 0.044992,
		0.384242, -0.720413, 0.577377,
		38.095402, 28.621235, 21.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479248, 29.001558, 20.887386>,  <37.826431, 29.125523, 21.160997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479248, 29.001558, 20.887386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392132, 28.680132, 21.108961>,  <38.339863, 28.487276, 21.241907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392132, 28.680132, 21.108961>,  <38.479248, 29.001558, 20.887386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392132, 28.680132, 21.108961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350649, -0.594089, -0.723950,
		0.910832, 0.036572, 0.411154,
		-0.217786, -0.803567, 0.553939,
		38.326797, 28.439062, 21.275143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061062, 28.485556, 20.729790>,  <38.479248, 29.001558, 20.887386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061062, 28.485556, 20.729790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743168, 28.293945, 20.878880>,  <38.552429, 28.178980, 20.968334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743168, 28.293945, 20.878880>,  <39.061062, 28.485556, 20.729790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743168, 28.293945, 20.878880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028107, -0.642482, -0.765785,
		0.606300, -0.598123, 0.524070,
		-0.794739, -0.479025, 0.372726,
		38.504745, 28.150238, 20.990698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350887, 27.835373, 20.711256>,  <39.061062, 28.485556, 20.729790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350887, 27.835373, 20.711256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.951160, 27.847893, 20.719191>,  <38.711327, 27.855404, 20.723951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.951160, 27.847893, 20.719191>,  <39.350887, 27.835373, 20.711256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951160, 27.847893, 20.719191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028675, -0.314093, -0.948959,
		-0.023470, -0.948876, 0.314775,
		-0.999313, 0.031298, 0.019837,
		38.651367, 27.857283, 20.725142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130089, 27.188368, 20.549305>,  <39.350887, 27.835373, 20.711256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130089, 27.188368, 20.549305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866608, 27.474529, 20.456089>,  <38.708519, 27.646225, 20.400160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866608, 27.474529, 20.456089>,  <39.130089, 27.188368, 20.549305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866608, 27.474529, 20.456089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071890, -0.248469, -0.965968,
		-0.748959, -0.653041, 0.112238,
		-0.658705, 0.715402, -0.233041,
		38.668995, 27.689150, 20.386177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457569, 26.950340, 20.150551>,  <39.130089, 27.188368, 20.549305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457569, 26.950340, 20.150551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.458164, 27.201048, 20.462233>,  <38.458523, 27.351473, 20.649240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.458164, 27.201048, 20.462233>,  <38.457569, 26.950340, 20.150551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458164, 27.201048, 20.462233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830698, -0.434577, 0.347971,
		0.556721, 0.646763, -0.521305,
		0.001492, 0.626770, 0.779203,
		38.458611, 27.389078, 20.695993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874805, 26.476202, 20.689739>,  <38.457569, 26.950340, 20.150551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874805, 26.476202, 20.689739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624786, 26.176815, 20.601095>,  <38.474773, 25.997183, 20.547909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624786, 26.176815, 20.601095>,  <38.874805, 26.476202, 20.689739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624786, 26.176815, 20.601095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212308, -0.110189, 0.970970,
		-0.751158, 0.653954, -0.090031,
		-0.625050, -0.748466, -0.221609,
		38.437271, 25.952274, 20.534613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147114, 26.572556, 20.778078>,  <38.874805, 26.476202, 20.689739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147114, 26.572556, 20.778078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209724, 26.179945, 20.822079>,  <38.247292, 25.944378, 20.848478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209724, 26.179945, 20.822079>,  <38.147114, 26.572556, 20.778078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209724, 26.179945, 20.822079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172552, 0.082486, 0.981540,
		-0.972484, -0.172619, -0.156454,
		0.156527, -0.981529, 0.110002,
		38.256683, 25.885487, 20.855080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517162, 26.234737, 21.140554>,  <38.147114, 26.572556, 20.778078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517162, 26.234737, 21.140554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828175, 25.987196, 21.185213>,  <38.014782, 25.838671, 21.212009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828175, 25.987196, 21.185213>,  <37.517162, 26.234737, 21.140554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828175, 25.987196, 21.185213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269797, -0.167915, 0.948164,
		-0.568026, -0.767350, -0.297523,
		0.777532, -0.618852, 0.111649,
		38.061436, 25.801540, 21.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300831, 25.685141, 21.576603>,  <37.517162, 26.234737, 21.140554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300831, 25.685141, 21.576603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700298, 25.688433, 21.596973>,  <37.939980, 25.690409, 21.609196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700298, 25.688433, 21.596973>,  <37.300831, 25.685141, 21.576603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700298, 25.688433, 21.596973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049761, -0.106643, 0.993051,
		0.013606, -0.994263, -0.106091,
		0.998668, 0.008232, 0.050926,
		37.999897, 25.690903, 21.612251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409725, 25.151718, 22.018925>,  <37.300831, 25.685141, 21.576603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409725, 25.151718, 22.018925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739639, 25.377417, 22.004208>,  <37.937588, 25.512836, 21.995377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739639, 25.377417, 22.004208>,  <37.409725, 25.151718, 22.018925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739639, 25.377417, 22.004208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064816, -0.029702, 0.997455,
		0.561717, -0.825073, -0.061070,
		0.824787, 0.564245, -0.036794,
		37.987076, 25.546690, 21.993170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879135, 24.856434, 22.496071>,  <37.409725, 25.151718, 22.018925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879135, 24.856434, 22.496071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999569, 25.236649, 22.465542>,  <38.071831, 25.464777, 22.447224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999569, 25.236649, 22.465542>,  <37.879135, 24.856434, 22.496071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999569, 25.236649, 22.465542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077921, 0.055245, 0.995428,
		0.950409, -0.305654, -0.057434,
		0.301084, 0.950539, -0.076322,
		38.089893, 25.521811, 22.442646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393608, 24.998764, 22.967539>,  <37.879135, 24.856434, 22.496071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393608, 24.998764, 22.967539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305748, 25.378389, 22.877176>,  <38.253033, 25.606165, 22.822958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305748, 25.378389, 22.877176>,  <38.393608, 24.998764, 22.967539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305748, 25.378389, 22.877176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147411, 0.261191, 0.953965,
		0.964378, 0.176235, -0.197272,
		-0.219648, 0.949063, -0.225907,
		38.239853, 25.663109, 22.809404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897141, 25.353685, 23.303642>,  <38.393608, 24.998764, 22.967539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897141, 25.353685, 23.303642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591080, 25.600544, 23.230249>,  <38.407444, 25.748659, 23.186213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591080, 25.600544, 23.230249>,  <38.897141, 25.353685, 23.303642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591080, 25.600544, 23.230249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174886, 0.473487, 0.863264,
		0.619638, 0.628443, -0.470222,
		-0.765156, 0.617147, -0.183485,
		38.361534, 25.785688, 23.175203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128246, 25.956028, 23.570696>,  <38.897141, 25.353685, 23.303642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128246, 25.956028, 23.570696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.735039, 26.014912, 23.526888>,  <38.499115, 26.050241, 23.500603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.735039, 26.014912, 23.526888>,  <39.128246, 25.956028, 23.570696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735039, 26.014912, 23.526888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013452, 0.537471, 0.843175,
		0.182985, 0.830334, -0.526366,
		-0.983024, 0.147208, -0.109519,
		38.440132, 26.059074, 23.494032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054783, 26.631674, 23.730778>,  <39.128246, 25.956028, 23.570696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054783, 26.631674, 23.730778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677910, 26.506170, 23.777857>,  <38.451786, 26.430868, 23.806105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677910, 26.506170, 23.777857>,  <39.054783, 26.631674, 23.730778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677910, 26.506170, 23.777857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060673, 0.505133, 0.860906,
		-0.329569, 0.803988, -0.494963,
		-0.942180, -0.313758, 0.117696,
		38.395256, 26.412043, 23.813166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573471, 27.300932, 23.691227>,  <39.054783, 26.631674, 23.730778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573471, 27.300932, 23.691227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368889, 26.997683, 23.853046>,  <38.246140, 26.815733, 23.950138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368889, 26.997683, 23.853046>,  <38.573471, 27.300932, 23.691227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368889, 26.997683, 23.853046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204066, 0.564471, 0.799831,
		-0.834727, 0.326525, -0.443410,
		-0.511457, -0.758126, 0.404546,
		38.215450, 26.770245, 23.974411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946609, 27.573584, 23.838659>,  <38.573471, 27.300932, 23.691227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946609, 27.573584, 23.838659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948505, 27.241472, 24.061590>,  <37.949642, 27.042206, 24.195349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948505, 27.241472, 24.061590>,  <37.946609, 27.573584, 23.838659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948505, 27.241472, 24.061590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432764, 0.500735, 0.749653,
		-0.901495, -0.244744, -0.356941,
		0.004740, -0.830280, 0.557327,
		37.949928, 26.992388, 24.228788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204681, 27.366846, 23.958916>,  <37.946609, 27.573584, 23.838659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204681, 27.366846, 23.958916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455681, 27.231104, 24.239225>,  <37.606281, 27.149658, 24.407412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455681, 27.231104, 24.239225>,  <37.204681, 27.366846, 23.958916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455681, 27.231104, 24.239225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411206, 0.619836, 0.668366,
		-0.661181, -0.707559, 0.249397,
		0.627494, -0.339357, 0.700777,
		37.643929, 27.129297, 24.449459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755123, 27.184935, 24.486946>,  <37.204681, 27.366846, 23.958916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755123, 27.184935, 24.486946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113293, 27.236855, 24.657293>,  <37.328194, 27.268005, 24.759502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113293, 27.236855, 24.657293>,  <36.755123, 27.184935, 24.486946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113293, 27.236855, 24.657293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415228, 0.588567, 0.693667,
		-0.160616, -0.797961, 0.580915,
		0.895426, 0.129798, 0.425868,
		37.381920, 27.275793, 24.785053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649513, 27.074009, 25.182817>,  <36.755123, 27.184935, 24.486946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649513, 27.074009, 25.182817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.990765, 27.281599, 25.161541>,  <37.195515, 27.406153, 25.148775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.990765, 27.281599, 25.161541>,  <36.649513, 27.074009, 25.182817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990765, 27.281599, 25.161541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381817, 0.690609, 0.614227,
		0.355501, -0.503709, 0.787335,
		0.853132, 0.518976, -0.053188,
		37.246704, 27.437292, 25.145584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221298, 26.941484, 25.752270>,  <36.649513, 27.074009, 25.182817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221298, 26.941484, 25.752270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833794, 26.996637, 25.834713>,  <35.601292, 27.029730, 25.884178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833794, 26.996637, 25.834713>,  <36.221298, 26.941484, 25.752270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833794, 26.996637, 25.834713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247538, -0.488308, -0.836827,
		-0.014740, -0.861710, 0.507187,
		-0.968766, 0.137883, 0.206109,
		35.543163, 27.038002, 25.896545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909645, 26.333439, 25.573166>,  <36.221298, 26.941484, 25.752270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909645, 26.333439, 25.573166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595932, 26.581539, 25.578745>,  <35.407703, 26.730400, 25.582092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595932, 26.581539, 25.578745>,  <35.909645, 26.333439, 25.573166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595932, 26.581539, 25.578745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332541, -0.401288, -0.853455,
		-0.523759, -0.673985, 0.520981,
		-0.784279, 0.620252, 0.013949,
		35.360649, 26.767614, 25.582930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283852, 26.002703, 25.436266>,  <35.909645, 26.333439, 25.573166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283852, 26.002703, 25.436266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186214, 26.375063, 25.327572>,  <35.127632, 26.598480, 25.262356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186214, 26.375063, 25.327572>,  <35.283852, 26.002703, 25.436266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186214, 26.375063, 25.327572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323076, -0.342265, -0.882313,
		-0.914352, -0.127578, 0.384298,
		-0.244095, 0.930902, -0.271734,
		35.112988, 26.654333, 25.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520420, 26.033314, 25.217587>,  <35.283852, 26.002703, 25.436266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520420, 26.033314, 25.217587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701447, 26.345507, 25.045065>,  <34.810062, 26.532824, 24.941551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701447, 26.345507, 25.045065>,  <34.520420, 26.033314, 25.217587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701447, 26.345507, 25.045065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382426, -0.267062, -0.884550,
		-0.805563, 0.565263, 0.177614,
		0.452569, 0.780484, -0.431306,
		34.837215, 26.579653, 24.915672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994289, 26.511978, 24.760019>,  <34.520420, 26.033314, 25.217587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994289, 26.511978, 24.760019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358318, 26.589842, 24.613665>,  <34.576736, 26.636560, 24.525852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358318, 26.589842, 24.613665>,  <33.994289, 26.511978, 24.760019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358318, 26.589842, 24.613665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281976, -0.356175, -0.890859,
		-0.303734, 0.913918, -0.269257,
		0.910074, 0.194660, -0.365885,
		34.631340, 26.648239, 24.503899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891396, 26.802649, 24.063465>,  <33.994289, 26.511978, 24.760019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891396, 26.802649, 24.063465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284496, 26.728682, 24.062193>,  <34.520355, 26.684301, 24.061430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.284496, 26.728682, 24.062193>,  <33.891396, 26.802649, 24.063465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284496, 26.728682, 24.062193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062441, -0.315549, -0.946853,
		0.174085, 0.930717, -0.321651,
		0.982749, -0.184917, -0.003182,
		34.579323, 26.673206, 24.061237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051388, 27.047255, 23.419535>,  <33.891396, 26.802649, 24.063465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051388, 27.047255, 23.419535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348915, 26.801071, 23.523794>,  <34.527431, 26.653360, 23.586349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348915, 26.801071, 23.523794>,  <34.051388, 27.047255, 23.419535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348915, 26.801071, 23.523794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005564, -0.395658, -0.918381,
		0.668354, 0.681662, -0.297724,
		0.743822, -0.615461, 0.260647,
		34.572063, 26.616432, 23.601988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142387, 27.672998, 23.232195>,  <34.051388, 27.047255, 23.419535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142387, 27.672998, 23.232195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858238, 27.891911, 23.055172>,  <33.687748, 28.023258, 22.948957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858238, 27.891911, 23.055172>,  <34.142387, 27.672998, 23.232195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858238, 27.891911, 23.055172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398507, 0.205540, 0.893837,
		0.580144, 0.811318, 0.072086,
		-0.710370, 0.547281, -0.442559,
		33.645126, 28.056095, 22.922405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179234, 28.328188, 23.450529>,  <34.142387, 27.672998, 23.232195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179234, 28.328188, 23.450529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 28.317270, 23.327127>,  <33.570702, 28.310719, 23.253086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 28.317270, 23.327127>,  <34.179234, 28.328188, 23.450529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798901, 28.317270, 23.327127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299500, 0.334693, 0.893465,
		0.078867, 0.941932, -0.326412,
		-0.950831, -0.027296, -0.308505,
		33.513653, 28.309082, 23.234575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858822, 28.972263, 23.469467>,  <34.179234, 28.328188, 23.450529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858822, 28.972263, 23.469467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.526695, 28.749372, 23.472879>,  <33.327419, 28.615637, 23.474928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.526695, 28.749372, 23.472879>,  <33.858822, 28.972263, 23.469467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526695, 28.749372, 23.472879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321163, 0.490960, 0.809822,
		-0.455445, 0.669667, -0.586613,
		-0.830315, -0.557229, 0.008533,
		33.277599, 28.582205, 23.475439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323063, 29.364088, 23.482269>,  <33.858822, 28.972263, 23.469467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323063, 29.364088, 23.482269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157013, 29.022831, 23.608641>,  <33.057381, 28.818077, 23.684464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157013, 29.022831, 23.608641>,  <33.323063, 29.364088, 23.482269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157013, 29.022831, 23.608641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404519, 0.484147, 0.775865,
		-0.814882, 0.194284, -0.546097,
		-0.415129, -0.853144, 0.315931,
		33.032475, 28.766888, 23.703421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661373, 29.547998, 23.844500>,  <33.323063, 29.364088, 23.482269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661373, 29.547998, 23.844500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684727, 29.168552, 23.968903>,  <32.698738, 28.940886, 24.043545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684727, 29.168552, 23.968903>,  <32.661373, 29.547998, 23.844500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684727, 29.168552, 23.968903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323716, 0.276712, 0.904786,
		-0.944351, -0.153506, -0.290924,
		0.058388, -0.948613, 0.311005,
		32.702244, 28.883968, 24.062204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987858, 29.370661, 24.164522>,  <32.661373, 29.547998, 23.844500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987858, 29.370661, 24.164522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.265884, 29.119150, 24.303961>,  <32.432701, 28.968243, 24.387625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.265884, 29.119150, 24.303961>,  <31.987858, 29.370661, 24.164522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265884, 29.119150, 24.303961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287803, 0.200978, 0.936364,
		-0.658825, -0.751164, -0.041271,
		0.695068, -0.628778, 0.348596,
		32.474403, 28.930517, 24.408539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634296, 29.031691, 24.622026>,  <31.987858, 29.370661, 24.164522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634296, 29.031691, 24.622026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010761, 28.939240, 24.720650>,  <32.236641, 28.883768, 24.779823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010761, 28.939240, 24.720650>,  <31.634296, 29.031691, 24.622026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010761, 28.939240, 24.720650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228137, 0.103732, 0.968087,
		-0.249329, -0.967377, 0.044900,
		0.941164, -0.231129, 0.246558,
		32.293110, 28.869902, 24.794617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.173786, 29.962475, 19.594580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256577, 29.597216, 19.735048>,  <36.306252, 29.378059, 19.819330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256577, 29.597216, 19.735048>,  <36.173786, 29.962475, 19.594580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256577, 29.597216, 19.735048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221595, 0.305860, 0.925930,
		-0.952921, -0.269460, -0.139044,
		0.206973, -0.913149, 0.351171,
		36.318668, 29.323271, 19.840399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612354, 29.728937, 20.021313>,  <36.173786, 29.962475, 19.594580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612354, 29.728937, 20.021313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.947926, 29.537960, 20.125813>,  <36.149269, 29.423374, 20.188513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.947926, 29.537960, 20.125813>,  <35.612354, 29.728937, 20.021313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947926, 29.537960, 20.125813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039781, 0.424942, 0.904346,
		-0.542787, -0.769073, 0.337503,
		0.838928, -0.477441, 0.261248,
		36.199604, 29.394728, 20.204187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481209, 29.491116, 20.641241>,  <35.612354, 29.728937, 20.021313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481209, 29.491116, 20.641241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.881069, 29.492838, 20.651730>,  <36.120983, 29.493872, 20.658024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.881069, 29.492838, 20.651730>,  <35.481209, 29.491116, 20.641241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881069, 29.492838, 20.651730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025179, 0.468938, 0.882872,
		-0.008497, -0.883220, 0.468880,
		0.999647, 0.004304, 0.026223,
		36.180962, 29.494129, 20.659595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727097, 29.215780, 21.316961>,  <35.481209, 29.491116, 20.641241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727097, 29.215780, 21.316961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013863, 29.452650, 21.169796>,  <36.185921, 29.594772, 21.081497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.013863, 29.452650, 21.169796>,  <35.727097, 29.215780, 21.316961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013863, 29.452650, 21.169796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086174, 0.598955, 0.796133,
		0.691813, -0.539055, 0.480430,
		0.716916, 0.592176, -0.367912,
		36.228939, 29.630302, 21.059422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025566, 29.439735, 21.899246>,  <35.727097, 29.215780, 21.316961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025566, 29.439735, 21.899246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153400, 29.694866, 21.618948>,  <36.230099, 29.847944, 21.450769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153400, 29.694866, 21.618948>,  <36.025566, 29.439735, 21.899246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153400, 29.694866, 21.618948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103404, 0.758586, 0.643315,
		0.941899, -0.133133, 0.308385,
		0.319583, 0.637827, -0.700745,
		36.249275, 29.886213, 21.408724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404133, 29.907694, 22.271366>,  <36.025566, 29.439735, 21.899246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404133, 29.907694, 22.271366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308548, 30.106775, 21.937855>,  <36.251198, 30.226225, 21.737747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308548, 30.106775, 21.937855>,  <36.404133, 29.907694, 22.271366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308548, 30.106775, 21.937855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029799, 0.854491, 0.518611,
		0.970572, 0.148774, -0.189360,
		-0.238963, 0.497706, -0.833778,
		36.236858, 30.256086, 21.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880077, 30.440695, 22.246048>,  <36.404133, 29.907694, 22.271366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880077, 30.440695, 22.246048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566956, 30.529205, 22.013411>,  <36.379082, 30.582312, 21.873827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566956, 30.529205, 22.013411>,  <36.880077, 30.440695, 22.246048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566956, 30.529205, 22.013411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086239, 0.887042, 0.453563,
		0.616262, 0.405208, -0.675298,
		-0.782805, 0.221276, -0.581595,
		36.332115, 30.595589, 21.838932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134121, 31.032780, 21.877716>,  <36.880077, 30.440695, 22.246048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134121, 31.032780, 21.877716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734356, 31.022696, 21.887081>,  <36.494499, 31.016645, 21.892700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734356, 31.022696, 21.887081>,  <37.134121, 31.032780, 21.877716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734356, 31.022696, 21.887081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012868, 0.905007, 0.425201,
		-0.031910, 0.424648, -0.904796,
		-0.999408, -0.025211, 0.023414,
		36.434532, 31.015133, 21.894106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953312, 31.734669, 21.724058>,  <37.134121, 31.032780, 21.877716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953312, 31.734669, 21.724058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629330, 31.592833, 21.910919>,  <36.434940, 31.507730, 22.023035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629330, 31.592833, 21.910919>,  <36.953312, 31.734669, 21.724058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629330, 31.592833, 21.910919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044284, 0.831229, 0.554163,
		-0.584813, 0.428162, -0.688964,
		-0.809959, -0.354592, 0.467153,
		36.386341, 31.486454, 22.051065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586388, 32.247314, 21.691442>,  <36.953312, 31.734669, 21.724058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586388, 32.247314, 21.691442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416401, 32.050358, 21.995272>,  <36.314407, 31.932184, 22.177570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416401, 32.050358, 21.995272>,  <36.586388, 32.247314, 21.691442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416401, 32.050358, 21.995272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139292, 0.793552, 0.592345,
		-0.894426, 0.357532, -0.268651,
		-0.424971, -0.492388, 0.759574,
		36.288910, 31.902641, 22.223145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079136, 32.765774, 22.018312>,  <36.586388, 32.247314, 21.691442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079136, 32.765774, 22.018312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115555, 32.498402, 22.313585>,  <36.137405, 32.337978, 22.490749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115555, 32.498402, 22.313585>,  <36.079136, 32.765774, 22.018312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115555, 32.498402, 22.313585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030146, 0.742773, 0.668865,
		-0.995390, -0.038644, 0.087776,
		0.091046, -0.668428, 0.738184,
		36.142868, 32.297874, 22.535040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462135, 32.806320, 22.448618>,  <36.079136, 32.765774, 22.018312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462135, 32.806320, 22.448618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761326, 32.648670, 22.662230>,  <35.940842, 32.554081, 22.790398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.761326, 32.648670, 22.662230>,  <35.462135, 32.806320, 22.448618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761326, 32.648670, 22.662230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086934, 0.739492, 0.667528,
		-0.658005, -0.545723, 0.518861,
		0.747979, -0.394130, 0.534031,
		35.985718, 32.530430, 22.822439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884022, 32.298744, 22.644583>,  <35.462135, 32.806320, 22.448618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884022, 32.298744, 22.644583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.485561, 32.325733, 22.622215>,  <34.246483, 32.341927, 22.608795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.485561, 32.325733, 22.622215>,  <34.884022, 32.298744, 22.644583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485561, 32.325733, 22.622215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022369, -0.421168, -0.906707,
		-0.084727, -0.904470, 0.418039,
		-0.996153, 0.067471, -0.055916,
		34.186714, 32.345974, 22.605440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436481, 31.565893, 22.554037>,  <34.884022, 32.298744, 22.644583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436481, 31.565893, 22.554037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250916, 31.893814, 22.419748>,  <34.139576, 32.090565, 22.339176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.250916, 31.893814, 22.419748>,  <34.436481, 31.565893, 22.554037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250916, 31.893814, 22.419748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099881, -0.328148, -0.939331,
		-0.880231, -0.469302, 0.070351,
		-0.463916, 0.819801, -0.335720,
		34.111740, 32.139755, 22.319033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848457, 31.327122, 22.094156>,  <34.436481, 31.565893, 22.554037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848457, 31.327122, 22.094156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905891, 31.713467, 22.007906>,  <33.940350, 31.945274, 21.956156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.905891, 31.713467, 22.007906>,  <33.848457, 31.327122, 22.094156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905891, 31.713467, 22.007906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215236, -0.182191, -0.959417,
		-0.965949, 0.184166, 0.181729,
		0.143583, 0.965862, -0.215626,
		33.948967, 32.003223, 21.943218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263988, 31.437798, 21.910109>,  <33.848457, 31.327122, 22.094156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263988, 31.437798, 21.910109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.508621, 31.714823, 21.757099>,  <33.655399, 31.881039, 21.665295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.508621, 31.714823, 21.757099>,  <33.263988, 31.437798, 21.910109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508621, 31.714823, 21.757099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300373, -0.244036, -0.922075,
		-0.731944, 0.678824, 0.058779,
		0.611583, 0.692563, -0.382521,
		33.692097, 31.922592, 21.642344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889263, 31.971872, 21.493874>,  <33.263988, 31.437798, 21.910109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889263, 31.971872, 21.493874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.268993, 31.979387, 21.368376>,  <33.496830, 31.983896, 21.293077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.268993, 31.979387, 21.368376>,  <32.889263, 31.971872, 21.493874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268993, 31.979387, 21.368376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289235, -0.338444, -0.895432,
		-0.123010, 0.940799, -0.315858,
		0.949322, 0.018790, -0.313744,
		33.553791, 31.985023, 21.274252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809689, 32.072884, 20.786713>,  <32.889263, 31.971872, 21.493874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809689, 32.072884, 20.786713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193424, 31.962189, 20.808945>,  <33.423664, 31.895771, 20.822285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.193424, 31.962189, 20.808945>,  <32.809689, 32.072884, 20.786713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193424, 31.962189, 20.808945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084491, -0.469415, -0.878926,
		0.269325, 0.838489, -0.473709,
		0.959336, -0.276741, 0.055581,
		33.481224, 31.879166, 20.825619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151016, 32.169411, 20.101307>,  <32.809689, 32.072884, 20.786713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151016, 32.169411, 20.101307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.379597, 31.906805, 20.298256>,  <33.516747, 31.749241, 20.416426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.379597, 31.906805, 20.298256>,  <33.151016, 32.169411, 20.101307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379597, 31.906805, 20.298256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025583, -0.585446, -0.810308,
		0.820237, 0.475648, -0.317758,
		0.571451, -0.656515, 0.492373,
		33.551033, 31.709850, 20.445969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587471, 31.914677, 19.584702>,  <33.151016, 32.169411, 20.101307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587471, 31.914677, 19.584702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654537, 31.646324, 19.873648>,  <33.694775, 31.485313, 20.047014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654537, 31.646324, 19.873648>,  <33.587471, 31.914677, 19.584702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654537, 31.646324, 19.873648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218842, -0.689127, -0.690806,
		0.961248, 0.273905, 0.031276,
		0.167662, -0.670880, 0.722364,
		33.704834, 31.445061, 20.090357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182690, 31.643721, 19.443607>,  <33.587471, 31.914677, 19.584702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182690, 31.643721, 19.443607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.995247, 31.365641, 19.661636>,  <33.882782, 31.198793, 19.792454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.995247, 31.365641, 19.661636>,  <34.182690, 31.643721, 19.443607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995247, 31.365641, 19.661636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191051, -0.682164, -0.705799,
		0.862501, -0.226605, 0.452485,
		-0.468607, -0.695200, 0.545074,
		33.854664, 31.157082, 19.825159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582508, 31.035757, 19.357990>,  <34.182690, 31.643721, 19.443607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582508, 31.035757, 19.357990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.234341, 30.904497, 19.504791>,  <34.025440, 30.825741, 19.592873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.234341, 30.904497, 19.504791>,  <34.582508, 31.035757, 19.357990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234341, 30.904497, 19.504791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096834, -0.845014, -0.525903,
		0.482698, -0.422217, 0.767291,
		-0.870417, -0.328152, 0.367002,
		33.973217, 30.806051, 19.614891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730171, 30.384203, 19.593754>,  <34.582508, 31.035757, 19.357990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730171, 30.384203, 19.593754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.340298, 30.415979, 19.510149>,  <34.106373, 30.435045, 19.459986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.340298, 30.415979, 19.510149>,  <34.730171, 30.384203, 19.593754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340298, 30.415979, 19.510149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074053, -0.767323, -0.636970,
		-0.210980, -0.636321, 0.742013,
		-0.974681, 0.079440, -0.209012,
		34.047894, 30.439812, 19.447445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496189, 29.710739, 19.571985>,  <34.730171, 30.384203, 19.593754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496189, 29.710739, 19.571985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.186596, 29.902670, 19.406712>,  <34.000839, 30.017828, 19.307547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.186596, 29.902670, 19.406712>,  <34.496189, 29.710739, 19.571985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186596, 29.902670, 19.406712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148476, -0.771856, -0.618218,
		-0.615557, -0.417140, 0.668644,
		-0.773980, 0.479826, -0.413186,
		33.954403, 30.046618, 19.282755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031494, 29.168079, 19.466549>,  <34.496189, 29.710739, 19.571985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031494, 29.168079, 19.466549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897324, 29.462139, 19.230906>,  <33.816822, 29.638575, 19.089520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897324, 29.462139, 19.230906>,  <34.031494, 29.168079, 19.466549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897324, 29.462139, 19.230906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178981, -0.663675, -0.726293,
		-0.924910, -0.138175, 0.354189,
		-0.335422, 0.735148, -0.589109,
		33.796696, 29.682684, 19.054173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780365, 29.003752, 19.688496>,  <34.031494, 29.168079, 19.466549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780365, 29.003752, 19.688496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.546104, 28.679699, 19.699087>,  <34.405548, 28.485268, 19.705442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.546104, 28.679699, 19.699087>,  <34.780365, 29.003752, 19.688496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546104, 28.679699, 19.699087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055600, 0.072742, 0.995800,
		-0.808653, 0.581720, -0.087645,
		-0.585652, -0.810130, 0.026479,
		34.370407, 28.436661, 19.707031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497437, 29.016850, 20.339361>,  <34.780365, 29.003752, 19.688496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497437, 29.016850, 20.339361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.363197, 28.650463, 20.251381>,  <34.282654, 28.430632, 20.198593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.363197, 28.650463, 20.251381>,  <34.497437, 29.016850, 20.339361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363197, 28.650463, 20.251381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289750, -0.121799, 0.949321,
		-0.896335, 0.382325, -0.224525,
		-0.335602, -0.915965, -0.219952,
		34.262516, 28.375673, 20.185396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772148, 28.941000, 20.513132>,  <34.497437, 29.016850, 20.339361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772148, 28.941000, 20.513132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923870, 28.570900, 20.510700>,  <34.014904, 28.348839, 20.509241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923870, 28.570900, 20.510700>,  <33.772148, 28.941000, 20.513132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923870, 28.570900, 20.510700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368036, -0.156895, 0.916479,
		-0.848927, -0.345388, -0.400038,
		0.379305, -0.925252, -0.006078,
		34.037663, 28.293324, 20.508877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174751, 28.593462, 20.823019>,  <33.772148, 28.941000, 20.513132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174751, 28.593462, 20.823019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506660, 28.374096, 20.864428>,  <33.705807, 28.242477, 20.889273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506660, 28.374096, 20.864428>,  <33.174751, 28.593462, 20.823019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506660, 28.374096, 20.864428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202734, -0.123373, 0.971431,
		-0.519975, -0.827055, -0.213554,
		0.829774, -0.548415, 0.103522,
		33.755592, 28.209572, 20.895485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948898, 28.020502, 21.143057>,  <33.174751, 28.593462, 20.823019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948898, 28.020502, 21.143057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.339134, 28.038195, 21.229094>,  <33.573277, 28.048809, 21.280716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.339134, 28.038195, 21.229094>,  <32.948898, 28.020502, 21.143057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339134, 28.038195, 21.229094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208018, -0.127637, 0.969761,
		0.070348, -0.990834, -0.115321,
		0.975592, 0.044232, 0.215090,
		33.631813, 28.051464, 21.293621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057987, 27.488873, 21.533918>,  <32.948898, 28.020502, 21.143057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057987, 27.488873, 21.533918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365204, 27.737259, 21.596544>,  <33.549534, 27.886292, 21.634121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365204, 27.737259, 21.596544>,  <33.057987, 27.488873, 21.533918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365204, 27.737259, 21.596544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157234, -0.054147, 0.986076,
		0.620797, -0.781965, 0.056049,
		0.768042, 0.620966, 0.156566,
		33.595615, 27.923548, 21.643515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404037, 27.202190, 21.995205>,  <33.057987, 27.488873, 21.533918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404037, 27.202190, 21.995205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.495567, 27.591574, 21.997047>,  <33.550484, 27.825203, 21.998152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.495567, 27.591574, 21.997047>,  <33.404037, 27.202190, 21.995205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495567, 27.591574, 21.997047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149269, 0.030412, 0.988329,
		0.961956, -0.226839, 0.152266,
		0.228822, 0.973457, 0.004605,
		33.564213, 27.883612, 21.998428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934227, 27.191980, 22.568233>,  <33.404037, 27.202190, 21.995205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934227, 27.191980, 22.568233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812294, 27.570934, 22.529163>,  <33.739136, 27.798307, 22.505720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812294, 27.570934, 22.529163>,  <33.934227, 27.191980, 22.568233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812294, 27.570934, 22.529163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200172, 0.036536, 0.979079,
		0.931133, 0.318007, 0.178502,
		-0.304832, 0.947384, -0.097676,
		33.720844, 27.855150, 22.499861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701874, 27.112204, 22.771856>,  <33.934227, 27.191980, 22.568233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701874, 27.112204, 22.771856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778732, 26.783033, 22.985725>,  <34.824848, 26.585531, 23.114046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778732, 26.783033, 22.985725>,  <34.701874, 27.112204, 22.771856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778732, 26.783033, 22.985725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374757, -0.442008, -0.814977,
		0.906994, 0.356964, 0.223468,
		0.192143, -0.822925, 0.534673,
		34.836376, 26.536156, 23.146128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446342, 26.961704, 22.742725>,  <34.701874, 27.112204, 22.771856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446342, 26.961704, 22.742725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.242630, 26.625727, 22.817694>,  <35.120403, 26.424139, 22.862675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.242630, 26.625727, 22.817694>,  <35.446342, 26.961704, 22.742725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242630, 26.625727, 22.817694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432228, -0.437959, -0.788270,
		0.744186, -0.320442, 0.586092,
		-0.509280, -0.839945, 0.187419,
		35.089848, 26.373743, 22.873919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900745, 26.334227, 22.682047>,  <35.446342, 26.961704, 22.742725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900745, 26.334227, 22.682047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547714, 26.149757, 22.645424>,  <35.335896, 26.039076, 22.623449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547714, 26.149757, 22.645424>,  <35.900745, 26.334227, 22.682047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547714, 26.149757, 22.645424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378889, -0.582299, -0.719286,
		0.278401, -0.669513, 0.688655,
		-0.882573, -0.461174, -0.091558,
		35.282944, 26.011406, 22.617956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057198, 25.747625, 22.616541>,  <35.900745, 26.334227, 22.682047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057198, 25.747625, 22.616541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677868, 25.720465, 22.492561>,  <35.450268, 25.704168, 22.418175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.677868, 25.720465, 22.492561>,  <36.057198, 25.747625, 22.616541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677868, 25.720465, 22.492561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278994, -0.643717, -0.712595,
		-0.151130, -0.762245, 0.629398,
		-0.948326, -0.067903, -0.309947,
		35.393372, 25.700094, 22.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983589, 25.071707, 22.414839>,  <36.057198, 25.747625, 22.616541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983589, 25.071707, 22.414839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.699215, 25.259773, 22.205645>,  <35.528591, 25.372614, 22.080128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.699215, 25.259773, 22.205645>,  <35.983589, 25.071707, 22.414839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699215, 25.259773, 22.205645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310482, -0.457422, -0.833286,
		-0.631008, -0.754791, 0.179219,
		-0.710936, 0.470166, -0.522986,
		35.485935, 25.400824, 22.048748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641872, 24.535479, 22.053570>,  <35.983589, 25.071707, 22.414839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641872, 24.535479, 22.053570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560894, 24.882587, 21.872026>,  <35.512306, 25.090853, 21.763102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.560894, 24.882587, 21.872026>,  <35.641872, 24.535479, 22.053570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560894, 24.882587, 21.872026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342716, -0.371365, -0.862922,
		-0.917367, -0.330239, -0.222218,
		-0.202447, 0.867773, -0.453856,
		35.500160, 25.142920, 21.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522182, 24.363054, 21.397850>,  <35.641872, 24.535479, 22.053570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522182, 24.363054, 21.397850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.556171, 24.752377, 21.312571>,  <35.576565, 24.985970, 21.261402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.556171, 24.752377, 21.312571>,  <35.522182, 24.363054, 21.397850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556171, 24.752377, 21.312571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378077, -0.229467, -0.896885,
		-0.921866, -0.004392, -0.387484,
		0.084976, 0.973307, -0.213198,
		35.581665, 25.044369, 21.248611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026196, 24.533209, 20.829969>,  <35.522182, 24.363054, 21.397850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026196, 24.533209, 20.829969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.317898, 24.806358, 20.812710>,  <35.492920, 24.970249, 20.802355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.317898, 24.806358, 20.812710>,  <35.026196, 24.533209, 20.829969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317898, 24.806358, 20.812710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222388, -0.296184, -0.928880,
		-0.647089, 0.667800, -0.367859,
		0.729260, 0.682875, -0.043147,
		35.536674, 25.011221, 20.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846291, 25.061930, 20.309111>,  <35.026196, 24.533209, 20.829969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846291, 25.061930, 20.309111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.243073, 25.042690, 20.355934>,  <35.481144, 25.031147, 20.384027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.243073, 25.042690, 20.355934>,  <34.846291, 25.061930, 20.309111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243073, 25.042690, 20.355934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108345, -0.155267, -0.981913,
		0.065404, 0.986701, -0.148807,
		0.991959, -0.048099, 0.117059,
		35.540661, 25.028261, 20.391052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.563683, 32.966591, 34.763336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900543, 32.974598, 34.547791>,  <36.102661, 32.979404, 34.418465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900543, 32.974598, 34.547791>,  <35.563683, 32.966591, 34.763336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900543, 32.974598, 34.547791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404485, -0.637404, -0.655826,
		-0.356605, 0.770270, -0.528694,
		0.842155, 0.020022, -0.538864,
		36.153191, 32.980606, 34.386131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378624, 33.010788, 34.097431>,  <35.563683, 32.966591, 34.763336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378624, 33.010788, 34.097431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748520, 32.866718, 34.048225>,  <35.970459, 32.780277, 34.018700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748520, 32.866718, 34.048225>,  <35.378624, 33.010788, 34.097431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748520, 32.866718, 34.048225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345721, -0.659736, -0.667252,
		0.159168, 0.659564, -0.734603,
		0.924739, -0.360173, -0.123017,
		36.025940, 32.758667, 34.011322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479752, 33.065266, 33.347187>,  <35.378624, 33.010788, 34.097431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479752, 33.065266, 33.347187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748249, 32.815994, 33.507729>,  <35.909348, 32.666431, 33.604053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748249, 32.815994, 33.507729>,  <35.479752, 33.065266, 33.347187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748249, 32.815994, 33.507729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194571, -0.670609, -0.715839,
		0.715242, 0.402413, -0.571395,
		0.671246, -0.623176, 0.401350,
		35.949623, 32.629040, 33.628132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847923, 32.887657, 32.708466>,  <35.479752, 33.065266, 33.347187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847923, 32.887657, 32.708466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957741, 32.615990, 32.980747>,  <36.023632, 32.452988, 33.144115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957741, 32.615990, 32.980747>,  <35.847923, 32.887657, 32.708466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957741, 32.615990, 32.980747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057580, -0.718246, -0.693403,
		0.959850, 0.151173, -0.236295,
		0.274541, -0.679169, 0.680703,
		36.040104, 32.412239, 33.184959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305290, 32.480095, 32.433659>,  <35.847923, 32.887657, 32.708466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305290, 32.480095, 32.433659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173622, 32.245815, 32.729931>,  <36.094620, 32.105247, 32.907692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173622, 32.245815, 32.729931>,  <36.305290, 32.480095, 32.433659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173622, 32.245815, 32.729931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071175, -0.766771, -0.637963,
		0.941583, -0.262718, 0.210714,
		-0.329174, -0.585698, 0.740677,
		36.074871, 32.070107, 32.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784706, 31.845371, 32.398907>,  <36.305290, 32.480095, 32.433659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784706, 31.845371, 32.398907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418064, 31.783350, 32.546307>,  <36.198078, 31.746138, 32.634747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418064, 31.783350, 32.546307>,  <36.784706, 31.845371, 32.398907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418064, 31.783350, 32.546307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121743, -0.769699, -0.626691,
		0.380803, -0.619291, 0.686635,
		-0.916606, -0.155053, 0.368499,
		36.143082, 31.736834, 32.656857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766010, 31.155512, 32.329453>,  <36.784706, 31.845371, 32.398907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766010, 31.155512, 32.329453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377472, 31.230564, 32.387794>,  <36.144348, 31.275595, 32.422798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377472, 31.230564, 32.387794>,  <36.766010, 31.155512, 32.329453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377472, 31.230564, 32.387794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235393, -0.675176, -0.699090,
		-0.032692, -0.713395, 0.699999,
		-0.971350, 0.187629, 0.145855,
		36.086067, 31.286854, 32.431549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325405, 30.474575, 32.420380>,  <36.766010, 31.155512, 32.329453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325405, 30.474575, 32.420380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035202, 30.729662, 32.316875>,  <35.861080, 30.882713, 32.254772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035202, 30.729662, 32.316875>,  <36.325405, 30.474575, 32.420380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035202, 30.729662, 32.316875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436964, -0.717322, -0.542689,
		-0.531696, -0.280656, 0.799082,
		-0.725508, 0.637716, -0.258760,
		35.817551, 30.920977, 32.239246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589607, 30.176807, 32.596310>,  <36.325405, 30.474575, 32.420380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589607, 30.176807, 32.596310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578846, 30.443108, 32.298035>,  <35.572388, 30.602888, 32.119068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578846, 30.443108, 32.298035>,  <35.589607, 30.176807, 32.596310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578846, 30.443108, 32.298035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383360, -0.695797, -0.607372,
		-0.923207, 0.269525, 0.273944,
		-0.026907, 0.665750, -0.745690,
		35.570774, 30.642832, 32.074329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957272, 29.986786, 32.191837>,  <35.589607, 30.176807, 32.596310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957272, 29.986786, 32.191837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079426, 30.250683, 31.917179>,  <35.152718, 30.409021, 31.752384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079426, 30.250683, 31.917179>,  <34.957272, 29.986786, 32.191837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079426, 30.250683, 31.917179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401703, -0.564530, -0.721069,
		-0.863352, 0.496029, 0.092624,
		0.305382, 0.659743, -0.686644,
		35.171040, 30.448606, 31.711185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397545, 30.097517, 31.738163>,  <34.957272, 29.986786, 32.191837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397545, 30.097517, 31.738163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740208, 30.157709, 31.540785>,  <34.945805, 30.193825, 31.422358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740208, 30.157709, 31.540785>,  <34.397545, 30.097517, 31.738163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740208, 30.157709, 31.540785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317258, -0.600572, -0.733935,
		-0.406794, 0.785282, -0.466744,
		0.856659, 0.150482, -0.493447,
		34.997204, 30.202854, 31.392752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145237, 30.260870, 31.055254>,  <34.397545, 30.097517, 31.738163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145237, 30.260870, 31.055254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529953, 30.151600, 31.047903>,  <34.760784, 30.086039, 31.043491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529953, 30.151600, 31.047903>,  <34.145237, 30.260870, 31.055254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529953, 30.151600, 31.047903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209455, -0.690894, -0.691949,
		0.176325, 0.669359, -0.721712,
		0.961789, -0.273174, -0.018379,
		34.818489, 30.069647, 31.042389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832481, 30.831469, 30.542330>,  <34.145237, 30.260870, 31.055254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832481, 30.831469, 30.542330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452984, 30.912430, 30.445238>,  <33.225285, 30.961006, 30.386984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452984, 30.912430, 30.445238>,  <33.832481, 30.831469, 30.542330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452984, 30.912430, 30.445238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025252, 0.717020, 0.696595,
		0.315032, 0.667021, -0.675158,
		-0.948745, 0.202401, -0.242728,
		33.168362, 30.973150, 30.372419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826820, 31.542927, 30.353292>,  <33.832481, 30.831469, 30.542330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826820, 31.542927, 30.353292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457504, 31.436857, 30.464447>,  <33.235916, 31.373215, 30.531139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457504, 31.436857, 30.464447>,  <33.826820, 31.542927, 30.353292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457504, 31.436857, 30.464447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084582, 0.846064, 0.526328,
		-0.374678, 0.462448, -0.803590,
		-0.923289, -0.265173, 0.277887,
		33.180519, 31.357306, 30.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448982, 32.221947, 30.228609>,  <33.826820, 31.542927, 30.353292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448982, 32.221947, 30.228609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231831, 31.991806, 30.473312>,  <33.101540, 31.853722, 30.620134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231831, 31.991806, 30.473312>,  <33.448982, 32.221947, 30.228609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231831, 31.991806, 30.473312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202901, 0.796726, 0.569262,
		-0.814930, 0.184915, -0.549268,
		-0.542881, -0.575356, 0.611757,
		33.068966, 31.819199, 30.656839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829216, 32.594009, 30.352049>,  <33.448982, 32.221947, 30.228609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829216, 32.594009, 30.352049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872349, 32.341576, 30.659323>,  <32.898228, 32.190117, 30.843687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872349, 32.341576, 30.659323>,  <32.829216, 32.594009, 30.352049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872349, 32.341576, 30.659323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138301, 0.755653, 0.640204,
		-0.984502, -0.175276, -0.005794,
		0.107835, -0.631083, 0.768183,
		32.904697, 32.152252, 30.889778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307053, 32.683289, 30.829325>,  <32.829216, 32.594009, 30.352049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307053, 32.683289, 30.829325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576447, 32.502014, 31.062920>,  <32.738083, 32.393250, 31.203075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576447, 32.502014, 31.062920>,  <32.307053, 32.683289, 30.829325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576447, 32.502014, 31.062920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116303, 0.715219, 0.689156,
		-0.729996, -0.532054, 0.428980,
		0.673483, -0.453189, 0.583986,
		32.778492, 32.366058, 31.238115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955845, 32.693161, 31.443027>,  <32.307053, 32.683289, 30.829325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955845, 32.693161, 31.443027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344852, 32.631618, 31.512924>,  <32.578259, 32.594692, 31.554863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344852, 32.631618, 31.512924>,  <31.955845, 32.693161, 31.443027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344852, 32.631618, 31.512924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020409, 0.691313, 0.722267,
		-0.231927, -0.705984, 0.669175,
		0.972519, -0.153856, 0.174742,
		32.636608, 32.585461, 31.565348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995222, 32.826321, 32.207535>,  <31.955845, 32.693161, 31.443027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995222, 32.826321, 32.207535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379791, 32.810131, 32.098701>,  <32.610531, 32.800419, 32.033401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379791, 32.810131, 32.098701>,  <31.995222, 32.826321, 32.207535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379791, 32.810131, 32.098701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186961, 0.821677, 0.538417,
		0.201774, -0.568515, 0.797545,
		0.961423, -0.040471, -0.272083,
		32.668217, 32.797989, 32.017078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457058, 32.923985, 32.864063>,  <31.995222, 32.826321, 32.207535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457058, 32.923985, 32.864063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733040, 33.014721, 32.589108>,  <32.898628, 33.069160, 32.424133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733040, 33.014721, 32.589108>,  <32.457058, 32.923985, 32.864063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733040, 33.014721, 32.589108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288641, 0.784645, 0.548651,
		0.663814, -0.576953, 0.475894,
		0.689955, 0.226840, -0.687391,
		32.940025, 33.082771, 32.382889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131474, 33.132793, 33.243298>,  <32.457058, 32.923985, 32.864063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131474, 33.132793, 33.243298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151470, 33.298782, 32.879913>,  <33.163467, 33.398376, 32.661884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151470, 33.298782, 32.879913>,  <33.131474, 33.132793, 33.243298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151470, 33.298782, 32.879913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467409, 0.794118, 0.388466,
		0.882627, -0.444041, -0.154267,
		0.049989, 0.414976, -0.908458,
		33.166466, 33.423275, 32.607376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775517, 33.401897, 33.173710>,  <33.131474, 33.132793, 33.243298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775517, 33.401897, 33.173710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583672, 33.608032, 32.889626>,  <33.468563, 33.731712, 32.719173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583672, 33.608032, 32.889626>,  <33.775517, 33.401897, 33.173710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583672, 33.608032, 32.889626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412298, 0.846815, 0.336028,
		0.774586, -0.131656, -0.618614,
		-0.479611, 0.515336, -0.710212,
		33.439789, 33.762634, 32.676563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233051, 33.938786, 32.980110>,  <33.775517, 33.401897, 33.173710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233051, 33.938786, 32.980110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 34.088112, 32.815170>,  <33.701195, 34.177708, 32.716206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 34.088112, 32.815170>,  <34.233051, 33.938786, 32.980110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900642, 34.088112, 32.815170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366315, 0.925173, 0.099338,
		0.418582, -0.068499, -0.905592,
		-0.831025, 0.373313, -0.412353,
		33.651337, 34.200108, 32.691463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408779, 34.496101, 32.485035>,  <34.233051, 33.938786, 32.980110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408779, 34.496101, 32.485035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020058, 34.546146, 32.564980>,  <33.786823, 34.576172, 32.612946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020058, 34.546146, 32.564980>,  <34.408779, 34.496101, 32.485035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020058, 34.546146, 32.564980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153813, 0.978811, 0.135167,
		-0.178715, 0.162097, -0.970456,
		-0.971804, 0.125112, 0.199861,
		33.728516, 34.583679, 32.624939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130379, 34.976490, 31.978868>,  <34.408779, 34.496101, 32.485035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130379, 34.976490, 31.978868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881130, 34.976048, 32.291718>,  <33.731579, 34.975780, 32.479427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881130, 34.976048, 32.291718>,  <34.130379, 34.976490, 31.978868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881130, 34.976048, 32.291718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110791, 0.989790, 0.089672,
		-0.774236, 0.142529, -0.616639,
		-0.623124, -0.001109, 0.782122,
		33.694195, 34.975716, 32.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625671, 35.584026, 31.901728>,  <34.130379, 34.976490, 31.978868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625671, 35.584026, 31.901728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599934, 35.475998, 32.286003>,  <33.584492, 35.411179, 32.516567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599934, 35.475998, 32.286003>,  <33.625671, 35.584026, 31.901728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599934, 35.475998, 32.286003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040946, 0.962586, 0.267866,
		-0.997087, -0.022101, -0.072996,
		-0.064345, -0.270075, 0.960687,
		33.580631, 35.394974, 32.574211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307171, 36.170410, 32.179565>,  <33.625671, 35.584026, 31.901728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307171, 36.170410, 32.179565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466145, 36.006687, 32.508080>,  <33.561531, 35.908455, 32.705189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466145, 36.006687, 32.508080>,  <33.307171, 36.170410, 32.179565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466145, 36.006687, 32.508080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245017, 0.909849, 0.334875,
		-0.884313, 0.068138, 0.461895,
		0.397438, -0.409307, 0.821286,
		33.585377, 35.883896, 32.754467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774010, 36.809433, 32.275333>,  <33.307171, 36.170410, 32.179565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774010, 36.809433, 32.275333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105057, 36.912910, 32.076080>,  <34.303684, 36.974998, 31.956530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105057, 36.912910, 32.076080>,  <33.774010, 36.809433, 32.275333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105057, 36.912910, 32.076080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397093, -0.357371, -0.845342,
		-0.396703, 0.897420, -0.193040,
		0.827614, 0.258695, -0.498129,
		34.353340, 36.990520, 31.926641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669086, 37.196114, 31.696529>,  <33.774010, 36.809433, 32.275333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669086, 37.196114, 31.696529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009872, 37.002167, 31.617474>,  <34.214344, 36.885799, 31.570040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009872, 37.002167, 31.617474>,  <33.669086, 37.196114, 31.696529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009872, 37.002167, 31.617474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329140, -0.202377, -0.922339,
		0.407214, 0.850851, -0.332007,
		0.851964, -0.484867, -0.197638,
		34.265461, 36.856709, 31.558182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836514, 37.427086, 31.046026>,  <33.669086, 37.196114, 31.696529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836514, 37.427086, 31.046026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036728, 37.084827, 31.098684>,  <34.156857, 36.879471, 31.130280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036728, 37.084827, 31.098684>,  <33.836514, 37.427086, 31.046026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036728, 37.084827, 31.098684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400116, -0.363497, -0.841295,
		0.767704, 0.368426, -0.524302,
		0.500537, -0.855647, 0.131645,
		34.186890, 36.828133, 31.138178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180408, 37.343227, 30.406410>,  <33.836514, 37.427086, 31.046026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180408, 37.343227, 30.406410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257545, 36.974880, 30.541950>,  <34.303829, 36.753872, 30.623274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257545, 36.974880, 30.541950>,  <34.180408, 37.343227, 30.406410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257545, 36.974880, 30.541950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277652, -0.382430, -0.881281,
		0.941127, 0.075867, -0.329429,
		0.192844, -0.920864, 0.338851,
		34.315399, 36.698620, 30.643606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494854, 36.995358, 29.872931>,  <34.180408, 37.343227, 30.406410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494854, 36.995358, 29.872931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304962, 36.732445, 30.107063>,  <34.191029, 36.574696, 30.247543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.304962, 36.732445, 30.107063>,  <34.494854, 36.995358, 29.872931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304962, 36.732445, 30.107063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309152, -0.498142, -0.810111,
		0.824049, -0.565540, 0.033283,
		-0.474730, -0.657282, 0.585331,
		34.162544, 36.535259, 30.282663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654129, 36.375782, 29.571121>,  <34.494854, 36.995358, 29.872931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654129, 36.375782, 29.571121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328407, 36.319820, 29.796452>,  <34.132973, 36.286243, 29.931650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328407, 36.319820, 29.796452>,  <34.654129, 36.375782, 29.571121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328407, 36.319820, 29.796452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325294, -0.693790, -0.642526,
		0.480719, -0.706458, 0.519449,
		-0.814306, -0.139901, 0.563324,
		34.084114, 36.277851, 29.965448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659679, 35.680664, 29.650003>,  <34.654129, 36.375782, 29.571121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659679, 35.680664, 29.650003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289680, 35.812145, 29.726250>,  <34.067680, 35.891033, 29.771997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289680, 35.812145, 29.726250>,  <34.659679, 35.680664, 29.650003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289680, 35.812145, 29.726250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379952, -0.795189, -0.472557,
		-0.003753, -0.509540, 0.860439,
		-0.924998, 0.328699, 0.190617,
		34.012180, 35.910755, 29.783434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345982, 35.093601, 30.047838>,  <34.659679, 35.680664, 29.650003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345982, 35.093601, 30.047838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058826, 35.327473, 29.896687>,  <33.886532, 35.467796, 29.805996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058826, 35.327473, 29.896687>,  <34.345982, 35.093601, 30.047838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058826, 35.327473, 29.896687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400572, -0.790869, -0.462675,
		-0.569369, -0.180779, 0.801959,
		-0.717887, 0.584675, -0.377881,
		33.843460, 35.502876, 29.783321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682808, 34.646400, 30.063099>,  <34.345982, 35.093601, 30.047838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682808, 34.646400, 30.063099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617466, 34.957500, 29.820309>,  <33.578259, 35.144161, 29.674635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617466, 34.957500, 29.820309>,  <33.682808, 34.646400, 30.063099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617466, 34.957500, 29.820309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399203, -0.614733, -0.680250,
		-0.902192, 0.131181, 0.410902,
		-0.163359, 0.777750, -0.606975,
		33.568459, 35.190826, 29.638216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955559, 34.511478, 29.805107>,  <33.682808, 34.646400, 30.063099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955559, 34.511478, 29.805107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164116, 34.752850, 29.563768>,  <33.289249, 34.897671, 29.418966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164116, 34.752850, 29.563768>,  <32.955559, 34.511478, 29.805107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164116, 34.752850, 29.563768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264846, -0.557705, -0.786652,
		-0.811173, 0.569952, -0.130971,
		0.521398, 0.603424, -0.603345,
		33.320534, 34.933876, 29.382765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563736, 34.528938, 29.183245>,  <32.955559, 34.511478, 29.805107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563736, 34.528938, 29.183245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907570, 34.669304, 29.034668>,  <33.113873, 34.753521, 28.945522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907570, 34.669304, 29.034668>,  <32.563736, 34.528938, 29.183245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907570, 34.669304, 29.034668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124526, -0.561142, -0.818299,
		-0.495583, 0.749654, -0.438653,
		0.859587, 0.350911, -0.371444,
		33.165447, 34.774578, 28.923235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444290, 34.749660, 28.497009>,  <32.563736, 34.528938, 29.183245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444290, 34.749660, 28.497009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840008, 34.695324, 28.518312>,  <33.077438, 34.662724, 28.531094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840008, 34.695324, 28.518312>,  <32.444290, 34.749660, 28.497009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840008, 34.695324, 28.518312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007252, -0.318774, -0.947803,
		0.145725, 0.938046, -0.314378,
		0.989299, -0.135838, 0.053256,
		33.136799, 34.654572, 28.534288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660221, 35.163734, 27.963835>,  <32.444290, 34.749660, 28.497009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660221, 35.163734, 27.963835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935730, 34.881989, 28.032503>,  <33.101036, 34.712940, 28.073704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935730, 34.881989, 28.032503>,  <32.660221, 35.163734, 27.963835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935730, 34.881989, 28.032503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166851, -0.384446, -0.907944,
		0.705518, 0.596723, -0.382318,
		0.688771, -0.704361, 0.171669,
		33.142361, 34.670681, 28.084003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960106, 35.102165, 27.353968>,  <32.660221, 35.163734, 27.963835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960106, 35.102165, 27.353968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079437, 34.765499, 27.534014>,  <33.151035, 34.563499, 27.642042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079437, 34.765499, 27.534014>,  <32.960106, 35.102165, 27.353968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079437, 34.765499, 27.534014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088153, -0.493873, -0.865054,
		0.950383, 0.218394, -0.221534,
		0.298332, -0.841661, 0.450116,
		33.168938, 34.513000, 27.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525845, 34.899128, 26.846928>,  <32.960106, 35.102165, 27.353968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525845, 34.899128, 26.846928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455544, 34.585476, 27.085001>,  <33.413364, 34.397285, 27.227846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455544, 34.585476, 27.085001>,  <33.525845, 34.899128, 26.846928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455544, 34.585476, 27.085001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214327, -0.620571, -0.754291,
		0.960820, -0.005005, 0.277128,
		-0.175753, -0.784134, 0.595185,
		33.402817, 34.350235, 27.263556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173393, 34.398170, 26.964191>,  <33.525845, 34.899128, 26.846928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173393, 34.398170, 26.964191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825615, 34.203114, 26.995863>,  <33.616947, 34.086079, 27.014866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825615, 34.203114, 26.995863>,  <34.173393, 34.398170, 26.964191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825615, 34.203114, 26.995863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232173, -0.544790, -0.805791,
		0.436074, -0.682208, 0.586883,
		-0.869445, -0.487643, 0.079178,
		33.564781, 34.056820, 27.019617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321251, 33.708416, 26.797953>,  <34.173393, 34.398170, 26.964191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321251, 33.708416, 26.797953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922981, 33.680359, 26.773603>,  <33.684017, 33.663525, 26.758993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922981, 33.680359, 26.773603>,  <34.321251, 33.708416, 26.797953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922981, 33.680359, 26.773603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091427, -0.625155, -0.775127,
		0.016312, -0.777342, 0.628866,
		-0.995678, -0.070139, -0.060873,
		33.624279, 33.659317, 26.755342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161186, 33.068108, 26.751942>,  <34.321251, 33.708416, 26.797953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161186, 33.068108, 26.751942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830883, 33.239918, 26.605722>,  <33.632702, 33.343002, 26.517992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830883, 33.239918, 26.605722>,  <34.161186, 33.068108, 26.751942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830883, 33.239918, 26.605722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101354, -0.524554, -0.845323,
		-0.554842, -0.735083, 0.389620,
		-0.825759, 0.429531, -0.365549,
		33.583153, 33.368774, 26.496059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961010, 32.590919, 26.441233>,  <34.161186, 33.068108, 26.751942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961010, 32.590919, 26.441233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740368, 32.891712, 26.296869>,  <33.607983, 33.072186, 26.210251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740368, 32.891712, 26.296869>,  <33.961010, 32.590919, 26.441233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740368, 32.891712, 26.296869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124357, -0.501999, -0.855881,
		-0.824780, -0.427230, 0.370421,
		-0.551609, 0.751978, -0.360909,
		33.574886, 33.117306, 26.188597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439373, 32.297020, 26.027494>,  <33.961010, 32.590919, 26.441233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439373, 32.297020, 26.027494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449474, 32.677250, 25.903713>,  <33.455536, 32.905388, 25.829445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449474, 32.677250, 25.903713>,  <33.439373, 32.297020, 26.027494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449474, 32.677250, 25.903713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180519, -0.300128, -0.936662,
		-0.983247, 0.079514, 0.164019,
		0.025251, 0.950579, -0.309453,
		33.457050, 32.962425, 25.810877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919353, 32.373005, 25.536448>,  <33.439373, 32.297020, 26.027494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919353, 32.373005, 25.536448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143414, 32.686413, 25.428869>,  <33.277847, 32.874458, 25.364323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143414, 32.686413, 25.428869>,  <32.919353, 32.373005, 25.536448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143414, 32.686413, 25.428869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235891, -0.160353, -0.958458,
		-0.794097, 0.600321, 0.095003,
		0.560148, 0.783519, -0.268946,
		33.311459, 32.921467, 25.348185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543644, 32.711250, 24.841454>,  <32.919353, 32.373005, 25.536448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543644, 32.711250, 24.841454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925640, 32.827034, 24.867409>,  <33.154839, 32.896503, 24.882982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925640, 32.827034, 24.867409>,  <32.543644, 32.711250, 24.841454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925640, 32.827034, 24.867409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041934, 0.084815, -0.995514,
		-0.293659, 0.953427, 0.068859,
		0.954990, 0.289454, 0.064888,
		33.212135, 32.913872, 24.886875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535175, 33.126743, 24.234901>,  <32.543644, 32.711250, 24.841454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535175, 33.126743, 24.234901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918491, 33.055820, 24.324558>,  <33.148479, 33.013268, 24.378353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918491, 33.055820, 24.324558>,  <32.535175, 33.126743, 24.234901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918491, 33.055820, 24.324558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191531, -0.183664, -0.964149,
		0.212122, 0.966865, -0.142042,
		0.958290, -0.177311, 0.224144,
		33.205978, 33.002628, 24.391802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884491, 33.512951, 23.759817>,  <32.535175, 33.126743, 24.234901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884491, 33.512951, 23.759817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127983, 33.218006, 23.876951>,  <33.274078, 33.041039, 23.947231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127983, 33.218006, 23.876951>,  <32.884491, 33.512951, 23.759817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127983, 33.218006, 23.876951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218850, -0.198720, -0.955309,
		0.762597, 0.645610, 0.040404,
		0.608728, -0.737359, 0.292836,
		33.310600, 32.996799, 23.964802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564407, 33.638229, 23.503662>,  <32.884491, 33.512951, 23.759817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564407, 33.638229, 23.503662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565742, 33.247417, 23.588896>,  <33.566544, 33.012932, 23.640036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565742, 33.247417, 23.588896>,  <33.564407, 33.638229, 23.503662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565742, 33.247417, 23.588896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302793, -0.202094, -0.931383,
		0.953051, 0.067625, 0.295163,
		0.003334, -0.977029, 0.213082,
		33.566742, 32.954308, 23.652821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189243, 33.431248, 23.186584>,  <33.564407, 33.638229, 23.503662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189243, 33.431248, 23.186584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997364, 33.084770, 23.242592>,  <33.882236, 32.876884, 23.276196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997364, 33.084770, 23.242592>,  <34.189243, 33.431248, 23.186584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997364, 33.084770, 23.242592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193664, -0.260159, -0.945945,
		0.855796, -0.426648, 0.292547,
		-0.479694, -0.866192, 0.140017,
		33.853455, 32.824913, 23.284597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594707, 32.974312, 23.038248>,  <34.189243, 33.431248, 23.186584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594707, 32.974312, 23.038248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261238, 32.761684, 22.978350>,  <34.061157, 32.634106, 22.942411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.261238, 32.761684, 22.978350>,  <34.594707, 32.974312, 23.038248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261238, 32.761684, 22.978350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377135, -0.349903, -0.857518,
		0.403436, -0.771363, 0.492178,
		-0.833672, -0.531571, -0.149744,
		34.011135, 32.602215, 22.933426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266167, 32.844608, 23.260626>,  <34.594707, 32.974312, 23.038248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266167, 32.844608, 23.260626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660622, 32.782352, 23.237644>,  <35.897297, 32.744999, 23.223854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660622, 32.782352, 23.237644>,  <35.266167, 32.844608, 23.260626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660622, 32.782352, 23.237644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134036, 0.543313, 0.828762,
		-0.097772, -0.824977, 0.556644,
		0.986142, -0.155640, -0.057456,
		35.956463, 32.735661, 23.220407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469658, 32.703930, 23.968210>,  <35.266167, 32.844608, 23.260626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469658, 32.703930, 23.968210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793900, 32.834858, 23.773983>,  <35.988445, 32.913414, 23.657446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793900, 32.834858, 23.773983>,  <35.469658, 32.703930, 23.968210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793900, 32.834858, 23.773983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090274, 0.749437, 0.655893,
		0.578590, -0.575506, 0.577951,
		0.810608, 0.327319, -0.485569,
		36.037083, 32.933052, 23.628313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025539, 32.695377, 24.469158>,  <35.469658, 32.703930, 23.968210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025539, 32.695377, 24.469158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095661, 32.962910, 24.180178>,  <36.137733, 33.123428, 24.006788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095661, 32.962910, 24.180178>,  <36.025539, 32.695377, 24.469158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095661, 32.962910, 24.180178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254121, 0.678211, 0.689531,
		0.951153, -0.304467, -0.051072,
		0.175302, 0.668828, -0.722453,
		36.148251, 33.163559, 23.963442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625271, 32.869698, 24.704395>,  <36.025539, 32.695377, 24.469158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625271, 32.869698, 24.704395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489838, 33.158848, 24.463461>,  <36.408577, 33.332340, 24.318901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489838, 33.158848, 24.463461>,  <36.625271, 32.869698, 24.704395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489838, 33.158848, 24.463461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312609, 0.690203, 0.652607,
		0.887490, 0.032665, -0.459668,
		-0.338581, 0.722879, -0.602336,
		36.388264, 33.375710, 24.282761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150429, 33.335369, 24.571796>,  <36.625271, 32.869698, 24.704395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150429, 33.335369, 24.571796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839943, 33.557518, 24.452429>,  <36.653652, 33.690807, 24.380808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839943, 33.557518, 24.452429>,  <37.150429, 33.335369, 24.571796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839943, 33.557518, 24.452429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305805, 0.745575, 0.592115,
		0.551337, 0.368350, -0.748562,
		-0.776215, 0.555369, -0.298420,
		36.607079, 33.724129, 24.362904>
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
