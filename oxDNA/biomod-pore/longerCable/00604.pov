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
	<24.100277, 34.793606, 34.515324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.989418, 34.975395, 34.853943>,  <23.922903, 35.084469, 35.057114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.989418, 34.975395, 34.853943>,  <24.100277, 34.793606, 34.515324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.989418, 34.975395, 34.853943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950570, 0.001293, 0.310507,
		0.140023, 0.890757, -0.432372,
		-0.277145, 0.454478, 0.846546,
		23.906275, 35.111740, 35.107906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570196, 35.424213, 34.675903>,  <24.100277, 34.793606, 34.515324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570196, 35.424213, 34.675903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450031, 35.321007, 35.043201>,  <24.377932, 35.259083, 35.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450031, 35.321007, 35.043201>,  <24.570196, 35.424213, 34.675903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450031, 35.321007, 35.043201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940845, 0.078034, 0.329731,
		-0.156730, 0.962984, 0.219311,
		-0.300412, -0.258016, 0.918249,
		24.359907, 35.243603, 35.318676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952423, 35.852768, 35.149979>,  <24.570196, 35.424213, 34.675903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952423, 35.852768, 35.149979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830269, 35.528957, 35.350540>,  <24.756975, 35.334671, 35.470879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830269, 35.528957, 35.350540>,  <24.952423, 35.852768, 35.149979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830269, 35.528957, 35.350540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936741, -0.160817, 0.310893,
		-0.171041, 0.564632, 0.807426,
		-0.305388, -0.809524, 0.501407,
		24.738653, 35.286098, 35.500961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909655, 35.822594, 35.954430>,  <24.952423, 35.852768, 35.149979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909655, 35.822594, 35.954430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997742, 35.471569, 35.784069>,  <25.050594, 35.260956, 35.681850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997742, 35.471569, 35.784069>,  <24.909655, 35.822594, 35.954430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997742, 35.471569, 35.784069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968408, 0.144315, 0.203368,
		-0.117003, -0.457236, 0.881615,
		0.220217, -0.877558, -0.425906,
		25.063807, 35.208302, 35.656296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184969, 35.342888, 36.353561>,  <24.909655, 35.822594, 35.954430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184969, 35.342888, 36.353561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340076, 35.259388, 35.994438>,  <25.433142, 35.209290, 35.778965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340076, 35.259388, 35.994438>,  <25.184969, 35.342888, 36.353561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340076, 35.259388, 35.994438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920679, 0.134788, 0.366310,
		0.044548, -0.968637, 0.244454,
		0.387771, -0.208745, -0.897808,
		25.456408, 35.196766, 35.725098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585287, 34.785938, 36.527847>,  <25.184969, 35.342888, 36.353561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585287, 34.785938, 36.527847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679552, 35.000057, 36.203400>,  <25.736111, 35.128529, 36.008732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679552, 35.000057, 36.203400>,  <25.585287, 34.785938, 36.527847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679552, 35.000057, 36.203400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917674, 0.152165, 0.367042,
		0.319902, -0.830843, -0.455370,
		0.235663, 0.535299, -0.811121,
		25.750252, 35.160648, 35.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219179, 34.588535, 36.141647>,  <25.585287, 34.785938, 36.527847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219179, 34.588535, 36.141647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215189, 34.986248, 36.099113>,  <26.212795, 35.224876, 36.073593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215189, 34.986248, 36.099113>,  <26.219179, 34.588535, 36.141647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215189, 34.986248, 36.099113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900766, 0.055109, 0.430794,
		0.434190, -0.091485, -0.896164,
		-0.009976, 0.994280, -0.106334,
		26.212196, 35.284531, 36.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807951, 34.897934, 35.732315>,  <26.219179, 34.588535, 36.141647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807951, 34.897934, 35.732315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678249, 35.154537, 36.010399>,  <26.600428, 35.308498, 36.177250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678249, 35.154537, 36.010399>,  <26.807951, 34.897934, 35.732315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678249, 35.154537, 36.010399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930632, 0.084524, 0.356061,
		0.169656, 0.762442, -0.624420,
		-0.324254, 0.641513, 0.695213,
		26.580973, 35.346992, 36.218964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084188, 35.604530, 35.696960>,  <26.807951, 34.897934, 35.732315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084188, 35.604530, 35.696960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987024, 35.466747, 36.059692>,  <26.928726, 35.384075, 36.277332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987024, 35.466747, 36.059692>,  <27.084188, 35.604530, 35.696960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987024, 35.466747, 36.059692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964184, 0.016910, 0.264696,
		-0.106512, 0.938648, 0.328017,
		-0.242910, -0.344462, 0.906830,
		26.914152, 35.363407, 36.331741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199221, 36.225475, 36.158974>,  <27.084188, 35.604530, 35.696960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199221, 36.225475, 36.158974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210886, 35.850327, 36.297272>,  <27.217886, 35.625237, 36.380249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210886, 35.850327, 36.297272>,  <27.199221, 36.225475, 36.158974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210886, 35.850327, 36.297272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953973, 0.129398, 0.270539,
		-0.298470, 0.321939, 0.898482,
		0.029165, -0.937876, 0.345743,
		27.219635, 35.568962, 36.400993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398006, 36.130695, 36.866447>,  <27.199221, 36.225475, 36.158974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398006, 36.130695, 36.866447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497873, 35.813683, 36.643894>,  <27.557795, 35.623474, 36.510365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497873, 35.813683, 36.643894>,  <27.398006, 36.130695, 36.866447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497873, 35.813683, 36.643894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968169, 0.214816, 0.128462,
		0.017709, -0.570744, 0.820937,
		0.249669, -0.792531, -0.556381,
		27.572775, 35.575924, 36.476978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723160, 35.599449, 37.238079>,  <27.398006, 36.130695, 36.866447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723160, 35.599449, 37.238079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848867, 35.587601, 36.858532>,  <27.924292, 35.580494, 36.630802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848867, 35.587601, 36.858532>,  <27.723160, 35.599449, 37.238079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848867, 35.587601, 36.858532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943050, 0.124549, 0.308454,
		0.109045, -0.991771, 0.067075,
		0.314270, -0.029619, -0.948871,
		27.943148, 35.578716, 36.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281042, 35.071331, 37.210930>,  <27.723160, 35.599449, 37.238079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281042, 35.071331, 37.210930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279318, 35.380753, 36.957443>,  <28.278284, 35.566406, 36.805351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279318, 35.380753, 36.957443>,  <28.281042, 35.071331, 37.210930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279318, 35.380753, 36.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941556, 0.216598, 0.257988,
		0.336829, -0.595570, -0.729276,
		-0.004310, 0.773551, -0.633719,
		28.278025, 35.612820, 36.767326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826410, 35.179585, 36.640804>,  <28.281042, 35.071331, 37.210930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826410, 35.179585, 36.640804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750641, 35.548222, 36.776321>,  <28.705179, 35.769405, 36.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750641, 35.548222, 36.776321>,  <28.826410, 35.179585, 36.640804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750641, 35.548222, 36.776321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950438, 0.085460, 0.298937,
		0.246547, 0.378624, -0.892109,
		-0.189424, 0.921597, 0.338789,
		28.693813, 35.824699, 36.877956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214718, 35.720016, 36.304501>,  <28.826410, 35.179585, 36.640804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214718, 35.720016, 36.304501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157070, 35.762806, 36.698006>,  <29.122480, 35.788479, 36.934109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157070, 35.762806, 36.698006>,  <29.214718, 35.720016, 36.304501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157070, 35.762806, 36.698006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973695, -0.161971, 0.160260,
		0.176485, 0.980980, -0.080819,
		-0.144121, 0.106976, 0.983761,
		29.113834, 35.794899, 36.993134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549538, 36.359722, 36.570011>,  <29.214718, 35.720016, 36.304501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549538, 36.359722, 36.570011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533865, 36.049046, 36.821476>,  <29.524462, 35.862640, 36.972355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533865, 36.049046, 36.821476>,  <29.549538, 36.359722, 36.570011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533865, 36.049046, 36.821476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994756, 0.029170, 0.098034,
		-0.094481, 0.629206, 0.771475,
		-0.039179, -0.776691, 0.628662,
		29.522112, 35.816040, 37.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756311, 36.632969, 37.193138>,  <29.549538, 36.359722, 36.570011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756311, 36.632969, 37.193138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825972, 36.241001, 37.154282>,  <29.867767, 36.005821, 37.130966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825972, 36.241001, 37.154282>,  <29.756311, 36.632969, 37.193138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825972, 36.241001, 37.154282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982024, 0.165531, 0.090712,
		-0.072810, -0.111196, 0.991128,
		0.174149, -0.979916, -0.097145,
		29.878216, 35.947025, 37.125137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210167, 36.471634, 37.716576>,  <29.756311, 36.632969, 37.193138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210167, 36.471634, 37.716576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244272, 36.287251, 37.363247>,  <30.264736, 36.176620, 37.151249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244272, 36.287251, 37.363247>,  <30.210167, 36.471634, 37.716576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244272, 36.287251, 37.363247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937693, 0.336839, -0.085265,
		0.336839, -0.821011, 0.460957,
		0.085265, -0.460957, -0.883317,
		30.269852, 36.148964, 37.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773251, 35.964912, 37.670353>,  <30.210167, 36.471634, 37.716576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773251, 35.964912, 37.670353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700941, 36.097862, 37.300087>,  <30.657557, 36.177631, 37.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700941, 36.097862, 37.300087>,  <30.773251, 35.964912, 37.670353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700941, 36.097862, 37.300087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932324, 0.357618, -0.053666,
		0.313197, -0.872719, -0.374525,
		-0.180773, 0.332371, -0.925662,
		30.646709, 36.197575, 37.022388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291246, 35.626163, 37.089405>,  <30.773251, 35.964912, 37.670353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291246, 35.626163, 37.089405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180141, 36.006870, 37.037281>,  <31.113480, 36.235294, 37.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180141, 36.006870, 37.037281>,  <31.291246, 35.626163, 37.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180141, 36.006870, 37.037281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956738, 0.286302, 0.051795,
		0.086606, -0.110289, -0.990119,
		-0.277761, 0.951771, -0.130313,
		31.096813, 36.292400, 36.998188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785782, 35.943123, 36.730621>,  <31.291246, 35.626163, 37.089405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785782, 35.943123, 36.730621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612116, 36.291229, 36.823692>,  <31.507915, 36.500092, 36.879536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612116, 36.291229, 36.823692>,  <31.785782, 35.943123, 36.730621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612116, 36.291229, 36.823692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899337, 0.433616, 0.056299,
		-0.051899, 0.233702, -0.970922,
		-0.434165, 0.870265, 0.232681,
		31.481867, 36.552307, 36.893497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250381, 35.743763, 36.266453>,  <31.785782, 35.943123, 36.730621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250381, 35.743763, 36.266453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528240, 35.504173, 36.107105>,  <32.694958, 35.360420, 36.011497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528240, 35.504173, 36.107105>,  <32.250381, 35.743763, 36.266453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528240, 35.504173, 36.107105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027391, 0.575410, -0.817406,
		0.718825, 0.556901, 0.416115,
		0.694651, -0.598970, -0.398365,
		32.736637, 35.324482, 35.987595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908737, 36.119881, 36.221458>,  <32.250381, 35.743763, 36.266453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908737, 36.119881, 36.221458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838840, 35.853271, 35.931572>,  <32.796902, 35.693306, 35.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838840, 35.853271, 35.931572>,  <32.908737, 36.119881, 36.221458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838840, 35.853271, 35.931572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084709, 0.723133, -0.685495,
		0.980964, -0.181172, -0.069898,
		-0.174738, -0.666525, -0.724714,
		32.786419, 35.653313, 35.714157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492321, 35.884552, 35.729305>,  <32.908737, 36.119881, 36.221458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492321, 35.884552, 35.729305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143600, 35.876072, 35.533546>,  <32.934368, 35.870983, 35.416092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143600, 35.876072, 35.533546>,  <33.492321, 35.884552, 35.729305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143600, 35.876072, 35.533546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235367, 0.858060, -0.456437,
		0.429609, -0.513112, -0.743070,
		-0.871802, -0.021195, -0.489399,
		32.882061, 35.869713, 35.386726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626106, 36.021095, 34.961979>,  <33.492321, 35.884552, 35.729305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626106, 36.021095, 34.961979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247341, 36.096790, 35.065937>,  <33.020081, 36.142208, 35.128311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247341, 36.096790, 35.065937>,  <33.626106, 36.021095, 34.961979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247341, 36.096790, 35.065937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024754, 0.848923, -0.527937,
		-0.320535, -0.493477, -0.808541,
		-0.946913, 0.189237, 0.259894,
		32.963268, 36.153561, 35.143906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074284, 36.120087, 34.375866>,  <33.626106, 36.021095, 34.961979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074284, 36.120087, 34.375866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029739, 36.352345, 34.698467>,  <33.003014, 36.491699, 34.892029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029739, 36.352345, 34.698467>,  <33.074284, 36.120087, 34.375866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029739, 36.352345, 34.698467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005955, 0.811928, -0.583727,
		-0.993762, -0.060203, -0.093877,
		-0.111364, 0.580644, 0.806505,
		32.996330, 36.526539, 34.940418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928596, 36.773937, 34.481476>,  <33.074284, 36.120087, 34.375866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928596, 36.773937, 34.481476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786541, 37.099060, 34.296772>,  <32.701305, 37.294132, 34.185951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786541, 37.099060, 34.296772>,  <32.928596, 36.773937, 34.481476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786541, 37.099060, 34.296772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886140, 0.450023, 0.110611,
		0.297706, -0.369898, -0.880083,
		-0.355143, 0.812807, -0.461756,
		32.679996, 37.342903, 34.158245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815247, 37.142315, 35.120018>,  <32.928596, 36.773937, 34.481476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815247, 37.142315, 35.120018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983936, 37.395016, 35.380180>,  <33.085152, 37.546638, 35.536278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983936, 37.395016, 35.380180>,  <32.815247, 37.142315, 35.120018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983936, 37.395016, 35.380180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889040, -0.147133, -0.433543,
		-0.178197, 0.761075, -0.623707,
		0.421727, 0.631756, 0.650408,
		33.110455, 37.584541, 35.575302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375553, 37.714779, 34.829655>,  <32.815247, 37.142315, 35.120018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375553, 37.714779, 34.829655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493492, 37.617794, 35.199364>,  <33.564255, 37.559605, 35.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493492, 37.617794, 35.199364>,  <33.375553, 37.714779, 34.829655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493492, 37.617794, 35.199364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924567, -0.171904, -0.340037,
		0.241332, 0.954810, 0.173486,
		0.294847, -0.242461, 0.924271,
		33.581947, 37.545055, 35.476646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965340, 38.064438, 34.891197>,  <33.375553, 37.714779, 34.829655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965340, 38.064438, 34.891197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980019, 37.768639, 35.160061>,  <33.988827, 37.591160, 35.321377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980019, 37.768639, 35.160061>,  <33.965340, 38.064438, 34.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980019, 37.768639, 35.160061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893417, -0.277066, -0.353610,
		0.447726, 0.613494, 0.650513,
		0.036702, -0.739500, 0.672156,
		33.991028, 37.546787, 35.361706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522255, 38.064526, 35.396992>,  <33.965340, 38.064438, 34.891197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522255, 38.064526, 35.396992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441021, 37.693413, 35.271782>,  <34.392281, 37.470745, 35.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441021, 37.693413, 35.271782>,  <34.522255, 38.064526, 35.396992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441021, 37.693413, 35.271782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969769, -0.146406, -0.195224,
		0.135296, -0.343208, 0.929464,
		-0.203082, -0.927779, -0.313024,
		34.380096, 37.415077, 35.177876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977795, 37.586441, 35.724457>,  <34.522255, 38.064526, 35.396992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977795, 37.586441, 35.724457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852673, 37.457146, 35.367207>,  <34.777599, 37.379570, 35.152855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852673, 37.457146, 35.367207>,  <34.977795, 37.586441, 35.724457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852673, 37.457146, 35.367207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949773, -0.115454, -0.290864,
		-0.009097, -0.939250, 0.343114,
		-0.312808, -0.323234, -0.893124,
		34.758831, 37.360176, 35.099270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400528, 36.952980, 35.574791>,  <34.977795, 37.586441, 35.724457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400528, 36.952980, 35.574791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233318, 37.130322, 35.257629>,  <35.132992, 37.236725, 35.067333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233318, 37.130322, 35.257629>,  <35.400528, 36.952980, 35.574791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233318, 37.130322, 35.257629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875298, -0.037028, -0.482164,
		-0.243128, -0.895583, -0.372585,
		-0.418022, 0.443351, -0.792905,
		35.107910, 37.263329, 35.019756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425335, 36.494503, 34.973656>,  <35.400528, 36.952980, 35.574791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425335, 36.494503, 34.973656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413151, 36.858601, 34.808475>,  <35.405842, 37.077061, 34.709366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413151, 36.858601, 34.808475>,  <35.425335, 36.494503, 34.973656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413151, 36.858601, 34.808475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671724, -0.287301, -0.682822,
		-0.740176, -0.298186, -0.602682,
		-0.030457, 0.910244, -0.412951,
		35.404015, 37.131672, 34.684589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066448, 36.497711, 34.345448>,  <35.425335, 36.494503, 34.973656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066448, 36.497711, 34.345448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370064, 36.754890, 34.386391>,  <35.552235, 36.909195, 34.410957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370064, 36.754890, 34.386391>,  <35.066448, 36.497711, 34.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370064, 36.754890, 34.386391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519802, -0.503827, -0.689901,
		-0.391995, 0.576872, -0.716630,
		0.759043, 0.642943, 0.102362,
		35.597778, 36.947773, 34.417099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164883, 36.894657, 33.674114>,  <35.066448, 36.497711, 34.345448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164883, 36.894657, 33.674114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474415, 36.836296, 33.920654>,  <35.660133, 36.801281, 34.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474415, 36.836296, 33.920654>,  <35.164883, 36.894657, 33.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474415, 36.836296, 33.920654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470354, -0.519351, -0.713471,
		0.424202, 0.842013, -0.333265,
		0.773834, -0.145903, 0.616355,
		35.706566, 36.792526, 34.105560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896938, 37.125446, 33.339771>,  <35.164883, 36.894657, 33.674114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896938, 37.125446, 33.339771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943577, 36.818867, 33.592426>,  <35.971561, 36.634918, 33.744019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943577, 36.818867, 33.592426>,  <35.896938, 37.125446, 33.339771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943577, 36.818867, 33.592426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391919, -0.548856, -0.738347,
		0.912581, 0.333641, 0.236388,
		0.116600, -0.766447, 0.631636,
		35.978558, 36.588932, 33.781918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548309, 36.749027, 33.274590>,  <35.896938, 37.125446, 33.339771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548309, 36.749027, 33.274590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297382, 36.466625, 33.406055>,  <36.146824, 36.297184, 33.484936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297382, 36.466625, 33.406055>,  <36.548309, 36.749027, 33.274590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297382, 36.466625, 33.406055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416867, -0.660907, -0.624038,
		0.657791, -0.254465, 0.708914,
		-0.627322, -0.706009, 0.328661,
		36.109184, 36.254822, 33.504654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962296, 37.276630, 33.623005>,  <36.548309, 36.749027, 33.274590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962296, 37.276630, 33.623005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278744, 37.201447, 33.855827>,  <37.468613, 37.156338, 33.995522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278744, 37.201447, 33.855827>,  <36.962296, 37.276630, 33.623005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278744, 37.201447, 33.855827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147441, 0.864950, 0.479711,
		-0.593620, -0.465330, 0.656569,
		0.791123, -0.187961, 0.582061,
		37.516079, 37.145058, 34.030445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702515, 37.224266, 34.338097>,  <36.962296, 37.276630, 33.623005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702515, 37.224266, 34.338097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077938, 37.353619, 34.289867>,  <37.303192, 37.431229, 34.260929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077938, 37.353619, 34.289867>,  <36.702515, 37.224266, 34.338097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077938, 37.353619, 34.289867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234284, 0.853507, 0.465444,
		0.253422, -0.408598, 0.876827,
		0.938556, 0.323380, -0.120570,
		37.359505, 37.450634, 34.253696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764996, 37.410461, 35.027462>,  <36.702515, 37.224266, 34.338097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764996, 37.410461, 35.027462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001400, 37.612846, 34.776161>,  <37.143242, 37.734276, 34.625381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001400, 37.612846, 34.776161>,  <36.764996, 37.410461, 35.027462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001400, 37.612846, 34.776161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148890, 0.833874, 0.531494,
		0.792801, -0.220580, 0.568165,
		0.591015, 0.505963, -0.628254,
		37.178703, 37.764637, 34.587685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460144, 37.483166, 35.215141>,  <36.764996, 37.410461, 35.027462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460144, 37.483166, 35.215141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333790, 37.797459, 35.002407>,  <37.257977, 37.986034, 34.874767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333790, 37.797459, 35.002407>,  <37.460144, 37.483166, 35.215141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333790, 37.797459, 35.002407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013758, 0.564269, 0.825476,
		0.948697, 0.253440, -0.189055,
		-0.315887, 0.785728, -0.531834,
		37.239025, 38.033176, 34.842857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968887, 38.056732, 35.341045>,  <37.460144, 37.483166, 35.215141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968887, 38.056732, 35.341045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626263, 38.212608, 35.205723>,  <37.420689, 38.306133, 35.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626263, 38.212608, 35.205723>,  <37.968887, 38.056732, 35.341045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626263, 38.212608, 35.205723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019159, 0.679133, 0.733765,
		0.515693, 0.622031, -0.589183,
		-0.856559, 0.389686, -0.338307,
		37.369293, 38.329514, 35.104229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121441, 37.711918, 34.841858>,  <37.968887, 38.056732, 35.341045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121441, 37.711918, 34.841858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218048, 37.400860, 34.609673>,  <38.276012, 37.214226, 34.470364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218048, 37.400860, 34.609673>,  <38.121441, 37.711918, 34.841858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218048, 37.400860, 34.609673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754520, 0.526639, -0.391601,
		0.610219, -0.343389, 0.713944,
		0.241519, -0.777648, -0.580459,
		38.290504, 37.167564, 34.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823193, 37.696320, 34.856068>,  <38.121441, 37.711918, 34.841858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823193, 37.696320, 34.856068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720577, 37.527065, 34.508472>,  <38.659008, 37.425514, 34.299915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720577, 37.527065, 34.508472>,  <38.823193, 37.696320, 34.856068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720577, 37.527065, 34.508472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647806, 0.591977, -0.479490,
		0.717311, -0.685945, 0.122243,
		-0.256539, -0.423133, -0.868991,
		38.643616, 37.400124, 34.247776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377422, 37.390228, 34.500042>,  <38.823193, 37.696320, 34.856068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377422, 37.390228, 34.500042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107464, 37.505936, 34.228500>,  <38.945488, 37.575359, 34.065575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107464, 37.505936, 34.228500>,  <39.377422, 37.390228, 34.500042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107464, 37.505936, 34.228500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696706, 0.552906, -0.457051,
		0.243133, -0.781423, -0.574687,
		-0.674898, 0.289264, -0.678852,
		38.904995, 37.592716, 34.024845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958267, 36.970627, 34.005085>,  <39.377422, 37.390228, 34.500042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958267, 36.970627, 34.005085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006969, 37.035313, 33.613365>,  <39.036190, 37.074123, 33.378334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006969, 37.035313, 33.613365>,  <38.958267, 36.970627, 34.005085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006969, 37.035313, 33.613365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673542, -0.711241, -0.201189,
		-0.729052, 0.684094, 0.022327,
		0.121752, 0.161715, -0.979298,
		39.043495, 37.083828, 33.319576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242516, 37.068832, 33.792130>,  <38.958267, 36.970627, 34.005085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242516, 37.068832, 33.792130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471249, 36.963322, 33.481407>,  <38.608486, 36.900013, 33.294971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471249, 36.963322, 33.481407>,  <38.242516, 37.068832, 33.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471249, 36.963322, 33.481407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677721, -0.685473, -0.266121,
		-0.462284, 0.678635, -0.570744,
		0.571829, -0.263781, -0.776808,
		38.642796, 36.884186, 33.248363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819668, 37.108227, 33.217625>,  <38.242516, 37.068832, 33.792130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819668, 37.108227, 33.217625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112713, 36.854172, 33.119743>,  <38.288540, 36.701740, 33.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112713, 36.854172, 33.119743>,  <37.819668, 37.108227, 33.217625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112713, 36.854172, 33.119743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678930, -0.656396, -0.328935,
		0.048296, 0.407118, -0.912098,
		0.732613, -0.635137, -0.244704,
		38.332497, 36.663631, 33.046333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638550, 36.863121, 32.527962>,  <37.819668, 37.108227, 33.217625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638550, 36.863121, 32.527962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913296, 36.599438, 32.650383>,  <38.078144, 36.441227, 32.723835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913296, 36.599438, 32.650383>,  <37.638550, 36.863121, 32.527962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913296, 36.599438, 32.650383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437628, -0.711330, -0.549992,
		0.580262, 0.243832, -0.777073,
		0.686861, -0.659209, 0.306050,
		38.119354, 36.401676, 32.742199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169979, 36.605728, 31.981056>,  <37.638550, 36.863121, 32.527962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169979, 36.605728, 31.981056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062183, 36.318417, 32.237633>,  <37.997505, 36.146030, 32.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062183, 36.318417, 32.237633>,  <38.169979, 36.605728, 31.981056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062183, 36.318417, 32.237633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494421, -0.468396, -0.732225,
		0.826391, -0.514471, -0.228904,
		-0.269490, -0.718279, 0.641444,
		37.981335, 36.102932, 32.430065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091824, 35.962837, 31.629747>,  <38.169979, 36.605728, 31.981056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091824, 35.962837, 31.629747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889721, 35.892265, 31.967644>,  <37.768459, 35.849922, 32.170380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889721, 35.892265, 31.967644>,  <38.091824, 35.962837, 31.629747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889721, 35.892265, 31.967644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631834, -0.591111, -0.501371,
		0.587791, -0.787058, 0.187191,
		-0.505259, -0.176428, 0.844741,
		37.738144, 35.839336, 32.221066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057148, 35.249866, 31.806820>,  <38.091824, 35.962837, 31.629747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057148, 35.249866, 31.806820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725368, 35.425953, 31.944351>,  <37.526302, 35.531605, 32.026871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725368, 35.425953, 31.944351>,  <38.057148, 35.249866, 31.806820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725368, 35.425953, 31.944351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556741, -0.601624, -0.572789,
		-0.045298, -0.666524, 0.744106,
		-0.829450, 0.440221, 0.343829,
		37.476532, 35.558018, 32.047501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571480, 34.669865, 32.099941>,  <38.057148, 35.249866, 31.806820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571480, 34.669865, 32.099941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412617, 35.003090, 31.945917>,  <37.317299, 35.203026, 31.853502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412617, 35.003090, 31.945917>,  <37.571480, 34.669865, 32.099941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412617, 35.003090, 31.945917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468277, -0.544794, -0.695641,
		-0.789290, -0.095966, 0.606475,
		-0.397162, 0.833061, -0.385061,
		37.293468, 35.253010, 31.830399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127827, 34.249874, 31.818213>,  <37.571480, 34.669865, 32.099941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127827, 34.249874, 31.818213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106045, 34.623268, 31.676426>,  <37.092976, 34.847305, 31.591354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106045, 34.623268, 31.676426>,  <37.127827, 34.249874, 31.818213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106045, 34.623268, 31.676426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508312, -0.331471, -0.794824,
		-0.859449, 0.136897, 0.492551,
		-0.054457, 0.933481, -0.354469,
		37.089706, 34.903313, 31.570086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438404, 34.622025, 31.726068>,  <37.127827, 34.249874, 31.818213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438404, 34.622025, 31.726068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256207, 34.854805, 31.456593>,  <36.146889, 34.994473, 31.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256207, 34.854805, 31.456593>,  <36.438404, 34.622025, 31.726068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256207, 34.854805, 31.456593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400126, 0.542176, 0.738881,
		0.795251, 0.606116, -0.014104,
		-0.455494, 0.581952, -0.673689,
		36.119560, 35.029392, 31.254486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723328, 34.884930, 32.022995>,  <36.438404, 34.622025, 31.726068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723328, 34.884930, 32.022995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466251, 35.166134, 32.144798>,  <35.312004, 35.334858, 32.217880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466251, 35.166134, 32.144798>,  <35.723328, 34.884930, 32.022995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466251, 35.166134, 32.144798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704180, -0.385484, -0.596265,
		-0.301797, -0.597644, 0.742792,
		-0.642689, 0.703010, 0.304511,
		35.273445, 35.377037, 32.236153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019287, 34.579884, 32.211109>,  <35.723328, 34.884930, 32.022995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019287, 34.579884, 32.211109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965782, 34.960712, 32.101074>,  <34.933678, 35.189209, 32.035053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965782, 34.960712, 32.101074>,  <35.019287, 34.579884, 32.211109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965782, 34.960712, 32.101074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629052, -0.296063, -0.718777,
		-0.765768, 0.076902, 0.638502,
		-0.133761, 0.952068, -0.275091,
		34.925655, 35.246334, 32.018547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714043, 34.468758, 31.504148>,  <35.019287, 34.579884, 32.211109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714043, 34.468758, 31.504148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705448, 34.867611, 31.533154>,  <34.700291, 35.106922, 31.550556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705448, 34.867611, 31.533154>,  <34.714043, 34.468758, 31.504148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705448, 34.867611, 31.533154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456322, 0.054753, -0.888129,
		-0.889555, -0.052170, 0.453838,
		-0.021485, 0.997136, 0.072512,
		34.699001, 35.166752, 31.554907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001579, 34.701302, 31.530872>,  <34.714043, 34.468758, 31.504148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001579, 34.701302, 31.530872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250053, 34.969135, 31.368010>,  <34.399139, 35.129837, 31.270292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250053, 34.969135, 31.368010>,  <34.001579, 34.701302, 31.530872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250053, 34.969135, 31.368010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438777, -0.133304, -0.888653,
		-0.649306, 0.730674, 0.210992,
		0.621190, 0.669586, -0.407158,
		34.436409, 35.170010, 31.245863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532234, 35.149479, 31.199234>,  <34.001579, 34.701302, 31.530872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532234, 35.149479, 31.199234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893761, 35.206589, 31.037874>,  <34.110676, 35.240856, 30.941059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893761, 35.206589, 31.037874>,  <33.532234, 35.149479, 31.199234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893761, 35.206589, 31.037874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397668, -0.067908, -0.915013,
		-0.158037, 0.987422, -0.004598,
		0.903816, 0.142778, -0.403399,
		34.164906, 35.249420, 30.916855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371418, 35.487724, 30.683611>,  <33.532234, 35.149479, 31.199234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371418, 35.487724, 30.683611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744041, 35.370640, 30.597342>,  <33.967617, 35.300388, 30.545580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744041, 35.370640, 30.597342>,  <33.371418, 35.487724, 30.683611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744041, 35.370640, 30.597342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209952, 0.051227, -0.976369,
		0.296843, 0.954828, -0.013735,
		0.931560, -0.292712, -0.215674,
		34.023510, 35.282825, 30.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766747, 36.018318, 30.215088>,  <33.371418, 35.487724, 30.683611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766747, 36.018318, 30.215088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865067, 35.632526, 30.176401>,  <33.924057, 35.401051, 30.153189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865067, 35.632526, 30.176401>,  <33.766747, 36.018318, 30.215088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865067, 35.632526, 30.176401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266778, 0.028614, -0.963333,
		0.931887, 0.262587, -0.250270,
		0.245798, -0.964484, -0.096718,
		33.938805, 35.343182, 30.147387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266468, 35.876846, 29.555677>,  <33.766747, 36.018318, 30.215088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266468, 35.876846, 29.555677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027386, 35.569595, 29.647530>,  <33.883938, 35.385246, 29.702641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027386, 35.569595, 29.647530>,  <34.266468, 35.876846, 29.555677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027386, 35.569595, 29.647530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443440, 0.078123, -0.892893,
		0.667917, -0.635512, -0.387313,
		-0.597703, -0.768128, 0.229631,
		33.848076, 35.339157, 29.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206482, 35.550331, 28.928732>,  <34.266468, 35.876846, 29.555677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206482, 35.550331, 28.928732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905899, 35.390972, 29.139097>,  <33.725548, 35.295357, 29.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905899, 35.390972, 29.139097>,  <34.206482, 35.550331, 28.928732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905899, 35.390972, 29.139097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572936, -0.001252, -0.819599,
		0.327187, -0.917211, -0.227317,
		-0.751461, -0.398400, 0.525913,
		33.680462, 35.271454, 29.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735313, 35.139141, 28.372673>,  <34.206482, 35.550331, 28.928732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735313, 35.139141, 28.372673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337421, 35.134792, 28.331875>,  <34.098686, 35.132183, 28.307396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337421, 35.134792, 28.331875>,  <34.735313, 35.139141, 28.372673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337421, 35.134792, 28.331875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074595, -0.759211, -0.646556,
		-0.070406, -0.650754, 0.756017,
		-0.994725, -0.010874, -0.101996,
		34.039005, 35.131531, 28.301275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435722, 34.539192, 28.730648>,  <34.735313, 35.139141, 28.372673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435722, 34.539192, 28.730648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609707, 34.284763, 28.475708>,  <34.714096, 34.132107, 28.322744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609707, 34.284763, 28.475708>,  <34.435722, 34.539192, 28.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609707, 34.284763, 28.475708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836329, -0.547695, -0.024153,
		-0.333711, 0.543541, -0.770195,
		0.434960, -0.636077, -0.637351,
		34.740196, 34.093941, 28.284502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860424, 34.084267, 28.448950>,  <34.435722, 34.539192, 28.730648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860424, 34.084267, 28.448950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040401, 33.779003, 28.263416>,  <34.148388, 33.595844, 28.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040401, 33.779003, 28.263416>,  <33.860424, 34.084267, 28.448950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040401, 33.779003, 28.263416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054966, 0.494725, -0.867310,
		0.891365, 0.415734, 0.180650,
		0.449942, -0.763159, -0.463832,
		34.175385, 33.550056, 28.124268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362789, 34.347836, 28.022381>,  <33.860424, 34.084267, 28.448950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362789, 34.347836, 28.022381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251965, 33.999470, 27.860027>,  <34.185471, 33.790451, 27.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251965, 33.999470, 27.860027>,  <34.362789, 34.347836, 28.022381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251965, 33.999470, 27.860027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147239, 0.455915, -0.877760,
		0.949504, -0.183431, -0.254549,
		-0.277062, -0.870916, -0.405885,
		34.168846, 33.738194, 27.738262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791481, 34.202324, 27.317213>,  <34.362789, 34.347836, 28.022381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791481, 34.202324, 27.317213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451141, 33.992184, 27.314100>,  <34.246937, 33.866100, 27.312233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451141, 33.992184, 27.314100>,  <34.791481, 34.202324, 27.317213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451141, 33.992184, 27.314100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193049, 0.326371, -0.925318,
		0.488654, -0.785807, -0.379111,
		-0.850852, -0.525347, -0.007783,
		34.195885, 33.834579, 27.311766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806049, 34.010399, 26.631701>,  <34.791481, 34.202324, 27.317213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806049, 34.010399, 26.631701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427189, 33.915787, 26.718374>,  <34.199871, 33.859020, 26.770378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427189, 33.915787, 26.718374>,  <34.806049, 34.010399, 26.631701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427189, 33.915787, 26.718374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290126, 0.343491, -0.893220,
		0.136846, -0.908882, -0.393963,
		-0.947154, -0.236532, 0.216685,
		34.143044, 33.844826, 26.783381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493755, 33.554199, 26.034456>,  <34.806049, 34.010399, 26.631701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493755, 33.554199, 26.034456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186249, 33.716122, 26.232496>,  <34.001743, 33.813274, 26.351320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186249, 33.716122, 26.232496>,  <34.493755, 33.554199, 26.034456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186249, 33.716122, 26.232496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367394, 0.354124, -0.860011,
		-0.523463, -0.843048, -0.123518,
		-0.768771, 0.404804, 0.495101,
		33.955616, 33.837563, 26.381027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875187, 33.193058, 25.742691>,  <34.493755, 33.554199, 26.034456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875187, 33.193058, 25.742691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739681, 33.530716, 25.908903>,  <33.658379, 33.733311, 26.008631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739681, 33.530716, 25.908903>,  <33.875187, 33.193058, 25.742691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739681, 33.530716, 25.908903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478366, 0.225773, -0.848641,
		-0.810190, -0.486261, 0.327326,
		-0.338760, 0.844142, 0.415530,
		33.638054, 33.783958, 26.033562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192234, 33.176331, 25.693899>,  <33.875187, 33.193058, 25.742691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192234, 33.176331, 25.693899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277962, 33.564564, 25.737795>,  <33.329399, 33.797504, 25.764132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277962, 33.564564, 25.737795>,  <33.192234, 33.176331, 25.693899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277962, 33.564564, 25.737795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557273, 0.213770, -0.802340,
		-0.802193, 0.110804, 0.586693,
		0.214320, 0.970580, 0.109737,
		33.342258, 33.855736, 25.770716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574978, 33.533455, 25.577944>,  <33.192234, 33.176331, 25.693899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574978, 33.533455, 25.577944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863644, 33.804115, 25.519512>,  <33.036842, 33.966511, 25.484453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863644, 33.804115, 25.519512>,  <32.574978, 33.533455, 25.577944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863644, 33.804115, 25.519512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502054, 0.366319, -0.783423,
		-0.476595, 0.638709, 0.604076,
		0.721664, 0.676655, -0.146081,
		33.080143, 34.007111, 25.475687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203217, 34.225105, 25.555559>,  <32.574978, 33.533455, 25.577944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203217, 34.225105, 25.555559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547714, 34.229488, 25.352329>,  <32.754414, 34.232121, 25.230391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547714, 34.229488, 25.352329>,  <32.203217, 34.225105, 25.555559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547714, 34.229488, 25.352329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476359, 0.365706, -0.799589,
		0.177042, 0.930666, 0.320182,
		0.861242, 0.010961, -0.508076,
		32.806087, 34.232777, 25.199907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987192, 34.720699, 25.011822>,  <32.203217, 34.225105, 25.555559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987192, 34.720699, 25.011822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336601, 34.581100, 24.876081>,  <32.546246, 34.497341, 24.794638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336601, 34.581100, 24.876081>,  <31.987192, 34.720699, 25.011822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336601, 34.581100, 24.876081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301058, 0.160490, -0.940004,
		0.382517, 0.923281, 0.035125,
		0.873525, -0.348993, -0.339351,
		32.598660, 34.476402, 24.774277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145714, 35.153587, 24.527225>,  <31.987192, 34.720699, 25.011822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145714, 35.153587, 24.527225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319679, 34.805046, 24.436365>,  <32.424061, 34.595921, 24.381849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319679, 34.805046, 24.436365>,  <32.145714, 35.153587, 24.527225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319679, 34.805046, 24.436365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210779, 0.146740, -0.966457,
		0.875454, 0.468206, -0.119843,
		0.434916, -0.871349, -0.227153,
		32.450153, 34.543640, 24.368219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423088, 35.262299, 23.865864>,  <32.145714, 35.153587, 24.527225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423088, 35.262299, 23.865864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387482, 34.866493, 23.911379>,  <32.366119, 34.629009, 23.938688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387482, 34.866493, 23.911379>,  <32.423088, 35.262299, 23.865864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387482, 34.866493, 23.911379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263334, -0.086798, -0.960792,
		0.960589, -0.115487, -0.252845,
		-0.089013, -0.989509, 0.113789,
		32.360779, 34.569641, 23.945517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626362, 35.123669, 23.279921>,  <32.423088, 35.262299, 23.865864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626362, 35.123669, 23.279921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501709, 34.756882, 23.379562>,  <32.426918, 34.536808, 23.439346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501709, 34.756882, 23.379562>,  <32.626362, 35.123669, 23.279921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501709, 34.756882, 23.379562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008987, -0.259302, -0.965754,
		0.950160, -0.303199, 0.072567,
		-0.311633, -0.916969, 0.249103,
		32.408218, 34.481792, 23.454294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050037, 34.724533, 22.931564>,  <32.626362, 35.123669, 23.279921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050037, 34.724533, 22.931564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727264, 34.507278, 23.024389>,  <32.533600, 34.376926, 23.080084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727264, 34.507278, 23.024389>,  <33.050037, 34.724533, 22.931564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727264, 34.507278, 23.024389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063526, -0.310810, -0.948347,
		0.587212, -0.779997, 0.216301,
		-0.806936, -0.543140, 0.232062,
		32.485184, 34.344337, 23.094007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149723, 34.042362, 22.805933>,  <33.050037, 34.724533, 22.931564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149723, 34.042362, 22.805933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754372, 34.098530, 22.782627>,  <32.517162, 34.132233, 22.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754372, 34.098530, 22.782627>,  <33.149723, 34.042362, 22.805933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754372, 34.098530, 22.782627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016140, -0.284171, -0.958638,
		-0.151170, -0.948435, 0.278602,
		-0.988376, 0.140420, -0.058266,
		32.457859, 34.140656, 22.765148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914200, 33.384605, 22.488390>,  <33.149723, 34.042362, 22.805933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914200, 33.384605, 22.488390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600384, 33.632069, 22.471571>,  <32.412094, 33.780544, 22.461479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600384, 33.632069, 22.471571>,  <32.914200, 33.384605, 22.488390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600384, 33.632069, 22.471571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156199, -0.262798, -0.952123,
		-0.600086, -0.740408, 0.302808,
		-0.784537, 0.618654, -0.042050,
		32.365021, 33.817665, 22.458956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371849, 32.957348, 22.333689>,  <32.914200, 33.384605, 22.488390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371849, 32.957348, 22.333689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291573, 33.329922, 22.212255>,  <32.243408, 33.553467, 22.139397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291573, 33.329922, 22.212255>,  <32.371849, 32.957348, 22.333689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291573, 33.329922, 22.212255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086237, -0.325479, -0.941608,
		-0.975852, -0.162790, 0.145644,
		-0.200688, 0.931431, -0.303581,
		32.231365, 33.609352, 22.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799725, 32.921898, 21.929853>,  <32.371849, 32.957348, 22.333689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799725, 32.921898, 21.929853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945242, 33.281425, 21.832056>,  <32.032551, 33.497143, 21.773378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945242, 33.281425, 21.832056>,  <31.799725, 32.921898, 21.929853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945242, 33.281425, 21.832056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146035, -0.204196, -0.967976,
		-0.919961, 0.387848, 0.056974,
		0.363794, 0.898820, -0.244491,
		32.054379, 33.551071, 21.758709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223577, 33.311859, 21.517311>,  <31.799725, 32.921898, 21.929853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223577, 33.311859, 21.517311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577181, 33.479977, 21.435448>,  <31.789343, 33.580849, 21.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577181, 33.479977, 21.435448>,  <31.223577, 33.311859, 21.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577181, 33.479977, 21.435448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125063, -0.209205, -0.969841,
		-0.450433, 0.882942, -0.132375,
		0.884007, 0.420294, -0.204656,
		31.842382, 33.606064, 21.374050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181726, 33.773193, 20.902086>,  <31.223577, 33.311859, 21.517311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181726, 33.773193, 20.902086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564734, 33.661327, 20.930227>,  <31.794537, 33.594208, 20.947111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564734, 33.661327, 20.930227>,  <31.181726, 33.773193, 20.902086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564734, 33.661327, 20.930227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020361, -0.177784, -0.983859,
		0.287662, 0.943493, -0.164537,
		0.957516, -0.279668, 0.070352,
		31.851988, 33.577427, 20.951332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443350, 33.987438, 20.256390>,  <31.181726, 33.773193, 20.902086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443350, 33.987438, 20.256390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773060, 33.799255, 20.382399>,  <31.970886, 33.686344, 20.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773060, 33.799255, 20.382399>,  <31.443350, 33.987438, 20.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773060, 33.799255, 20.382399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270229, -0.162044, -0.949062,
		0.497541, 0.867416, -0.006438,
		0.824275, -0.470458, 0.315024,
		32.020344, 33.658119, 20.476906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917139, 34.342411, 19.919363>,  <31.443350, 33.987438, 20.256390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917139, 34.342411, 19.919363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041370, 33.975548, 20.019258>,  <32.115910, 33.755432, 20.079195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041370, 33.975548, 20.019258>,  <31.917139, 34.342411, 19.919363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041370, 33.975548, 20.019258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301923, -0.153940, -0.940821,
		0.901322, 0.367602, 0.229099,
		0.310581, -0.917154, 0.249737,
		32.134544, 33.700401, 20.094179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612694, 34.302830, 19.815344>,  <31.917139, 34.342411, 19.919363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612694, 34.302830, 19.815344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504768, 33.917667, 19.814074>,  <32.440014, 33.686569, 19.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504768, 33.917667, 19.814074>,  <32.612694, 34.302830, 19.815344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504768, 33.917667, 19.814074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357658, -0.097157, -0.928785,
		0.894026, -0.251733, 0.370605,
		-0.269813, -0.962907, -0.003174,
		32.423824, 33.628796, 19.813122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093639, 34.013393, 19.361664>,  <32.612694, 34.302830, 19.815344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093639, 34.013393, 19.361664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816715, 33.724762, 19.363884>,  <32.650562, 33.551582, 19.365217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816715, 33.724762, 19.363884>,  <33.093639, 34.013393, 19.361664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816715, 33.724762, 19.363884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097583, -0.101242, -0.990065,
		0.714970, -0.684891, 0.140505,
		-0.692311, -0.721578, 0.005552,
		32.609020, 33.508289, 19.365549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324688, 33.485718, 19.019957>,  <33.093639, 34.013393, 19.361664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324688, 33.485718, 19.019957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930992, 33.425125, 18.983448>,  <32.694775, 33.388767, 18.961542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930992, 33.425125, 18.983448>,  <33.324688, 33.485718, 19.019957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930992, 33.425125, 18.983448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116880, -0.169839, -0.978516,
		0.132731, -0.973759, 0.184868,
		-0.984237, -0.151487, -0.091271,
		32.635719, 33.379681, 18.956066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084236, 32.762833, 18.552385>,  <33.324688, 33.485718, 19.019957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084236, 32.762833, 18.552385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780209, 33.022705, 18.558165>,  <32.597794, 33.178631, 18.561632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780209, 33.022705, 18.558165>,  <33.084236, 32.762833, 18.552385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780209, 33.022705, 18.558165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049231, -0.035397, -0.998160,
		-0.647979, -0.759378, 0.058889,
		-0.760066, 0.649686, 0.014449,
		32.552189, 33.217609, 18.562500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620071, 32.486092, 18.101778>,  <33.084236, 32.762833, 18.552385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620071, 32.486092, 18.101778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485317, 32.861961, 18.125519>,  <32.404465, 33.087482, 18.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485317, 32.861961, 18.125519>,  <32.620071, 32.486092, 18.101778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485317, 32.861961, 18.125519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269149, -0.035701, -0.962437,
		-0.902258, -0.340202, 0.264939,
		-0.336882, 0.939674, 0.059353,
		32.384254, 33.143864, 18.143324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924194, 32.519802, 17.724632>,  <32.620071, 32.486092, 18.101778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924194, 32.519802, 17.724632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002174, 32.910755, 17.757399>,  <32.048962, 33.145329, 17.777060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002174, 32.910755, 17.757399>,  <31.924194, 32.519802, 17.724632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002174, 32.910755, 17.757399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371840, 0.150935, -0.915944,
		-0.907595, 0.148104, 0.392856,
		0.194951, 0.977386, 0.081917,
		32.060661, 33.203972, 17.781973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255804, 32.994118, 17.565708>,  <31.924194, 32.519802, 17.724632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255804, 32.994118, 17.565708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592937, 33.200882, 17.505795>,  <31.795218, 33.324940, 17.469847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592937, 33.200882, 17.505795>,  <31.255804, 32.994118, 17.565708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592937, 33.200882, 17.505795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283044, 0.189042, -0.940292,
		-0.457734, 0.834903, 0.305640,
		0.842832, 0.516913, -0.149783,
		31.845787, 33.355957, 17.460859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035648, 33.566410, 17.191235>,  <31.255804, 32.994118, 17.565708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035648, 33.566410, 17.191235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430479, 33.597538, 17.135199>,  <31.667377, 33.616215, 17.101576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430479, 33.597538, 17.135199>,  <31.035648, 33.566410, 17.191235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430479, 33.597538, 17.135199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160060, 0.435521, -0.885834,
		-0.007927, 0.896808, 0.442348,
		0.987075, 0.077824, -0.140091,
		31.726603, 33.620884, 17.093172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122204, 34.248177, 16.925394>,  <31.035648, 33.566410, 17.191235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122204, 34.248177, 16.925394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448267, 34.038815, 16.826143>,  <31.643906, 33.913197, 16.766594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448267, 34.038815, 16.826143>,  <31.122204, 34.248177, 16.925394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448267, 34.038815, 16.826143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150697, 0.221981, -0.963335,
		0.559291, 0.822663, 0.102075,
		0.815159, -0.523402, -0.248125,
		31.692814, 33.881794, 16.751705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427666, 34.552616, 16.293028>,  <31.122204, 34.248177, 16.925394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427666, 34.552616, 16.293028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617657, 34.201599, 16.266731>,  <31.731651, 33.990990, 16.250954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617657, 34.201599, 16.266731>,  <31.427666, 34.552616, 16.293028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617657, 34.201599, 16.266731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063156, 0.108507, -0.992087,
		0.877728, 0.467068, 0.106961,
		0.474979, -0.877538, -0.065742,
		31.760151, 33.938339, 16.247009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976009, 34.683960, 15.847586>,  <31.427666, 34.552616, 16.293028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976009, 34.683960, 15.847586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940258, 34.285599, 15.853106>,  <31.918806, 34.046581, 15.856419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940258, 34.285599, 15.853106>,  <31.976009, 34.683960, 15.847586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940258, 34.285599, 15.853106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047118, -0.018069, -0.998726,
		0.994882, -0.088615, 0.048540,
		-0.089379, -0.995902, 0.013801,
		31.913445, 33.986828, 15.857247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330135, 34.384586, 15.256264>,  <31.976009, 34.683960, 15.847586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330135, 34.384586, 15.256264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096558, 34.083218, 15.377176>,  <31.956411, 33.902397, 15.449723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096558, 34.083218, 15.377176>,  <32.330135, 34.384586, 15.256264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096558, 34.083218, 15.377176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213902, -0.216402, -0.952584,
		0.783109, -0.620911, -0.034792,
		-0.583941, -0.753419, 0.302280,
		31.921375, 33.857193, 15.467860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625114, 33.694962, 14.973927>,  <32.330135, 34.384586, 15.256264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625114, 33.694962, 14.973927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240849, 33.600445, 15.032290>,  <32.010288, 33.543736, 15.067308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240849, 33.600445, 15.032290>,  <32.625114, 33.694962, 14.973927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240849, 33.600445, 15.032290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062347, -0.328475, -0.942453,
		0.270619, -0.914479, 0.300822,
		-0.960666, -0.236290, 0.145907,
		31.952648, 33.529556, 15.076062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441402, 32.965378, 14.796731>,  <32.625114, 33.694962, 14.973927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441402, 32.965378, 14.796731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107185, 33.180511, 14.751829>,  <31.906654, 33.309593, 14.724888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107185, 33.180511, 14.751829>,  <32.441402, 32.965378, 14.796731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107185, 33.180511, 14.751829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106658, -0.359207, -0.927143,
		-0.538974, -0.762695, 0.357497,
		-0.835543, 0.537836, -0.112256,
		31.856522, 33.341862, 14.718152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042091, 32.516727, 14.455366>,  <32.441402, 32.965378, 14.796731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042091, 32.516727, 14.455366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832661, 32.854416, 14.409486>,  <31.707003, 33.057030, 14.381958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832661, 32.854416, 14.409486>,  <32.042091, 32.516727, 14.455366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832661, 32.854416, 14.409486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232565, -0.271135, -0.934023,
		-0.819623, -0.462356, 0.338297,
		-0.523575, 0.844223, -0.114701,
		31.675589, 33.107681, 14.375075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368641, 32.303307, 14.258654>,  <32.042091, 32.516727, 14.455366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368641, 32.303307, 14.258654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449928, 32.665939, 14.110703>,  <31.498701, 32.883518, 14.021932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449928, 32.665939, 14.110703>,  <31.368641, 32.303307, 14.258654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449928, 32.665939, 14.110703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204392, -0.330161, -0.921530,
		-0.957563, 0.262872, 0.118204,
		0.203218, 0.906583, -0.369879,
		31.510893, 32.937916, 13.999739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947939, 32.387318, 13.695843>,  <31.368641, 32.303307, 14.258654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947939, 32.387318, 13.695843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174730, 32.709400, 13.626363>,  <31.310804, 32.902649, 13.584675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174730, 32.709400, 13.626363>,  <30.947939, 32.387318, 13.695843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174730, 32.709400, 13.626363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176719, -0.087057, -0.980404,
		-0.804553, 0.586564, 0.092937,
		0.566979, 0.805210, -0.173699,
		31.344824, 32.950962, 13.574253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454742, 32.874653, 13.310864>,  <30.947939, 32.387318, 13.695843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454742, 32.874653, 13.310864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829891, 32.992817, 13.238058>,  <31.054981, 33.063717, 13.194374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829891, 32.992817, 13.238058>,  <30.454742, 32.874653, 13.310864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829891, 32.992817, 13.238058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117454, -0.223316, -0.967644,
		-0.326500, 0.928904, -0.174745,
		0.937871, 0.295411, -0.182016,
		31.111252, 33.081440, 13.183454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365396, 33.317581, 12.819656>,  <30.454742, 32.874653, 13.310864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365396, 33.317581, 12.819656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753170, 33.226910, 12.782107>,  <30.985834, 33.172504, 12.759578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753170, 33.226910, 12.782107>,  <30.365396, 33.317581, 12.819656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753170, 33.226910, 12.782107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117938, -0.095037, -0.988463,
		0.215146, 0.969321, -0.118866,
		0.969434, -0.226683, -0.093873,
		31.044001, 33.158905, 12.753945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600046, 33.650932, 12.229335>,  <30.365396, 33.317581, 12.819656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600046, 33.650932, 12.229335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891613, 33.381512, 12.278331>,  <31.066553, 33.219860, 12.307729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891613, 33.381512, 12.278331>,  <30.600046, 33.650932, 12.229335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891613, 33.381512, 12.278331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091558, -0.081404, -0.992467,
		0.678450, 0.734643, 0.002332,
		0.728919, -0.673552, 0.122490,
		31.110289, 33.179447, 12.315078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166855, 33.846489, 11.790616>,  <30.600046, 33.650932, 12.229335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166855, 33.846489, 11.790616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202826, 33.453293, 11.854672>,  <31.224407, 33.217377, 11.893106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202826, 33.453293, 11.854672>,  <31.166855, 33.846489, 11.790616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202826, 33.453293, 11.854672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100962, -0.150967, -0.983370,
		0.990818, 0.104597, 0.085669,
		0.089925, -0.982989, 0.160141,
		31.229803, 33.158398, 11.902715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812637, 33.694969, 11.353332>,  <31.166855, 33.846489, 11.790616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812637, 33.694969, 11.353332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531164, 33.422764, 11.435041>,  <31.362280, 33.259441, 11.484067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531164, 33.422764, 11.435041>,  <31.812637, 33.694969, 11.353332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531164, 33.422764, 11.435041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046686, -0.242596, -0.969003,
		0.708979, -0.691408, 0.138939,
		-0.703683, -0.680516, 0.204274,
		31.320059, 33.218609, 11.496324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839151, 33.050632, 10.987663>,  <31.812637, 33.694969, 11.353332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839151, 33.050632, 10.987663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459612, 33.018314, 11.109750>,  <31.231888, 32.998924, 11.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459612, 33.018314, 11.109750>,  <31.839151, 33.050632, 10.987663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459612, 33.018314, 11.109750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224600, -0.506683, -0.832362,
		0.221903, -0.858338, 0.462618,
		-0.948849, -0.080799, 0.305217,
		31.174957, 32.994076, 11.201315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623978, 32.358906, 10.791247>,  <31.839151, 33.050632, 10.987663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623978, 32.358906, 10.791247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318617, 32.617077, 10.801391>,  <31.135401, 32.771980, 10.807477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318617, 32.617077, 10.801391>,  <31.623978, 32.358906, 10.791247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318617, 32.617077, 10.801391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263825, -0.275730, -0.924321,
		-0.589590, -0.712317, 0.380773,
		-0.763400, 0.645428, 0.025359,
		31.089598, 32.810707, 10.808998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826824, 32.302128, 10.988600>,  <31.623978, 32.358906, 10.791247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826824, 32.302128, 10.988600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014420, 32.025627, 10.768702>,  <31.126978, 31.859726, 10.636763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014420, 32.025627, 10.768702>,  <30.826824, 32.302128, 10.988600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014420, 32.025627, 10.768702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336613, -0.435566, 0.834850,
		-0.816541, -0.576588, 0.028408,
		0.468990, -0.691252, -0.549745,
		31.155117, 31.818253, 10.603778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653156, 31.668695, 11.113457>,  <30.826824, 32.302128, 10.988600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653156, 31.668695, 11.113457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018597, 31.602045, 10.965096>,  <31.237862, 31.562056, 10.876081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018597, 31.602045, 10.965096>,  <30.653156, 31.668695, 11.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018597, 31.602045, 10.965096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245118, -0.502104, 0.829343,
		-0.324420, -0.848604, -0.417880,
		0.913602, -0.166626, -0.370900,
		31.292677, 31.552057, 10.853827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828739, 30.956234, 11.349085>,  <30.653156, 31.668695, 11.113457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828739, 30.956234, 11.349085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155384, 31.168804, 11.258991>,  <31.351372, 31.296347, 11.204935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155384, 31.168804, 11.258991>,  <30.828739, 30.956234, 11.349085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155384, 31.168804, 11.258991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378461, -0.198370, 0.904111,
		0.435789, -0.823550, -0.363116,
		0.816612, 0.531427, -0.225234,
		31.400368, 31.328232, 11.191421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945522, 31.093136, 10.727447>,  <30.828739, 30.956234, 11.349085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945522, 31.093136, 10.727447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327223, 30.973591, 10.723765>,  <31.556244, 30.901863, 10.721557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327223, 30.973591, 10.723765>,  <30.945522, 31.093136, 10.727447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327223, 30.973591, 10.723765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166561, -0.556880, 0.813721,
		-0.248315, -0.774963, -0.581182,
		0.954252, -0.298861, -0.009203,
		31.613499, 30.883932, 10.721004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040598, 30.328896, 10.905570>,  <30.945522, 31.093136, 10.727447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040598, 30.328896, 10.905570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364626, 30.511782, 11.052397>,  <31.559042, 30.621513, 11.140493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364626, 30.511782, 11.052397>,  <31.040598, 30.328896, 10.905570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364626, 30.511782, 11.052397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151973, -0.440917, 0.884588,
		0.566296, -0.772363, -0.287689,
		0.810070, 0.457218, 0.367067,
		31.607647, 30.648947, 11.162517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321899, 29.821753, 11.231616>,  <31.040598, 30.328896, 10.905570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321899, 29.821753, 11.231616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458418, 30.163025, 11.389400>,  <31.540329, 30.367788, 11.484071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458418, 30.163025, 11.389400>,  <31.321899, 29.821753, 11.231616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458418, 30.163025, 11.389400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136913, -0.460307, 0.877139,
		0.929931, -0.245358, -0.273913,
		0.341297, 0.853180, 0.394461,
		31.560806, 30.418980, 11.507739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974171, 29.988270, 11.167431>,  <31.321899, 29.821753, 11.231616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974171, 29.988270, 11.167431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054325, 30.318733, 11.378070>,  <32.102417, 30.517012, 11.504454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054325, 30.318733, 11.378070>,  <31.974171, 29.988270, 11.167431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054325, 30.318733, 11.378070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070677, -0.548291, 0.833296,
		0.977164, -0.129764, -0.168261,
		0.200387, 0.826159, 0.526599,
		32.114441, 30.566582, 11.536050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403225, 29.855076, 11.570492>,  <31.974171, 29.988270, 11.167431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403225, 29.855076, 11.570492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219170, 30.169004, 11.736543>,  <32.108738, 30.357361, 11.836173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219170, 30.169004, 11.736543>,  <32.403225, 29.855076, 11.570492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219170, 30.169004, 11.736543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016616, -0.459871, 0.887830,
		0.887694, 0.415418, 0.198562,
		-0.460134, 0.784822, 0.415128,
		32.081131, 30.404451, 11.861081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815704, 30.063730, 12.159687>,  <32.403225, 29.855076, 11.570492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815704, 30.063730, 12.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443375, 30.198946, 12.215241>,  <32.219975, 30.280075, 12.248574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443375, 30.198946, 12.215241>,  <32.815704, 30.063730, 12.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443375, 30.198946, 12.215241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116432, -0.085926, 0.989475,
		0.346417, 0.937200, 0.040623,
		-0.930827, 0.338041, 0.138887,
		32.164127, 30.300358, 12.256907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908012, 30.569324, 12.616884>,  <32.815704, 30.063730, 12.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908012, 30.569324, 12.616884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531635, 30.441063, 12.660354>,  <32.305809, 30.364107, 12.686436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531635, 30.441063, 12.660354>,  <32.908012, 30.569324, 12.616884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531635, 30.441063, 12.660354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119156, -0.013186, 0.992788,
		-0.316907, 0.947105, 0.050615,
		-0.940942, -0.320652, 0.108675,
		32.249352, 30.344868, 12.692956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534367, 31.034260, 13.093026>,  <32.908012, 30.569324, 12.616884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534367, 31.034260, 13.093026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300842, 30.711567, 13.129576>,  <32.160728, 30.517952, 13.151505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300842, 30.711567, 13.129576>,  <32.534367, 31.034260, 13.093026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300842, 30.711567, 13.129576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059555, 0.154793, 0.986150,
		-0.809704, 0.570282, -0.138415,
		-0.583809, -0.806733, 0.091373,
		32.125698, 30.469547, 13.156987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013340, 31.247177, 13.642299>,  <32.534367, 31.034260, 13.093026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013340, 31.247177, 13.642299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956846, 30.854757, 13.589237>,  <31.922951, 30.619305, 13.557401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956846, 30.854757, 13.589237>,  <32.013340, 31.247177, 13.642299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956846, 30.854757, 13.589237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138849, -0.113042, 0.983841,
		-0.980191, 0.157367, -0.120253,
		-0.141230, -0.981049, -0.132653,
		31.914476, 30.560442, 13.549441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387363, 31.087414, 13.986497>,  <32.013340, 31.247177, 13.642299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387363, 31.087414, 13.986497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583937, 30.740757, 13.952037>,  <31.701881, 30.532763, 13.931360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583937, 30.740757, 13.952037>,  <31.387363, 31.087414, 13.986497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583937, 30.740757, 13.952037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049991, -0.126827, 0.990664,
		-0.869479, -0.482538, -0.105652,
		0.491433, -0.866644, -0.086151,
		31.731367, 30.480764, 13.926191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044037, 30.694832, 14.387464>,  <31.387363, 31.087414, 13.986497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044037, 30.694832, 14.387464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372513, 30.467312, 14.369075>,  <31.569599, 30.330799, 14.358042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372513, 30.467312, 14.369075>,  <31.044037, 30.694832, 14.387464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372513, 30.467312, 14.369075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068842, -0.178716, 0.981489,
		-0.566488, -0.802824, -0.185918,
		0.821189, -0.568801, -0.045973,
		31.618870, 30.296671, 14.355283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866680, 30.019957, 14.640693>,  <31.044037, 30.694832, 14.387464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866680, 30.019957, 14.640693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256784, 30.088566, 14.696470>,  <31.490847, 30.129732, 14.729937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256784, 30.088566, 14.696470>,  <30.866680, 30.019957, 14.640693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256784, 30.088566, 14.696470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122605, -0.105178, 0.986867,
		0.183939, -0.979549, -0.081546,
		0.975262, 0.171525, 0.139444,
		31.549362, 30.140022, 14.738303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024410, 29.588465, 15.116770>,  <30.866680, 30.019957, 14.640693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024410, 29.588465, 15.116770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334906, 29.838213, 15.151670>,  <31.521202, 29.988062, 15.172609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334906, 29.838213, 15.151670>,  <31.024410, 29.588465, 15.116770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334906, 29.838213, 15.151670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025358, -0.107359, 0.993897,
		0.629929, -0.773713, -0.067503,
		0.776238, 0.624373, 0.087249,
		31.567778, 30.025524, 15.177844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510597, 29.295179, 15.628742>,  <31.024410, 29.588465, 15.116770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510597, 29.295179, 15.628742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590250, 29.685955, 15.597923>,  <31.638041, 29.920420, 15.579432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590250, 29.685955, 15.597923>,  <31.510597, 29.295179, 15.628742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590250, 29.685955, 15.597923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051117, 0.068160, 0.996364,
		0.978639, -0.202345, -0.036365,
		0.199131, 0.976939, -0.077047,
		31.649990, 29.979036, 15.574809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080070, 29.344793, 16.029997>,  <31.510597, 29.295179, 15.628742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080070, 29.344793, 16.029997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944818, 29.719395, 15.992831>,  <31.863667, 29.944155, 15.970532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944818, 29.719395, 15.992831>,  <32.080070, 29.344793, 16.029997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944818, 29.719395, 15.992831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348991, 0.216465, 0.911783,
		0.873999, 0.275875, -0.400024,
		-0.338130, 0.936502, -0.092913,
		31.843380, 30.000345, 15.964957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595592, 29.727633, 16.315563>,  <32.080070, 29.344793, 16.029997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595592, 29.727633, 16.315563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285374, 29.980101, 16.320364>,  <32.099243, 30.131582, 16.323244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285374, 29.980101, 16.320364>,  <32.595592, 29.727633, 16.315563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285374, 29.980101, 16.320364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340341, 0.402031, 0.850023,
		0.531686, 0.663320, -0.526608,
		-0.775550, 0.631172, 0.012001,
		32.052708, 30.169453, 16.323965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915688, 30.402878, 16.392241>,  <32.595592, 29.727633, 16.315563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915688, 30.402878, 16.392241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536171, 30.421785, 16.517174>,  <32.308460, 30.433130, 16.592134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536171, 30.421785, 16.517174>,  <32.915688, 30.402878, 16.392241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536171, 30.421785, 16.517174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291995, 0.508476, 0.810056,
		-0.120522, 0.859777, -0.496243,
		-0.948796, 0.047271, 0.312333,
		32.251534, 30.435966, 16.610874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964397, 30.914351, 16.887899>,  <32.915688, 30.402878, 16.392241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964397, 30.914351, 16.887899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626240, 30.721289, 16.979429>,  <32.423347, 30.605452, 17.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626240, 30.721289, 16.979429>,  <32.964397, 30.914351, 16.887899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626240, 30.721289, 16.979429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123186, 0.240677, 0.962756,
		-0.519751, 0.842093, -0.144009,
		-0.845390, -0.482654, 0.228827,
		32.372623, 30.576492, 17.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595367, 31.354303, 17.267315>,  <32.964397, 30.914351, 16.887899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595367, 31.354303, 17.267315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475716, 30.983828, 17.359137>,  <32.403923, 30.761543, 17.414230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475716, 30.983828, 17.359137>,  <32.595367, 31.354303, 17.267315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475716, 30.983828, 17.359137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076343, 0.216568, 0.973278,
		-0.951153, 0.308664, 0.005926,
		-0.299132, -0.926188, 0.229554,
		32.385975, 30.705971, 17.428003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114407, 31.477335, 17.829494>,  <32.595367, 31.354303, 17.267315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114407, 31.477335, 17.829494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210396, 31.089024, 17.829956>,  <32.267990, 30.856037, 17.830233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210396, 31.089024, 17.829956>,  <32.114407, 31.477335, 17.829494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210396, 31.089024, 17.829956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164922, 0.041940, 0.985415,
		-0.956668, -0.236284, 0.170167,
		0.239975, -0.970778, 0.001154,
		32.282387, 30.797791, 17.830303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685247, 31.101990, 18.400011>,  <32.114407, 31.477335, 17.829494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685247, 31.101990, 18.400011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995802, 30.862020, 18.322742>,  <32.182137, 30.718039, 18.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995802, 30.862020, 18.322742>,  <31.685247, 31.101990, 18.400011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995802, 30.862020, 18.322742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130942, -0.146268, 0.980541,
		-0.616503, -0.786574, -0.035006,
		0.776388, -0.599922, -0.193170,
		32.228718, 30.682043, 18.264791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578243, 30.490297, 18.898602>,  <31.685247, 31.101990, 18.400011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578243, 30.490297, 18.898602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960405, 30.531654, 18.787956>,  <32.189701, 30.556469, 18.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960405, 30.531654, 18.787956>,  <31.578243, 30.490297, 18.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960405, 30.531654, 18.787956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246427, 0.237015, 0.939733,
		0.162723, -0.965989, 0.200966,
		0.955403, 0.103392, -0.276613,
		32.247025, 30.562674, 18.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885540, 30.172489, 19.460640>,  <31.578243, 30.490297, 18.898602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885540, 30.172489, 19.460640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 30.355335, 19.295544>,  <32.389759, 30.465042, 19.196486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 30.355335, 19.295544>,  <31.885540, 30.172489, 19.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200676, 30.355335, 19.295544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383376, 0.160496, 0.909540,
		0.482009, -0.874806, -0.048801,
		0.787839, 0.457116, -0.412740,
		32.437027, 30.492470, 19.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473976, 29.818151, 19.758667>,  <31.885540, 30.172489, 19.460640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473976, 29.818151, 19.758667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617725, 30.150108, 19.587959>,  <32.703976, 30.349281, 19.485535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617725, 30.150108, 19.587959>,  <32.473976, 29.818151, 19.758667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617725, 30.150108, 19.587959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626455, 0.124418, 0.769464,
		0.691668, -0.543877, -0.475177,
		0.359373, 0.829891, -0.426770,
		32.725536, 30.399076, 19.459929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166019, 29.785501, 19.798771>,  <32.473976, 29.818151, 19.758667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166019, 29.785501, 19.798771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124794, 30.178801, 19.738636>,  <33.100060, 30.414780, 19.702555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124794, 30.178801, 19.738636>,  <33.166019, 29.785501, 19.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124794, 30.178801, 19.738636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709869, 0.178584, 0.681318,
		0.696752, -0.036499, -0.716383,
		-0.103067, 0.983248, -0.150338,
		33.093876, 30.473774, 19.693535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911133, 30.232050, 19.658066>,  <33.166019, 29.785501, 19.798771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911133, 30.232050, 19.658066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652256, 30.513735, 19.774836>,  <33.496929, 30.682747, 19.844898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652256, 30.513735, 19.774836>,  <33.911133, 30.232050, 19.658066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652256, 30.513735, 19.774836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687870, 0.374406, 0.621816,
		0.328593, 0.603243, -0.726722,
		-0.647196, 0.704214, 0.291925,
		33.458096, 30.724998, 19.862413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348419, 30.695906, 19.835855>,  <33.911133, 30.232050, 19.658066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348419, 30.695906, 19.835855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012749, 30.826609, 20.009756>,  <33.811344, 30.905031, 20.114096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012749, 30.826609, 20.009756>,  <34.348419, 30.695906, 19.835855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012749, 30.826609, 20.009756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543829, 0.512134, 0.664807,
		-0.005419, 0.794322, -0.607473,
		-0.839178, 0.326759, 0.434751,
		33.760994, 30.924637, 20.140181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429459, 31.400406, 19.869310>,  <34.348419, 30.695906, 19.835855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429459, 31.400406, 19.869310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144478, 31.286139, 20.125687>,  <33.973488, 31.217579, 20.279512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144478, 31.286139, 20.125687>,  <34.429459, 31.400406, 19.869310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144478, 31.286139, 20.125687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425246, 0.550797, 0.718184,
		-0.558191, 0.784230, -0.270937,
		-0.712453, -0.285669, 0.640940,
		33.930740, 31.200438, 20.317968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279457, 31.999905, 20.215441>,  <34.429459, 31.400406, 19.869310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279457, 31.999905, 20.215441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124577, 31.726395, 20.462837>,  <34.031651, 31.562288, 20.611275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124577, 31.726395, 20.462837>,  <34.279457, 31.999905, 20.215441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124577, 31.726395, 20.462837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263910, 0.560555, 0.784939,
		-0.883419, 0.467154, -0.036592,
		-0.387199, -0.683773, 0.618491,
		34.008415, 31.521263, 20.648384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084900, 32.320091, 20.874855>,  <34.279457, 31.999905, 20.215441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084900, 32.320091, 20.874855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103317, 31.933613, 20.976316>,  <34.114368, 31.701725, 21.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103317, 31.933613, 20.976316>,  <34.084900, 32.320091, 20.874855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103317, 31.933613, 20.976316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301002, 0.255540, 0.918748,
		-0.952512, 0.034050, 0.302593,
		0.046041, -0.966199, 0.253654,
		34.117130, 31.643753, 21.052412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657974, 32.159199, 21.457314>,  <34.084900, 32.320091, 20.874855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657974, 32.159199, 21.457314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913429, 31.851589, 21.468296>,  <34.066700, 31.667025, 21.474886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913429, 31.851589, 21.468296>,  <33.657974, 32.159199, 21.457314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913429, 31.851589, 21.468296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187536, 0.190145, 0.963678,
		-0.746308, -0.610290, 0.265652,
		0.638635, -0.769020, 0.027456,
		34.105019, 31.620884, 21.476532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470345, 31.753664, 21.992636>,  <33.657974, 32.159199, 21.457314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470345, 31.753664, 21.992636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839054, 31.620947, 21.912384>,  <34.060280, 31.541317, 21.864233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839054, 31.620947, 21.912384>,  <33.470345, 31.753664, 21.992636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839054, 31.620947, 21.912384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230782, 0.053685, 0.971523,
		-0.311576, -0.941822, 0.126057,
		0.921770, -0.331795, -0.200628,
		34.115585, 31.521408, 21.852196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542854, 31.274183, 22.477615>,  <33.470345, 31.753664, 21.992636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542854, 31.274183, 22.477615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912334, 31.366425, 22.355240>,  <34.134022, 31.421768, 22.281815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912334, 31.366425, 22.355240>,  <33.542854, 31.274183, 22.477615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912334, 31.366425, 22.355240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335828, -0.103049, 0.936270,
		0.184379, -0.967576, -0.172629,
		0.923701, 0.230602, -0.305939,
		34.189445, 31.435604, 22.263458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011517, 30.713114, 22.722265>,  <33.542854, 31.274183, 22.477615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011517, 30.713114, 22.722265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251266, 31.021362, 22.635645>,  <34.395115, 31.206310, 22.583672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251266, 31.021362, 22.635645>,  <34.011517, 30.713114, 22.722265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251266, 31.021362, 22.635645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409447, -0.062691, 0.910177,
		0.687825, -0.634204, -0.353104,
		0.599374, 0.770621, -0.216553,
		34.431080, 31.252548, 22.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610798, 30.505184, 22.854610>,  <34.011517, 30.713114, 22.722265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610798, 30.505184, 22.854610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598415, 30.902079, 22.902796>,  <34.590988, 31.140215, 22.931707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598415, 30.902079, 22.902796>,  <34.610798, 30.505184, 22.854610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598415, 30.902079, 22.902796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469283, -0.091983, 0.878244,
		0.882505, 0.083716, -0.462792,
		-0.030954, 0.992235, 0.120462,
		34.589130, 31.199749, 22.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282166, 30.695501, 23.121962>,  <34.610798, 30.505184, 22.854610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282166, 30.695501, 23.121962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053665, 31.005537, 23.229969>,  <34.916565, 31.191559, 23.294773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053665, 31.005537, 23.229969>,  <35.282166, 30.695501, 23.121962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053665, 31.005537, 23.229969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280474, -0.124836, 0.951709,
		0.771370, 0.619394, -0.146080,
		-0.571247, 0.775091, 0.270019,
		34.882290, 31.238064, 23.310974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573383, 31.052662, 23.570732>,  <35.282166, 30.695501, 23.121962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573383, 31.052662, 23.570732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208603, 31.202032, 23.638733>,  <34.989735, 31.291655, 23.679533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208603, 31.202032, 23.638733>,  <35.573383, 31.052662, 23.570732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208603, 31.202032, 23.638733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136149, -0.115444, 0.983939,
		0.387053, 0.920449, 0.054438,
		-0.911950, 0.373425, 0.170002,
		34.935017, 31.314060, 23.689734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728844, 31.309769, 24.181105>,  <35.573383, 31.052662, 23.570732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728844, 31.309769, 24.181105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332180, 31.344223, 24.142757>,  <35.094181, 31.364895, 24.119749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332180, 31.344223, 24.142757>,  <35.728844, 31.309769, 24.181105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332180, 31.344223, 24.142757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097393, -0.013691, 0.995152,
		0.084404, 0.996189, 0.021966,
		-0.991660, 0.086135, -0.095867,
		35.034683, 31.370064, 24.113997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580769, 31.831261, 24.576340>,  <35.728844, 31.309769, 24.181105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580769, 31.831261, 24.576340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242016, 31.620888, 24.544874>,  <35.038765, 31.494665, 24.525995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242016, 31.620888, 24.544874>,  <35.580769, 31.831261, 24.576340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242016, 31.620888, 24.544874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141213, 0.079797, 0.986758,
		-0.512690, 0.846776, -0.141847,
		-0.846882, -0.525931, -0.078664,
		34.987953, 31.463108, 24.521275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063522, 32.261196, 24.848282>,  <35.580769, 31.831261, 24.576340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063522, 32.261196, 24.848282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920166, 31.887770, 24.848606>,  <34.834152, 31.663713, 24.848801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920166, 31.887770, 24.848606>,  <35.063522, 32.261196, 24.848282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920166, 31.887770, 24.848606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158405, 0.061668, 0.985447,
		-0.920034, 0.353048, -0.169983,
		-0.358393, -0.933571, 0.000813,
		34.812649, 31.607698, 24.848850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419762, 32.201618, 25.171612>,  <35.063522, 32.261196, 24.848282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419762, 32.201618, 25.171612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555225, 31.828901, 25.223877>,  <34.636505, 31.605270, 25.255236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555225, 31.828901, 25.223877>,  <34.419762, 32.201618, 25.171612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555225, 31.828901, 25.223877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344388, 0.006478, 0.938805,
		-0.875619, -0.362932, -0.318704,
		0.338658, -0.931793, 0.130662,
		34.656822, 31.549364, 25.263075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996212, 31.988821, 25.610340>,  <34.419762, 32.201618, 25.171612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996212, 31.988821, 25.610340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277691, 31.705280, 25.629711>,  <34.446579, 31.535156, 25.641333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277691, 31.705280, 25.629711>,  <33.996212, 31.988821, 25.610340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277691, 31.705280, 25.629711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112902, -0.044269, 0.992620,
		-0.701477, -0.703967, -0.111182,
		0.703693, -0.708852, 0.048426,
		34.488800, 31.492624, 25.644239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734699, 31.467457, 26.024820>,  <33.996212, 31.988821, 25.610340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734699, 31.467457, 26.024820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132229, 31.424690, 26.036724>,  <34.370747, 31.399031, 26.043865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132229, 31.424690, 26.036724>,  <33.734699, 31.467457, 26.024820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132229, 31.424690, 26.036724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020738, 0.084504, 0.996207,
		-0.109025, -0.990671, 0.081765,
		0.993823, -0.106915, 0.029758,
		34.430374, 31.392616, 26.045652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871643, 30.920179, 26.521862>,  <33.734699, 31.467457, 26.024820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871643, 30.920179, 26.521862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209412, 31.127499, 26.467731>,  <34.412075, 31.251890, 26.435253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209412, 31.127499, 26.467731>,  <33.871643, 30.920179, 26.521862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209412, 31.127499, 26.467731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065520, 0.150795, 0.986391,
		0.531652, -0.841800, 0.093376,
		0.844425, 0.518299, -0.135325,
		34.462738, 31.282988, 26.427134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441048, 30.618855, 25.921391>,  <33.871643, 30.920179, 26.521862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441048, 30.618855, 25.921391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149529, 30.617807, 26.195280>,  <32.974617, 30.617180, 26.359613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149529, 30.617807, 26.195280>,  <33.441048, 30.618855, 25.921391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149529, 30.617807, 26.195280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681992, 0.092064, -0.725542,
		-0.061139, -0.995750, -0.068881,
		-0.728800, -0.002617, 0.684722,
		32.930889, 30.617022, 26.400696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057308, 29.981852, 25.927868>,  <33.441048, 30.618855, 25.921391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057308, 29.981852, 25.927868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865982, 30.319942, 26.023201>,  <32.751186, 30.522797, 26.080400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865982, 30.319942, 26.023201>,  <33.057308, 29.981852, 25.927868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865982, 30.319942, 26.023201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589214, -0.107638, -0.800775,
		-0.651185, -0.523453, 0.549505,
		-0.478316, 0.845229, 0.238333,
		32.722488, 30.573511, 26.094702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293293, 29.854038, 25.912582>,  <33.057308, 29.981852, 25.927868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293293, 29.854038, 25.912582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345387, 30.244673, 25.844090>,  <32.376644, 30.479053, 25.802994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345387, 30.244673, 25.844090>,  <32.293293, 29.854038, 25.912582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345387, 30.244673, 25.844090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581737, -0.064586, -0.810809,
		-0.802883, 0.205206, 0.559704,
		0.130234, 0.976585, -0.171231,
		32.384457, 30.537649, 25.792721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603613, 30.118416, 25.898165>,  <32.293293, 29.854038, 25.912582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603613, 30.118416, 25.898165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810123, 30.389267, 25.688421>,  <31.934031, 30.551779, 25.562574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810123, 30.389267, 25.688421>,  <31.603613, 30.118416, 25.898165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810123, 30.389267, 25.688421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449118, -0.307263, -0.838977,
		-0.729212, 0.668645, 0.145478,
		0.516278, 0.677129, -0.524360,
		31.965006, 30.592405, 25.531113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141174, 30.405272, 25.457373>,  <31.603613, 30.118416, 25.898165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141174, 30.405272, 25.457373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479141, 30.536415, 25.288315>,  <31.681921, 30.615101, 25.186880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479141, 30.536415, 25.288315>,  <31.141174, 30.405272, 25.457373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479141, 30.536415, 25.288315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440674, -0.021212, -0.897416,
		-0.303189, 0.944489, 0.126556,
		0.844916, 0.327857, -0.422643,
		31.732616, 30.634771, 25.161522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976223, 31.072617, 25.134012>,  <31.141174, 30.405272, 25.457373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976223, 31.072617, 25.134012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296583, 30.913414, 24.955061>,  <31.488800, 30.817892, 24.847691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296583, 30.913414, 24.955061>,  <30.976223, 31.072617, 25.134012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296583, 30.913414, 24.955061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414702, 0.170273, -0.893884,
		0.431947, 0.901443, -0.028681,
		0.800902, -0.398004, -0.447380,
		31.536854, 30.794012, 24.820847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919182, 31.368799, 24.466181>,  <30.976223, 31.072617, 25.134012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919182, 31.368799, 24.466181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178381, 31.066864, 24.425547>,  <31.333900, 30.885702, 24.401167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178381, 31.066864, 24.425547>,  <30.919182, 31.368799, 24.466181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178381, 31.066864, 24.425547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233930, -0.070316, -0.969707,
		0.724830, 0.652130, -0.222144,
		0.647996, -0.754839, -0.101586,
		31.372780, 30.840412, 24.395071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248926, 31.465385, 23.727751>,  <30.919182, 31.368799, 24.466181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248926, 31.465385, 23.727751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310043, 31.080975, 23.819910>,  <31.346714, 30.850328, 23.875206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310043, 31.080975, 23.819910>,  <31.248926, 31.465385, 23.727751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310043, 31.080975, 23.819910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330335, -0.269388, -0.904604,
		0.931415, 0.062108, -0.358621,
		0.152791, -0.961027, 0.230396,
		31.355881, 30.792667, 23.889029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479729, 31.185188, 23.132875>,  <31.248926, 31.465385, 23.727751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479729, 31.185188, 23.132875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339724, 30.876734, 23.345606>,  <31.255720, 30.691660, 23.473244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339724, 30.876734, 23.345606>,  <31.479729, 31.185188, 23.132875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339724, 30.876734, 23.345606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395481, -0.393013, -0.830142,
		0.849167, -0.500887, -0.167411,
		-0.350013, -0.771137, 0.531825,
		31.234720, 30.645393, 23.505154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703104, 30.681641, 22.778233>,  <31.479729, 31.185188, 23.132875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703104, 30.681641, 22.778233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407885, 30.519934, 22.994328>,  <31.230753, 30.422911, 23.123983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407885, 30.519934, 22.994328>,  <31.703104, 30.681641, 22.778233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407885, 30.519934, 22.994328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290970, -0.531693, -0.795386,
		0.608786, -0.744226, 0.274786,
		-0.738048, -0.404265, 0.540235,
		31.186470, 30.398655, 23.156399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767761, 29.988998, 22.647274>,  <31.703104, 30.681641, 22.778233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767761, 29.988998, 22.647274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392620, 30.066919, 22.762157>,  <31.167536, 30.113672, 22.831087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392620, 30.066919, 22.762157>,  <31.767761, 29.988998, 22.647274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392620, 30.066919, 22.762157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346751, -0.492366, -0.798335,
		-0.014106, -0.848309, 0.529314,
		-0.937851, 0.194801, 0.287207,
		31.111265, 30.125360, 22.848320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359793, 29.369621, 22.638418>,  <31.767761, 29.988998, 22.647274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359793, 29.369621, 22.638418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076296, 29.650885, 22.615622>,  <30.906197, 29.819643, 22.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076296, 29.650885, 22.615622>,  <31.359793, 29.369621, 22.638418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076296, 29.650885, 22.615622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375236, -0.444160, -0.813585,
		-0.597395, -0.555237, 0.578646,
		-0.708744, 0.703160, -0.056994,
		30.863672, 29.861832, 22.598524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767357, 29.058285, 22.533863>,  <31.359793, 29.369621, 22.638418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767357, 29.058285, 22.533863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638597, 29.418741, 22.417707>,  <30.561342, 29.635015, 22.348015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638597, 29.418741, 22.417707>,  <30.767357, 29.058285, 22.533863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638597, 29.418741, 22.417707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442624, -0.414370, -0.795225,
		-0.836938, -0.127449, 0.532252,
		-0.321899, 0.901141, -0.290390,
		30.542028, 29.689083, 22.330591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030743, 29.000721, 22.233280>,  <30.767357, 29.058285, 22.533863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030743, 29.000721, 22.233280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181126, 29.344082, 22.093681>,  <30.271357, 29.550098, 22.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181126, 29.344082, 22.093681>,  <30.030743, 29.000721, 22.233280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181126, 29.344082, 22.093681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417848, -0.179117, -0.890685,
		-0.827078, 0.480691, 0.291340,
		0.375960, 0.858402, -0.348999,
		30.293913, 29.601603, 21.988981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502995, 29.228991, 21.932503>,  <30.030743, 29.000721, 22.233280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502995, 29.228991, 21.932503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814461, 29.419466, 21.769077>,  <30.001341, 29.533752, 21.671022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814461, 29.419466, 21.769077>,  <29.502995, 29.228991, 21.932503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814461, 29.419466, 21.769077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382374, -0.156131, -0.910721,
		-0.497466, 0.865371, 0.060509,
		0.778664, 0.476190, -0.408565,
		30.048059, 29.562323, 21.646507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241659, 29.742359, 21.343332>,  <29.502995, 29.228991, 21.932503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241659, 29.742359, 21.343332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624382, 29.672617, 21.250278>,  <29.854015, 29.630772, 21.194447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624382, 29.672617, 21.250278>,  <29.241659, 29.742359, 21.343332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624382, 29.672617, 21.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236623, -0.002142, -0.971599,
		0.168905, 0.984680, -0.043307,
		0.956807, -0.174356, -0.232636,
		29.911425, 29.620310, 21.180487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463264, 30.179253, 20.834925>,  <29.241659, 29.742359, 21.343332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463264, 30.179253, 20.834925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737614, 29.890795, 20.795868>,  <29.902224, 29.717720, 20.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737614, 29.890795, 20.795868>,  <29.463264, 30.179253, 20.834925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737614, 29.890795, 20.795868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000983, 0.133254, -0.991081,
		0.727722, 0.679851, 0.090686,
		0.685872, -0.721143, -0.097640,
		29.943375, 29.674452, 20.766577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929079, 30.491436, 20.365875>,  <29.463264, 30.179253, 20.834925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929079, 30.491436, 20.365875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970507, 30.093594, 20.363726>,  <29.995363, 29.854887, 20.362436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970507, 30.093594, 20.363726>,  <29.929079, 30.491436, 20.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970507, 30.093594, 20.363726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131638, -0.008352, -0.991263,
		0.985873, 0.103373, -0.131794,
		0.103570, -0.994608, -0.005374,
		30.001577, 29.795212, 20.362114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483202, 30.381996, 19.927937>,  <29.929079, 30.491436, 20.365875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483202, 30.381996, 19.927937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289410, 30.032097, 19.924149>,  <30.173134, 29.822157, 19.921877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289410, 30.032097, 19.924149>,  <30.483202, 30.381996, 19.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289410, 30.032097, 19.924149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081634, 0.055983, -0.995089,
		0.870984, -0.481330, -0.098532,
		-0.484482, -0.874750, -0.009468,
		30.144066, 29.769672, 19.921309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795019, 30.029760, 19.346092>,  <30.483202, 30.381996, 19.927937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795019, 30.029760, 19.346092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456024, 29.829384, 19.416319>,  <30.252626, 29.709158, 19.458454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456024, 29.829384, 19.416319>,  <30.795019, 30.029760, 19.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456024, 29.829384, 19.416319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140346, -0.107517, -0.984248,
		0.511926, -0.858778, 0.020815,
		-0.847488, -0.500940, 0.175567,
		30.201778, 29.679102, 19.468988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874735, 29.396967, 18.910473>,  <30.795019, 30.029760, 19.346092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874735, 29.396967, 18.910473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492720, 29.489756, 18.984325>,  <30.263510, 29.545429, 19.028637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492720, 29.489756, 18.984325>,  <30.874735, 29.396967, 18.910473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492720, 29.489756, 18.984325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186640, 0.013459, -0.982336,
		-0.230362, -0.972629, 0.030442,
		-0.955039, 0.231974, 0.184632,
		30.206207, 29.559347, 19.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484221, 28.922640, 18.408401>,  <30.874735, 29.396967, 18.910473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484221, 28.922640, 18.408401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204981, 29.184656, 18.524038>,  <30.037437, 29.341866, 18.593420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204981, 29.184656, 18.524038>,  <30.484221, 28.922640, 18.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204981, 29.184656, 18.524038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277190, 0.125026, -0.952646,
		-0.660168, -0.745176, 0.094291,
		-0.698101, 0.655043, 0.289093,
		29.995550, 29.381168, 18.610765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900434, 28.704453, 18.035542>,  <30.484221, 28.922640, 18.408401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900434, 28.704453, 18.035542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860228, 29.085890, 18.149075>,  <29.836103, 29.314753, 18.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860228, 29.085890, 18.149075>,  <29.900434, 28.704453, 18.035542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860228, 29.085890, 18.149075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277973, 0.246999, -0.928290,
		-0.955315, -0.172205, 0.240245,
		-0.100516, 0.953592, 0.283831,
		29.830072, 29.371967, 18.234224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233353, 28.904217, 17.682392>,  <29.900434, 28.704453, 18.035542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233353, 28.904217, 17.682392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409472, 29.246870, 17.789961>,  <29.515142, 29.452461, 17.854502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409472, 29.246870, 17.789961>,  <29.233353, 28.904217, 17.682392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409472, 29.246870, 17.789961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364041, 0.444121, -0.818676,
		-0.820739, 0.262562, 0.507394,
		0.440298, 0.856632, 0.268924,
		29.541561, 29.503860, 17.870638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799923, 29.588701, 17.695467>,  <29.233353, 28.904217, 17.682392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799923, 29.588701, 17.695467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165913, 29.743681, 17.650387>,  <29.385508, 29.836668, 17.623339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165913, 29.743681, 17.650387>,  <28.799923, 29.588701, 17.695467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165913, 29.743681, 17.650387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302999, 0.475275, -0.826018,
		-0.266477, 0.789935, 0.552262,
		0.914976, 0.387450, -0.112700,
		29.440405, 29.859917, 17.616577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679750, 30.281467, 17.398476>,  <28.799923, 29.588701, 17.695467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679750, 30.281467, 17.398476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050814, 30.186838, 17.282904>,  <29.273453, 30.130060, 17.213560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050814, 30.186838, 17.282904>,  <28.679750, 30.281467, 17.398476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050814, 30.186838, 17.282904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117108, 0.550396, -0.826650,
		0.354589, 0.800686, 0.482875,
		0.927660, -0.236572, -0.288931,
		29.329111, 30.115866, 17.196224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858521, 30.949516, 17.073048>,  <28.679750, 30.281467, 17.398476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858521, 30.949516, 17.073048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124792, 30.672190, 16.962641>,  <29.284555, 30.505795, 16.896397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124792, 30.672190, 16.962641>,  <28.858521, 30.949516, 17.073048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124792, 30.672190, 16.962641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276454, 0.572682, -0.771757,
		0.693141, 0.437436, 0.572892,
		0.665679, -0.693315, -0.276019,
		29.324495, 30.464195, 16.879835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466398, 31.253881, 16.773468>,  <28.858521, 30.949516, 17.073048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466398, 31.253881, 16.773468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455126, 30.881784, 16.627125>,  <29.448362, 30.658525, 16.539320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455126, 30.881784, 16.627125>,  <29.466398, 31.253881, 16.773468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455126, 30.881784, 16.627125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095072, 0.361849, -0.927376,
		0.995071, -0.060916, 0.078244,
		-0.028179, -0.930245, -0.365857,
		29.446672, 30.602711, 16.517368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136265, 31.144688, 16.203928>,  <29.466398, 31.253881, 16.773468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136265, 31.144688, 16.203928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850519, 30.873032, 16.136457>,  <29.679071, 30.710039, 16.095974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850519, 30.873032, 16.136457>,  <30.136265, 31.144688, 16.203928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850519, 30.873032, 16.136457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097214, 0.335025, -0.937181,
		0.692987, -0.653092, -0.305353,
		-0.714366, -0.679138, -0.168678,
		29.636209, 30.669291, 16.085854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131088, 31.073252, 15.464519>,  <30.136265, 31.144688, 16.203928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131088, 31.073252, 15.464519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814026, 30.839211, 15.533044>,  <29.623789, 30.698786, 15.574159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814026, 30.839211, 15.533044>,  <30.131088, 31.073252, 15.464519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814026, 30.839211, 15.533044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290744, 0.115797, -0.949768,
		0.535874, -0.802649, -0.261902,
		-0.792658, -0.585103, 0.171313,
		29.576229, 30.663679, 15.584437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052729, 30.538963, 14.911189>,  <30.131088, 31.073252, 15.464519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052729, 30.538963, 14.911189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691725, 30.611616, 15.067388>,  <29.475122, 30.655209, 15.161107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691725, 30.611616, 15.067388>,  <30.052729, 30.538963, 14.911189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691725, 30.611616, 15.067388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392167, 0.028147, -0.919463,
		-0.177996, -0.982964, 0.045827,
		-0.902509, 0.181632, 0.390496,
		29.420973, 30.666105, 15.184536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553692, 30.228937, 14.492787>,  <30.052729, 30.538963, 14.911189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553692, 30.228937, 14.492787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337290, 30.484234, 14.711863>,  <29.207449, 30.637411, 14.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337290, 30.484234, 14.711863>,  <29.553692, 30.228937, 14.492787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337290, 30.484234, 14.711863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429124, 0.350580, -0.832434,
		-0.723302, -0.685376, 0.084219,
		-0.541005, 0.638242, 0.547687,
		29.174988, 30.675707, 14.876168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916498, 30.228930, 14.237762>,  <29.553692, 30.228937, 14.492787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916498, 30.228930, 14.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918682, 30.586966, 14.416104>,  <28.919992, 30.801786, 14.523109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918682, 30.586966, 14.416104>,  <28.916498, 30.228930, 14.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918682, 30.586966, 14.416104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412912, 0.408094, -0.814226,
		-0.910755, -0.179654, 0.371820,
		0.005459, 0.895089, 0.445855,
		28.920321, 30.855492, 14.549861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305098, 30.478636, 14.119216>,  <28.916498, 30.228930, 14.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305098, 30.478636, 14.119216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536139, 30.794968, 14.200171>,  <28.674763, 30.984768, 14.248745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536139, 30.794968, 14.200171>,  <28.305098, 30.478636, 14.119216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536139, 30.794968, 14.200171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409508, 0.495183, -0.766223,
		-0.706172, 0.359693, 0.609871,
		0.577603, 0.790832, 0.202388,
		28.709419, 31.032217, 14.260888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831610, 31.078636, 14.110066>,  <28.305098, 30.478636, 14.119216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831610, 31.078636, 14.110066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197510, 31.234621, 14.067801>,  <28.417049, 31.328211, 14.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197510, 31.234621, 14.067801>,  <27.831610, 31.078636, 14.110066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197510, 31.234621, 14.067801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325692, 0.556975, -0.764005,
		-0.239080, 0.733286, 0.636500,
		0.914749, 0.389961, -0.105664,
		28.471935, 31.351610, 14.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792612, 31.825531, 14.065295>,  <27.831610, 31.078636, 14.110066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792612, 31.825531, 14.065295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150997, 31.750189, 13.904411>,  <28.366028, 31.704983, 13.807881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150997, 31.750189, 13.904411>,  <27.792612, 31.825531, 14.065295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150997, 31.750189, 13.904411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241420, 0.553585, -0.797032,
		0.372782, 0.811213, 0.450519,
		0.895963, -0.188355, -0.402210,
		28.419786, 31.693682, 13.783749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193462, 32.432110, 13.986484>,  <27.792612, 31.825531, 14.065295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193462, 32.432110, 13.986484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308733, 32.158089, 13.718855>,  <28.377895, 31.993675, 13.558278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308733, 32.158089, 13.718855>,  <28.193462, 32.432110, 13.986484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308733, 32.158089, 13.718855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234635, 0.626896, -0.742932,
		0.928386, 0.371082, 0.019918,
		0.288175, -0.685054, -0.669071,
		28.395185, 31.952572, 13.518134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554369, 32.280464, 13.518557>,  <28.193462, 32.432110, 13.986484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554369, 32.280464, 13.518557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160089, 32.285381, 13.451333>,  <26.923521, 32.288330, 13.410998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160089, 32.285381, 13.451333>,  <27.554369, 32.280464, 13.518557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160089, 32.285381, 13.451333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167050, 0.059659, 0.984142,
		0.022124, 0.998143, -0.056752,
		-0.985700, 0.012293, -0.168059,
		26.864380, 32.289070, 13.400915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166651, 32.768612, 13.896706>,  <27.554369, 32.280464, 13.518557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166651, 32.768612, 13.896706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882093, 32.494473, 13.834455>,  <26.711359, 32.329990, 13.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882093, 32.494473, 13.834455>,  <27.166651, 32.768612, 13.896706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882093, 32.494473, 13.834455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210287, -0.003721, 0.977633,
		-0.670597, 0.728207, -0.141473,
		-0.711392, -0.685347, -0.155628,
		26.668676, 32.288868, 13.787766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617012, 33.036770, 14.230305>,  <27.166651, 32.768612, 13.896706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617012, 33.036770, 14.230305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527325, 32.650600, 14.177124>,  <26.473513, 32.418900, 14.145215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527325, 32.650600, 14.177124>,  <26.617012, 33.036770, 14.230305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527325, 32.650600, 14.177124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271145, -0.069239, 0.960045,
		-0.936060, 0.251308, -0.246246,
		-0.224217, -0.965428, -0.132952,
		26.460060, 32.360973, 14.137239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951969, 33.004524, 14.587696>,  <26.617012, 33.036770, 14.230305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951969, 33.004524, 14.587696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132015, 32.647701, 14.571555>,  <26.240044, 32.433609, 14.561871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132015, 32.647701, 14.571555>,  <25.951969, 33.004524, 14.587696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132015, 32.647701, 14.571555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253141, -0.170805, 0.952232,
		-0.856338, -0.418400, -0.302698,
		0.450116, -0.892058, -0.040353,
		26.267050, 32.380085, 14.559449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459713, 32.495674, 14.833368>,  <25.951969, 33.004524, 14.587696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459713, 32.495674, 14.833368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828659, 32.349247, 14.882733>,  <26.050028, 32.261391, 14.912353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828659, 32.349247, 14.882733>,  <25.459713, 32.495674, 14.833368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828659, 32.349247, 14.882733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255239, -0.337670, 0.905998,
		-0.289982, -0.867164, -0.404890,
		0.922368, -0.366067, 0.123416,
		26.105370, 32.239426, 14.919758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358540, 32.129303, 15.398057>,  <25.459713, 32.495674, 14.833368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358540, 32.129303, 15.398057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744217, 32.032276, 15.355169>,  <25.975624, 31.974062, 15.329437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744217, 32.032276, 15.355169>,  <25.358540, 32.129303, 15.398057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744217, 32.032276, 15.355169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024268, -0.321892, 0.946465,
		-0.264088, -0.915177, -0.304480,
		0.964193, -0.242561, -0.107218,
		26.033474, 31.959507, 15.323004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497402, 31.357458, 15.567660>,  <25.358540, 32.129303, 15.398057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497402, 31.357458, 15.567660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827595, 31.572983, 15.634908>,  <26.025711, 31.702297, 15.675256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827595, 31.572983, 15.634908>,  <25.497402, 31.357458, 15.567660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827595, 31.572983, 15.634908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044505, -0.359062, 0.932252,
		0.562672, -0.762074, -0.320379,
		0.825481, 0.538811, 0.168118,
		26.075239, 31.734627, 15.685343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746304, 30.945930, 16.012938>,  <25.497402, 31.357458, 15.567660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746304, 30.945930, 16.012938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954597, 31.281796, 16.074646>,  <26.079575, 31.483315, 16.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954597, 31.281796, 16.074646>,  <25.746304, 30.945930, 16.012938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954597, 31.281796, 16.074646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158861, -0.272853, 0.948849,
		0.838807, -0.469592, -0.275474,
		0.520736, 0.839663, 0.154271,
		26.110819, 31.533695, 16.120928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442116, 30.727325, 16.191055>,  <25.746304, 30.945930, 16.012938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442116, 30.727325, 16.191055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411177, 31.105829, 16.316666>,  <26.392612, 31.332932, 16.392031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411177, 31.105829, 16.316666>,  <26.442116, 30.727325, 16.191055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411177, 31.105829, 16.316666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375946, -0.264037, 0.888228,
		0.923408, 0.186760, -0.335320,
		-0.077348, 0.946259, 0.314025,
		26.387972, 31.389708, 16.410873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098824, 30.922125, 16.428230>,  <26.442116, 30.727325, 16.191055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098824, 30.922125, 16.428230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828648, 31.165287, 16.595196>,  <26.666542, 31.311184, 16.695375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828648, 31.165287, 16.595196>,  <27.098824, 30.922125, 16.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828648, 31.165287, 16.595196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349629, -0.234383, 0.907097,
		0.649263, 0.758628, -0.054230,
		-0.675439, 0.607905, 0.417414,
		26.626017, 31.347658, 16.720421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459476, 31.107632, 16.972271>,  <27.098824, 30.922125, 16.428230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459476, 31.107632, 16.972271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098726, 31.243111, 17.079531>,  <26.882277, 31.324398, 17.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098726, 31.243111, 17.079531>,  <27.459476, 31.107632, 16.972271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098726, 31.243111, 17.079531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268411, -0.047031, 0.962156,
		0.338491, 0.939719, -0.048495,
		-0.901875, 0.338697, 0.268151,
		26.828163, 31.344721, 17.159975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507591, 31.717062, 17.534246>,  <27.459476, 31.107632, 16.972271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507591, 31.717062, 17.534246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136808, 31.576689, 17.587305>,  <26.914339, 31.492466, 17.619141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136808, 31.576689, 17.587305>,  <27.507591, 31.717062, 17.534246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136808, 31.576689, 17.587305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188797, -0.130813, 0.973264,
		-0.324197, 0.927219, 0.187513,
		-0.926959, -0.350931, 0.132647,
		26.858721, 31.471409, 17.627100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167961, 32.131733, 18.039188>,  <27.507591, 31.717062, 17.534246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167961, 32.131733, 18.039188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993574, 31.771753, 18.037022>,  <26.888941, 31.555767, 18.035721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993574, 31.771753, 18.037022>,  <27.167961, 32.131733, 18.039188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993574, 31.771753, 18.037022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098521, -0.053711, 0.993685,
		-0.894553, 0.432682, 0.112080,
		-0.435969, -0.899945, -0.005419,
		26.862783, 31.501770, 18.035397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747900, 32.050373, 18.603222>,  <27.167961, 32.131733, 18.039188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747900, 32.050373, 18.603222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824306, 31.672289, 18.497328>,  <26.870150, 31.445438, 18.433790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824306, 31.672289, 18.497328>,  <26.747900, 32.050373, 18.603222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824306, 31.672289, 18.497328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165274, -0.234882, 0.957870,
		-0.967573, -0.226722, 0.111353,
		0.191015, -0.945213, -0.264737,
		26.881611, 31.388725, 18.417908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504450, 31.688612, 19.110651>,  <26.747900, 32.050373, 18.603222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504450, 31.688612, 19.110651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717363, 31.407307, 18.922142>,  <26.845112, 31.238523, 18.809036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717363, 31.407307, 18.922142>,  <26.504450, 31.688612, 19.110651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717363, 31.407307, 18.922142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160033, -0.463060, 0.871759,
		-0.831303, -0.539442, -0.133934,
		0.532283, -0.703262, -0.471272,
		26.877048, 31.196327, 18.780760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256752, 31.098465, 19.392921>,  <26.504450, 31.688612, 19.110651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256752, 31.098465, 19.392921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618523, 31.011597, 19.246033>,  <26.835585, 30.959476, 19.157900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618523, 31.011597, 19.246033>,  <26.256752, 31.098465, 19.392921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618523, 31.011597, 19.246033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240077, -0.452464, 0.858860,
		-0.352673, -0.864936, -0.357082,
		0.904425, -0.217169, -0.367223,
		26.889851, 30.946445, 19.135866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398048, 30.527304, 19.752249>,  <26.256752, 31.098465, 19.392921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398048, 30.527304, 19.752249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747816, 30.659689, 19.610346>,  <26.957678, 30.739120, 19.525204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747816, 30.659689, 19.610346>,  <26.398048, 30.527304, 19.752249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747816, 30.659689, 19.610346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413832, -0.127117, 0.901435,
		0.253245, -0.935043, -0.248116,
		0.874420, 0.330962, -0.354759,
		27.010141, 30.758978, 19.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905254, 30.000914, 19.906279>,  <26.398048, 30.527304, 19.752249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905254, 30.000914, 19.906279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116901, 30.329287, 19.820391>,  <27.243889, 30.526310, 19.768858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116901, 30.329287, 19.820391>,  <26.905254, 30.000914, 19.906279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116901, 30.329287, 19.820391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562382, -0.149774, 0.813200,
		0.635424, -0.551031, -0.540926,
		0.529115, 0.820934, -0.214720,
		27.275637, 30.575567, 19.755974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609468, 29.815607, 20.151962>,  <26.905254, 30.000914, 19.906279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609468, 29.815607, 20.151962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589840, 30.214228, 20.125202>,  <27.578064, 30.453400, 20.109146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589840, 30.214228, 20.125202>,  <27.609468, 29.815607, 20.151962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589840, 30.214228, 20.125202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509219, 0.082584, 0.856666,
		0.859237, 0.007969, -0.511515,
		-0.049070, 0.996552, -0.066901,
		27.575119, 30.513193, 20.105131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286818, 30.140068, 20.217201>,  <27.609468, 29.815607, 20.151962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286818, 30.140068, 20.217201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034744, 30.428516, 20.332338>,  <27.883501, 30.601585, 20.401421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034744, 30.428516, 20.332338>,  <28.286818, 30.140068, 20.217201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034744, 30.428516, 20.332338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629395, 0.257346, 0.733236,
		0.454678, 0.643238, -0.616045,
		-0.630182, 0.721122, 0.287842,
		27.845690, 30.644854, 20.418692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701994, 30.759266, 20.515053>,  <28.286818, 30.140068, 20.217201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701994, 30.759266, 20.515053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341948, 30.810394, 20.681644>,  <28.125919, 30.841070, 20.781599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341948, 30.810394, 20.681644>,  <28.701994, 30.759266, 20.515053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341948, 30.810394, 20.681644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435086, 0.215086, 0.874322,
		0.022177, 0.968194, -0.249215,
		-0.900116, 0.127820, 0.416477,
		28.071913, 30.848740, 20.806587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808567, 31.239319, 20.937210>,  <28.701994, 30.759266, 20.515053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808567, 31.239319, 20.937210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461281, 31.095673, 21.074171>,  <28.252909, 31.009485, 21.156347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461281, 31.095673, 21.074171>,  <28.808567, 31.239319, 20.937210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461281, 31.095673, 21.074171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306106, 0.155453, 0.939220,
		-0.390517, 0.920255, -0.025039,
		-0.868214, -0.359117, 0.342403,
		28.200817, 30.987938, 21.176891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656113, 31.657602, 21.519915>,  <28.808567, 31.239319, 20.937210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656113, 31.657602, 21.519915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445387, 31.320894, 21.567051>,  <28.318951, 31.118870, 21.595333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445387, 31.320894, 21.567051>,  <28.656113, 31.657602, 21.519915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445387, 31.320894, 21.567051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234182, -0.010468, 0.972136,
		-0.817082, 0.539734, 0.202642,
		-0.526816, -0.841771, 0.117843,
		28.287342, 31.068363, 21.602404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249104, 31.822840, 22.140457>,  <28.656113, 31.657602, 21.519915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249104, 31.822840, 22.140457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275240, 31.428446, 22.079050>,  <28.290922, 31.191811, 22.042206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275240, 31.428446, 22.079050>,  <28.249104, 31.822840, 22.140457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275240, 31.428446, 22.079050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205219, -0.137279, 0.969041,
		-0.976533, -0.094821, 0.193373,
		0.065339, -0.985983, -0.153517,
		28.294842, 31.132650, 22.032995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830019, 31.531450, 22.707653>,  <28.249104, 31.822840, 22.140457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830019, 31.531450, 22.707653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023327, 31.206667, 22.576702>,  <28.139311, 31.011797, 22.498131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023327, 31.206667, 22.576702>,  <27.830019, 31.531450, 22.707653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023327, 31.206667, 22.576702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156149, -0.288005, 0.944813,
		-0.861434, -0.507718, -0.012397,
		0.483269, -0.811958, -0.327377,
		28.168308, 30.963079, 22.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447002, 31.009935, 23.041693>,  <27.830019, 31.531450, 22.707653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447002, 31.009935, 23.041693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823681, 30.909222, 22.952419>,  <28.049688, 30.848793, 22.898855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823681, 30.909222, 22.952419>,  <27.447002, 31.009935, 23.041693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823681, 30.909222, 22.952419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102766, -0.416387, 0.903361,
		-0.320379, -0.873629, -0.366237,
		0.941698, -0.251782, -0.223181,
		28.106190, 30.833687, 22.885464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564140, 30.443615, 23.502205>,  <27.447002, 31.009935, 23.041693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564140, 30.443615, 23.502205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936853, 30.541624, 23.395063>,  <28.160480, 30.600430, 23.330778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936853, 30.541624, 23.395063>,  <27.564140, 30.443615, 23.502205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936853, 30.541624, 23.395063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329804, -0.263051, 0.906661,
		0.151692, -0.933150, -0.325915,
		0.931783, 0.245021, -0.267854,
		28.216389, 30.615129, 23.314707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966110, 29.868412, 23.449848>,  <27.564140, 30.443615, 23.502205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966110, 29.868412, 23.449848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197565, 30.183697, 23.533659>,  <28.336437, 30.372868, 23.583946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197565, 30.183697, 23.533659>,  <27.966110, 29.868412, 23.449848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197565, 30.183697, 23.533659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356181, -0.475329, 0.804486,
		0.733701, -0.390874, -0.555788,
		0.578635, 0.788213, 0.209527,
		28.371155, 30.420160, 23.596518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578995, 29.599751, 23.591143>,  <27.966110, 29.868412, 23.449848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578995, 29.599751, 23.591143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594212, 29.969585, 23.742771>,  <28.603342, 30.191486, 23.833748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594212, 29.969585, 23.742771>,  <28.578995, 29.599751, 23.591143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594212, 29.969585, 23.742771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242120, -0.376569, 0.894189,
		0.969500, 0.057763, -0.238186,
		0.038042, 0.924586, 0.379069,
		28.605623, 30.246962, 23.856491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903807, 29.517761, 24.284573>,  <28.578995, 29.599751, 23.591143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903807, 29.517761, 24.284573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799280, 29.898542, 24.348450>,  <28.736565, 30.127010, 24.386776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799280, 29.898542, 24.348450>,  <28.903807, 29.517761, 24.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799280, 29.898542, 24.348450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199224, -0.108688, 0.973908,
		0.944470, 0.286314, -0.161250,
		-0.261317, 0.951951, 0.159693,
		28.720884, 30.184128, 24.396358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424112, 29.836226, 24.770632>,  <28.903807, 29.517761, 24.284573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424112, 29.836226, 24.770632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094942, 30.063299, 24.779802>,  <28.897440, 30.199543, 24.785305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094942, 30.063299, 24.779802>,  <29.424112, 29.836226, 24.770632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094942, 30.063299, 24.779802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087390, 0.086606, 0.992402,
		0.561387, 0.818677, -0.120880,
		-0.822926, 0.567686, 0.022924,
		28.848064, 30.233604, 24.786680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616993, 30.515858, 25.105684>,  <29.424112, 29.836226, 24.770632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616993, 30.515858, 25.105684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224960, 30.438042, 25.121647>,  <28.989740, 30.391352, 25.131224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224960, 30.438042, 25.121647>,  <29.616993, 30.515858, 25.105684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224960, 30.438042, 25.121647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045879, -0.026299, 0.998601,
		-0.193219, 0.980542, 0.034701,
		-0.980083, -0.194541, 0.039904,
		28.930935, 30.379679, 25.133617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360950, 30.896454, 25.599171>,  <29.616993, 30.515858, 25.105684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360950, 30.896454, 25.599171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069002, 30.625257, 25.564264>,  <28.893833, 30.462540, 25.543322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069002, 30.625257, 25.564264>,  <29.360950, 30.896454, 25.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069002, 30.625257, 25.564264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099569, -0.020853, 0.994812,
		-0.676292, 0.734776, -0.052286,
		-0.729873, -0.677990, -0.087264,
		28.850040, 30.421860, 25.538086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907614, 31.053526, 26.098560>,  <29.360950, 30.896454, 25.599171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907614, 31.053526, 26.098560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796583, 30.680735, 26.005291>,  <28.729965, 30.457060, 25.949329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796583, 30.680735, 26.005291>,  <28.907614, 31.053526, 26.098560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796583, 30.680735, 26.005291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168197, -0.191817, 0.966910,
		-0.945865, 0.307612, -0.103511,
		-0.277578, -0.931977, -0.233172,
		28.713310, 30.401142, 25.935339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312569, 30.951937, 26.400667>,  <28.907614, 31.053526, 26.098560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312569, 30.951937, 26.400667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473886, 30.592991, 26.329014>,  <28.570679, 30.377623, 26.286022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473886, 30.592991, 26.329014>,  <28.312569, 30.951937, 26.400667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473886, 30.592991, 26.329014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135140, -0.252022, 0.958239,
		-0.905035, -0.362247, -0.222909,
		0.403297, -0.897364, -0.179135,
		28.594875, 30.323782, 26.275274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890652, 30.439812, 26.692144>,  <28.312569, 30.951937, 26.400667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890652, 30.439812, 26.692144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240877, 30.250881, 26.651552>,  <28.451012, 30.137524, 26.627197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240877, 30.250881, 26.651552>,  <27.890652, 30.439812, 26.692144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240877, 30.250881, 26.651552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003657, -0.203575, 0.979052,
		-0.483090, -0.857593, -0.176515,
		0.875563, -0.472325, -0.101481,
		28.503546, 30.109184, 26.621107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898514, 29.742931, 27.056387>,  <27.890652, 30.439812, 26.692144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898514, 29.742931, 27.056387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276428, 29.871603, 27.031410>,  <28.503178, 29.948807, 27.016424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276428, 29.871603, 27.031410>,  <27.898514, 29.742931, 27.056387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276428, 29.871603, 27.031410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088855, -0.068083, 0.993715,
		0.315407, -0.944398, -0.092907,
		0.944788, 0.321679, -0.062441,
		28.559864, 29.968107, 27.012678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133766, 29.467875, 27.656258>,  <27.898514, 29.742931, 27.056387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133766, 29.467875, 27.656258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425831, 29.716152, 27.541990>,  <28.601068, 29.865118, 27.473431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425831, 29.716152, 27.541990>,  <28.133766, 29.467875, 27.656258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425831, 29.716152, 27.541990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291565, 0.095078, 0.951814,
		0.617944, -0.778268, -0.111550,
		0.730161, 0.620692, -0.285669,
		28.644878, 29.902359, 27.456289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694908, 29.256180, 27.989895>,  <28.133766, 29.467875, 27.656258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694908, 29.256180, 27.989895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779999, 29.635305, 27.894901>,  <28.831053, 29.862780, 27.837904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779999, 29.635305, 27.894901>,  <28.694908, 29.256180, 27.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779999, 29.635305, 27.894901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500860, 0.102917, 0.859388,
		0.838980, -0.301762, -0.452828,
		0.212727, 0.947812, -0.237486,
		28.843817, 29.919649, 27.823656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432119, 29.385984, 28.184511>,  <28.694908, 29.256180, 27.989895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432119, 29.385984, 28.184511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280905, 29.754580, 28.148840>,  <29.190176, 29.975737, 28.127438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280905, 29.754580, 28.148840>,  <29.432119, 29.385984, 28.184511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280905, 29.754580, 28.148840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186569, 0.170178, 0.967591,
		0.906797, 0.349146, -0.236254,
		-0.378036, 0.921486, -0.089178,
		29.167494, 30.031025, 28.122087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998693, 29.972904, 28.332668>,  <29.432119, 29.385984, 28.184511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998693, 29.972904, 28.332668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623255, 30.070480, 28.430262>,  <29.397991, 30.129026, 28.488817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623255, 30.070480, 28.430262>,  <29.998693, 29.972904, 28.332668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623255, 30.070480, 28.430262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309441, 0.282461, 0.907999,
		0.152580, 0.927745, -0.340601,
		-0.938598, 0.243939, 0.243984,
		29.341675, 30.143661, 28.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878670, 30.756176, 28.522991>,  <29.998693, 29.972904, 28.332668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878670, 30.756176, 28.522991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641323, 30.514750, 28.736017>,  <29.498915, 30.369894, 28.863832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641323, 30.514750, 28.736017>,  <29.878670, 30.756176, 28.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641323, 30.514750, 28.736017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260418, 0.482097, 0.836519,
		-0.761641, 0.635053, -0.128882,
		-0.593368, -0.603564, 0.532564,
		29.463312, 30.333681, 28.895786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539667, 31.400658, 28.442600>,  <29.878670, 30.756176, 28.522991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539667, 31.400658, 28.442600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801134, 31.559505, 28.184914>,  <29.958014, 31.654814, 28.030302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801134, 31.559505, 28.184914>,  <29.539667, 31.400658, 28.442600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801134, 31.559505, 28.184914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197226, 0.911233, 0.361603,
		0.730631, -0.109312, 0.673965,
		0.653666, 0.397121, -0.644216,
		29.997234, 31.678642, 27.991648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828468, 31.999744, 28.805002>,  <29.539667, 31.400658, 28.442600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828468, 31.999744, 28.805002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843493, 32.097641, 28.417458>,  <29.852507, 32.156380, 28.184931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843493, 32.097641, 28.417458>,  <29.828468, 31.999744, 28.805002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843493, 32.097641, 28.417458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385500, 0.898045, 0.211907,
		0.921943, 0.365536, 0.128080,
		0.037562, 0.244741, -0.968860,
		29.854761, 32.171062, 28.126799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103302, 32.691574, 28.694103>,  <29.828468, 31.999744, 28.805002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103302, 32.691574, 28.694103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913260, 32.618538, 28.349792>,  <29.799234, 32.574718, 28.143206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913260, 32.618538, 28.349792>,  <30.103302, 32.691574, 28.694103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913260, 32.618538, 28.349792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323642, 0.945924, -0.022014,
		0.818249, 0.268124, -0.508507,
		-0.475106, -0.182587, -0.860777,
		29.770727, 32.563763, 28.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195087, 33.267429, 28.310633>,  <30.103302, 32.691574, 28.694103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195087, 33.267429, 28.310633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867962, 33.083939, 28.171633>,  <29.671686, 32.973846, 28.088232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867962, 33.083939, 28.171633>,  <30.195087, 33.267429, 28.310633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867962, 33.083939, 28.171633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418413, 0.888538, -0.188229,
		0.395111, -0.008538, -0.918594,
		-0.817813, -0.458723, -0.347499,
		29.622618, 32.946323, 28.067383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818710, 34.016129, 28.265034>,  <30.195087, 33.267429, 28.310633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818710, 34.016129, 28.265034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480022, 33.908318, 28.081547>,  <29.276810, 33.843632, 27.971455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480022, 33.908318, 28.081547>,  <29.818710, 34.016129, 28.265034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480022, 33.908318, 28.081547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292710, 0.483982, -0.824671,
		0.444277, -0.832538, -0.330906,
		-0.846722, -0.269523, -0.458714,
		29.226006, 33.827457, 27.943932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789650, 34.147144, 28.943192>,  <29.818710, 34.016129, 28.265034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789650, 34.147144, 28.943192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069611, 34.413105, 29.047531>,  <30.237587, 34.572681, 29.110136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069611, 34.413105, 29.047531>,  <29.789650, 34.147144, 28.943192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069611, 34.413105, 29.047531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397004, -0.058562, -0.915947,
		-0.593738, 0.744632, -0.304956,
		0.699902, 0.664902, 0.260851,
		30.279581, 34.612576, 29.125786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865948, 34.710522, 28.396975>,  <29.789650, 34.147144, 28.943192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865948, 34.710522, 28.396975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214821, 34.661663, 28.586449>,  <30.424145, 34.632347, 28.700132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214821, 34.661663, 28.586449>,  <29.865948, 34.710522, 28.396975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214821, 34.661663, 28.586449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480118, 0.028246, -0.876749,
		0.093715, 0.992110, 0.083282,
		0.872184, -0.122150, 0.473683,
		30.476477, 34.625019, 28.728554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349796, 35.220467, 28.235241>,  <29.865948, 34.710522, 28.396975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349796, 35.220467, 28.235241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518747, 34.876148, 28.348825>,  <30.620117, 34.669559, 28.416975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518747, 34.876148, 28.348825>,  <30.349796, 35.220467, 28.235241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518747, 34.876148, 28.348825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572528, 0.010488, -0.819818,
		0.702715, 0.508847, 0.497258,
		0.422377, -0.860793, 0.283960,
		30.645460, 34.617908, 28.434013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082079, 35.288418, 28.499386>,  <30.349796, 35.220467, 28.235241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082079, 35.288418, 28.499386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920694, 34.983997, 28.296202>,  <30.823864, 34.801346, 28.174292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920694, 34.983997, 28.296202>,  <31.082079, 35.288418, 28.499386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920694, 34.983997, 28.296202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517536, 0.268007, -0.812606,
		0.754570, -0.590743, 0.285740,
		-0.403461, -0.761049, -0.507961,
		30.799656, 34.755684, 28.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645575, 34.886578, 28.211193>,  <31.082079, 35.288418, 28.499386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645575, 34.886578, 28.211193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320704, 34.835323, 27.983528>,  <31.125780, 34.804569, 27.846930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320704, 34.835323, 27.983528>,  <31.645575, 34.886578, 28.211193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320704, 34.835323, 27.983528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526146, 0.260628, -0.809471,
		0.252048, -0.956900, -0.144268,
		-0.812184, -0.128120, -0.569160,
		31.077049, 34.796883, 27.812778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085075, 35.389149, 28.539217>,  <31.645575, 34.886578, 28.211193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085075, 35.389149, 28.539217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155190, 35.544762, 28.177460>,  <32.197258, 35.638130, 27.960405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155190, 35.544762, 28.177460>,  <32.085075, 35.389149, 28.539217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155190, 35.544762, 28.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814270, 0.573634, 0.088935,
		0.553389, 0.720832, 0.417327,
		0.175286, 0.389033, -0.904394,
		32.207775, 35.661472, 27.906141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750866, 35.735943, 28.747644>,  <32.085075, 35.389149, 28.539217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750866, 35.735943, 28.747644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824265, 35.347439, 28.808287>,  <32.868305, 35.114338, 28.844671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824265, 35.347439, 28.808287>,  <32.750866, 35.735943, 28.747644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824265, 35.347439, 28.808287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002239, 0.154637, 0.987969,
		-0.983017, -0.180952, 0.030550,
		0.183499, -0.971259, 0.151605,
		32.879314, 35.056061, 28.853767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423389, 35.271885, 29.316620>,  <32.750866, 35.735943, 28.747644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423389, 35.271885, 29.316620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790459, 35.118179, 29.276182>,  <33.010700, 35.025955, 29.251921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790459, 35.118179, 29.276182>,  <32.423389, 35.271885, 29.316620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790459, 35.118179, 29.276182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089764, -0.047356, 0.994837,
		-0.387068, -0.922008, -0.008964,
		0.917671, -0.384264, -0.101093,
		33.065762, 35.002899, 29.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649475, 34.865986, 29.937086>,  <32.423389, 35.271885, 29.316620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649475, 34.865986, 29.937086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986351, 34.956940, 29.741528>,  <33.188477, 35.011513, 29.624193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986351, 34.956940, 29.741528>,  <32.649475, 34.865986, 29.937086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986351, 34.956940, 29.741528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521865, -0.115783, 0.845134,
		0.135563, -0.966898, -0.216174,
		0.842187, 0.227383, -0.488894,
		33.239006, 35.025154, 29.594860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108162, 34.453598, 30.240242>,  <32.649475, 34.865986, 29.937086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108162, 34.453598, 30.240242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326309, 34.743816, 30.072357>,  <33.457195, 34.917946, 29.971626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326309, 34.743816, 30.072357>,  <33.108162, 34.453598, 30.240242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326309, 34.743816, 30.072357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636832, -0.033083, 0.770293,
		0.544998, -0.687378, -0.480093,
		0.545365, 0.725546, -0.419714,
		33.489918, 34.961479, 29.946444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850998, 34.119713, 30.103813>,  <33.108162, 34.453598, 30.240242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850998, 34.119713, 30.103813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836025, 34.516411, 30.152884>,  <33.827042, 34.754429, 30.182325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836025, 34.516411, 30.152884>,  <33.850998, 34.119713, 30.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836025, 34.516411, 30.152884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648955, -0.069225, 0.757671,
		0.759905, 0.107975, -0.641004,
		-0.037437, 0.991741, 0.122675,
		33.824795, 34.813934, 30.189686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523918, 34.348804, 30.183962>,  <33.850998, 34.119713, 30.103813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523918, 34.348804, 30.183962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400486, 34.705723, 30.052147>,  <34.326427, 34.919872, 29.973059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400486, 34.705723, 30.052147>,  <34.523918, 34.348804, 30.183962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400486, 34.705723, 30.052147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100546, 0.375102, 0.921515,
		0.945870, 0.251226, -0.205465,
		-0.308579, 0.892292, -0.329538,
		34.307911, 34.973412, 29.953285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101929, 34.848301, 30.088528>,  <34.523918, 34.348804, 30.183962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101929, 34.848301, 30.088528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775558, 35.038506, 30.220074>,  <34.579735, 35.152626, 30.299002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775558, 35.038506, 30.220074>,  <35.101929, 34.848301, 30.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775558, 35.038506, 30.220074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439431, 0.140400, 0.887236,
		0.375715, 0.868435, -0.323510,
		-0.815928, 0.475508, 0.328867,
		34.530781, 35.181156, 30.318733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320709, 35.545059, 30.356607>,  <35.101929, 34.848301, 30.088528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320709, 35.545059, 30.356607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967533, 35.473236, 30.530121>,  <34.755627, 35.430141, 30.634230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967533, 35.473236, 30.530121>,  <35.320709, 35.545059, 30.356607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967533, 35.473236, 30.530121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393496, 0.220923, 0.892386,
		-0.256073, 0.958619, -0.124405,
		-0.882943, -0.179563, 0.433786,
		34.702652, 35.419369, 30.660257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130924, 36.135113, 30.837416>,  <35.320709, 35.545059, 30.356607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130924, 36.135113, 30.837416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896385, 35.832310, 30.952742>,  <34.755661, 35.650627, 31.021936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896385, 35.832310, 30.952742>,  <35.130924, 36.135113, 30.837416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896385, 35.832310, 30.952742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309284, 0.119742, 0.943401,
		-0.748689, 0.642335, 0.163921,
		-0.586351, -0.757012, 0.288314,
		34.720478, 35.605206, 31.039236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934090, 36.481949, 31.390795>,  <35.130924, 36.135113, 30.837416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934090, 36.481949, 31.390795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861488, 36.091682, 31.439999>,  <34.817928, 35.857521, 31.469521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861488, 36.091682, 31.439999>,  <34.934090, 36.481949, 31.390795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861488, 36.091682, 31.439999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205972, 0.084595, 0.974894,
		-0.961578, 0.202281, 0.185606,
		-0.181501, -0.975667, 0.123009,
		34.807037, 35.798981, 31.476902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362656, 36.354137, 31.906818>,  <34.934090, 36.481949, 31.390795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362656, 36.354137, 31.906818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631802, 36.058300, 31.900497>,  <34.793289, 35.880798, 31.896704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631802, 36.058300, 31.900497>,  <34.362656, 36.354137, 31.906818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631802, 36.058300, 31.900497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317161, 0.269116, 0.909387,
		-0.668324, -0.616911, 0.415650,
		0.672869, -0.739593, -0.015803,
		34.833664, 35.836422, 31.895756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600212, 36.422554, 32.588089>,  <34.362656, 36.354137, 31.906818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600212, 36.422554, 32.588089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815304, 36.100239, 32.488850>,  <34.944359, 35.906849, 32.429306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815304, 36.100239, 32.488850>,  <34.600212, 36.422554, 32.588089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815304, 36.100239, 32.488850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663681, 0.223064, 0.713982,
		-0.519978, -0.548585, 0.654735,
		0.537727, -0.805790, -0.248097,
		34.976624, 35.858501, 32.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704205, 36.001740, 33.192535>,  <34.600212, 36.422554, 32.588089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704205, 36.001740, 33.192535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000561, 35.906513, 32.941330>,  <35.178375, 35.849377, 32.790607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000561, 35.906513, 32.941330>,  <34.704205, 36.001740, 33.192535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000561, 35.906513, 32.941330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635659, -0.053318, 0.770126,
		-0.216827, -0.969784, 0.111827,
		0.740894, -0.238068, -0.628013,
		35.222828, 35.835094, 32.752926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100147, 35.372257, 33.330349>,  <34.704205, 36.001740, 33.192535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100147, 35.372257, 33.330349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354465, 35.617458, 33.142742>,  <35.507057, 35.764580, 33.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354465, 35.617458, 33.142742>,  <35.100147, 35.372257, 33.330349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354465, 35.617458, 33.142742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690747, -0.180738, 0.700144,
		0.344423, -0.769127, -0.538346,
		0.635800, 0.613007, -0.469021,
		35.545204, 35.801361, 33.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786644, 35.112938, 33.275101>,  <35.100147, 35.372257, 33.330349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786644, 35.112938, 33.275101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846210, 35.506203, 33.317448>,  <35.881950, 35.742161, 33.342857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846210, 35.506203, 33.317448>,  <35.786644, 35.112938, 33.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846210, 35.506203, 33.317448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829516, -0.182481, 0.527829,
		0.538262, 0.009215, -0.842727,
		0.148918, 0.983166, 0.105867,
		35.890884, 35.801151, 33.349209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472607, 35.067909, 32.903191>,  <35.786644, 35.112938, 33.275101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472607, 35.067909, 32.903191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462933, 35.461143, 32.830582>,  <36.457127, 35.697086, 32.787018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462933, 35.461143, 32.830582>,  <36.472607, 35.067909, 32.903191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462933, 35.461143, 32.830582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496411, 0.169418, 0.851395,
		0.867751, -0.069518, -0.492114,
		-0.024185, 0.983089, -0.181522,
		36.455677, 35.756069, 32.776127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199120, 35.493313, 32.835613>,  <36.472607, 35.067909, 32.903191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199120, 35.493313, 32.835613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 35.693722, 32.996174>,  <36.708420, 35.813969, 33.092510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 35.693722, 32.996174>,  <37.199120, 35.493313, 32.835613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892433, 35.693722, 32.996174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491570, 0.056018, 0.869034,
		0.412922, 0.863618, -0.289239,
		-0.766716, 0.501025, 0.401398,
		36.662418, 35.844028, 33.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572456, 35.689110, 33.451595>,  <37.199120, 35.493313, 32.835613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572456, 35.689110, 33.451595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 35.585148, 33.099346>,  <37.826000, 35.522770, 32.887997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 35.585148, 33.099346>,  <37.572456, 35.689110, 33.451595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730923, 35.585148, 33.099346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707956, 0.697205, 0.112710,
		0.584682, -0.668096, 0.460211,
		0.396163, -0.259909, -0.880626,
		37.849773, 35.507175, 32.835159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264961, 35.508381, 33.615780>,  <37.572456, 35.689110, 33.451595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264961, 35.508381, 33.615780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200500, 35.640965, 33.243938>,  <38.161823, 35.720516, 33.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200500, 35.640965, 33.243938>,  <38.264961, 35.508381, 33.615780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200500, 35.640965, 33.243938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771377, 0.629859, 0.090861,
		0.615636, -0.702433, -0.357182,
		-0.161151, 0.331459, -0.929605,
		38.152157, 35.740402, 32.965057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934963, 35.580425, 33.276363>,  <38.264961, 35.508381, 33.615780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934963, 35.580425, 33.276363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678066, 35.837513, 33.109306>,  <38.523926, 35.991768, 33.009071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678066, 35.837513, 33.109306>,  <38.934963, 35.580425, 33.276363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678066, 35.837513, 33.109306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728325, 0.681523, -0.071194,
		0.238876, -0.349904, -0.905817,
		-0.642247, 0.642723, -0.417644,
		38.485394, 36.030331, 32.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220600, 35.796345, 32.684589>,  <38.934963, 35.580425, 33.276363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220600, 35.796345, 32.684589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960625, 36.065029, 32.826790>,  <38.804642, 36.226242, 32.912109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960625, 36.065029, 32.826790>,  <39.220600, 35.796345, 32.684589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960625, 36.065029, 32.826790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696648, 0.713527, -0.074564,
		-0.303748, 0.199201, -0.931695,
		-0.649937, 0.671713, 0.355506,
		38.765644, 36.266544, 32.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208614, 36.307510, 32.220215>,  <39.220600, 35.796345, 32.684589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208614, 36.307510, 32.220215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107754, 36.473938, 32.569683>,  <39.047237, 36.573795, 32.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107754, 36.473938, 32.569683>,  <39.208614, 36.307510, 32.220215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107754, 36.473938, 32.569683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711953, 0.691244, -0.123711,
		-0.655395, 0.590821, -0.470519,
		-0.252152, 0.416067, 0.873675,
		39.032108, 36.598759, 32.831787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294983, 37.103451, 32.099133>,  <39.208614, 36.307510, 32.220215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294983, 37.103451, 32.099133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247669, 37.078484, 32.495541>,  <39.219280, 37.063503, 32.733383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247669, 37.078484, 32.495541>,  <39.294983, 37.103451, 32.099133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247669, 37.078484, 32.495541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580441, 0.805410, 0.120008,
		-0.805665, 0.589422, -0.059038,
		-0.118285, -0.062419, 0.991016,
		39.212185, 37.059757, 32.792847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930347, 37.708908, 32.242184>,  <39.294983, 37.103451, 32.099133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930347, 37.708908, 32.242184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148270, 37.565052, 32.545193>,  <39.279022, 37.478737, 32.726997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148270, 37.565052, 32.545193>,  <38.930347, 37.708908, 32.242184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148270, 37.565052, 32.545193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533990, 0.845314, 0.017277,
		-0.646562, 0.395099, 0.652575,
		0.544805, -0.359639, 0.757527,
		39.311710, 37.457161, 32.772449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004696, 38.175449, 32.827961>,  <38.930347, 37.708908, 32.242184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004696, 38.175449, 32.827961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323845, 37.936581, 32.860901>,  <39.515335, 37.793259, 32.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323845, 37.936581, 32.860901>,  <39.004696, 38.175449, 32.827961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323845, 37.936581, 32.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533221, 0.762859, 0.365680,
		-0.281191, -0.247859, 0.927091,
		0.797877, -0.597170, 0.082345,
		39.563210, 37.757431, 32.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471722, 38.322884, 33.447723>,  <39.004696, 38.175449, 32.827961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471722, 38.322884, 33.447723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713810, 38.143215, 33.184830>,  <39.859062, 38.035416, 33.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713810, 38.143215, 33.184830>,  <39.471722, 38.322884, 33.447723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713810, 38.143215, 33.184830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780135, 0.498973, 0.377379,
		0.158433, -0.741128, 0.652402,
		0.605217, -0.449173, -0.657234,
		39.895374, 38.008465, 32.987659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008503, 37.819126, 33.791420>,  <39.471722, 38.322884, 33.447723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008503, 37.819126, 33.791420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 37.987251, 33.473232>,  <40.287891, 38.088127, 33.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183121, 37.987251, 33.473232>,  <40.008503, 37.819126, 33.791420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183121, 37.987251, 33.473232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827537, 0.159327, 0.538328,
		0.353004, -0.893284, -0.278268,
		0.436544, 0.420309, -0.795468,
		40.314083, 38.113342, 33.234592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536255, 37.408955, 33.684856>,  <40.008503, 37.819126, 33.791420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536255, 37.408955, 33.684856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627964, 37.771629, 33.543240>,  <40.682991, 37.989235, 33.458271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627964, 37.771629, 33.543240>,  <40.536255, 37.408955, 33.684856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627964, 37.771629, 33.543240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960142, -0.150932, 0.235256,
		0.159869, -0.393865, -0.905158,
		0.229277, 0.906691, -0.354037,
		40.696747, 38.043636, 33.437027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070984, 37.358894, 33.136227>,  <40.536255, 37.408955, 33.684856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070984, 37.358894, 33.136227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117195, 37.636372, 33.420605>,  <41.144920, 37.802856, 33.591232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117195, 37.636372, 33.420605>,  <41.070984, 37.358894, 33.136227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117195, 37.636372, 33.420605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645443, -0.596468, 0.477105,
		0.755021, 0.403759, -0.516645,
		0.115527, 0.693689, 0.710949,
		41.151852, 37.844479, 33.633888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784012, 37.441177, 33.368031>,  <41.070984, 37.358894, 33.136227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784012, 37.441177, 33.368031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600613, 37.606266, 33.682850>,  <41.490574, 37.705318, 33.871742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600613, 37.606266, 33.682850>,  <41.784012, 37.441177, 33.368031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600613, 37.606266, 33.682850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629900, -0.473807, 0.615412,
		0.626904, 0.777923, -0.042738,
		-0.458494, 0.412725, 0.787046,
		41.463066, 37.730083, 33.918964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245163, 37.675758, 33.885639>,  <41.784012, 37.441177, 33.368031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245163, 37.675758, 33.885639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910912, 37.633953, 34.101341>,  <41.710361, 37.608868, 34.230762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910912, 37.633953, 34.101341>,  <42.245163, 37.675758, 33.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910912, 37.633953, 34.101341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524030, -0.445986, 0.725595,
		0.164664, 0.888916, 0.427450,
		-0.835630, -0.104517, 0.539257,
		41.660221, 37.602596, 34.263119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345612, 37.885014, 34.593952>,  <42.245163, 37.675758, 33.885639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345612, 37.885014, 34.593952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067001, 37.598846, 34.571934>,  <41.899834, 37.427147, 34.558723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067001, 37.598846, 34.571934>,  <42.345612, 37.885014, 34.593952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067001, 37.598846, 34.571934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540939, -0.573961, 0.614779,
		-0.471418, 0.398432, 0.786776,
		-0.696527, -0.715416, -0.055048,
		41.858044, 37.384220, 34.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025295, 37.663383, 35.288956>,  <42.345612, 37.885014, 34.593952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025295, 37.663383, 35.288956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064945, 37.348843, 35.045048>,  <42.088734, 37.160118, 34.898701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064945, 37.348843, 35.045048>,  <42.025295, 37.663383, 35.288956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064945, 37.348843, 35.045048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431667, -0.518148, 0.738367,
		-0.896570, -0.336406, 0.288084,
		0.099121, -0.786355, -0.609771,
		42.094681, 37.112938, 34.862118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632221, 37.075123, 35.551693>,  <42.025295, 37.663383, 35.288956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632221, 37.075123, 35.551693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949306, 36.979725, 35.327290>,  <42.139557, 36.922485, 35.192650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949306, 36.979725, 35.327290>,  <41.632221, 37.075123, 35.551693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949306, 36.979725, 35.327290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344499, -0.583976, 0.735046,
		-0.502921, -0.775945, -0.380762,
		0.792711, -0.238498, -0.561006,
		42.187119, 36.908176, 35.158989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850849, 36.344296, 35.485882>,  <41.632221, 37.075123, 35.551693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850849, 36.344296, 35.485882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209381, 36.494316, 35.391281>,  <42.424500, 36.584328, 35.334522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209381, 36.494316, 35.391281>,  <41.850849, 36.344296, 35.485882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209381, 36.494316, 35.391281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404550, -0.473456, 0.782418,
		0.181474, -0.796980, -0.576099,
		0.896329, 0.375049, -0.236499,
		42.478279, 36.606831, 35.320332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566555, 35.910610, 35.462975>,  <41.850849, 36.344296, 35.485882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566555, 35.910610, 35.462975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640789, 36.279072, 35.599815>,  <42.685329, 36.500149, 35.681919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640789, 36.279072, 35.599815>,  <42.566555, 35.910610, 35.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640789, 36.279072, 35.599815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536609, -0.386662, 0.750029,
		0.823170, 0.044381, -0.566059,
		0.185586, 0.921153, 0.342103,
		42.696465, 36.555416, 35.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339172, 36.052376, 35.378239>,  <42.566555, 35.910610, 35.462975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339172, 36.052376, 35.378239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166046, 36.258091, 35.674397>,  <43.062168, 36.381519, 35.852089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166046, 36.258091, 35.674397>,  <43.339172, 36.052376, 35.378239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166046, 36.258091, 35.674397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627303, -0.418025, 0.657074,
		0.647424, 0.748845, -0.141682,
		-0.432820, 0.514283, 0.740392,
		43.036201, 36.412376, 35.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920006, 36.131775, 35.755455>,  <43.339172, 36.052376, 35.378239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920006, 36.131775, 35.755455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566151, 36.090302, 35.937298>,  <43.353836, 36.065418, 36.046402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566151, 36.090302, 35.937298>,  <43.920006, 36.131775, 35.755455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566151, 36.090302, 35.937298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463336, -0.304828, 0.832106,
		0.052304, 0.946747, 0.317701,
		-0.884638, -0.103679, 0.454606,
		43.300758, 36.059196, 36.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946098, 36.465397, 36.488380>,  <43.920006, 36.131775, 35.755455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946098, 36.465397, 36.488380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672268, 36.174416, 36.469761>,  <43.507969, 35.999825, 36.458588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672268, 36.174416, 36.469761>,  <43.946098, 36.465397, 36.488380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672268, 36.174416, 36.469761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335079, -0.370758, 0.866176,
		-0.647364, 0.577363, 0.497566,
		-0.684574, -0.727455, -0.046553,
		43.466896, 35.956181, 36.455795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433407, 36.442829, 37.097672>,  <43.946098, 36.465397, 36.488380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433407, 36.442829, 37.097672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539654, 36.105560, 36.910690>,  <43.603401, 35.903198, 36.798500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539654, 36.105560, 36.910690>,  <43.433407, 36.442829, 37.097672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539654, 36.105560, 36.910690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417395, -0.336495, 0.844128,
		-0.869039, -0.419328, 0.262556,
		0.265618, -0.843170, -0.467453,
		43.619339, 35.852608, 36.770454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430424, 36.196178, 37.806904>,  <43.433407, 36.442829, 37.097672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430424, 36.196178, 37.806904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581860, 35.899925, 37.584866>,  <43.672722, 35.722172, 37.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581860, 35.899925, 37.584866>,  <43.430424, 36.196178, 37.806904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581860, 35.899925, 37.584866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831328, 0.535759, -0.147842,
		0.406894, -0.405494, 0.818543,
		0.378593, -0.740633, -0.555095,
		43.695438, 35.677734, 37.418339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146366, 35.965919, 38.083714>,  <43.430424, 36.196178, 37.806904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146366, 35.965919, 38.083714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107670, 35.885876, 37.693718>,  <44.084450, 35.837849, 37.459721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107670, 35.885876, 37.693718>,  <44.146366, 35.965919, 38.083714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107670, 35.885876, 37.693718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752965, 0.625909, -0.203178,
		0.650910, -0.753786, 0.090125,
		-0.096743, -0.200111, -0.974985,
		44.078648, 35.825844, 37.401222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662674, 35.572533, 37.723278>,  <44.146366, 35.965919, 38.083714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662674, 35.572533, 37.723278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478317, 35.835972, 37.485348>,  <44.367702, 35.994038, 37.342590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478317, 35.835972, 37.485348>,  <44.662674, 35.572533, 37.723278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478317, 35.835972, 37.485348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865684, 0.481203, -0.137972,
		0.195364, -0.578523, -0.791924,
		-0.460896, 0.658601, -0.594828,
		44.340050, 36.033550, 37.306900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133812, 35.211182, 37.180775>,  <44.662674, 35.572533, 37.723278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133812, 35.211182, 37.180775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495495, 35.058620, 37.257664>,  <44.712505, 34.967083, 37.303799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495495, 35.058620, 37.257664>,  <44.133812, 35.211182, 37.180775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495495, 35.058620, 37.257664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233930, 0.065695, -0.970031,
		0.357343, 0.922072, 0.148623,
		0.904203, -0.381402, 0.192224,
		44.766754, 34.944199, 37.315331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671459, 35.514008, 36.779583>,  <44.133812, 35.211182, 37.180775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671459, 35.514008, 36.779583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874382, 35.193199, 36.905697>,  <44.996136, 35.000713, 36.981365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874382, 35.193199, 36.905697>,  <44.671459, 35.514008, 36.779583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874382, 35.193199, 36.905697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480266, -0.040652, -0.876180,
		0.715532, 0.595910, 0.364561,
		0.507305, -0.802021, 0.315283,
		45.026573, 34.952591, 37.000282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403431, 35.636669, 36.757412>,  <44.671459, 35.514008, 36.779583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403431, 35.636669, 36.757412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364616, 35.239910, 36.724609>,  <45.341328, 35.001854, 36.704929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364616, 35.239910, 36.724609>,  <45.403431, 35.636669, 36.757412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364616, 35.239910, 36.724609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482428, 0.025194, -0.875573,
		0.870544, -0.124526, 0.476074,
		-0.097038, -0.991896, -0.082007,
		45.335506, 34.942341, 36.700008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095890, 35.237144, 36.678478>,  <45.403431, 35.636669, 36.757412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095890, 35.237144, 36.678478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791992, 35.029137, 36.522343>,  <45.609653, 34.904331, 36.428661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791992, 35.029137, 36.522343>,  <46.095890, 35.237144, 36.678478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791992, 35.029137, 36.522343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567342, -0.236886, -0.788675,
		0.317662, -0.820648, 0.475003,
		-0.759747, -0.520021, -0.390338,
		45.564068, 34.873131, 36.405243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199135, 34.454479, 36.711777>,  <46.095890, 35.237144, 36.678478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199135, 34.454479, 36.711777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980289, 34.597103, 36.408848>,  <45.848984, 34.682678, 36.227089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980289, 34.597103, 36.408848>,  <46.199135, 34.454479, 36.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980289, 34.597103, 36.408848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803533, -0.029786, -0.594515,
		-0.234535, -0.933800, -0.270207,
		-0.547109, 0.356555, -0.757325,
		45.816158, 34.704071, 36.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214146, 33.948444, 36.143364>,  <46.199135, 34.454479, 36.711777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214146, 33.948444, 36.143364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164185, 34.332420, 36.043041>,  <46.134209, 34.562805, 35.982845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164185, 34.332420, 36.043041>,  <46.214146, 33.948444, 36.143364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164185, 34.332420, 36.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711294, -0.089598, -0.697160,
		-0.691707, -0.265480, -0.671611,
		-0.124907, 0.959944, -0.250810,
		46.126713, 34.620403, 35.967800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982021, 34.067574, 35.430599>,  <46.214146, 33.948444, 36.143364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982021, 34.067574, 35.430599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208889, 34.366638, 35.568771>,  <46.345009, 34.546078, 35.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208889, 34.366638, 35.568771>,  <45.982021, 34.067574, 35.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208889, 34.366638, 35.568771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645422, -0.142947, -0.750331,
		-0.511618, 0.648509, -0.563634,
		0.567166, 0.747665, 0.345428,
		46.379040, 34.590939, 35.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126076, 34.527039, 34.847572>,  <45.982021, 34.067574, 35.430599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126076, 34.527039, 34.847572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423363, 34.551453, 35.114075>,  <46.601734, 34.566101, 35.273975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423363, 34.551453, 35.114075>,  <46.126076, 34.527039, 34.847572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423363, 34.551453, 35.114075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669027, -0.059957, -0.740816,
		-0.005268, 0.996333, -0.085394,
		0.743220, 0.061034, 0.666258,
		46.646328, 34.569763, 35.313953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657269, 34.960129, 34.609722>,  <46.126076, 34.527039, 34.847572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657269, 34.960129, 34.609722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867603, 34.738960, 34.868263>,  <46.993805, 34.606258, 35.023388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867603, 34.738960, 34.868263>,  <46.657269, 34.960129, 34.609722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867603, 34.738960, 34.868263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789744, 0.035143, -0.612429,
		0.315907, 0.832495, 0.455142,
		0.525839, -0.552917, 0.646356,
		47.025356, 34.573086, 35.062172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.204861, 35.220577, 34.956974>,  <46.657269, 34.960129, 34.609722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.204861, 35.220577, 34.956974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319889, 34.839996, 34.913074>,  <47.388908, 34.611649, 34.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319889, 34.839996, 34.913074>,  <47.204861, 35.220577, 34.956974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319889, 34.839996, 34.913074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834401, 0.305140, -0.458982,
		0.470186, 0.040420, 0.881641,
		0.287576, -0.951449, -0.109746,
		47.406162, 34.554562, 34.880150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.912361, 35.059845, 35.182415>,  <47.204861, 35.220577, 34.956974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.912361, 35.059845, 35.182415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797169, 34.813313, 34.889240>,  <47.728054, 34.665394, 34.713333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797169, 34.813313, 34.889240>,  <47.912361, 35.059845, 35.182415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797169, 34.813313, 34.889240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824031, 0.230449, -0.517557,
		0.487893, -0.753012, 0.441512,
		-0.287980, -0.616332, -0.732940,
		47.710773, 34.628414, 34.669357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.802465, 35.773003, 19.799269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.179922, 35.640808, 19.806379>,  <29.406397, 35.561493, 19.810646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.179922, 35.640808, 19.806379>,  <28.802465, 35.773003, 19.799269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179922, 35.640808, 19.806379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114865, -0.276658, 0.954079,
		-0.310399, -0.902350, -0.299028,
		0.943641, -0.330493, 0.017774,
		29.463015, 35.541660, 19.811712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742727, 35.106842, 20.191742>,  <28.802465, 35.773003, 19.799269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742727, 35.106842, 20.191742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117758, 35.245865, 20.196688>,  <29.342777, 35.329277, 20.199656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117758, 35.245865, 20.196688>,  <28.742727, 35.106842, 20.191742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117758, 35.245865, 20.196688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124304, -0.368105, 0.921438,
		0.324803, -0.862382, -0.388330,
		0.937578, 0.347557, 0.012364,
		29.399031, 35.350132, 20.200397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255728, 34.566509, 20.486443>,  <28.742727, 35.106842, 20.191742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255728, 34.566509, 20.486443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.414438, 34.925255, 20.564621>,  <29.509665, 35.140503, 20.611528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.414438, 34.925255, 20.564621>,  <29.255728, 34.566509, 20.486443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414438, 34.925255, 20.564621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141584, -0.270173, 0.952345,
		0.906930, -0.350195, -0.234180,
		0.396776, 0.896867, 0.195446,
		29.533470, 35.194313, 20.623255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793358, 34.401398, 20.886976>,  <29.255728, 34.566509, 20.486443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793358, 34.401398, 20.886976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733910, 34.789631, 20.962751>,  <29.698240, 35.022572, 21.008217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733910, 34.789631, 20.962751>,  <29.793358, 34.401398, 20.886976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733910, 34.789631, 20.962751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134400, -0.169961, 0.976243,
		0.979718, 0.170552, -0.105186,
		-0.148623, 0.970580, 0.189437,
		29.689323, 35.080803, 21.019583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351366, 34.567719, 21.158714>,  <29.793358, 34.401398, 20.886976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351366, 34.567719, 21.158714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.111366, 34.870495, 21.262287>,  <29.967365, 35.052158, 21.324430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.111366, 34.870495, 21.262287>,  <30.351366, 34.567719, 21.158714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111366, 34.870495, 21.262287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231397, -0.145625, 0.961899,
		0.765803, 0.637056, -0.087777,
		-0.600001, 0.756936, 0.258933,
		29.931366, 35.097576, 21.339968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679483, 34.813564, 21.733704>,  <30.351366, 34.567719, 21.158714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679483, 34.813564, 21.733704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338249, 35.018707, 21.772125>,  <30.133509, 35.141792, 21.795177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.338249, 35.018707, 21.772125>,  <30.679483, 34.813564, 21.733704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338249, 35.018707, 21.772125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102890, -0.015125, 0.994578,
		0.511528, 0.858341, -0.039865,
		-0.853084, 0.512857, 0.096052,
		30.082325, 35.172565, 21.800941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780521, 35.516197, 22.109495>,  <30.679483, 34.813564, 21.733704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780521, 35.516197, 22.109495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.417526, 35.350491, 22.137356>,  <30.199730, 35.251068, 22.154072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.417526, 35.350491, 22.137356>,  <30.780521, 35.516197, 22.109495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417526, 35.350491, 22.137356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125631, -0.109425, 0.986024,
		-0.400852, 0.903555, 0.151346,
		-0.907488, -0.414264, 0.069651,
		30.145279, 35.226212, 22.158251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452618, 35.800766, 22.757317>,  <30.780521, 35.516197, 22.109495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452618, 35.800766, 22.757317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206018, 35.491589, 22.697329>,  <30.058060, 35.306084, 22.661335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206018, 35.491589, 22.697329>,  <30.452618, 35.800766, 22.757317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206018, 35.491589, 22.697329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144793, -0.298522, 0.943356,
		-0.773928, 0.559863, 0.295955,
		-0.616498, -0.772942, -0.149970,
		30.021069, 35.259705, 22.652338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947018, 35.839676, 23.239704>,  <30.452618, 35.800766, 22.757317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947018, 35.839676, 23.239704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.917530, 35.462658, 23.109371>,  <29.899837, 35.236446, 23.031172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.917530, 35.462658, 23.109371>,  <29.947018, 35.839676, 23.239704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917530, 35.462658, 23.109371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040206, -0.329266, 0.943381,
		-0.996468, 0.056444, 0.062169,
		-0.073719, -0.942549, -0.325833,
		29.895414, 35.179893, 23.011621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466564, 35.478733, 23.671337>,  <29.947018, 35.839676, 23.239704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466564, 35.478733, 23.671337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697342, 35.192131, 23.514490>,  <29.835808, 35.020168, 23.420382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697342, 35.192131, 23.514490>,  <29.466564, 35.478733, 23.671337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697342, 35.192131, 23.514490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059286, -0.515543, 0.854810,
		-0.814630, -0.469929, -0.339917,
		0.576942, -0.716507, -0.392116,
		29.870424, 34.977180, 23.396854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155630, 34.870247, 23.865128>,  <29.466564, 35.478733, 23.671337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155630, 34.870247, 23.865128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.535528, 34.780983, 23.777327>,  <29.763468, 34.727425, 23.724646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.535528, 34.780983, 23.777327>,  <29.155630, 34.870247, 23.865128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535528, 34.780983, 23.777327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060892, -0.556123, 0.828866,
		-0.307042, -0.800578, -0.514587,
		0.949746, -0.223163, -0.219502,
		29.820452, 34.714035, 23.711475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183033, 34.190098, 23.913961>,  <29.155630, 34.870247, 23.865128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183033, 34.190098, 23.913961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567890, 34.297558, 23.932348>,  <29.798803, 34.362034, 23.943380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567890, 34.297558, 23.932348>,  <29.183033, 34.190098, 23.913961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567890, 34.297558, 23.932348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140090, -0.632128, 0.762095,
		0.233793, -0.726803, -0.645832,
		0.962141, 0.268647, 0.045969,
		29.856533, 34.378151, 23.946138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530321, 33.532112, 23.933594>,  <29.183033, 34.190098, 23.913961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530321, 33.532112, 23.933594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.787148, 33.796833, 24.088392>,  <29.941244, 33.955666, 24.181273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.787148, 33.796833, 24.088392>,  <29.530321, 33.532112, 23.933594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787148, 33.796833, 24.088392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158675, -0.608578, 0.777467,
		0.750047, -0.437780, -0.495760,
		0.642068, 0.661802, 0.386998,
		29.979769, 33.995373, 24.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196583, 33.210106, 24.111578>,  <29.530321, 33.532112, 23.933594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196583, 33.210106, 24.111578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212505, 33.533703, 24.346165>,  <30.222059, 33.727863, 24.486917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212505, 33.533703, 24.346165>,  <30.196583, 33.210106, 24.111578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212505, 33.533703, 24.346165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001122, -0.586967, 0.809610,
		0.999207, -0.031570, -0.024273,
		0.039806, 0.808995, 0.586466,
		30.224447, 33.776402, 24.522104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658415, 33.052769, 24.728668>,  <30.196583, 33.210106, 24.111578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658415, 33.052769, 24.728668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425102, 33.354023, 24.850372>,  <30.285114, 33.534775, 24.923395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425102, 33.354023, 24.850372>,  <30.658415, 33.052769, 24.728668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425102, 33.354023, 24.850372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079283, -0.425580, 0.901441,
		0.808392, 0.501670, 0.307943,
		-0.583281, 0.753132, 0.304262,
		30.250118, 33.579964, 24.941650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679476, 33.059757, 25.414644>,  <30.658415, 33.052769, 24.728668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679476, 33.059757, 25.414644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.370943, 33.313515, 25.394291>,  <30.185823, 33.465771, 25.382078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.370943, 33.313515, 25.394291>,  <30.679476, 33.059757, 25.414644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370943, 33.313515, 25.394291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406891, -0.430082, 0.805896,
		0.489371, 0.642319, 0.589866,
		-0.771334, 0.634394, -0.050884,
		30.139544, 33.503834, 25.379026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689400, 33.360615, 25.989679>,  <30.679476, 33.059757, 25.414644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689400, 33.360615, 25.989679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309986, 33.420967, 25.878307>,  <30.082338, 33.457176, 25.811483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309986, 33.420967, 25.878307>,  <30.689400, 33.360615, 25.989679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309986, 33.420967, 25.878307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315635, -0.378966, 0.869919,
		0.025736, 0.913028, 0.407084,
		-0.948532, 0.150878, -0.278431,
		30.025427, 33.466232, 25.794779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354067, 33.770821, 26.485153>,  <30.689400, 33.360615, 25.989679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354067, 33.770821, 26.485153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.041004, 33.593277, 26.310598>,  <29.853167, 33.486752, 26.205866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.041004, 33.593277, 26.310598>,  <30.354067, 33.770821, 26.485153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041004, 33.593277, 26.310598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234811, -0.438740, 0.867393,
		-0.576463, 0.781340, 0.239159,
		-0.782658, -0.443863, -0.436385,
		29.806208, 33.460117, 26.179684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844629, 33.981819, 26.863277>,  <30.354067, 33.770821, 26.485153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844629, 33.981819, 26.863277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.687311, 33.666199, 26.674509>,  <29.592920, 33.476826, 26.561249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.687311, 33.666199, 26.674509>,  <29.844629, 33.981819, 26.863277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687311, 33.666199, 26.674509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323516, -0.361692, 0.874366,
		-0.860614, 0.496558, -0.113020,
		-0.393295, -0.789056, -0.471922,
		29.569323, 33.429482, 26.532932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108130, 33.966377, 27.009552>,  <29.844629, 33.981819, 26.863277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108130, 33.966377, 27.009552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.232273, 33.599541, 26.909456>,  <29.306759, 33.379440, 26.849400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.232273, 33.599541, 26.909456>,  <29.108130, 33.966377, 27.009552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232273, 33.599541, 26.909456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281662, -0.340131, 0.897205,
		-0.907934, -0.207974, -0.363873,
		0.310360, -0.917092, -0.250238,
		29.325380, 33.324413, 26.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488464, 33.518898, 27.135025>,  <29.108130, 33.966377, 27.009552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488464, 33.518898, 27.135025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806313, 33.276134, 27.128756>,  <28.997021, 33.130478, 27.124994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.806313, 33.276134, 27.128756>,  <28.488464, 33.518898, 27.135025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806313, 33.276134, 27.128756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300482, -0.415588, 0.858485,
		-0.527536, -0.677458, -0.512599,
		0.794617, -0.606908, -0.015674,
		29.044699, 33.094063, 27.124054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453386, 33.185959, 27.838102>,  <28.488464, 33.518898, 27.135025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453386, 33.185959, 27.838102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.213451, 32.868397, 27.877928>,  <28.069490, 32.677860, 27.901823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.213451, 32.868397, 27.877928>,  <28.453386, 33.185959, 27.838102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213451, 32.868397, 27.877928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344980, 0.144337, -0.927446,
		0.721933, -0.590662, -0.360460,
		-0.599835, -0.793905, 0.099565,
		28.033501, 32.630226, 27.907797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437063, 32.814907, 27.213530>,  <28.453386, 33.185959, 27.838102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437063, 32.814907, 27.213530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101767, 32.700329, 27.399132>,  <27.900589, 32.631580, 27.510492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101767, 32.700329, 27.399132>,  <28.437063, 32.814907, 27.213530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101767, 32.700329, 27.399132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523263, 0.183065, -0.832276,
		0.153463, -0.940443, -0.303341,
		-0.838239, -0.286450, 0.464005,
		27.850294, 32.614395, 27.538334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291138, 32.140491, 26.896381>,  <28.437063, 32.814907, 27.213530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291138, 32.140491, 26.896381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.962418, 32.305626, 27.053461>,  <27.765186, 32.404705, 27.147709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.962418, 32.305626, 27.053461>,  <28.291138, 32.140491, 26.896381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962418, 32.305626, 27.053461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470716, -0.103567, -0.876185,
		-0.321048, -0.904899, 0.279439,
		-0.821800, 0.412834, 0.392701,
		27.715878, 32.429474, 27.171272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707184, 31.764669, 26.617414>,  <28.291138, 32.140491, 26.896381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707184, 31.764669, 26.617414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562614, 32.125599, 26.711384>,  <27.475874, 32.342155, 26.767765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562614, 32.125599, 26.711384>,  <27.707184, 31.764669, 26.617414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562614, 32.125599, 26.711384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494403, 0.028158, -0.868777,
		-0.790531, -0.430142, 0.435934,
		-0.361423, 0.902322, 0.234923,
		27.454187, 32.396294, 26.781860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125311, 31.730516, 26.245045>,  <27.707184, 31.764669, 26.617414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125311, 31.730516, 26.245045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.087236, 32.114304, 26.351149>,  <27.064392, 32.344574, 26.414810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.087236, 32.114304, 26.351149>,  <27.125311, 31.730516, 26.245045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087236, 32.114304, 26.351149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462422, 0.193354, -0.865321,
		-0.881536, -0.205027, 0.425274,
		-0.095186, 0.959467, 0.265258,
		27.058681, 32.402145, 26.430725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534149, 31.914606, 26.127760>,  <27.125311, 31.730516, 26.245045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534149, 31.914606, 26.127760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.717043, 32.270191, 26.138186>,  <26.826778, 32.483543, 26.144442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.717043, 32.270191, 26.138186>,  <26.534149, 31.914606, 26.127760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717043, 32.270191, 26.138186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517610, 0.289832, -0.805032,
		-0.723200, 0.354596, 0.592658,
		0.457233, 0.888965, 0.026064,
		26.854212, 32.536880, 26.146006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005484, 32.396942, 26.019375>,  <26.534149, 31.914606, 26.127760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005484, 32.396942, 26.019375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339464, 32.602234, 25.939928>,  <26.539852, 32.725410, 25.892260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339464, 32.602234, 25.939928>,  <26.005484, 32.396942, 26.019375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339464, 32.602234, 25.939928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380411, 0.277458, -0.882216,
		-0.397673, 0.812164, 0.426903,
		0.834951, 0.513232, -0.198619,
		26.589949, 32.756203, 25.880342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861855, 33.160980, 25.683109>,  <26.005484, 32.396942, 26.019375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861855, 33.160980, 25.683109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.238552, 33.070786, 25.583288>,  <26.464571, 33.016670, 25.523396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.238552, 33.070786, 25.583288>,  <25.861855, 33.160980, 25.683109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238552, 33.070786, 25.583288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214976, 0.167083, -0.962221,
		0.258665, 0.959812, 0.108874,
		0.941742, -0.225487, -0.249555,
		26.521074, 33.003139, 25.508421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033215, 33.741608, 25.255947>,  <25.861855, 33.160980, 25.683109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033215, 33.741608, 25.255947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.310038, 33.466721, 25.167593>,  <26.476131, 33.301788, 25.114580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.310038, 33.466721, 25.167593>,  <26.033215, 33.741608, 25.255947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310038, 33.466721, 25.167593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045743, 0.263634, -0.963538,
		0.720389, 0.676930, 0.151015,
		0.692060, -0.687214, -0.220884,
		26.517656, 33.260555, 25.101328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567997, 34.059505, 24.917170>,  <26.033215, 33.741608, 25.255947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567997, 34.059505, 24.917170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.625645, 33.679577, 24.806126>,  <26.660233, 33.451618, 24.739500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.625645, 33.679577, 24.806126>,  <26.567997, 34.059505, 24.917170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625645, 33.679577, 24.806126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099523, 0.293028, -0.950910,
		0.984543, 0.109415, 0.136760,
		0.144119, -0.949823, -0.277609,
		26.668880, 33.394630, 24.722843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143002, 34.059940, 24.396666>,  <26.567997, 34.059505, 24.917170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143002, 34.059940, 24.396666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.976099, 33.706322, 24.312418>,  <26.875957, 33.494152, 24.261869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.976099, 33.706322, 24.312418>,  <27.143002, 34.059940, 24.396666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976099, 33.706322, 24.312418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096470, 0.187362, -0.977542,
		0.903654, -0.428204, 0.007106,
		-0.417256, -0.884046, -0.210620,
		26.850922, 33.441109, 24.249231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597286, 33.627850, 23.941750>,  <27.143002, 34.059940, 24.396666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597286, 33.627850, 23.941750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.230505, 33.483459, 23.873758>,  <27.010437, 33.396824, 23.832964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.230505, 33.483459, 23.873758>,  <27.597286, 33.627850, 23.941750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230505, 33.483459, 23.873758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175024, 0.018937, -0.984382,
		0.358559, -0.932382, 0.045816,
		-0.916953, -0.360978, -0.169979,
		26.955420, 33.375168, 23.822765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698238, 33.161480, 23.397713>,  <27.597286, 33.627850, 23.941750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698238, 33.161480, 23.397713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.304173, 33.229012, 23.410032>,  <27.067734, 33.269531, 23.417425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.304173, 33.229012, 23.410032>,  <27.698238, 33.161480, 23.397713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304173, 33.229012, 23.410032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023727, 0.043753, -0.998761,
		-0.169973, -0.984673, -0.039098,
		-0.985163, 0.168835, 0.030800,
		27.008623, 33.279663, 23.419271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357128, 32.751823, 22.909218>,  <27.698238, 33.161480, 23.397713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357128, 32.751823, 22.909218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075325, 33.032600, 22.951069>,  <26.906244, 33.201065, 22.976179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.075325, 33.032600, 22.951069>,  <27.357128, 32.751823, 22.909218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075325, 33.032600, 22.951069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012380, 0.135248, -0.990734,
		-0.709590, -0.699274, -0.086593,
		-0.704506, 0.701943, 0.104627,
		26.863974, 33.243183, 22.982456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971676, 32.748924, 22.330378>,  <27.357128, 32.751823, 22.909218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971676, 32.748924, 22.330378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.833662, 33.095520, 22.474676>,  <26.750853, 33.303478, 22.561256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.833662, 33.095520, 22.474676>,  <26.971676, 32.748924, 22.330378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833662, 33.095520, 22.474676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088607, 0.352565, -0.931583,
		-0.934398, -0.353394, -0.044870,
		-0.345036, 0.866493, 0.360749,
		26.730152, 33.355469, 22.582901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311430, 32.872467, 21.881561>,  <26.971676, 32.748924, 22.330378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311430, 32.872467, 21.881561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.504240, 33.176060, 22.056650>,  <26.619926, 33.358215, 22.161703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.504240, 33.176060, 22.056650>,  <26.311430, 32.872467, 21.881561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504240, 33.176060, 22.056650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115439, 0.440223, -0.890437,
		-0.868520, 0.479742, 0.124582,
		0.482024, 0.758980, 0.437724,
		26.648848, 33.403755, 22.187967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907703, 33.384251, 21.663883>,  <26.311430, 32.872467, 21.881561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907703, 33.384251, 21.663883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.255569, 33.538963, 21.786577>,  <26.464289, 33.631790, 21.860193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.255569, 33.538963, 21.786577>,  <25.907703, 33.384251, 21.663883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255569, 33.538963, 21.786577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133780, 0.413450, -0.900645,
		-0.475170, 0.824294, 0.307819,
		0.869664, 0.386780, 0.306734,
		26.516468, 33.654999, 21.878597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811266, 34.058895, 21.631676>,  <25.907703, 33.384251, 21.663883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811266, 34.058895, 21.631676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.210993, 34.044991, 21.626726>,  <26.450829, 34.036648, 21.623756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.210993, 34.044991, 21.626726>,  <25.811266, 34.058895, 21.631676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210993, 34.044991, 21.626726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012747, 0.639927, -0.768330,
		0.034628, 0.767649, 0.639934,
		0.999319, -0.034763, -0.012374,
		26.510788, 34.034561, 21.623014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009823, 34.702591, 21.504723>,  <25.811266, 34.058895, 21.631676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009823, 34.702591, 21.504723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.344122, 34.494877, 21.433313>,  <26.544703, 34.370251, 21.390469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.344122, 34.494877, 21.433313>,  <26.009823, 34.702591, 21.504723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344122, 34.494877, 21.433313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202183, 0.593275, -0.779197,
		0.510535, 0.615119, 0.600819,
		0.835749, -0.519282, -0.178521,
		26.594847, 34.339092, 21.379757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.532421, 35.279655, 21.124292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625507, 34.896641, 21.056221>,  <26.681358, 34.666832, 21.015377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625507, 34.896641, 21.056221>,  <26.532421, 35.279655, 21.124292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625507, 34.896641, 21.056221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272375, 0.232151, -0.933765,
		0.933625, 0.170950, 0.314835,
		0.232716, -0.957540, -0.170180,
		26.695322, 34.609379, 21.005167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230434, 35.248768, 20.978912>,  <26.532421, 35.279655, 21.124292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230434, 35.248768, 20.978912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.059849, 34.934174, 20.800220>,  <26.957497, 34.745415, 20.693007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.059849, 34.934174, 20.800220>,  <27.230434, 35.248768, 20.978912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059849, 34.934174, 20.800220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383438, 0.290120, -0.876816,
		0.819209, -0.545223, 0.177843,
		-0.426464, -0.786488, -0.446728,
		26.931910, 34.698227, 20.666203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730583, 34.996563, 20.574566>,  <27.230434, 35.248768, 20.978912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730583, 34.996563, 20.574566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420612, 34.811119, 20.402727>,  <27.234631, 34.699852, 20.299623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420612, 34.811119, 20.402727>,  <27.730583, 34.996563, 20.574566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420612, 34.811119, 20.402727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347521, 0.255194, -0.902278,
		0.527939, -0.848491, -0.036640,
		-0.774925, -0.463615, -0.429595,
		27.188135, 34.672035, 20.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028326, 34.576797, 20.003654>,  <27.730583, 34.996563, 20.574566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028326, 34.576797, 20.003654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.638464, 34.602215, 19.917858>,  <27.404547, 34.617466, 19.866381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.638464, 34.602215, 19.917858>,  <28.028326, 34.576797, 20.003654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638464, 34.602215, 19.917858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221053, 0.126286, -0.967051,
		-0.034364, -0.989957, -0.137132,
		-0.974657, 0.063545, -0.214493,
		27.346067, 34.621277, 19.853510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807472, 34.023319, 19.542273>,  <28.028326, 34.576797, 20.003654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807472, 34.023319, 19.542273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522425, 34.296902, 19.479820>,  <27.351397, 34.461052, 19.442348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522425, 34.296902, 19.479820>,  <27.807472, 34.023319, 19.542273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522425, 34.296902, 19.479820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214489, 0.000511, -0.976726,
		-0.667959, -0.729522, -0.147066,
		-0.712619, 0.683957, -0.156133,
		27.308640, 34.502090, 19.432980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412451, 33.720955, 18.938396>,  <27.807472, 34.023319, 19.542273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412451, 33.720955, 18.938396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.353781, 34.114880, 18.975578>,  <27.318579, 34.351234, 18.997887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.353781, 34.114880, 18.975578>,  <27.412451, 33.720955, 18.938396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353781, 34.114880, 18.975578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164138, 0.116896, -0.979487,
		-0.975472, -0.128408, -0.178790,
		-0.146674, 0.984808, 0.092952,
		27.309778, 34.410320, 19.003464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829866, 33.851982, 18.459957>,  <27.412451, 33.720955, 18.938396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829866, 33.851982, 18.459957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001707, 34.207508, 18.523766>,  <27.104811, 34.420826, 18.562050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001707, 34.207508, 18.523766>,  <26.829866, 33.851982, 18.459957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001707, 34.207508, 18.523766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015361, 0.169435, -0.985422,
		-0.902888, 0.425789, 0.059136,
		0.429601, 0.888817, 0.159521,
		27.130587, 34.474152, 18.571623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416027, 34.226574, 18.184023>,  <26.829866, 33.851982, 18.459957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416027, 34.226574, 18.184023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759062, 34.432072, 18.193945>,  <26.964882, 34.555370, 18.199898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759062, 34.432072, 18.193945>,  <26.416027, 34.226574, 18.184023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759062, 34.432072, 18.193945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062532, 0.152015, -0.986398,
		-0.510523, 0.844371, 0.162492,
		0.857587, 0.513740, 0.024807,
		27.016338, 34.586193, 18.201387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330200, 34.802013, 17.850111>,  <26.416027, 34.226574, 18.184023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330200, 34.802013, 17.850111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729340, 34.827515, 17.844048>,  <26.968824, 34.842815, 17.840410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729340, 34.827515, 17.844048>,  <26.330200, 34.802013, 17.850111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729340, 34.827515, 17.844048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027926, 0.204445, -0.978480,
		-0.059277, 0.976800, 0.205786,
		0.997851, 0.063748, -0.015159,
		27.028694, 34.846638, 17.839500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446747, 35.367943, 17.522663>,  <26.330200, 34.802013, 17.850111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446747, 35.367943, 17.522663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.778803, 35.147125, 17.491379>,  <26.978037, 35.014637, 17.472609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.778803, 35.147125, 17.491379>,  <26.446747, 35.367943, 17.522663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778803, 35.147125, 17.491379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130519, -0.056033, -0.989861,
		0.542063, 0.831932, -0.118567,
		0.830140, -0.552042, -0.078210,
		27.027845, 34.981514, 17.467916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966307, 35.770584, 17.160719>,  <26.446747, 35.367943, 17.522663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966307, 35.770584, 17.160719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.057028, 35.384346, 17.109844>,  <27.111460, 35.152603, 17.079319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.057028, 35.384346, 17.109844>,  <26.966307, 35.770584, 17.160719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057028, 35.384346, 17.109844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266082, 0.064192, -0.961811,
		0.936889, 0.251984, -0.242370,
		0.226803, -0.965600, -0.127189,
		27.125069, 35.094666, 17.071688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305859, 35.781361, 16.579329>,  <26.966307, 35.770584, 17.160719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305859, 35.781361, 16.579329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223585, 35.390007, 16.587833>,  <27.174221, 35.155193, 16.592936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223585, 35.390007, 16.587833>,  <27.305859, 35.781361, 16.579329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223585, 35.390007, 16.587833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152114, 0.010503, -0.988307,
		0.966724, -0.206512, -0.150986,
		-0.205683, -0.978388, 0.021260,
		27.161880, 35.096489, 16.594212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780270, 35.530857, 16.066929>,  <27.305859, 35.781361, 16.579329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780270, 35.530857, 16.066929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.486994, 35.262817, 16.113224>,  <27.311028, 35.101994, 16.141001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.486994, 35.262817, 16.113224>,  <27.780270, 35.530857, 16.066929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486994, 35.262817, 16.113224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081395, -0.082495, -0.993262,
		0.675133, -0.737672, 0.005942,
		-0.733192, -0.670100, 0.115738,
		27.267036, 35.061787, 16.147945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034367, 34.890171, 15.715931>,  <27.780270, 35.530857, 16.066929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034367, 34.890171, 15.715931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.640564, 34.821613, 15.730740>,  <27.404282, 34.780479, 15.739625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.640564, 34.821613, 15.730740>,  <28.034367, 34.890171, 15.715931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640564, 34.821613, 15.730740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009635, -0.263685, -0.964561,
		0.175085, -0.949259, 0.261251,
		-0.984506, -0.171398, 0.037021,
		27.345213, 34.770195, 15.741846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952950, 34.252853, 15.403429>,  <28.034367, 34.890171, 15.715931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952950, 34.252853, 15.403429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586859, 34.413540, 15.390877>,  <27.367205, 34.509953, 15.383346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586859, 34.413540, 15.390877>,  <27.952950, 34.252853, 15.403429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586859, 34.413540, 15.390877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088741, -0.276918, -0.956787,
		-0.393046, -0.872892, 0.289092,
		-0.915226, 0.401716, -0.031380,
		27.312290, 34.534054, 15.381463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396725, 33.758839, 15.166803>,  <27.952950, 34.252853, 15.403429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396725, 33.758839, 15.166803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270163, 34.126556, 15.073171>,  <27.194225, 34.347187, 15.016992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.270163, 34.126556, 15.073171>,  <27.396725, 33.758839, 15.166803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270163, 34.126556, 15.073171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251596, -0.319243, -0.913665,
		-0.914652, -0.230193, 0.332299,
		-0.316403, 0.919291, -0.234081,
		27.175241, 34.402344, 15.002946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010010, 33.574841, 14.672290>,  <27.396725, 33.758839, 15.166803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010010, 33.574841, 14.672290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007366, 33.974182, 14.649515>,  <27.005779, 34.213787, 14.635850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007366, 33.974182, 14.649515>,  <27.010010, 33.574841, 14.672290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007366, 33.974182, 14.649515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319737, -0.056059, -0.945847,
		-0.947483, 0.011954, 0.319582,
		-0.006608, 0.998356, -0.056937,
		27.005384, 34.273689, 14.632434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304384, 33.775982, 14.364256>,  <27.010010, 33.574841, 14.672290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304384, 33.775982, 14.364256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547651, 34.088139, 14.306122>,  <26.693611, 34.275433, 14.271241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.547651, 34.088139, 14.306122>,  <26.304384, 33.775982, 14.364256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547651, 34.088139, 14.306122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268022, 0.029537, -0.962960,
		-0.747192, 0.624595, 0.227126,
		0.608168, 0.780391, -0.145335,
		26.730103, 34.322254, 14.262522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880505, 34.212395, 14.003744>,  <26.304384, 33.775982, 14.364256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880505, 34.212395, 14.003744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.253105, 34.331799, 13.920609>,  <26.476665, 34.403442, 13.870727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.253105, 34.331799, 13.920609>,  <25.880505, 34.212395, 14.003744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253105, 34.331799, 13.920609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190662, -0.085902, -0.977890,
		-0.309763, 0.950533, -0.023104,
		0.931502, 0.298509, -0.207840,
		26.532557, 34.421352, 13.858256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923851, 34.821575, 13.499600>,  <25.880505, 34.212395, 14.003744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923851, 34.821575, 13.499600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.271826, 34.626152, 13.472705>,  <26.480612, 34.508900, 13.456568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.271826, 34.626152, 13.472705>,  <25.923851, 34.821575, 13.499600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271826, 34.626152, 13.472705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040599, 0.064933, -0.997063,
		0.491485, 0.870114, 0.036653,
		0.869939, -0.488554, -0.067240,
		26.532808, 34.479588, 13.452533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210373, 35.180321, 12.922828>,  <25.923851, 34.821575, 13.499600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210373, 35.180321, 12.922828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.424452, 34.845268, 12.966519>,  <26.552900, 34.644238, 12.992734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.424452, 34.845268, 12.966519>,  <26.210373, 35.180321, 12.922828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424452, 34.845268, 12.966519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001212, -0.130068, -0.991504,
		0.844725, 0.530520, -0.070628,
		0.535199, -0.837634, 0.109229,
		26.585012, 34.593979, 12.999288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750525, 35.183964, 12.480161>,  <26.210373, 35.180321, 12.922828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750525, 35.183964, 12.480161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701166, 34.793503, 12.551606>,  <26.671551, 34.559227, 12.594473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701166, 34.793503, 12.551606>,  <26.750525, 35.183964, 12.480161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701166, 34.793503, 12.551606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036441, -0.175410, -0.983821,
		0.991688, -0.127910, -0.013927,
		-0.123397, -0.976151, 0.178613,
		26.664146, 34.500656, 12.605190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286993, 34.773106, 12.084265>,  <26.750525, 35.183964, 12.480161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286993, 34.773106, 12.084265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983418, 34.513573, 12.106281>,  <26.801271, 34.357853, 12.119492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983418, 34.513573, 12.106281>,  <27.286993, 34.773106, 12.084265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983418, 34.513573, 12.106281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031715, -0.121260, -0.992114,
		0.650388, -0.751209, 0.112607,
		-0.758940, -0.648830, 0.055041,
		26.755735, 34.318924, 12.122794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806490, 35.058132, 11.659416>,  <27.286993, 34.773106, 12.084265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806490, 35.058132, 11.659416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097216, 34.784473, 11.635140>,  <28.271650, 34.620277, 11.620575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097216, 34.784473, 11.635140>,  <27.806490, 35.058132, 11.659416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097216, 34.784473, 11.635140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145343, 0.066841, 0.987121,
		-0.671281, -0.726273, 0.148017,
		0.726813, -0.684149, -0.060690,
		28.315260, 34.579227, 11.616934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927162, 34.476391, 12.336048>,  <27.806490, 35.058132, 11.659416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927162, 34.476391, 12.336048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.283052, 34.554737, 12.171114>,  <28.496588, 34.601746, 12.072153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.283052, 34.554737, 12.171114>,  <27.927162, 34.476391, 12.336048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283052, 34.554737, 12.171114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399883, 0.101259, 0.910956,
		0.220180, -0.975388, 0.011769,
		0.889728, 0.195868, -0.412336,
		28.549971, 34.613499, 12.047413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393120, 34.108154, 12.736621>,  <27.927162, 34.476391, 12.336048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393120, 34.108154, 12.736621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.625240, 34.373905, 12.548213>,  <28.764513, 34.533356, 12.435168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.625240, 34.373905, 12.548213>,  <28.393120, 34.108154, 12.736621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625240, 34.373905, 12.548213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514860, 0.148844, 0.844254,
		0.631008, -0.732431, -0.255685,
		0.580301, 0.664373, -0.471021,
		28.799330, 34.573215, 12.406907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977995, 33.934959, 12.955242>,  <28.393120, 34.108154, 12.736621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977995, 33.934959, 12.955242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.032722, 34.309948, 12.827228>,  <29.065559, 34.534943, 12.750419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.032722, 34.309948, 12.827228>,  <28.977995, 33.934959, 12.955242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032722, 34.309948, 12.827228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507800, 0.211022, 0.835230,
		0.850541, -0.276790, -0.447177,
		0.136819, 0.937474, -0.320036,
		29.073769, 34.591190, 12.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679277, 34.048920, 12.961597>,  <28.977995, 33.934959, 12.955242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679277, 34.048920, 12.961597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519371, 34.415401, 12.950579>,  <29.423428, 34.635288, 12.943968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519371, 34.415401, 12.950579>,  <29.679277, 34.048920, 12.961597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519371, 34.415401, 12.950579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478637, 0.234285, 0.846178,
		0.781725, 0.325089, -0.532188,
		-0.399767, 0.916203, -0.027547,
		29.399441, 34.690262, 12.942315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171003, 34.435390, 13.242504>,  <29.679277, 34.048920, 12.961597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171003, 34.435390, 13.242504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864485, 34.692154, 13.253367>,  <29.680573, 34.846214, 13.259885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864485, 34.692154, 13.253367>,  <30.171003, 34.435390, 13.242504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864485, 34.692154, 13.253367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362058, 0.396525, 0.843612,
		0.530756, 0.656291, -0.536265,
		-0.766298, 0.641912, 0.027158,
		29.634596, 34.884727, 13.261515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518238, 35.030804, 13.523596>,  <30.171003, 34.435390, 13.242504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518238, 35.030804, 13.523596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124075, 35.065105, 13.582404>,  <29.887577, 35.085686, 13.617689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124075, 35.065105, 13.582404>,  <30.518238, 35.030804, 13.523596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124075, 35.065105, 13.582404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166908, 0.317740, 0.933372,
		0.033328, 0.944292, -0.327417,
		-0.985409, 0.085756, 0.147020,
		29.828453, 35.090832, 13.626511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395359, 35.669868, 13.985003>,  <30.518238, 35.030804, 13.523596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395359, 35.669868, 13.985003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055710, 35.464176, 14.033274>,  <29.851921, 35.340763, 14.062236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055710, 35.464176, 14.033274>,  <30.395359, 35.669868, 13.985003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055710, 35.464176, 14.033274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156628, 0.463324, 0.872237,
		-0.504439, 0.721735, -0.473961,
		-0.849122, -0.514226, 0.120675,
		29.800974, 35.309910, 14.069476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073885, 36.021435, 14.446099>,  <30.395359, 35.669868, 13.985003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073885, 36.021435, 14.446099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893091, 35.668957, 14.501545>,  <29.784615, 35.457470, 14.534812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893091, 35.668957, 14.501545>,  <30.073885, 36.021435, 14.446099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893091, 35.668957, 14.501545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183354, 0.243849, 0.952323,
		-0.872979, 0.405019, -0.271786,
		-0.451984, -0.881191, 0.138613,
		29.757496, 35.404598, 14.543129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664522, 36.122772, 14.987258>,  <30.073885, 36.021435, 14.446099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664522, 36.122772, 14.987258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649803, 35.724113, 14.958034>,  <29.640972, 35.484917, 14.940498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.649803, 35.724113, 14.958034>,  <29.664522, 36.122772, 14.987258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649803, 35.724113, 14.958034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068414, -0.070427, 0.995168,
		-0.996978, 0.041618, -0.065593,
		-0.036797, -0.996648, -0.073062,
		29.638763, 35.425117, 14.936115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110662, 35.920399, 15.409646>,  <29.664522, 36.122772, 14.987258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110662, 35.920399, 15.409646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382921, 35.627377, 15.406186>,  <29.546276, 35.451561, 15.404110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.382921, 35.627377, 15.406186>,  <29.110662, 35.920399, 15.409646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382921, 35.627377, 15.406186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084763, -0.090473, 0.992285,
		-0.727691, -0.674663, -0.123675,
		0.680648, -0.732560, -0.008650,
		29.587116, 35.407608, 15.403591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918495, 35.518929, 15.925494>,  <29.110662, 35.920399, 15.409646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918495, 35.518929, 15.925494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278852, 35.354355, 15.870195>,  <29.495068, 35.255611, 15.837016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278852, 35.354355, 15.870195>,  <28.918495, 35.518929, 15.925494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278852, 35.354355, 15.870195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098941, -0.115461, 0.988372,
		-0.422614, -0.904096, -0.063310,
		0.900893, -0.411436, -0.138248,
		29.549120, 35.230923, 15.828721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896854, 34.905045, 16.339170>,  <28.918495, 35.518929, 15.925494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896854, 34.905045, 16.339170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283461, 34.978485, 16.267466>,  <29.515425, 35.022549, 16.224442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.283461, 34.978485, 16.267466>,  <28.896854, 34.905045, 16.339170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283461, 34.978485, 16.267466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230752, -0.316284, 0.920173,
		0.112251, -0.930727, -0.348062,
		0.966516, 0.183606, -0.179264,
		29.573416, 35.033566, 16.213686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255835, 34.410591, 16.745235>,  <28.896854, 34.905045, 16.339170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255835, 34.410591, 16.745235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502478, 34.722363, 16.700891>,  <29.650463, 34.909424, 16.674286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502478, 34.722363, 16.700891>,  <29.255835, 34.410591, 16.745235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502478, 34.722363, 16.700891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204777, -0.022821, 0.978543,
		0.760170, -0.626081, -0.173680,
		0.616610, 0.779425, -0.110859,
		29.687460, 34.956188, 16.667633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770969, 34.289619, 17.145077>,  <29.255835, 34.410591, 16.745235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770969, 34.289619, 17.145077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797863, 34.686974, 17.107859>,  <29.813999, 34.925388, 17.085527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797863, 34.686974, 17.107859>,  <29.770969, 34.289619, 17.145077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797863, 34.686974, 17.107859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072281, 0.088164, 0.993480,
		0.995116, -0.073523, -0.065875,
		0.067235, 0.993389, -0.093048,
		29.818033, 34.984989, 17.079945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372677, 34.536449, 17.636957>,  <29.770969, 34.289619, 17.145077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372677, 34.536449, 17.636957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121170, 34.837811, 17.559986>,  <29.970266, 35.018627, 17.513803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121170, 34.837811, 17.559986>,  <30.372677, 34.536449, 17.636957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121170, 34.837811, 17.559986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007559, 0.241534, 0.970363,
		0.777556, 0.611588, -0.146173,
		-0.628768, 0.753407, -0.192429,
		29.932539, 35.063831, 17.502256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644102, 35.066296, 17.906439>,  <30.372677, 34.536449, 17.636957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644102, 35.066296, 17.906439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261808, 35.183109, 17.892086>,  <30.032433, 35.253197, 17.883474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261808, 35.183109, 17.892086>,  <30.644102, 35.066296, 17.906439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261808, 35.183109, 17.892086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069943, 0.343958, 0.936376,
		0.285794, 0.892418, -0.349159,
		-0.955735, 0.292032, -0.035883,
		29.975088, 35.270718, 17.881321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603228, 35.726330, 18.282265>,  <30.644102, 35.066296, 17.906439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603228, 35.726330, 18.282265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.236897, 35.565712, 18.280319>,  <30.017097, 35.469341, 18.279152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.236897, 35.565712, 18.280319>,  <30.603228, 35.726330, 18.282265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236897, 35.565712, 18.280319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130257, 0.285588, 0.949459,
		-0.379858, 0.870175, -0.313853,
		-0.915828, -0.401542, -0.004864,
		29.962149, 35.445248, 18.278860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222630, 36.253021, 18.647837>,  <30.603228, 35.726330, 18.282265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222630, 36.253021, 18.647837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011524, 35.913513, 18.660831>,  <29.884861, 35.709808, 18.668629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011524, 35.913513, 18.660831>,  <30.222630, 36.253021, 18.647837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011524, 35.913513, 18.660831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173864, 0.145388, 0.973978,
		-0.831406, 0.508382, -0.224301,
		-0.527764, -0.848770, 0.032487,
		29.853195, 35.658882, 18.670578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549099, 36.463623, 18.959330>,  <30.222630, 36.253021, 18.647837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549099, 36.463623, 18.959330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631369, 36.074329, 19.000340>,  <29.680731, 35.840752, 19.024944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631369, 36.074329, 19.000340>,  <29.549099, 36.463623, 18.959330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631369, 36.074329, 19.000340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073465, 0.089112, 0.993308,
		-0.975859, -0.211829, -0.053171,
		0.205673, -0.973235, 0.102523,
		29.693071, 35.782360, 19.031096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995981, 36.266983, 19.321001>,  <29.549099, 36.463623, 18.959330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995981, 36.266983, 19.321001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292212, 36.000385, 19.355255>,  <29.469950, 35.840427, 19.375807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292212, 36.000385, 19.355255>,  <28.995981, 36.266983, 19.321001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292212, 36.000385, 19.355255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126190, -0.012770, 0.991924,
		-0.660020, -0.745399, -0.093562,
		0.740574, -0.666496, 0.085633,
		29.514383, 35.800438, 19.380945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.704525, 33.369232, 23.431040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.104385, 33.358669, 23.431969>,  <26.344301, 33.352333, 23.432526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.104385, 33.358669, 23.431969>,  <25.704525, 33.369232, 23.431040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104385, 33.358669, 23.431969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011848, -0.366777, 0.930233,
		-0.023710, -0.929934, -0.366961,
		0.999649, -0.026404, 0.002321,
		26.404280, 33.350750, 23.432665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810518, 32.739082, 23.757074>,  <25.704525, 33.369232, 23.431040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810518, 32.739082, 23.757074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.157972, 32.936535, 23.774078>,  <26.366444, 33.055004, 23.784281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.157972, 32.936535, 23.774078>,  <25.810518, 32.739082, 23.757074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157972, 32.936535, 23.774078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192733, -0.415697, 0.888848,
		0.456433, -0.763889, -0.456226,
		0.868633, 0.493629, 0.042512,
		26.418562, 33.084625, 23.786831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275034, 32.270275, 23.994156>,  <25.810518, 32.739082, 23.757074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275034, 32.270275, 23.994156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.452110, 32.618191, 24.081320>,  <26.558357, 32.826942, 24.133617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.452110, 32.618191, 24.081320>,  <26.275034, 32.270275, 23.994156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452110, 32.618191, 24.081320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180491, -0.324483, 0.928512,
		0.878321, -0.371714, -0.300636,
		0.442692, 0.869793, 0.217909,
		26.584917, 32.879128, 24.146692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774431, 32.086712, 24.431358>,  <26.275034, 32.270275, 23.994156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774431, 32.086712, 24.431358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.748688, 32.480534, 24.496483>,  <26.733242, 32.716827, 24.535557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.748688, 32.480534, 24.496483>,  <26.774431, 32.086712, 24.431358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748688, 32.480534, 24.496483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338783, -0.131903, 0.931572,
		0.938661, 0.115113, -0.325062,
		-0.064360, 0.984556, 0.162811,
		26.729380, 32.775902, 24.545326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308489, 32.242168, 24.933279>,  <26.774431, 32.086712, 24.431358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308489, 32.242168, 24.933279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.069576, 32.559917, 24.977505>,  <26.926229, 32.750568, 25.004040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.069576, 32.559917, 24.977505>,  <27.308489, 32.242168, 24.933279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069576, 32.559917, 24.977505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256020, 0.058199, 0.964918,
		0.760073, 0.604633, -0.238137,
		-0.597280, 0.794375, 0.110563,
		26.890392, 32.798229, 25.010674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743603, 32.772644, 25.162088>,  <27.308489, 32.242168, 24.933279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743603, 32.772644, 25.162088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.370966, 32.869011, 25.270969>,  <27.147385, 32.926830, 25.336298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.370966, 32.869011, 25.270969>,  <27.743603, 32.772644, 25.162088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370966, 32.869011, 25.270969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282426, 0.008275, 0.959253,
		0.228848, 0.970510, -0.075750,
		-0.931592, 0.240917, 0.272204,
		27.091488, 32.941288, 25.352631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761953, 33.339054, 25.659298>,  <27.743603, 32.772644, 25.162088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761953, 33.339054, 25.659298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.410862, 33.155277, 25.713720>,  <27.200207, 33.045013, 25.746374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.410862, 33.155277, 25.713720>,  <27.761953, 33.339054, 25.659298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410862, 33.155277, 25.713720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124529, 0.055469, 0.990664,
		-0.462695, 0.886476, 0.008526,
		-0.877727, -0.459438, 0.136057,
		27.147543, 33.017445, 25.754538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422009, 33.724300, 26.150396>,  <27.761953, 33.339054, 25.659298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422009, 33.724300, 26.150396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.254421, 33.361462, 26.166599>,  <27.153868, 33.143757, 26.176321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.254421, 33.361462, 26.166599>,  <27.422009, 33.724300, 26.150396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254421, 33.361462, 26.166599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285823, -0.089407, 0.954103,
		-0.861841, 0.411319, 0.296728,
		-0.418970, -0.907096, 0.040510,
		27.128731, 33.089333, 26.178753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241838, 33.614826, 26.879818>,  <27.422009, 33.724300, 26.150396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241838, 33.614826, 26.879818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.174656, 33.250641, 26.728636>,  <27.134346, 33.032131, 26.637926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.174656, 33.250641, 26.728636>,  <27.241838, 33.614826, 26.879818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174656, 33.250641, 26.728636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181699, -0.405426, 0.895888,
		-0.968904, 0.081798, 0.233525,
		-0.167959, -0.910461, -0.377957,
		27.124268, 32.977501, 26.615250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673698, 33.316494, 27.184881>,  <27.241838, 33.614826, 26.879818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673698, 33.316494, 27.184881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.935160, 33.039417, 27.062952>,  <27.092037, 32.873173, 26.989794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.935160, 33.039417, 27.062952>,  <26.673698, 33.316494, 27.184881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935160, 33.039417, 27.062952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273093, -0.159751, 0.948630,
		-0.705802, -0.703322, 0.084747,
		0.653654, -0.692689, -0.304825,
		27.131256, 32.831612, 26.971504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604626, 32.862377, 27.781023>,  <26.673698, 33.316494, 27.184881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604626, 32.862377, 27.781023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.920170, 32.742599, 27.566347>,  <27.109495, 32.670734, 27.437542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.920170, 32.742599, 27.566347>,  <26.604626, 32.862377, 27.781023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920170, 32.742599, 27.566347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469833, -0.269109, 0.840736,
		-0.396182, -0.915376, -0.071600,
		0.788858, -0.299445, -0.536690,
		27.156828, 32.652767, 27.405340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726154, 32.251766, 28.053478>,  <26.604626, 32.862377, 27.781023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726154, 32.251766, 28.053478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.078199, 32.347305, 27.889355>,  <27.289427, 32.404629, 27.790880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.078199, 32.347305, 27.889355>,  <26.726154, 32.251766, 28.053478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078199, 32.347305, 27.889355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470257, -0.319776, 0.822558,
		0.065262, -0.916894, -0.393760,
		0.880113, 0.238850, -0.410307,
		27.342234, 32.418961, 27.766262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125353, 31.777857, 28.269480>,  <26.726154, 32.251766, 28.053478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125353, 31.777857, 28.269480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.404451, 32.036240, 28.145617>,  <27.571911, 32.191269, 28.071299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.404451, 32.036240, 28.145617>,  <27.125353, 31.777857, 28.269480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404451, 32.036240, 28.145617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536016, -0.184027, 0.823906,
		0.475221, -0.740861, -0.474647,
		0.697748, 0.645956, -0.309660,
		27.613775, 32.230026, 28.052719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804262, 31.416752, 28.296299>,  <27.125353, 31.777857, 28.269480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804262, 31.416752, 28.296299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.812365, 31.815969, 28.319948>,  <27.817226, 32.055500, 28.334137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.812365, 31.815969, 28.319948>,  <27.804262, 31.416752, 28.296299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812365, 31.815969, 28.319948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464919, -0.061753, 0.883197,
		0.885122, 0.009599, -0.465260,
		0.020254, 0.998045, 0.059122,
		27.818441, 32.115383, 28.337685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518957, 31.175425, 27.928419>,  <27.804262, 31.416752, 28.296299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518957, 31.175425, 27.928419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.690437, 30.820154, 27.994579>,  <28.793325, 30.606993, 28.034275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.690437, 30.820154, 27.994579>,  <28.518957, 31.175425, 27.928419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690437, 30.820154, 27.994579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017432, -0.191176, -0.981401,
		0.903278, 0.417844, -0.097440,
		0.428701, -0.888177, 0.165401,
		28.819048, 30.553701, 28.044199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081215, 31.134584, 27.428099>,  <28.518957, 31.175425, 27.928419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081215, 31.134584, 27.428099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.011604, 30.757786, 27.542891>,  <28.969839, 30.531706, 27.611765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.011604, 30.757786, 27.542891>,  <29.081215, 31.134584, 27.428099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011604, 30.757786, 27.542891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090625, -0.305508, -0.947867,
		0.980562, -0.138945, 0.138535,
		-0.174025, -0.941997, 0.286978,
		28.959396, 30.475187, 27.628984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610260, 30.779905, 27.049038>,  <29.081215, 31.134584, 27.428099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610260, 30.779905, 27.049038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.318443, 30.533333, 27.167553>,  <29.143354, 30.385389, 27.238663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.318443, 30.533333, 27.167553>,  <29.610260, 30.779905, 27.049038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318443, 30.533333, 27.167553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144529, -0.284476, -0.947726,
		0.668494, -0.734226, 0.118445,
		-0.729539, -0.616430, 0.296287,
		29.099581, 30.348404, 27.256439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838049, 30.137297, 26.871548>,  <29.610260, 30.779905, 27.049038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838049, 30.137297, 26.871548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.441404, 30.100952, 26.908318>,  <29.203417, 30.079145, 26.930380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.441404, 30.100952, 26.908318>,  <29.838049, 30.137297, 26.871548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441404, 30.100952, 26.908318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085408, -0.073179, -0.993655,
		0.097013, -0.993171, 0.064805,
		-0.991612, -0.090863, 0.091924,
		29.143921, 30.073694, 26.935894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627035, 29.459332, 26.524208>,  <29.838049, 30.137297, 26.871548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627035, 29.459332, 26.524208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.287390, 29.668909, 26.551003>,  <29.083603, 29.794655, 26.567080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.287390, 29.668909, 26.551003>,  <29.627035, 29.459332, 26.524208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287390, 29.668909, 26.551003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171702, -0.153863, -0.973059,
		-0.499521, -0.837741, 0.220610,
		-0.849115, 0.523943, 0.066984,
		29.032656, 29.826092, 26.571098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043619, 29.077774, 26.109005>,  <29.627035, 29.459332, 26.524208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043619, 29.077774, 26.109005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.926594, 29.457899, 26.151552>,  <28.856379, 29.685974, 26.177080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.926594, 29.457899, 26.151552>,  <29.043619, 29.077774, 26.109005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926594, 29.457899, 26.151552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352099, -0.003637, -0.935956,
		-0.889064, -0.311276, 0.335668,
		-0.292561, 0.950313, 0.106366,
		28.838825, 29.742992, 26.183462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397947, 29.156807, 25.755413>,  <29.043619, 29.077774, 26.109005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397947, 29.156807, 25.755413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.491556, 29.542603, 25.804394>,  <28.547722, 29.774080, 25.833782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.491556, 29.542603, 25.804394>,  <28.397947, 29.156807, 25.755413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491556, 29.542603, 25.804394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229578, 0.177208, -0.957022,
		-0.944736, 0.195854, 0.262896,
		0.234024, 0.964489, 0.122451,
		28.561764, 29.831949, 25.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861139, 29.506329, 25.307276>,  <28.397947, 29.156807, 25.755413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861139, 29.506329, 25.307276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.140450, 29.778021, 25.397663>,  <28.308035, 29.941036, 25.451895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.140450, 29.778021, 25.397663>,  <27.861139, 29.506329, 25.307276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140450, 29.778021, 25.397663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131528, 0.188557, -0.973215,
		-0.703643, 0.709292, 0.042327,
		0.698274, 0.679229, 0.225969,
		28.349932, 29.981789, 25.465454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582960, 30.136480, 25.129713>,  <27.861139, 29.506329, 25.307276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582960, 30.136480, 25.129713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.973637, 30.221972, 25.137640>,  <28.208042, 30.273266, 25.142397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.973637, 30.221972, 25.137640>,  <27.582960, 30.136480, 25.129713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973637, 30.221972, 25.137640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059436, 0.358019, -0.931821,
		-0.206251, 0.908924, 0.362378,
		0.976692, 0.213727, 0.019819,
		28.266644, 30.286089, 25.143585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668358, 30.816708, 24.810787>,  <27.582960, 30.136480, 25.129713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668358, 30.816708, 24.810787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.033117, 30.652542, 24.810692>,  <28.251974, 30.554043, 24.810635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.033117, 30.652542, 24.810692>,  <27.668358, 30.816708, 24.810787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033117, 30.652542, 24.810692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130206, 0.289854, -0.948173,
		0.389210, 0.864608, 0.317756,
		0.911900, -0.410412, -0.000237,
		28.306686, 30.529419, 24.810621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094292, 31.340113, 24.524216>,  <27.668358, 30.816708, 24.810787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094292, 31.340113, 24.524216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.290121, 30.994562, 24.476830>,  <28.407619, 30.787231, 24.448399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.290121, 30.994562, 24.476830>,  <28.094292, 31.340113, 24.524216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290121, 30.994562, 24.476830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247458, 0.267926, -0.931117,
		0.836111, 0.426535, 0.344943,
		0.489574, -0.863877, -0.118466,
		28.436993, 30.735399, 24.441290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811462, 31.450012, 24.303308>,  <28.094292, 31.340113, 24.524216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811462, 31.450012, 24.303308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.732094, 31.076557, 24.184011>,  <28.684473, 30.852484, 24.112432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.732094, 31.076557, 24.184011>,  <28.811462, 31.450012, 24.303308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732094, 31.076557, 24.184011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339087, 0.220112, -0.914643,
		0.919592, -0.282613, 0.272910,
		-0.198419, -0.933639, -0.298243,
		28.672567, 30.796465, 24.094538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243397, 31.372583, 23.786688>,  <28.811462, 31.450012, 24.303308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243397, 31.372583, 23.786688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.975948, 31.086020, 23.706985>,  <28.815479, 30.914082, 23.659164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.975948, 31.086020, 23.706985>,  <29.243397, 31.372583, 23.786688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975948, 31.086020, 23.706985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155337, 0.127485, -0.979601,
		0.727199, -0.685933, 0.026046,
		-0.668620, -0.716411, -0.199258,
		28.775362, 30.871096, 23.647207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447287, 30.946112, 23.156305>,  <29.243397, 31.372583, 23.786688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447287, 30.946112, 23.156305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.053722, 30.876417, 23.172094>,  <28.817583, 30.834600, 23.181568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.053722, 30.876417, 23.172094>,  <29.447287, 30.946112, 23.156305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053722, 30.876417, 23.172094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016337, -0.132264, -0.991080,
		0.177905, -0.975781, 0.127290,
		-0.983912, -0.174238, 0.039472,
		28.758549, 30.824146, 23.183935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971123, 30.456606, 23.482162>,  <29.447287, 30.946112, 23.156305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971123, 30.456606, 23.482162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.273603, 30.323328, 23.256901>,  <30.455091, 30.243361, 23.121744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.273603, 30.323328, 23.256901>,  <29.971123, 30.456606, 23.482162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273603, 30.323328, 23.256901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612616, 0.058099, 0.788242,
		-0.229921, -0.941065, 0.248057,
		0.756199, -0.333197, -0.563154,
		30.500463, 30.223370, 23.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166830, 30.018435, 23.840584>,  <29.971123, 30.456606, 23.482162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166830, 30.018435, 23.840584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.487314, 30.138708, 23.633644>,  <30.679605, 30.210873, 23.509481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.487314, 30.138708, 23.633644>,  <30.166830, 30.018435, 23.840584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487314, 30.138708, 23.633644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521790, 0.072142, 0.850018,
		0.292910, -0.950991, -0.099093,
		0.801211, 0.300685, -0.517348,
		30.727678, 30.228912, 23.478439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726559, 29.653290, 24.171371>,  <30.166830, 30.018435, 23.840584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726559, 29.653290, 24.171371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.887539, 29.949606, 23.956240>,  <30.984127, 30.127396, 23.827160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.887539, 29.949606, 23.956240>,  <30.726559, 29.653290, 24.171371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887539, 29.949606, 23.956240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778630, 0.031968, 0.626669,
		0.481423, -0.670976, -0.563936,
		0.402452, 0.740790, -0.537832,
		31.008274, 30.171843, 23.794889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467648, 29.490219, 24.132641>,  <30.726559, 29.653290, 24.171371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467648, 29.490219, 24.132641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412148, 29.882904, 24.080498>,  <31.378847, 30.118515, 24.049212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412148, 29.882904, 24.080498>,  <31.467648, 29.490219, 24.132641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412148, 29.882904, 24.080498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656836, 0.189737, 0.729772,
		0.741158, 0.015635, -0.671149,
		-0.138752, 0.981711, -0.130355,
		31.370522, 30.177418, 24.041391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032803, 29.758278, 24.302141>,  <31.467648, 29.490219, 24.132641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032803, 29.758278, 24.302141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.804840, 30.084126, 24.345228>,  <31.668062, 30.279634, 24.371080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.804840, 30.084126, 24.345228>,  <32.032803, 29.758278, 24.302141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804840, 30.084126, 24.345228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547051, 0.278324, 0.789475,
		0.613139, 0.508856, -0.604256,
		-0.569909, 0.814617, 0.107719,
		31.633867, 30.328510, 24.377544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592003, 30.296003, 24.401590>,  <32.032803, 29.758278, 24.302141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592003, 30.296003, 24.401590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.239761, 30.444202, 24.519758>,  <32.028416, 30.533121, 24.590660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.239761, 30.444202, 24.519758>,  <32.592003, 30.296003, 24.401590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239761, 30.444202, 24.519758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447644, 0.445944, 0.775080,
		0.155422, 0.814780, -0.558550,
		-0.880601, 0.370496, 0.295422,
		31.975580, 30.555351, 24.608385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766815, 31.066164, 24.563070>,  <32.592003, 30.296003, 24.401590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766815, 31.066164, 24.563070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.453373, 30.917938, 24.762527>,  <32.265308, 30.829002, 24.882202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.453373, 30.917938, 24.762527>,  <32.766815, 31.066164, 24.563070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453373, 30.917938, 24.762527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350041, 0.399752, 0.847154,
		-0.513261, 0.838379, -0.183534,
		-0.783604, -0.370566, 0.498644,
		32.218292, 30.806768, 24.912121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544556, 31.601994, 24.939566>,  <32.766815, 31.066164, 24.563070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544556, 31.601994, 24.939566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.390789, 31.278049, 25.116812>,  <32.298531, 31.083683, 25.223160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.390789, 31.278049, 25.116812>,  <32.544556, 31.601994, 24.939566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390789, 31.278049, 25.116812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401257, 0.285704, 0.870268,
		-0.831396, 0.512347, 0.215133,
		-0.384414, -0.809860, 0.443116,
		32.275463, 31.035091, 25.249746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419071, 31.816412, 25.660294>,  <32.544556, 31.601994, 24.939566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419071, 31.816412, 25.660294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.394447, 31.420282, 25.710037>,  <32.379673, 31.182604, 25.739883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.394447, 31.420282, 25.710037>,  <32.419071, 31.816412, 25.660294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394447, 31.420282, 25.710037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325395, 0.097877, 0.940499,
		-0.943573, 0.098360, 0.316222,
		-0.061556, -0.990326, 0.124360,
		32.375980, 31.123184, 25.747345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191917, 31.754833, 26.261906>,  <32.419071, 31.816412, 25.660294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191917, 31.754833, 26.261906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.380180, 31.410151, 26.186071>,  <32.493137, 31.203341, 26.140572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.380180, 31.410151, 26.186071>,  <32.191917, 31.754833, 26.261906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380180, 31.410151, 26.186071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421688, 0.030944, 0.906213,
		-0.775025, -0.506458, 0.377936,
		0.470654, -0.861709, -0.189585,
		32.521378, 31.151638, 26.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129189, 31.378361, 26.795568>,  <32.191917, 31.754833, 26.261906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129189, 31.378361, 26.795568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 31.237665, 26.605032>,  <32.644928, 31.153248, 26.490709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 31.237665, 26.605032>,  <32.129189, 31.378361, 26.795568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451527, 31.237665, 26.605032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477989, -0.088401, 0.873906,
		-0.349496, -0.931915, 0.096891,
		0.805841, -0.351739, -0.476341,
		32.693279, 31.132143, 26.462130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137951, 30.878393, 27.244547>,  <32.129189, 31.378361, 26.795568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137951, 30.878393, 27.244547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475994, 30.923618, 27.035547>,  <32.678822, 30.950754, 26.910147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475994, 30.923618, 27.035547>,  <32.137951, 30.878393, 27.244547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475994, 30.923618, 27.035547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533580, -0.118281, 0.837438,
		0.032881, -0.986522, -0.160289,
		0.845111, 0.113062, -0.522499,
		32.729527, 30.957537, 26.878798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.176907, 28.969570, 19.575621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505026, 29.196287, 19.545006>,  <29.701897, 29.332317, 19.526638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505026, 29.196287, 19.545006>,  <29.176907, 28.969570, 19.575621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505026, 29.196287, 19.545006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235204, -0.212329, 0.948470,
		0.521336, -0.796029, -0.307485,
		0.820297, 0.566793, -0.076535,
		29.751116, 29.366325, 19.522045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646030, 28.613056, 19.907429>,  <29.176907, 28.969570, 19.575621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646030, 28.613056, 19.907429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803518, 28.980717, 19.912239>,  <29.898010, 29.201313, 19.915125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803518, 28.980717, 19.912239>,  <29.646030, 28.613056, 19.907429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803518, 28.980717, 19.912239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249880, -0.119609, 0.960861,
		0.884616, -0.375304, -0.276770,
		0.393719, 0.919152, 0.012027,
		29.921635, 29.256462, 19.915848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230335, 28.507109, 20.319847>,  <29.646030, 28.613056, 19.907429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230335, 28.507109, 20.319847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184851, 28.904177, 20.303495>,  <30.157560, 29.142418, 20.293684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184851, 28.904177, 20.303495>,  <30.230335, 28.507109, 20.319847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184851, 28.904177, 20.303495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485220, 0.091392, 0.869603,
		0.866966, 0.079051, -0.492057,
		-0.113714, 0.992672, -0.040877,
		30.150736, 29.201979, 20.291233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801071, 28.710882, 20.703726>,  <30.230335, 28.507109, 20.319847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801071, 28.710882, 20.703726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545456, 29.018421, 20.712698>,  <30.392086, 29.202944, 20.718081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545456, 29.018421, 20.712698>,  <30.801071, 28.710882, 20.703726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545456, 29.018421, 20.712698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295117, 0.218153, 0.930223,
		0.710307, 0.601068, -0.366308,
		-0.639039, 0.768847, 0.022430,
		30.353745, 29.249075, 20.719427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213858, 29.347929, 20.912523>,  <30.801071, 28.710882, 20.703726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213858, 29.347929, 20.912523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829479, 29.424465, 20.992496>,  <30.598852, 29.470387, 21.040482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829479, 29.424465, 20.992496>,  <31.213858, 29.347929, 20.912523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829479, 29.424465, 20.992496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244274, 0.246923, 0.937741,
		0.130061, 0.949956, -0.284020,
		-0.960945, 0.191342, 0.199934,
		30.541195, 29.481869, 21.052477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139429, 30.117432, 21.176287>,  <31.213858, 29.347929, 20.912523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139429, 30.117432, 21.176287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805161, 29.949047, 21.317394>,  <30.604599, 29.848017, 21.402060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805161, 29.949047, 21.317394>,  <31.139429, 30.117432, 21.176287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805161, 29.949047, 21.317394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223281, 0.326439, 0.918468,
		-0.501798, 0.846303, -0.178803,
		-0.835670, -0.420962, 0.352769,
		30.554459, 29.822758, 21.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863766, 30.722879, 21.555763>,  <31.139429, 30.117432, 21.176287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863766, 30.722879, 21.555763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677328, 30.391401, 21.679712>,  <30.565466, 30.192514, 21.754082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677328, 30.391401, 21.679712>,  <30.863766, 30.722879, 21.555763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677328, 30.391401, 21.679712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044606, 0.327787, 0.943698,
		-0.883609, 0.453676, -0.115815,
		-0.466096, -0.828694, 0.309873,
		30.537498, 30.142794, 21.772675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371527, 30.923424, 21.985588>,  <30.863766, 30.722879, 21.555763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371527, 30.923424, 21.985588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411306, 30.538876, 22.088253>,  <30.435175, 30.308147, 22.149853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411306, 30.538876, 22.088253>,  <30.371527, 30.923424, 21.985588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411306, 30.538876, 22.088253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029606, 0.260688, 0.964969,
		-0.994602, -0.088368, 0.054388,
		0.099451, -0.961370, 0.256664,
		30.441141, 30.250465, 22.165253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976259, 30.802824, 22.529625>,  <30.371527, 30.923424, 21.985588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976259, 30.802824, 22.529625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243597, 30.505520, 22.541485>,  <30.403999, 30.327137, 22.548601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243597, 30.505520, 22.541485>,  <29.976259, 30.802824, 22.529625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243597, 30.505520, 22.541485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253488, 0.265051, 0.930318,
		-0.699327, -0.614259, 0.365553,
		0.668346, -0.743260, 0.029650,
		30.444101, 30.282541, 22.550381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313028, 30.499527, 22.487219>,  <29.976259, 30.802824, 22.529625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313028, 30.499527, 22.487219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939396, 30.561609, 22.615847>,  <28.715218, 30.598860, 22.693024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939396, 30.561609, 22.615847>,  <29.313028, 30.499527, 22.487219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939396, 30.561609, 22.615847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322095, 0.022456, -0.946441,
		-0.154116, -0.987627, 0.029016,
		-0.934079, 0.155208, 0.321570,
		28.659172, 30.608171, 22.712318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923464, 29.983665, 22.062387>,  <29.313028, 30.499527, 22.487219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923464, 29.983665, 22.062387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699480, 30.287521, 22.194685>,  <28.565090, 30.469835, 22.274063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699480, 30.287521, 22.194685>,  <28.923464, 29.983665, 22.062387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699480, 30.287521, 22.194685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422808, 0.081306, -0.902565,
		-0.712515, -0.645243, 0.275653,
		-0.559961, 0.759639, 0.330745,
		28.531492, 30.515413, 22.293909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300024, 29.841692, 21.863663>,  <28.923464, 29.983665, 22.062387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300024, 29.841692, 21.863663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288256, 30.236197, 21.928686>,  <28.281195, 30.472898, 21.967699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288256, 30.236197, 21.928686>,  <28.300024, 29.841692, 21.863663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288256, 30.236197, 21.928686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476451, 0.129127, -0.869667,
		-0.878709, -0.103035, 0.466106,
		-0.029420, 0.986261, 0.162556,
		28.279430, 30.532074, 21.977453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551085, 30.076658, 21.860331>,  <28.300024, 29.841692, 21.863663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551085, 30.076658, 21.860331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782810, 30.390406, 21.771639>,  <27.921844, 30.578653, 21.718424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782810, 30.390406, 21.771639>,  <27.551085, 30.076658, 21.860331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782810, 30.390406, 21.771639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537418, 0.163024, -0.827409,
		-0.612845, 0.598491, 0.515975,
		0.579313, 0.784367, -0.221731,
		27.956604, 30.625715, 21.705120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089804, 30.517906, 21.616264>,  <27.551085, 30.076658, 21.860331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089804, 30.517906, 21.616264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436111, 30.655653, 21.471018>,  <27.643896, 30.738300, 21.383869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436111, 30.655653, 21.471018>,  <27.089804, 30.517906, 21.616264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436111, 30.655653, 21.471018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416484, 0.093518, -0.904320,
		-0.277460, 0.934166, 0.224388,
		0.865769, 0.344367, -0.363118,
		27.695843, 30.758963, 21.362083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826305, 31.086853, 21.107141>,  <27.089804, 30.517906, 21.616264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826305, 31.086853, 21.107141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212173, 31.034925, 21.015440>,  <27.443695, 31.003769, 20.960419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212173, 31.034925, 21.015440>,  <26.826305, 31.086853, 21.107141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212173, 31.034925, 21.015440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208614, 0.155071, -0.965626,
		0.160907, 0.979336, 0.122510,
		0.964670, -0.129819, -0.229255,
		27.501575, 30.995979, 20.946663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182608, 31.626150, 20.681715>,  <26.826305, 31.086853, 21.107141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182608, 31.626150, 20.681715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340330, 31.262726, 20.626520>,  <27.434963, 31.044672, 20.593403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340330, 31.262726, 20.626520>,  <27.182608, 31.626150, 20.681715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340330, 31.262726, 20.626520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198745, 0.062289, -0.978070,
		0.897230, 0.413085, -0.156011,
		0.394308, -0.908560, -0.137986,
		27.458622, 30.990158, 20.585125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549904, 31.793554, 20.061382>,  <27.182608, 31.626150, 20.681715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549904, 31.793554, 20.061382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552942, 31.394432, 20.087687>,  <27.554766, 31.154959, 20.103468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552942, 31.394432, 20.087687>,  <27.549904, 31.793554, 20.061382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552942, 31.394432, 20.087687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159236, -0.066129, -0.985023,
		0.987211, -0.002987, -0.159389,
		0.007598, -0.997807, 0.065759,
		27.555222, 31.095091, 20.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926878, 31.625570, 19.539003>,  <27.549904, 31.793554, 20.061382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926878, 31.625570, 19.539003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686140, 31.319046, 19.628935>,  <27.541698, 31.135132, 19.682894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686140, 31.319046, 19.628935>,  <27.926878, 31.625570, 19.539003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686140, 31.319046, 19.628935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214371, -0.116175, -0.969819,
		0.769304, -0.631876, -0.094356,
		-0.601843, -0.766313, 0.224830,
		27.505587, 31.089151, 19.696384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144398, 31.248432, 19.055767>,  <27.926878, 31.625570, 19.539003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144398, 31.248432, 19.055767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806314, 31.086962, 19.195866>,  <27.603464, 30.990080, 19.279924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806314, 31.086962, 19.195866>,  <28.144398, 31.248432, 19.055767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806314, 31.086962, 19.195866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266435, -0.249845, -0.930908,
		0.463291, -0.880128, 0.103618,
		-0.845206, -0.403674, 0.350248,
		27.552753, 30.965860, 19.300940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026674, 30.618198, 18.637228>,  <28.144398, 31.248432, 19.055767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026674, 30.618198, 18.637228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658684, 30.708838, 18.765163>,  <27.437889, 30.763222, 18.841925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658684, 30.708838, 18.765163>,  <28.026674, 30.618198, 18.637228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658684, 30.708838, 18.765163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350907, -0.112519, -0.929626,
		-0.174671, -0.967465, 0.183033,
		-0.919975, 0.226606, 0.319836,
		27.382690, 30.776817, 18.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620087, 30.200647, 18.222557>,  <28.026674, 30.618198, 18.637228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620087, 30.200647, 18.222557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390860, 30.490889, 18.374924>,  <27.253325, 30.665033, 18.466343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390860, 30.490889, 18.374924>,  <27.620087, 30.200647, 18.222557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390860, 30.490889, 18.374924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390359, 0.167002, -0.905390,
		-0.720566, -0.667542, 0.187542,
		-0.573066, 0.725602, 0.380917,
		27.218941, 30.708569, 18.489199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908094, 30.168043, 18.012423>,  <27.620087, 30.200647, 18.222557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908094, 30.168043, 18.012423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879421, 30.536707, 18.164953>,  <26.862217, 30.757904, 18.256472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879421, 30.536707, 18.164953>,  <26.908094, 30.168043, 18.012423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879421, 30.536707, 18.164953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657489, 0.243827, -0.712921,
		-0.750046, -0.301822, 0.588502,
		-0.071682, 0.921657, 0.381326,
		26.857916, 30.813204, 18.279350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197329, 30.398605, 17.872913>,  <26.908094, 30.168043, 18.012423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197329, 30.398605, 17.872913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385679, 30.740170, 17.961557>,  <26.498690, 30.945108, 18.014744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385679, 30.740170, 17.961557>,  <26.197329, 30.398605, 17.872913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385679, 30.740170, 17.961557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383954, 0.424528, -0.819972,
		-0.794264, 0.301017, 0.527763,
		0.470876, 0.853911, 0.221611,
		26.526941, 30.996344, 18.028040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.505470, 34.406288, 17.777462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.378677, 34.027351, 17.795620>,  <32.302601, 33.799988, 17.806515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.378677, 34.027351, 17.795620>,  <32.505470, 34.406288, 17.777462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378677, 34.027351, 17.795620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022506, 0.055364, 0.998212,
		-0.948164, 0.315396, -0.038870,
		-0.316984, -0.947344, 0.045396,
		32.283581, 33.743149, 17.809238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004780, 34.388813, 18.334721>,  <32.505470, 34.406288, 17.777462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004780, 34.388813, 18.334721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083275, 34.003620, 18.260801>,  <32.130371, 33.772503, 18.216450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083275, 34.003620, 18.260801>,  <32.004780, 34.388813, 18.334721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083275, 34.003620, 18.260801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047521, -0.178902, 0.982719,
		-0.979405, -0.201626, 0.010655,
		0.196236, -0.962985, -0.184798,
		32.142147, 33.714725, 18.205362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530075, 34.012787, 18.670704>,  <32.004780, 34.388813, 18.334721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530075, 34.012787, 18.670704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.844009, 33.767052, 18.638144>,  <32.032372, 33.619610, 18.618607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.844009, 33.767052, 18.638144>,  <31.530075, 34.012787, 18.670704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844009, 33.767052, 18.638144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006772, -0.139848, 0.990150,
		-0.619668, -0.776553, -0.113918,
		0.784835, -0.614336, -0.081400,
		32.079460, 33.582752, 18.613724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335464, 33.387123, 18.915842>,  <31.530075, 34.012787, 18.670704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335464, 33.387123, 18.915842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734776, 33.372200, 18.933935>,  <31.974363, 33.363247, 18.944792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.734776, 33.372200, 18.933935>,  <31.335464, 33.387123, 18.915842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734776, 33.372200, 18.933935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050720, -0.162352, 0.985428,
		-0.029420, -0.986027, -0.163965,
		0.998280, -0.037308, 0.045235,
		32.034260, 33.361008, 18.947506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520405, 32.762676, 19.343363>,  <31.335464, 33.387123, 18.915842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520405, 32.762676, 19.343363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.844042, 32.997475, 19.354717>,  <32.038223, 33.138355, 19.361530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.844042, 32.997475, 19.354717>,  <31.520405, 32.762676, 19.343363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844042, 32.997475, 19.354717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036097, 0.001431, 0.999347,
		0.586572, -0.809588, 0.022346,
		0.809092, 0.586996, 0.028385,
		32.086769, 33.173573, 19.363234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823114, 32.495720, 19.866045>,  <31.520405, 32.762676, 19.343363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823114, 32.495720, 19.866045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023712, 32.839588, 19.827103>,  <32.144070, 33.045910, 19.803738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023712, 32.839588, 19.827103>,  <31.823114, 32.495720, 19.866045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023712, 32.839588, 19.827103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189293, 0.000777, 0.981920,
		0.844199, -0.510856, -0.162339,
		0.501494, 0.859666, -0.097358,
		32.174160, 33.097488, 19.797895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544800, 32.526791, 20.262691>,  <31.823114, 32.495720, 19.866045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544800, 32.526791, 20.262691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.408722, 32.900459, 20.219633>,  <32.327076, 33.124660, 20.193798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.408722, 32.900459, 20.219633>,  <32.544800, 32.526791, 20.262691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408722, 32.900459, 20.219633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179013, 0.176719, 0.967845,
		0.923158, 0.309988, -0.227348,
		-0.340198, 0.934172, -0.107648,
		32.306664, 33.180710, 20.187338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014915, 32.861320, 20.722933>,  <32.544800, 32.526791, 20.262691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014915, 32.861320, 20.722933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.708645, 33.105762, 20.642641>,  <32.524883, 33.252426, 20.594465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.708645, 33.105762, 20.642641>,  <33.014915, 32.861320, 20.722933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708645, 33.105762, 20.642641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026692, 0.281614, 0.959156,
		0.642670, 0.739763, -0.199314,
		-0.765678, 0.611101, -0.200730,
		32.478943, 33.289093, 20.582422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168125, 33.536503, 21.040760>,  <33.014915, 32.861320, 20.722933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168125, 33.536503, 21.040760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769257, 33.545860, 21.012171>,  <32.529938, 33.551476, 20.995018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769257, 33.545860, 21.012171>,  <33.168125, 33.536503, 21.040760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769257, 33.545860, 21.012171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050343, 0.498372, 0.865500,
		0.055867, 0.866648, -0.495783,
		-0.997168, 0.023394, -0.071472,
		32.470104, 33.552879, 20.990728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982689, 34.177490, 21.282473>,  <33.168125, 33.536503, 21.040760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982689, 34.177490, 21.282473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620312, 34.008999, 21.265316>,  <32.402885, 33.907906, 21.255022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.620312, 34.008999, 21.265316>,  <32.982689, 34.177490, 21.282473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620312, 34.008999, 21.265316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282311, 0.525439, 0.802630,
		-0.315552, 0.739244, -0.594934,
		-0.905940, -0.421227, -0.042893,
		32.348530, 33.882629, 21.252447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402428, 34.709435, 21.418711>,  <32.982689, 34.177490, 21.282473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402428, 34.709435, 21.418711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.321602, 34.336536, 21.538774>,  <32.273106, 34.112797, 21.610813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.321602, 34.336536, 21.538774>,  <32.402428, 34.709435, 21.418711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321602, 34.336536, 21.538774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186493, 0.337501, 0.922666,
		-0.961453, 0.130457, -0.242052,
		-0.202061, -0.932241, 0.300162,
		32.260983, 34.056866, 21.628822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760508, 34.755970, 21.692223>,  <32.402428, 34.709435, 21.418711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760508, 34.755970, 21.692223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955469, 34.441021, 21.843208>,  <32.072445, 34.252052, 21.933800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.955469, 34.441021, 21.843208>,  <31.760508, 34.755970, 21.692223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955469, 34.441021, 21.843208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339210, 0.227596, 0.912763,
		-0.804596, -0.572923, -0.156155,
		0.487402, -0.787375, 0.377464,
		32.101688, 34.204807, 21.956448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401545, 34.673424, 22.280977>,  <31.760508, 34.755970, 21.692223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401545, 34.673424, 22.280977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.697294, 34.412468, 22.347567>,  <31.874744, 34.255894, 22.387520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.697294, 34.412468, 22.347567>,  <31.401545, 34.673424, 22.280977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697294, 34.412468, 22.347567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108070, 0.129054, 0.985731,
		-0.664567, -0.746814, 0.024914,
		0.739373, -0.652391, 0.166473,
		31.919106, 34.216751, 22.397509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158457, 34.130917, 22.709845>,  <31.401545, 34.673424, 22.280977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158457, 34.130917, 22.709845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555994, 34.131321, 22.754156>,  <31.794518, 34.131565, 22.780743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555994, 34.131321, 22.754156>,  <31.158457, 34.130917, 22.709845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555994, 34.131321, 22.754156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110701, 0.048190, 0.992685,
		-0.004337, -0.998838, 0.048005,
		0.993844, 0.001009, 0.110781,
		31.854147, 34.131626, 22.787390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541899, 33.960564, 22.952351>,  <31.158457, 34.130917, 22.709845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541899, 33.960564, 22.952351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.350172, 34.293278, 23.064337>,  <30.235136, 34.492908, 23.131529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.350172, 34.293278, 23.064337>,  <30.541899, 33.960564, 22.952351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350172, 34.293278, 23.064337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267064, 0.165635, -0.949337,
		-0.836021, -0.529802, 0.142750,
		-0.479317, 0.831790, 0.279966,
		30.206377, 34.542816, 23.148327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973015, 33.914360, 22.605173>,  <30.541899, 33.960564, 22.952351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973015, 33.914360, 22.605173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.951801, 34.294262, 22.728556>,  <29.939074, 34.522205, 22.802586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.951801, 34.294262, 22.728556>,  <29.973015, 33.914360, 22.605173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951801, 34.294262, 22.728556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297089, 0.279898, -0.912905,
		-0.953376, -0.140054, 0.267319,
		-0.053034, 0.949759, 0.308457,
		29.935890, 34.579189, 22.821093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307068, 34.248734, 22.280386>,  <29.973015, 33.914360, 22.605173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307068, 34.248734, 22.280386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.519133, 34.564705, 22.403631>,  <29.646372, 34.754288, 22.477579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.519133, 34.564705, 22.403631>,  <29.307068, 34.248734, 22.280386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519133, 34.564705, 22.403631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229586, 0.483552, -0.844670,
		-0.816222, 0.377073, 0.437719,
		0.530162, 0.789932, 0.308115,
		29.678181, 34.801685, 22.496065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917665, 34.851933, 22.328663>,  <29.307068, 34.248734, 22.280386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917665, 34.851933, 22.328663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.290684, 34.987343, 22.278456>,  <29.514496, 35.068588, 22.248331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.290684, 34.987343, 22.278456>,  <28.917665, 34.851933, 22.328663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290684, 34.987343, 22.278456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244111, 0.335032, -0.910035,
		-0.266019, 0.879291, 0.395072,
		0.932547, 0.338527, -0.125519,
		29.570448, 35.088902, 22.240799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869305, 35.467785, 22.015059>,  <28.917665, 34.851933, 22.328663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869305, 35.467785, 22.015059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.260393, 35.421707, 21.944872>,  <29.495047, 35.394062, 21.902760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.260393, 35.421707, 21.944872>,  <28.869305, 35.467785, 22.015059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260393, 35.421707, 21.944872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116240, 0.398906, -0.909595,
		0.174775, 0.909728, 0.376629,
		0.977723, -0.115195, -0.175466,
		29.553711, 35.387150, 21.892233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228327, 36.110863, 21.719208>,  <28.869305, 35.467785, 22.015059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228327, 36.110863, 21.719208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.455030, 35.799824, 21.610300>,  <29.591053, 35.613201, 21.544956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.455030, 35.799824, 21.610300>,  <29.228327, 36.110863, 21.719208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455030, 35.799824, 21.610300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027891, 0.312171, -0.949617,
		0.823410, 0.545799, 0.155238,
		0.566761, -0.777594, -0.272267,
		29.625059, 35.566547, 21.528620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738359, 36.372280, 21.298405>,  <29.228327, 36.110863, 21.719208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738359, 36.372280, 21.298405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.730083, 35.983562, 21.204443>,  <29.725117, 35.750332, 21.148066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.730083, 35.983562, 21.204443>,  <29.738359, 36.372280, 21.298405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730083, 35.983562, 21.204443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112396, 0.231202, -0.966391,
		0.993448, -0.046398, 0.104442,
		-0.020691, -0.971799, -0.234902,
		29.723877, 35.692024, 21.133972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272568, 36.226135, 20.765820>,  <29.738359, 36.372280, 21.298405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272568, 36.226135, 20.765820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.017525, 35.920425, 20.727150>,  <29.864500, 35.737000, 20.703947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.017525, 35.920425, 20.727150>,  <30.272568, 36.226135, 20.765820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017525, 35.920425, 20.727150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136722, 0.011236, -0.990546,
		0.758133, -0.644795, 0.097329,
		-0.637606, -0.764273, -0.096676,
		29.826242, 35.691143, 20.698147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659042, 35.757050, 20.273981>,  <30.272568, 36.226135, 20.765820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659042, 35.757050, 20.273981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.279545, 35.632908, 20.250092>,  <30.051847, 35.558422, 20.235758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.279545, 35.632908, 20.250092>,  <30.659042, 35.757050, 20.273981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279545, 35.632908, 20.250092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077584, -0.045513, -0.995946,
		0.306380, -0.949530, 0.067259,
		-0.948742, -0.310356, -0.059724,
		29.994923, 35.539803, 20.232174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678051, 35.074024, 19.939650>,  <30.659042, 35.757050, 20.273981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678051, 35.074024, 19.939650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.306282, 35.215824, 19.898663>,  <30.083221, 35.300903, 19.874071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.306282, 35.215824, 19.898663>,  <30.678051, 35.074024, 19.939650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306282, 35.215824, 19.898663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098818, -0.028430, -0.994699,
		-0.355539, -0.934622, -0.008608,
		-0.929423, 0.354505, -0.102466,
		30.027454, 35.322174, 19.867924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350054, 34.676075, 19.455971>,  <30.678051, 35.074024, 19.939650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350054, 34.676075, 19.455971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.121580, 35.004032, 19.440384>,  <29.984495, 35.200806, 19.431032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.121580, 35.004032, 19.440384>,  <30.350054, 34.676075, 19.455971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121580, 35.004032, 19.440384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071169, -0.096761, -0.992760,
		-0.817730, -0.564277, 0.113619,
		-0.571186, 0.819895, -0.038965,
		29.950224, 35.250000, 19.428694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883211, 34.520763, 19.077000>,  <30.350054, 34.676075, 19.455971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883211, 34.520763, 19.077000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.843014, 34.918442, 19.061604>,  <29.818895, 35.157047, 19.052366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.843014, 34.918442, 19.061604>,  <29.883211, 34.520763, 19.077000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843014, 34.918442, 19.061604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088515, -0.047468, -0.994943,
		-0.990993, -0.096577, 0.092771,
		-0.100492, 0.994193, -0.038492,
		29.812866, 35.216702, 19.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243376, 34.554741, 18.792381>,  <29.883211, 34.520763, 19.077000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243376, 34.554741, 18.792381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.418365, 34.908493, 18.727285>,  <29.523359, 35.120747, 18.688229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.418365, 34.908493, 18.727285>,  <29.243376, 34.554741, 18.792381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418365, 34.908493, 18.727285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119640, -0.122122, -0.985278,
		-0.891236, 0.450504, 0.052382,
		0.437475, 0.884383, -0.162738,
		29.549608, 35.173809, 18.678465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760790, 34.945114, 18.320427>,  <29.243376, 34.554741, 18.792381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760790, 34.945114, 18.320427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.133757, 35.088478, 18.301924>,  <29.357536, 35.174496, 18.290821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.133757, 35.088478, 18.301924>,  <28.760790, 34.945114, 18.320427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133757, 35.088478, 18.301924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051026, 0.003849, -0.998690,
		-0.357765, 0.933556, 0.021877,
		0.932417, 0.358413, -0.046258,
		29.413481, 35.196003, 18.288046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132998, 35.304775, 18.386831>,  <28.760790, 34.945114, 18.320427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132998, 35.304775, 18.386831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.793053, 35.103947, 18.322756>,  <27.589087, 34.983448, 18.284311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.793053, 35.103947, 18.322756>,  <28.132998, 35.304775, 18.386831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793053, 35.103947, 18.322756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216543, 0.055568, 0.974690,
		-0.480462, 0.863039, -0.155945,
		-0.849862, -0.502071, -0.160187,
		27.538094, 34.953327, 18.274700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695086, 35.663826, 18.777327>,  <28.132998, 35.304775, 18.386831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695086, 35.663826, 18.777327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.543501, 35.297806, 18.722094>,  <27.452549, 35.078194, 18.688953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.543501, 35.297806, 18.722094>,  <27.695086, 35.663826, 18.777327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543501, 35.297806, 18.722094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338043, -0.002019, 0.941128,
		-0.861460, 0.403330, -0.308562,
		-0.378963, -0.915052, -0.138082,
		27.429811, 35.023289, 18.680670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050980, 35.681496, 19.078585>,  <27.695086, 35.663826, 18.777327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050980, 35.681496, 19.078585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.106028, 35.285881, 19.057194>,  <27.139055, 35.048512, 19.044359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.106028, 35.285881, 19.057194>,  <27.050980, 35.681496, 19.078585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106028, 35.285881, 19.057194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465273, -0.112213, 0.878026,
		-0.874404, -0.095951, -0.475617,
		0.137618, -0.989041, -0.053476,
		27.147312, 34.989170, 19.041151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375597, 35.377254, 19.342247>,  <27.050980, 35.681496, 19.078585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375597, 35.377254, 19.342247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.659437, 35.097153, 19.373505>,  <26.829742, 34.929092, 19.392260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.659437, 35.097153, 19.373505>,  <26.375597, 35.377254, 19.342247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659437, 35.097153, 19.373505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373331, -0.279601, 0.884561,
		-0.597570, -0.656860, -0.459833,
		0.709602, -0.700256, 0.078145,
		26.872318, 34.887077, 19.396948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079752, 34.726723, 19.550692>,  <26.375597, 35.377254, 19.342247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079752, 34.726723, 19.550692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.466173, 34.686386, 19.645836>,  <26.698025, 34.662186, 19.702923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.466173, 34.686386, 19.645836>,  <26.079752, 34.726723, 19.550692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466173, 34.686386, 19.645836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253142, -0.553416, 0.793505,
		0.051619, -0.826778, -0.560154,
		0.966051, -0.100839, 0.237859,
		26.755989, 34.656136, 19.717194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059519, 34.114521, 19.850555>,  <26.079752, 34.726723, 19.550692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059519, 34.114521, 19.850555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.412951, 34.257420, 19.971659>,  <26.625010, 34.343159, 20.044321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.412951, 34.257420, 19.971659>,  <26.059519, 34.114521, 19.850555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412951, 34.257420, 19.971659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161593, -0.374212, 0.913155,
		0.439515, -0.855770, -0.272919,
		0.883581, 0.357243, 0.302758,
		26.678024, 34.364594, 20.062487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374762, 33.630733, 20.217916>,  <26.059519, 34.114521, 19.850555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374762, 33.630733, 20.217916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.566658, 33.961803, 20.334400>,  <26.681795, 34.160446, 20.404289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.566658, 33.961803, 20.334400>,  <26.374762, 33.630733, 20.217916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566658, 33.961803, 20.334400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018098, -0.322489, 0.946400,
		0.877223, -0.459297, -0.139732,
		0.479741, 0.827676, 0.291207,
		26.710581, 34.210106, 20.421762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022850, 33.419212, 20.512890>,  <26.374762, 33.630733, 20.217916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022850, 33.419212, 20.512890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.958580, 33.770226, 20.693605>,  <26.920019, 33.980835, 20.802034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.958580, 33.770226, 20.693605>,  <27.022850, 33.419212, 20.512890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958580, 33.770226, 20.693605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048185, -0.450215, 0.891619,
		0.985831, 0.165029, 0.030053,
		-0.160673, 0.877538, 0.451788,
		26.910378, 34.033485, 20.829142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537825, 33.550644, 21.085695>,  <27.022850, 33.419212, 20.512890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537825, 33.550644, 21.085695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.247398, 33.812813, 21.168882>,  <27.073143, 33.970116, 21.218794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.247398, 33.812813, 21.168882>,  <27.537825, 33.550644, 21.085695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247398, 33.812813, 21.168882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040988, -0.260653, 0.964562,
		0.686405, 0.708858, 0.162386,
		-0.726064, 0.655424, 0.207968,
		27.029579, 34.009441, 21.231274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831959, 33.988461, 21.575443>,  <27.537825, 33.550644, 21.085695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831959, 33.988461, 21.575443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432425, 33.972847, 21.586765>,  <27.192703, 33.963478, 21.593559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432425, 33.972847, 21.586765>,  <27.831959, 33.988461, 21.575443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432425, 33.972847, 21.586765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038568, -0.294451, 0.954888,
		-0.028938, 0.954869, 0.295614,
		-0.998837, -0.039034, 0.028307,
		27.132774, 33.961136, 21.595257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630816, 34.242809, 22.261179>,  <27.831959, 33.988461, 21.575443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630816, 34.242809, 22.261179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.299358, 34.061283, 22.130091>,  <27.100485, 33.952366, 22.051437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.299358, 34.061283, 22.130091>,  <27.630816, 34.242809, 22.261179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299358, 34.061283, 22.130091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174678, -0.346587, 0.921610,
		-0.531826, 0.820932, 0.207925,
		-0.828643, -0.453817, -0.327723,
		27.050766, 33.925137, 22.031775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038363, 34.536728, 22.664021>,  <27.630816, 34.242809, 22.261179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038363, 34.536728, 22.664021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.927488, 34.181751, 22.516716>,  <26.860964, 33.968765, 22.428333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.927488, 34.181751, 22.516716>,  <27.038363, 34.536728, 22.664021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927488, 34.181751, 22.516716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382048, -0.249876, 0.889720,
		-0.881594, 0.387311, -0.269783,
		-0.277186, -0.887441, -0.368261,
		26.844334, 33.915520, 22.406239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387899, 34.536026, 22.916595>,  <27.038363, 34.536728, 22.664021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387899, 34.536026, 22.916595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.526365, 34.166359, 22.851994>,  <26.609446, 33.944557, 22.813232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.526365, 34.166359, 22.851994>,  <26.387899, 34.536026, 22.916595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526365, 34.166359, 22.851994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406494, -0.302899, 0.861983,
		-0.845537, -0.232736, -0.480521,
		0.346165, -0.924168, -0.161507,
		26.630215, 33.889107, 22.803541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778360, 33.982361, 23.034689>,  <26.387899, 34.536026, 22.916595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778360, 33.982361, 23.034689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.139765, 33.823036, 23.097954>,  <26.356607, 33.727440, 23.135914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.139765, 33.823036, 23.097954>,  <25.778360, 33.982361, 23.034689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139765, 33.823036, 23.097954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394056, -0.627012, 0.671994,
		-0.168495, -0.669478, -0.723470,
		0.903509, -0.398316, 0.158163,
		26.410818, 33.703541, 23.145403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<25.690487, 30.971210, 17.833883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.049356, 31.133905, 17.765018>,  <26.264679, 31.231522, 17.723700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.049356, 31.133905, 17.765018>,  <25.690487, 30.971210, 17.833883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049356, 31.133905, 17.765018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341504, 0.391641, -0.854396,
		-0.280089, 0.825338, 0.490274,
		0.897176, 0.406737, -0.172162,
		26.318510, 31.255926, 17.713369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628382, 31.606852, 17.562504>,  <25.690487, 30.971210, 17.833883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628382, 31.606852, 17.562504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.994188, 31.504736, 17.436972>,  <26.213673, 31.443466, 17.361652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.994188, 31.504736, 17.436972>,  <25.628382, 31.606852, 17.562504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994188, 31.504736, 17.436972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178115, 0.442435, -0.878935,
		0.363232, 0.859697, 0.359143,
		0.914515, -0.255288, -0.313831,
		26.268543, 31.428150, 17.342823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790388, 32.204739, 17.262962>,  <25.628382, 31.606852, 17.562504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790388, 32.204739, 17.262962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.058203, 31.954975, 17.102047>,  <26.218891, 31.805117, 17.005499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.058203, 31.954975, 17.102047>,  <25.790388, 32.204739, 17.262962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058203, 31.954975, 17.102047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158542, 0.408981, -0.898665,
		0.725663, 0.665467, 0.174831,
		0.669535, -0.624410, -0.402287,
		26.259064, 31.767653, 16.981361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197193, 32.625607, 16.798973>,  <25.790388, 32.204739, 17.262962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197193, 32.625607, 16.798973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.239990, 32.245758, 16.681141>,  <26.265669, 32.017849, 16.610441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.239990, 32.245758, 16.681141>,  <26.197193, 32.625607, 16.798973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239990, 32.245758, 16.681141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120239, 0.306465, -0.944257,
		0.986962, 0.065611, 0.146972,
		0.106995, -0.949618, -0.294581,
		26.272089, 31.960873, 16.592766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708561, 32.697182, 16.276926>,  <26.197193, 32.625607, 16.798973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708561, 32.697182, 16.276926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.559078, 32.329586, 16.226631>,  <26.469389, 32.109028, 16.196455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.559078, 32.329586, 16.226631>,  <26.708561, 32.697182, 16.276926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559078, 32.329586, 16.226631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265119, 0.024073, -0.963915,
		0.888850, -0.393558, 0.234644,
		-0.373708, -0.918984, -0.125737,
		26.446966, 32.053890, 16.188910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192221, 32.409969, 15.819420>,  <26.708561, 32.697182, 16.276926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192221, 32.409969, 15.819420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.845152, 32.216160, 15.774897>,  <26.636911, 32.099876, 15.748182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.845152, 32.216160, 15.774897>,  <27.192221, 32.409969, 15.819420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845152, 32.216160, 15.774897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180849, -0.099070, -0.978508,
		0.463079, -0.869152, 0.173585,
		-0.867670, -0.484519, -0.111308,
		26.584850, 32.070805, 15.741504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294962, 31.943672, 15.330351>,  <27.192221, 32.409969, 15.819420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294962, 31.943672, 15.330351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895277, 31.931829, 15.319794>,  <26.655466, 31.924723, 15.313459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895277, 31.931829, 15.319794>,  <27.294962, 31.943672, 15.330351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895277, 31.931829, 15.319794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027846, -0.049803, -0.998371,
		0.028250, -0.998320, 0.050588,
		-0.999213, -0.029612, -0.026393,
		26.595512, 31.922947, 15.311876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082575, 31.409050, 14.904158>,  <27.294962, 31.943672, 15.330351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082575, 31.409050, 14.904158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.772512, 31.661732, 14.907826>,  <26.586475, 31.813341, 14.910028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.772512, 31.661732, 14.907826>,  <27.082575, 31.409050, 14.904158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772512, 31.661732, 14.907826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097378, -0.105120, -0.989680,
		-0.624220, -0.768050, 0.142998,
		-0.775156, 0.631703, 0.009173,
		26.539965, 31.851242, 14.910579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679432, 31.112820, 14.501718>,  <27.082575, 31.409050, 14.904158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679432, 31.112820, 14.501718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549170, 31.490854, 14.512751>,  <26.471012, 31.717674, 14.519370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549170, 31.490854, 14.512751>,  <26.679432, 31.112820, 14.501718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549170, 31.490854, 14.512751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129349, -0.015635, -0.991476,
		-0.936600, -0.326445, 0.127337,
		-0.325654, 0.945087, 0.027582,
		26.451473, 31.774380, 14.521026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096453, 31.176472, 14.120761>,  <26.679432, 31.112820, 14.501718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096453, 31.176472, 14.120761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.189482, 31.565487, 14.117108>,  <26.245298, 31.798895, 14.114917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.189482, 31.565487, 14.117108>,  <26.096453, 31.176472, 14.120761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189482, 31.565487, 14.117108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043698, 0.001070, -0.999044,
		-0.971597, 0.232747, 0.042746,
		0.232571, 0.972537, -0.009131,
		26.259253, 31.857248, 14.114369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602114, 31.501011, 13.635530>,  <26.096453, 31.176472, 14.120761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602114, 31.501011, 13.635530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.948315, 31.695337, 13.684346>,  <26.156034, 31.811934, 13.713635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.948315, 31.695337, 13.684346>,  <25.602114, 31.501011, 13.635530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948315, 31.695337, 13.684346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105734, 0.060955, -0.992525,
		-0.489621, 0.871934, 0.001389,
		0.865501, 0.485814, 0.122038,
		26.207966, 31.841082, 13.720958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661476, 31.940434, 13.103645>,  <25.602114, 31.501011, 13.635530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661476, 31.940434, 13.103645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.047215, 31.958736, 13.207908>,  <26.278658, 31.969717, 13.270466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.047215, 31.958736, 13.207908>,  <25.661476, 31.940434, 13.103645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047215, 31.958736, 13.207908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262318, -0.035001, -0.964347,
		-0.035001, 0.998339, -0.045755,
		0.964347, 0.045755, 0.260657,
		26.336519, 31.972464, 13.286105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069269, 32.412483, 12.622697>,  <25.661476, 31.940434, 13.103645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069269, 32.412483, 12.622697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.334240, 32.139008, 12.745176>,  <26.493223, 31.974922, 12.818664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.334240, 32.139008, 12.745176>,  <26.069269, 32.412483, 12.622697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334240, 32.139008, 12.745176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369466, -0.057403, -0.927469,
		0.651677, 0.727512, 0.214575,
		0.662428, -0.683689, 0.306199,
		26.532969, 31.933901, 12.837036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711109, 32.634632, 12.479517>,  <26.069269, 32.412483, 12.622697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711109, 32.634632, 12.479517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.718840, 32.234734, 12.474805>,  <26.723478, 31.994795, 12.471977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.718840, 32.234734, 12.474805>,  <26.711109, 32.634632, 12.479517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718840, 32.234734, 12.474805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217653, 0.015707, -0.975900,
		0.975835, 0.016296, 0.217901,
		0.019325, -0.999744, -0.011781,
		26.724638, 31.934811, 12.471271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497654, 33.250160, 12.816151>,  <26.711109, 32.634632, 12.479517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497654, 33.250160, 12.816151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.603859, 33.629906, 12.748969>,  <26.667582, 33.857754, 12.708660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.603859, 33.629906, 12.748969>,  <26.497654, 33.250160, 12.816151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603859, 33.629906, 12.748969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065213, 0.156124, 0.985582,
		0.961900, -0.272635, -0.020459,
		0.265510, 0.949366, -0.167955,
		26.683512, 33.914715, 12.698583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089699, 33.376656, 13.188058>,  <26.497654, 33.250160, 12.816151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089699, 33.376656, 13.188058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.960386, 33.752148, 13.140279>,  <26.882799, 33.977444, 13.111611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.960386, 33.752148, 13.140279>,  <27.089699, 33.376656, 13.188058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960386, 33.752148, 13.140279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150641, 0.175666, 0.972856,
		0.934237, 0.296511, -0.198201,
		-0.323279, 0.938735, -0.119447,
		26.863403, 34.033768, 13.104445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589161, 33.829922, 13.497570>,  <27.089699, 33.376656, 13.188058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589161, 33.829922, 13.497570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258810, 34.053432, 13.467398>,  <27.060598, 34.187538, 13.449294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.258810, 34.053432, 13.467398>,  <27.589161, 33.829922, 13.497570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258810, 34.053432, 13.467398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094294, 0.268766, 0.958579,
		0.555908, 0.784557, -0.274658,
		-0.825879, 0.558780, -0.075430,
		27.011047, 34.221066, 13.444769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771376, 34.627079, 13.625112>,  <27.589161, 33.829922, 13.497570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771376, 34.627079, 13.625112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.381243, 34.586174, 13.703364>,  <27.147163, 34.561630, 13.750317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.381243, 34.586174, 13.703364>,  <27.771376, 34.627079, 13.625112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381243, 34.586174, 13.703364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144695, 0.373137, 0.916424,
		-0.166712, 0.922123, -0.349135,
		-0.975331, -0.102261, 0.195633,
		27.088644, 34.555496, 13.762054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601362, 35.278481, 13.933372>,  <27.771376, 34.627079, 13.625112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601362, 35.278481, 13.933372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.328911, 35.009804, 14.049922>,  <27.165440, 34.848598, 14.119852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.328911, 35.009804, 14.049922>,  <27.601362, 35.278481, 13.933372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328911, 35.009804, 14.049922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121617, 0.288641, 0.949682,
		-0.721993, 0.682291, -0.114913,
		-0.681128, -0.671689, 0.291375,
		27.124573, 34.808296, 14.137335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081419, 35.531105, 14.421747>,  <27.601362, 35.278481, 13.933372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081419, 35.531105, 14.421747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.040447, 35.142159, 14.505667>,  <27.015863, 34.908791, 14.556019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.040447, 35.142159, 14.505667>,  <27.081419, 35.531105, 14.421747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040447, 35.142159, 14.505667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094473, 0.219464, 0.971036,
		-0.990244, 0.079641, -0.114342,
		-0.102429, -0.972365, 0.209799,
		27.009718, 34.850449, 14.568606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639698, 35.561283, 14.977486>,  <27.081419, 35.531105, 14.421747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639698, 35.561283, 14.977486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.796629, 35.193726, 14.960953>,  <26.890787, 34.973190, 14.951034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.796629, 35.193726, 14.960953>,  <26.639698, 35.561283, 14.977486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796629, 35.193726, 14.960953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071976, -0.014128, 0.997306,
		-0.917006, -0.394245, 0.060596,
		0.392327, -0.918897, -0.041331,
		26.914328, 34.918056, 14.948553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104712, 35.104744, 15.344361>,  <26.639698, 35.561283, 14.977486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104712, 35.104744, 15.344361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.467398, 34.936409, 15.355394>,  <26.685009, 34.835407, 15.362015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.467398, 34.936409, 15.355394>,  <26.104712, 35.104744, 15.344361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467398, 34.936409, 15.355394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016822, 0.029264, 0.999430,
		-0.421409, -0.906662, 0.019455,
		0.906715, -0.420842, 0.027584,
		26.739412, 34.810158, 15.363669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062096, 34.653072, 15.878571>,  <26.104712, 35.104744, 15.344361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062096, 34.653072, 15.878571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.457632, 34.684902, 15.828191>,  <26.694954, 34.704002, 15.797963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.457632, 34.684902, 15.828191>,  <26.062096, 34.653072, 15.878571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457632, 34.684902, 15.828191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136257, -0.141189, 0.980561,
		0.060249, -0.986779, -0.150457,
		0.988840, 0.079579, -0.125949,
		26.754284, 34.708775, 15.790406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321285, 34.084133, 16.235907>,  <26.062096, 34.653072, 15.878571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321285, 34.084133, 16.235907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.611357, 34.359261, 16.223104>,  <26.785400, 34.524338, 16.215424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.611357, 34.359261, 16.223104>,  <26.321285, 34.084133, 16.235907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611357, 34.359261, 16.223104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285783, -0.258371, 0.922807,
		0.626452, -0.678347, -0.383931,
		0.725180, 0.687816, -0.032003,
		26.828911, 34.565605, 16.213503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957914, 33.822559, 16.588295>,  <26.321285, 34.084133, 16.235907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957914, 33.822559, 16.588295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.024916, 34.216534, 16.605474>,  <27.065117, 34.452919, 16.615782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.024916, 34.216534, 16.605474>,  <26.957914, 33.822559, 16.588295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024916, 34.216534, 16.605474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590192, -0.135076, 0.795882,
		0.789694, -0.107963, -0.603926,
		0.167501, 0.984936, 0.042950,
		27.075167, 34.512016, 16.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621145, 33.941319, 16.794214>,  <26.957914, 33.822559, 16.588295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621145, 33.941319, 16.794214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478327, 34.305408, 16.878134>,  <27.392635, 34.523861, 16.928486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478327, 34.305408, 16.878134>,  <27.621145, 33.941319, 16.794214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478327, 34.305408, 16.878134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496973, -0.005067, 0.867751,
		0.790908, 0.414093, -0.450546,
		-0.357046, 0.910221, 0.209800,
		27.371212, 34.578476, 16.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095764, 34.280865, 17.197721>,  <27.621145, 33.941319, 16.794214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095764, 34.280865, 17.197721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.776489, 34.506557, 17.282141>,  <27.584925, 34.641972, 17.332792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.776489, 34.506557, 17.282141>,  <28.095764, 34.280865, 17.197721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776489, 34.506557, 17.282141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332836, 0.121041, 0.935184,
		0.502112, 0.816698, -0.284409,
		-0.798188, 0.564228, 0.211050,
		27.537033, 34.675827, 17.345455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268328, 34.700069, 17.781340>,  <28.095764, 34.280865, 17.197721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268328, 34.700069, 17.781340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.877512, 34.782467, 17.803116>,  <27.643023, 34.831905, 17.816181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.877512, 34.782467, 17.803116>,  <28.268328, 34.700069, 17.781340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877512, 34.782467, 17.803116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060107, 0.021340, 0.997964,
		0.204408, 0.978321, -0.033232,
		-0.977039, 0.205989, 0.054442,
		27.584400, 34.844265, 17.819448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720860, 35.386898, 17.707001>,  <28.268328, 34.700069, 17.781340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720860, 35.386898, 17.707001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.114857, 35.375889, 17.775154>,  <29.351255, 35.369282, 17.816046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.114857, 35.375889, 17.775154>,  <28.720860, 35.386898, 17.707001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114857, 35.375889, 17.775154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171287, 0.034712, -0.984610,
		0.021189, 0.999018, 0.038906,
		0.984993, -0.027527, 0.170383,
		29.410355, 35.367630, 17.826269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056211, 35.966400, 17.339409>,  <28.720860, 35.386898, 17.707001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056211, 35.966400, 17.339409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.329393, 35.678349, 17.388384>,  <29.493301, 35.505516, 17.417768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.329393, 35.678349, 17.388384>,  <29.056211, 35.966400, 17.339409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329393, 35.678349, 17.388384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255463, 0.078440, -0.963632,
		0.684335, 0.689393, 0.237537,
		0.682953, -0.720128, 0.122435,
		29.534279, 35.462311, 17.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720158, 36.251804, 16.922836>,  <29.056211, 35.966400, 17.339409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720158, 36.251804, 16.922836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737513, 35.856827, 16.983583>,  <29.747925, 35.619839, 17.020031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.737513, 35.856827, 16.983583>,  <29.720158, 36.251804, 16.922836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737513, 35.856827, 16.983583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275354, -0.134303, -0.951916,
		0.960363, 0.083119, 0.266071,
		0.043388, -0.987448, 0.151867,
		29.750528, 35.560593, 17.029144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396616, 36.009598, 16.489325>,  <29.720158, 36.251804, 16.922836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396616, 36.009598, 16.489325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.177412, 35.680195, 16.548012>,  <30.045891, 35.482555, 16.583223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.177412, 35.680195, 16.548012>,  <30.396616, 36.009598, 16.489325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177412, 35.680195, 16.548012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162381, -0.276796, -0.947109,
		0.820561, -0.495199, 0.285408,
		-0.548008, -0.823506, 0.146717,
		30.013010, 35.433144, 16.592028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704729, 35.553936, 16.014540>,  <30.396616, 36.009598, 16.489325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704729, 35.553936, 16.014540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358273, 35.366787, 16.084843>,  <30.150398, 35.254498, 16.127024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358273, 35.366787, 16.084843>,  <30.704729, 35.553936, 16.014540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358273, 35.366787, 16.084843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202880, 0.007752, -0.979173,
		0.456768, -0.883760, -0.101637,
		-0.866142, -0.467875, 0.175756,
		30.098431, 35.226425, 16.137569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790478, 34.915890, 15.647776>,  <30.704729, 35.553936, 16.014540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790478, 34.915890, 15.647776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.407221, 35.017208, 15.701148>,  <30.177267, 35.077999, 15.733171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.407221, 35.017208, 15.701148>,  <30.790478, 34.915890, 15.647776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407221, 35.017208, 15.701148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191098, -0.218808, -0.956872,
		-0.213150, -0.942325, 0.258050,
		-0.958148, 0.253271, 0.133438,
		30.119778, 35.093197, 15.741178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322479, 34.316677, 15.534968>,  <30.790478, 34.915890, 15.647776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322479, 34.316677, 15.534968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.151329, 34.670906, 15.462659>,  <30.048639, 34.883446, 15.419273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.151329, 34.670906, 15.462659>,  <30.322479, 34.316677, 15.534968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151329, 34.670906, 15.462659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134593, -0.260206, -0.956126,
		-0.893760, -0.384772, 0.230528,
		-0.427876, 0.885575, -0.180774,
		30.022966, 34.936577, 15.408426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651766, 33.580803, 15.382611>,  <30.322479, 34.316677, 15.534968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651766, 33.580803, 15.382611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036146, 33.569263, 15.272525>,  <31.266773, 33.562340, 15.206473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.036146, 33.569263, 15.272525>,  <30.651766, 33.580803, 15.382611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036146, 33.569263, 15.272525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275797, 0.018519, 0.961038,
		-0.022630, -0.999412, 0.025753,
		0.960950, -0.028850, -0.275216,
		31.324430, 33.560608, 15.189960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974932, 33.006699, 15.613590>,  <30.651766, 33.580803, 15.382611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974932, 33.006699, 15.613590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264460, 33.276463, 15.555264>,  <31.438175, 33.438320, 15.520269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.264460, 33.276463, 15.555264>,  <30.974932, 33.006699, 15.613590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264460, 33.276463, 15.555264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341416, -0.166422, 0.925061,
		0.599602, -0.719359, -0.350713,
		0.723817, 0.674408, -0.145814,
		31.481606, 33.478786, 15.511520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712465, 32.685425, 15.866107>,  <30.974932, 33.006699, 15.613590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712465, 32.685425, 15.866107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752449, 33.083363, 15.859246>,  <31.776440, 33.322124, 15.855130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752449, 33.083363, 15.859246>,  <31.712465, 32.685425, 15.866107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752449, 33.083363, 15.859246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399512, -0.024343, 0.916404,
		0.911262, -0.098455, -0.399885,
		0.099959, 0.994844, -0.017151,
		31.782436, 33.381817, 15.854101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279064, 32.791256, 16.212831>,  <31.712465, 32.685425, 15.866107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279064, 32.791256, 16.212831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119633, 33.157909, 16.200752>,  <32.023975, 33.377903, 16.193504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119633, 33.157909, 16.200752>,  <32.279064, 32.791256, 16.212831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119633, 33.157909, 16.200752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323826, 0.171460, 0.930451,
		0.858063, 0.361079, -0.365171,
		-0.398579, 0.916637, -0.030197,
		32.000061, 33.432899, 16.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780136, 33.269463, 16.335617>,  <32.279064, 32.791256, 16.212831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780136, 33.269463, 16.335617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455078, 33.458206, 16.472416>,  <32.260044, 33.571453, 16.554495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455078, 33.458206, 16.472416>,  <32.780136, 33.269463, 16.335617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455078, 33.458206, 16.472416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, 0.064807, 0.905757,
		0.405229, 0.879287, -0.250287,
		-0.812641, 0.471863, 0.341995,
		32.211285, 33.599766, 16.575014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991096, 33.611881, 16.828939>,  <32.780136, 33.269463, 16.335617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991096, 33.611881, 16.828939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597031, 33.597851, 16.896124>,  <32.360592, 33.589432, 16.936436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597031, 33.597851, 16.896124>,  <32.991096, 33.611881, 16.828939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597031, 33.597851, 16.896124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165928, 0.054572, 0.984627,
		-0.043706, 0.997894, -0.047942,
		-0.985169, -0.035079, 0.167963,
		32.301479, 33.587326, 16.946512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906616, 34.074409, 17.214062>,  <32.991096, 33.611881, 16.828939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906616, 34.074409, 17.214062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590309, 33.841343, 17.289101>,  <32.400524, 33.701504, 17.334124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.590309, 33.841343, 17.289101>,  <32.906616, 34.074409, 17.214062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590309, 33.841343, 17.289101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123974, 0.147668, 0.981236,
		-0.599436, 0.799183, -0.044535,
		-0.790764, -0.582667, 0.187595,
		32.353081, 33.666542, 17.345379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.134216, 31.121874, 12.849635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.898802, 31.380039, 13.044394>,  <28.757553, 31.534939, 13.161248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.898802, 31.380039, 13.044394>,  <29.134216, 31.121874, 12.849635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898802, 31.380039, 13.044394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495297, -0.188155, 0.848103,
		0.638990, 0.740295, -0.208936,
		-0.588534, 0.645415, 0.486895,
		28.722242, 31.573664, 13.190462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566109, 31.469116, 13.264580>,  <29.134216, 31.121874, 12.849635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566109, 31.469116, 13.264580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202913, 31.533222, 13.419432>,  <28.984995, 31.571686, 13.512342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202913, 31.533222, 13.419432>,  <29.566109, 31.469116, 13.264580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202913, 31.533222, 13.419432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367395, -0.139658, 0.919520,
		0.201433, 0.977144, 0.067927,
		-0.907990, 0.160266, 0.387130,
		28.930517, 31.581303, 13.535570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719704, 31.748426, 13.926599>,  <29.566109, 31.469116, 13.264580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719704, 31.748426, 13.926599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338194, 31.637939, 13.973966>,  <29.109289, 31.571648, 14.002386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338194, 31.637939, 13.973966>,  <29.719704, 31.748426, 13.926599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338194, 31.637939, 13.973966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232029, -0.426376, 0.874280,
		-0.191000, 0.861341, 0.470756,
		-0.953772, -0.276217, 0.118418,
		29.052063, 31.555075, 14.009491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440062, 31.999117, 14.685678>,  <29.719704, 31.748426, 13.926599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440062, 31.999117, 14.685678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202536, 31.707920, 14.548618>,  <29.060020, 31.533201, 14.466382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202536, 31.707920, 14.548618>,  <29.440062, 31.999117, 14.685678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202536, 31.707920, 14.548618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032691, -0.403682, 0.914315,
		-0.803938, 0.554135, 0.215913,
		-0.593814, -0.727994, -0.342651,
		29.024391, 31.489521, 14.445823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079550, 31.897816, 15.261118>,  <29.440062, 31.999117, 14.685678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079550, 31.897816, 15.261118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009178, 31.574917, 15.035764>,  <28.966955, 31.381178, 14.900551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009178, 31.574917, 15.035764>,  <29.079550, 31.897816, 15.261118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009178, 31.574917, 15.035764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039662, -0.577661, 0.815313,
		-0.983603, 0.121094, 0.133645,
		-0.175931, -0.807245, -0.563386,
		28.956398, 31.332743, 14.866748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605160, 31.563066, 15.617277>,  <29.079550, 31.897816, 15.261118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605160, 31.563066, 15.617277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794912, 31.304296, 15.378463>,  <28.908764, 31.149035, 15.235174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794912, 31.304296, 15.378463>,  <28.605160, 31.563066, 15.617277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794912, 31.304296, 15.378463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165943, -0.600329, 0.782347,
		-0.864539, -0.470203, -0.177431,
		0.474379, -0.646926, -0.597035,
		28.937225, 31.110218, 15.199352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272299, 30.820925, 15.776188>,  <28.605160, 31.563066, 15.617277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272299, 30.820925, 15.776188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629082, 30.764736, 15.604290>,  <28.843151, 30.731024, 15.501151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629082, 30.764736, 15.604290>,  <28.272299, 30.820925, 15.776188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629082, 30.764736, 15.604290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207903, -0.716624, 0.665753,
		-0.401484, -0.683168, -0.609994,
		0.891957, -0.140470, -0.429745,
		28.896669, 30.722595, 15.475367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414566, 30.132887, 15.786563>,  <28.272299, 30.820925, 15.776188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414566, 30.132887, 15.786563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773937, 30.303963, 15.746745>,  <28.989559, 30.406609, 15.722855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.773937, 30.303963, 15.746745>,  <28.414566, 30.132887, 15.786563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773937, 30.303963, 15.746745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345978, -0.549829, 0.760255,
		0.270421, -0.717474, -0.641953,
		0.898427, 0.427690, -0.099545,
		29.043465, 30.432270, 15.716882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871603, 29.600559, 15.956957>,  <28.414566, 30.132887, 15.786563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871603, 29.600559, 15.956957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099501, 29.928318, 15.982184>,  <29.236240, 30.124973, 15.997321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099501, 29.928318, 15.982184>,  <28.871603, 29.600559, 15.956957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099501, 29.928318, 15.982184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469455, -0.387489, 0.793388,
		0.674539, -0.422421, -0.605440,
		0.569745, 0.819398, 0.063069,
		29.270424, 30.174137, 16.001104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580935, 29.398224, 16.128445>,  <28.871603, 29.600559, 15.956957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580935, 29.398224, 16.128445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525389, 29.775133, 16.250324>,  <29.492062, 30.001278, 16.323452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525389, 29.775133, 16.250324>,  <29.580935, 29.398224, 16.128445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525389, 29.775133, 16.250324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383066, -0.232618, 0.893951,
		0.913223, 0.240858, -0.328650,
		-0.138865, 0.942272, 0.304697,
		29.483728, 30.057816, 16.341734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169861, 29.586866, 16.410084>,  <29.580935, 29.398224, 16.128445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169861, 29.586866, 16.410084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899885, 29.846399, 16.550640>,  <29.737900, 30.002119, 16.634974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899885, 29.846399, 16.550640>,  <30.169861, 29.586866, 16.410084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899885, 29.846399, 16.550640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307807, -0.185232, 0.933244,
		0.670606, 0.738043, -0.074695,
		-0.674939, 0.648831, 0.351392,
		29.697403, 30.041048, 16.656057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527071, 30.091803, 16.799341>,  <30.169861, 29.586866, 16.410084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527071, 30.091803, 16.799341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161863, 30.092588, 16.962505>,  <29.942739, 30.093060, 17.060404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161863, 30.092588, 16.962505>,  <30.527071, 30.091803, 16.799341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161863, 30.092588, 16.962505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403060, -0.149509, 0.902878,
		0.062760, 0.988758, 0.135713,
		-0.913019, 0.001964, 0.407912,
		29.887959, 30.093178, 17.084879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998726, 30.496717, 16.961555>,  <30.527071, 30.091803, 16.799341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998726, 30.496717, 16.961555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384790, 30.475214, 16.859125>,  <31.616428, 30.462311, 16.797667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384790, 30.475214, 16.859125>,  <30.998726, 30.496717, 16.961555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384790, 30.475214, 16.859125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260387, -0.101054, -0.960202,
		0.025743, 0.993427, -0.111532,
		0.965161, -0.053760, -0.256074,
		31.674339, 30.459085, 16.782303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047087, 31.072775, 16.410830>,  <30.998726, 30.496717, 16.961555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047087, 31.072775, 16.410830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328968, 30.791182, 16.375500>,  <31.498096, 30.622227, 16.354301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328968, 30.791182, 16.375500>,  <31.047087, 31.072775, 16.410830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328968, 30.791182, 16.375500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231818, -0.110800, -0.966429,
		0.670562, 0.701522, -0.241277,
		0.704704, -0.703982, -0.088327,
		31.540379, 30.579987, 16.349001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340706, 31.191265, 15.741590>,  <31.047087, 31.072775, 16.410830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340706, 31.191265, 15.741590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492472, 30.830801, 15.825454>,  <31.583532, 30.614523, 15.875772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492472, 30.830801, 15.825454>,  <31.340706, 31.191265, 15.741590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492472, 30.830801, 15.825454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153685, -0.162071, -0.974738,
		0.912373, 0.402053, 0.077002,
		0.379416, -0.901158, 0.209659,
		31.606297, 30.560453, 15.888351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050106, 31.169130, 15.524781>,  <31.340706, 31.191265, 15.741590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050106, 31.169130, 15.524781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907881, 30.795280, 15.522032>,  <31.822546, 30.570971, 15.520382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907881, 30.795280, 15.522032>,  <32.050106, 31.169130, 15.524781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907881, 30.795280, 15.522032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259840, -0.091782, -0.961280,
		0.897807, -0.343584, 0.275488,
		-0.355565, -0.934626, -0.006874,
		31.801210, 30.514893, 15.519970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621323, 30.815073, 15.243850>,  <32.050106, 31.169130, 15.524781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621323, 30.815073, 15.243850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.311638, 30.562578, 15.225357>,  <32.125828, 30.411081, 15.214262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.311638, 30.562578, 15.225357>,  <32.621323, 30.815073, 15.243850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311638, 30.562578, 15.225357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115997, -0.069706, -0.990801,
		0.622208, -0.772451, 0.127189,
		-0.774211, -0.631237, -0.046231,
		32.079376, 30.373207, 15.211488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836803, 30.183754, 14.828446>,  <32.621323, 30.815073, 15.243850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836803, 30.183754, 14.828446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437901, 30.165590, 14.805041>,  <32.198559, 30.154692, 14.790998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437901, 30.165590, 14.805041>,  <32.836803, 30.183754, 14.828446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437901, 30.165590, 14.805041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068670, -0.270807, -0.960181,
		0.027757, -0.961562, 0.273182,
		-0.997253, -0.045411, -0.058513,
		32.138725, 30.151966, 14.787487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692039, 29.592375, 14.404277>,  <32.836803, 30.183754, 14.828446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692039, 29.592375, 14.404277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.370731, 29.829369, 14.379863>,  <32.177948, 29.971565, 14.365214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.370731, 29.829369, 14.379863>,  <32.692039, 29.592375, 14.404277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370731, 29.829369, 14.379863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054826, -0.175589, -0.982936,
		-0.593090, -0.786214, 0.173529,
		-0.803267, 0.592484, -0.061035,
		32.129749, 30.007114, 14.361552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380318, 29.302042, 13.862349>,  <32.692039, 29.592375, 14.404277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380318, 29.302042, 13.862349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200352, 29.658968, 13.877053>,  <32.092373, 29.873123, 13.885876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200352, 29.658968, 13.877053>,  <32.380318, 29.302042, 13.862349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200352, 29.658968, 13.877053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205916, -0.063595, -0.976501,
		-0.869007, -0.446914, 0.212355,
		-0.449917, 0.892313, 0.036762,
		32.065376, 29.926662, 13.888082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790356, 29.285133, 13.495015>,  <32.380318, 29.302042, 13.862349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790356, 29.285133, 13.495015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.842018, 29.681299, 13.514604>,  <31.873016, 29.918999, 13.526357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.842018, 29.681299, 13.514604>,  <31.790356, 29.285133, 13.495015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842018, 29.681299, 13.514604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070356, 0.058414, -0.995810,
		-0.989125, 0.125170, 0.077226,
		0.129157, 0.990414, 0.048972,
		31.880766, 29.978424, 13.529295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263983, 29.490335, 13.096501>,  <31.790356, 29.285133, 13.495015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263983, 29.490335, 13.096501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550894, 29.768919, 13.105032>,  <31.723040, 29.936069, 13.110150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550894, 29.768919, 13.105032>,  <31.263983, 29.490335, 13.096501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550894, 29.768919, 13.105032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103720, 0.136985, -0.985128,
		-0.689024, 0.704399, 0.170493,
		0.717278, 0.696461, 0.021326,
		31.766077, 29.977858, 13.111430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994905, 30.058260, 12.706246>,  <31.263983, 29.490335, 13.096501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994905, 30.058260, 12.706246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381279, 30.161753, 12.703954>,  <31.613102, 30.223848, 12.702578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381279, 30.161753, 12.703954>,  <30.994905, 30.058260, 12.706246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381279, 30.161753, 12.703954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076999, 0.266176, -0.960844,
		-0.247075, 0.928552, 0.277030,
		0.965932, 0.258732, -0.005732,
		31.671059, 30.239372, 12.702234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980520, 30.684219, 12.417997>,  <30.994905, 30.058260, 12.706246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980520, 30.684219, 12.417997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360535, 30.567211, 12.374437>,  <31.588543, 30.497005, 12.348302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360535, 30.567211, 12.374437>,  <30.980520, 30.684219, 12.417997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360535, 30.567211, 12.374437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029550, 0.431606, -0.901578,
		0.310733, 0.853315, 0.418686,
		0.950038, -0.292522, -0.108899,
		31.645546, 30.479454, 12.341767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456404, 31.260164, 12.486768>,  <30.980520, 30.684219, 12.417997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456404, 31.260164, 12.486768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604586, 30.972736, 12.251337>,  <31.693495, 30.800280, 12.110079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.604586, 30.972736, 12.251337>,  <31.456404, 31.260164, 12.486768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604586, 30.972736, 12.251337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082206, 0.605811, -0.791350,
		0.925205, 0.341546, 0.165356,
		0.370457, -0.718568, -0.588576,
		31.715723, 30.757166, 12.074764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016567, 31.524328, 12.094443>,  <31.456404, 31.260164, 12.486768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016567, 31.524328, 12.094443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876450, 31.202730, 11.902242>,  <31.792377, 31.009771, 11.786921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876450, 31.202730, 11.902242>,  <32.016567, 31.524328, 12.094443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876450, 31.202730, 11.902242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117055, 0.471410, -0.874112,
		0.929296, -0.362444, -0.071022,
		-0.350297, -0.803995, -0.480504,
		31.771360, 30.961533, 11.758090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019169, 32.246304, 12.340789>,  <32.016567, 31.524328, 12.094443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019169, 32.246304, 12.340789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752924, 32.544678, 12.331456>,  <31.593176, 32.723701, 12.325856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.752924, 32.544678, 12.331456>,  <32.019169, 32.246304, 12.340789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752924, 32.544678, 12.331456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228700, 0.233635, 0.945046,
		0.710390, 0.623699, -0.326105,
		-0.665614, 0.745932, -0.023332,
		31.553240, 32.768456, 12.324456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295959, 32.904556, 12.485468>,  <32.019169, 32.246304, 12.340789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295959, 32.904556, 12.485468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915890, 32.974216, 12.588876>,  <31.687847, 33.016014, 12.650921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915890, 32.974216, 12.588876>,  <32.295959, 32.904556, 12.485468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915890, 32.974216, 12.588876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288402, 0.176521, 0.941098,
		0.118258, 0.968768, -0.217952,
		-0.950179, 0.174150, 0.258519,
		31.630836, 33.026463, 12.666431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340767, 33.361492, 13.009826>,  <32.295959, 32.904556, 12.485468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340767, 33.361492, 13.009826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.948387, 33.303825, 13.061920>,  <31.712959, 33.269226, 13.093177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.948387, 33.303825, 13.061920>,  <32.340767, 33.361492, 13.009826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948387, 33.303825, 13.061920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086591, 0.275648, 0.957351,
		-0.173920, 0.950386, -0.257912,
		-0.980945, -0.144170, 0.130235,
		31.654104, 33.260574, 13.100990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004807, 33.963078, 13.180078>,  <32.340767, 33.361492, 13.009826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004807, 33.963078, 13.180078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802324, 33.648220, 13.321027>,  <31.680836, 33.459305, 13.405597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802324, 33.648220, 13.321027>,  <32.004807, 33.963078, 13.180078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802324, 33.648220, 13.321027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072082, 0.368542, 0.926812,
		-0.859397, 0.494554, -0.129818,
		-0.506202, -0.787142, 0.352373,
		31.650463, 33.412079, 13.426739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460522, 34.214035, 13.630398>,  <32.004807, 33.963078, 13.180078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460522, 34.214035, 13.630398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.522928, 33.833099, 13.735246>,  <31.560371, 33.604538, 13.798155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.522928, 33.833099, 13.735246>,  <31.460522, 34.214035, 13.630398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522928, 33.833099, 13.735246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111243, 0.246741, 0.962675,
		-0.981471, -0.179351, -0.067446,
		0.156015, -0.952340, 0.262120,
		31.569733, 33.547398, 13.813882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936331, 34.153847, 14.075089>,  <31.460522, 34.214035, 13.630398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936331, 34.153847, 14.075089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199770, 33.862595, 14.151071>,  <31.357834, 33.687843, 14.196659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199770, 33.862595, 14.151071>,  <30.936331, 34.153847, 14.075089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199770, 33.862595, 14.151071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021998, 0.233693, 0.972062,
		-0.752175, -0.644375, 0.137892,
		0.658597, -0.728127, 0.189953,
		31.397348, 33.644157, 14.208056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736158, 34.000488, 14.701691>,  <30.936331, 34.153847, 14.075089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736158, 34.000488, 14.701691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.087337, 33.809013, 14.698513>,  <31.298044, 33.694126, 14.696607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.087337, 33.809013, 14.698513>,  <30.736158, 34.000488, 14.701691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087337, 33.809013, 14.698513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014887, -0.043883, 0.998926,
		-0.478527, -0.876886, -0.045654,
		0.877947, -0.478692, -0.007945,
		31.350721, 33.665405, 14.696130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905970, 34.179192, 14.781814>,  <30.736158, 34.000488, 14.701691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905970, 34.179192, 14.781814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792006, 34.559105, 14.833574>,  <29.723627, 34.787052, 14.864631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792006, 34.559105, 14.833574>,  <29.905970, 34.179192, 14.781814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792006, 34.559105, 14.833574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041556, 0.122631, -0.991582,
		-0.957653, -0.287891, 0.004529,
		-0.284912, 0.949779, 0.129402,
		29.706532, 34.844040, 14.872395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343252, 34.211098, 14.424953>,  <29.905970, 34.179192, 14.781814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343252, 34.211098, 14.424953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486347, 34.583778, 14.450116>,  <29.572205, 34.807388, 14.465214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486347, 34.583778, 14.450116>,  <29.343252, 34.211098, 14.424953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486347, 34.583778, 14.450116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246356, 0.159142, -0.956024,
		-0.900740, 0.326507, 0.286461,
		0.357737, 0.931701, 0.062908,
		29.593668, 34.863289, 14.468988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776838, 34.542400, 14.263921>,  <29.343252, 34.211098, 14.424953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776838, 34.542400, 14.263921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086582, 34.788792, 14.206054>,  <29.272429, 34.936626, 14.171333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086582, 34.788792, 14.206054>,  <28.776838, 34.542400, 14.263921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086582, 34.788792, 14.206054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188501, 0.006327, -0.982053,
		-0.604012, 0.787734, 0.121013,
		0.774362, 0.615983, -0.144667,
		29.318892, 34.973587, 14.162654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577461, 35.052052, 13.870389>,  <28.776838, 34.542400, 14.263921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577461, 35.052052, 13.870389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972891, 35.057316, 13.810321>,  <29.210148, 35.060474, 13.774280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972891, 35.057316, 13.810321>,  <28.577461, 35.052052, 13.870389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972891, 35.057316, 13.810321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150734, 0.073593, -0.985831,
		-0.001927, 0.997202, 0.074736,
		0.988573, 0.013165, -0.150170,
		29.269463, 35.061264, 13.765269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538101, 35.612404, 13.424079>,  <28.577461, 35.052052, 13.870389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538101, 35.612404, 13.424079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862207, 35.382572, 13.377904>,  <29.056671, 35.244671, 13.350199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862207, 35.382572, 13.377904>,  <28.538101, 35.612404, 13.424079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862207, 35.382572, 13.377904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112348, 0.041032, -0.992821,
		0.575196, 0.817417, -0.031307,
		0.810264, -0.574584, -0.115437,
		29.105288, 35.210197, 13.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902916, 35.868385, 12.850654>,  <28.538101, 35.612404, 13.424079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902916, 35.868385, 12.850654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060007, 35.501961, 12.883158>,  <29.154263, 35.282108, 12.902660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060007, 35.501961, 12.883158>,  <28.902916, 35.868385, 12.850654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060007, 35.501961, 12.883158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088937, -0.125777, -0.988064,
		0.915344, 0.380815, -0.130868,
		0.392729, -0.916057, 0.081260,
		29.177826, 35.227142, 12.907536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493225, 35.781696, 12.318295>,  <28.902916, 35.868385, 12.850654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493225, 35.781696, 12.318295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344482, 35.429035, 12.434508>,  <29.255238, 35.217438, 12.504237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344482, 35.429035, 12.434508>,  <29.493225, 35.781696, 12.318295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344482, 35.429035, 12.434508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011618, -0.308534, -0.951142,
		0.928217, -0.357065, 0.104488,
		-0.371858, -0.881653, 0.290535,
		29.232925, 35.164539, 12.521668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605509, 35.424080, 11.766819>,  <29.493225, 35.781696, 12.318295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605509, 35.424080, 11.766819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366390, 35.166470, 11.957762>,  <29.222919, 35.011906, 12.072328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366390, 35.166470, 11.957762>,  <29.605509, 35.424080, 11.766819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366390, 35.166470, 11.957762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255341, -0.411486, -0.874917,
		0.759893, -0.644914, 0.081540,
		-0.597799, -0.644023, 0.477358,
		29.187050, 34.973263, 12.100969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666037, 34.742847, 11.537907>,  <29.605509, 35.424080, 11.766819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666037, 34.742847, 11.537907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297794, 34.746094, 11.694069>,  <29.076849, 34.748039, 11.787766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297794, 34.746094, 11.694069>,  <29.666037, 34.742847, 11.537907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297794, 34.746094, 11.694069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385376, -0.180159, -0.905002,
		0.062995, -0.983604, 0.168981,
		-0.920607, 0.008111, 0.390406,
		29.021612, 34.748528, 11.811191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.977673, 33.099388, 27.335018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689428, 32.827133, 27.387869>,  <29.516481, 32.663780, 27.419579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689428, 32.827133, 27.387869>,  <29.977673, 33.099388, 27.335018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689428, 32.827133, 27.387869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279218, 0.110455, -0.953854,
		0.634633, -0.724248, -0.269641,
		-0.720609, -0.680636, 0.132125,
		29.473246, 32.622944, 27.427507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101114, 32.396961, 26.914568>,  <29.977673, 33.099388, 27.335018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101114, 32.396961, 26.914568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751385, 32.573242, 26.995897>,  <29.541546, 32.679008, 27.044695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.751385, 32.573242, 26.995897>,  <30.101114, 32.396961, 26.914568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751385, 32.573242, 26.995897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085392, 0.272717, -0.958297,
		-0.477770, -0.855225, -0.200811,
		-0.874324, 0.440698, 0.203325,
		29.489088, 32.705452, 27.056894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571531, 32.104786, 26.444895>,  <30.101114, 32.396961, 26.914568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571531, 32.104786, 26.444895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.483488, 32.474751, 26.568892>,  <29.430662, 32.696728, 26.643290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.483488, 32.474751, 26.568892>,  <29.571531, 32.104786, 26.444895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483488, 32.474751, 26.568892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021251, 0.313163, -0.949461,
		-0.975244, -0.215572, -0.049275,
		-0.220108, 0.924909, 0.309992,
		29.417456, 32.752224, 26.661888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026268, 32.373871, 25.958412>,  <29.571531, 32.104786, 26.444895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026268, 32.373871, 25.958412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227863, 32.669674, 26.136902>,  <29.348822, 32.847157, 26.243996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227863, 32.669674, 26.136902>,  <29.026268, 32.373871, 25.958412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227863, 32.669674, 26.136902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136959, 0.441676, -0.886659,
		-0.852782, 0.507981, 0.121318,
		0.503989, 0.739511, 0.446226,
		29.379061, 32.891529, 26.270769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934433, 32.849888, 25.465345>,  <29.026268, 32.373871, 25.958412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934433, 32.849888, 25.465345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211842, 33.020821, 25.697351>,  <29.378286, 33.123379, 25.836555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211842, 33.020821, 25.697351>,  <28.934433, 32.849888, 25.465345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211842, 33.020821, 25.697351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370915, 0.478395, -0.795965,
		-0.617614, 0.767156, 0.173275,
		0.693523, 0.427329, 0.580013,
		29.419899, 33.149021, 25.871355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759247, 33.554283, 25.364220>,  <28.934433, 32.849888, 25.465345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759247, 33.554283, 25.364220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134132, 33.529865, 25.501570>,  <29.359064, 33.515213, 25.583981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134132, 33.529865, 25.501570>,  <28.759247, 33.554283, 25.364220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134132, 33.529865, 25.501570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301042, 0.638712, -0.708110,
		-0.176089, 0.767020, 0.616987,
		0.937212, -0.061049, 0.343376,
		29.415297, 33.511551, 25.604582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092587, 34.239452, 25.381920>,  <28.759247, 33.554283, 25.364220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092587, 34.239452, 25.381920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414026, 34.002102, 25.363417>,  <29.606890, 33.859692, 25.352316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.414026, 34.002102, 25.363417>,  <29.092587, 34.239452, 25.381920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414026, 34.002102, 25.363417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389123, 0.582608, -0.713548,
		0.450350, 0.555406, 0.699077,
		0.803598, -0.593373, -0.046256,
		29.655106, 33.824089, 25.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599237, 34.714310, 25.279247>,  <29.092587, 34.239452, 25.381920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599237, 34.714310, 25.279247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798407, 34.377213, 25.197409>,  <29.917908, 34.174953, 25.148306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798407, 34.377213, 25.197409>,  <29.599237, 34.714310, 25.279247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798407, 34.377213, 25.197409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547813, 0.488544, -0.679136,
		0.672291, 0.226076, 0.704921,
		0.497922, -0.842742, -0.204596,
		29.947783, 34.124390, 25.136030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223667, 34.927647, 25.224718>,  <29.599237, 34.714310, 25.279247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223667, 34.927647, 25.224718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230278, 34.580837, 25.025520>,  <30.234243, 34.372753, 24.906002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230278, 34.580837, 25.025520>,  <30.223667, 34.927647, 25.224718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230278, 34.580837, 25.025520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294635, 0.480168, -0.826214,
		0.955467, -0.133072, 0.263391,
		0.016526, -0.867024, -0.497992,
		30.235235, 34.320728, 24.876123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785130, 34.833080, 24.776659>,  <30.223667, 34.927647, 25.224718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785130, 34.833080, 24.776659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529377, 34.589211, 24.589262>,  <30.375925, 34.442886, 24.476824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529377, 34.589211, 24.589262>,  <30.785130, 34.833080, 24.776659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529377, 34.589211, 24.589262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267735, 0.394640, -0.878964,
		0.720770, -0.687425, -0.089094,
		-0.639382, -0.609677, -0.468492,
		30.337563, 34.406307, 24.448715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084089, 34.608406, 24.108194>,  <30.785130, 34.833080, 24.776659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084089, 34.608406, 24.108194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692192, 34.554554, 24.048891>,  <30.457054, 34.522243, 24.013309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692192, 34.554554, 24.048891>,  <31.084089, 34.608406, 24.108194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692192, 34.554554, 24.048891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075305, 0.438312, -0.895663,
		0.185564, -0.888683, -0.419295,
		-0.979742, -0.134628, -0.148257,
		30.398270, 34.514164, 24.004414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012735, 34.364056, 23.388571>,  <31.084089, 34.608406, 24.108194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012735, 34.364056, 23.388571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643091, 34.483059, 23.484495>,  <30.421305, 34.554459, 23.542049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643091, 34.483059, 23.484495>,  <31.012735, 34.364056, 23.388571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643091, 34.483059, 23.484495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169302, 0.243853, -0.954920,
		-0.342572, -0.923053, -0.174979,
		-0.924111, 0.297505, 0.239812,
		30.365858, 34.572311, 23.556438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382141, 33.687744, 23.358696>,  <31.012735, 34.364056, 23.388571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382141, 33.687744, 23.358696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712448, 33.893124, 23.265335>,  <31.910633, 34.016354, 23.209318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712448, 33.893124, 23.265335>,  <31.382141, 33.687744, 23.358696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712448, 33.893124, 23.265335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282811, -0.018899, 0.958990,
		0.487983, -0.857911, -0.160816,
		0.825766, 0.513451, -0.233404,
		31.960178, 34.047157, 23.195314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801882, 33.350182, 23.803446>,  <31.382141, 33.687744, 23.358696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801882, 33.350182, 23.803446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975418, 33.700470, 23.718699>,  <32.079540, 33.910645, 23.667850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975418, 33.700470, 23.718699>,  <31.801882, 33.350182, 23.803446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975418, 33.700470, 23.718699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356801, 0.048936, 0.932898,
		0.827330, -0.480324, -0.291230,
		0.433842, 0.875725, -0.211866,
		32.105572, 33.963188, 23.655138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505100, 33.244659, 24.055590>,  <31.801882, 33.350182, 23.803446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505100, 33.244659, 24.055590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453812, 33.638279, 24.006264>,  <32.423038, 33.874451, 23.976667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453812, 33.638279, 24.006264>,  <32.505100, 33.244659, 24.055590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453812, 33.638279, 24.006264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516116, 0.172386, 0.838992,
		0.846867, 0.043930, -0.529987,
		-0.128219, 0.984049, -0.123315,
		32.415344, 33.933495, 23.969269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202099, 33.581688, 23.970600>,  <32.505100, 33.244659, 24.055590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202099, 33.581688, 23.970600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962212, 33.860878, 24.127144>,  <32.818279, 34.028393, 24.221071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962212, 33.860878, 24.127144>,  <33.202099, 33.581688, 23.970600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962212, 33.860878, 24.127144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553689, 0.008853, 0.832677,
		0.577726, 0.716063, -0.391773,
		-0.599718, 0.697979, 0.391361,
		32.782295, 34.070271, 24.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685600, 33.892899, 24.358475>,  <33.202099, 33.581688, 23.970600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685600, 33.892899, 24.358475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352081, 34.067364, 24.493855>,  <33.151970, 34.172043, 24.575083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352081, 34.067364, 24.493855>,  <33.685600, 33.892899, 24.358475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352081, 34.067364, 24.493855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371355, -0.010530, 0.928431,
		0.408513, 0.899805, -0.153192,
		-0.833794, 0.436165, 0.338449,
		33.101944, 34.198212, 24.595388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911514, 34.485519, 24.664925>,  <33.685600, 33.892899, 24.358475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911514, 34.485519, 24.664925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558052, 34.424706, 24.842033>,  <33.345974, 34.388218, 24.948299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558052, 34.424706, 24.842033>,  <33.911514, 34.485519, 24.664925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558052, 34.424706, 24.842033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427215, 0.124878, 0.895484,
		-0.191434, 0.980455, -0.045399,
		-0.883652, -0.152031, 0.442771,
		33.292957, 34.379097, 24.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969505, 34.931847, 25.256586>,  <33.911514, 34.485519, 24.664925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969505, 34.931847, 25.256586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697834, 34.641392, 25.299362>,  <33.534832, 34.467117, 25.325027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697834, 34.641392, 25.299362>,  <33.969505, 34.931847, 25.256586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697834, 34.641392, 25.299362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215311, -0.057821, 0.974832,
		-0.701679, 0.685113, 0.195616,
		-0.679182, -0.726138, 0.106940,
		33.494080, 34.423550, 25.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660950, 35.116798, 26.006891>,  <33.969505, 34.931847, 25.256586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660950, 35.116798, 26.006891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579628, 34.732639, 25.930681>,  <33.530834, 34.502144, 25.884956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579628, 34.732639, 25.930681>,  <33.660950, 35.116798, 26.006891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579628, 34.732639, 25.930681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208529, -0.232594, 0.949956,
		-0.956653, 0.153399, 0.247558,
		-0.203303, -0.960400, -0.190524,
		33.518639, 34.444519, 25.873524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287178, 34.941875, 26.594545>,  <33.660950, 35.116798, 26.006891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287178, 34.941875, 26.594545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398392, 34.603706, 26.412136>,  <33.465122, 34.400806, 26.302691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398392, 34.603706, 26.412136>,  <33.287178, 34.941875, 26.594545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398392, 34.603706, 26.412136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091955, -0.449138, 0.888718,
		-0.956159, -0.289031, -0.047136,
		0.278038, -0.845421, -0.456025,
		33.481804, 34.350079, 26.275330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993183, 34.369217, 27.021021>,  <33.287178, 34.941875, 26.594545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993183, 34.369217, 27.021021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295940, 34.200863, 26.821033>,  <33.477596, 34.099850, 26.701040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295940, 34.200863, 26.821033>,  <32.993183, 34.369217, 27.021021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295940, 34.200863, 26.821033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243446, -0.528387, 0.813352,
		-0.606508, -0.737334, -0.297468,
		0.756890, -0.420887, -0.499972,
		33.523006, 34.074596, 26.671041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888809, 33.673107, 27.023272>,  <32.993183, 34.369217, 27.021021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888809, 33.673107, 27.023272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280945, 33.721397, 26.960835>,  <33.516224, 33.750370, 26.923372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280945, 33.721397, 26.960835>,  <32.888809, 33.673107, 27.023272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280945, 33.721397, 26.960835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197054, -0.557054, 0.806759,
		0.010443, -0.821655, -0.569890,
		0.980337, 0.120724, -0.156093,
		33.575047, 33.757614, 26.914007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190029, 33.048885, 27.039204>,  <32.888809, 33.673107, 27.023272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190029, 33.048885, 27.039204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487484, 33.301163, 27.127949>,  <33.665958, 33.452530, 27.181196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487484, 33.301163, 27.127949>,  <33.190029, 33.048885, 27.039204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487484, 33.301163, 27.127949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255642, -0.574857, 0.777294,
		0.617776, -0.521309, -0.588719,
		0.743640, 0.630695, 0.221864,
		33.710575, 33.490372, 27.194508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724186, 32.630047, 27.172413>,  <33.190029, 33.048885, 27.039204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724186, 32.630047, 27.172413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851101, 32.966766, 27.347092>,  <33.927250, 33.168797, 27.451899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851101, 32.966766, 27.347092>,  <33.724186, 32.630047, 27.172413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851101, 32.966766, 27.347092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125699, -0.493761, 0.860465,
		0.939961, -0.218123, -0.262478,
		0.317289, 0.841797, 0.436698,
		33.946289, 33.219307, 27.478102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414524, 32.517212, 27.396179>,  <33.724186, 32.630047, 27.172413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414524, 32.517212, 27.396179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253788, 32.794868, 27.635075>,  <34.157345, 32.961460, 27.778412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253788, 32.794868, 27.635075>,  <34.414524, 32.517212, 27.396179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253788, 32.794868, 27.635075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060338, -0.630727, 0.773656,
		0.913719, 0.346924, 0.211571,
		-0.401843, 0.694138, 0.597239,
		34.133236, 33.003109, 27.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898151, 32.304005, 26.817924>,  <34.414524, 32.517212, 27.396179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898151, 32.304005, 26.817924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889137, 31.904356, 26.832024>,  <34.883728, 31.664566, 26.840483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889137, 31.904356, 26.832024>,  <34.898151, 32.304005, 26.817924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889137, 31.904356, 26.832024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399376, -0.041318, -0.915856,
		0.916510, -0.006562, 0.399957,
		-0.022535, -0.999125, 0.035248,
		34.882378, 31.604618, 26.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563656, 31.921516, 26.548059>,  <34.898151, 32.304005, 26.817924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563656, 31.921516, 26.548059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227345, 31.713430, 26.488108>,  <35.025558, 31.588579, 26.452137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227345, 31.713430, 26.488108>,  <35.563656, 31.921516, 26.548059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227345, 31.713430, 26.488108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233134, -0.098054, -0.967489,
		0.488605, -0.848388, 0.203722,
		-0.840781, -0.520215, -0.149878,
		34.975109, 31.557365, 26.443144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716965, 31.332188, 26.183775>,  <35.563656, 31.921516, 26.548059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716965, 31.332188, 26.183775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322208, 31.367321, 26.129627>,  <35.085354, 31.388401, 26.097137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322208, 31.367321, 26.129627>,  <35.716965, 31.332188, 26.183775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322208, 31.367321, 26.129627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110790, -0.241127, -0.964149,
		-0.117323, -0.966511, 0.228237,
		-0.986894, 0.087830, -0.135370,
		35.026138, 31.393671, 26.089016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517952, 30.727749, 25.749905>,  <35.716965, 31.332188, 26.183775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517952, 30.727749, 25.749905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203915, 30.969486, 25.695654>,  <35.015491, 31.114529, 25.663103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203915, 30.969486, 25.695654>,  <35.517952, 30.727749, 25.749905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203915, 30.969486, 25.695654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024717, -0.188227, -0.981815,
		-0.618881, -0.774171, 0.132839,
		-0.785096, 0.604343, -0.135625,
		34.968388, 31.150789, 25.654966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132812, 30.310991, 25.249025>,  <35.517952, 30.727749, 25.749905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132812, 30.310991, 25.249025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965141, 30.674114, 25.254320>,  <34.864540, 30.891989, 25.257496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965141, 30.674114, 25.254320>,  <35.132812, 30.310991, 25.249025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965141, 30.674114, 25.254320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081951, -0.023314, -0.996364,
		-0.904198, -0.418737, 0.084168,
		-0.419177, 0.907808, 0.013235,
		34.839390, 30.946457, 25.258291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559822, 30.306831, 24.767620>,  <35.132812, 30.310991, 25.249025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559822, 30.306831, 24.767620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631073, 30.697159, 24.818287>,  <34.673824, 30.931356, 24.848688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631073, 30.697159, 24.818287>,  <34.559822, 30.306831, 24.767620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631073, 30.697159, 24.818287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061438, 0.139506, -0.988313,
		-0.982087, 0.168268, 0.084803,
		0.178132, 0.975820, 0.126669,
		34.684513, 30.989904, 24.856287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957508, 30.687670, 24.469431>,  <34.559822, 30.306831, 24.767620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957508, 30.687670, 24.469431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277065, 30.927263, 24.491301>,  <34.468800, 31.071020, 24.504423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277065, 30.927263, 24.491301>,  <33.957508, 30.687670, 24.469431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277065, 30.927263, 24.491301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139111, 0.272444, -0.952062,
		-0.585165, 0.752990, 0.300978,
		0.798893, 0.598983, 0.054675,
		34.516731, 31.106958, 24.507704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714661, 31.314262, 24.107199>,  <33.957508, 30.687670, 24.469431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714661, 31.314262, 24.107199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114258, 31.331013, 24.113544>,  <34.354015, 31.341063, 24.117352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114258, 31.331013, 24.113544>,  <33.714661, 31.314262, 24.107199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114258, 31.331013, 24.113544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004325, 0.262387, -0.964953,
		-0.044569, 0.964054, 0.261943,
		0.998997, 0.041874, 0.015864,
		34.413956, 31.343575, 24.118303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812038, 31.922749, 23.811495>,  <33.714661, 31.314262, 24.107199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812038, 31.922749, 23.811495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159801, 31.727545, 23.780569>,  <34.368458, 31.610422, 23.762012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159801, 31.727545, 23.780569>,  <33.812038, 31.922749, 23.811495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159801, 31.727545, 23.780569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002554, 0.160916, -0.986965,
		0.494089, 0.857877, 0.141148,
		0.869408, -0.488008, -0.077316,
		34.420624, 31.581142, 23.757374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184982, 32.311295, 23.335718>,  <33.812038, 31.922749, 23.811495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184982, 32.311295, 23.335718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432533, 31.999630, 23.375526>,  <34.581062, 31.812632, 23.399412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432533, 31.999630, 23.375526>,  <34.184982, 32.311295, 23.335718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432533, 31.999630, 23.375526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222824, 0.052649, -0.973436,
		0.753221, 0.624613, 0.206198,
		0.618877, -0.779158, 0.099522,
		34.618195, 31.765882, 23.405382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873535, 32.450245, 23.004387>,  <34.184982, 32.311295, 23.335718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873535, 32.450245, 23.004387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801338, 32.058254, 22.970776>,  <34.758018, 31.823059, 22.950609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801338, 32.058254, 22.970776>,  <34.873535, 32.450245, 23.004387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801338, 32.058254, 22.970776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202330, 0.120599, -0.971863,
		0.962540, -0.158416, -0.220047,
		-0.180496, -0.979980, -0.084029,
		34.747189, 31.764259, 22.945566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219051, 32.233047, 22.285475>,  <34.873535, 32.450245, 23.004387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219051, 32.233047, 22.285475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970116, 31.939219, 22.393620>,  <34.820755, 31.762920, 22.458508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970116, 31.939219, 22.393620>,  <35.219051, 32.233047, 22.285475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970116, 31.939219, 22.393620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196921, -0.187365, -0.962349,
		0.757575, -0.652145, -0.028049,
		-0.622336, -0.734576, 0.270364,
		34.783413, 31.718845, 22.474730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429646, 31.703550, 21.891785>,  <35.219051, 32.233047, 22.285475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429646, 31.703550, 21.891785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057903, 31.613777, 22.009039>,  <34.834858, 31.559914, 22.079391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057903, 31.613777, 22.009039>,  <35.429646, 31.703550, 21.891785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057903, 31.613777, 22.009039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228756, -0.273144, -0.934379,
		0.289774, -0.935426, 0.202507,
		-0.929355, -0.224434, 0.293134,
		34.779099, 31.546448, 22.096979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252903, 30.968906, 21.689758>,  <35.429646, 31.703550, 21.891785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252903, 30.968906, 21.689758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907093, 31.163183, 21.741444>,  <34.699608, 31.279749, 21.772455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907093, 31.163183, 21.741444>,  <35.252903, 30.968906, 21.689758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907093, 31.163183, 21.741444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355967, -0.410240, -0.839637,
		-0.354794, -0.771887, 0.527553,
		-0.864529, 0.485689, 0.129216,
		34.647736, 31.308891, 21.780209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852703, 30.589493, 21.316198>,  <35.252903, 30.968906, 21.689758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852703, 30.589493, 21.316198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618996, 30.909176, 21.372625>,  <34.478771, 31.100985, 21.406481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618996, 30.909176, 21.372625>,  <34.852703, 30.589493, 21.316198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618996, 30.909176, 21.372625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511185, -0.227412, -0.828839,
		-0.630332, -0.556376, 0.541412,
		-0.584269, 0.799206, 0.141066,
		34.443714, 31.148937, 21.414946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207855, 30.392801, 21.280273>,  <34.852703, 30.589493, 21.316198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207855, 30.392801, 21.280273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192646, 30.788126, 21.221220>,  <34.183521, 31.025320, 21.185787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192646, 30.788126, 21.221220>,  <34.207855, 30.392801, 21.280273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192646, 30.788126, 21.221220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720151, -0.129526, -0.681619,
		-0.692774, 0.080401, 0.716658,
		-0.038024, 0.988311, -0.147633,
		34.181240, 31.084620, 21.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527561, 30.520945, 21.321648>,  <34.207855, 30.392801, 21.280273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527561, 30.520945, 21.321648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667496, 30.840963, 21.126698>,  <33.751457, 31.032974, 21.009727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667496, 30.840963, 21.126698>,  <33.527561, 30.520945, 21.321648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667496, 30.840963, 21.126698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732369, -0.090845, -0.674821,
		-0.584165, 0.593016, 0.554150,
		0.349838, 0.800049, -0.487375,
		33.772446, 31.080978, 20.980484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027203, 30.994596, 21.249866>,  <33.527561, 30.520945, 21.321648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027203, 30.994596, 21.249866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300854, 31.041525, 20.961922>,  <33.465046, 31.069681, 20.789154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300854, 31.041525, 20.961922>,  <33.027203, 30.994596, 21.249866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300854, 31.041525, 20.961922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719034, -0.056995, -0.692633,
		-0.122289, 0.991457, 0.045366,
		0.684131, 0.117321, -0.719862,
		33.506092, 31.076721, 20.745964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687737, 31.316624, 20.744055>,  <33.027203, 30.994596, 21.249866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687737, 31.316624, 20.744055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006069, 31.213480, 20.524906>,  <33.197067, 31.151594, 20.393417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006069, 31.213480, 20.524906>,  <32.687737, 31.316624, 20.744055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006069, 31.213480, 20.524906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596981, -0.182729, -0.781168,
		0.101319, 0.948746, -0.299358,
		0.795832, -0.257858, -0.547870,
		33.244820, 31.136122, 20.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663498, 31.699636, 20.107704>,  <32.687737, 31.316624, 20.744055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663498, 31.699636, 20.107704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901047, 31.383627, 20.046818>,  <33.043575, 31.194021, 20.010286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.901047, 31.383627, 20.046818>,  <32.663498, 31.699636, 20.107704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901047, 31.383627, 20.046818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392852, -0.119638, -0.911786,
		0.702124, 0.601287, -0.381414,
		0.593877, -0.790026, -0.152216,
		33.079208, 31.146620, 20.001152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879086, 31.739130, 19.416235>,  <32.663498, 31.699636, 20.107704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879086, 31.739130, 19.416235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958874, 31.357008, 19.503511>,  <33.006744, 31.127735, 19.555878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958874, 31.357008, 19.503511>,  <32.879086, 31.739130, 19.416235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958874, 31.357008, 19.503511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336529, -0.275907, -0.900347,
		0.920305, 0.106161, -0.376521,
		0.199466, -0.955304, 0.218193,
		33.018715, 31.070417, 19.568970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151863, 31.469858, 18.823254>,  <32.879086, 31.739130, 19.416235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151863, 31.469858, 18.823254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044922, 31.141121, 19.024487>,  <32.980759, 30.943878, 19.145227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044922, 31.141121, 19.024487>,  <33.151863, 31.469858, 18.823254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044922, 31.141121, 19.024487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438274, -0.361249, -0.823052,
		0.858160, -0.440534, -0.263613,
		-0.267352, -0.821845, 0.503084,
		32.964718, 30.894567, 19.175411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478134, 30.965132, 18.546658>,  <33.151863, 31.469858, 18.823254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478134, 30.965132, 18.546658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156734, 30.816671, 18.732834>,  <32.963894, 30.727596, 18.844540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156734, 30.816671, 18.732834>,  <33.478134, 30.965132, 18.546658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156734, 30.816671, 18.732834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280206, -0.454031, -0.845778,
		0.525234, -0.810003, 0.260816,
		-0.803501, -0.371149, 0.465440,
		32.915684, 30.705326, 18.872465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462997, 30.313789, 18.314896>,  <33.478134, 30.965132, 18.546658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462997, 30.313789, 18.314896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086311, 30.388117, 18.427071>,  <32.860298, 30.432713, 18.494375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086311, 30.388117, 18.427071>,  <33.462997, 30.313789, 18.314896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086311, 30.388117, 18.427071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331589, -0.372043, -0.866967,
		-0.056762, -0.909426, 0.411973,
		-0.941715, 0.185817, 0.280438,
		32.803799, 30.443863, 18.511202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153721, 29.818060, 18.049498>,  <33.462997, 30.313789, 18.314896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153721, 29.818060, 18.049498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867409, 30.090611, 18.110668>,  <32.695621, 30.254141, 18.147371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867409, 30.090611, 18.110668>,  <33.153721, 29.818060, 18.049498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867409, 30.090611, 18.110668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375268, -0.190628, -0.907102,
		-0.588926, -0.706674, 0.392146,
		-0.715780, 0.681376, 0.152927,
		32.652676, 30.295023, 18.156546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481602, 29.510050, 18.013817>,  <33.153721, 29.818060, 18.049498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481602, 29.510050, 18.013817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443596, 29.901537, 17.941057>,  <32.420792, 30.136429, 17.897402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443596, 29.901537, 17.941057>,  <32.481602, 29.510050, 18.013817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443596, 29.901537, 17.941057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620905, -0.201092, -0.757654,
		-0.778106, 0.040957, 0.626796,
		-0.095012, 0.978716, -0.181901,
		32.415092, 30.195152, 17.886486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825239, 29.586882, 17.770294>,  <32.481602, 29.510050, 18.013817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825239, 29.586882, 17.770294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991371, 29.928076, 17.643856>,  <32.091049, 30.132793, 17.567993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991371, 29.928076, 17.643856>,  <31.825239, 29.586882, 17.770294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991371, 29.928076, 17.643856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462591, -0.101154, -0.880782,
		-0.783270, 0.512036, 0.352572,
		0.415328, 0.852987, -0.316094,
		32.115971, 30.183971, 17.549028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279354, 29.933212, 17.352327>,  <31.825239, 29.586882, 17.770294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279354, 29.933212, 17.352327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613855, 30.123472, 17.243196>,  <31.814556, 30.237629, 17.177717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613855, 30.123472, 17.243196>,  <31.279354, 29.933212, 17.352327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613855, 30.123472, 17.243196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319921, 0.019131, -0.947251,
		-0.445341, 0.879426, 0.168169,
		0.836255, 0.475650, -0.272827,
		31.864731, 30.266167, 17.161348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608875, 30.337828, 17.548483>,  <31.279354, 29.933212, 17.352327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608875, 30.337828, 17.548483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.231590, 30.206236, 17.566927>,  <30.005220, 30.127281, 17.577993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.231590, 30.206236, 17.566927>,  <30.608875, 30.337828, 17.548483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231590, 30.206236, 17.566927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081875, -0.095698, 0.992037,
		-0.321948, 0.939475, 0.117198,
		-0.943211, -0.328980, 0.046110,
		29.948627, 30.107542, 17.580759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208466, 30.530310, 18.185205>,  <30.608875, 30.337828, 17.548483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208466, 30.530310, 18.185205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995577, 30.209972, 18.075377>,  <29.867844, 30.017771, 18.009480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995577, 30.209972, 18.075377>,  <30.208466, 30.530310, 18.185205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995577, 30.209972, 18.075377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027862, -0.307580, 0.951114,
		-0.846146, 0.513855, 0.141388,
		-0.532223, -0.800842, -0.274574,
		29.835911, 29.969719, 17.993004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585516, 30.587618, 18.591982>,  <30.208466, 30.530310, 18.185205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585516, 30.587618, 18.591982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671045, 30.213596, 18.478874>,  <29.722363, 29.989183, 18.411011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.671045, 30.213596, 18.478874>,  <29.585516, 30.587618, 18.591982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671045, 30.213596, 18.478874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036665, -0.281576, 0.958838,
		-0.976184, -0.215387, -0.025923,
		0.213821, -0.935052, -0.282767,
		29.735191, 29.933081, 18.394045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077187, 30.191875, 18.913956>,  <29.585516, 30.587618, 18.591982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077187, 30.191875, 18.913956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379410, 29.943922, 18.829220>,  <29.560743, 29.795151, 18.778379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379410, 29.943922, 18.829220>,  <29.077187, 30.191875, 18.913956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379410, 29.943922, 18.829220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016584, -0.305174, 0.952152,
		-0.654871, -0.722920, -0.220297,
		0.755559, -0.619883, -0.211839,
		29.606077, 29.757957, 18.765669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934877, 29.668940, 19.342493>,  <29.077187, 30.191875, 18.913956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934877, 29.668940, 19.342493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319727, 29.622562, 19.243803>,  <29.550636, 29.594736, 19.184589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319727, 29.622562, 19.243803>,  <28.934877, 29.668940, 19.342493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319727, 29.622562, 19.243803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220778, -0.199517, 0.954699,
		-0.159914, -0.973011, -0.166363,
		0.962125, -0.115941, -0.246725,
		29.608364, 29.587778, 19.169785>
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
