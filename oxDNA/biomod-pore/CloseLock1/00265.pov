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
	<24.377081, 35.253296, 34.979588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685968, 35.025940, 35.093159>,  <24.871300, 34.889526, 35.161301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685968, 35.025940, 35.093159>,  <24.377081, 35.253296, 34.979588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685968, 35.025940, 35.093159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634031, 0.718251, -0.286566,
		-0.041051, 0.401311, 0.915022,
		0.772217, -0.568388, 0.283929,
		24.917633, 34.855423, 35.178337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879478, 35.586071, 35.465347>,  <24.377081, 35.253296, 34.979588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879478, 35.586071, 35.465347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071402, 35.291519, 35.274551>,  <25.186556, 35.114788, 35.160072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071402, 35.291519, 35.274551>,  <24.879478, 35.586071, 35.465347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071402, 35.291519, 35.274551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754796, 0.623605, -0.203469,
		0.447287, -0.262407, 0.855030,
		0.479809, -0.736383, -0.476994,
		25.215343, 35.070606, 35.131454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519478, 35.460785, 35.800610>,  <24.879478, 35.586071, 35.465347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519478, 35.460785, 35.800610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505276, 35.403767, 35.404949>,  <25.496756, 35.369556, 35.167553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505276, 35.403767, 35.404949>,  <25.519478, 35.460785, 35.800610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505276, 35.403767, 35.404949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773795, 0.622447, -0.117475,
		0.632440, -0.769571, 0.088202,
		-0.035504, -0.142546, -0.989151,
		25.494625, 35.361004, 35.108204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124636, 35.200050, 35.572094>,  <25.519478, 35.460785, 35.800610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124636, 35.200050, 35.572094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947433, 35.438763, 35.304482>,  <25.841112, 35.581989, 35.143913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947433, 35.438763, 35.304482>,  <26.124636, 35.200050, 35.572094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947433, 35.438763, 35.304482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807466, 0.589853, -0.008520,
		0.389544, -0.543992, -0.743188,
		-0.443006, 0.596780, -0.669028,
		25.814531, 35.617798, 35.103771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781536, 35.078114, 36.000092>,  <26.124636, 35.200050, 35.572094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781536, 35.078114, 36.000092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729132, 34.885830, 36.346909>,  <26.697689, 34.770458, 36.554996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729132, 34.885830, 36.346909>,  <26.781536, 35.078114, 36.000092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729132, 34.885830, 36.346909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748276, 0.525753, 0.404558,
		-0.650322, 0.701785, 0.290824,
		-0.131011, -0.480709, 0.867038,
		26.689829, 34.741615, 36.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712521, 35.529034, 36.687698>,  <26.781536, 35.078114, 36.000092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712521, 35.529034, 36.687698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892412, 35.175621, 36.740025>,  <27.000347, 34.963573, 36.771420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892412, 35.175621, 36.740025>,  <26.712521, 35.529034, 36.687698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892412, 35.175621, 36.740025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747722, 0.452541, 0.485920,
		-0.488526, -0.120718, 0.864158,
		0.449727, -0.883535, 0.130814,
		27.027330, 34.910561, 36.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738522, 35.267719, 37.468586>,  <26.712521, 35.529034, 36.687698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738522, 35.267719, 37.468586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042618, 35.211357, 37.214916>,  <27.225075, 35.177540, 37.062714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042618, 35.211357, 37.214916>,  <26.738522, 35.267719, 37.468586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042618, 35.211357, 37.214916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488993, 0.766799, 0.415818,
		0.427695, -0.626230, 0.651854,
		0.760239, -0.140908, -0.634178,
		27.270689, 35.169086, 37.024662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415270, 35.327900, 37.849545>,  <26.738522, 35.267719, 37.468586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415270, 35.327900, 37.849545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556740, 35.362213, 37.476974>,  <27.641623, 35.382801, 37.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556740, 35.362213, 37.476974>,  <27.415270, 35.327900, 37.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556740, 35.362213, 37.476974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595469, 0.747283, 0.294933,
		0.721339, -0.658946, 0.213214,
		0.353676, 0.085784, -0.931426,
		27.662842, 35.387947, 37.197548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124592, 35.318413, 37.943661>,  <27.415270, 35.327900, 37.849545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124592, 35.318413, 37.943661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074184, 35.474957, 37.579033>,  <28.043940, 35.568882, 37.360256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074184, 35.474957, 37.579033>,  <28.124592, 35.318413, 37.943661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074184, 35.474957, 37.579033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572698, 0.779006, 0.255276,
		0.810022, -0.489883, -0.322303,
		-0.126020, 0.391361, -0.911568,
		28.036379, 35.592365, 37.305561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842236, 35.559418, 37.850254>,  <28.124592, 35.318413, 37.943661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842236, 35.559418, 37.850254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582153, 35.746414, 37.610691>,  <28.426104, 35.858612, 37.466953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582153, 35.746414, 37.610691>,  <28.842236, 35.559418, 37.850254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582153, 35.746414, 37.610691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549050, 0.833984, 0.054903,
		0.525142, -0.293129, -0.798938,
		-0.650207, 0.467489, -0.598903,
		28.387091, 35.886662, 37.431019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234060, 35.957226, 37.430431>,  <28.842236, 35.559418, 37.850254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234060, 35.957226, 37.430431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877743, 36.134335, 37.389553>,  <28.663952, 36.240601, 37.365028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877743, 36.134335, 37.389553>,  <29.234060, 35.957226, 37.430431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877743, 36.134335, 37.389553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422730, 0.889963, 0.171070,
		0.166693, 0.109188, -0.979945,
		-0.890793, 0.442768, -0.102193,
		28.610504, 36.267166, 37.358894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322868, 36.594776, 37.121410>,  <29.234060, 35.957226, 37.430431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322868, 36.594776, 37.121410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956648, 36.680397, 37.257614>,  <28.736916, 36.731770, 37.339336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956648, 36.680397, 37.257614>,  <29.322868, 36.594776, 37.121410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956648, 36.680397, 37.257614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249077, 0.966487, 0.062164,
		-0.315792, 0.141727, -0.938184,
		-0.915552, 0.214049, 0.340510,
		28.681982, 36.744610, 37.359768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068609, 37.200325, 36.726780>,  <29.322868, 36.594776, 37.121410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068609, 37.200325, 36.726780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828657, 37.193794, 37.046749>,  <28.684685, 37.189877, 37.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828657, 37.193794, 37.046749>,  <29.068609, 37.200325, 36.726780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828657, 37.193794, 37.046749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206121, 0.962891, 0.174226,
		-0.773082, 0.269396, -0.574256,
		-0.599882, -0.016325, 0.799922,
		28.648693, 37.188896, 37.286724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756117, 37.795124, 36.783867>,  <29.068609, 37.200325, 36.726780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756117, 37.795124, 36.783867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743298, 37.687298, 37.168846>,  <28.735605, 37.622601, 37.399834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743298, 37.687298, 37.168846>,  <28.756117, 37.795124, 36.783867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743298, 37.687298, 37.168846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323203, 0.908412, 0.265192,
		-0.945787, 0.319565, 0.058011,
		-0.032049, -0.269565, 0.962449,
		28.733683, 37.606430, 37.457581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422602, 38.328606, 37.009090>,  <28.756117, 37.795124, 36.783867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422602, 38.328606, 37.009090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608370, 38.154476, 37.317585>,  <28.719831, 38.049999, 37.502682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608370, 38.154476, 37.317585>,  <28.422602, 38.328606, 37.009090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608370, 38.154476, 37.317585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333495, 0.892709, 0.303070,
		-0.820423, 0.116451, 0.559773,
		0.464421, -0.435327, 0.771235,
		28.747696, 38.023876, 37.548954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252893, 38.787643, 37.596191>,  <28.422602, 38.328606, 37.009090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252893, 38.787643, 37.596191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574924, 38.580238, 37.711430>,  <28.768143, 38.455795, 37.780571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574924, 38.580238, 37.711430>,  <28.252893, 38.787643, 37.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574924, 38.580238, 37.711430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353185, 0.809226, 0.469482,
		-0.476565, -0.276219, 0.834619,
		0.805075, -0.518514, 0.288092,
		28.816446, 38.424683, 37.797855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449856, 39.099133, 38.235325>,  <28.252893, 38.787643, 37.596191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449856, 39.099133, 38.235325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779968, 38.887642, 38.155964>,  <28.978035, 38.760750, 38.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779968, 38.887642, 38.155964>,  <28.449856, 39.099133, 38.235325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779968, 38.887642, 38.155964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557870, 0.708724, 0.431846,
		-0.087712, -0.467078, 0.879855,
		0.825280, -0.528722, -0.198405,
		29.027552, 38.729027, 38.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746386, 38.964249, 38.917057>,  <28.449856, 39.099133, 38.235325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746386, 38.964249, 38.917057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016586, 38.951942, 38.622372>,  <29.178707, 38.944557, 38.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016586, 38.951942, 38.622372>,  <28.746386, 38.964249, 38.917057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016586, 38.951942, 38.622372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572141, 0.652132, 0.497371,
		0.465134, -0.757481, 0.458119,
		0.675504, -0.030765, -0.736715,
		29.219236, 38.942715, 38.401356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406239, 39.093578, 39.260635>,  <28.746386, 38.964249, 38.917057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406239, 39.093578, 39.260635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456747, 39.158752, 38.869225>,  <29.487051, 39.197857, 38.634380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456747, 39.158752, 38.869225>,  <29.406239, 39.093578, 39.260635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456747, 39.158752, 38.869225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599831, 0.773118, 0.206136,
		0.790101, -0.612977, -0.000113,
		0.126269, 0.162936, -0.978523,
		29.494627, 39.207634, 38.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193272, 39.160507, 39.204166>,  <29.406239, 39.093578, 39.260635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193272, 39.160507, 39.204166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033543, 39.324055, 38.875931>,  <29.937704, 39.422184, 38.678989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033543, 39.324055, 38.875931>,  <30.193272, 39.160507, 39.204166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033543, 39.324055, 38.875931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579496, 0.806142, 0.119667,
		0.710439, -0.427742, -0.558850,
		-0.399325, 0.408867, -0.820589,
		29.913746, 39.446716, 38.629753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786728, 39.387016, 38.864452>,  <30.193272, 39.160507, 39.204166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786728, 39.387016, 38.864452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476452, 39.607155, 38.740894>,  <30.290285, 39.739239, 38.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476452, 39.607155, 38.740894>,  <30.786728, 39.387016, 38.864452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476452, 39.607155, 38.740894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543320, 0.831357, 0.116826,
		0.321099, -0.077209, -0.943893,
		-0.775693, 0.550349, -0.308897,
		30.243744, 39.772259, 38.648224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062963, 39.696835, 38.321644>,  <30.786728, 39.387016, 38.864452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062963, 39.696835, 38.321644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759521, 39.937874, 38.420753>,  <30.577457, 40.082497, 38.480221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759521, 39.937874, 38.420753>,  <31.062963, 39.696835, 38.321644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759521, 39.937874, 38.420753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630692, 0.774603, 0.047091,
		-0.163549, 0.191992, -0.967673,
		-0.758604, 0.602602, 0.247773,
		30.531940, 40.118656, 38.495087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112909, 40.247383, 37.787746>,  <31.062963, 39.696835, 38.321644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112909, 40.247383, 37.787746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917093, 40.397949, 38.102367>,  <30.799604, 40.488289, 38.291142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917093, 40.397949, 38.102367>,  <31.112909, 40.247383, 37.787746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917093, 40.397949, 38.102367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383985, 0.902919, -0.193112,
		-0.782883, 0.207488, -0.586551,
		-0.489540, 0.376411, 0.786553,
		30.770231, 40.510872, 38.338333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785608, 40.874573, 37.449425>,  <31.112909, 40.247383, 37.787746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785608, 40.874573, 37.449425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802698, 40.916691, 37.846832>,  <30.812952, 40.941963, 38.085278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802698, 40.916691, 37.846832>,  <30.785608, 40.874573, 37.449425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802698, 40.916691, 37.846832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545792, 0.830471, -0.111486,
		-0.836830, 0.547020, -0.021986,
		0.042727, 0.105295, 0.993523,
		30.815516, 40.948280, 38.144890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606491, 41.613079, 37.583122>,  <30.785608, 40.874573, 37.449425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606491, 41.613079, 37.583122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804804, 41.481052, 37.904434>,  <30.923792, 41.401836, 38.097221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804804, 41.481052, 37.904434>,  <30.606491, 41.613079, 37.583122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804804, 41.481052, 37.904434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536601, 0.843694, 0.015483,
		-0.682832, 0.423364, 0.595401,
		0.495782, -0.330065, 0.803279,
		30.953539, 41.382034, 38.145416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414532, 42.053768, 38.188908>,  <30.606491, 41.613079, 37.583122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414532, 42.053768, 38.188908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787113, 41.915424, 38.234116>,  <31.010662, 41.832417, 38.261242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787113, 41.915424, 38.234116>,  <30.414532, 42.053768, 38.188908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787113, 41.915424, 38.234116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359015, 0.924107, -0.130898,
		-0.059171, 0.162501, 0.984932,
		0.931454, -0.345860, 0.113021,
		31.066549, 41.811665, 38.268021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803852, 42.299065, 38.814461>,  <30.414532, 42.053768, 38.188908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803852, 42.299065, 38.814461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075659, 42.198864, 38.538631>,  <31.238743, 42.138744, 38.373135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075659, 42.198864, 38.538631>,  <30.803852, 42.299065, 38.814461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075659, 42.198864, 38.538631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415020, 0.906312, 0.079734,
		0.604992, -0.340366, 0.719817,
		0.679517, -0.250500, -0.689570,
		31.279514, 42.123714, 38.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726059, 43.024876, 38.599785>,  <30.803852, 42.299065, 38.814461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726059, 43.024876, 38.599785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827911, 42.961395, 38.981358>,  <30.889023, 42.923306, 39.210300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827911, 42.961395, 38.981358>,  <30.726059, 43.024876, 38.599785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827911, 42.961395, 38.981358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964010, 0.119667, -0.237411,
		-0.076475, 0.980047, 0.183464,
		0.254629, -0.158705, 0.953927,
		30.904301, 42.913784, 39.267536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089020, 43.659924, 38.914368>,  <30.726059, 43.024876, 38.599785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089020, 43.659924, 38.914368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166677, 43.281448, 39.017933>,  <31.213272, 43.054363, 39.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166677, 43.281448, 39.017933>,  <31.089020, 43.659924, 38.914368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166677, 43.281448, 39.017933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914806, 0.079336, -0.396026,
		0.354173, 0.313742, 0.880981,
		0.194144, -0.946188, 0.258914,
		31.224920, 42.997593, 39.095608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710249, 43.689632, 39.361946>,  <31.089020, 43.659924, 38.914368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710249, 43.689632, 39.361946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672598, 43.353756, 39.148006>,  <31.650007, 43.152229, 39.019642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672598, 43.353756, 39.148006>,  <31.710249, 43.689632, 39.361946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672598, 43.353756, 39.148006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938018, 0.105198, -0.330235,
		0.333559, -0.532784, 0.777740,
		-0.094127, -0.839687, -0.534851,
		31.644360, 43.101849, 38.987553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316341, 43.216995, 39.502735>,  <31.710249, 43.689632, 39.361946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316341, 43.216995, 39.502735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223820, 43.179428, 39.115398>,  <32.168304, 43.156887, 38.882996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223820, 43.179428, 39.115398>,  <32.316341, 43.216995, 39.502735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223820, 43.179428, 39.115398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942134, 0.226629, -0.247027,
		0.242653, -0.969443, 0.036059,
		-0.231307, -0.093914, -0.968337,
		32.154427, 43.151253, 38.824898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662346, 42.583977, 39.113174>,  <32.316341, 43.216995, 39.502735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662346, 42.583977, 39.113174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579803, 42.931442, 38.933022>,  <32.530277, 43.139923, 38.824932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579803, 42.931442, 38.933022>,  <32.662346, 42.583977, 39.113174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579803, 42.931442, 38.933022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973764, 0.137198, -0.181550,
		-0.095915, -0.476028, -0.874184,
		-0.206359, 0.868662, -0.450379,
		32.517895, 43.192039, 38.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042290, 42.599892, 38.485245>,  <32.662346, 42.583977, 39.113174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042290, 42.599892, 38.485245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024979, 42.999203, 38.469421>,  <33.014591, 43.238789, 38.459927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024979, 42.999203, 38.469421>,  <33.042290, 42.599892, 38.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024979, 42.999203, 38.469421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996682, 0.040408, -0.070659,
		-0.068939, -0.042481, -0.996716,
		-0.043277, 0.998280, -0.039554,
		33.011997, 43.298687, 38.457554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516838, 42.724144, 37.974209>,  <33.042290, 42.599892, 38.485245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516838, 42.724144, 37.974209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494728, 43.040829, 38.217567>,  <33.481464, 43.230839, 38.363583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494728, 43.040829, 38.217567>,  <33.516838, 42.724144, 37.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494728, 43.040829, 38.217567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993172, 0.106286, -0.048081,
		-0.102730, 0.601582, -0.792178,
		-0.055273, 0.791709, 0.608393,
		33.478146, 43.278343, 38.400085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411427, 42.119484, 37.631432>,  <33.516838, 42.724144, 37.974209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411427, 42.119484, 37.631432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589611, 41.919376, 37.928429>,  <33.696522, 41.799313, 38.106628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589611, 41.919376, 37.928429>,  <33.411427, 42.119484, 37.631432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589611, 41.919376, 37.928429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087125, -0.801167, -0.592065,
		0.891053, 0.328431, -0.313301,
		0.445458, -0.500265, 0.742497,
		33.723248, 41.769299, 38.151176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907066, 41.676685, 37.372040>,  <33.411427, 42.119484, 37.631432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907066, 41.676685, 37.372040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783943, 41.525925, 37.721485>,  <33.710072, 41.435467, 37.931152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783943, 41.525925, 37.721485>,  <33.907066, 41.676685, 37.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783943, 41.525925, 37.721485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186597, -0.876449, -0.443868,
		0.932972, -0.299639, 0.199447,
		-0.307806, -0.376901, 0.873614,
		33.691601, 41.412853, 37.983570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269005, 41.050961, 37.378265>,  <33.907066, 41.676685, 37.372040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269005, 41.050961, 37.378265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970173, 40.995163, 37.638237>,  <33.790874, 40.961685, 37.794220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970173, 40.995163, 37.638237>,  <34.269005, 41.050961, 37.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970173, 40.995163, 37.638237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092990, -0.946189, -0.309965,
		0.658197, -0.292006, 0.693909,
		-0.747081, -0.139491, 0.649932,
		33.746048, 40.953316, 37.833218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389267, 40.409531, 37.671616>,  <34.269005, 41.050961, 37.378265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389267, 40.409531, 37.671616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004269, 40.484997, 37.749596>,  <33.773270, 40.530277, 37.796383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004269, 40.484997, 37.749596>,  <34.389267, 40.409531, 37.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004269, 40.484997, 37.749596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230644, -0.947403, -0.221879,
		0.142840, -0.258523, 0.955386,
		-0.962497, 0.188661, 0.194953,
		33.715519, 40.541595, 37.808083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168213, 39.920677, 38.166931>,  <34.389267, 40.409531, 37.671616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168213, 39.920677, 38.166931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845737, 40.055168, 37.972195>,  <33.652252, 40.135860, 37.855350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845737, 40.055168, 37.972195>,  <34.168213, 39.920677, 38.166931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845737, 40.055168, 37.972195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254286, -0.939867, -0.228009,
		-0.534231, -0.060020, 0.843205,
		-0.806186, 0.336224, -0.486844,
		33.603882, 40.156036, 37.826141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525002, 39.372742, 38.276978>,  <34.168213, 39.920677, 38.166931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525002, 39.372742, 38.276978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470013, 39.602966, 37.954529>,  <33.437019, 39.741100, 37.761059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470013, 39.602966, 37.954529>,  <33.525002, 39.372742, 38.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470013, 39.602966, 37.954529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484436, -0.748939, -0.452119,
		-0.863959, 0.328364, 0.381776,
		-0.137467, 0.575558, -0.806124,
		33.428772, 39.775635, 37.712692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866180, 39.134102, 38.063759>,  <33.525002, 39.372742, 38.276978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866180, 39.134102, 38.063759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003353, 39.345112, 37.752861>,  <33.085659, 39.471718, 37.566322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003353, 39.345112, 37.752861>,  <32.866180, 39.134102, 38.063759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003353, 39.345112, 37.752861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492573, -0.603557, -0.626970,
		-0.799855, 0.597860, 0.052864,
		0.342934, 0.527525, -0.777248,
		33.106232, 39.503368, 37.519688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296700, 39.255146, 37.691269>,  <32.866180, 39.134102, 38.063759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296700, 39.255146, 37.691269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618942, 39.260891, 37.454357>,  <32.812286, 39.264339, 37.312210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618942, 39.260891, 37.454357>,  <32.296700, 39.255146, 37.691269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618942, 39.260891, 37.454357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427042, -0.678857, -0.597317,
		-0.410655, 0.734130, -0.540755,
		0.805604, 0.014366, -0.592281,
		32.860622, 39.265202, 37.276672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957201, 39.327579, 36.986664>,  <32.296700, 39.255146, 37.691269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957201, 39.327579, 36.986664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325150, 39.177326, 36.941528>,  <32.545918, 39.087173, 36.914448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325150, 39.177326, 36.941528>,  <31.957201, 39.327579, 36.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325150, 39.177326, 36.941528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359321, -0.691741, -0.626405,
		0.157244, 0.616759, -0.771287,
		0.919871, -0.375638, -0.112842,
		32.601112, 39.064636, 36.907677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988382, 39.128811, 36.281410>,  <31.957201, 39.327579, 36.986664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988382, 39.128811, 36.281410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281246, 38.922218, 36.459034>,  <32.456966, 38.798264, 36.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281246, 38.922218, 36.459034>,  <31.988382, 39.128811, 36.281410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281246, 38.922218, 36.459034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309349, -0.832967, -0.458769,
		0.606832, 0.198523, -0.769639,
		0.732160, -0.516482, 0.444058,
		32.500893, 38.767273, 36.592251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274879, 38.760784, 35.780148>,  <31.988382, 39.128811, 36.281410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274879, 38.760784, 35.780148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419903, 38.567650, 36.098999>,  <32.506916, 38.451767, 36.290310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419903, 38.567650, 36.098999>,  <32.274879, 38.760784, 35.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419903, 38.567650, 36.098999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225462, -0.875362, -0.427677,
		0.904276, -0.024663, -0.426235,
		0.362562, -0.482838, 0.797130,
		32.528671, 38.422798, 36.338139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734852, 38.195038, 35.522736>,  <32.274879, 38.760784, 35.780148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734852, 38.195038, 35.522736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643311, 38.066414, 35.890263>,  <32.588387, 37.989239, 36.110779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643311, 38.066414, 35.890263>,  <32.734852, 38.195038, 35.522736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643311, 38.066414, 35.890263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139593, -0.923271, -0.357888,
		0.963400, -0.210165, 0.166407,
		-0.228855, -0.321560, 0.918817,
		32.574654, 37.969944, 36.165909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022404, 37.500851, 35.575443>,  <32.734852, 38.195038, 35.522736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022404, 37.500851, 35.575443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740871, 37.498661, 35.859581>,  <32.571953, 37.497349, 36.030064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740871, 37.498661, 35.859581>,  <33.022404, 37.500851, 35.575443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740871, 37.498661, 35.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353265, -0.864858, -0.356686,
		0.616301, -0.501988, 0.606780,
		-0.703830, -0.005472, 0.710347,
		32.529724, 37.497021, 36.072685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046146, 36.875656, 35.914875>,  <33.022404, 37.500851, 35.575443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046146, 36.875656, 35.914875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666321, 36.969242, 35.998394>,  <32.438427, 37.025394, 36.048504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666321, 36.969242, 35.998394>,  <33.046146, 36.875656, 35.914875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666321, 36.969242, 35.998394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277093, -0.937756, -0.209363,
		0.146818, -0.256659, 0.955286,
		-0.949560, 0.233965, 0.208798,
		32.381454, 37.039433, 36.061035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770172, 36.328537, 36.365967>,  <33.046146, 36.875656, 35.914875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770172, 36.328537, 36.365967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441574, 36.515854, 36.235825>,  <32.244415, 36.628242, 36.157738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441574, 36.515854, 36.235825>,  <32.770172, 36.328537, 36.365967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441574, 36.515854, 36.235825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495802, -0.868433, 0.001894,
		-0.281661, 0.162867, 0.945590,
		-0.821491, 0.468292, -0.325354,
		32.195126, 36.656342, 36.138218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276649, 35.995781, 36.751942>,  <32.770172, 36.328537, 36.365967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276649, 35.995781, 36.751942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082638, 36.147224, 36.436626>,  <31.966230, 36.238091, 36.247437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082638, 36.147224, 36.436626>,  <32.276649, 35.995781, 36.751942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082638, 36.147224, 36.436626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551925, -0.831741, -0.059886,
		-0.678325, 0.406029, 0.612385,
		-0.485030, 0.378613, -0.788288,
		31.937128, 36.260807, 36.200142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628242, 35.803619, 36.839714>,  <32.276649, 35.995781, 36.751942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628242, 35.803619, 36.839714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646282, 35.877621, 36.447033>,  <31.657106, 35.922020, 36.211426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646282, 35.877621, 36.447033>,  <31.628242, 35.803619, 36.839714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646282, 35.877621, 36.447033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768922, -0.620928, -0.152337,
		-0.637750, 0.761723, 0.114249,
		0.045098, 0.185002, -0.981703,
		31.659811, 35.933121, 36.152523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926546, 35.876053, 36.627747>,  <31.628242, 35.803619, 36.839714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926546, 35.876053, 36.627747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096937, 35.837395, 36.267925>,  <31.199171, 35.814201, 36.052032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096937, 35.837395, 36.267925>,  <30.926546, 35.876053, 36.627747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096937, 35.837395, 36.267925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754864, -0.586048, -0.294496,
		-0.498723, 0.804492, -0.322596,
		0.425977, -0.096645, -0.899557,
		31.224730, 35.808403, 35.998058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296843, 35.927456, 36.197342>,  <30.926546, 35.876053, 36.627747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296843, 35.927456, 36.197342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598381, 35.774883, 35.983341>,  <30.779305, 35.683338, 35.854942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598381, 35.774883, 35.983341>,  <30.296843, 35.927456, 36.197342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598381, 35.774883, 35.983341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653313, -0.521888, -0.548466,
		-0.070007, 0.762981, -0.642619,
		0.753844, -0.381435, -0.535001,
		30.824533, 35.660454, 35.822842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073093, 36.047287, 35.558533>,  <30.296843, 35.927456, 36.197342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073093, 36.047287, 35.558533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318642, 35.731956, 35.575062>,  <30.465971, 35.542759, 35.584980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318642, 35.731956, 35.575062>,  <30.073093, 36.047287, 35.558533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318642, 35.731956, 35.575062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693239, -0.563389, -0.449459,
		0.377598, 0.247266, -0.892345,
		0.613873, -0.788323, 0.041321,
		30.502804, 35.495461, 35.587460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055855, 35.744675, 34.926498>,  <30.073093, 36.047287, 35.558533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055855, 35.744675, 34.926498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190384, 35.460297, 35.173542>,  <30.271101, 35.289669, 35.321770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190384, 35.460297, 35.173542>,  <30.055855, 35.744675, 34.926498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190384, 35.460297, 35.173542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708445, -0.623089, -0.331461,
		0.620477, -0.326065, -0.713224,
		0.336324, -0.710944, 0.617612,
		30.291281, 35.247013, 35.358826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145205, 35.206646, 34.511135>,  <30.055855, 35.744675, 34.926498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145205, 35.206646, 34.511135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110548, 35.050415, 34.877728>,  <30.089754, 34.956676, 35.097683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110548, 35.050415, 34.877728>,  <30.145205, 35.206646, 34.511135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110548, 35.050415, 34.877728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628421, -0.692405, -0.354489,
		0.773033, -0.606652, -0.185454,
		-0.086642, -0.390575, 0.916484,
		30.084555, 34.933243, 35.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361803, 34.446423, 34.528202>,  <30.145205, 35.206646, 34.511135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361803, 34.446423, 34.528202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112164, 34.525921, 34.830460>,  <29.962379, 34.573620, 35.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112164, 34.525921, 34.830460>,  <30.361803, 34.446423, 34.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112164, 34.525921, 34.830460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616998, -0.718720, -0.320555,
		0.479390, -0.666291, 0.571176,
		-0.624099, 0.198743, 0.755647,
		29.924934, 34.585545, 35.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854860, 33.972122, 34.161938>,  <30.361803, 34.446423, 34.528202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854860, 33.972122, 34.161938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048044, 34.312702, 34.243710>,  <31.163954, 34.517048, 34.292774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048044, 34.312702, 34.243710>,  <30.854860, 33.972122, 34.161938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048044, 34.312702, 34.243710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546235, -0.475419, 0.689640,
		0.684381, -0.221400, -0.694697,
		0.482958, 0.851445, 0.204431,
		31.192932, 34.568134, 34.305038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618313, 33.927891, 33.971783>,  <30.854860, 33.972122, 34.161938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618313, 33.927891, 33.971783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532280, 34.173115, 34.275860>,  <31.480661, 34.320251, 34.458305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532280, 34.173115, 34.275860>,  <31.618313, 33.927891, 33.971783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532280, 34.173115, 34.275860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692807, -0.452838, 0.561210,
		0.688302, 0.647372, -0.327338,
		-0.215080, 0.613064, 0.760193,
		31.467756, 34.357033, 34.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996424, 33.585629, 34.506474>,  <31.618313, 33.927891, 33.971783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996424, 33.585629, 34.506474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899273, 33.949009, 34.642544>,  <31.840982, 34.167038, 34.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899273, 33.949009, 34.642544>,  <31.996424, 33.585629, 34.506474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899273, 33.949009, 34.642544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398005, -0.226482, 0.888987,
		0.884648, 0.351308, -0.306562,
		-0.242878, 0.908454, 0.340179,
		31.826410, 34.221546, 34.744598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506031, 33.928940, 35.018559>,  <31.996424, 33.585629, 34.506474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506031, 33.928940, 35.018559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192642, 34.170628, 35.076645>,  <32.004608, 34.315639, 35.111496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192642, 34.170628, 35.076645>,  <32.506031, 33.928940, 35.018559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192642, 34.170628, 35.076645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219383, 0.050300, 0.974341,
		0.581412, 0.795229, -0.171964,
		-0.783474, 0.604219, 0.145215,
		31.957600, 34.351894, 35.120209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644390, 34.425285, 35.470936>,  <32.506031, 33.928940, 35.018559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644390, 34.425285, 35.470936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248161, 34.398804, 35.518917>,  <32.010426, 34.382915, 35.547707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248161, 34.398804, 35.518917>,  <32.644390, 34.425285, 35.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248161, 34.398804, 35.518917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123865, -0.058560, 0.990570,
		-0.058560, 0.996086, 0.066208,
		-0.990570, -0.066208, 0.119951,
		31.950991, 34.378941, 35.554901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338062, 34.961136, 35.953907>,  <32.644390, 34.425285, 35.470936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338062, 34.961136, 35.953907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133781, 34.617241, 35.956429>,  <32.011211, 34.410904, 35.957943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133781, 34.617241, 35.956429>,  <32.338062, 34.961136, 35.953907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133781, 34.617241, 35.956429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035667, 0.028515, 0.998957,
		-0.859018, 0.509943, -0.045227,
		-0.510701, -0.859735, 0.006307,
		31.980572, 34.359322, 35.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767334, 35.009644, 36.467854>,  <32.338062, 34.961136, 35.953907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767334, 35.009644, 36.467854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918457, 34.646141, 36.396954>,  <32.009132, 34.428040, 36.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918457, 34.646141, 36.396954>,  <31.767334, 35.009644, 36.467854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918457, 34.646141, 36.396954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175712, -0.117590, 0.977393,
		-0.909057, -0.400414, 0.115253,
		0.377809, -0.908758, -0.177253,
		32.031799, 34.373512, 36.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302422, 34.486263, 36.706005>,  <31.767334, 35.009644, 36.467854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302422, 34.486263, 36.706005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693565, 34.402622, 36.709225>,  <31.928251, 34.352440, 36.711155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693565, 34.402622, 36.709225>,  <31.302422, 34.486263, 36.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693565, 34.402622, 36.709225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032411, -0.113350, 0.993026,
		-0.206731, -0.971303, -0.117617,
		0.977861, -0.209102, 0.008048,
		31.986923, 34.339893, 36.711639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384584, 33.947006, 37.150047>,  <31.302422, 34.486263, 36.706005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384584, 33.947006, 37.150047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756584, 34.092678, 37.130146>,  <31.979784, 34.180080, 37.118206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756584, 34.092678, 37.130146>,  <31.384584, 33.947006, 37.150047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756584, 34.092678, 37.130146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132778, -0.206638, 0.969366,
		0.342744, -0.908115, -0.240529,
		0.929998, 0.364181, -0.049754,
		32.035583, 34.201931, 37.115219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905293, 33.405773, 37.422482>,  <31.384584, 33.947006, 37.150047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905293, 33.405773, 37.422482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076637, 33.764614, 37.465782>,  <32.179443, 33.979919, 37.491760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076637, 33.764614, 37.465782>,  <31.905293, 33.405773, 37.422482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076637, 33.764614, 37.465782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125539, -0.177719, 0.976041,
		0.894844, -0.404509, -0.188748,
		0.428362, 0.897100, 0.108249,
		32.205147, 34.033745, 37.498257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615116, 33.358944, 37.741261>,  <31.905293, 33.405773, 37.422482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615116, 33.358944, 37.741261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500984, 33.735027, 37.815655>,  <32.432503, 33.960678, 37.860291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500984, 33.735027, 37.815655>,  <32.615116, 33.358944, 37.741261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500984, 33.735027, 37.815655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294721, -0.098573, 0.950485,
		0.911989, 0.326017, -0.248974,
		-0.285333, 0.940211, 0.185982,
		32.415386, 34.017090, 37.871449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953983, 33.422264, 38.380337>,  <32.615116, 33.358944, 37.741261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953983, 33.422264, 38.380337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759384, 33.771736, 38.379303>,  <32.642624, 33.981419, 38.378681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759384, 33.771736, 38.379303>,  <32.953983, 33.422264, 38.380337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759384, 33.771736, 38.379303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001550, 0.002096, 0.999997,
		0.873681, 0.486498, 0.000335,
		-0.486496, 0.873679, -0.002586,
		32.613434, 34.033840, 38.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339382, 33.902569, 38.738125>,  <32.953983, 33.422264, 38.380337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339382, 33.902569, 38.738125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967567, 34.049877, 38.745464>,  <32.744480, 34.138264, 38.749866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967567, 34.049877, 38.745464>,  <33.339382, 33.902569, 38.738125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967567, 34.049877, 38.745464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054830, 0.088842, 0.994536,
		0.364627, 0.925465, -0.102774,
		-0.929538, 0.368270, 0.018349,
		32.688705, 34.160358, 38.750969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315861, 34.571938, 39.077866>,  <33.339382, 33.902569, 38.738125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315861, 34.571938, 39.077866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943794, 34.428867, 39.111015>,  <32.720554, 34.343025, 39.130905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943794, 34.428867, 39.111015>,  <33.315861, 34.571938, 39.077866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943794, 34.428867, 39.111015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100801, -0.031729, 0.994401,
		-0.353041, 0.933308, 0.065567,
		-0.930162, -0.357673, 0.082877,
		32.664745, 34.321564, 39.135880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129211, 34.947414, 39.603359>,  <33.315861, 34.571938, 39.077866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129211, 34.947414, 39.603359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855339, 34.657211, 39.575466>,  <32.691017, 34.483089, 39.558731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855339, 34.657211, 39.575466>,  <33.129211, 34.947414, 39.603359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855339, 34.657211, 39.575466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040902, -0.133770, 0.990168,
		-0.727698, 0.675093, 0.121264,
		-0.684677, -0.725503, -0.069732,
		32.649937, 34.439560, 39.554546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691368, 35.056637, 40.216320>,  <33.129211, 34.947414, 39.603359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691368, 35.056637, 40.216320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641579, 34.685287, 40.076244>,  <32.611706, 34.462479, 39.992199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641579, 34.685287, 40.076244>,  <32.691368, 35.056637, 40.216320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641579, 34.685287, 40.076244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061737, -0.345006, 0.936568,
		-0.990301, 0.138195, -0.014371,
		-0.124471, -0.928371, -0.350191,
		32.604237, 34.406776, 39.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951155, 34.805813, 40.487587>,  <32.691368, 35.056637, 40.216320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951155, 34.805813, 40.487587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178387, 34.484962, 40.413967>,  <32.314724, 34.292450, 40.369793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178387, 34.484962, 40.413967>,  <31.951155, 34.805813, 40.487587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178387, 34.484962, 40.413967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189004, -0.344825, 0.919442,
		-0.800978, -0.487528, -0.347493,
		0.568078, -0.802130, -0.184052,
		32.348808, 34.244324, 40.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529016, 34.282742, 40.582474>,  <31.951155, 34.805813, 40.487587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529016, 34.282742, 40.582474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901800, 34.141766, 40.616501>,  <32.125469, 34.057182, 40.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901800, 34.141766, 40.616501>,  <31.529016, 34.282742, 40.582474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901800, 34.141766, 40.616501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260330, -0.487186, 0.833594,
		-0.252343, -0.799023, -0.545788,
		0.931961, -0.352437, 0.085071,
		32.181389, 34.036034, 40.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402710, 33.632648, 40.865032>,  <31.529016, 34.282742, 40.582474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402710, 33.632648, 40.865032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798607, 33.628281, 40.922005>,  <32.036144, 33.625660, 40.956188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798607, 33.628281, 40.922005>,  <31.402710, 33.632648, 40.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798607, 33.628281, 40.922005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135139, -0.394781, 0.908782,
		0.046307, -0.918710, -0.392208,
		0.989744, -0.010920, 0.142435,
		32.095531, 33.625004, 40.964733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661705, 32.911602, 41.071095>,  <31.402710, 33.632648, 40.865032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661705, 32.911602, 41.071095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911577, 33.180916, 41.229313>,  <32.061501, 33.342506, 41.324242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911577, 33.180916, 41.229313>,  <31.661705, 32.911602, 41.071095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911577, 33.180916, 41.229313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067915, -0.457772, 0.886472,
		0.777921, -0.580626, -0.240235,
		0.624681, 0.673289, 0.395543,
		32.098980, 33.382904, 41.347977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148346, 32.539459, 41.403214>,  <31.661705, 32.911602, 41.071095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148346, 32.539459, 41.403214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155384, 32.908314, 41.557800>,  <32.159607, 33.129627, 41.650551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155384, 32.908314, 41.557800>,  <32.148346, 32.539459, 41.403214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155384, 32.908314, 41.557800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119215, -0.381832, 0.916511,
		0.992712, -0.062199, 0.103214,
		0.017596, 0.922136, 0.386465,
		32.160664, 33.184956, 41.673740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524513, 32.469986, 41.993385>,  <32.148346, 32.539459, 41.403214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524513, 32.469986, 41.993385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285057, 32.789764, 42.013432>,  <32.141384, 32.981632, 42.025459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285057, 32.789764, 42.013432>,  <32.524513, 32.469986, 41.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285057, 32.789764, 42.013432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380367, -0.338770, 0.860556,
		0.704948, 0.496101, 0.506885,
		-0.598640, 0.799449, 0.050115,
		32.105465, 33.029598, 42.028465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656799, 32.799015, 42.743290>,  <32.524513, 32.469986, 41.993385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656799, 32.799015, 42.743290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298687, 32.916626, 42.609409>,  <32.083820, 32.987194, 42.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298687, 32.916626, 42.609409>,  <32.656799, 32.799015, 42.743290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298687, 32.916626, 42.609409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436058, -0.424443, 0.793538,
		0.091261, 0.856386, 0.508207,
		-0.895279, 0.294026, -0.334699,
		32.030102, 33.004833, 42.508999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300320, 32.933720, 43.352901>,  <32.656799, 32.799015, 42.743290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300320, 32.933720, 43.352901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000946, 32.957596, 43.088696>,  <31.821321, 32.971924, 42.930172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000946, 32.957596, 43.088696>,  <32.300320, 32.933720, 43.352901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000946, 32.957596, 43.088696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648575, -0.273919, 0.710154,
		-0.138536, 0.959898, 0.243726,
		-0.748437, 0.059693, -0.660514,
		31.776415, 32.975502, 42.890541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736254, 33.467064, 43.580566>,  <32.300320, 32.933720, 43.352901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736254, 33.467064, 43.580566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608355, 33.182674, 43.330040>,  <31.531614, 33.012039, 43.179726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608355, 33.182674, 43.330040>,  <31.736254, 33.467064, 43.580566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608355, 33.182674, 43.330040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641781, -0.323777, 0.695187,
		-0.697049, 0.624243, -0.352764,
		-0.319749, -0.710977, -0.626316,
		31.512430, 32.969379, 43.142143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195747, 33.324917, 43.848511>,  <31.736254, 33.467064, 43.580566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195747, 33.324917, 43.848511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184273, 33.040771, 43.567211>,  <31.177389, 32.870285, 43.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184273, 33.040771, 43.567211>,  <31.195747, 33.324917, 43.848511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184273, 33.040771, 43.567211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724248, -0.470127, 0.504426,
		-0.688943, 0.523796, -0.500994,
		-0.028685, -0.710365, -0.703249,
		31.175667, 32.827663, 43.356236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476583, 33.248386, 43.615273>,  <31.195747, 33.324917, 43.848511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476583, 33.248386, 43.615273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673409, 32.907948, 43.542042>,  <30.791504, 32.703686, 43.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673409, 32.907948, 43.542042>,  <30.476583, 33.248386, 43.615273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673409, 32.907948, 43.542042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726746, -0.517365, 0.451856,
		-0.479288, -0.089292, -0.873104,
		0.492061, -0.851094, -0.183075,
		30.821026, 32.652618, 43.487118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027246, 32.743626, 43.522236>,  <30.476583, 33.248386, 43.615273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027246, 32.743626, 43.522236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344769, 32.511963, 43.596478>,  <30.535282, 32.372967, 43.641022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344769, 32.511963, 43.596478>,  <30.027246, 32.743626, 43.522236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344769, 32.511963, 43.596478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562647, -0.583496, 0.585629,
		-0.230869, -0.569308, -0.789043,
		0.793806, -0.579155, 0.185608,
		30.582911, 32.338215, 43.652161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829632, 32.089775, 43.442844>,  <30.027246, 32.743626, 43.522236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829632, 32.089775, 43.442844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131367, 32.113667, 43.704350>,  <30.312407, 32.128002, 43.861252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131367, 32.113667, 43.704350>,  <29.829632, 32.089775, 43.442844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131367, 32.113667, 43.704350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500383, -0.592335, 0.631471,
		0.424965, -0.803475, -0.416933,
		0.754335, 0.059726, 0.653767,
		30.357668, 32.131584, 43.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908861, 31.377848, 43.710255>,  <29.829632, 32.089775, 43.442844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908861, 31.377848, 43.710255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093271, 31.601109, 43.986202>,  <30.203918, 31.735065, 44.151772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093271, 31.601109, 43.986202>,  <29.908861, 31.377848, 43.710255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093271, 31.601109, 43.986202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284976, -0.643116, 0.710767,
		0.840383, -0.524279, -0.137434,
		0.461026, 0.558152, 0.689871,
		30.231579, 31.768555, 44.193165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943398, 30.905642, 44.279396>,  <29.908861, 31.377848, 43.710255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943398, 30.905642, 44.279396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049768, 31.241188, 44.469379>,  <30.113590, 31.442516, 44.583370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049768, 31.241188, 44.469379>,  <29.943398, 30.905642, 44.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049768, 31.241188, 44.469379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345088, -0.377208, 0.859435,
		0.900110, -0.392449, 0.189174,
		0.265926, 0.838867, 0.474958,
		30.129547, 31.492847, 44.611866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370840, 30.750751, 44.824684>,  <29.943398, 30.905642, 44.279396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370840, 30.750751, 44.824684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252300, 31.121281, 44.917728>,  <30.181177, 31.343597, 44.973557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252300, 31.121281, 44.917728>,  <30.370840, 30.750751, 44.824684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252300, 31.121281, 44.917728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174524, -0.291974, 0.940368,
		0.938999, 0.238079, 0.248191,
		-0.296347, 0.926320, 0.232612,
		30.163397, 31.399178, 44.987511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604559, 30.801184, 45.441761>,  <30.370840, 30.750751, 44.824684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604559, 30.801184, 45.441761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334232, 31.095953, 45.447685>,  <30.172037, 31.272814, 45.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334232, 31.095953, 45.447685>,  <30.604559, 30.801184, 45.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334232, 31.095953, 45.447685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270091, -0.266295, 0.925277,
		0.685801, 0.621316, 0.379002,
		-0.675816, 0.736921, 0.014813,
		30.131487, 31.317030, 45.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645601, 31.102360, 46.110031>,  <30.604559, 30.801184, 45.441761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645601, 31.102360, 46.110031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298555, 31.245337, 45.971767>,  <30.090328, 31.331123, 45.888809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298555, 31.245337, 45.971767>,  <30.645601, 31.102360, 46.110031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298555, 31.245337, 45.971767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456996, -0.299255, 0.837616,
		0.195961, 0.884692, 0.422988,
		-0.867614, 0.357444, -0.345659,
		30.038271, 31.352570, 45.868069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404236, 31.531652, 46.656303>,  <30.645601, 31.102360, 46.110031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404236, 31.531652, 46.656303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111845, 31.394371, 46.420376>,  <29.936411, 31.312002, 46.278820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111845, 31.394371, 46.420376>,  <30.404236, 31.531652, 46.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111845, 31.394371, 46.420376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514300, -0.291020, 0.806723,
		-0.448518, 0.893040, 0.036220,
		-0.730977, -0.343202, -0.589818,
		29.892551, 31.291410, 46.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817587, 31.705505, 47.018250>,  <30.404236, 31.531652, 46.656303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817587, 31.705505, 47.018250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696608, 31.408785, 46.778831>,  <29.624020, 31.230753, 46.635181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696608, 31.408785, 46.778831>,  <29.817587, 31.705505, 47.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696608, 31.408785, 46.778831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442706, -0.446791, 0.777425,
		-0.844119, 0.500110, -0.193269,
		-0.302447, -0.741800, -0.598547,
		29.605873, 31.186245, 46.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028173, 31.613266, 47.087830>,  <29.817587, 31.705505, 47.018250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028173, 31.613266, 47.087830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173571, 31.278387, 46.924377>,  <29.260809, 31.077459, 46.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173571, 31.278387, 46.924377>,  <29.028173, 31.613266, 47.087830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173571, 31.278387, 46.924377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368800, -0.532114, 0.762129,
		-0.855488, -0.126327, -0.502178,
		0.363493, -0.837195, -0.408628,
		29.282619, 31.027229, 46.801788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407133, 31.151917, 46.745041>,  <29.028173, 31.613266, 47.087830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407133, 31.151917, 46.745041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684517, 30.869900, 46.804413>,  <28.850946, 30.700689, 46.840034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684517, 30.869900, 46.804413>,  <28.407133, 31.151917, 46.745041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684517, 30.869900, 46.804413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664583, -0.546351, 0.509736,
		-0.278290, -0.452125, -0.847430,
		0.693459, -0.705042, 0.148431,
		28.892555, 30.658388, 46.848942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035715, 30.538004, 46.876869>,  <28.407133, 31.151917, 46.745041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035715, 30.538004, 46.876869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394182, 30.446026, 47.028664>,  <28.609262, 30.390839, 47.119740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394182, 30.446026, 47.028664>,  <28.035715, 30.538004, 46.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394182, 30.446026, 47.028664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439076, -0.582898, 0.683697,
		0.063985, -0.779329, -0.623339,
		0.896169, -0.229947, 0.379482,
		28.663033, 30.377041, 47.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031557, 29.792982, 47.057529>,  <28.035715, 30.538004, 46.876869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031557, 29.792982, 47.057529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329552, 29.964235, 47.262154>,  <28.508348, 30.066988, 47.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329552, 29.964235, 47.262154>,  <28.031557, 29.792982, 47.057529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329552, 29.964235, 47.262154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363375, -0.382652, 0.849432,
		0.559419, -0.818706, -0.129499,
		0.744989, 0.428132, 0.511561,
		28.553049, 30.092674, 47.415623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140387, 29.276737, 47.560692>,  <28.031557, 29.792982, 47.057529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140387, 29.276737, 47.560692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324244, 29.601068, 47.705624>,  <28.434557, 29.795668, 47.792583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324244, 29.601068, 47.705624>,  <28.140387, 29.276737, 47.560692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324244, 29.601068, 47.705624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167842, -0.321325, 0.931976,
		0.872100, -0.489190, -0.011604,
		0.459642, 0.810829, 0.362334,
		28.462135, 29.844316, 47.814323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692595, 28.993362, 47.865242>,  <28.140387, 29.276737, 47.560692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692595, 28.993362, 47.865242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590717, 29.346960, 48.022053>,  <28.529591, 29.559120, 48.116138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590717, 29.346960, 48.022053>,  <28.692595, 28.993362, 47.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590717, 29.346960, 48.022053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324381, -0.460003, 0.826543,
		0.910993, 0.083350, 0.403911,
		-0.254693, 0.883996, 0.392023,
		28.514309, 29.612160, 48.139660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032080, 29.054869, 48.507931>,  <28.692595, 28.993362, 47.865242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032080, 29.054869, 48.507931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723368, 29.308779, 48.523010>,  <28.538141, 29.461124, 48.532059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723368, 29.308779, 48.523010>,  <29.032080, 29.054869, 48.507931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723368, 29.308779, 48.523010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314166, -0.432177, 0.845294,
		0.552864, 0.640535, 0.532969,
		-0.771778, 0.634774, 0.037701,
		28.491835, 29.499210, 48.534321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018288, 29.238918, 49.176559>,  <29.032080, 29.054869, 48.507931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018288, 29.238918, 49.176559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653271, 29.320263, 49.034622>,  <28.434261, 29.369070, 48.949459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653271, 29.320263, 49.034622>,  <29.018288, 29.238918, 49.176559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653271, 29.320263, 49.034622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408194, -0.398877, 0.821142,
		0.025450, 0.894170, 0.447003,
		-0.912540, 0.203362, -0.354843,
		28.379509, 29.381271, 48.928169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665005, 29.382679, 49.783028>,  <29.018288, 29.238918, 49.176559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665005, 29.382679, 49.783028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381691, 29.323652, 49.506897>,  <28.211702, 29.288237, 49.341217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381691, 29.323652, 49.506897>,  <28.665005, 29.382679, 49.783028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381691, 29.323652, 49.506897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568389, -0.460732, 0.681660,
		-0.418646, 0.875186, 0.242455,
		-0.708286, -0.147566, -0.690330,
		28.169205, 29.279383, 49.299797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987749, 29.569069, 50.070686>,  <28.665005, 29.382679, 49.783028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987749, 29.569069, 50.070686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877136, 29.350592, 49.754406>,  <27.810768, 29.219505, 49.564640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877136, 29.350592, 49.754406>,  <27.987749, 29.569069, 50.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877136, 29.350592, 49.754406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658540, -0.491528, 0.569847,
		-0.699897, 0.678286, -0.223769,
		-0.276530, -0.546195, -0.790697,
		27.794178, 29.186733, 49.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220135, 29.598625, 50.118595>,  <27.987749, 29.569069, 50.070686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220135, 29.598625, 50.118595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338345, 29.286314, 49.898396>,  <27.409271, 29.098927, 49.766277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338345, 29.286314, 49.898396>,  <27.220135, 29.598625, 50.118595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338345, 29.286314, 49.898396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647234, -0.587470, 0.485764,
		-0.702676, 0.212746, -0.678959,
		0.295524, -0.780780, -0.550498,
		27.427002, 29.052080, 49.733246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679585, 29.178307, 50.115440>,  <27.220135, 29.598625, 50.118595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679585, 29.178307, 50.115440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972099, 28.923447, 50.018070>,  <27.147608, 28.770531, 49.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972099, 28.923447, 50.018070>,  <26.679585, 29.178307, 50.115440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972099, 28.923447, 50.018070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495632, -0.741588, 0.452103,
		-0.468578, -0.209969, -0.858107,
		0.731289, -0.637150, -0.243424,
		27.191486, 28.732302, 49.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410172, 28.589403, 49.864094>,  <26.679585, 29.178307, 50.115440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410172, 28.589403, 49.864094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753777, 28.502384, 50.049465>,  <26.959940, 28.450172, 50.160690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753777, 28.502384, 50.049465>,  <26.410172, 28.589403, 49.864094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753777, 28.502384, 50.049465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490483, -0.609124, 0.623213,
		0.146708, -0.762654, -0.629949,
		0.859013, -0.217549, 0.463432,
		27.011480, 28.437119, 50.188496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351849, 27.847233, 50.023338>,  <26.410172, 28.589403, 49.864094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351849, 27.847233, 50.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621212, 28.015059, 50.266808>,  <26.782831, 28.115753, 50.412891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621212, 28.015059, 50.266808>,  <26.351849, 27.847233, 50.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621212, 28.015059, 50.266808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425300, -0.453581, 0.783189,
		0.604681, -0.786277, -0.127006,
		0.673410, 0.419564, 0.608675,
		26.823235, 28.140928, 50.449409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694027, 27.361723, 50.423702>,  <26.351849, 27.847233, 50.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694027, 27.361723, 50.423702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678286, 27.700745, 50.635403>,  <26.668840, 27.904158, 50.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678286, 27.700745, 50.635403>,  <26.694027, 27.361723, 50.423702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678286, 27.700745, 50.635403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476239, -0.481541, 0.735741,
		0.878435, -0.223096, 0.422588,
		-0.039352, 0.847553, 0.529249,
		26.666479, 27.955011, 50.794178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935053, 27.312860, 51.153503>,  <26.694027, 27.361723, 50.423702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935053, 27.312860, 51.153503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679653, 27.620420, 51.166866>,  <26.526413, 27.804956, 51.174885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679653, 27.620420, 51.166866>,  <26.935053, 27.312860, 51.153503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679653, 27.620420, 51.166866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543216, -0.480987, 0.688163,
		0.545195, 0.421244, 0.724787,
		-0.638497, 0.768899, 0.033405,
		26.488104, 27.851089, 51.176888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562807, 27.173565, 51.730244>,  <26.935053, 27.312860, 51.153503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562807, 27.173565, 51.730244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317446, 27.469790, 51.620476>,  <26.170229, 27.647524, 51.554615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317446, 27.469790, 51.620476>,  <26.562807, 27.173565, 51.730244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317446, 27.469790, 51.620476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632219, -0.252189, 0.732598,
		0.473327, 0.622873, 0.622889,
		-0.613401, 0.740561, -0.274424,
		26.133425, 27.691957, 51.538147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522360, 27.597187, 52.349789>,  <26.562807, 27.173565, 51.730244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522360, 27.597187, 52.349789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198423, 27.653042, 52.121872>,  <26.004063, 27.686556, 51.985123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198423, 27.653042, 52.121872>,  <26.522360, 27.597187, 52.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198423, 27.653042, 52.121872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585897, -0.241771, 0.773480,
		-0.029751, 0.960233, 0.277610,
		-0.809839, 0.139639, -0.569791,
		25.955471, 27.694933, 51.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997541, 27.054216, 52.417610>,  <26.522360, 27.597187, 52.349789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997541, 27.054216, 52.417610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039337, 27.323355, 52.124664>,  <27.064415, 27.484838, 51.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039337, 27.323355, 52.124664>,  <26.997541, 27.054216, 52.417610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039337, 27.323355, 52.124664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865746, 0.300879, 0.399945,
		0.489455, -0.675832, -0.551076,
		0.104488, 0.672847, -0.732365,
		27.070684, 27.525209, 51.904953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685347, 26.945576, 51.933113>,  <26.997541, 27.054216, 52.417610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685347, 26.945576, 51.933113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574509, 27.327808, 51.973270>,  <27.508007, 27.557148, 51.997364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574509, 27.327808, 51.973270>,  <27.685347, 26.945576, 51.933113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574509, 27.327808, 51.973270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950620, 0.257442, 0.173337,
		0.139792, 0.143469, -0.979732,
		-0.277093, 0.955584, 0.100396,
		27.491381, 27.614483, 52.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164597, 27.142763, 51.480076>,  <27.685347, 26.945576, 51.933113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164597, 27.142763, 51.480076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081738, 27.443708, 51.730209>,  <28.032022, 27.624275, 51.880291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081738, 27.443708, 51.730209>,  <28.164597, 27.142763, 51.480076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081738, 27.443708, 51.730209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914466, 0.376034, -0.149498,
		-0.347624, 0.540879, -0.765903,
		-0.207145, 0.752362, 0.625334,
		28.019594, 27.669416, 51.917809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826677, 26.634062, 51.435066>,  <28.164597, 27.142763, 51.480076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826677, 26.634062, 51.435066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488907, 26.606915, 51.222527>,  <28.286243, 26.590626, 51.095001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488907, 26.606915, 51.222527>,  <28.826677, 26.634062, 51.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488907, 26.606915, 51.222527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524372, 0.097928, -0.845839,
		0.109439, -0.992877, -0.047106,
		-0.844427, -0.067867, -0.531354,
		28.235579, 26.586554, 51.063122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825947, 26.022257, 50.943062>,  <28.826677, 26.634062, 51.435066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825947, 26.022257, 50.943062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583122, 26.311701, 50.811691>,  <28.437428, 26.485367, 50.732868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583122, 26.311701, 50.811691>,  <28.825947, 26.022257, 50.943062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583122, 26.311701, 50.811691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546042, 0.079574, -0.833970,
		-0.577335, -0.685606, -0.443428,
		-0.607060, 0.723611, -0.328429,
		28.401005, 26.528784, 50.713161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507137, 25.809698, 50.282764>,  <28.825947, 26.022257, 50.943062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507137, 25.809698, 50.282764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485765, 26.208561, 50.304024>,  <28.472942, 26.447878, 50.316780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485765, 26.208561, 50.304024>,  <28.507137, 25.809698, 50.282764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485765, 26.208561, 50.304024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548132, 0.073772, -0.833132,
		-0.834684, -0.015382, -0.550515,
		-0.053428, 0.997157, 0.053145,
		28.469738, 26.507708, 50.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268343, 26.045567, 49.630409>,  <28.507137, 25.809698, 50.282764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268343, 26.045567, 49.630409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454247, 26.355021, 49.802685>,  <28.565788, 26.540693, 49.906048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454247, 26.355021, 49.802685>,  <28.268343, 26.045567, 49.630409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454247, 26.355021, 49.802685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572580, 0.108428, -0.812647,
		-0.675389, 0.624288, -0.392574,
		0.464759, 0.773633, 0.430686,
		28.593674, 26.587111, 49.931892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345951, 26.520832, 49.048038>,  <28.268343, 26.045567, 49.630409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345951, 26.520832, 49.048038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612211, 26.631739, 49.325176>,  <28.771967, 26.698282, 49.491459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612211, 26.631739, 49.325176>,  <28.345951, 26.520832, 49.048038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612211, 26.631739, 49.325176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672343, 0.180050, -0.718009,
		-0.323826, 0.943772, -0.066567,
		0.665651, 0.277265, 0.692843,
		28.811907, 26.714918, 49.533028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477062, 27.187653, 48.883030>,  <28.345951, 26.520832, 49.048038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477062, 27.187653, 48.883030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787163, 27.052088, 49.096245>,  <28.973223, 26.970749, 49.224174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787163, 27.052088, 49.096245>,  <28.477062, 27.187653, 48.883030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787163, 27.052088, 49.096245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626381, 0.303660, -0.717940,
		0.081458, 0.890465, 0.447701,
		0.775249, -0.338914, 0.533035,
		29.019737, 26.950413, 49.256157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069431, 27.660942, 48.764614>,  <28.477062, 27.187653, 48.883030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069431, 27.660942, 48.764614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245514, 27.327131, 48.897152>,  <29.351164, 27.126844, 48.976673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245514, 27.327131, 48.897152>,  <29.069431, 27.660942, 48.764614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245514, 27.327131, 48.897152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781783, 0.174727, -0.598570,
		0.441629, 0.522529, 0.729334,
		0.440204, -0.834526, 0.331340,
		29.377575, 27.076773, 48.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772783, 27.909607, 48.944088>,  <29.069431, 27.660942, 48.764614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772783, 27.909607, 48.944088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778099, 27.513733, 48.887032>,  <29.781288, 27.276209, 48.852798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778099, 27.513733, 48.887032>,  <29.772783, 27.909607, 48.944088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778099, 27.513733, 48.887032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774007, 0.100495, -0.625152,
		0.633038, -0.102095, 0.767359,
		0.013291, -0.989686, -0.142639,
		29.782085, 27.216827, 48.844238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444651, 27.770325, 48.804283>,  <29.772783, 27.909607, 48.944088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444651, 27.770325, 48.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352434, 27.392244, 48.711815>,  <30.297104, 27.165396, 48.656334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352434, 27.392244, 48.711815>,  <30.444651, 27.770325, 48.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352434, 27.392244, 48.711815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666977, 0.019487, -0.744824,
		0.708514, -0.325901, 0.625936,
		-0.230541, -0.945203, -0.231175,
		30.283272, 27.108683, 48.642464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087875, 27.337940, 48.762722>,  <30.444651, 27.770325, 48.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087875, 27.337940, 48.762722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793453, 27.165863, 48.553665>,  <30.616800, 27.062616, 48.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793453, 27.165863, 48.553665>,  <31.087875, 27.337940, 48.762722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793453, 27.165863, 48.553665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539103, 0.094388, -0.836934,
		0.409376, -0.897788, 0.162444,
		-0.736057, -0.430194, -0.522640,
		30.572636, 27.036804, 48.396873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462666, 26.982298, 48.257889>,  <31.087875, 27.337940, 48.762722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462666, 26.982298, 48.257889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089291, 26.971445, 48.114803>,  <30.865267, 26.964933, 48.028950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089291, 26.971445, 48.114803>,  <31.462666, 26.982298, 48.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089291, 26.971445, 48.114803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356200, 0.048482, -0.933151,
		0.042634, -0.998456, -0.035601,
		-0.933437, -0.027103, -0.357717,
		30.809259, 26.963305, 48.007488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498350, 26.452066, 47.671165>,  <31.462666, 26.982298, 48.257889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498350, 26.452066, 47.671165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183620, 26.693739, 47.620777>,  <30.994781, 26.838743, 47.590546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183620, 26.693739, 47.620777>,  <31.498350, 26.452066, 47.671165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183620, 26.693739, 47.620777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352143, 0.271868, -0.895591,
		-0.506854, -0.749033, -0.426672,
		-0.786826, 0.604183, -0.125969,
		30.947573, 26.874994, 47.582985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425838, 26.354633, 46.947296>,  <31.498350, 26.452066, 47.671165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425838, 26.354633, 46.947296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217958, 26.685257, 47.033752>,  <31.093231, 26.883631, 47.085625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217958, 26.685257, 47.033752>,  <31.425838, 26.354633, 46.947296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217958, 26.685257, 47.033752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364294, 0.443225, -0.819049,
		-0.772789, -0.346922, -0.531453,
		-0.519700, 0.826557, 0.216138,
		31.062048, 26.933224, 47.098595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070017, 26.574757, 46.301403>,  <31.425838, 26.354633, 46.947296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070017, 26.574757, 46.301403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097799, 26.898376, 46.534851>,  <31.114468, 27.092548, 46.674919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097799, 26.898376, 46.534851>,  <31.070017, 26.574757, 46.301403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097799, 26.898376, 46.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313340, 0.537736, -0.782725,
		-0.947098, 0.237237, -0.216159,
		0.069455, 0.809048, 0.583625,
		31.118635, 27.141090, 46.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699842, 27.199062, 45.973808>,  <31.070017, 26.574757, 46.301403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699842, 27.199062, 45.973808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944368, 27.390041, 46.226265>,  <31.091084, 27.504629, 46.377739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944368, 27.390041, 46.226265>,  <30.699842, 27.199062, 45.973808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944368, 27.390041, 46.226265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442330, 0.455169, -0.772765,
		-0.656230, 0.751575, 0.067063,
		0.611316, 0.477447, 0.631140,
		31.127764, 27.533276, 46.415607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603580, 27.881908, 45.830715>,  <30.699842, 27.199062, 45.973808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603580, 27.881908, 45.830715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948624, 27.870424, 46.032738>,  <31.155649, 27.863533, 46.153950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948624, 27.870424, 46.032738>,  <30.603580, 27.881908, 45.830715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948624, 27.870424, 46.032738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473630, 0.396566, -0.786390,
		-0.177709, 0.917557, 0.355680,
		0.862609, -0.028712, 0.505056,
		31.207407, 27.861811, 46.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845182, 28.594242, 45.764656>,  <30.603580, 27.881908, 45.830715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845182, 28.594242, 45.764656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176071, 28.396791, 45.872013>,  <31.374605, 28.278320, 45.936428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176071, 28.396791, 45.872013>,  <30.845182, 28.594242, 45.764656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176071, 28.396791, 45.872013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504636, 0.442675, -0.741202,
		0.247069, 0.748579, 0.615294,
		0.827224, -0.493628, 0.268388,
		31.424238, 28.248703, 45.952530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369370, 29.052109, 45.875252>,  <30.845182, 28.594242, 45.764656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369370, 29.052109, 45.875252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552710, 28.707159, 45.789249>,  <31.662714, 28.500189, 45.737648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552710, 28.707159, 45.789249>,  <31.369370, 29.052109, 45.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552710, 28.707159, 45.789249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538744, 0.461986, -0.704502,
		0.706874, 0.207074, 0.676350,
		0.458349, -0.862374, -0.215006,
		31.690214, 28.448446, 45.724747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095123, 29.297359, 45.623943>,  <31.369370, 29.052109, 45.875252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095123, 29.297359, 45.623943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076447, 28.917923, 45.498726>,  <32.065243, 28.690262, 45.423595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076447, 28.917923, 45.498726>,  <32.095123, 29.297359, 45.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076447, 28.917923, 45.498726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396654, 0.270010, -0.877360,
		0.916780, -0.165133, 0.363656,
		-0.046690, -0.948592, -0.313040,
		32.062439, 28.633345, 45.404816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700886, 29.257410, 45.272659>,  <32.095123, 29.297359, 45.623943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700886, 29.257410, 45.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487732, 28.945328, 45.141628>,  <32.359840, 28.758078, 45.063007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487732, 28.945328, 45.141628>,  <32.700886, 29.257410, 45.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487732, 28.945328, 45.141628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375649, 0.128769, -0.917773,
		0.758234, -0.612125, 0.224464,
		-0.532887, -0.780206, -0.327581,
		32.327866, 28.711266, 45.043354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129375, 28.788116, 44.966862>,  <32.700886, 29.257410, 45.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129375, 28.788116, 44.966862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776096, 28.697615, 44.802532>,  <32.564129, 28.643314, 44.703934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776096, 28.697615, 44.802532>,  <33.129375, 28.788116, 44.966862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776096, 28.697615, 44.802532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388274, 0.138612, -0.911060,
		0.263077, -0.964155, -0.034572,
		-0.883195, -0.226256, -0.410822,
		32.511139, 28.629738, 44.679287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253197, 28.386463, 44.440746>,  <33.129375, 28.788116, 44.966862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253197, 28.386463, 44.440746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896240, 28.552862, 44.370789>,  <32.682068, 28.652702, 44.328815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896240, 28.552862, 44.370789>,  <33.253197, 28.386463, 44.440746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896240, 28.552862, 44.370789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287998, 0.226644, -0.930424,
		-0.347417, -0.880669, -0.322062,
		-0.892389, 0.415998, -0.174890,
		32.628525, 28.677662, 44.318321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103264, 28.129768, 43.790283>,  <33.253197, 28.386463, 44.440746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103264, 28.129768, 43.790283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838490, 28.426001, 43.836552>,  <32.679626, 28.603741, 43.864311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838490, 28.426001, 43.836552>,  <33.103264, 28.129768, 43.790283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838490, 28.426001, 43.836552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304937, 0.407036, -0.861009,
		-0.684729, -0.534660, -0.495262,
		-0.661936, 0.740581, 0.115672,
		32.639908, 28.648174, 43.871254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682594, 28.229280, 43.174072>,  <33.103264, 28.129768, 43.790283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682594, 28.229280, 43.174072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667828, 28.580381, 43.365147>,  <32.658970, 28.791042, 43.479790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667828, 28.580381, 43.365147>,  <32.682594, 28.229280, 43.174072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667828, 28.580381, 43.365147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250414, 0.470887, -0.845907,
		-0.967435, 0.088393, -0.237184,
		-0.036915, 0.877754, 0.477687,
		32.656754, 28.843708, 43.508453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528797, 28.675728, 42.666706>,  <32.682594, 28.229280, 43.174072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528797, 28.675728, 42.666706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598202, 28.927326, 42.969826>,  <32.639843, 29.078285, 43.151699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598202, 28.927326, 42.969826>,  <32.528797, 28.675728, 42.666706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598202, 28.927326, 42.969826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104822, 0.753305, -0.649264,
		-0.979238, 0.192087, 0.064773,
		0.173509, 0.628995, 0.757800,
		32.650253, 29.116024, 43.197166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023911, 29.101656, 42.785904>,  <32.528797, 28.675728, 42.666706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023911, 29.101656, 42.785904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341595, 29.301418, 42.924362>,  <32.532207, 29.421276, 43.007439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341595, 29.301418, 42.924362>,  <32.023911, 29.101656, 42.785904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341595, 29.301418, 42.924362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153124, 0.715765, -0.681346,
		-0.588030, 0.488131, 0.644941,
		0.794213, 0.499408, 0.346147,
		32.579857, 29.451241, 43.028206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832474, 29.812750, 42.966766>,  <32.023911, 29.101656, 42.785904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832474, 29.812750, 42.966766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224224, 29.814569, 42.885971>,  <32.459274, 29.815660, 42.837494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224224, 29.814569, 42.885971>,  <31.832474, 29.812750, 42.966766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224224, 29.814569, 42.885971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127715, 0.788606, -0.601490,
		0.156556, 0.614883, 0.772923,
		0.979377, 0.004547, -0.201990,
		32.518036, 29.815933, 42.825375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973394, 30.454586, 42.821762>,  <31.832474, 29.812750, 42.966766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973394, 30.454586, 42.821762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308472, 30.280790, 42.689404>,  <32.509518, 30.176514, 42.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308472, 30.280790, 42.689404>,  <31.973394, 30.454586, 42.821762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308472, 30.280790, 42.689404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106541, 0.724244, -0.681263,
		0.535650, 0.535435, 0.652985,
		0.837692, -0.434488, -0.330896,
		32.559780, 30.150444, 42.590134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544353, 30.972937, 42.601902>,  <31.973394, 30.454586, 42.821762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544353, 30.972937, 42.601902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675045, 30.634081, 42.434284>,  <32.753460, 30.430767, 42.333714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675045, 30.634081, 42.434284>,  <32.544353, 30.972937, 42.601902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675045, 30.634081, 42.434284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168315, 0.488447, -0.856207,
		0.930009, 0.209216, 0.302177,
		0.326730, -0.847141, -0.419046,
		32.773064, 30.379938, 42.308571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216995, 31.163662, 42.210842>,  <32.544353, 30.972937, 42.601902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216995, 31.163662, 42.210842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078979, 30.828209, 42.042255>,  <32.996170, 30.626936, 41.941101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078979, 30.828209, 42.042255>,  <33.216995, 31.163662, 42.210842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078979, 30.828209, 42.042255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263581, 0.344399, -0.901063,
		0.900817, -0.421996, 0.102216,
		-0.345042, -0.838635, -0.421471,
		32.975468, 30.576618, 41.915813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747501, 30.935421, 41.773388>,  <33.216995, 31.163662, 42.210842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747501, 30.935421, 41.773388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421947, 30.740309, 41.647110>,  <33.226616, 30.623241, 41.571342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421947, 30.740309, 41.647110>,  <33.747501, 30.935421, 41.773388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421947, 30.740309, 41.647110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216743, 0.249231, -0.943878,
		0.539084, -0.836634, -0.097124,
		-0.813887, -0.487779, -0.315691,
		33.177780, 30.593975, 41.552402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067226, 30.523373, 41.314907>,  <33.747501, 30.935421, 41.773388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067226, 30.523373, 41.314907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680584, 30.580154, 41.229568>,  <33.448597, 30.614223, 41.178364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680584, 30.580154, 41.229568>,  <34.067226, 30.523373, 41.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680584, 30.580154, 41.229568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250799, 0.353123, -0.901334,
		-0.052611, -0.924745, -0.376934,
		-0.966609, 0.141954, -0.213347,
		33.390602, 30.622740, 41.165565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933571, 30.140997, 40.717537>,  <34.067226, 30.523373, 41.314907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933571, 30.140997, 40.717537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655037, 30.428013, 40.723816>,  <33.487915, 30.600224, 40.727585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655037, 30.428013, 40.723816>,  <33.933571, 30.140997, 40.717537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655037, 30.428013, 40.723816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365197, 0.373065, -0.852908,
		-0.617854, -0.588180, -0.521824,
		-0.696339, 0.717542, 0.015698,
		33.446136, 30.643276, 40.728527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942814, 30.269810, 40.093460>,  <33.933571, 30.140997, 40.717537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942814, 30.269810, 40.093460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716770, 30.584265, 40.193569>,  <33.581142, 30.772938, 40.253635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716770, 30.584265, 40.193569>,  <33.942814, 30.269810, 40.093460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716770, 30.584265, 40.193569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367829, 0.511613, -0.776501,
		-0.738479, -0.346753, -0.578283,
		-0.565111, 0.786139, 0.250270,
		33.547237, 30.820107, 40.268650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828442, 30.622641, 39.455578>,  <33.942814, 30.269810, 40.093460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828442, 30.622641, 39.455578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767700, 30.921366, 39.714565>,  <33.731255, 31.100601, 39.869957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767700, 30.921366, 39.714565>,  <33.828442, 30.622641, 39.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767700, 30.921366, 39.714565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157470, 0.664975, -0.730077,
		-0.975779, -0.008906, -0.218577,
		-0.151851, 0.746813, 0.647466,
		33.722145, 31.145409, 39.908806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414902, 31.130877, 39.048088>,  <33.828442, 30.622641, 39.455578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414902, 31.130877, 39.048088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603184, 31.314724, 39.349335>,  <33.716152, 31.425034, 39.530083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603184, 31.314724, 39.349335>,  <33.414902, 31.130877, 39.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603184, 31.314724, 39.349335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401244, 0.648703, -0.646674,
		-0.785775, 0.606576, 0.120926,
		0.470702, 0.459620, 0.753120,
		33.744392, 31.452610, 39.575272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440140, 31.794289, 38.833843>,  <33.414902, 31.130877, 39.048088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440140, 31.794289, 38.833843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714760, 31.808475, 39.124329>,  <33.879532, 31.816988, 39.298622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714760, 31.808475, 39.124329>,  <33.440140, 31.794289, 38.833843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714760, 31.808475, 39.124329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480598, 0.727359, -0.489872,
		-0.545593, 0.685340, 0.482324,
		0.686552, 0.035467, 0.726215,
		33.920727, 31.819115, 39.342194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567299, 32.504017, 38.976303>,  <33.440140, 31.794289, 38.833843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567299, 32.504017, 38.976303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888649, 32.296986, 39.094082>,  <34.081459, 32.172768, 39.164749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888649, 32.296986, 39.094082>,  <33.567299, 32.504017, 38.976303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888649, 32.296986, 39.094082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594412, 0.726500, -0.344778,
		-0.035467, 0.452010, 0.891308,
		0.803378, -0.517576, 0.294447,
		34.129662, 32.141712, 39.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963928, 32.990150, 39.258591>,  <33.567299, 32.504017, 38.976303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963928, 32.990150, 39.258591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219536, 32.693653, 39.176414>,  <34.372902, 32.515755, 39.127110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219536, 32.693653, 39.176414>,  <33.963928, 32.990150, 39.258591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219536, 32.693653, 39.176414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652768, 0.663882, -0.364903,
		0.406872, 0.099075, 0.908097,
		0.639022, -0.741246, -0.205442,
		34.411243, 32.471279, 39.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582726, 33.105091, 39.589390>,  <33.963928, 32.990150, 39.258591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582726, 33.105091, 39.589390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631329, 32.884850, 39.259037>,  <34.660488, 32.752705, 39.060825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631329, 32.884850, 39.259037>,  <34.582726, 33.105091, 39.589390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631329, 32.884850, 39.259037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683139, 0.650022, -0.332856,
		0.720110, -0.523746, 0.455117,
		0.121503, -0.550601, -0.825879,
		34.667778, 32.719669, 39.011272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296944, 33.186283, 39.476871>,  <34.582726, 33.105091, 39.589390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296944, 33.186283, 39.476871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125172, 33.057659, 39.139309>,  <35.022106, 32.980484, 38.936771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125172, 33.057659, 39.139309>,  <35.296944, 33.186283, 39.476871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125172, 33.057659, 39.139309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601455, 0.595236, -0.532866,
		0.673676, -0.736404, -0.062207,
		-0.429433, -0.321564, -0.843910,
		34.996342, 32.961189, 38.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681137, 32.796188, 39.975540>,  <35.296944, 33.186283, 39.476871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681137, 32.796188, 39.975540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076939, 32.806107, 40.032486>,  <36.314419, 32.812057, 40.066654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076939, 32.806107, 40.032486>,  <35.681137, 32.796188, 39.975540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076939, 32.806107, 40.032486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107616, -0.531074, 0.840464,
		0.096450, -0.846962, -0.522831,
		0.989503, 0.024798, 0.142369,
		36.373791, 32.813545, 40.075195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920197, 32.171162, 40.064400>,  <35.681137, 32.796188, 39.975540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920197, 32.171162, 40.064400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226925, 32.357170, 40.241371>,  <36.410961, 32.468777, 40.347553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226925, 32.357170, 40.241371>,  <35.920197, 32.171162, 40.064400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226925, 32.357170, 40.241371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038693, -0.721520, 0.691312,
		0.640693, -0.512994, -0.571270,
		0.766822, 0.465023, 0.442424,
		36.456970, 32.496677, 40.374100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480225, 31.629963, 40.235981>,  <35.920197, 32.171162, 40.064400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480225, 31.629963, 40.235981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497147, 31.940493, 40.487545>,  <36.507301, 32.126808, 40.638485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497147, 31.940493, 40.487545>,  <36.480225, 31.629963, 40.235981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497147, 31.940493, 40.487545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097519, -0.629681, 0.770709,
		0.994334, 0.028726, -0.102345,
		0.042305, 0.776323, 0.628915,
		36.509838, 32.173389, 40.676220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018856, 31.413080, 40.712826>,  <36.480225, 31.629963, 40.235981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018856, 31.413080, 40.712826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837257, 31.721996, 40.890572>,  <36.728298, 31.907345, 40.997219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837257, 31.721996, 40.890572>,  <37.018856, 31.413080, 40.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837257, 31.721996, 40.890572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221705, -0.385123, 0.895839,
		0.862980, 0.505224, 0.003623,
		-0.453995, 0.772288, 0.444365,
		36.701057, 31.953682, 41.023880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493244, 31.607571, 41.184364>,  <37.018856, 31.413080, 40.712826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493244, 31.607571, 41.184364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 31.750540, 41.294445>,  <36.922058, 31.836321, 41.360493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 31.750540, 41.294445>,  <37.493244, 31.607571, 41.184364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136253, 31.750540, 41.294445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142339, -0.355772, 0.923670,
		0.428049, 0.863525, 0.266643,
		-0.892476, 0.357423, 0.275201,
		36.868511, 31.857767, 41.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725643, 31.910736, 41.819984>,  <37.493244, 31.607571, 41.184364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725643, 31.910736, 41.819984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331161, 31.844677, 41.824333>,  <37.094471, 31.805042, 41.826942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331161, 31.844677, 41.824333>,  <37.725643, 31.910736, 41.819984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331161, 31.844677, 41.824333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053975, -0.258822, 0.964416,
		-0.156457, 0.951702, 0.264167,
		-0.986209, -0.165148, 0.010874,
		37.035297, 31.795132, 41.827595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603737, 31.911200, 42.536449>,  <37.725643, 31.910736, 41.819984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603737, 31.911200, 42.536449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261337, 31.760344, 42.395012>,  <37.055897, 31.669830, 42.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261337, 31.760344, 42.395012>,  <37.603737, 31.911200, 42.536449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261337, 31.760344, 42.395012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054909, -0.613775, 0.787569,
		-0.514050, 0.693575, 0.504684,
		-0.856001, -0.377139, -0.353594,
		37.004536, 31.647202, 42.288933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174343, 31.980272, 43.097851>,  <37.603737, 31.911200, 42.536449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174343, 31.980272, 43.097851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015915, 31.706270, 42.853264>,  <36.920856, 31.541870, 42.706512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015915, 31.706270, 42.853264>,  <37.174343, 31.980272, 43.097851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015915, 31.706270, 42.853264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101489, -0.629193, 0.770595,
		-0.912594, 0.367268, 0.179684,
		-0.396071, -0.685004, -0.611471,
		36.897095, 31.500769, 42.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378376, 31.760889, 43.343597>,  <37.174343, 31.980272, 43.097851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378376, 31.760889, 43.343597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546017, 31.472059, 43.123428>,  <36.646599, 31.298761, 42.991329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546017, 31.472059, 43.123428>,  <36.378376, 31.760889, 43.343597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546017, 31.472059, 43.123428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151391, -0.653319, 0.741792,
		-0.895230, -0.227556, -0.383121,
		0.419099, -0.722075, -0.550421,
		36.671745, 31.255436, 42.958302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878304, 31.271009, 43.395023>,  <36.378376, 31.760889, 43.343597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878304, 31.271009, 43.395023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225311, 31.103096, 43.288292>,  <36.433514, 31.002348, 43.224255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225311, 31.103096, 43.288292>,  <35.878304, 31.271009, 43.395023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225311, 31.103096, 43.288292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129728, -0.708812, 0.693365,
		-0.480194, -0.566891, -0.669364,
		0.867516, -0.419785, -0.266826,
		36.485565, 30.977160, 43.208244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661598, 30.586016, 43.316830>,  <35.878304, 31.271009, 43.395023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661598, 30.586016, 43.316830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058258, 30.584568, 43.368401>,  <36.296253, 30.583700, 43.399342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058258, 30.584568, 43.368401>,  <35.661598, 30.586016, 43.316830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058258, 30.584568, 43.368401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102546, -0.628390, 0.771110,
		0.078226, -0.777890, -0.623512,
		0.991648, -0.003618, 0.128926,
		36.355751, 30.583483, 43.407078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860291, 29.926012, 43.364674>,  <35.661598, 30.586016, 43.316830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860291, 29.926012, 43.364674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157009, 30.117062, 43.552979>,  <36.335041, 30.231691, 43.665962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157009, 30.117062, 43.552979>,  <35.860291, 29.926012, 43.364674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157009, 30.117062, 43.552979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115024, -0.600955, 0.790963,
		0.660690, -0.640880, -0.390846,
		0.741793, 0.477625, 0.470762,
		36.379547, 30.260349, 43.694206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392086, 29.424015, 43.647675>,  <35.860291, 29.926012, 43.364674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392086, 29.424015, 43.647675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401943, 29.765512, 43.855717>,  <36.407856, 29.970411, 43.980541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401943, 29.765512, 43.855717>,  <36.392086, 29.424015, 43.647675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401943, 29.765512, 43.855717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190156, -0.506763, 0.840852,
		0.981445, -0.119623, 0.149857,
		0.024644, 0.853746, 0.520106,
		36.409336, 30.021637, 44.011749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804081, 29.182833, 44.261349>,  <36.392086, 29.424015, 43.647675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804081, 29.182833, 44.261349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602169, 29.514683, 44.356777>,  <36.481022, 29.713793, 44.414032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602169, 29.514683, 44.356777>,  <36.804081, 29.182833, 44.261349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602169, 29.514683, 44.356777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217238, -0.389551, 0.895018,
		0.835465, 0.399964, 0.376866,
		-0.504783, 0.829626, 0.238569,
		36.450733, 29.763571, 44.428349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855450, 29.270063, 44.890911>,  <36.804081, 29.182833, 44.261349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855450, 29.270063, 44.890911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537781, 29.510958, 44.858414>,  <36.347179, 29.655495, 44.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537781, 29.510958, 44.858414>,  <36.855450, 29.270063, 44.890911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537781, 29.510958, 44.858414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308245, -0.284003, 0.907925,
		0.523709, 0.746095, 0.411183,
		-0.794175, 0.602234, -0.081245,
		36.299530, 29.691628, 44.834042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768887, 29.442120, 45.605450>,  <36.855450, 29.270063, 44.890911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768887, 29.442120, 45.605450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435318, 29.532450, 45.404022>,  <36.235176, 29.586647, 45.283165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435318, 29.532450, 45.404022>,  <36.768887, 29.442120, 45.605450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435318, 29.532450, 45.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549580, -0.256487, 0.795095,
		0.050394, 0.939796, 0.337998,
		-0.833920, 0.225825, -0.503568,
		36.185143, 29.600197, 45.252953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402954, 29.903549, 46.020714>,  <36.768887, 29.442120, 45.605450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402954, 29.903549, 46.020714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141796, 29.745646, 45.762135>,  <35.985104, 29.650902, 45.606987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141796, 29.745646, 45.762135>,  <36.402954, 29.903549, 46.020714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141796, 29.745646, 45.762135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599597, -0.252139, 0.759545,
		-0.462834, 0.883510, -0.072078,
		-0.652892, -0.394762, -0.646449,
		35.945930, 29.627216, 45.568199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703316, 30.188190, 46.186676>,  <36.402954, 29.903549, 46.020714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703316, 30.188190, 46.186676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647648, 29.842243, 45.993748>,  <35.614246, 29.634676, 45.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647648, 29.842243, 45.993748>,  <35.703316, 30.188190, 46.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647648, 29.842243, 45.993748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607345, -0.310156, 0.731393,
		-0.782153, 0.394728, -0.482106,
		-0.139173, -0.864866, -0.482325,
		35.605896, 29.582783, 45.849049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000450, 29.966848, 46.313919>,  <35.703316, 30.188190, 46.186676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000450, 29.966848, 46.313919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133434, 29.623476, 46.157681>,  <35.213226, 29.417452, 46.063938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133434, 29.623476, 46.157681>,  <35.000450, 29.966848, 46.313919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133434, 29.623476, 46.157681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700431, -0.502079, 0.507261,
		-0.631558, 0.104939, -0.768194,
		0.332463, -0.858431, -0.390594,
		35.233173, 29.365946, 46.040504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416634, 29.674971, 46.027054>,  <35.000450, 29.966848, 46.313919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416634, 29.674971, 46.027054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680714, 29.382656, 46.096436>,  <34.839161, 29.207268, 46.138065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680714, 29.382656, 46.096436>,  <34.416634, 29.674971, 46.027054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680714, 29.382656, 46.096436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674459, -0.475199, 0.565058,
		-0.330509, -0.490042, -0.806612,
		0.660203, -0.730784, 0.173455,
		34.878773, 29.163420, 46.148472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970108, 29.070648, 46.087303>,  <34.416634, 29.674971, 46.027054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970108, 29.070648, 46.087303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313946, 28.972523, 46.266602>,  <34.520248, 28.913647, 46.374180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313946, 28.972523, 46.266602>,  <33.970108, 29.070648, 46.087303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313946, 28.972523, 46.266602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497912, -0.599243, 0.626890,
		0.114822, -0.762055, -0.637250,
		0.859592, -0.245314, 0.448243,
		34.571823, 28.898928, 46.401073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230751, 28.339388, 45.899117>,  <33.970108, 29.070648, 46.087303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230751, 28.339388, 45.899117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322876, 28.476406, 46.263451>,  <34.378151, 28.558617, 46.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322876, 28.476406, 46.263451>,  <34.230751, 28.339388, 45.899117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322876, 28.476406, 46.263451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609955, -0.678488, 0.409402,
		0.758228, -0.649858, 0.052671,
		0.230317, 0.342547, 0.910833,
		34.391972, 28.579170, 46.536701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166489, 27.685860, 46.343914>,  <34.230751, 28.339388, 45.899117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166489, 27.685860, 46.343914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211445, 27.982704, 46.608231>,  <34.238419, 28.160810, 46.766819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211445, 27.982704, 46.608231>,  <34.166489, 27.685860, 46.343914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211445, 27.982704, 46.608231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491884, -0.536259, 0.685913,
		0.863377, -0.402118, 0.304764,
		0.112386, 0.742110, 0.660788,
		34.245159, 28.205338, 46.806469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379318, 27.399343, 46.945690>,  <34.166489, 27.685860, 46.343914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379318, 27.399343, 46.945690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232815, 27.757679, 47.046352>,  <34.144913, 27.972681, 47.106750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232815, 27.757679, 47.046352>,  <34.379318, 27.399343, 46.945690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232815, 27.757679, 47.046352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557957, -0.427864, 0.711067,
		0.744676, 0.120018, 0.656546,
		-0.366254, 0.895839, 0.251655,
		34.122940, 28.026430, 47.121849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290070, 27.270880, 47.653713>,  <34.379318, 27.399343, 46.945690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290070, 27.270880, 47.653713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091026, 27.606483, 47.565670>,  <33.971600, 27.807846, 47.512844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091026, 27.606483, 47.565670>,  <34.290070, 27.270880, 47.653713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091026, 27.606483, 47.565670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556069, -0.113807, 0.823307,
		0.665711, 0.532084, 0.523178,
		-0.497610, 0.839008, -0.220112,
		33.941742, 27.858187, 47.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297951, 27.546988, 48.325134>,  <34.290070, 27.270880, 47.653713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297951, 27.546988, 48.325134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011658, 27.710546, 48.098671>,  <33.839882, 27.808681, 47.962795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011658, 27.710546, 48.098671>,  <34.297951, 27.546988, 48.325134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011658, 27.710546, 48.098671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659247, -0.128033, 0.740946,
		0.230486, 0.903553, 0.361203,
		-0.715730, 0.408900, -0.566155,
		33.796940, 27.833216, 47.928825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976059, 28.163713, 48.668114>,  <34.297951, 27.546988, 48.325134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976059, 28.163713, 48.668114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696114, 28.023558, 48.419140>,  <33.528149, 27.939465, 48.269756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696114, 28.023558, 48.419140>,  <33.976059, 28.163713, 48.668114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696114, 28.023558, 48.419140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639346, -0.081250, 0.764614,
		-0.318485, 0.933074, -0.167156,
		-0.699860, -0.350389, -0.622434,
		33.486156, 27.918442, 48.232410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502079, 28.619871, 48.805164>,  <33.976059, 28.163713, 48.668114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502079, 28.619871, 48.805164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309685, 28.312706, 48.635948>,  <33.194248, 28.128407, 48.534420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309685, 28.312706, 48.635948>,  <33.502079, 28.619871, 48.805164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309685, 28.312706, 48.635948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700326, 0.046237, 0.712324,
		-0.527441, 0.638885, -0.560028,
		-0.480987, -0.767911, -0.423041,
		33.165390, 28.082333, 48.509037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800144, 28.754553, 48.926388>,  <33.502079, 28.619871, 48.805164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800144, 28.754553, 48.926388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826336, 28.362278, 48.852669>,  <32.842052, 28.126913, 48.808437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826336, 28.362278, 48.852669>,  <32.800144, 28.754553, 48.926388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826336, 28.362278, 48.852669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428831, -0.194424, 0.882215,
		-0.901008, 0.021261, -0.433281,
		0.065483, -0.980687, -0.184295,
		32.845982, 28.068071, 48.797379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138649, 28.479147, 49.115654>,  <32.800144, 28.754553, 48.926388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138649, 28.479147, 49.115654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357006, 28.144062, 49.109447>,  <32.488022, 27.943012, 49.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357006, 28.144062, 49.109447>,  <32.138649, 28.479147, 49.115654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357006, 28.144062, 49.109447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384053, -0.266639, 0.883972,
		-0.744650, -0.476596, -0.467282,
		0.545893, -0.837711, -0.015515,
		32.520775, 27.892748, 49.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746895, 27.967062, 49.290844>,  <32.138649, 28.479147, 49.115654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746895, 27.967062, 49.290844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108826, 27.814474, 49.366489>,  <32.325985, 27.722921, 49.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108826, 27.814474, 49.366489>,  <31.746895, 27.967062, 49.290844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108826, 27.814474, 49.366489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328348, -0.342407, 0.880309,
		-0.271058, -0.858625, -0.435075,
		0.904829, -0.381471, 0.189116,
		32.380276, 27.700033, 49.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606119, 27.329994, 49.678867>,  <31.746895, 27.967062, 49.290844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606119, 27.329994, 49.678867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992144, 27.415522, 49.739449>,  <32.223759, 27.466839, 49.775795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992144, 27.415522, 49.739449>,  <31.606119, 27.329994, 49.678867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992144, 27.415522, 49.739449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052317, -0.409121, 0.910979,
		0.256746, -0.887075, -0.383641,
		0.965062, 0.213819, 0.151449,
		32.281662, 27.479668, 49.784882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786835, 26.761919, 49.971607>,  <31.606119, 27.329994, 49.678867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786835, 26.761919, 49.971607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079937, 27.024433, 50.043560>,  <32.255798, 27.181942, 50.086731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079937, 27.024433, 50.043560>,  <31.786835, 26.761919, 49.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079937, 27.024433, 50.043560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114968, -0.379930, 0.917843,
		0.670710, -0.651874, -0.353848,
		0.732755, 0.656288, 0.179878,
		32.299763, 27.221319, 50.097523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360023, 26.399120, 50.330750>,  <31.786835, 26.761919, 49.971607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360023, 26.399120, 50.330750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387669, 26.783710, 50.437172>,  <32.404255, 27.014465, 50.501026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387669, 26.783710, 50.437172>,  <32.360023, 26.399120, 50.330750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387669, 26.783710, 50.437172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043315, -0.263547, 0.963674,
		0.996668, -0.078128, 0.023432,
		0.069115, 0.961478, 0.266053,
		32.408401, 27.072153, 50.516987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963284, 26.588512, 50.869812>,  <32.360023, 26.399120, 50.330750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963284, 26.588512, 50.869812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674839, 26.864492, 50.895000>,  <32.501774, 27.030081, 50.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674839, 26.864492, 50.895000>,  <32.963284, 26.588512, 50.869812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674839, 26.864492, 50.895000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162010, -0.256301, 0.952923,
		0.673610, 0.676963, 0.296601,
		-0.721112, 0.689951, 0.062971,
		32.458504, 27.071478, 50.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036392, 26.822292, 51.579659>,  <32.963284, 26.588512, 50.869812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036392, 26.822292, 51.579659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674011, 26.946531, 51.464573>,  <32.456581, 27.021074, 51.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674011, 26.946531, 51.464573>,  <33.036392, 26.822292, 51.579659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674011, 26.946531, 51.464573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274738, 0.085783, 0.957685,
		0.322134, 0.946664, 0.007617,
		-0.905952, 0.310595, -0.287718,
		32.402225, 27.039709, 51.378258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817291, 27.254463, 52.126423>,  <33.036392, 26.822292, 51.579659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817291, 27.254463, 52.126423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471428, 27.180334, 51.939648>,  <32.263912, 27.135857, 51.827583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471428, 27.180334, 51.939648>,  <32.817291, 27.254463, 52.126423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471428, 27.180334, 51.939648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481426, 0.040115, 0.875568,
		-0.143532, 0.981858, -0.123905,
		-0.864655, -0.185323, -0.466934,
		32.212032, 27.124737, 51.799568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446293, 27.854752, 52.279869>,  <32.817291, 27.254463, 52.126423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446293, 27.854752, 52.279869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244629, 27.517300, 52.205986>,  <32.123631, 27.314829, 52.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244629, 27.517300, 52.205986>,  <32.446293, 27.854752, 52.279869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244629, 27.517300, 52.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519207, 0.125180, 0.845431,
		-0.690109, 0.522129, -0.501129,
		-0.504156, -0.843630, -0.184705,
		32.093384, 27.264212, 52.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979120, 28.257750, 52.473881>,  <32.446293, 27.854752, 52.279869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979120, 28.257750, 52.473881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032379, 28.612148, 52.651546>,  <32.064335, 28.824787, 52.758144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032379, 28.612148, 52.651546>,  <31.979120, 28.257750, 52.473881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032379, 28.612148, 52.651546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637283, 0.266686, -0.723014,
		-0.759040, 0.379326, -0.529122,
		0.133149, 0.885997, 0.444163,
		32.072323, 28.877947, 52.784794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128872, 28.702684, 51.942276>,  <31.979120, 28.257750, 52.473881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128872, 28.702684, 51.942276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274708, 28.880327, 52.269653>,  <32.362209, 28.986914, 52.466080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274708, 28.880327, 52.269653>,  <32.128872, 28.702684, 51.942276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274708, 28.880327, 52.269653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765073, 0.358152, -0.535155,
		-0.530792, 0.821277, -0.209197,
		0.364586, 0.444107, 0.818441,
		32.384083, 29.013559, 52.515186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343914, 29.376528, 51.652184>,  <32.128872, 28.702684, 51.942276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343914, 29.376528, 51.652184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525005, 29.287745, 51.997616>,  <32.633659, 29.234474, 52.204876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525005, 29.287745, 51.997616>,  <32.343914, 29.376528, 51.652184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525005, 29.287745, 51.997616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822980, 0.476733, -0.308916,
		-0.343131, 0.850565, 0.398497,
		0.452729, -0.221957, 0.863581,
		32.660824, 29.221157, 52.256691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769592, 30.020792, 51.735794>,  <32.343914, 29.376528, 51.652184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769592, 30.020792, 51.735794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932068, 29.778637, 52.009586>,  <33.029552, 29.633343, 52.173862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932068, 29.778637, 52.009586>,  <32.769592, 30.020792, 51.735794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932068, 29.778637, 52.009586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899435, 0.397118, -0.182518,
		-0.161326, 0.689783, 0.705814,
		0.406189, -0.605389, 0.684481,
		33.053925, 29.597021, 52.214931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208839, 30.444454, 52.148129>,  <32.769592, 30.020792, 51.735794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208839, 30.444454, 52.148129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369728, 30.081383, 52.196022>,  <33.466259, 29.863539, 52.224758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369728, 30.081383, 52.196022>,  <33.208839, 30.444454, 52.148129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369728, 30.081383, 52.196022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871805, 0.339775, -0.352859,
		0.279600, 0.246312, 0.927984,
		0.402219, -0.907680, 0.119735,
		33.490395, 29.809078, 52.231941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867107, 30.590208, 52.407097>,  <33.208839, 30.444454, 52.148129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867107, 30.590208, 52.407097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900864, 30.220528, 52.258110>,  <33.921116, 29.998720, 52.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900864, 30.220528, 52.258110>,  <33.867107, 30.590208, 52.407097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900864, 30.220528, 52.258110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872563, 0.249041, -0.420253,
		0.481157, -0.289535, 0.827440,
		0.084388, -0.924201, -0.372465,
		33.926182, 29.943268, 52.146370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597019, 30.335672, 52.571728>,  <33.867107, 30.590208, 52.407097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597019, 30.335672, 52.571728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452991, 30.101974, 52.280796>,  <34.366573, 29.961756, 52.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452991, 30.101974, 52.280796>,  <34.597019, 30.335672, 52.571728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452991, 30.101974, 52.280796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892676, 0.010762, -0.450570,
		0.271071, -0.811506, 0.517667,
		-0.360069, -0.584245, -0.727329,
		34.344971, 29.926701, 52.062595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137421, 29.987715, 52.257900>,  <34.597019, 30.335672, 52.571728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137421, 29.987715, 52.257900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874672, 29.929535, 51.961964>,  <34.717022, 29.894627, 51.784401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874672, 29.929535, 51.961964>,  <35.137421, 29.987715, 52.257900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874672, 29.929535, 51.961964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752416, -0.190078, -0.630666,
		-0.048896, -0.970935, 0.234296,
		-0.656870, -0.145451, -0.739841,
		34.677612, 29.885900, 51.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451443, 29.417088, 51.811150>,  <35.137421, 29.987715, 52.257900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451443, 29.417088, 51.811150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194302, 29.614370, 51.576717>,  <35.040016, 29.732740, 51.436058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194302, 29.614370, 51.576717>,  <35.451443, 29.417088, 51.811150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194302, 29.614370, 51.576717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617511, -0.119035, -0.777503,
		-0.453233, -0.861730, -0.228037,
		-0.642854, 0.493206, -0.586079,
		35.001446, 29.762333, 51.400894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579475, 29.180096, 51.120045>,  <35.451443, 29.417088, 51.811150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579475, 29.180096, 51.120045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359592, 29.510660, 51.071262>,  <35.227665, 29.708998, 51.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359592, 29.510660, 51.071262>,  <35.579475, 29.180096, 51.120045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359592, 29.510660, 51.071262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514764, 0.220131, -0.828589,
		-0.657909, -0.518255, -0.546413,
		-0.549703, 0.826410, -0.121952,
		35.194683, 29.758583, 51.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595413, 29.292414, 50.434402>,  <35.579475, 29.180096, 51.120045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595413, 29.292414, 50.434402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423180, 29.641876, 50.525024>,  <35.319839, 29.851553, 50.579395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423180, 29.641876, 50.525024>,  <35.595413, 29.292414, 50.434402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423180, 29.641876, 50.525024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339901, 0.389496, -0.856014,
		-0.836103, -0.291577, -0.464666,
		-0.430579, 0.873656, 0.226552,
		35.294006, 29.903973, 50.592991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215694, 29.566227, 49.789337>,  <35.595413, 29.292414, 50.434402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215694, 29.566227, 49.789337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337219, 29.850786, 50.042828>,  <35.410133, 30.021523, 50.194923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337219, 29.850786, 50.042828>,  <35.215694, 29.566227, 49.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337219, 29.850786, 50.042828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369494, 0.525127, -0.766626,
		-0.878165, 0.467068, -0.103318,
		0.303811, 0.711399, 0.633727,
		35.428364, 30.064205, 50.232944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044548, 30.229647, 49.502811>,  <35.215694, 29.566227, 49.789337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044548, 30.229647, 49.502811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370205, 30.251646, 49.734032>,  <35.565601, 30.264847, 49.872765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370205, 30.251646, 49.734032>,  <35.044548, 30.229647, 49.502811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370205, 30.251646, 49.734032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523038, 0.362899, -0.771191,
		-0.252189, 0.930204, 0.266685,
		0.814145, 0.055000, 0.578051,
		35.614449, 30.268147, 49.907448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396839, 30.934813, 49.377079>,  <35.044548, 30.229647, 49.502811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396839, 30.934813, 49.377079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664272, 30.671391, 49.515240>,  <35.824734, 30.513338, 49.598137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664272, 30.671391, 49.515240>,  <35.396839, 30.934813, 49.377079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664272, 30.671391, 49.515240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543522, 0.115761, -0.831374,
		0.507522, 0.743575, 0.435335,
		0.668584, -0.658555, 0.345398,
		35.864849, 30.473824, 49.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985737, 31.226309, 49.281727>,  <35.396839, 30.934813, 49.377079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985737, 31.226309, 49.281727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029606, 30.829311, 49.303379>,  <36.055927, 30.591112, 49.316368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029606, 30.829311, 49.303379>,  <35.985737, 31.226309, 49.281727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029606, 30.829311, 49.303379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594560, 0.021867, -0.803754,
		0.796537, 0.120331, 0.592494,
		0.109672, -0.992493, 0.054126,
		36.062508, 30.531563, 49.319618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733074, 31.144993, 49.105614>,  <35.985737, 31.226309, 49.281727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733074, 31.144993, 49.105614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564133, 30.787611, 49.044479>,  <36.462769, 30.573183, 49.007797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564133, 30.787611, 49.044479>,  <36.733074, 31.144993, 49.105614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564133, 30.787611, 49.044479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423957, -0.045680, -0.904530,
		0.801173, -0.446828, 0.398079,
		-0.422353, -0.893453, -0.152838,
		36.437428, 30.519575, 48.998627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304787, 30.622557, 48.931496>,  <36.733074, 31.144993, 49.105614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304787, 30.622557, 48.931496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943996, 30.554468, 48.772770>,  <36.727524, 30.513615, 48.677532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943996, 30.554468, 48.772770>,  <37.304787, 30.622557, 48.931496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943996, 30.554468, 48.772770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387666, 0.085448, -0.917831,
		0.190141, -0.981694, -0.011083,
		-0.901977, -0.170221, -0.396817,
		36.673405, 30.503403, 48.653725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493793, 30.259087, 48.362202>,  <37.304787, 30.622557, 48.931496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493793, 30.259087, 48.362202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114826, 30.372025, 48.301964>,  <36.887447, 30.439787, 48.265823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114826, 30.372025, 48.301964>,  <37.493793, 30.259087, 48.362202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114826, 30.372025, 48.301964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190228, 0.118526, -0.974559,
		-0.257315, -0.951962, -0.166003,
		-0.947419, 0.282347, -0.150591,
		36.830601, 30.456728, 48.256786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371391, 29.974373, 47.681538>,  <37.493793, 30.259087, 48.362202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371391, 29.974373, 47.681538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076439, 30.241678, 47.720928>,  <36.899467, 30.402061, 47.744564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076439, 30.241678, 47.720928>,  <37.371391, 29.974373, 47.681538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076439, 30.241678, 47.720928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169230, 0.323903, -0.930832,
		-0.653939, -0.669708, -0.351930,
		-0.737377, 0.668264, 0.098478,
		36.855225, 30.442158, 47.750473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962170, 29.985926, 47.017982>,  <37.371391, 29.974373, 47.681538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962170, 29.985926, 47.017982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914658, 30.330442, 47.215595>,  <36.886150, 30.537153, 47.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914658, 30.330442, 47.215595>,  <36.962170, 29.985926, 47.017982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914658, 30.330442, 47.215595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183988, 0.508029, -0.841460,
		-0.975725, -0.009052, -0.218811,
		-0.118779, 0.861293, 0.494031,
		36.879025, 30.588831, 47.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587948, 30.382019, 46.618839>,  <36.962170, 29.985926, 47.017982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587948, 30.382019, 46.618839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774971, 30.635695, 46.865154>,  <36.887184, 30.787899, 47.012943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774971, 30.635695, 46.865154>,  <36.587948, 30.382019, 46.618839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774971, 30.635695, 46.865154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246542, 0.575424, -0.779810,
		-0.848887, 0.516423, 0.112689,
		0.467556, 0.634188, 0.615790,
		36.915237, 30.825951, 47.049892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402206, 30.943819, 46.315628>,  <36.587948, 30.382019, 46.618839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402206, 30.943819, 46.315628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708504, 31.067024, 46.541466>,  <36.892281, 31.140947, 46.676968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708504, 31.067024, 46.541466>,  <36.402206, 30.943819, 46.315628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708504, 31.067024, 46.541466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381589, 0.489074, -0.784345,
		-0.517717, 0.816049, 0.256969,
		0.765741, 0.308012, 0.564597,
		36.938225, 31.159428, 46.710846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554852, 31.624861, 45.988239>,  <36.402206, 30.943819, 46.315628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554852, 31.624861, 45.988239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881042, 31.511793, 46.190266>,  <37.076756, 31.443953, 46.311481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881042, 31.511793, 46.190266>,  <36.554852, 31.624861, 45.988239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881042, 31.511793, 46.190266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578631, 0.418608, -0.699966,
		-0.013566, 0.863055, 0.504927,
		0.815476, -0.282671, 0.505070,
		37.125687, 31.426992, 46.341785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877174, 32.252041, 46.281250>,  <36.554852, 31.624861, 45.988239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877174, 32.252041, 46.281250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128246, 31.944595, 46.231842>,  <37.278889, 31.760128, 46.202198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128246, 31.944595, 46.231842>,  <36.877174, 32.252041, 46.281250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128246, 31.944595, 46.231842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498550, 0.518750, -0.694512,
		0.597888, 0.374346, 0.708799,
		0.627677, -0.768612, -0.123524,
		37.316551, 31.714012, 46.194786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590431, 32.513783, 46.136665>,  <36.877174, 32.252041, 46.281250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590431, 32.513783, 46.136665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658989, 32.139542, 46.013203>,  <37.700123, 31.914997, 45.939125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658989, 32.139542, 46.013203>,  <37.590431, 32.513783, 46.136665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658989, 32.139542, 46.013203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539557, 0.351273, -0.765170,
		0.824319, -0.035392, 0.565018,
		0.171395, -0.935604, -0.308657,
		37.710407, 31.858860, 45.920605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302254, 32.524101, 46.014381>,  <37.590431, 32.513783, 46.136665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302254, 32.524101, 46.014381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177261, 32.191624, 45.830433>,  <38.102264, 31.992138, 45.720066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177261, 32.191624, 45.830433>,  <38.302254, 32.524101, 46.014381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177261, 32.191624, 45.830433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617728, 0.189967, -0.763102,
		0.721642, -0.522529, 0.454088,
		-0.312481, -0.831190, -0.459869,
		38.083519, 31.942266, 45.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986423, 32.125736, 45.717430>,  <38.302254, 32.524101, 46.014381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986423, 32.125736, 45.717430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649464, 32.021549, 45.528740>,  <38.447289, 31.959036, 45.415527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649464, 32.021549, 45.528740>,  <38.986423, 32.125736, 45.717430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649464, 32.021549, 45.528740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458270, 0.114217, -0.881444,
		0.283467, -0.958703, 0.023149,
		-0.842398, -0.260468, -0.471721,
		38.396744, 31.943409, 45.387222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136551, 31.501104, 45.273846>,  <38.986423, 32.125736, 45.717430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136551, 31.501104, 45.273846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833069, 31.712013, 45.120819>,  <38.650978, 31.838558, 45.029003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833069, 31.712013, 45.120819>,  <39.136551, 31.501104, 45.273846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833069, 31.712013, 45.120819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493078, 0.081030, -0.866203,
		-0.425724, -0.845825, -0.321463,
		-0.758704, 0.527270, -0.382562,
		38.605457, 31.870193, 45.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384007, 31.451622, 44.611950>,  <39.136551, 31.501104, 45.273846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384007, 31.451622, 44.611950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070801, 31.700022, 44.597839>,  <38.882877, 31.849062, 44.589375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070801, 31.700022, 44.597839>,  <39.384007, 31.451622, 44.611950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070801, 31.700022, 44.597839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307407, 0.337063, -0.889882,
		-0.540726, -0.707636, -0.454826,
		-0.783018, 0.620998, -0.035274,
		38.835896, 31.886322, 44.587257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120628, 31.431400, 43.914497>,  <39.384007, 31.451622, 44.611950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120628, 31.431400, 43.914497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998970, 31.780081, 44.068192>,  <38.925976, 31.989288, 44.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998970, 31.780081, 44.068192>,  <39.120628, 31.431400, 43.914497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998970, 31.780081, 44.068192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343651, 0.476578, -0.809183,
		-0.888482, -0.114068, -0.444510,
		-0.304145, 0.871701, 0.384232,
		38.907726, 32.041592, 44.183460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803391, 31.788015, 43.389553>,  <39.120628, 31.431400, 43.914497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803391, 31.788015, 43.389553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909306, 32.081692, 43.639626>,  <38.972855, 32.257896, 43.789669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909306, 32.081692, 43.639626>,  <38.803391, 31.788015, 43.389553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909306, 32.081692, 43.639626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307858, 0.550033, -0.776329,
		-0.913844, 0.398030, -0.080384,
		0.264788, 0.734190, 0.625181,
		38.988743, 32.301949, 43.827179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651169, 32.332928, 43.007011>,  <38.803391, 31.788015, 43.389553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651169, 32.332928, 43.007011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872284, 32.510628, 43.289024>,  <39.004955, 32.617249, 43.458233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872284, 32.510628, 43.289024>,  <38.651169, 32.332928, 43.007011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872284, 32.510628, 43.289024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464351, 0.538311, -0.703277,
		-0.691954, 0.716147, 0.091287,
		0.552791, 0.444246, 0.705031,
		39.038120, 32.643902, 43.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710175, 33.039024, 42.781315>,  <38.651169, 32.332928, 43.007011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710175, 33.039024, 42.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019260, 32.936527, 43.013607>,  <39.204712, 32.875031, 43.152981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019260, 32.936527, 43.013607>,  <38.710175, 33.039024, 42.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019260, 32.936527, 43.013607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631478, 0.403098, -0.662381,
		-0.064362, 0.878552, 0.473291,
		0.772718, -0.256241, 0.580730,
		39.251076, 32.859653, 43.187824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042210, 33.663082, 43.089928>,  <38.710175, 33.039024, 42.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042210, 33.663082, 43.089928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286747, 33.348633, 43.053558>,  <39.433468, 33.159962, 43.031734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286747, 33.348633, 43.053558>,  <39.042210, 33.663082, 43.089928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286747, 33.348633, 43.053558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667463, 0.573937, -0.474436,
		0.425152, 0.229354, 0.875581,
		0.611342, -0.786126, -0.090925,
		39.470150, 33.112797, 43.026279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582344, 33.853172, 42.653282>,  <39.042210, 33.663082, 43.089928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582344, 33.853172, 42.653282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738445, 33.491802, 42.724312>,  <39.832108, 33.274982, 42.766930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738445, 33.491802, 42.724312>,  <39.582344, 33.853172, 42.653282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738445, 33.491802, 42.724312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692286, 0.160770, -0.703487,
		0.606996, 0.397470, 0.688167,
		0.390252, -0.903421, 0.177576,
		39.855522, 33.220776, 42.777584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364067, 33.918133, 42.477085>,  <39.582344, 33.853172, 42.653282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364067, 33.918133, 42.477085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221474, 33.544697, 42.462471>,  <40.135918, 33.320637, 42.453705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221474, 33.544697, 42.462471>,  <40.364067, 33.918133, 42.477085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221474, 33.544697, 42.462471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342956, -0.094384, -0.934598,
		0.869081, -0.345698, 0.353825,
		-0.356484, -0.933587, -0.036532,
		40.114529, 33.264622, 42.451511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923489, 33.451229, 42.258141>,  <40.364067, 33.918133, 42.477085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923489, 33.451229, 42.258141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582218, 33.259834, 42.175064>,  <40.377457, 33.144997, 42.125217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582218, 33.259834, 42.175064>,  <40.923489, 33.451229, 42.258141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582218, 33.259834, 42.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330012, -0.186788, -0.925312,
		0.403960, -0.857995, 0.317270,
		-0.853176, -0.478492, -0.207694,
		40.326267, 33.116287, 42.112755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179157, 32.906841, 41.737850>,  <40.923489, 33.451229, 42.258141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179157, 32.906841, 41.737850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783829, 32.959858, 41.707756>,  <40.546631, 32.991669, 41.689701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783829, 32.959858, 41.707756>,  <41.179157, 32.906841, 41.737850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783829, 32.959858, 41.707756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076250, 0.002580, -0.997085,
		-0.131962, -0.991174, -0.012657,
		-0.988318, 0.132542, -0.075236,
		40.487335, 32.999619, 41.685184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957203, 32.363480, 41.342812>,  <41.179157, 32.906841, 41.737850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957203, 32.363480, 41.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669487, 32.640285, 41.318359>,  <40.496857, 32.806370, 41.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669487, 32.640285, 41.318359>,  <40.957203, 32.363480, 41.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669487, 32.640285, 41.318359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170901, 0.090966, -0.981080,
		-0.673361, -0.716128, -0.183697,
		-0.719290, 0.692015, -0.061134,
		40.453701, 32.847889, 41.300018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478569, 32.125221, 40.758106>,  <40.957203, 32.363480, 41.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478569, 32.125221, 40.758106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453793, 32.517204, 40.833832>,  <40.438927, 32.752396, 40.879269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453793, 32.517204, 40.833832>,  <40.478569, 32.125221, 40.758106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453793, 32.517204, 40.833832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316326, 0.199174, -0.927506,
		-0.946627, 0.002438, -0.322323,
		-0.061937, 0.979961, 0.189315,
		40.435211, 32.811192, 40.890625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161335, 32.378193, 40.214699>,  <40.478569, 32.125221, 40.758106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161335, 32.378193, 40.214699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364708, 32.681149, 40.378582>,  <40.486732, 32.862923, 40.476913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364708, 32.681149, 40.378582>,  <40.161335, 32.378193, 40.214699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364708, 32.681149, 40.378582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379353, 0.230132, -0.896176,
		-0.773040, 0.611067, -0.170312,
		0.508429, 0.757388, 0.409711,
		40.517235, 32.908363, 40.501495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083099, 33.038445, 39.832390>,  <40.161335, 32.378193, 40.214699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083099, 33.038445, 39.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438305, 33.010090, 40.014122>,  <40.651428, 32.993076, 40.123161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438305, 33.010090, 40.014122>,  <40.083099, 33.038445, 39.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438305, 33.010090, 40.014122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459664, 0.162930, -0.873019,
		-0.012140, 0.984088, 0.177266,
		0.888010, -0.070885, 0.454328,
		40.704708, 32.988823, 40.150421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437038, 33.454742, 39.418175>,  <40.083099, 33.038445, 39.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437038, 33.454742, 39.418175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739662, 33.289902, 39.621269>,  <40.921234, 33.190998, 39.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739662, 33.289902, 39.621269>,  <40.437038, 33.454742, 39.418175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739662, 33.289902, 39.621269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609297, 0.162304, -0.776154,
		0.237446, 0.896566, 0.373883,
		0.756556, -0.412101, 0.507736,
		40.966629, 33.166271, 39.773590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914440, 33.972050, 39.412022>,  <40.437038, 33.454742, 39.418175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914440, 33.972050, 39.412022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 33.614754, 39.480000>,  <41.180817, 33.400375, 39.520786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080925, 33.614754, 39.480000>,  <40.914440, 33.972050, 39.412022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080925, 33.614754, 39.480000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709094, 0.201870, -0.675599,
		0.569165, 0.401706, 0.717414,
		0.416217, -0.893242, 0.169950,
		41.205791, 33.346783, 39.530983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662792, 34.576805, 39.296349>,  <40.914440, 33.972050, 39.412022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662792, 34.576805, 39.296349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715733, 34.785587, 38.959290>,  <40.747498, 34.910854, 38.757053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715733, 34.785587, 38.959290>,  <40.662792, 34.576805, 39.296349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715733, 34.785587, 38.959290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938136, 0.208471, 0.276479,
		0.319976, -0.827107, -0.462071,
		0.132349, 0.521953, -0.842644,
		40.755436, 34.942173, 38.706497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270191, 34.310150, 38.820175>,  <40.662792, 34.576805, 39.296349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270191, 34.310150, 38.820175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223042, 34.703983, 38.768490>,  <41.194752, 34.940285, 38.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223042, 34.703983, 38.768490>,  <41.270191, 34.310150, 38.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223042, 34.703983, 38.768490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987590, 0.129833, 0.088369,
		0.103783, -0.117196, -0.987671,
		-0.117876, 0.984585, -0.129217,
		41.187679, 34.999359, 38.729725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551208, 34.615700, 38.123474>,  <41.270191, 34.310150, 38.820175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551208, 34.615700, 38.123474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572235, 34.818455, 38.467636>,  <41.584850, 34.940109, 38.674133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572235, 34.818455, 38.467636>,  <41.551208, 34.615700, 38.123474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572235, 34.818455, 38.467636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998614, -0.024466, -0.046600,
		-0.002570, 0.861663, -0.507474,
		0.052569, 0.506890, 0.860406,
		41.588005, 34.970520, 38.725758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776405, 34.052486, 37.598240>,  <41.551208, 34.615700, 38.123474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776405, 34.052486, 37.598240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019413, 34.142399, 37.293503>,  <42.165218, 34.196346, 37.110661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019413, 34.142399, 37.293503>,  <41.776405, 34.052486, 37.598240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019413, 34.142399, 37.293503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316712, 0.811031, 0.491857,
		0.728436, -0.540094, 0.421521,
		0.607515, 0.224785, -0.761838,
		42.201668, 34.209835, 37.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340359, 34.039364, 37.900028>,  <41.776405, 34.052486, 37.598240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340359, 34.039364, 37.900028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361149, 34.275654, 37.577950>,  <42.373623, 34.417427, 37.384701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361149, 34.275654, 37.577950>,  <42.340359, 34.039364, 37.900028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361149, 34.275654, 37.577950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490915, 0.687027, 0.535720,
		0.869655, -0.423131, -0.254284,
		0.051980, 0.590724, -0.805198,
		42.376743, 34.452869, 37.336391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093216, 34.247723, 37.727089>,  <42.340359, 34.039364, 37.900028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093216, 34.247723, 37.727089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849731, 34.523724, 37.570442>,  <42.703640, 34.689323, 37.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849731, 34.523724, 37.570442>,  <43.093216, 34.247723, 37.727089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849731, 34.523724, 37.570442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514286, 0.719012, 0.467473,
		0.604137, 0.083151, -0.792530,
		-0.608710, 0.690005, -0.391619,
		42.667118, 34.730724, 37.452957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530533, 34.809555, 37.599583>,  <43.093216, 34.247723, 37.727089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530533, 34.809555, 37.599583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170296, 34.983418, 37.599087>,  <42.954151, 35.087734, 37.598789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170296, 34.983418, 37.599087>,  <43.530533, 34.809555, 37.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170296, 34.983418, 37.599087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401928, 0.833858, 0.378332,
		0.165476, 0.340228, -0.925669,
		-0.900595, 0.434657, -0.001237,
		42.900116, 35.113815, 37.598717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674789, 35.568207, 37.496681>,  <43.530533, 34.809555, 37.599583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674789, 35.568207, 37.496681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298260, 35.593552, 37.629288>,  <43.072342, 35.608757, 37.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298260, 35.593552, 37.629288>,  <43.674789, 35.568207, 37.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298260, 35.593552, 37.629288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175256, 0.931180, 0.319669,
		-0.288445, 0.359011, -0.887643,
		-0.941321, 0.063358, 0.331513,
		43.015865, 35.612560, 37.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319534, 36.213524, 37.190590>,  <43.674789, 35.568207, 37.496681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319534, 36.213524, 37.190590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121342, 36.136894, 37.529484>,  <43.002426, 36.090916, 37.732819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121342, 36.136894, 37.529484>,  <43.319534, 36.213524, 37.190590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121342, 36.136894, 37.529484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069874, 0.981006, 0.180955,
		-0.865805, 0.030460, -0.499454,
		-0.495479, -0.191570, 0.847231,
		42.972698, 36.079422, 37.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767235, 36.815937, 37.289738>,  <43.319534, 36.213524, 37.190590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767235, 36.815937, 37.289738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810848, 36.635586, 37.644100>,  <42.837017, 36.527374, 37.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810848, 36.635586, 37.644100>,  <42.767235, 36.815937, 37.289738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810848, 36.635586, 37.644100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000043, 0.891214, 0.453583,
		-0.994038, -0.049496, 0.097156,
		0.109037, -0.450874, 0.885903,
		42.843559, 36.500324, 37.909870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166859, 37.118694, 37.696579>,  <42.767235, 36.815937, 37.289738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166859, 37.118694, 37.696579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451145, 36.972282, 37.936882>,  <42.621716, 36.884438, 38.081062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451145, 36.972282, 37.936882>,  <42.166859, 37.118694, 37.696579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451145, 36.972282, 37.936882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118861, 0.779219, 0.615377,
		-0.693366, -0.508764, 0.510296,
		0.710715, -0.366027, 0.600757,
		42.664360, 36.862473, 38.117107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994408, 37.328094, 38.355640>,  <42.166859, 37.118694, 37.696579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994408, 37.328094, 38.355640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378593, 37.226589, 38.401447>,  <42.609104, 37.165688, 38.428932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378593, 37.226589, 38.401447>,  <41.994408, 37.328094, 38.355640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378593, 37.226589, 38.401447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176879, 0.873853, 0.452874,
		-0.214993, -0.414714, 0.884189,
		0.960464, -0.253760, 0.114518,
		42.666733, 37.150463, 38.435802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184319, 37.584648, 39.088818>,  <41.994408, 37.328094, 38.355640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184319, 37.584648, 39.088818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531048, 37.545662, 38.893219>,  <42.739086, 37.522270, 38.775860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531048, 37.545662, 38.893219>,  <42.184319, 37.584648, 39.088818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531048, 37.545662, 38.893219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323687, 0.855962, 0.403182,
		0.379265, -0.507769, 0.773517,
		0.866824, -0.097465, -0.488995,
		42.791096, 37.516422, 38.746521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737892, 37.766357, 39.489220>,  <42.184319, 37.584648, 39.088818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737892, 37.766357, 39.489220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882786, 37.803486, 39.118240>,  <42.969723, 37.825764, 38.895653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882786, 37.803486, 39.118240>,  <42.737892, 37.766357, 39.489220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882786, 37.803486, 39.118240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450481, 0.853667, 0.261380,
		0.815997, -0.512481, 0.267417,
		0.362238, 0.092819, -0.927453,
		42.991455, 37.831333, 38.840004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358173, 38.016273, 39.586040>,  <42.737892, 37.766357, 39.489220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358173, 38.016273, 39.586040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279007, 38.107727, 39.204769>,  <43.231506, 38.162601, 38.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279007, 38.107727, 39.204769>,  <43.358173, 38.016273, 39.586040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279007, 38.107727, 39.204769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339483, 0.928223, 0.152161,
		0.919555, -0.293474, -0.261327,
		-0.197914, 0.228636, -0.953182,
		43.219631, 38.176319, 38.918816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909084, 38.489735, 39.331158>,  <43.358173, 38.016273, 39.586040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909084, 38.489735, 39.331158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608372, 38.554581, 39.075489>,  <43.427944, 38.593491, 38.922089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608372, 38.554581, 39.075489>,  <43.909084, 38.489735, 39.331158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608372, 38.554581, 39.075489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150177, 0.985928, 0.073433,
		0.642082, -0.040783, -0.765550,
		-0.751783, 0.162118, -0.639172,
		43.382835, 38.603214, 38.883736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214672, 38.988693, 38.642628>,  <43.909084, 38.489735, 39.331158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214672, 38.988693, 38.642628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818230, 39.016815, 38.687817>,  <43.580364, 39.033688, 38.714931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.818230, 39.016815, 38.687817>,  <44.214672, 38.988693, 38.642628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818230, 39.016815, 38.687817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077535, 0.995125, 0.060946,
		-0.108139, 0.069164, -0.991727,
		-0.991108, 0.070303, 0.112974,
		43.520897, 39.037907, 38.721710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057388, 39.417572, 38.133949>,  <44.214672, 38.988693, 38.642628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057388, 39.417572, 38.133949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749813, 39.426807, 38.389511>,  <43.565269, 39.432350, 38.542850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749813, 39.426807, 38.389511>,  <44.057388, 39.417572, 38.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749813, 39.426807, 38.389511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067654, 0.996675, 0.045404,
		-0.635735, 0.078137, -0.767943,
		-0.768937, 0.023090, 0.638908,
		43.519131, 39.433735, 38.581184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613667, 39.839043, 37.847763>,  <44.057388, 39.417572, 38.133949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613667, 39.839043, 37.847763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503593, 39.855354, 38.231972>,  <43.437550, 39.865143, 38.462498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503593, 39.855354, 38.231972>,  <43.613667, 39.839043, 37.847763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503593, 39.855354, 38.231972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000644, 0.999092, -0.042606,
		-0.961391, -0.012343, -0.274907,
		-0.275184, 0.040784, 0.960526,
		43.421040, 39.867588, 38.520130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009315, 40.223202, 37.871479>,  <43.613667, 39.839043, 37.847763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009315, 40.223202, 37.871479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148724, 40.245441, 38.245739>,  <43.232368, 40.258785, 38.470295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148724, 40.245441, 38.245739>,  <43.009315, 40.223202, 37.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148724, 40.245441, 38.245739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192478, 0.981210, 0.013388,
		-0.917326, -0.184758, 0.352671,
		0.348518, 0.055600, 0.935651,
		43.253281, 40.262123, 38.526436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740341, 40.934158, 38.120483>,  <43.009315, 40.223202, 37.871479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740341, 40.934158, 38.120483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986851, 40.843113, 38.422054>,  <43.134754, 40.788486, 38.602997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986851, 40.843113, 38.422054>,  <42.740341, 40.934158, 38.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986851, 40.843113, 38.422054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222441, 0.968651, 0.110611,
		-0.755468, 0.099538, 0.647580,
		0.616269, -0.227612, 0.753926,
		43.171730, 40.774830, 38.648232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633957, 41.374161, 38.749451>,  <42.740341, 40.934158, 38.120483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633957, 41.374161, 38.749451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012856, 41.252701, 38.790485>,  <43.240196, 41.179825, 38.815105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012856, 41.252701, 38.790485>,  <42.633957, 41.374161, 38.749451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012856, 41.252701, 38.790485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311159, 0.947979, -0.067201,
		-0.076844, 0.095576, 0.992452,
		0.947246, -0.303646, 0.102585,
		43.297028, 41.161606, 38.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945641, 41.885910, 39.226036>,  <42.633957, 41.374161, 38.749451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945641, 41.885910, 39.226036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250362, 41.702812, 39.042679>,  <43.433193, 41.592953, 38.932663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250362, 41.702812, 39.042679>,  <42.945641, 41.885910, 39.226036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250362, 41.702812, 39.042679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557813, 0.823314, 0.104876,
		0.329395, -0.335592, 0.882540,
		0.761803, -0.457746, -0.458393,
		43.478905, 41.565487, 38.905159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540108, 42.057411, 39.533382>,  <42.945641, 41.885910, 39.226036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540108, 42.057411, 39.533382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652115, 41.957306, 39.162663>,  <43.719318, 41.897243, 38.940231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652115, 41.957306, 39.162663>,  <43.540108, 42.057411, 39.533382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652115, 41.957306, 39.162663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522916, 0.849391, -0.071364,
		0.805075, -0.464655, 0.368714,
		0.280023, -0.250260, -0.926799,
		43.736122, 41.882229, 38.884624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321968, 42.154842, 39.397076>,  <43.540108, 42.057411, 39.533382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321968, 42.154842, 39.397076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110176, 42.221661, 39.064388>,  <43.983101, 42.261753, 38.864777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110176, 42.221661, 39.064388>,  <44.321968, 42.154842, 39.397076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110176, 42.221661, 39.064388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626079, 0.738515, -0.250241,
		0.572433, -0.653216, -0.495610,
		-0.529477, 0.167045, -0.831715,
		43.951332, 42.271774, 38.814873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652706, 42.075180, 38.681496>,  <44.321968, 42.154842, 39.397076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652706, 42.075180, 38.681496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398960, 42.383698, 38.702240>,  <44.246712, 42.568806, 38.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398960, 42.383698, 38.702240>,  <44.652706, 42.075180, 38.681496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398960, 42.383698, 38.702240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763570, 0.635653, -0.113604,
		-0.120590, -0.032464, -0.992171,
		-0.634365, 0.771292, 0.051865,
		44.208652, 42.615086, 38.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624138, 42.461552, 38.086540>,  <44.652706, 42.075180, 38.681496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624138, 42.461552, 38.086540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539795, 42.747551, 38.353168>,  <44.489189, 42.919151, 38.513145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539795, 42.747551, 38.353168>,  <44.624138, 42.461552, 38.086540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539795, 42.747551, 38.353168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671398, 0.601543, -0.432863,
		-0.710468, 0.356265, -0.606885,
		-0.210854, 0.714997, 0.666573,
		44.476540, 42.962051, 38.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399445, 43.086342, 37.719486>,  <44.624138, 42.461552, 38.086540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399445, 43.086342, 37.719486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582050, 43.169472, 38.065529>,  <44.691612, 43.219349, 38.273155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582050, 43.169472, 38.065529>,  <44.399445, 43.086342, 37.719486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582050, 43.169472, 38.065529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731931, 0.465091, -0.497964,
		-0.505840, 0.860524, 0.060209,
		0.456512, 0.207821, 0.865105,
		44.719006, 43.231819, 38.325062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628498, 43.260788, 37.117039>,  <44.399445, 43.086342, 37.719486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628498, 43.260788, 37.117039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848797, 43.494633, 37.355339>,  <44.980976, 43.634937, 37.498318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848797, 43.494633, 37.355339>,  <44.628498, 43.260788, 37.117039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848797, 43.494633, 37.355339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607011, -0.770431, 0.194867,
		0.572903, 0.254304, -0.779173,
		0.550744, 0.584607, 0.595748,
		45.014019, 43.670013, 37.534065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310913, 43.347935, 36.885681>,  <44.628498, 43.260788, 37.117039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310913, 43.347935, 36.885681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302681, 43.333008, 37.285316>,  <45.297741, 43.324051, 37.525097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302681, 43.333008, 37.285316>,  <45.310913, 43.347935, 36.885681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302681, 43.333008, 37.285316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627493, -0.778455, -0.016144,
		0.778350, 0.626591, 0.039437,
		-0.020584, -0.037312, 0.999092,
		45.296505, 43.321815, 37.585045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998821, 43.213135, 37.005119>,  <45.310913, 43.347935, 36.885681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998821, 43.213135, 37.005119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790943, 43.102070, 37.328308>,  <45.666218, 43.035431, 37.522221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790943, 43.102070, 37.328308>,  <45.998821, 43.213135, 37.005119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790943, 43.102070, 37.328308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481819, -0.876226, 0.008794,
		0.705527, 0.393868, 0.589151,
		-0.519694, -0.277660, 0.807975,
		45.635036, 43.018772, 37.570702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391739, 42.621742, 37.253899>,  <45.998821, 43.213135, 37.005119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391739, 42.621742, 37.253899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045212, 42.587395, 37.450718>,  <45.837296, 42.566788, 37.568810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045212, 42.587395, 37.450718>,  <46.391739, 42.621742, 37.253899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045212, 42.587395, 37.450718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104952, -0.994414, 0.011254,
		0.488336, 0.061391, 0.870494,
		-0.866322, -0.085864, 0.492051,
		45.785316, 42.561634, 37.598331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799713, 42.819813, 37.920769>,  <46.391739, 42.621742, 37.253899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799713, 42.819813, 37.920769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618504, 42.516880, 38.108902>,  <46.509777, 42.335121, 38.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618504, 42.516880, 38.108902>,  <46.799713, 42.819813, 37.920769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618504, 42.516880, 38.108902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041952, -0.545103, -0.837318,
		0.890509, -0.359596, 0.278719,
		-0.453027, -0.757333, 0.470334,
		46.482597, 42.289680, 38.250004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989693, 42.161900, 37.779694>,  <46.799713, 42.819813, 37.920769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989693, 42.161900, 37.779694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632027, 42.051289, 37.920551>,  <46.417427, 41.984924, 38.005066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632027, 42.051289, 37.920551>,  <46.989693, 42.161900, 37.779694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632027, 42.051289, 37.920551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188844, -0.480199, -0.856590,
		0.405968, -0.832432, 0.377157,
		-0.894163, -0.276525, 0.352145,
		46.363777, 41.968330, 38.026196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934372, 41.542969, 37.719330>,  <46.989693, 42.161900, 37.779694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934372, 41.542969, 37.719330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540596, 41.604172, 37.753914>,  <46.304333, 41.640892, 37.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540596, 41.604172, 37.753914>,  <46.934372, 41.542969, 37.719330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540596, 41.604172, 37.753914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173000, -0.757123, -0.629950,
		-0.030926, -0.635103, 0.771809,
		-0.984436, 0.153005, 0.086458,
		46.245266, 41.650074, 37.779850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601761, 40.894833, 37.955742>,  <46.934372, 41.542969, 37.719330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601761, 40.894833, 37.955742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362602, 41.139759, 37.748821>,  <46.219109, 41.286713, 37.624668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362602, 41.139759, 37.748821>,  <46.601761, 40.894833, 37.955742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362602, 41.139759, 37.748821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035922, -0.665172, -0.745826,
		-0.800772, -0.427340, 0.419697,
		-0.597892, 0.612313, -0.517300,
		46.183235, 41.323452, 37.593632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145889, 40.497189, 37.809151>,  <46.601761, 40.894833, 37.955742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145889, 40.497189, 37.809151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043331, 40.791683, 37.558640>,  <45.981796, 40.968380, 37.408333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043331, 40.791683, 37.558640>,  <46.145889, 40.497189, 37.809151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043331, 40.791683, 37.558640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245747, -0.676295, -0.694430,
		-0.934810, -0.024144, 0.354327,
		-0.256396, 0.736235, -0.626274,
		45.966412, 41.012554, 37.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446960, 40.391476, 37.597557>,  <46.145889, 40.497189, 37.809151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446960, 40.391476, 37.597557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625309, 40.614376, 37.317368>,  <45.732319, 40.748116, 37.149254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.625309, 40.614376, 37.317368>,  <45.446960, 40.391476, 37.597557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625309, 40.614376, 37.317368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362242, -0.603289, -0.710509,
		-0.818522, 0.570540, -0.067131,
		0.445873, 0.557250, -0.700478,
		45.759071, 40.781551, 37.107224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922298, 40.566738, 36.997608>,  <45.446960, 40.391476, 37.597557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922298, 40.566738, 36.997608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300407, 40.570179, 36.867134>,  <45.527271, 40.572243, 36.788849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300407, 40.570179, 36.867134>,  <44.922298, 40.566738, 36.997608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300407, 40.570179, 36.867134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218965, -0.724427, -0.653651,
		-0.241915, 0.689298, -0.682895,
		0.945268, 0.008598, -0.326182,
		45.583988, 40.572758, 36.769279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753696, 40.372017, 36.405251>,  <44.922298, 40.566738, 36.997608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753696, 40.372017, 36.405251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151897, 40.334351, 36.400970>,  <45.390816, 40.311749, 36.398403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.151897, 40.334351, 36.400970>,  <44.753696, 40.372017, 36.405251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151897, 40.334351, 36.400970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081800, -0.796724, -0.598782,
		0.047865, 0.596961, -0.800841,
		0.995499, -0.094169, -0.010696,
		45.450546, 40.306099, 36.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945263, 40.198895, 35.725033>,  <44.753696, 40.372017, 36.405251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945263, 40.198895, 35.725033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248093, 40.090477, 35.962814>,  <45.429790, 40.025429, 36.105484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248093, 40.090477, 35.962814>,  <44.945263, 40.198895, 35.725033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248093, 40.090477, 35.962814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077811, -0.940815, -0.329867,
		0.648680, 0.203478, -0.733355,
		0.757073, -0.271041, 0.594456,
		45.475216, 40.009163, 36.141151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407784, 39.727753, 35.315140>,  <44.945263, 40.198895, 35.725033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407784, 39.727753, 35.315140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474537, 39.657070, 35.703144>,  <45.514587, 39.614662, 35.935947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474537, 39.657070, 35.703144>,  <45.407784, 39.727753, 35.315140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474537, 39.657070, 35.703144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010289, -0.983444, -0.180921,
		0.985923, 0.040173, -0.162299,
		0.166880, -0.176705, 0.970013,
		45.524601, 39.604057, 35.994148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950542, 39.300495, 35.268040>,  <45.407784, 39.727753, 35.315140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950542, 39.300495, 35.268040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783112, 39.238873, 35.626049>,  <45.682655, 39.201900, 35.840855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783112, 39.238873, 35.626049>,  <45.950542, 39.300495, 35.268040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783112, 39.238873, 35.626049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198320, -0.946218, -0.255617,
		0.886264, -0.284495, 0.365511,
		-0.418575, -0.154056, 0.895020,
		45.657539, 39.192657, 35.894554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026398, 38.555653, 35.375698>,  <45.950542, 39.300495, 35.268040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026398, 38.555653, 35.375698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771259, 38.645802, 35.670277>,  <45.618176, 38.699890, 35.847023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771259, 38.645802, 35.670277>,  <46.026398, 38.555653, 35.375698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771259, 38.645802, 35.670277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388386, -0.919861, -0.054890,
		0.665059, -0.321038, 0.674263,
		-0.637850, 0.225369, 0.736448,
		45.579903, 38.713413, 35.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161709, 38.077869, 35.945816>,  <46.026398, 38.555653, 35.375698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161709, 38.077869, 35.945816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791492, 38.222954, 35.989288>,  <45.569363, 38.310005, 36.015373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791492, 38.222954, 35.989288>,  <46.161709, 38.077869, 35.945816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791492, 38.222954, 35.989288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350017, -0.929051, 0.119795,
		0.144422, 0.072835, 0.986832,
		-0.925543, 0.362709, 0.108682,
		45.513828, 38.331768, 36.021893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857975, 37.676796, 36.491428>,  <46.161709, 38.077869, 35.945816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857975, 37.676796, 36.491428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519688, 37.829411, 36.342197>,  <45.316715, 37.920979, 36.252659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519688, 37.829411, 36.342197>,  <45.857975, 37.676796, 36.491428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519688, 37.829411, 36.342197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462773, -0.872504, 0.156774,
		-0.265696, 0.305237, 0.914459,
		-0.845722, 0.381533, -0.373077,
		45.265972, 37.943871, 36.230274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369244, 37.339649, 36.882751>,  <45.857975, 37.676796, 36.491428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369244, 37.339649, 36.882751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167377, 37.474552, 36.564865>,  <45.046257, 37.555492, 36.374134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167377, 37.474552, 36.564865>,  <45.369244, 37.339649, 36.882751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167377, 37.474552, 36.564865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385991, -0.911551, -0.141724,
		-0.772222, 0.235230, 0.590203,
		-0.504662, 0.337256, -0.794716,
		45.015980, 37.575729, 36.326450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705299, 37.176167, 36.943050>,  <45.369244, 37.339649, 36.882751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705299, 37.176167, 36.943050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764370, 37.205864, 36.548553>,  <44.799812, 37.223682, 36.311855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764370, 37.205864, 36.548553>,  <44.705299, 37.176167, 36.943050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764370, 37.205864, 36.548553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272282, -0.955593, -0.112710,
		-0.950818, 0.285181, -0.120898,
		0.147672, 0.074248, -0.986246,
		44.808670, 37.228138, 36.252678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061089, 36.930447, 36.595295>,  <44.705299, 37.176167, 36.943050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061089, 36.930447, 36.595295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344875, 36.904602, 36.314587>,  <44.515148, 36.889095, 36.146164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344875, 36.904602, 36.314587>,  <44.061089, 36.930447, 36.595295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344875, 36.904602, 36.314587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267746, -0.945834, -0.183605,
		-0.651893, 0.318158, -0.688339,
		0.709470, -0.064609, -0.701768,
		44.557716, 36.885220, 36.104057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685913, 36.688755, 36.063644>,  <44.061089, 36.930447, 36.595295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685913, 36.688755, 36.063644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072659, 36.597958, 36.016918>,  <44.304707, 36.543480, 35.988884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072659, 36.597958, 36.016918>,  <43.685913, 36.688755, 36.063644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072659, 36.597958, 36.016918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249095, -0.939043, -0.236958,
		-0.055906, 0.258204, -0.964471,
		0.966864, -0.226998, -0.116815,
		44.362717, 36.529858, 35.981873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607769, 36.046131, 35.622234>,  <43.685913, 36.688755, 36.063644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607769, 36.046131, 35.622234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003723, 36.031174, 35.676968>,  <44.241295, 36.022202, 35.709808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003723, 36.031174, 35.676968>,  <43.607769, 36.046131, 35.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003723, 36.031174, 35.676968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022088, -0.912231, -0.409080,
		0.140117, 0.407966, -0.902181,
		0.989888, -0.037391, 0.136831,
		44.300690, 36.019955, 35.718018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971214, 35.718914, 34.948700>,  <43.607769, 36.046131, 35.622234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971214, 35.718914, 34.948700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208126, 35.667709, 35.266899>,  <44.350273, 35.636986, 35.457817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208126, 35.667709, 35.266899>,  <43.971214, 35.718914, 34.948700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208126, 35.667709, 35.266899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205611, -0.930597, -0.302841,
		0.779056, 0.342930, -0.524853,
		0.592280, -0.128015, 0.795498,
		44.385811, 35.629307, 35.505547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550400, 35.353245, 34.684689>,  <43.971214, 35.718914, 34.948700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550400, 35.353245, 34.684689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497959, 35.274586, 35.073357>,  <44.466496, 35.227390, 35.306557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497959, 35.274586, 35.073357>,  <44.550400, 35.353245, 34.684689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497959, 35.274586, 35.073357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056756, -0.977032, -0.205395,
		0.989744, -0.082075, 0.116925,
		-0.131098, -0.196652, 0.971670,
		44.458630, 35.215591, 35.364857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994980, 34.807549, 34.785278>,  <44.550400, 35.353245, 34.684689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994980, 34.807549, 34.785278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729736, 34.828300, 35.083965>,  <44.570591, 34.840752, 35.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729736, 34.828300, 35.083965>,  <44.994980, 34.807549, 34.785278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729736, 34.828300, 35.083965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082030, -0.996623, -0.003598,
		0.744011, -0.063640, 0.665130,
		-0.663113, 0.051884, 0.746719,
		44.530804, 34.843864, 35.307980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057629, 34.140751, 35.071796>,  <44.994980, 34.807549, 34.785278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057629, 34.140751, 35.071796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718147, 34.295158, 35.216400>,  <44.514458, 34.387802, 35.303162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718147, 34.295158, 35.216400>,  <45.057629, 34.140751, 35.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718147, 34.295158, 35.216400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462945, -0.872739, -0.154943,
		0.255693, -0.298860, 0.919404,
		-0.848707, 0.386016, 0.361509,
		44.463535, 34.410965, 35.324852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716042, 34.196785, 35.162460>,  <45.057629, 34.140751, 35.071796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716042, 34.196785, 35.162460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982651, 34.378853, 35.398621>,  <46.142616, 34.488094, 35.540318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982651, 34.378853, 35.398621>,  <45.716042, 34.196785, 35.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982651, 34.378853, 35.398621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745486, -0.405595, -0.528907,
		-0.001277, 0.792664, -0.609657,
		0.666520, 0.455166, 0.590403,
		46.182606, 34.515404, 35.575741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124096, 34.796631, 34.830395>,  <45.716042, 34.196785, 35.162460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124096, 34.796631, 34.830395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277512, 34.540943, 35.097019>,  <46.369560, 34.387531, 35.256992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277512, 34.540943, 35.097019>,  <46.124096, 34.796631, 34.830395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277512, 34.540943, 35.097019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649562, -0.326342, -0.686709,
		0.656482, 0.696351, 0.290045,
		0.383537, -0.639215, 0.666561,
		46.392574, 34.349178, 35.296989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815125, 34.775337, 34.751591>,  <46.124096, 34.796631, 34.830395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815125, 34.775337, 34.751591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726189, 34.432278, 34.937065>,  <46.672829, 34.226440, 35.048351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726189, 34.432278, 34.937065>,  <46.815125, 34.775337, 34.751591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726189, 34.432278, 34.937065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677242, -0.477985, -0.559351,
		0.701361, 0.189662, 0.687111,
		-0.222341, -0.857647, 0.463687,
		46.659485, 34.174984, 35.076172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493397, 34.858521, 35.060871>,  <46.815125, 34.775337, 34.751591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493397, 34.858521, 35.060871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862099, 35.002132, 35.002274>,  <48.083321, 35.088299, 34.967117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862099, 35.002132, 35.002274>,  <47.493397, 34.858521, 35.060871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862099, 35.002132, 35.002274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386166, -0.815630, 0.430841,
		0.035202, -0.453701, -0.890458,
		0.921757, 0.359031, -0.146492,
		48.138626, 35.109840, 34.958324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.330444, 33.950371, 46.721664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977489, 33.997776, 46.539520>,  <31.765717, 34.026218, 46.430233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977489, 33.997776, 46.539520>,  <32.330444, 33.950371, 46.721664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977489, 33.997776, 46.539520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454647, -0.034574, -0.890001,
		-0.121217, -0.992351, -0.023372,
		-0.882385, 0.118509, -0.455360,
		31.712774, 34.033329, 46.402912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393497, 33.623035, 46.131027>,  <32.330444, 33.950371, 46.721664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393497, 33.623035, 46.131027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.065880, 33.835678, 46.044716>,  <31.869310, 33.963264, 45.992931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.065880, 33.835678, 46.044716>,  <32.393497, 33.623035, 46.131027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065880, 33.835678, 46.044716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410693, 0.280636, -0.867511,
		-0.400624, -0.799145, -0.448182,
		-0.819043, 0.531611, -0.215774,
		31.820168, 33.995163, 45.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079845, 33.414566, 45.479111>,  <32.393497, 33.623035, 46.131027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079845, 33.414566, 45.479111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967129, 33.796249, 45.519260>,  <31.899498, 34.025261, 45.543350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967129, 33.796249, 45.519260>,  <32.079845, 33.414566, 45.479111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967129, 33.796249, 45.519260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260537, 0.176781, -0.949141,
		-0.923424, -0.241313, -0.298423,
		-0.281795, 0.954210, 0.100373,
		31.882589, 34.082512, 45.549374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877752, 33.581154, 44.798153>,  <32.079845, 33.414566, 45.479111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877752, 33.581154, 44.798153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929453, 33.941513, 44.963886>,  <31.960474, 34.157730, 45.063328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929453, 33.941513, 44.963886>,  <31.877752, 33.581154, 44.798153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929453, 33.941513, 44.963886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475747, 0.310274, -0.823040,
		-0.870034, 0.303499, -0.388497,
		0.129252, 0.900899, 0.414337,
		31.968229, 34.211784, 45.088188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626829, 34.043854, 44.408779>,  <31.877752, 33.581154, 44.798153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626829, 34.043854, 44.408779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.875673, 34.274136, 44.621021>,  <32.024979, 34.412304, 44.748367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.875673, 34.274136, 44.621021>,  <31.626829, 34.043854, 44.408779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875673, 34.274136, 44.621021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452071, 0.289188, -0.843802,
		-0.639225, 0.764810, -0.080353,
		0.622111, 0.575705, 0.530605,
		32.062305, 34.446846, 44.780201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711168, 34.692081, 44.104618>,  <31.626829, 34.043854, 44.408779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711168, 34.692081, 44.104618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056610, 34.701115, 44.306084>,  <32.263874, 34.706535, 44.426964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056610, 34.701115, 44.306084>,  <31.711168, 34.692081, 44.104618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056610, 34.701115, 44.306084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421049, 0.517187, -0.745142,
		-0.277320, 0.855575, 0.437134,
		0.863604, 0.022588, 0.503665,
		32.315693, 34.707890, 44.457184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073914, 35.313255, 43.788555>,  <31.711168, 34.692081, 44.104618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073914, 35.313255, 43.788555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361786, 35.120495, 43.988487>,  <32.534512, 35.004841, 44.108448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361786, 35.120495, 43.988487>,  <32.073914, 35.313255, 43.788555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361786, 35.120495, 43.988487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678245, 0.334039, -0.654524,
		0.148450, 0.810058, 0.567247,
		0.719684, -0.481897, 0.499830,
		32.577690, 34.975925, 44.138435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748726, 35.637947, 43.506824>,  <32.073914, 35.313255, 43.788555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748726, 35.637947, 43.506824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.905266, 35.326984, 43.703796>,  <32.999187, 35.140408, 43.821980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.905266, 35.326984, 43.703796>,  <32.748726, 35.637947, 43.506824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905266, 35.326984, 43.703796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842172, 0.086865, -0.532166,
		0.370935, 0.622970, 0.688706,
		0.391348, -0.777408, 0.492427,
		33.022671, 35.093761, 43.851524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497272, 35.815056, 43.586006>,  <32.748726, 35.637947, 43.506824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497272, 35.815056, 43.586006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444492, 35.418911, 43.602840>,  <33.412827, 35.181225, 43.612942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444492, 35.418911, 43.602840>,  <33.497272, 35.815056, 43.586006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444492, 35.418911, 43.602840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798804, -0.131373, -0.587072,
		0.586943, -0.043844, 0.808440,
		-0.131947, -0.990363, 0.042085,
		33.404907, 35.121803, 43.615467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160408, 35.519600, 43.548222>,  <33.497272, 35.815056, 43.586006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160408, 35.519600, 43.548222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910736, 35.232746, 43.424210>,  <33.760933, 35.060635, 43.349804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910736, 35.232746, 43.424210>,  <34.160408, 35.519600, 43.548222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910736, 35.232746, 43.424210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644470, -0.248283, -0.723197,
		0.441654, -0.651210, 0.617145,
		-0.624179, -0.717134, -0.310030,
		33.723484, 35.017605, 43.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586983, 34.908329, 43.521477>,  <34.160408, 35.519600, 43.548222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586983, 34.908329, 43.521477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261051, 34.883389, 43.290939>,  <34.065495, 34.868423, 43.152618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261051, 34.883389, 43.290939>,  <34.586983, 34.908329, 43.521477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261051, 34.883389, 43.290939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576382, 0.019180, -0.816955,
		0.061994, -0.997870, 0.020311,
		-0.814825, -0.062354, -0.576344,
		34.016605, 34.864685, 43.118034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813976, 34.584927, 42.975609>,  <34.586983, 34.908329, 43.521477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813976, 34.584927, 42.975609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483780, 34.742779, 42.814194>,  <34.285664, 34.837490, 42.717346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483780, 34.742779, 42.814194>,  <34.813976, 34.584927, 42.975609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483780, 34.742779, 42.814194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450122, 0.028923, -0.892499,
		-0.340533, -0.918386, -0.201506,
		-0.825487, 0.394627, -0.403536,
		34.236134, 34.861168, 42.693134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612217, 34.117672, 42.435722>,  <34.813976, 34.584927, 42.975609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612217, 34.117672, 42.435722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488186, 34.488605, 42.351902>,  <34.413769, 34.711166, 42.301609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488186, 34.488605, 42.351902>,  <34.612217, 34.117672, 42.435722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488186, 34.488605, 42.351902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562998, 0.001501, -0.826457,
		-0.766084, -0.374240, -0.522551,
		-0.310078, 0.927331, -0.209546,
		34.395161, 34.766804, 42.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467922, 34.118286, 41.693241>,  <34.612217, 34.117672, 42.435722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467922, 34.118286, 41.693241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475174, 34.507233, 41.786339>,  <34.479527, 34.740601, 41.842197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475174, 34.507233, 41.786339>,  <34.467922, 34.118286, 41.693241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475174, 34.507233, 41.786339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577507, 0.179840, -0.796331,
		-0.816185, 0.148849, -0.558289,
		0.018130, 0.972369, 0.232744,
		34.480614, 34.798943, 41.856163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377510, 34.422806, 41.104645>,  <34.467922, 34.118286, 41.693241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377510, 34.422806, 41.104645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.469601, 34.769234, 41.282143>,  <34.524857, 34.977093, 41.388641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.469601, 34.769234, 41.282143>,  <34.377510, 34.422806, 41.104645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469601, 34.769234, 41.282143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561603, 0.254146, -0.787408,
		-0.794730, 0.430494, -0.427878,
		0.230231, 0.866074, 0.443744,
		34.538670, 35.029057, 41.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285816, 34.879635, 40.576054>,  <34.377510, 34.422806, 41.104645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285816, 34.879635, 40.576054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546928, 35.031879, 40.838051>,  <34.703594, 35.123226, 40.995251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546928, 35.031879, 40.838051>,  <34.285816, 34.879635, 40.576054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546928, 35.031879, 40.838051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648011, 0.167293, -0.743031,
		-0.392378, 0.909479, -0.137432,
		0.652779, 0.380607, 0.654995,
		34.742764, 35.146061, 41.034550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662277, 35.459927, 40.297348>,  <34.285816, 34.879635, 40.576054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662277, 35.459927, 40.297348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877659, 35.282227, 40.583763>,  <35.006889, 35.175606, 40.755611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877659, 35.282227, 40.583763>,  <34.662277, 35.459927, 40.297348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877659, 35.282227, 40.583763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799129, -0.000350, -0.601159,
		0.267316, 0.895902, 0.354827,
		0.538455, -0.444252, 0.716035,
		35.039196, 35.148952, 40.798573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267803, 35.688786, 40.132172>,  <34.662277, 35.459927, 40.297348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267803, 35.688786, 40.132172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391685, 35.435699, 40.416077>,  <35.466015, 35.283848, 40.586418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391685, 35.435699, 40.416077>,  <35.267803, 35.688786, 40.132172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391685, 35.435699, 40.416077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885762, -0.079413, -0.457296,
		0.345700, 0.770304, 0.535838,
		0.309704, -0.632712, 0.709759,
		35.484596, 35.245884, 40.629005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940002, 35.798069, 40.384392>,  <35.267803, 35.688786, 40.132172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940002, 35.798069, 40.384392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905022, 35.406895, 40.460281>,  <35.884033, 35.172192, 40.505817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905022, 35.406895, 40.460281>,  <35.940002, 35.798069, 40.384392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905022, 35.406895, 40.460281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816564, -0.179463, -0.548650,
		0.570593, 0.106944, 0.814240,
		-0.087451, -0.977935, 0.189727,
		35.878788, 35.113514, 40.517200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574455, 35.645237, 40.628231>,  <35.940002, 35.798069, 40.384392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574455, 35.645237, 40.628231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409054, 35.299847, 40.512699>,  <36.309811, 35.092613, 40.443378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409054, 35.299847, 40.512699>,  <36.574455, 35.645237, 40.628231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409054, 35.299847, 40.512699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783779, -0.176133, -0.595540,
		0.463361, -0.472641, 0.749605,
		-0.413507, -0.863474, -0.288833,
		36.285004, 35.040806, 40.426048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031940, 35.169949, 40.863548>,  <36.574455, 35.645237, 40.628231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031940, 35.169949, 40.863548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796268, 34.982937, 40.599949>,  <36.654865, 34.870731, 40.441788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796268, 34.982937, 40.599949>,  <37.031940, 35.169949, 40.863548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796268, 34.982937, 40.599949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800930, -0.230281, -0.552704,
		0.106649, -0.853456, 0.510135,
		-0.589183, -0.467528, -0.658999,
		36.619514, 34.842678, 40.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500397, 34.697426, 40.674126>,  <37.031940, 35.169949, 40.863548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500397, 34.697426, 40.674126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 34.701515, 40.383400>,  <37.060871, 34.703968, 40.208965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 34.701515, 40.383400>,  <37.500397, 34.697426, 40.674126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225693, 34.701515, 40.383400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701414, -0.253067, -0.666315,
		-0.190743, -0.967395, 0.166627,
		-0.686757, 0.010221, -0.726815,
		37.019665, 34.704582, 40.165356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875416, 34.549706, 41.375343>,  <37.500397, 34.697426, 40.674126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875416, 34.549706, 41.375343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120014, 34.835686, 41.510948>,  <38.266773, 35.007275, 41.592312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120014, 34.835686, 41.510948>,  <37.875416, 34.549706, 41.375343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120014, 34.835686, 41.510948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684590, 0.263209, 0.679748,
		0.396755, -0.647741, 0.650398,
		0.611491, 0.714949, 0.339008,
		38.303463, 35.050171, 41.612652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866863, 34.485050, 42.148697>,  <37.875416, 34.549706, 41.375343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866863, 34.485050, 42.148697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028133, 34.843727, 42.075603>,  <38.124893, 35.058933, 42.031746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028133, 34.843727, 42.075603>,  <37.866863, 34.485050, 42.148697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028133, 34.843727, 42.075603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469592, 0.374106, 0.799705,
		0.785452, -0.236610, 0.571910,
		0.403173, 0.896694, -0.182732,
		38.149086, 35.112736, 42.020782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980167, 34.674316, 42.805260>,  <37.866863, 34.485050, 42.148697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980167, 34.674316, 42.805260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983654, 35.004314, 42.579227>,  <37.985744, 35.202312, 42.443607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983654, 35.004314, 42.579227>,  <37.980167, 34.674316, 42.805260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983654, 35.004314, 42.579227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467339, 0.502946, 0.727076,
		0.884035, 0.257746, 0.389934,
		0.008715, 0.824992, -0.565077,
		37.986267, 35.251812, 42.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152504, 35.081543, 43.267982>,  <37.980167, 34.674316, 42.805260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152504, 35.081543, 43.267982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980145, 35.294537, 42.976562>,  <37.876728, 35.422333, 42.801712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980145, 35.294537, 42.976562>,  <38.152504, 35.081543, 43.267982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980145, 35.294537, 42.976562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675588, 0.344882, 0.651642,
		0.598253, 0.772993, 0.211129,
		-0.430900, 0.532483, -0.728551,
		37.850876, 35.454281, 42.757996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153919, 35.794273, 43.513626>,  <38.152504, 35.081543, 43.267982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153919, 35.794273, 43.513626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873672, 35.781052, 43.228516>,  <37.705524, 35.773117, 43.057449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873672, 35.781052, 43.228516>,  <38.153919, 35.794273, 43.513626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873672, 35.781052, 43.228516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658357, 0.415139, 0.627874,
		0.275146, 0.909157, -0.312615,
		-0.700614, -0.033055, -0.712774,
		37.663486, 35.771133, 43.014683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853554, 36.530315, 43.487148>,  <38.153919, 35.794273, 43.513626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853554, 36.530315, 43.487148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598087, 36.266022, 43.329391>,  <37.444809, 36.107445, 43.234737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598087, 36.266022, 43.329391>,  <37.853554, 36.530315, 43.487148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598087, 36.266022, 43.329391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704381, 0.295671, 0.645310,
		-0.309767, 0.689937, -0.654241,
		-0.638664, -0.660731, -0.394389,
		37.406487, 36.067802, 43.211075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183834, 36.872902, 43.526070>,  <37.853554, 36.530315, 43.487148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183834, 36.872902, 43.526070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081032, 36.493423, 43.452404>,  <37.019352, 36.265736, 43.408203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081032, 36.493423, 43.452404>,  <37.183834, 36.872902, 43.526070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081032, 36.493423, 43.452404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819960, 0.113203, 0.561116,
		-0.511483, 0.295215, -0.806990,
		-0.257004, -0.948701, -0.184163,
		37.003929, 36.208813, 43.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448399, 36.889668, 43.342941>,  <37.183834, 36.872902, 43.526070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448399, 36.889668, 43.342941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563595, 36.523956, 43.456894>,  <36.632713, 36.304531, 43.525265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563595, 36.523956, 43.456894>,  <36.448399, 36.889668, 43.342941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563595, 36.523956, 43.456894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813902, -0.076937, 0.575885,
		-0.504602, -0.397714, -0.766290,
		0.287993, -0.914278, 0.284878,
		36.649994, 36.249672, 43.542358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931122, 36.491920, 43.217098>,  <36.448399, 36.889668, 43.342941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931122, 36.491920, 43.217098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140495, 36.275421, 43.480331>,  <36.266117, 36.145523, 43.638271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140495, 36.275421, 43.480331>,  <35.931122, 36.491920, 43.217098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140495, 36.275421, 43.480331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734275, 0.105296, 0.670636,
		-0.432273, -0.834246, -0.342308,
		0.523432, -0.541246, 0.658082,
		36.297523, 36.113049, 43.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566383, 35.908440, 43.483360>,  <35.931122, 36.491920, 43.217098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566383, 35.908440, 43.483360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823334, 35.968967, 43.783878>,  <35.977505, 36.005283, 43.964191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823334, 35.968967, 43.783878>,  <35.566383, 35.908440, 43.483360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823334, 35.968967, 43.783878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739326, -0.135846, 0.659502,
		0.201856, -0.979106, 0.024610,
		0.642380, 0.151319, 0.751300,
		36.016048, 36.014362, 44.009270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411644, 35.419361, 44.121632>,  <35.566383, 35.908440, 43.483360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411644, 35.419361, 44.121632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.652172, 35.698303, 44.277637>,  <35.796490, 35.865669, 44.371243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.652172, 35.698303, 44.277637>,  <35.411644, 35.419361, 44.121632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652172, 35.698303, 44.277637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457193, -0.100016, 0.883726,
		0.655278, -0.709714, 0.258684,
		0.601320, 0.697355, 0.390014,
		35.832569, 35.907509, 44.394642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694679, 35.148159, 44.770802>,  <35.411644, 35.419361, 44.121632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694679, 35.148159, 44.770802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772266, 35.536900, 44.824284>,  <35.818817, 35.770145, 44.856373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772266, 35.536900, 44.824284>,  <35.694679, 35.148159, 44.770802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772266, 35.536900, 44.824284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437916, -0.036180, 0.898288,
		0.877842, -0.232786, 0.418573,
		0.193964, 0.971854, 0.133701,
		35.830456, 35.828457, 44.864395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933498, 35.182632, 45.451191>,  <35.694679, 35.148159, 44.770802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933498, 35.182632, 45.451191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814762, 35.544621, 45.329262>,  <35.743519, 35.761814, 45.256104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814762, 35.544621, 45.329262>,  <35.933498, 35.182632, 45.451191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814762, 35.544621, 45.329262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638774, 0.049101, 0.767826,
		0.709826, 0.422635, 0.563495,
		-0.296842, 0.904969, -0.304822,
		35.725708, 35.816113, 45.237816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079651, 35.619640, 46.008823>,  <35.933498, 35.182632, 45.451191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079651, 35.619640, 46.008823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800526, 35.812000, 45.796490>,  <35.633049, 35.927418, 45.669090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800526, 35.812000, 45.796490>,  <36.079651, 35.619640, 46.008823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800526, 35.812000, 45.796490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592565, 0.028748, 0.805009,
		0.402390, 0.876303, 0.264904,
		-0.697817, 0.480901, -0.530835,
		35.591179, 35.956272, 45.637238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848694, 36.278820, 46.454544>,  <36.079651, 35.619640, 46.008823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848694, 36.278820, 46.454544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552639, 36.225380, 46.190922>,  <35.375008, 36.193317, 46.032749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552639, 36.225380, 46.190922>,  <35.848694, 36.278820, 46.454544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552639, 36.225380, 46.190922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666069, 0.010857, 0.745811,
		-0.092482, 0.990976, -0.097019,
		-0.740135, -0.133596, -0.659055,
		35.330597, 36.185303, 45.993206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263569, 36.666969, 46.687782>,  <35.848694, 36.278820, 46.454544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263569, 36.666969, 46.687782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112530, 36.402683, 46.428284>,  <35.021904, 36.244114, 46.272583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112530, 36.402683, 46.428284>,  <35.263569, 36.666969, 46.687782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112530, 36.402683, 46.428284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805524, -0.111147, 0.582045,
		-0.456671, 0.742365, -0.490250,
		-0.377601, -0.660712, -0.648751,
		34.999249, 36.204472, 46.233658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554050, 36.925873, 46.383404>,  <35.263569, 36.666969, 46.687782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554050, 36.925873, 46.383404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577419, 36.528095, 46.348392>,  <34.591438, 36.289429, 46.327385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577419, 36.528095, 46.348392>,  <34.554050, 36.925873, 46.383404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577419, 36.528095, 46.348392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889082, -0.091701, 0.448469,
		-0.454005, 0.051619, -0.889503,
		0.058419, -0.994447, -0.087526,
		34.594944, 36.229759, 46.322136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869350, 36.676472, 46.272724>,  <34.554050, 36.925873, 46.383404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869350, 36.676472, 46.272724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038746, 36.332470, 46.386597>,  <34.140385, 36.126068, 46.454922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038746, 36.332470, 46.386597>,  <33.869350, 36.676472, 46.272724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038746, 36.332470, 46.386597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743486, -0.150412, 0.651617,
		-0.517574, -0.487613, -0.703101,
		0.423492, -0.860006, 0.284684,
		34.165794, 36.074467, 46.472004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.175205, 35.835388, 46.455956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525505, 35.727287, 46.615967>,  <33.735687, 35.662426, 46.711971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525505, 35.727287, 46.615967>,  <33.175205, 35.835388, 46.455956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525505, 35.727287, 46.615967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477931, -0.602230, 0.639453,
		0.068095, -0.751188, -0.656566,
		0.875754, -0.270250, 0.400025,
		33.788231, 35.646214, 46.735973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106903, 35.142830, 46.445301>,  <33.175205, 35.835388, 46.455956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106903, 35.142830, 46.445301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377033, 35.216076, 46.731071>,  <33.539112, 35.260025, 46.902534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377033, 35.216076, 46.731071>,  <33.106903, 35.142830, 46.445301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377033, 35.216076, 46.731071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471068, -0.638256, 0.608872,
		0.567482, -0.747729, -0.344769,
		0.675322, 0.183114, 0.714430,
		33.579628, 35.271011, 46.945400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979427, 34.622787, 46.830238>,  <33.106903, 35.142830, 46.445301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979427, 34.622787, 46.830238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208862, 34.838070, 47.077244>,  <33.346523, 34.967239, 47.225449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208862, 34.838070, 47.077244>,  <32.979427, 34.622787, 46.830238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208862, 34.838070, 47.077244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349722, -0.520796, 0.778760,
		0.740735, -0.662648, -0.110500,
		0.573591, 0.538210, 0.617514,
		33.380939, 34.999535, 47.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325500, 34.125217, 47.253761>,  <32.979427, 34.622787, 46.830238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325500, 34.125217, 47.253761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321434, 34.466244, 47.462769>,  <33.318993, 34.670860, 47.588173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321434, 34.466244, 47.462769>,  <33.325500, 34.125217, 47.253761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321434, 34.466244, 47.462769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293689, -0.502042, 0.813450,
		0.955847, -0.145189, 0.255493,
		-0.010165, 0.852569, 0.522516,
		33.318386, 34.722015, 47.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508080, 33.876873, 47.974525>,  <33.325500, 34.125217, 47.253761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508080, 33.876873, 47.974525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339867, 34.239521, 47.988327>,  <33.238937, 34.457111, 47.996609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339867, 34.239521, 47.988327>,  <33.508080, 33.876873, 47.974525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339867, 34.239521, 47.988327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545164, -0.282904, 0.789152,
		0.725223, 0.313053, 0.613228,
		-0.420531, 0.906622, 0.034503,
		33.213707, 34.511509, 47.998676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601101, 34.054340, 48.695969>,  <33.508080, 33.876873, 47.974525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601101, 34.054340, 48.695969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317963, 34.299728, 48.555908>,  <33.148079, 34.446960, 48.471870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317963, 34.299728, 48.555908>,  <33.601101, 34.054340, 48.695969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317963, 34.299728, 48.555908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549334, -0.166466, 0.818854,
		0.444052, 0.771976, 0.454831,
		-0.707849, 0.613468, -0.350152,
		33.105606, 34.483768, 48.450863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452454, 34.436798, 49.295692>,  <33.601101, 34.054340, 48.695969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452454, 34.436798, 49.295692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148190, 34.484661, 49.040482>,  <32.965630, 34.513378, 48.887356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148190, 34.484661, 49.040482>,  <33.452454, 34.436798, 49.295692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148190, 34.484661, 49.040482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632942, -0.354956, 0.688034,
		-0.144142, 0.927194, 0.345738,
		-0.760663, 0.119657, -0.638023,
		32.919991, 34.520557, 48.849075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956768, 34.813499, 49.676918>,  <33.452454, 34.436798, 49.295692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956768, 34.813499, 49.676918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760376, 34.622890, 49.385201>,  <32.642540, 34.508526, 49.210171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760376, 34.622890, 49.385201>,  <32.956768, 34.813499, 49.676918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760376, 34.622890, 49.385201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563204, -0.465046, 0.683032,
		-0.664632, 0.746097, -0.040047,
		-0.490984, -0.476519, -0.729290,
		32.613079, 34.479935, 49.166412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210064, 34.960022, 49.821110>,  <32.956768, 34.813499, 49.676918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210064, 34.960022, 49.821110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279671, 34.630856, 49.604763>,  <32.321434, 34.433357, 49.474957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279671, 34.630856, 49.604763>,  <32.210064, 34.960022, 49.821110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279671, 34.630856, 49.604763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532726, -0.540603, 0.651115,
		-0.828203, 0.174825, -0.532462,
		0.174020, -0.822912, -0.540863,
		32.331879, 34.383984, 49.442505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732533, 34.610985, 50.091431>,  <32.210064, 34.960022, 49.821110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732533, 34.610985, 50.091431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927893, 34.333195, 49.880085>,  <32.045109, 34.166519, 49.753277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927893, 34.333195, 49.880085>,  <31.732533, 34.610985, 50.091431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927893, 34.333195, 49.880085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306589, -0.703452, 0.641216,
		-0.816987, -0.151181, -0.556486,
		0.488401, -0.694478, -0.528360,
		32.074413, 34.124851, 49.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316881, 34.039631, 50.169937>,  <31.732533, 34.610985, 50.091431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316881, 34.039631, 50.169937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650164, 33.889709, 50.007313>,  <31.850134, 33.799759, 49.909737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650164, 33.889709, 50.007313>,  <31.316881, 34.039631, 50.169937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650164, 33.889709, 50.007313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166081, -0.870917, 0.462515,
		-0.527431, -0.317849, -0.787902,
		0.833207, -0.374800, -0.406560,
		31.900126, 33.777271, 49.885345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147121, 33.498497, 49.713795>,  <31.316881, 34.039631, 50.169937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147121, 33.498497, 49.713795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521936, 33.410141, 49.821995>,  <31.746826, 33.357128, 49.886913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521936, 33.410141, 49.821995>,  <31.147121, 33.498497, 49.713795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521936, 33.410141, 49.821995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344200, -0.715129, 0.608373,
		0.059062, -0.663174, -0.746131,
		0.937037, -0.220887, 0.270501,
		31.803047, 33.343876, 49.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116758, 32.802460, 49.686954>,  <31.147121, 33.498497, 49.713795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116758, 32.802460, 49.686954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420435, 32.887558, 49.932999>,  <31.602642, 32.938618, 50.080627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420435, 32.887558, 49.932999>,  <31.116758, 32.802460, 49.686954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420435, 32.887558, 49.932999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233298, -0.793322, 0.562327,
		0.607616, -0.570420, -0.552652,
		0.759193, 0.212746, 0.615114,
		31.648193, 32.951382, 50.117535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409622, 32.133667, 49.880039>,  <31.116758, 32.802460, 49.686954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409622, 32.133667, 49.880039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558733, 32.377838, 50.159588>,  <31.648199, 32.524342, 50.327316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558733, 32.377838, 50.159588>,  <31.409622, 32.133667, 49.880039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558733, 32.377838, 50.159588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006458, -0.754844, 0.655873,
		0.927898, -0.239982, -0.285331,
		0.372778, 0.610426, 0.698869,
		31.670567, 32.560966, 50.369247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987709, 31.787952, 50.187279>,  <31.409622, 32.133667, 49.880039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987709, 31.787952, 50.187279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834299, 32.040356, 50.457016>,  <31.742252, 32.191799, 50.618858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834299, 32.040356, 50.457016>,  <31.987709, 31.787952, 50.187279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834299, 32.040356, 50.457016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207579, -0.770393, 0.602831,
		0.899899, 0.091222, 0.426450,
		-0.383526, 0.631009, 0.674341,
		31.719242, 32.229660, 50.659317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980503, 31.333387, 50.676407>,  <31.987709, 31.787952, 50.187279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980503, 31.333387, 50.676407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789591, 31.644964, 50.839108>,  <31.675043, 31.831911, 50.936729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789591, 31.644964, 50.839108>,  <31.980503, 31.333387, 50.676407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789591, 31.644964, 50.839108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369467, -0.597856, 0.711381,
		0.797305, 0.189248, 0.573140,
		-0.477282, 0.778944, 0.406753,
		31.646406, 31.878647, 50.961132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110229, 31.447828, 51.393066>,  <31.980503, 31.333387, 50.676407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110229, 31.447828, 51.393066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748322, 31.607767, 51.334393>,  <31.531178, 31.703732, 51.299187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748322, 31.607767, 51.334393>,  <32.110229, 31.447828, 51.393066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748322, 31.607767, 51.334393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370839, -0.570198, 0.733043,
		0.209465, 0.717631, 0.664176,
		-0.904767, 0.399849, -0.146689,
		31.476891, 31.727722, 51.290386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824337, 31.510130, 52.133530>,  <32.110229, 31.447828, 51.393066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824337, 31.510130, 52.133530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517305, 31.526077, 51.877644>,  <31.333086, 31.535645, 51.724113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517305, 31.526077, 51.877644>,  <31.824337, 31.510130, 52.133530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517305, 31.526077, 51.877644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484900, -0.688813, 0.538896,
		-0.419159, 0.723842, 0.548050,
		-0.767579, 0.039866, -0.639713,
		31.287031, 31.538036, 51.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206158, 31.497782, 52.545521>,  <31.824337, 31.510130, 52.133530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206158, 31.497782, 52.545521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073797, 31.408447, 52.178780>,  <30.994381, 31.354847, 51.958733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.073797, 31.408447, 52.178780>,  <31.206158, 31.497782, 52.545521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073797, 31.408447, 52.178780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532677, -0.757791, 0.376839,
		-0.778947, 0.613085, 0.131789,
		-0.330903, -0.223337, -0.916856,
		30.974525, 31.341446, 51.903725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469662, 31.492668, 52.517845>,  <31.206158, 31.497782, 52.545521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469662, 31.492668, 52.517845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607592, 31.235163, 52.244595>,  <30.690350, 31.080660, 52.080643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607592, 31.235163, 52.244595>,  <30.469662, 31.492668, 52.517845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607592, 31.235163, 52.244595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381326, -0.761077, 0.524740,
		-0.857721, 0.079551, -0.507923,
		0.344825, -0.643765, -0.683127,
		30.711039, 31.042034, 52.039658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005672, 30.940935, 52.523804>,  <30.469662, 31.492668, 52.517845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005672, 30.940935, 52.523804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318359, 30.793051, 52.322914>,  <30.505972, 30.704321, 52.202381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.318359, 30.793051, 52.322914>,  <30.005672, 30.940935, 52.523804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318359, 30.793051, 52.322914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225986, -0.918524, 0.324413,
		-0.581246, -0.140103, -0.801577,
		0.781719, -0.369709, -0.502227,
		30.552876, 30.682138, 52.172245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711548, 30.359529, 52.193192>,  <30.005672, 30.940935, 52.523804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711548, 30.359529, 52.193192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.107691, 30.322876, 52.234749>,  <30.345377, 30.300884, 52.259682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.107691, 30.322876, 52.234749>,  <29.711548, 30.359529, 52.193192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107691, 30.322876, 52.234749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117986, -0.950943, 0.285983,
		0.072588, -0.295483, -0.952586,
		0.990359, -0.091633, 0.103890,
		30.404799, 30.295385, 52.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154724, 30.822254, 52.305157>,  <29.711548, 30.359529, 52.193192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154724, 30.822254, 52.305157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114822, 31.141634, 52.067661>,  <29.090881, 31.333261, 51.925163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114822, 31.141634, 52.067661>,  <29.154724, 30.822254, 52.305157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114822, 31.141634, 52.067661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940673, -0.270173, -0.205283,
		-0.324320, 0.538036, 0.778032,
		-0.099753, 0.798451, -0.593738,
		29.084896, 31.381170, 51.889542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466059, 31.224884, 52.560375>,  <29.154724, 30.822254, 52.305157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466059, 31.224884, 52.560375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533136, 31.229342, 52.166065>,  <28.573383, 31.232016, 51.929478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.533136, 31.229342, 52.166065>,  <28.466059, 31.224884, 52.560375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533136, 31.229342, 52.166065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846016, -0.511709, -0.149704,
		-0.506098, 0.859086, -0.076386,
		0.167696, 0.011141, -0.985776,
		28.583445, 31.232683, 51.870331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947655, 31.751389, 52.472626>,  <28.466059, 31.224884, 52.560375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947655, 31.751389, 52.472626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591230, 31.712473, 52.295292>,  <27.377377, 31.689123, 52.188892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591230, 31.712473, 52.295292>,  <27.947655, 31.751389, 52.472626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591230, 31.712473, 52.295292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439192, -0.431339, -0.788072,
		-0.114557, -0.896929, 0.427077,
		-0.891060, -0.097290, -0.443337,
		27.323912, 31.683287, 52.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910572, 31.092422, 52.144558>,  <27.947655, 31.751389, 52.472626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910572, 31.092422, 52.144558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.643469, 31.313280, 51.944862>,  <27.483208, 31.445795, 51.825047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.643469, 31.313280, 51.944862>,  <27.910572, 31.092422, 52.144558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643469, 31.313280, 51.944862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290582, -0.424109, -0.857726,
		-0.685318, -0.717823, 0.122759,
		-0.667759, 0.552143, -0.499236,
		27.443142, 31.478924, 51.795090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835442, 30.656048, 51.525723>,  <27.910572, 31.092422, 52.144558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835442, 30.656048, 51.525723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.672043, 31.011520, 51.442413>,  <27.574003, 31.224804, 51.392426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.672043, 31.011520, 51.442413>,  <27.835442, 30.656048, 51.525723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672043, 31.011520, 51.442413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215453, -0.127853, -0.968108,
		-0.886967, -0.440343, -0.139241,
		-0.408497, 0.888679, -0.208275,
		27.549494, 31.278124, 51.379932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573507, 30.560347, 50.873531>,  <27.835442, 30.656048, 51.525723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573507, 30.560347, 50.873531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612268, 30.954884, 50.926804>,  <27.635525, 31.191607, 50.958767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612268, 30.954884, 50.926804>,  <27.573507, 30.560347, 50.873531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612268, 30.954884, 50.926804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435611, 0.078287, -0.896724,
		-0.894904, 0.144912, -0.422075,
		0.096903, 0.986343, 0.133185,
		27.641340, 31.250786, 50.966759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356424, 30.946156, 50.228401>,  <27.573507, 30.560347, 50.873531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356424, 30.946156, 50.228401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629223, 31.163919, 50.423748>,  <27.792902, 31.294577, 50.540955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629223, 31.163919, 50.423748>,  <27.356424, 30.946156, 50.228401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629223, 31.163919, 50.423748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493603, 0.150104, -0.856636,
		-0.539666, 0.825280, -0.166351,
		0.681995, 0.544409, 0.488367,
		27.833822, 31.327242, 50.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396849, 31.555094, 49.867447>,  <27.356424, 30.946156, 50.228401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396849, 31.555094, 49.867447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.731401, 31.554907, 50.086704>,  <27.932133, 31.554794, 50.218258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.731401, 31.554907, 50.086704>,  <27.396849, 31.555094, 49.867447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731401, 31.554907, 50.086704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508409, 0.374481, -0.775425,
		-0.204907, 0.927235, 0.313447,
		0.836381, -0.000469, 0.548148,
		27.982315, 31.554766, 50.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752684, 32.260685, 49.697544>,  <27.396849, 31.555094, 49.867447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752684, 32.260685, 49.697544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026495, 32.015488, 49.855358>,  <28.190781, 31.868368, 49.950047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026495, 32.015488, 49.855358>,  <27.752684, 32.260685, 49.697544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026495, 32.015488, 49.855358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663991, 0.300896, -0.684527,
		0.300896, 0.730547, 0.612994,
		0.684527, -0.612994, 0.394538,
		28.231853, 31.831589, 49.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323618, 32.690437, 49.844753>,  <27.752684, 32.260685, 49.697544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323618, 32.690437, 49.844753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478415, 32.321884, 49.830391>,  <28.571293, 32.100754, 49.821774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.478415, 32.321884, 49.830391>,  <28.323618, 32.690437, 49.844753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478415, 32.321884, 49.830391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721738, 0.326915, -0.610099,
		0.573875, 0.210184, 0.791511,
		0.386990, -0.921384, -0.035910,
		28.594511, 32.045467, 49.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040503, 32.795586, 49.994404>,  <28.323618, 32.690437, 49.844753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040503, 32.795586, 49.994404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041449, 32.426128, 49.841103>,  <29.042015, 32.204456, 49.749123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.041449, 32.426128, 49.841103>,  <29.040503, 32.795586, 49.994404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041449, 32.426128, 49.841103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793273, 0.235082, -0.561653,
		0.608861, -0.302699, 0.733254,
		0.002363, -0.923639, -0.383255,
		29.042158, 32.149036, 49.726128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680351, 32.627254, 49.939545>,  <29.040503, 32.795586, 49.994404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680351, 32.627254, 49.939545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502924, 32.391670, 49.669323>,  <29.396467, 32.250320, 49.507191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502924, 32.391670, 49.669323>,  <29.680351, 32.627254, 49.939545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502924, 32.391670, 49.669323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639525, 0.320087, -0.698965,
		0.627898, -0.742073, 0.234674,
		-0.443567, -0.588959, -0.675556,
		29.369854, 32.214981, 49.466656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224636, 32.185730, 49.577950>,  <29.680351, 32.627254, 49.939545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224636, 32.185730, 49.577950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910784, 32.256584, 49.340302>,  <29.722473, 32.299095, 49.197712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910784, 32.256584, 49.340302>,  <30.224636, 32.185730, 49.577950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910784, 32.256584, 49.340302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617404, 0.310264, -0.722875,
		0.056291, -0.934003, -0.352804,
		-0.784630, 0.177131, -0.594122,
		29.675394, 32.309723, 49.162064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582016, 31.950829, 49.023083>,  <30.224636, 32.185730, 49.577950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582016, 31.950829, 49.023083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244478, 32.136875, 48.916054>,  <30.041956, 32.248505, 48.851837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244478, 32.136875, 48.916054>,  <30.582016, 31.950829, 49.023083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244478, 32.136875, 48.916054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512836, 0.552342, -0.657204,
		-0.157885, -0.691798, -0.704619,
		-0.843843, 0.465116, -0.267572,
		29.991325, 32.276409, 48.835781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586805, 32.022781, 48.246429>,  <30.582016, 31.950829, 49.023083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586805, 32.022781, 48.246429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321875, 32.290550, 48.381008>,  <30.162916, 32.451210, 48.461754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321875, 32.290550, 48.381008>,  <30.586805, 32.022781, 48.246429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321875, 32.290550, 48.381008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319712, 0.658662, -0.681138,
		-0.677573, -0.343571, -0.650272,
		-0.662329, 0.669420, 0.336447,
		30.123177, 32.491375, 48.481941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187675, 32.232277, 47.624649>,  <30.586805, 32.022781, 48.246429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187675, 32.232277, 47.624649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178352, 32.529659, 47.892002>,  <30.172758, 32.708088, 48.052414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178352, 32.529659, 47.892002>,  <30.187675, 32.232277, 47.624649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178352, 32.529659, 47.892002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286229, 0.645537, -0.708064,
		-0.957878, 0.174807, -0.227843,
		-0.023306, 0.743454, 0.668380,
		30.171360, 32.752697, 48.092518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948574, 32.795555, 47.224243>,  <30.187675, 32.232277, 47.624649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948574, 32.795555, 47.224243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094954, 32.956917, 47.559708>,  <30.182781, 33.053734, 47.760986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094954, 32.956917, 47.559708>,  <29.948574, 32.795555, 47.224243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094954, 32.956917, 47.559708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329495, 0.786634, -0.522150,
		-0.870353, 0.467414, 0.154949,
		0.365948, 0.403400, 0.838660,
		30.204739, 33.077938, 47.811306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696119, 33.526966, 47.340176>,  <29.948574, 32.795555, 47.224243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696119, 33.526966, 47.340176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031729, 33.490246, 47.554695>,  <30.233093, 33.468212, 47.683407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031729, 33.490246, 47.554695>,  <29.696119, 33.526966, 47.340176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031729, 33.490246, 47.554695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415098, 0.745233, -0.521844,
		-0.351762, 0.660455, 0.663373,
		0.839022, -0.091800, 0.536298,
		30.283436, 33.462708, 47.715584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912064, 34.191422, 47.279274>,  <29.696119, 33.526966, 47.340176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912064, 34.191422, 47.279274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231436, 33.971111, 47.376560>,  <30.423059, 33.838924, 47.434933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231436, 33.971111, 47.376560>,  <29.912064, 34.191422, 47.279274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231436, 33.971111, 47.376560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570170, 0.561900, -0.599311,
		0.193419, 0.617185, 0.762674,
		0.798433, -0.550772, 0.243219,
		30.470966, 33.805878, 47.449524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480734, 34.668236, 47.384846>,  <29.912064, 34.191422, 47.279274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480734, 34.668236, 47.384846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681093, 34.322411, 47.368687>,  <30.801310, 34.114914, 47.358990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681093, 34.322411, 47.368687>,  <30.480734, 34.668236, 47.384846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681093, 34.322411, 47.368687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522969, 0.339525, -0.781810,
		0.689640, 0.370481, 0.622207,
		0.500900, -0.864562, -0.040400,
		30.831364, 34.063042, 47.356567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183420, 34.792183, 47.457932>,  <30.480734, 34.668236, 47.384846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183420, 34.792183, 47.457932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156631, 34.446583, 47.258327>,  <31.140558, 34.239223, 47.138565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156631, 34.446583, 47.258327>,  <31.183420, 34.792183, 47.457932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156631, 34.446583, 47.258327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541741, 0.388503, -0.745374,
		0.837873, -0.320256, 0.442046,
		-0.066974, -0.864003, -0.499012,
		31.136539, 34.187382, 47.108624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838968, 34.730740, 47.225983>,  <31.183420, 34.792183, 47.457932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838968, 34.730740, 47.225983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632545, 34.472126, 47.001240>,  <31.508692, 34.316959, 46.866394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632545, 34.472126, 47.001240>,  <31.838968, 34.730740, 47.225983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632545, 34.472126, 47.001240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440384, 0.362345, -0.821443,
		0.734674, -0.671344, 0.097732,
		-0.516057, -0.646532, -0.561854,
		31.477728, 34.278168, 46.832684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.336143, 41.449635, 37.819843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165329, 41.576195, 38.158672>,  <44.062840, 41.652130, 38.361969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165329, 41.576195, 38.158672>,  <44.336143, 41.449635, 37.819843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165329, 41.576195, 38.158672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115966, -0.948211, 0.295716,
		0.896769, 0.028049, 0.441609,
		-0.427033, 0.316401, 0.847073,
		44.037220, 41.671116, 38.412796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453125, 40.929783, 38.304604>,  <44.336143, 41.449635, 37.819843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453125, 40.929783, 38.304604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177422, 41.128353, 38.515690>,  <44.011997, 41.247494, 38.642342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177422, 41.128353, 38.515690>,  <44.453125, 40.929783, 38.304604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177422, 41.128353, 38.515690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369604, -0.867389, 0.333211,
		0.623145, 0.034625, 0.781339,
		-0.689262, 0.496425, 0.527711,
		43.970642, 41.277279, 38.674004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492805, 40.729923, 38.970051>,  <44.453125, 40.929783, 38.304604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492805, 40.729923, 38.970051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125916, 40.865341, 38.886070>,  <43.905781, 40.946594, 38.835682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125916, 40.865341, 38.886070>,  <44.492805, 40.729923, 38.970051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125916, 40.865341, 38.886070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393910, -0.849375, 0.351279,
		-0.059398, 0.404903, 0.912428,
		-0.917228, 0.338550, -0.209947,
		43.850746, 40.966908, 38.823086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187752, 40.486629, 39.463898>,  <44.492805, 40.729923, 38.970051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187752, 40.486629, 39.463898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879841, 40.575863, 39.224670>,  <43.695095, 40.629402, 39.081135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879841, 40.575863, 39.224670>,  <44.187752, 40.486629, 39.463898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879841, 40.575863, 39.224670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352193, -0.929853, 0.106460,
		-0.532361, 0.292583, 0.794347,
		-0.769774, 0.223088, -0.598063,
		43.648911, 40.642788, 39.045250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590263, 40.293842, 39.783989>,  <44.187752, 40.486629, 39.463898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590263, 40.293842, 39.783989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482658, 40.284336, 39.398853>,  <43.418095, 40.278633, 39.167770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482658, 40.284336, 39.398853>,  <43.590263, 40.293842, 39.783989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482658, 40.284336, 39.398853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400384, -0.906462, 0.134237,
		-0.875970, 0.421619, 0.234340,
		-0.269017, -0.023761, -0.962842,
		43.401955, 40.277206, 39.110001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002720, 39.820133, 39.764427>,  <43.590263, 40.293842, 39.783989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002720, 39.820133, 39.764427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112686, 39.847225, 39.380795>,  <43.178665, 39.863480, 39.150616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112686, 39.847225, 39.380795>,  <43.002720, 39.820133, 39.764427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112686, 39.847225, 39.380795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290298, -0.945113, -0.149960,
		-0.916597, 0.319645, -0.240162,
		0.274914, 0.067734, -0.959080,
		43.195160, 39.867546, 39.093071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504139, 39.527134, 39.359360>,  <43.002720, 39.820133, 39.764427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504139, 39.527134, 39.359360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807190, 39.496063, 39.100140>,  <42.989021, 39.477421, 38.944607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807190, 39.496063, 39.100140>,  <42.504139, 39.527134, 39.359360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807190, 39.496063, 39.100140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262450, -0.945341, -0.193521,
		-0.597594, 0.316697, -0.736603,
		0.757629, -0.077674, -0.648048,
		43.034477, 39.472759, 38.905724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219780, 39.155418, 38.767544>,  <42.504139, 39.527134, 39.359360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219780, 39.155418, 38.767544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616562, 39.126900, 38.725719>,  <42.854633, 39.109787, 38.700626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616562, 39.126900, 38.725719>,  <42.219780, 39.155418, 38.767544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616562, 39.126900, 38.725719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100325, -0.946645, -0.306266,
		-0.077144, 0.314293, -0.946186,
		0.991959, -0.071300, -0.104559,
		42.914150, 39.105511, 38.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418575, 38.871922, 38.060398>,  <42.219780, 39.155418, 38.767544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418575, 38.871922, 38.060398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708851, 38.783310, 38.320950>,  <42.883018, 38.730145, 38.477280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708851, 38.783310, 38.320950>,  <42.418575, 38.871922, 38.060398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708851, 38.783310, 38.320950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035127, -0.957442, -0.286480,
		0.687122, 0.185016, -0.702590,
		0.725692, -0.221527, 0.651381,
		42.926559, 38.716850, 38.516365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960781, 38.545914, 37.680687>,  <42.418575, 38.871922, 38.060398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960781, 38.545914, 37.680687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013382, 38.443970, 38.063885>,  <43.044941, 38.382801, 38.293804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.013382, 38.443970, 38.063885>,  <42.960781, 38.545914, 37.680687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013382, 38.443970, 38.063885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054931, -0.966775, -0.249658,
		0.989793, -0.019792, -0.141134,
		0.131503, -0.254863, 0.957994,
		43.052834, 38.367512, 38.351284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505802, 38.066437, 37.666397>,  <42.960781, 38.545914, 37.680687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505802, 38.066437, 37.666397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325020, 37.993767, 38.015732>,  <43.216549, 37.950165, 38.225334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325020, 37.993767, 38.015732>,  <43.505802, 38.066437, 37.666397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325020, 37.993767, 38.015732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126987, -0.982173, -0.138602,
		0.882953, 0.048260, 0.466974,
		-0.451960, -0.181679, 0.873341,
		43.189430, 37.939262, 38.277733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918118, 37.543911, 38.170750>,  <43.505802, 38.066437, 37.666397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918118, 37.543911, 38.170750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544792, 37.513790, 38.311184>,  <43.320797, 37.495720, 38.395443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544792, 37.513790, 38.311184>,  <43.918118, 37.543911, 38.170750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544792, 37.513790, 38.311184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050524, -0.995577, -0.079213,
		0.355495, -0.056192, 0.932988,
		-0.933312, -0.075298, 0.351083,
		43.264797, 37.491199, 38.416508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934116, 36.908932, 38.521740>,  <43.918118, 37.543911, 38.170750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934116, 36.908932, 38.521740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539726, 36.974380, 38.508640>,  <43.303093, 37.013649, 38.500782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539726, 36.974380, 38.508640>,  <43.934116, 36.908932, 38.521740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539726, 36.974380, 38.508640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142005, -0.925829, -0.350251,
		-0.087628, -0.340690, 0.936083,
		-0.985980, 0.163620, -0.032749,
		43.243931, 37.023468, 38.498817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606575, 36.374542, 38.878418>,  <43.934116, 36.908932, 38.521740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606575, 36.374542, 38.878418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308380, 36.509312, 38.648380>,  <43.129463, 36.590172, 38.510357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308380, 36.509312, 38.648380>,  <43.606575, 36.374542, 38.878418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308380, 36.509312, 38.648380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195553, -0.935420, -0.294530,
		-0.637189, -0.107106, 0.763229,
		-0.745486, 0.336923, -0.575094,
		43.084736, 36.610390, 38.475853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968384, 35.916283, 39.049229>,  <43.606575, 36.374542, 38.878418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968384, 35.916283, 39.049229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912830, 36.099014, 38.697769>,  <42.879498, 36.208652, 38.486893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912830, 36.099014, 38.697769>,  <42.968384, 35.916283, 39.049229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912830, 36.099014, 38.697769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181990, -0.883905, -0.430802,
		-0.973443, 0.100073, 0.205898,
		-0.138883, 0.456833, -0.878644,
		42.871166, 36.236065, 38.434177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272503, 35.683472, 38.780251>,  <42.968384, 35.916283, 39.049229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272503, 35.683472, 38.780251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506218, 35.795044, 38.475407>,  <42.646446, 35.861988, 38.292500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506218, 35.795044, 38.475407>,  <42.272503, 35.683472, 38.780251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506218, 35.795044, 38.475407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326137, -0.779208, -0.535228,
		-0.743128, 0.561280, -0.364316,
		0.584291, 0.278926, -0.762105,
		42.681507, 35.878723, 38.246777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841534, 35.626293, 38.185249>,  <42.272503, 35.683472, 38.780251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841534, 35.626293, 38.185249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217121, 35.615868, 38.048046>,  <42.442474, 35.609612, 37.965725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217121, 35.615868, 38.048046>,  <41.841534, 35.626293, 38.185249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217121, 35.615868, 38.048046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228440, -0.792753, -0.565118,
		-0.257192, 0.608986, -0.750325,
		0.938971, -0.026060, -0.343007,
		42.498814, 35.608051, 37.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751137, 35.649834, 37.463734>,  <41.841534, 35.626293, 38.185249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751137, 35.649834, 37.463734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100094, 35.461266, 37.515423>,  <42.309467, 35.348125, 37.546436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100094, 35.461266, 37.515423>,  <41.751137, 35.649834, 37.463734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100094, 35.461266, 37.515423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146034, -0.503649, -0.851476,
		0.466486, 0.723949, -0.508222,
		0.872390, -0.471419, 0.129224,
		42.361813, 35.319839, 37.554192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951977, 35.596943, 36.824150>,  <41.751137, 35.649834, 37.463734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951977, 35.596943, 36.824150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194389, 35.337982, 37.009014>,  <42.339836, 35.182606, 37.119934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194389, 35.337982, 37.009014>,  <41.951977, 35.596943, 36.824150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194389, 35.337982, 37.009014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048490, -0.609998, -0.790918,
		0.793961, 0.456911, -0.401071,
		0.606031, -0.647406, 0.462159,
		42.376198, 35.143761, 37.147663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311920, 35.241386, 36.319519>,  <41.951977, 35.596943, 36.824150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311920, 35.241386, 36.319519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.377644, 35.001125, 36.632496>,  <42.417080, 34.856968, 36.820282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.377644, 35.001125, 36.632496>,  <42.311920, 35.241386, 36.319519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377644, 35.001125, 36.632496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073663, -0.783539, -0.616960,
		0.983654, 0.159011, -0.084498,
		0.164311, -0.600651, 0.782445,
		42.426937, 34.820930, 36.867229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867420, 34.850327, 36.093689>,  <42.311920, 35.241386, 36.319519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867420, 34.850327, 36.093689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678585, 34.645805, 36.380936>,  <42.565285, 34.523094, 36.553284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678585, 34.645805, 36.380936>,  <42.867420, 34.850327, 36.093689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678585, 34.645805, 36.380936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026825, -0.822567, -0.568036,
		0.881141, -0.248902, 0.402043,
		-0.472092, -0.511304, 0.718120,
		42.536957, 34.492413, 36.596371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315460, 34.124683, 36.375759>,  <42.867420, 34.850327, 36.093689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315460, 34.124683, 36.375759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917027, 34.123142, 36.340435>,  <42.677967, 34.122219, 36.319241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917027, 34.123142, 36.340435>,  <43.315460, 34.124683, 36.375759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917027, 34.123142, 36.340435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061851, -0.744093, -0.665207,
		-0.063145, -0.668065, 0.741419,
		-0.996086, -0.003853, -0.088306,
		42.618202, 34.121986, 36.313942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802753, 34.669441, 36.391560>,  <43.315460, 34.124683, 36.375759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802753, 34.669441, 36.391560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023361, 34.734837, 36.064365>,  <44.155724, 34.774075, 35.868050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023361, 34.734837, 36.064365>,  <43.802753, 34.669441, 36.391560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023361, 34.734837, 36.064365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321141, 0.863408, 0.389095,
		0.769869, -0.477281, 0.423679,
		0.551516, 0.163491, -0.817985,
		44.188816, 34.783886, 35.818970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444557, 34.944618, 36.632805>,  <43.802753, 34.669441, 36.391560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444557, 34.944618, 36.632805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435238, 35.041710, 36.244881>,  <44.429646, 35.099964, 36.012127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.435238, 35.041710, 36.244881>,  <44.444557, 34.944618, 36.632805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435238, 35.041710, 36.244881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176869, 0.955776, 0.234967,
		0.983959, -0.166055, -0.065203,
		-0.023302, 0.242730, -0.969814,
		44.428249, 35.114529, 35.953938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012657, 35.491516, 36.566528>,  <44.444557, 34.944618, 36.632805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012657, 35.491516, 36.566528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840736, 35.518532, 36.206371>,  <44.737583, 35.534740, 35.990276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840736, 35.518532, 36.206371>,  <45.012657, 35.491516, 36.566528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840736, 35.518532, 36.206371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276589, 0.959108, -0.060084,
		0.859519, -0.274863, -0.430904,
		-0.429798, 0.067540, -0.900395,
		44.711796, 35.538795, 35.936253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517952, 35.917759, 36.144035>,  <45.012657, 35.491516, 36.566528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517952, 35.917759, 36.144035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144768, 35.943790, 36.002419>,  <44.920856, 35.959408, 35.917450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.144768, 35.943790, 36.002419>,  <45.517952, 35.917759, 36.144035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144768, 35.943790, 36.002419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104770, 0.990034, -0.094104,
		0.344389, -0.124888, -0.930483,
		-0.932963, 0.065078, -0.354041,
		44.864880, 35.963314, 35.896206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660225, 36.347923, 35.680851>,  <45.517952, 35.917759, 36.144035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660225, 36.347923, 35.680851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271507, 36.403717, 35.756912>,  <45.038277, 36.437195, 35.802547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271507, 36.403717, 35.756912>,  <45.660225, 36.347923, 35.680851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271507, 36.403717, 35.756912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144430, 0.989438, 0.012319,
		-0.186423, 0.039435, -0.981678,
		-0.971796, 0.139487, 0.190149,
		44.979969, 36.445564, 35.813957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494396, 36.925564, 35.182507>,  <45.660225, 36.347923, 35.680851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494396, 36.925564, 35.182507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214527, 36.895958, 35.466755>,  <45.046604, 36.878197, 35.637302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214527, 36.895958, 35.466755>,  <45.494396, 36.925564, 35.182507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214527, 36.895958, 35.466755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171251, 0.982999, -0.066233,
		-0.693638, -0.168036, -0.700450,
		-0.699671, -0.074011, 0.710621,
		45.004627, 36.873756, 35.679943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052540, 37.419006, 34.994858>,  <45.494396, 36.925564, 35.182507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052540, 37.419006, 34.994858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954288, 37.364109, 35.378696>,  <44.895336, 37.331169, 35.609001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954288, 37.364109, 35.378696>,  <45.052540, 37.419006, 34.994858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954288, 37.364109, 35.378696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088938, 0.988942, 0.118676,
		-0.965275, -0.056195, -0.255120,
		-0.245630, -0.137245, 0.959599,
		44.880600, 37.322937, 35.666576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450554, 37.778667, 35.178852>,  <45.052540, 37.419006, 34.994858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450554, 37.778667, 35.178852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633099, 37.733364, 35.531876>,  <44.742626, 37.706181, 35.743690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633099, 37.733364, 35.531876>,  <44.450554, 37.778667, 35.178852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633099, 37.733364, 35.531876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057043, 0.993550, 0.098006,
		-0.887963, 0.005617, 0.459881,
		0.456364, -0.113258, 0.882556,
		44.770008, 37.699387, 35.796642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238697, 38.320152, 35.591434>,  <44.450554, 37.778667, 35.178852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238697, 38.320152, 35.591434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564716, 38.202946, 35.791370>,  <44.760326, 38.132622, 35.911331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564716, 38.202946, 35.791370>,  <44.238697, 38.320152, 35.591434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564716, 38.202946, 35.791370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231269, 0.955518, 0.183030,
		-0.531237, -0.033581, 0.846558,
		0.815047, -0.293015, 0.499840,
		44.809231, 38.115040, 35.941322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281181, 38.783627, 36.111118>,  <44.238697, 38.320152, 35.591434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281181, 38.783627, 36.111118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652641, 38.636856, 36.089298>,  <44.875519, 38.548794, 36.076206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652641, 38.636856, 36.089298>,  <44.281181, 38.783627, 36.111118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652641, 38.636856, 36.089298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369843, 0.927185, 0.059533,
		0.028732, -0.075460, 0.996735,
		0.928650, -0.366925, -0.054549,
		44.931236, 38.526779, 36.072933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624004, 39.065464, 36.638527>,  <44.281181, 38.783627, 36.111118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624004, 39.065464, 36.638527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912521, 38.966213, 36.379860>,  <45.085632, 38.906662, 36.224659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912521, 38.966213, 36.379860>,  <44.624004, 39.065464, 36.638527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912521, 38.966213, 36.379860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487499, 0.845085, 0.219492,
		0.492022, -0.473565, 0.730514,
		0.721290, -0.248130, -0.646663,
		45.128910, 38.891773, 36.185860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169460, 39.136013, 37.063442>,  <44.624004, 39.065464, 36.638527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169460, 39.136013, 37.063442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298477, 39.148556, 36.685028>,  <45.375889, 39.156082, 36.457981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298477, 39.148556, 36.685028>,  <45.169460, 39.136013, 37.063442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298477, 39.148556, 36.685028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564122, 0.796196, 0.218720,
		0.760086, -0.604227, 0.239122,
		0.322544, 0.031352, -0.946035,
		45.395241, 39.157963, 36.401218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908566, 39.409763, 37.208939>,  <45.169460, 39.136013, 37.063442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908566, 39.409763, 37.208939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806023, 39.460262, 36.825619>,  <45.744495, 39.490562, 36.595627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806023, 39.460262, 36.825619>,  <45.908566, 39.409763, 37.208939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806023, 39.460262, 36.825619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477806, 0.878382, -0.012105,
		0.840226, -0.460986, -0.285502,
		-0.256360, 0.126243, -0.958302,
		45.729115, 39.498135, 36.538128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515751, 39.641651, 36.802132>,  <45.908566, 39.409763, 37.208939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515751, 39.641651, 36.802132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.186398, 39.759365, 36.608044>,  <45.988785, 39.829994, 36.491592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.186398, 39.759365, 36.608044>,  <46.515751, 39.641651, 36.802132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186398, 39.759365, 36.608044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274757, 0.954864, 0.112886,
		0.496539, -0.040369, -0.867075,
		-0.823382, 0.294287, -0.485218,
		45.939384, 39.847652, 36.462479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767780, 40.118721, 36.419289>,  <46.515751, 39.641651, 36.802132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767780, 40.118721, 36.419289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374279, 40.188747, 36.403374>,  <46.138180, 40.230762, 36.393826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374279, 40.188747, 36.403374>,  <46.767780, 40.118721, 36.419289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374279, 40.188747, 36.403374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156265, 0.944095, 0.290285,
		0.088376, 0.279352, -0.956113,
		-0.983753, 0.175062, -0.039783,
		46.079151, 40.241264, 36.391438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714775, 40.763378, 36.120499>,  <46.767780, 40.118721, 36.419289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714775, 40.763378, 36.120499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.379169, 40.696552, 36.327625>,  <46.177807, 40.656456, 36.451900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.379169, 40.696552, 36.327625>,  <46.714775, 40.763378, 36.120499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379169, 40.696552, 36.327625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075780, 0.906541, 0.415259,
		-0.538800, 0.387651, -0.747945,
		-0.839018, -0.167062, 0.517821,
		46.127464, 40.646435, 36.482971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419254, 41.509060, 36.301277>,  <46.714775, 40.763378, 36.120499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419254, 41.509060, 36.301277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.219299, 41.279728, 36.560940>,  <46.099327, 41.142128, 36.716736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.219299, 41.279728, 36.560940>,  <46.419254, 41.509060, 36.301277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219299, 41.279728, 36.560940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149587, 0.795416, 0.587314,
		-0.853073, 0.196487, -0.483383,
		-0.499890, -0.573329, 0.649156,
		46.069332, 41.107731, 36.755688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811852, 41.886353, 36.430973>,  <46.419254, 41.509060, 36.301277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811852, 41.886353, 36.430973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851257, 41.624626, 36.730885>,  <45.874901, 41.467590, 36.910831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851257, 41.624626, 36.730885>,  <45.811852, 41.886353, 36.430973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851257, 41.624626, 36.730885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113454, 0.741147, 0.661686,
		-0.988647, -0.150251, -0.001221,
		0.098514, -0.654313, 0.749780,
		45.880810, 41.428333, 36.955818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290100, 42.071552, 36.968666>,  <45.811852, 41.886353, 36.430973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290100, 42.071552, 36.968666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571064, 41.851460, 37.149269>,  <45.739643, 41.719402, 37.257629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571064, 41.851460, 37.149269>,  <45.290100, 42.071552, 36.968666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571064, 41.851460, 37.149269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022077, 0.617197, 0.786499,
		-0.711428, -0.562414, 0.421380,
		0.702412, -0.550235, 0.451508,
		45.781788, 41.686390, 37.284721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980026, 41.921833, 37.742172>,  <45.290100, 42.071552, 36.968666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980026, 41.921833, 37.742172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376427, 41.878410, 37.710838>,  <45.614265, 41.852356, 37.692036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376427, 41.878410, 37.710838>,  <44.980026, 41.921833, 37.742172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376427, 41.878410, 37.710838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118095, 0.433339, 0.893460,
		-0.063043, -0.894669, 0.442259,
		0.990999, -0.108554, -0.078337,
		45.673725, 41.845844, 37.687336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.037666, 37.057480, 45.043694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931290, 36.681961, 44.956120>,  <35.867466, 36.456650, 44.903576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931290, 36.681961, 44.956120>,  <36.037666, 37.057480, 45.043694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931290, 36.681961, 44.956120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650862, -0.007329, -0.759161,
		0.711095, -0.344389, 0.612977,
		-0.265939, -0.938799, -0.218938,
		35.851509, 36.400322, 44.890438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640118, 36.850376, 44.764942>,  <36.037666, 37.057480, 45.043694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640118, 36.850376, 44.764942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390568, 36.553638, 44.666599>,  <36.240837, 36.375595, 44.607594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390568, 36.553638, 44.666599>,  <36.640118, 36.850376, 44.764942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390568, 36.553638, 44.666599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627241, -0.287634, -0.723764,
		0.466205, -0.605749, 0.644764,
		-0.623876, -0.741845, -0.245854,
		36.203403, 36.331085, 44.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912891, 36.095295, 44.927414>,  <36.640118, 36.850376, 44.764942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912891, 36.095295, 44.927414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653355, 36.051804, 44.626167>,  <36.497631, 36.025707, 44.445419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653355, 36.051804, 44.626167>,  <36.912891, 36.095295, 44.927414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653355, 36.051804, 44.626167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757501, -0.186038, -0.625765,
		-0.072067, -0.976508, 0.203074,
		-0.648844, -0.108731, -0.753113,
		36.458702, 36.019184, 44.400234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079597, 35.481922, 44.488029>,  <36.912891, 36.095295, 44.927414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079597, 35.481922, 44.488029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832470, 35.668320, 44.234684>,  <36.684193, 35.780159, 44.082676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832470, 35.668320, 44.234684>,  <37.079597, 35.481922, 44.488029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832470, 35.668320, 44.234684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577533, -0.277711, -0.767680,
		-0.533628, -0.840074, -0.097553,
		-0.617816, 0.465995, -0.633365,
		36.647125, 35.808117, 44.044674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875938, 35.021297, 43.984043>,  <37.079597, 35.481922, 44.488029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875938, 35.021297, 43.984043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822929, 35.390766, 43.840225>,  <36.791122, 35.612446, 43.753933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822929, 35.390766, 43.840225>,  <36.875938, 35.021297, 43.984043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822929, 35.390766, 43.840225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375596, -0.288894, -0.880607,
		-0.917259, -0.251746, -0.308641,
		-0.132525, 0.923669, -0.359545,
		36.783173, 35.667866, 43.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727955, 34.897629, 43.251186>,  <36.875938, 35.021297, 43.984043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727955, 34.897629, 43.251186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811951, 35.284458, 43.308708>,  <36.862350, 35.516556, 43.343224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811951, 35.284458, 43.308708>,  <36.727955, 34.897629, 43.251186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811951, 35.284458, 43.308708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456607, 0.033057, -0.889054,
		-0.864530, 0.252360, -0.434628,
		0.209994, 0.967069, 0.143808,
		36.874950, 35.574577, 43.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527901, 35.271633, 42.615948>,  <36.727955, 34.897629, 43.251186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527901, 35.271633, 42.615948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807522, 35.487122, 42.804035>,  <36.975292, 35.616417, 42.916889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807522, 35.487122, 42.804035>,  <36.527901, 35.271633, 42.615948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807522, 35.487122, 42.804035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582821, -0.048255, -0.811166,
		-0.414306, 0.841098, -0.347713,
		0.699049, 0.538725, 0.470218,
		37.017235, 35.648739, 42.945099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791534, 35.655937, 42.095654>,  <36.527901, 35.271633, 42.615948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791534, 35.655937, 42.095654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059467, 35.719135, 42.385857>,  <37.220226, 35.757053, 42.559978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059467, 35.719135, 42.385857>,  <36.791534, 35.655937, 42.095654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059467, 35.719135, 42.385857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741474, -0.090764, -0.664814,
		-0.039186, 0.983260, -0.177945,
		0.669837, 0.157993, 0.725505,
		37.260418, 35.766533, 42.603508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275467, 36.225380, 41.854633>,  <36.791534, 35.655937, 42.095654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275467, 36.225380, 41.854633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469833, 35.993832, 42.116562>,  <37.586452, 35.854904, 42.273720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469833, 35.993832, 42.116562>,  <37.275467, 36.225380, 41.854633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469833, 35.993832, 42.116562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691862, -0.203044, -0.692893,
		0.534054, 0.789735, 0.301837,
		0.485915, -0.578871, 0.654824,
		37.615608, 35.820171, 42.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976555, 36.383991, 41.758595>,  <37.275467, 36.225380, 41.854633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976555, 36.383991, 41.758595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971085, 36.042465, 41.966755>,  <37.967800, 35.837551, 42.091652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971085, 36.042465, 41.966755>,  <37.976555, 36.383991, 41.758595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971085, 36.042465, 41.966755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707550, -0.376013, -0.598320,
		0.706531, 0.360023, 0.609260,
		-0.013680, -0.853813, 0.520399,
		37.966980, 35.786320, 42.122875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712227, 36.301983, 41.905136>,  <37.976555, 36.383991, 41.758595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712227, 36.301983, 41.905136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521492, 35.950695, 41.919861>,  <38.407051, 35.739922, 41.928696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521492, 35.950695, 41.919861>,  <38.712227, 36.301983, 41.905136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521492, 35.950695, 41.919861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727513, -0.417820, -0.544198,
		0.493308, -0.232709, 0.838149,
		-0.476835, -0.878221, 0.036815,
		38.378441, 35.687229, 41.930904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284172, 35.788868, 42.076485>,  <38.712227, 36.301983, 41.905136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284172, 35.788868, 42.076485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971119, 35.575287, 41.948490>,  <38.783287, 35.447140, 41.871693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971119, 35.575287, 41.948490>,  <39.284172, 35.788868, 42.076485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971119, 35.575287, 41.948490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542621, -0.333276, -0.771031,
		0.305049, -0.777061, 0.550564,
		-0.782628, -0.533950, -0.319984,
		38.736332, 35.415100, 41.852493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553417, 35.041683, 41.802391>,  <39.284172, 35.788868, 42.076485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553417, 35.041683, 41.802391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196999, 35.107857, 41.633312>,  <38.983147, 35.147560, 41.531864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196999, 35.107857, 41.633312>,  <39.553417, 35.041683, 41.802391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196999, 35.107857, 41.633312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319660, -0.432452, -0.843091,
		-0.322270, -0.886351, 0.332452,
		-0.891044, 0.165432, -0.422697,
		38.929688, 35.157486, 41.506504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513836, 34.551872, 41.414272>,  <39.553417, 35.041683, 41.802391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513836, 34.551872, 41.414272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207195, 34.756702, 41.259304>,  <39.023212, 34.879601, 41.166321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207195, 34.756702, 41.259304>,  <39.513836, 34.551872, 41.414272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207195, 34.756702, 41.259304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147543, -0.446731, -0.882418,
		-0.624943, -0.733624, 0.266910,
		-0.766601, 0.512081, -0.387423,
		38.977215, 34.910328, 41.143078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002716, 34.088394, 40.951786>,  <39.513836, 34.551872, 41.414272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002716, 34.088394, 40.951786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097687, 33.699997, 40.940529>,  <40.154671, 33.466957, 40.933777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097687, 33.699997, 40.940529>,  <40.002716, 34.088394, 40.951786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097687, 33.699997, 40.940529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563295, -0.161222, 0.810374,
		-0.791408, -0.176554, -0.585237,
		0.237427, -0.970998, -0.028140,
		40.168915, 33.408699, 40.932087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444839, 33.724110, 41.197205>,  <40.002716, 34.088394, 40.951786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444839, 33.724110, 41.197205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744347, 33.460712, 41.227505>,  <39.924049, 33.302673, 41.245686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744347, 33.460712, 41.227505>,  <39.444839, 33.724110, 41.197205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744347, 33.460712, 41.227505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361886, -0.310374, 0.879037,
		-0.555328, -0.685606, -0.470696,
		0.748766, -0.658493, 0.075752,
		39.968975, 33.263165, 41.250229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195396, 33.248352, 41.559738>,  <39.444839, 33.724110, 41.197205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195396, 33.248352, 41.559738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578896, 33.138172, 41.587841>,  <39.808994, 33.072063, 41.604702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578896, 33.138172, 41.587841>,  <39.195396, 33.248352, 41.559738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578896, 33.138172, 41.587841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112385, -0.140244, 0.983718,
		-0.261115, -0.951029, -0.165415,
		0.958743, -0.275454, 0.070262,
		39.866520, 33.055534, 41.608921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212528, 32.564034, 41.784954>,  <39.195396, 33.248352, 41.559738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212528, 32.564034, 41.784954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578091, 32.698166, 41.876465>,  <39.797428, 32.778645, 41.931370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578091, 32.698166, 41.876465>,  <39.212528, 32.564034, 41.784954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578091, 32.698166, 41.876465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168930, -0.198284, 0.965477,
		0.369114, -0.920998, -0.124565,
		0.913902, 0.335328, 0.228774,
		39.852261, 32.798763, 41.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480610, 32.135632, 42.253719>,  <39.212528, 32.564034, 41.784954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480610, 32.135632, 42.253719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694508, 32.470711, 42.298096>,  <39.822845, 32.671757, 42.324722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694508, 32.470711, 42.298096>,  <39.480610, 32.135632, 42.253719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694508, 32.470711, 42.298096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032277, -0.110942, 0.993303,
		0.844396, -0.534745, -0.032287,
		0.534746, 0.837699, 0.110939,
		39.854931, 32.722019, 42.331379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064251, 31.920916, 42.680683>,  <39.480610, 32.135632, 42.253719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064251, 31.920916, 42.680683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985104, 32.311520, 42.714806>,  <39.937614, 32.545883, 42.735279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985104, 32.311520, 42.714806>,  <40.064251, 31.920916, 42.680683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985104, 32.311520, 42.714806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184942, -0.122657, 0.975065,
		0.962623, 0.177160, 0.204868,
		-0.197871, 0.976509, 0.085309,
		39.925743, 32.604473, 42.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407616, 32.233624, 43.297558>,  <40.064251, 31.920916, 42.680683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407616, 32.233624, 43.297558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107647, 32.489960, 43.231892>,  <39.927666, 32.643761, 43.192490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107647, 32.489960, 43.231892>,  <40.407616, 32.233624, 43.297558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107647, 32.489960, 43.231892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241940, -0.034713, 0.969670,
		0.615702, 0.766892, 0.181076,
		-0.749918, 0.640837, -0.164169,
		39.882671, 32.682209, 43.182640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329430, 32.671516, 43.888073>,  <40.407616, 32.233624, 43.297558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329430, 32.671516, 43.888073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997040, 32.729820, 43.673325>,  <39.797604, 32.764805, 43.544476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997040, 32.729820, 43.673325>,  <40.329430, 32.671516, 43.888073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997040, 32.729820, 43.673325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554544, -0.140294, 0.820243,
		0.044241, 0.979322, 0.197413,
		-0.830977, 0.145762, -0.536870,
		39.747746, 32.773548, 43.512264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919323, 33.038975, 44.296494>,  <40.329430, 32.671516, 43.888073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919323, 33.038975, 44.296494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640285, 32.877644, 44.059616>,  <39.472862, 32.780846, 43.917488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640285, 32.877644, 44.059616>,  <39.919323, 33.038975, 44.296494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640285, 32.877644, 44.059616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541570, -0.244334, 0.804365,
		-0.469118, 0.881831, -0.047986,
		-0.697589, -0.403330, -0.592195,
		39.431007, 32.756645, 43.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304970, 33.287506, 44.613728>,  <39.919323, 33.038975, 44.296494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304970, 33.287506, 44.613728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221699, 32.974884, 44.378498>,  <39.171738, 32.787312, 44.237358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221699, 32.974884, 44.378498>,  <39.304970, 33.287506, 44.613728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221699, 32.974884, 44.378498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524217, -0.418445, 0.741688,
		-0.825748, 0.462682, -0.322594,
		-0.208178, -0.781556, -0.588076,
		39.159245, 32.740417, 44.202076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541855, 33.199303, 44.663139>,  <39.304970, 33.287506, 44.613728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541855, 33.199303, 44.663139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664017, 32.849873, 44.511559>,  <38.737312, 32.640217, 44.420612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664017, 32.849873, 44.511559>,  <38.541855, 33.199303, 44.663139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664017, 32.849873, 44.511559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546791, -0.486695, 0.681284,
		-0.779583, -0.000861, -0.626299,
		0.305403, -0.873571, -0.378948,
		38.755638, 32.587803, 44.397873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960117, 32.815598, 44.644806>,  <38.541855, 33.199303, 44.663139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960117, 32.815598, 44.644806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224556, 32.517300, 44.611801>,  <38.383221, 32.338322, 44.591999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224556, 32.517300, 44.611801>,  <37.960117, 32.815598, 44.644806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224556, 32.517300, 44.611801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518311, -0.533435, 0.668432,
		-0.542511, -0.399117, -0.739180,
		0.661087, -0.745757, -0.082528,
		38.422886, 32.293575, 44.587048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538841, 32.379059, 44.581886>,  <37.960117, 32.815598, 44.644806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538841, 32.379059, 44.581886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878498, 32.198456, 44.691505>,  <38.082291, 32.090092, 44.757278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878498, 32.198456, 44.691505>,  <37.538841, 32.379059, 44.581886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878498, 32.198456, 44.691505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498155, -0.512217, 0.699625,
		-0.175517, -0.730596, -0.659866,
		0.849138, -0.451512, 0.274047,
		38.133240, 32.063004, 44.773720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318512, 31.654169, 44.642014>,  <37.538841, 32.379059, 44.581886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318512, 31.654169, 44.642014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638664, 31.740639, 44.865677>,  <37.830757, 31.792521, 44.999874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638664, 31.740639, 44.865677>,  <37.318512, 31.654169, 44.642014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638664, 31.740639, 44.865677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457977, -0.381376, 0.803000,
		0.386836, -0.898789, -0.206244,
		0.800384, 0.216175, 0.559155,
		37.878780, 31.805490, 45.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352394, 30.935020, 44.171104>,  <37.318512, 31.654169, 44.642014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352394, 30.935020, 44.171104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057457, 30.707289, 44.025673>,  <36.880493, 30.570650, 43.938416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057457, 30.707289, 44.025673>,  <37.352394, 30.935020, 44.171104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057457, 30.707289, 44.025673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249163, 0.271054, -0.929757,
		0.627888, -0.776140, -0.058004,
		-0.737343, -0.569330, -0.363577,
		36.836254, 30.536489, 43.916599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644550, 30.525848, 43.594963>,  <37.352394, 30.935020, 44.171104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644550, 30.525848, 43.594963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249165, 30.556124, 43.542477>,  <37.011932, 30.574289, 43.510986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249165, 30.556124, 43.542477>,  <37.644550, 30.525848, 43.594963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249165, 30.556124, 43.542477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148774, 0.322100, -0.934943,
		-0.028502, -0.943675, -0.329644,
		-0.988460, 0.075690, -0.131214,
		36.952625, 30.578831, 43.503113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522167, 30.240465, 42.918133>,  <37.644550, 30.525848, 43.594963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522167, 30.240465, 42.918133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202625, 30.468500, 42.994892>,  <37.010899, 30.605322, 43.040947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202625, 30.468500, 42.994892>,  <37.522167, 30.240465, 42.918133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202625, 30.468500, 42.994892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112846, 0.455397, -0.883108,
		-0.590838, -0.683824, -0.428130,
		-0.798859, 0.570087, 0.191899,
		36.962967, 30.639526, 43.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190090, 30.331491, 42.223854>,  <37.522167, 30.240465, 42.918133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190090, 30.331491, 42.223854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015472, 30.597269, 42.466488>,  <36.910702, 30.756735, 42.612068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015472, 30.597269, 42.466488>,  <37.190090, 30.331491, 42.223854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015472, 30.597269, 42.466488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149822, 0.611118, -0.777231,
		-0.887120, -0.430175, -0.167231,
		-0.436544, 0.664443, 0.606585,
		36.884510, 30.796602, 42.648464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624794, 30.455988, 41.878429>,  <37.190090, 30.331491, 42.223854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624794, 30.455988, 41.878429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709042, 30.763220, 42.120319>,  <36.759590, 30.947559, 42.265453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709042, 30.763220, 42.120319>,  <36.624794, 30.455988, 41.878429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709042, 30.763220, 42.120319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090225, 0.631238, -0.770323,
		-0.973397, 0.107679, 0.202248,
		0.210614, 0.768078, 0.604729,
		36.772224, 30.993643, 42.301739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052628, 30.921915, 41.780460>,  <36.624794, 30.455988, 41.878429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052628, 30.921915, 41.780460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335358, 31.165354, 41.924683>,  <36.504997, 31.311417, 42.011215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335358, 31.165354, 41.924683>,  <36.052628, 30.921915, 41.780460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335358, 31.165354, 41.924683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160362, 0.634292, -0.756279,
		-0.688968, 0.476741, 0.545932,
		0.706829, 0.608598, 0.360555,
		36.547405, 31.347933, 42.032848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724945, 31.518967, 41.765671>,  <36.052628, 30.921915, 41.780460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724945, 31.518967, 41.765671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113300, 31.614407, 41.774055>,  <36.346313, 31.671671, 41.779087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113300, 31.614407, 41.774055>,  <35.724945, 31.518967, 41.765671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113300, 31.614407, 41.774055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133399, 0.611340, -0.780044,
		-0.198932, 0.754542, 0.625374,
		0.970892, 0.238600, 0.020960,
		36.404568, 31.685987, 41.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669315, 32.194763, 41.702583>,  <35.724945, 31.518967, 41.765671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669315, 32.194763, 41.702583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050339, 32.103313, 41.622223>,  <36.278954, 32.048443, 41.574009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050339, 32.103313, 41.622223>,  <35.669315, 32.194763, 41.702583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050339, 32.103313, 41.622223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033728, 0.576725, -0.816242,
		0.302478, 0.784295, 0.541654,
		0.952559, -0.228627, -0.200899,
		36.336105, 32.034725, 41.561954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138325, 32.871002, 41.718079>,  <35.669315, 32.194763, 41.702583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138325, 32.871002, 41.718079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303940, 32.589661, 41.486958>,  <36.403309, 32.420856, 41.348286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303940, 32.589661, 41.486958>,  <36.138325, 32.871002, 41.718079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303940, 32.589661, 41.486958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023106, 0.642688, -0.765780,
		0.909967, 0.303711, 0.282348,
		0.414037, -0.703358, -0.577807,
		36.428150, 32.378654, 41.313614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763077, 33.168186, 41.452869>,  <36.138325, 32.871002, 41.718079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763077, 33.168186, 41.452869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689957, 32.855927, 41.213814>,  <36.646084, 32.668571, 41.070381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689957, 32.855927, 41.213814>,  <36.763077, 33.168186, 41.452869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689957, 32.855927, 41.213814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175363, 0.572240, -0.801117,
		0.967384, -0.251248, 0.032291,
		-0.182801, -0.780650, -0.597636,
		36.635117, 32.621731, 41.034523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296700, 33.185970, 41.049725>,  <36.763077, 33.168186, 41.452869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296700, 33.185970, 41.049725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034550, 32.962551, 40.846352>,  <36.877258, 32.828499, 40.724327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034550, 32.962551, 40.846352>,  <37.296700, 33.185970, 41.049725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034550, 32.962551, 40.846352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321839, 0.402470, -0.856993,
		0.683302, -0.725287, -0.084007,
		-0.655376, -0.558549, -0.508434,
		36.837936, 32.794987, 40.693821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614361, 33.010300, 40.530487>,  <37.296700, 33.185970, 41.049725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614361, 33.010300, 40.530487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236671, 32.936092, 40.421658>,  <37.010059, 32.891567, 40.356361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236671, 32.936092, 40.421658>,  <37.614361, 33.010300, 40.530487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236671, 32.936092, 40.421658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133653, 0.539202, -0.831504,
		0.300962, -0.821489, -0.484332,
		-0.944224, -0.185519, -0.272074,
		36.953403, 32.880436, 40.340034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.614468, 28.483330, 47.043774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287029, 28.621243, 46.860020>,  <35.090569, 28.703991, 46.749767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287029, 28.621243, 46.860020>,  <35.614468, 28.483330, 47.043774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287029, 28.621243, 46.860020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573632, 0.450021, -0.684417,
		-0.029244, -0.823775, -0.566162,
		-0.818591, 0.344784, -0.459383,
		35.041451, 28.724678, 46.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760979, 28.204611, 46.426239>,  <35.614468, 28.483330, 47.043774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760979, 28.204611, 46.426239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499863, 28.501085, 46.363621>,  <35.343193, 28.678970, 46.326050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499863, 28.501085, 46.363621>,  <35.760979, 28.204611, 46.426239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499863, 28.501085, 46.363621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548441, 0.319847, -0.772600,
		-0.522569, -0.590204, -0.615290,
		-0.652790, 0.741187, -0.156550,
		35.304028, 28.723442, 46.316654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572659, 28.211830, 45.714760>,  <35.760979, 28.204611, 46.426239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572659, 28.211830, 45.714760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476021, 28.584463, 45.823418>,  <35.418037, 28.808043, 45.888615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476021, 28.584463, 45.823418>,  <35.572659, 28.211830, 45.714760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476021, 28.584463, 45.823418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422962, 0.353041, -0.834545,
		-0.873348, -0.086722, -0.479314,
		-0.241591, 0.931580, 0.271647,
		35.403545, 28.863937, 45.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403015, 28.529106, 45.098293>,  <35.572659, 28.211830, 45.714760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403015, 28.529106, 45.098293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456177, 28.848938, 45.332561>,  <35.488075, 29.040836, 45.473122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456177, 28.848938, 45.332561>,  <35.403015, 28.529106, 45.098293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456177, 28.848938, 45.332561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397117, 0.498450, -0.770614,
		-0.908094, 0.334998, -0.251279,
		0.132904, 0.799577, 0.585673,
		35.496048, 29.088812, 45.508263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279125, 29.026396, 44.623787>,  <35.403015, 28.529106, 45.098293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279125, 29.026396, 44.623787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435345, 29.229158, 44.931168>,  <35.529076, 29.350815, 45.115597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.435345, 29.229158, 44.931168>,  <35.279125, 29.026396, 44.623787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435345, 29.229158, 44.931168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349251, 0.690755, -0.633152,
		-0.851760, 0.515660, 0.092738,
		0.390550, 0.506905, 0.768452,
		35.552509, 29.381229, 45.161705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069672, 29.761166, 44.543129>,  <35.279125, 29.026396, 44.623787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069672, 29.761166, 44.543129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.418930, 29.708097, 44.730747>,  <35.628487, 29.676256, 44.843319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.418930, 29.708097, 44.730747>,  <35.069672, 29.761166, 44.543129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418930, 29.708097, 44.730747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437448, 0.637793, -0.633924,
		-0.215053, 0.758696, 0.614925,
		0.873150, -0.132670, 0.469049,
		35.680874, 29.668297, 44.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347706, 30.518318, 44.797207>,  <35.069672, 29.761166, 44.543129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347706, 30.518318, 44.797207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632504, 30.238272, 44.775639>,  <35.803383, 30.070244, 44.762699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.632504, 30.238272, 44.775639>,  <35.347706, 30.518318, 44.797207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632504, 30.238272, 44.775639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620684, 0.663400, -0.417913,
		0.328359, 0.264082, 0.906885,
		0.711991, -0.700115, -0.053922,
		35.846100, 30.028236, 44.759460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889668, 30.903730, 44.663185>,  <35.347706, 30.518318, 44.797207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889668, 30.903730, 44.663185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063950, 30.550112, 44.595509>,  <36.168518, 30.337940, 44.554905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063950, 30.550112, 44.595509>,  <35.889668, 30.903730, 44.663185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063950, 30.550112, 44.595509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612475, 0.428932, -0.663997,
		0.659575, 0.185680, 0.728343,
		0.435701, -0.884048, -0.169188,
		36.194660, 30.284897, 44.544754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689468, 31.025568, 44.711681>,  <35.889668, 30.903730, 44.663185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689468, 31.025568, 44.711681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594936, 30.713951, 44.479393>,  <36.538216, 30.526981, 44.340019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594936, 30.713951, 44.479393>,  <36.689468, 31.025568, 44.711681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594936, 30.713951, 44.479393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617064, 0.341335, -0.709029,
		0.750585, -0.525910, 0.400051,
		-0.236334, -0.779044, -0.580721,
		36.524036, 30.480238, 44.305176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418083, 31.037403, 44.997082>,  <36.689468, 31.025568, 44.711681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418083, 31.037403, 44.997082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613167, 31.309988, 45.215347>,  <37.730217, 31.473539, 45.346306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613167, 31.309988, 45.215347>,  <37.418083, 31.037403, 44.997082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613167, 31.309988, 45.215347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231489, -0.501717, 0.833482,
		0.841755, -0.532813, -0.086941,
		0.487710, 0.681462, 0.545663,
		37.759480, 31.514427, 45.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746895, 30.622665, 45.491642>,  <37.418083, 31.037403, 44.997082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746895, 30.622665, 45.491642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761707, 30.994259, 45.638947>,  <37.770596, 31.217215, 45.727329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761707, 30.994259, 45.638947>,  <37.746895, 30.622665, 45.491642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761707, 30.994259, 45.638947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359545, -0.331449, 0.872278,
		0.932393, -0.164704, 0.321740,
		0.037027, 0.928985, 0.368259,
		37.772816, 31.272955, 45.749424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071476, 30.537739, 46.145947>,  <37.746895, 30.622665, 45.491642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071476, 30.537739, 46.145947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893482, 30.895662, 46.160374>,  <37.786686, 31.110416, 46.169029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893482, 30.895662, 46.160374>,  <38.071476, 30.537739, 46.145947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893482, 30.895662, 46.160374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368030, -0.219439, 0.903549,
		0.816419, 0.388794, 0.426965,
		-0.444987, 0.894810, 0.036067,
		37.759987, 31.164106, 46.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217896, 30.951488, 46.892437>,  <38.071476, 30.537739, 46.145947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217896, 30.951488, 46.892437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872494, 31.092302, 46.747974>,  <37.665253, 31.176790, 46.661297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.872494, 31.092302, 46.747974>,  <38.217896, 30.951488, 46.892437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872494, 31.092302, 46.747974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398121, -0.036166, 0.916620,
		0.309618, 0.935289, 0.171381,
		-0.863502, 0.352033, -0.361160,
		37.613441, 31.197912, 46.639626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937992, 31.319077, 47.469048>,  <38.217896, 30.951488, 46.892437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937992, 31.319077, 47.469048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620968, 31.288107, 47.227104>,  <37.430752, 31.269526, 47.081940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620968, 31.288107, 47.227104>,  <37.937992, 31.319077, 47.469048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620968, 31.288107, 47.227104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583833, -0.189970, 0.789335,
		-0.176019, 0.978732, 0.105359,
		-0.792563, -0.077426, -0.604855,
		37.383198, 31.264879, 47.045647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345112, 31.629742, 47.910103>,  <37.937992, 31.319077, 47.469048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345112, 31.629742, 47.910103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159332, 31.416328, 47.627365>,  <37.047863, 31.288280, 47.457722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159332, 31.416328, 47.627365>,  <37.345112, 31.629742, 47.910103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159332, 31.416328, 47.627365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655568, -0.329486, 0.679463,
		-0.595411, 0.778960, -0.196738,
		-0.464452, -0.533535, -0.706841,
		37.019997, 31.256268, 47.415314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572906, 31.683239, 47.910770>,  <37.345112, 31.629742, 47.910103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572906, 31.683239, 47.910770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662121, 31.342012, 47.722076>,  <36.715649, 31.137276, 47.608860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662121, 31.342012, 47.722076>,  <36.572906, 31.683239, 47.910770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662121, 31.342012, 47.722076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610077, -0.499590, 0.614993,
		-0.760303, 0.150630, -0.631862,
		0.223036, -0.853065, -0.471735,
		36.729031, 31.086092, 47.580555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020573, 31.327135, 48.128330>,  <36.572906, 31.683239, 47.910770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020573, 31.327135, 48.128330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251637, 31.034447, 47.983616>,  <36.390274, 30.858833, 47.896790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251637, 31.034447, 47.983616>,  <36.020573, 31.327135, 48.128330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251637, 31.034447, 47.983616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356619, -0.624908, 0.694487,
		-0.734255, -0.272160, -0.621932,
		0.577662, -0.731723, -0.361784,
		36.424934, 30.814930, 47.875080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588257, 30.764820, 48.040230>,  <36.020573, 31.327135, 48.128330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588257, 30.764820, 48.040230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961205, 30.631458, 48.096130>,  <36.184975, 30.551441, 48.129669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961205, 30.631458, 48.096130>,  <35.588257, 30.764820, 48.040230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961205, 30.631458, 48.096130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282184, -0.429567, 0.857813,
		-0.225965, -0.839234, -0.494596,
		0.932369, -0.333403, 0.139752,
		36.240913, 30.531437, 48.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576942, 30.003218, 48.178066>,  <35.588257, 30.764820, 48.040230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576942, 30.003218, 48.178066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914986, 30.154402, 48.329292>,  <36.117813, 30.245111, 48.420029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914986, 30.154402, 48.329292>,  <35.576942, 30.003218, 48.178066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914986, 30.154402, 48.329292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224799, -0.390391, 0.892782,
		0.485031, -0.839488, -0.244958,
		0.845110, 0.377961, 0.378067,
		36.168518, 30.267790, 48.442711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799114, 29.434038, 48.728405>,  <35.576942, 30.003218, 48.178066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799114, 29.434038, 48.728405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012020, 29.761250, 48.815605>,  <36.139763, 29.957577, 48.867924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012020, 29.761250, 48.815605>,  <35.799114, 29.434038, 48.728405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012020, 29.761250, 48.815605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101289, -0.194122, 0.975734,
		0.840496, -0.541431, -0.020467,
		0.532265, 0.818028, 0.218000,
		36.171700, 30.006659, 48.881004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379784, 29.266434, 49.243137>,  <35.799114, 29.434038, 48.728405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379784, 29.266434, 49.243137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269218, 29.648439, 49.286121>,  <36.202881, 29.877642, 49.311913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269218, 29.648439, 49.286121>,  <36.379784, 29.266434, 49.243137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269218, 29.648439, 49.286121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176654, -0.160398, 0.971116,
		0.944664, 0.249447, 0.213042,
		-0.276413, 0.955012, 0.107456,
		36.186295, 29.934942, 49.318359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693996, 29.510120, 49.903210>,  <36.379784, 29.266434, 49.243137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693996, 29.510120, 49.903210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413128, 29.783684, 49.823997>,  <36.244606, 29.947823, 49.776470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413128, 29.783684, 49.823997>,  <36.693996, 29.510120, 49.903210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413128, 29.783684, 49.823997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117477, 0.163039, 0.979601,
		0.702246, 0.711115, -0.034138,
		-0.702175, 0.683911, -0.198033,
		36.202477, 29.988857, 49.764587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803062, 30.128992, 50.363834>,  <36.693996, 29.510120, 49.903210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803062, 30.128992, 50.363834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430748, 30.089245, 50.223114>,  <36.207359, 30.065395, 50.138680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430748, 30.089245, 50.223114>,  <36.803062, 30.128992, 50.363834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430748, 30.089245, 50.223114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362965, 0.136546, 0.921744,
		-0.043556, 0.985637, -0.163163,
		-0.930784, -0.099370, -0.351805,
		36.151512, 30.059433, 50.117573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.838520, 31.583317, 45.417645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.210365, 31.537786, 45.557854>,  <29.433472, 31.510468, 45.641979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.210365, 31.537786, 45.557854>,  <28.838520, 31.583317, 45.417645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210365, 31.537786, 45.557854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337850, 0.643188, -0.687144,
		-0.147236, 0.757201, 0.636372,
		0.929613, -0.113826, 0.350520,
		29.489248, 31.503639, 45.663010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161896, 32.152206, 45.455593>,  <28.838520, 31.583317, 45.417645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161896, 32.152206, 45.455593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492357, 31.926907, 45.461449>,  <29.690634, 31.791725, 45.464962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492357, 31.926907, 45.461449>,  <29.161896, 32.152206, 45.455593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492357, 31.926907, 45.461449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381626, 0.540262, -0.749986,
		0.414524, 0.625190, 0.661292,
		0.826154, -0.563254, 0.014637,
		29.740204, 31.757931, 45.465839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699013, 32.559826, 45.389900>,  <29.161896, 32.152206, 45.455593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699013, 32.559826, 45.389900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862345, 32.211002, 45.281986>,  <29.960344, 32.001709, 45.217236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862345, 32.211002, 45.281986>,  <29.699013, 32.559826, 45.389900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862345, 32.211002, 45.281986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478623, 0.456200, -0.750201,
		0.777295, 0.177201, 0.603665,
		0.408329, -0.872056, -0.269790,
		29.984844, 31.949385, 45.201050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429922, 32.606716, 45.209362>,  <29.699013, 32.559826, 45.389900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429922, 32.606716, 45.209362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332348, 32.275856, 45.006851>,  <30.273804, 32.077339, 44.885345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332348, 32.275856, 45.006851>,  <30.429922, 32.606716, 45.209362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332348, 32.275856, 45.006851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586052, 0.290209, -0.756520,
		0.772682, -0.481247, 0.413961,
		-0.243937, -0.827152, -0.506275,
		30.259167, 32.027710, 44.854969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018045, 32.237404, 45.098797>,  <30.429922, 32.606716, 45.209362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018045, 32.237404, 45.098797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763935, 32.101326, 44.821468>,  <30.611469, 32.019680, 44.655071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763935, 32.101326, 44.821468>,  <31.018045, 32.237404, 45.098797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763935, 32.101326, 44.821468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706976, 0.105135, -0.699380,
		0.310819, -0.934458, 0.173721,
		-0.635277, -0.340197, -0.693318,
		30.573353, 31.999268, 44.613472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469427, 32.157387, 44.583675>,  <31.018045, 32.237404, 45.098797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469427, 32.157387, 44.583675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129560, 32.091259, 44.383381>,  <30.925640, 32.051582, 44.263203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129560, 32.091259, 44.383381>,  <31.469427, 32.157387, 44.583675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129560, 32.091259, 44.383381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482214, 0.140682, -0.864684,
		0.213394, -0.976155, -0.039813,
		-0.849666, -0.165320, -0.500737,
		30.874660, 32.041664, 44.233162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653288, 31.713522, 44.055908>,  <31.469427, 32.157387, 44.583675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653288, 31.713522, 44.055908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336838, 31.920679, 43.925735>,  <31.146969, 32.044975, 43.847630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336838, 31.920679, 43.925735>,  <31.653288, 31.713522, 44.055908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336838, 31.920679, 43.925735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541451, 0.345472, -0.766473,
		-0.284524, -0.782582, -0.553725,
		-0.791124, 0.517895, -0.325435,
		31.099501, 32.076046, 43.828106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515291, 31.565323, 43.307453>,  <31.653288, 31.713522, 44.055908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515291, 31.565323, 43.307453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303486, 31.896132, 43.382980>,  <31.176403, 32.094616, 43.428295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303486, 31.896132, 43.382980>,  <31.515291, 31.565323, 43.307453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303486, 31.896132, 43.382980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440293, 0.458193, -0.772141,
		-0.725091, -0.325725, -0.606751,
		-0.529514, 0.827020, 0.188817,
		31.144632, 32.144238, 43.439625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475105, 31.774864, 42.706512>,  <31.515291, 31.565323, 43.307453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475105, 31.774864, 42.706512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355392, 32.104729, 42.898499>,  <31.283566, 32.302647, 43.013691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355392, 32.104729, 42.898499>,  <31.475105, 31.774864, 42.706512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355392, 32.104729, 42.898499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309815, 0.559752, -0.768565,
		-0.902466, -0.081318, -0.423016,
		-0.299282, 0.824660, 0.479964,
		31.265608, 32.352127, 43.042488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987173, 32.209427, 42.233944>,  <31.475105, 31.774864, 42.706512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987173, 32.209427, 42.233944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156105, 32.420383, 42.528831>,  <31.257463, 32.546959, 42.705765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156105, 32.420383, 42.528831>,  <30.987173, 32.209427, 42.233944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156105, 32.420383, 42.528831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412928, 0.612084, -0.674421,
		-0.806926, 0.589247, 0.040726,
		0.422328, 0.527391, 0.737223,
		31.282803, 32.578602, 42.750000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776649, 32.878132, 42.073421>,  <30.987173, 32.209427, 42.233944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776649, 32.878132, 42.073421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105892, 32.899784, 42.299541>,  <31.303438, 32.912777, 42.435215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.105892, 32.899784, 42.299541>,  <30.776649, 32.878132, 42.073421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105892, 32.899784, 42.299541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355899, 0.726533, -0.587780,
		-0.442530, 0.684995, 0.578747,
		0.823106, 0.054134, 0.565302,
		31.352823, 32.916023, 42.469131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938419, 33.585518, 42.234310>,  <30.776649, 32.878132, 42.073421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938419, 33.585518, 42.234310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277727, 33.386051, 42.305599>,  <31.481312, 33.266369, 42.348373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277727, 33.386051, 42.305599>,  <30.938419, 33.585518, 42.234310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277727, 33.386051, 42.305599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514908, 0.698058, -0.497580,
		0.123715, 0.513853, 0.848911,
		0.848271, -0.498669, 0.178227,
		31.532209, 33.236450, 42.359066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440496, 34.121853, 42.346420>,  <30.938419, 33.585518, 42.234310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440496, 34.121853, 42.346420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626627, 33.783672, 42.241585>,  <31.738306, 33.580765, 42.178684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626627, 33.783672, 42.241585>,  <31.440496, 34.121853, 42.346420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626627, 33.783672, 42.241585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555648, 0.509495, -0.657016,
		0.689003, 0.160100, 0.706854,
		0.465327, -0.845448, -0.262084,
		31.766226, 33.530037, 42.162960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166214, 34.347305, 42.357433>,  <31.440496, 34.121853, 42.346420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166214, 34.347305, 42.357433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125256, 34.022087, 42.128185>,  <32.100681, 33.826954, 41.990635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125256, 34.022087, 42.128185>,  <32.166214, 34.347305, 42.357433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125256, 34.022087, 42.128185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586670, 0.415924, -0.694857,
		0.803327, -0.407382, 0.434402,
		-0.102394, -0.813048, -0.573121,
		32.094536, 33.778172, 41.956249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734684, 34.217407, 42.868988>,  <32.166214, 34.347305, 42.357433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734684, 34.217407, 42.868988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042336, 34.433643, 43.005337>,  <33.226929, 34.563385, 43.087147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042336, 34.433643, 43.005337>,  <32.734684, 34.217407, 42.868988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042336, 34.433643, 43.005337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398573, -0.011184, 0.917068,
		0.499574, -0.841209, 0.206865,
		0.769132, 0.540594, 0.340870,
		33.273075, 34.595821, 43.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955101, 33.901428, 43.427162>,  <32.734684, 34.217407, 42.868988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955101, 33.901428, 43.427162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092045, 34.274273, 43.474434>,  <33.174210, 34.497978, 43.502796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092045, 34.274273, 43.474434>,  <32.955101, 33.901428, 43.427162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092045, 34.274273, 43.474434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449326, 0.051955, 0.891856,
		0.825166, -0.358433, 0.436607,
		0.342355, 0.932108, 0.118181,
		33.194752, 34.553905, 43.509888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425732, 33.879677, 44.065231>,  <32.955101, 33.901428, 43.427162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425732, 33.879677, 44.065231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243973, 34.232914, 44.018471>,  <33.134918, 34.444859, 43.990414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243973, 34.232914, 44.018471>,  <33.425732, 33.879677, 44.065231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243973, 34.232914, 44.018471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354593, -0.058928, 0.933162,
		0.817182, 0.465478, 0.339917,
		-0.454397, 0.883095, -0.116900,
		33.107655, 34.497841, 43.983402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515232, 34.204498, 44.652115>,  <33.425732, 33.879677, 44.065231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515232, 34.204498, 44.652115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236588, 34.447861, 44.500019>,  <33.069401, 34.593876, 44.408764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236588, 34.447861, 44.500019>,  <33.515232, 34.204498, 44.652115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236588, 34.447861, 44.500019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499518, -0.030869, 0.865753,
		0.514988, 0.793029, 0.325412,
		-0.696612, 0.608401, -0.380235,
		33.027603, 34.630383, 44.385948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397610, 34.756752, 45.171188>,  <33.515232, 34.204498, 44.652115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397610, 34.756752, 45.171188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069466, 34.733082, 44.943680>,  <32.872578, 34.718880, 44.807175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069466, 34.733082, 44.943680>,  <33.397610, 34.756752, 45.171188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069466, 34.733082, 44.943680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556581, -0.145617, 0.817932,
		-0.131227, 0.987570, 0.086521,
		-0.820364, -0.059178, -0.568771,
		32.823357, 34.715328, 44.773048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898937, 35.060352, 45.534027>,  <33.397610, 34.756752, 45.171188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898937, 35.060352, 45.534027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648876, 34.863438, 45.291759>,  <32.498840, 34.745289, 45.146400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648876, 34.863438, 45.291759>,  <32.898937, 35.060352, 45.534027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648876, 34.863438, 45.291759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612731, -0.171134, 0.771540,
		-0.483470, 0.853444, -0.194655,
		-0.625154, -0.492287, -0.605670,
		32.461330, 34.715752, 45.110058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196266, 35.228088, 45.855579>,  <32.898937, 35.060352, 45.534027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196266, 35.228088, 45.855579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082993, 34.941433, 45.600636>,  <32.015030, 34.769440, 45.447670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082993, 34.941433, 45.600636>,  <32.196266, 35.228088, 45.855579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082993, 34.941433, 45.600636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583274, -0.398850, 0.707609,
		-0.761315, 0.572139, -0.305053,
		-0.283180, -0.716642, -0.637364,
		31.998039, 34.726440, 45.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434521, 35.289749, 45.763149>,  <32.196266, 35.228088, 45.855579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434521, 35.289749, 45.763149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565672, 34.915672, 45.709629>,  <31.644363, 34.691227, 45.677517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565672, 34.915672, 45.709629>,  <31.434521, 35.289749, 45.763149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565672, 34.915672, 45.709629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538616, -0.301410, 0.786794,
		-0.776137, -0.185904, -0.602538,
		0.327879, -0.935196, -0.133805,
		31.664036, 34.635113, 45.669487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861443, 34.873112, 45.862015>,  <31.434521, 35.289749, 45.763149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861443, 34.873112, 45.862015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.145479, 34.593174, 45.892967>,  <31.315901, 34.425213, 45.911537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.145479, 34.593174, 45.892967>,  <30.861443, 34.873112, 45.862015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145479, 34.593174, 45.892967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496781, -0.420089, 0.759430,
		-0.498980, -0.577703, -0.645971,
		0.710090, -0.699846, 0.077376,
		31.358507, 34.383221, 45.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578323, 34.125610, 45.833679>,  <30.861443, 34.873112, 45.862015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578323, 34.125610, 45.833679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933136, 34.119244, 46.018253>,  <31.146023, 34.115421, 46.128998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.933136, 34.119244, 46.018253>,  <30.578323, 34.125610, 45.833679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933136, 34.119244, 46.018253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411120, -0.482086, 0.773676,
		0.210134, -0.875979, -0.434170,
		0.887032, -0.015920, 0.461435,
		31.199245, 34.114468, 46.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702856, 33.464157, 46.018082>,  <30.578323, 34.125610, 45.833679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702856, 33.464157, 46.018082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917942, 33.702724, 46.256458>,  <31.046993, 33.845867, 46.399483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917942, 33.702724, 46.256458>,  <30.702856, 33.464157, 46.018082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917942, 33.702724, 46.256458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298517, -0.526359, 0.796137,
		0.788512, -0.605992, -0.104988,
		0.537714, 0.596423, 0.595939,
		31.079256, 33.881653, 46.435242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189672, 33.033001, 46.534378>,  <30.702856, 33.464157, 46.018082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189672, 33.033001, 46.534378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144594, 33.393478, 46.701782>,  <31.117548, 33.609764, 46.802227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144594, 33.393478, 46.701782>,  <31.189672, 33.033001, 46.534378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144594, 33.393478, 46.701782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250221, -0.433363, 0.865786,
		0.961607, -0.007151, 0.274336,
		-0.112696, 0.901191, 0.418514,
		31.110785, 33.663837, 46.827335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416805, 32.915867, 47.226097>,  <31.189672, 33.033001, 46.534378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416805, 32.915867, 47.226097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207500, 33.256687, 47.231792>,  <31.081917, 33.461182, 47.235210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.207500, 33.256687, 47.231792>,  <31.416805, 32.915867, 47.226097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207500, 33.256687, 47.231792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334592, -0.220791, 0.916133,
		0.783738, 0.474612, 0.400622,
		-0.523261, 0.852053, 0.014241,
		31.050522, 33.512302, 47.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615770, 33.289948, 47.770588>,  <31.416805, 32.915867, 47.226097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615770, 33.289948, 47.770588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241480, 33.405148, 47.689125>,  <31.016907, 33.474266, 47.640247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241480, 33.405148, 47.689125>,  <31.615770, 33.289948, 47.770588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241480, 33.405148, 47.689125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298899, -0.340823, 0.891347,
		0.187296, 0.894928, 0.405000,
		-0.935724, 0.288000, -0.203658,
		30.960762, 33.491547, 47.628029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184952, 33.805202, 48.148636>,  <31.615770, 33.289948, 47.770588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184952, 33.805202, 48.148636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267452, 34.033096, 48.466846>,  <32.316952, 34.169834, 48.657772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267452, 34.033096, 48.466846>,  <32.184952, 33.805202, 48.148636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267452, 34.033096, 48.466846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452626, 0.665249, -0.593779,
		-0.867520, 0.482543, -0.120670,
		0.206248, 0.569733, 0.795528,
		32.329327, 34.204018, 48.705505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949070, 34.524353, 47.910625>,  <32.184952, 33.805202, 48.148636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949070, 34.524353, 47.910625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225735, 34.509190, 48.199116>,  <32.391735, 34.500092, 48.372211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225735, 34.509190, 48.199116>,  <31.949070, 34.524353, 47.910625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225735, 34.509190, 48.199116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580463, 0.623367, -0.523906,
		-0.429729, 0.781010, 0.453162,
		0.691662, -0.037906, 0.721226,
		32.433231, 34.497818, 48.415485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085846, 35.268829, 48.103416>,  <31.949070, 34.524353, 47.910625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085846, 35.268829, 48.103416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399220, 35.036018, 48.190567>,  <32.587242, 34.896332, 48.242859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399220, 35.036018, 48.190567>,  <32.085846, 35.268829, 48.103416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399220, 35.036018, 48.190567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552072, 0.490782, -0.674055,
		0.285388, 0.648364, 0.705818,
		0.783435, -0.582029, 0.217880,
		32.634251, 34.861408, 48.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684025, 35.751720, 48.153099>,  <32.085846, 35.268829, 48.103416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684025, 35.751720, 48.153099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861397, 35.395893, 48.109222>,  <32.967819, 35.182396, 48.082897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861397, 35.395893, 48.109222>,  <32.684025, 35.751720, 48.153099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861397, 35.395893, 48.109222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734235, 0.430704, -0.524779,
		0.514072, 0.152165, 0.844142,
		0.443428, -0.889573, -0.109688,
		32.994427, 35.129021, 48.076317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412704, 35.758049, 48.388500>,  <32.684025, 35.751720, 48.153099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412704, 35.758049, 48.388500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373913, 35.451214, 48.134830>,  <33.350639, 35.267113, 47.982628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373913, 35.451214, 48.134830>,  <33.412704, 35.758049, 48.388500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373913, 35.451214, 48.134830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746260, 0.365563, -0.556292,
		0.658553, -0.527206, 0.536993,
		-0.096976, -0.767084, -0.634175,
		33.344818, 35.221088, 47.944576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961895, 35.905193, 47.976990>,  <33.412704, 35.758049, 48.388500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961895, 35.905193, 47.976990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804466, 35.590496, 47.786770>,  <33.710011, 35.401680, 47.672638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804466, 35.590496, 47.786770>,  <33.961895, 35.905193, 47.976990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804466, 35.590496, 47.786770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700245, 0.078600, -0.709562,
		0.595618, -0.612261, 0.519976,
		-0.393568, -0.786739, -0.475548,
		33.686398, 35.354473, 47.644104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456470, 35.416405, 47.873760>,  <33.961895, 35.905193, 47.976990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456470, 35.416405, 47.873760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184719, 35.389664, 47.581467>,  <34.021667, 35.373619, 47.406090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184719, 35.389664, 47.581467>,  <34.456470, 35.416405, 47.873760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184719, 35.389664, 47.581467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705127, 0.216112, -0.675346,
		0.203057, -0.974078, -0.099695,
		-0.679385, -0.066836, -0.730732,
		33.980904, 35.369610, 47.362247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868408, 35.229004, 47.272884>,  <34.456470, 35.416405, 47.873760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868408, 35.229004, 47.272884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534740, 35.395836, 47.128551>,  <34.334538, 35.495934, 47.041950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534740, 35.395836, 47.128551>,  <34.868408, 35.229004, 47.272884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534740, 35.395836, 47.128551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467012, 0.186191, -0.864426,
		-0.293351, -0.889594, -0.350097,
		-0.834173, 0.417080, -0.360832,
		34.284489, 35.520958, 47.020302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688240, 34.902168, 46.692013>,  <34.868408, 35.229004, 47.272884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688240, 34.902168, 46.692013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 35.266994, 46.646206>,  <34.436249, 35.485889, 46.618721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 35.266994, 46.646206>,  <34.688240, 34.902168, 46.692013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530746, 35.266994, 46.646206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509138, 0.112657, -0.853280,
		-0.765343, -0.394272, -0.508723,
		-0.393735, 0.912063, -0.114518,
		34.412624, 35.540615, 46.611851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568279, 34.966385, 46.027248>,  <34.688240, 34.902168, 46.692013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568279, 34.966385, 46.027248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 35.355110, 46.117336>,  <34.612839, 35.588345, 46.171391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596130, 35.355110, 46.117336>,  <34.568279, 34.966385, 46.027248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596130, 35.355110, 46.117336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612218, 0.136627, -0.778795,
		-0.787618, 0.192109, -0.585451,
		0.069625, 0.971816, 0.225223,
		34.617020, 35.646656, 46.184902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466705, 35.359833, 45.389969>,  <34.568279, 34.966385, 46.027248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466705, 35.359833, 45.389969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641129, 35.604965, 45.653572>,  <34.745785, 35.752045, 45.811733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641129, 35.604965, 45.653572>,  <34.466705, 35.359833, 45.389969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641129, 35.604965, 45.653572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594804, 0.353261, -0.722091,
		-0.675322, 0.706853, -0.210474,
		0.436060, 0.612834, 0.659004,
		34.771946, 35.788815, 45.851273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411617, 35.973709, 45.061253>,  <34.466705, 35.359833, 45.389969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411617, 35.973709, 45.061253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697788, 35.997105, 45.339748>,  <34.869492, 36.011143, 45.506844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697788, 35.997105, 45.339748>,  <34.411617, 35.973709, 45.061253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697788, 35.997105, 45.339748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584066, 0.496815, -0.641905,
		-0.383447, 0.865883, 0.321271,
		0.715426, 0.058493, 0.696235,
		34.912415, 36.014652, 45.548618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672180, 36.600880, 45.096886>,  <34.411617, 35.973709, 45.061253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672180, 36.600880, 45.096886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966976, 36.381836, 45.255360>,  <35.143856, 36.250408, 45.350445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966976, 36.381836, 45.255360>,  <34.672180, 36.600880, 45.096886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966976, 36.381836, 45.255360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621265, 0.317975, -0.716185,
		0.266213, 0.773961, 0.574557,
		0.736994, -0.547610, 0.396186,
		35.188076, 36.217552, 45.374214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202572, 36.998547, 45.130001>,  <34.672180, 36.600880, 45.096886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202572, 36.998547, 45.130001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356789, 36.629471, 45.130867>,  <35.449318, 36.408024, 45.131386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.356789, 36.629471, 45.130867>,  <35.202572, 36.998547, 45.130001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356789, 36.629471, 45.130867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671642, 0.279029, -0.686324,
		0.632658, 0.266062, 0.727293,
		0.385540, -0.922688, 0.002168,
		35.472450, 36.352665, 45.131519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.457651, 41.045940, 39.237694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280258, 41.177956, 38.904373>,  <31.173822, 41.257164, 38.704380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280258, 41.177956, 38.904373>,  <31.457651, 41.045940, 39.237694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280258, 41.177956, 38.904373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687041, -0.722247, 0.079589,
		-0.575585, 0.607811, 0.547054,
		-0.443483, 0.330038, -0.833306,
		31.147213, 41.276966, 38.654381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692007, 41.113400, 39.409695>,  <31.457651, 41.045940, 39.237694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692007, 41.113400, 39.409695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737411, 41.065132, 39.015221>,  <30.764654, 41.036171, 38.778538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737411, 41.065132, 39.015221>,  <30.692007, 41.113400, 39.409695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737411, 41.065132, 39.015221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747609, -0.664121, -0.004793,
		-0.654366, 0.737823, -0.165594,
		0.113511, -0.120664, -0.986182,
		30.771465, 41.028934, 38.719364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016247, 40.981312, 39.248264>,  <30.692007, 41.113400, 39.409695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016247, 40.981312, 39.248264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240057, 40.840740, 38.948017>,  <30.374342, 40.756397, 38.767868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240057, 40.840740, 38.948017>,  <30.016247, 40.981312, 39.248264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240057, 40.840740, 38.948017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644319, -0.754100, -0.127224,
		-0.521332, 0.554823, -0.648370,
		0.559523, -0.351431, -0.750620,
		30.407913, 40.735310, 38.722832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578949, 40.947598, 38.629604>,  <30.016247, 40.981312, 39.248264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578949, 40.947598, 38.629604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864292, 40.670376, 38.588051>,  <30.035498, 40.504044, 38.563118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864292, 40.670376, 38.588051>,  <29.578949, 40.947598, 38.629604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864292, 40.670376, 38.588051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677037, -0.643281, -0.357506,
		0.180945, 0.325364, -0.928115,
		0.713358, -0.693057, -0.103886,
		30.078300, 40.462460, 38.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354799, 40.563000, 38.001884>,  <29.578949, 40.947598, 38.629604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354799, 40.563000, 38.001884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610397, 40.325340, 38.197300>,  <29.763756, 40.182743, 38.314548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610397, 40.325340, 38.197300>,  <29.354799, 40.563000, 38.001884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610397, 40.325340, 38.197300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502886, -0.803270, -0.319159,
		0.582059, -0.041741, -0.812074,
		0.638993, -0.594150, 0.488542,
		29.802095, 40.147095, 38.343861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439493, 40.023697, 37.549572>,  <29.354799, 40.563000, 38.001884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439493, 40.023697, 37.549572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560896, 39.870632, 37.898617>,  <29.633738, 39.778793, 38.108044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560896, 39.870632, 37.898617>,  <29.439493, 40.023697, 37.549572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560896, 39.870632, 37.898617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304137, -0.906812, -0.291878,
		0.902986, -0.176807, -0.391606,
		0.303507, -0.382664, 0.872612,
		29.651949, 39.755833, 38.160400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669825, 39.498280, 37.316105>,  <29.439493, 40.023697, 37.549572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669825, 39.498280, 37.316105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622196, 39.410782, 37.703503>,  <29.593620, 39.358284, 37.935940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622196, 39.410782, 37.703503>,  <29.669825, 39.498280, 37.316105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622196, 39.410782, 37.703503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204263, -0.949168, -0.239494,
		0.971648, -0.226343, 0.068335,
		-0.119069, -0.218745, 0.968490,
		29.586475, 39.345158, 37.994049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070259, 38.875355, 37.448151>,  <29.669825, 39.498280, 37.316105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070259, 38.875355, 37.448151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783632, 38.899639, 37.726101>,  <29.611656, 38.914211, 37.892872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783632, 38.899639, 37.726101>,  <30.070259, 38.875355, 37.448151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783632, 38.899639, 37.726101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275114, -0.940045, -0.201566,
		0.640972, -0.335604, 0.690307,
		-0.716566, 0.060715, 0.694872,
		29.568663, 38.917854, 37.934563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945150, 38.192810, 37.392776>,  <30.070259, 38.875355, 37.448151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945150, 38.192810, 37.392776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680786, 38.348976, 37.649143>,  <29.522167, 38.442677, 37.802963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680786, 38.348976, 37.649143>,  <29.945150, 38.192810, 37.392776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680786, 38.348976, 37.649143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534521, -0.844351, -0.036857,
		0.526769, -0.366942, 0.766726,
		-0.660910, 0.390416, 0.640916,
		29.482513, 38.466103, 37.841419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854801, 37.784958, 38.118389>,  <29.945150, 38.192810, 37.392776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854801, 37.784958, 38.118389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523577, 37.984642, 38.016331>,  <29.324842, 38.104454, 37.955093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523577, 37.984642, 38.016331>,  <29.854801, 37.784958, 38.118389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523577, 37.984642, 38.016331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518612, -0.854947, 0.010359,
		-0.212969, 0.140902, 0.966846,
		-0.828061, 0.499212, -0.255150,
		29.275158, 38.134407, 37.939785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454634, 37.441383, 38.518425>,  <29.854801, 37.784958, 38.118389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454634, 37.441383, 38.518425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246647, 37.614246, 38.223705>,  <29.121855, 37.717964, 38.046875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246647, 37.614246, 38.223705>,  <29.454634, 37.441383, 38.518425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246647, 37.614246, 38.223705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536599, -0.836387, -0.111888,
		-0.664603, 0.337187, 0.666789,
		-0.519966, 0.432160, -0.736799,
		29.090656, 37.743893, 38.002666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835958, 37.310600, 38.689480>,  <29.454634, 37.441383, 38.518425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835958, 37.310600, 38.689480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817862, 37.395744, 38.299065>,  <28.807003, 37.446831, 38.064816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817862, 37.395744, 38.299065>,  <28.835958, 37.310600, 38.689480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817862, 37.395744, 38.299065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500016, -0.850664, -0.162341,
		-0.864834, 0.480689, 0.144917,
		-0.045240, 0.212859, -0.976035,
		28.804289, 37.459602, 38.006252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198978, 37.209145, 38.459438>,  <28.835958, 37.310600, 38.689480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198978, 37.209145, 38.459438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.335443, 37.196014, 38.083668>,  <28.417322, 37.188137, 37.858204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.335443, 37.196014, 38.083668>,  <28.198978, 37.209145, 38.459438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335443, 37.196014, 38.083668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660975, -0.718974, -0.214918,
		-0.668371, 0.694262, -0.266984,
		0.341164, -0.032825, -0.939431,
		28.437792, 37.186169, 37.801838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584633, 37.011204, 37.968868>,  <28.198978, 37.209145, 38.459438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584633, 37.011204, 37.968868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918264, 36.933098, 37.762497>,  <28.118443, 36.886234, 37.638672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918264, 36.933098, 37.762497>,  <27.584633, 37.011204, 37.968868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918264, 36.933098, 37.762497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361674, -0.899766, -0.244158,
		-0.416543, 0.390246, -0.821097,
		0.834077, -0.195267, -0.515933,
		28.168488, 36.874519, 37.607716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385393, 36.579552, 37.408199>,  <27.584633, 37.011204, 37.968868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385393, 36.579552, 37.408199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774519, 36.493267, 37.374485>,  <28.007994, 36.441498, 37.354256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774519, 36.493267, 37.374485>,  <27.385393, 36.579552, 37.408199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774519, 36.493267, 37.374485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231320, -0.887463, -0.398624,
		0.011190, 0.407283, -0.913234,
		0.972813, -0.215709, -0.084282,
		28.066362, 36.428555, 37.349201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468685, 36.489529, 36.652901>,  <27.385393, 36.579552, 37.408199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468685, 36.489529, 36.652901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.757923, 36.306313, 36.859718>,  <27.931467, 36.196384, 36.983807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.757923, 36.306313, 36.859718>,  <27.468685, 36.489529, 36.652901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757923, 36.306313, 36.859718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256304, -0.873004, -0.414937,
		0.641436, 0.167520, -0.748664,
		0.723096, -0.458041, 0.517040,
		27.974852, 36.168900, 37.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928961, 36.166000, 36.136482>,  <27.468685, 36.489529, 36.652901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928961, 36.166000, 36.136482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970570, 35.984329, 36.490410>,  <27.995535, 35.875328, 36.702766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970570, 35.984329, 36.490410>,  <27.928961, 36.166000, 36.136482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970570, 35.984329, 36.490410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197954, -0.881300, -0.429098,
		0.974676, -0.130518, -0.181580,
		0.104021, -0.454176, 0.884818,
		28.001776, 35.848076, 36.755856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032557, 35.512501, 35.978039>,  <27.928961, 36.166000, 36.136482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032557, 35.512501, 35.978039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948885, 35.470249, 36.366901>,  <27.898682, 35.444901, 36.600220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948885, 35.470249, 36.366901>,  <28.032557, 35.512501, 35.978039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948885, 35.470249, 36.366901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308619, -0.936209, -0.168125,
		0.927900, -0.335194, 0.163238,
		-0.209180, -0.105625, 0.972156,
		27.886131, 35.438560, 36.658546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328587, 34.837585, 36.115467>,  <28.032557, 35.512501, 35.978039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328587, 34.837585, 36.115467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047106, 34.931038, 36.383862>,  <27.878218, 34.987110, 36.544899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047106, 34.931038, 36.383862>,  <28.328587, 34.837585, 36.115467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047106, 34.931038, 36.383862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430890, -0.891229, -0.141580,
		0.564922, -0.388750, 0.727830,
		-0.703702, 0.233633, 0.670983,
		27.835995, 35.001129, 36.585155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959824, 35.003994, 35.702091>,  <28.328587, 34.837585, 36.115467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959824, 35.003994, 35.702091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187880, 34.675629, 35.689137>,  <29.324713, 34.478611, 35.681362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187880, 34.675629, 35.689137>,  <28.959824, 35.003994, 35.702091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187880, 34.675629, 35.689137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819414, 0.565377, 0.094388,
		-0.059171, -0.080355, 0.995008,
		0.570140, -0.820909, -0.032389,
		29.358921, 34.429356, 35.679420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469105, 34.909389, 36.291885>,  <28.959824, 35.003994, 35.702091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469105, 34.909389, 36.291885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601748, 34.759674, 35.945488>,  <29.681334, 34.669846, 35.737648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.601748, 34.759674, 35.945488>,  <29.469105, 34.909389, 36.291885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601748, 34.759674, 35.945488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870539, 0.475168, 0.127978,
		0.363591, -0.796319, 0.483401,
		0.331608, -0.374288, -0.865993,
		29.701229, 34.647388, 35.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105600, 34.405930, 36.357731>,  <29.469105, 34.909389, 36.291885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105600, 34.405930, 36.357731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082087, 34.595119, 36.006084>,  <30.067978, 34.708633, 35.795097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082087, 34.595119, 36.006084>,  <30.105600, 34.405930, 36.357731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082087, 34.595119, 36.006084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915763, 0.376116, 0.141122,
		0.397396, -0.796762, -0.455244,
		-0.058784, 0.472977, -0.879112,
		30.064451, 34.737011, 35.742352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785982, 34.348591, 36.130466>,  <30.105600, 34.405930, 36.357731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785982, 34.348591, 36.130466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.642033, 34.631165, 35.886684>,  <30.555664, 34.800709, 35.740414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.642033, 34.631165, 35.886684>,  <30.785982, 34.348591, 36.130466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642033, 34.631165, 35.886684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858054, 0.507110, 0.081138,
		0.366382, -0.493749, -0.788654,
		-0.359873, 0.706435, -0.609460,
		30.534071, 34.843094, 35.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379875, 34.595646, 35.753609>,  <30.785982, 34.348591, 36.130466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379875, 34.595646, 35.753609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101084, 34.877132, 35.698471>,  <30.933809, 35.046024, 35.665390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101084, 34.877132, 35.698471>,  <31.379875, 34.595646, 35.753609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101084, 34.877132, 35.698471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713875, 0.699100, -0.040516,
		0.067853, -0.126640, -0.989625,
		-0.696978, 0.703720, -0.137841,
		30.891991, 35.088249, 35.657120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734531, 35.011322, 35.229755>,  <31.379875, 34.595646, 35.753609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734531, 35.011322, 35.229755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445553, 35.231342, 35.397335>,  <31.272165, 35.363354, 35.497883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445553, 35.231342, 35.397335>,  <31.734531, 35.011322, 35.229755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445553, 35.231342, 35.397335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588065, 0.807499, -0.046104,
		-0.363659, 0.213061, -0.906839,
		-0.722449, 0.550046, 0.418947,
		31.228819, 35.396355, 35.523018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815224, 35.637665, 34.869602>,  <31.734531, 35.011322, 35.229755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815224, 35.637665, 34.869602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629265, 35.680725, 35.221119>,  <31.517689, 35.706562, 35.432030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629265, 35.680725, 35.221119>,  <31.815224, 35.637665, 34.869602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629265, 35.680725, 35.221119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512784, 0.841892, 0.168140,
		-0.721749, 0.528800, -0.446597,
		-0.464898, 0.107653, 0.878795,
		31.489796, 35.713020, 35.484756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840816, 36.281757, 34.883698>,  <31.815224, 35.637665, 34.869602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840816, 36.281757, 34.883698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.762642, 36.182629, 35.263252>,  <31.715736, 36.123150, 35.490986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.762642, 36.182629, 35.263252>,  <31.840816, 36.281757, 34.883698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762642, 36.182629, 35.263252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378210, 0.873657, 0.306072,
		-0.904854, 0.418697, -0.077016,
		-0.195437, -0.247822, 0.948888,
		31.704010, 36.108280, 35.547920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295004, 36.766804, 35.243767>,  <31.840816, 36.281757, 34.883698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295004, 36.766804, 35.243767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524542, 36.608101, 35.530342>,  <31.662266, 36.512878, 35.702290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.524542, 36.608101, 35.530342>,  <31.295004, 36.766804, 35.243767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524542, 36.608101, 35.530342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287814, 0.916713, 0.277130,
		-0.766723, 0.047172, 0.640243,
		0.573846, -0.396753, 0.716441,
		31.696695, 36.489075, 35.745274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131397, 37.196583, 35.743244>,  <31.295004, 36.766804, 35.243767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131397, 37.196583, 35.743244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465210, 37.007210, 35.855968>,  <31.665497, 36.893585, 35.923603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465210, 37.007210, 35.855968>,  <31.131397, 37.196583, 35.743244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465210, 37.007210, 35.855968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337513, 0.843575, 0.417692,
		-0.435480, -0.253461, 0.863779,
		0.834531, -0.473433, 0.281813,
		31.715569, 36.865181, 35.940514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219803, 37.331650, 36.427235>,  <31.131397, 37.196583, 35.743244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219803, 37.331650, 36.427235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.588373, 37.238731, 36.302647>,  <31.809515, 37.182980, 36.227894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.588373, 37.238731, 36.302647>,  <31.219803, 37.331650, 36.427235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588373, 37.238731, 36.302647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358684, 0.816745, 0.451967,
		0.149406, -0.528174, 0.835889,
		0.921425, -0.232293, -0.311474,
		31.864801, 37.169044, 36.209206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626509, 37.553074, 37.044495>,  <31.219803, 37.331650, 36.427235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626509, 37.553074, 37.044495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880400, 37.541985, 36.735600>,  <32.032734, 37.535332, 36.550262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.880400, 37.541985, 36.735600>,  <31.626509, 37.553074, 37.044495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880400, 37.541985, 36.735600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491688, 0.785438, 0.375940,
		0.596122, -0.618320, 0.512172,
		0.634730, -0.027722, -0.772237,
		32.070820, 37.533669, 36.503929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238865, 37.709469, 37.330360>,  <31.626509, 37.553074, 37.044495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238865, 37.709469, 37.330360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342781, 37.787609, 36.952080>,  <32.405132, 37.834492, 36.725113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342781, 37.787609, 36.952080>,  <32.238865, 37.709469, 37.330360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342781, 37.787609, 36.952080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536865, 0.784809, 0.309598,
		0.802674, -0.588143, 0.099007,
		0.259789, 0.195353, -0.945699,
		32.420719, 37.846214, 36.668369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963375, 37.711540, 37.359039>,  <32.238865, 37.709469, 37.330360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963375, 37.711540, 37.359039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.819801, 37.923840, 37.051929>,  <32.733658, 38.051220, 36.867664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.819801, 37.923840, 37.051929>,  <32.963375, 37.711540, 37.359039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819801, 37.923840, 37.051929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474096, 0.812241, 0.339849,
		0.803989, -0.242013, -0.543168,
		-0.358935, 0.530749, -0.767770,
		32.712120, 38.083065, 36.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523914, 38.103733, 37.065304>,  <32.963375, 37.711540, 37.359039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523914, 38.103733, 37.065304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205936, 38.304737, 36.929333>,  <33.015152, 38.425339, 36.847752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205936, 38.304737, 36.929333>,  <33.523914, 38.103733, 37.065304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205936, 38.304737, 36.929333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467080, 0.864498, 0.185688,
		0.387176, -0.011162, -0.921938,
		-0.794941, 0.502513, -0.339926,
		32.967453, 38.455490, 36.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815929, 38.699329, 36.699329>,  <33.523914, 38.103733, 37.065304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815929, 38.699329, 36.699329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435558, 38.770828, 36.800358>,  <33.207336, 38.813728, 36.860973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.435558, 38.770828, 36.800358>,  <33.815929, 38.699329, 36.699329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435558, 38.770828, 36.800358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266783, 0.887121, 0.376619,
		-0.156741, 0.425518, -0.891272,
		-0.950925, 0.178745, 0.252569,
		33.150280, 38.824451, 36.876129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772354, 39.297855, 36.344273>,  <33.815929, 38.699329, 36.699329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772354, 39.297855, 36.344273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480865, 39.299236, 36.618195>,  <33.305973, 39.300064, 36.782547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480865, 39.299236, 36.618195>,  <33.772354, 39.297855, 36.344273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480865, 39.299236, 36.618195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367916, 0.845386, 0.387247,
		-0.577583, 0.534145, -0.617322,
		-0.728721, 0.003455, 0.684801,
		33.262249, 39.300274, 36.823635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440525, 40.010246, 36.344521>,  <33.772354, 39.297855, 36.344273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440525, 40.010246, 36.344521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345398, 39.863342, 36.704201>,  <33.288322, 39.775200, 36.920010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345398, 39.863342, 36.704201>,  <33.440525, 40.010246, 36.344521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345398, 39.863342, 36.704201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231842, 0.877541, 0.419728,
		-0.943235, 0.308292, -0.123550,
		-0.237819, -0.367258, 0.899202,
		33.274052, 39.753166, 36.973961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123817, 40.567860, 36.729740>,  <33.440525, 40.010246, 36.344521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123817, 40.567860, 36.729740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204811, 40.325409, 37.037407>,  <33.253407, 40.179939, 37.222008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.204811, 40.325409, 37.037407>,  <33.123817, 40.567860, 36.729740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204811, 40.325409, 37.037407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103072, 0.794261, 0.598770,
		-0.973846, -0.041963, 0.223300,
		0.202485, -0.606126, 0.769163,
		33.265556, 40.143570, 37.268154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545723, 40.644199, 37.199932>,  <33.123817, 40.567860, 36.729740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545723, 40.644199, 37.199932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864956, 40.485546, 37.381371>,  <33.056496, 40.390354, 37.490234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864956, 40.485546, 37.381371>,  <32.545723, 40.644199, 37.199932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864956, 40.485546, 37.381371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013208, 0.764131, 0.644926,
		-0.602402, -0.508713, 0.615079,
		0.798084, -0.396629, 0.453595,
		33.104382, 40.366558, 37.517448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462814, 40.875755, 37.888531>,  <32.545723, 40.644199, 37.199932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462814, 40.875755, 37.888531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844135, 40.755424, 37.899235>,  <33.072929, 40.683224, 37.905655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844135, 40.755424, 37.899235>,  <32.462814, 40.875755, 37.888531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844135, 40.755424, 37.899235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213522, 0.733978, 0.644737,
		-0.213594, -0.608916, 0.763937,
		0.953303, -0.300829, 0.026757,
		33.130127, 40.665176, 37.907261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718273, 40.899178, 38.607796>,  <32.462814, 40.875755, 37.888531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718273, 40.899178, 38.607796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.043877, 40.891304, 38.375587>,  <33.239239, 40.886581, 38.236263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.043877, 40.891304, 38.375587>,  <32.718273, 40.899178, 38.607796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043877, 40.891304, 38.375587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346195, 0.818958, 0.457666,
		0.466417, -0.573516, 0.673450,
		0.814005, -0.019682, -0.580523,
		33.288078, 40.885399, 38.201431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272091, 40.950047, 39.089451>,  <32.718273, 40.899178, 38.607796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272091, 40.950047, 39.089451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393814, 41.080608, 38.731487>,  <33.466846, 41.158947, 38.516708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.393814, 41.080608, 38.731487>,  <33.272091, 40.950047, 39.089451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393814, 41.080608, 38.731487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181695, 0.902323, 0.390898,
		0.935085, -0.281553, 0.215276,
		0.304306, 0.326409, -0.894905,
		33.485107, 41.178532, 38.463017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.754677, 30.927094, 51.138695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645401, 30.683399, 50.840916>,  <35.579838, 30.537182, 50.662247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645401, 30.683399, 50.840916>,  <35.754677, 30.927094, 51.138695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645401, 30.683399, 50.840916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806446, -0.276842, 0.522498,
		-0.524419, 0.743095, -0.415686,
		-0.273186, -0.609236, -0.744447,
		35.563446, 30.500629, 50.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119534, 31.151108, 50.966652>,  <35.754677, 30.927094, 51.138695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119534, 31.151108, 50.966652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197975, 30.771345, 50.868534>,  <35.245041, 30.543488, 50.809662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197975, 30.771345, 50.868534>,  <35.119534, 31.151108, 50.966652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197975, 30.771345, 50.868534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781300, -0.302450, 0.545980,
		-0.592547, 0.084581, -0.801083,
		0.196108, -0.949405, -0.245299,
		35.256809, 30.486523, 50.794945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518471, 30.869616, 50.707840>,  <35.119534, 31.151108, 50.966652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518471, 30.869616, 50.707840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732197, 30.565241, 50.855072>,  <34.860432, 30.382616, 50.943413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732197, 30.565241, 50.855072>,  <34.518471, 30.869616, 50.707840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732197, 30.565241, 50.855072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762306, -0.245621, 0.598798,
		-0.365242, -0.600533, -0.711307,
		0.534310, -0.760940, 0.368079,
		34.892490, 30.336960, 50.965496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021568, 30.462030, 50.858421>,  <34.518471, 30.869616, 50.707840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021568, 30.462030, 50.858421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310863, 30.218298, 50.988430>,  <34.484440, 30.072060, 51.066437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310863, 30.218298, 50.988430>,  <34.021568, 30.462030, 50.858421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310863, 30.218298, 50.988430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575083, -0.270810, 0.771973,
		-0.382366, -0.745237, -0.546276,
		0.723240, -0.609330, 0.325024,
		34.527836, 30.035500, 51.085938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775055, 29.793583, 50.907570>,  <34.021568, 30.462030, 50.858421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775055, 29.793583, 50.907570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082180, 29.802685, 51.163677>,  <34.266453, 29.808146, 51.317341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082180, 29.802685, 51.163677>,  <33.775055, 29.793583, 50.907570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082180, 29.802685, 51.163677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565324, -0.446163, 0.693792,
		0.301455, -0.894662, -0.329703,
		0.767811, 0.022757, 0.640272,
		34.312523, 29.809511, 51.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002911, 29.071928, 51.183178>,  <33.775055, 29.793583, 50.907570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002911, 29.071928, 51.183178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132629, 29.323038, 51.466225>,  <34.210461, 29.473705, 51.636055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132629, 29.323038, 51.466225>,  <34.002911, 29.071928, 51.183178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132629, 29.323038, 51.466225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567056, -0.469730, 0.676610,
		0.757150, -0.620685, 0.203651,
		0.324301, 0.627777, 0.707620,
		34.229919, 29.511372, 51.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070129, 28.718706, 51.692169>,  <34.002911, 29.071928, 51.183178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070129, 28.718706, 51.692169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028721, 29.082916, 51.852283>,  <34.003876, 29.301443, 51.948353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028721, 29.082916, 51.852283>,  <34.070129, 28.718706, 51.692169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028721, 29.082916, 51.852283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707474, -0.350282, 0.613826,
		0.699117, -0.219650, 0.680434,
		-0.103517, 0.910525, 0.400285,
		33.997665, 29.356073, 51.972370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050434, 28.619944, 52.398552>,  <34.070129, 28.718706, 51.692169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050434, 28.619944, 52.398552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860950, 28.969629, 52.355942>,  <33.747261, 29.179441, 52.330376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860950, 28.969629, 52.355942>,  <34.050434, 28.619944, 52.398552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860950, 28.969629, 52.355942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696849, -0.298117, 0.652325,
		0.538516, 0.383243, 0.750417,
		-0.473711, 0.874214, -0.106522,
		33.718838, 29.231894, 52.323986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773258, 28.901423, 53.057129>,  <34.050434, 28.619944, 52.398552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773258, 28.901423, 53.057129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551689, 29.110426, 52.797852>,  <33.418747, 29.235828, 52.642284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551689, 29.110426, 52.797852>,  <33.773258, 28.901423, 53.057129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551689, 29.110426, 52.797852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813036, -0.171842, 0.556275,
		0.179274, 0.835137, 0.520007,
		-0.553925, 0.522511, -0.648190,
		33.385513, 29.267179, 52.603394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303429, 29.172373, 53.448036>,  <33.773258, 28.901423, 53.057129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303429, 29.172373, 53.448036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134575, 29.173361, 53.085423>,  <33.033264, 29.173954, 52.867855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134575, 29.173361, 53.085423>,  <33.303429, 29.172373, 53.448036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134575, 29.173361, 53.085423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906066, 0.031013, 0.421998,
		0.029157, 0.999516, -0.010853,
		-0.422130, 0.002471, -0.906532,
		33.007935, 29.174103, 52.813461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873573, 29.747831, 53.447605>,  <33.303429, 29.172373, 53.448036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873573, 29.747831, 53.447605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730442, 29.519953, 53.151657>,  <32.644562, 29.383224, 52.974091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730442, 29.519953, 53.151657>,  <32.873573, 29.747831, 53.447605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730442, 29.519953, 53.151657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933219, 0.190561, 0.304613,
		-0.032548, 0.799457, -0.599841,
		-0.357831, -0.569697, -0.739866,
		32.623093, 29.349043, 52.929699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196579, 30.059628, 53.238068>,  <32.873573, 29.747831, 53.447605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196579, 30.059628, 53.238068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170910, 29.679266, 53.116966>,  <32.155510, 29.451048, 53.044304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170910, 29.679266, 53.116966>,  <32.196579, 30.059628, 53.238068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170910, 29.679266, 53.116966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923069, -0.058731, 0.380124,
		-0.379243, 0.303856, -0.873983,
		-0.064173, -0.950906, -0.302753,
		32.151657, 29.393993, 53.026142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492971, 29.779116, 52.784847>,  <32.196579, 30.059628, 53.238068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492971, 29.779116, 52.784847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604156, 29.455610, 52.992168>,  <31.670868, 29.261507, 53.116562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604156, 29.455610, 52.992168>,  <31.492971, 29.779116, 52.784847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604156, 29.455610, 52.992168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899585, -0.029939, 0.435719,
		-0.336876, -0.587374, -0.735871,
		0.277961, -0.808762, 0.518307,
		31.687544, 29.212982, 53.147659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377680, 30.473669, 52.911694>,  <31.492971, 29.779116, 52.784847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377680, 30.473669, 52.911694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143293, 30.193726, 52.748310>,  <31.002661, 30.025759, 52.650280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143293, 30.193726, 52.748310>,  <31.377680, 30.473669, 52.911694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143293, 30.193726, 52.748310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048123, 0.533225, -0.844603,
		0.808905, -0.475253, -0.346132,
		-0.585967, -0.699861, -0.408458,
		30.967503, 29.983767, 52.625774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651058, 30.294470, 52.277737>,  <31.377680, 30.473669, 52.911694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651058, 30.294470, 52.277737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.254847, 30.242516, 52.259949>,  <31.017118, 30.211344, 52.249275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.254847, 30.242516, 52.259949>,  <31.651058, 30.294470, 52.277737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254847, 30.242516, 52.259949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048260, 0.632696, -0.772895,
		0.128526, -0.763430, -0.632973,
		-0.990531, -0.129885, -0.044474,
		30.957687, 30.203550, 52.246605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531065, 30.029655, 51.542194>,  <31.651058, 30.294470, 52.277737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531065, 30.029655, 51.542194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217642, 30.239191, 51.675838>,  <31.029589, 30.364912, 51.756023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217642, 30.239191, 51.675838>,  <31.531065, 30.029655, 51.542194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217642, 30.239191, 51.675838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203488, 0.724445, -0.658614,
		-0.587053, -0.448074, -0.674239,
		-0.783557, 0.523840, 0.334110,
		30.982574, 30.396343, 51.776070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149088, 30.413668, 51.028755>,  <31.531065, 30.029655, 51.542194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149088, 30.413668, 51.028755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003313, 30.602150, 51.350040>,  <30.915848, 30.715239, 51.542812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.003313, 30.602150, 51.350040>,  <31.149088, 30.413668, 51.028755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003313, 30.602150, 51.350040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165738, 0.881581, -0.441979,
		-0.916361, -0.027950, -0.399376,
		-0.364436, 0.471204, 0.803214,
		30.893982, 30.743511, 51.591003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667280, 30.906057, 50.713631>,  <31.149088, 30.413668, 51.028755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667280, 30.906057, 50.713631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758904, 31.030657, 51.082520>,  <30.813877, 31.105415, 51.303852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758904, 31.030657, 51.082520>,  <30.667280, 30.906057, 50.713631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758904, 31.030657, 51.082520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172073, 0.919538, -0.353328,
		-0.958083, 0.239624, 0.157029,
		0.229060, 0.311497, 0.922226,
		30.827621, 31.124105, 51.359188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267965, 31.540396, 50.879467>,  <30.667280, 30.906057, 50.713631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267965, 31.540396, 50.879467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591360, 31.559139, 51.114128>,  <30.785397, 31.570385, 51.254925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591360, 31.559139, 51.114128>,  <30.267965, 31.540396, 50.879467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591360, 31.559139, 51.114128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209823, 0.908367, -0.361724,
		-0.549843, 0.415541, 0.724568,
		0.808485, 0.046861, 0.586649,
		30.833906, 31.573198, 51.290123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338144, 32.188213, 51.077740>,  <30.267965, 31.540396, 50.879467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338144, 32.188213, 51.077740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700346, 32.022148, 51.112850>,  <30.917667, 31.922508, 51.133919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700346, 32.022148, 51.112850>,  <30.338144, 32.188213, 51.077740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700346, 32.022148, 51.112850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405651, 0.786184, -0.466220,
		0.124546, 0.457771, 0.880303,
		0.905503, -0.415162, 0.087779,
		30.971996, 31.897600, 51.139183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844435, 32.777657, 51.275761>,  <30.338144, 32.188213, 51.077740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844435, 32.777657, 51.275761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102962, 32.484276, 51.191551>,  <31.258080, 32.308247, 51.141026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102962, 32.484276, 51.191551>,  <30.844435, 32.777657, 51.275761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102962, 32.484276, 51.191551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657862, 0.675374, -0.333298,
		0.386639, 0.076922, 0.919018,
		0.646319, -0.733453, -0.210522,
		31.296858, 32.264240, 51.128395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392223, 33.044289, 51.610035>,  <30.844435, 32.777657, 51.275761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392223, 33.044289, 51.610035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466513, 32.793335, 51.307541>,  <31.511086, 32.642761, 51.126045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466513, 32.793335, 51.307541>,  <31.392223, 33.044289, 51.610035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466513, 32.793335, 51.307541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421511, 0.746087, -0.515444,
		0.887601, -0.223033, 0.403014,
		0.185722, -0.627383, -0.756239,
		31.522230, 32.605122, 51.080669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098660, 33.236359, 51.354996>,  <31.392223, 33.044289, 51.610035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098660, 33.236359, 51.354996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974163, 33.031769, 51.034615>,  <31.899466, 32.909016, 50.842384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974163, 33.031769, 51.034615>,  <32.098660, 33.236359, 51.354996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974163, 33.031769, 51.034615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421118, 0.681319, -0.598719,
		0.851934, -0.523639, 0.003340,
		-0.311237, -0.511475, -0.800952,
		31.880793, 32.878326, 50.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635391, 33.124977, 50.859947>,  <32.098660, 33.236359, 51.354996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635391, 33.124977, 50.859947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330334, 33.071655, 50.606773>,  <32.147301, 33.039661, 50.454868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330334, 33.071655, 50.606773>,  <32.635391, 33.124977, 50.859947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330334, 33.071655, 50.606773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467984, 0.561774, -0.682203,
		0.446506, -0.816480, -0.366049,
		-0.762643, -0.133303, -0.632935,
		32.101540, 33.031666, 50.416893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018433, 33.104630, 50.236244>,  <32.635391, 33.124977, 50.859947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018433, 33.104630, 50.236244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637844, 33.186253, 50.144104>,  <32.409492, 33.235226, 50.088821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.637844, 33.186253, 50.144104>,  <33.018433, 33.104630, 50.236244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637844, 33.186253, 50.144104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307127, 0.582700, -0.752419,
		-0.019314, -0.786652, -0.617095,
		-0.951473, 0.204058, -0.230348,
		32.352402, 33.247471, 50.075001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077587, 33.139362, 49.558971>,  <33.018433, 33.104630, 50.236244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077587, 33.139362, 49.558971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735607, 33.331345, 49.637665>,  <32.530418, 33.446533, 49.684883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735607, 33.331345, 49.637665>,  <33.077587, 33.139362, 49.558971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735607, 33.331345, 49.637665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176080, 0.625293, -0.760266,
		-0.487911, -0.615347, -0.619105,
		-0.854949, 0.479954, 0.196737,
		32.479122, 33.475330, 49.696686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720913, 33.283211, 48.913731>,  <33.077587, 33.139362, 49.558971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720913, 33.283211, 48.913731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536716, 33.530029, 49.168980>,  <32.426201, 33.678120, 49.322128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536716, 33.530029, 49.168980>,  <32.720913, 33.283211, 48.913731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536716, 33.530029, 49.168980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144654, 0.657108, -0.739787,
		-0.875801, -0.432969, -0.213331,
		-0.460486, 0.617047, 0.638127,
		32.398571, 33.715145, 49.360416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030766, 33.404816, 48.705830>,  <32.720913, 33.283211, 48.913731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030766, 33.404816, 48.705830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157871, 33.708401, 48.933163>,  <32.234135, 33.890553, 49.069561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157871, 33.708401, 48.933163>,  <32.030766, 33.404816, 48.705830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157871, 33.708401, 48.933163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544717, 0.636738, -0.545755,
		-0.776086, -0.136159, 0.615752,
		0.317764, 0.758963, 0.568332,
		32.253201, 33.936089, 49.103661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349842, 33.402412, 48.413929>,  <32.030766, 33.404816, 48.705830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349842, 33.402412, 48.413929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021172, 33.420582, 48.186672>,  <30.823969, 33.431484, 48.050320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.021172, 33.420582, 48.186672>,  <31.349842, 33.402412, 48.413929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021172, 33.420582, 48.186672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490045, -0.565307, 0.663539,
		-0.291034, 0.823629, 0.486760,
		-0.821678, 0.045422, -0.568139,
		30.774668, 33.434208, 48.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729618, 33.571480, 48.852200>,  <31.349842, 33.402412, 48.413929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729618, 33.571480, 48.852200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550259, 33.420483, 48.528118>,  <30.442644, 33.329884, 48.333668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550259, 33.420483, 48.528118>,  <30.729618, 33.571480, 48.852200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550259, 33.420483, 48.528118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591066, -0.554737, 0.585583,
		-0.670508, 0.741460, 0.025618,
		-0.448397, -0.377496, -0.810208,
		30.415739, 33.307232, 48.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028679, 33.433434, 49.154716>,  <30.729618, 33.571480, 48.852200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028679, 33.433434, 49.154716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048294, 33.253567, 48.797977>,  <30.060062, 33.145645, 48.583935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048294, 33.253567, 48.797977>,  <30.028679, 33.433434, 49.154716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048294, 33.253567, 48.797977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556533, -0.753763, 0.349446,
		-0.829377, 0.479208, -0.287217,
		0.049036, -0.449668, -0.891849,
		30.063005, 33.118668, 48.530422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287861, 33.388161, 48.835815>,  <30.028679, 33.433434, 49.154716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287861, 33.388161, 48.835815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546352, 33.104671, 48.722610>,  <29.701448, 32.934578, 48.654690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546352, 33.104671, 48.722610>,  <29.287861, 33.388161, 48.835815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546352, 33.104671, 48.722610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566537, -0.693998, 0.444300,
		-0.511294, -0.126785, -0.850002,
		0.646230, -0.708726, -0.283009,
		29.740221, 32.892056, 48.637707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924877, 32.926060, 48.405407>,  <29.287861, 33.388161, 48.835815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924877, 32.926060, 48.405407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244541, 32.740261, 48.558029>,  <29.436338, 32.628780, 48.649601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244541, 32.740261, 48.558029>,  <28.924877, 32.926060, 48.405407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244541, 32.740261, 48.558029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583528, -0.751895, 0.306837,
		0.144365, -0.467860, -0.871932,
		0.799158, -0.464501, 0.381557,
		29.484289, 32.600910, 48.672497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801397, 32.220608, 48.248203>,  <28.924877, 32.926060, 48.405407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801397, 32.220608, 48.248203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.066189, 32.245789, 48.546955>,  <29.225063, 32.260895, 48.726204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.066189, 32.245789, 48.546955>,  <28.801397, 32.220608, 48.248203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066189, 32.245789, 48.546955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554396, -0.629477, 0.544430,
		0.504411, -0.774466, -0.381802,
		0.661978, 0.062948, 0.746876,
		29.264782, 32.264671, 48.771019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627916, 31.568378, 48.611458>,  <28.801397, 32.220608, 48.248203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627916, 31.568378, 48.611458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.864914, 31.776316, 48.857616>,  <29.007113, 31.901077, 49.005314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.864914, 31.776316, 48.857616>,  <28.627916, 31.568378, 48.611458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864914, 31.776316, 48.857616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353925, -0.518271, 0.778545,
		0.723664, -0.679088, -0.123087,
		0.592493, 0.519841, 0.615401,
		29.042662, 31.932268, 49.042236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915977, 30.861494, 48.405308>,  <28.627916, 31.568378, 48.611458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915977, 30.861494, 48.405308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801254, 30.528639, 48.215450>,  <28.732420, 30.328926, 48.101536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801254, 30.528639, 48.215450>,  <28.915977, 30.861494, 48.405308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801254, 30.528639, 48.215450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382140, 0.354952, -0.853216,
		0.878470, -0.426089, 0.216190,
		-0.286809, -0.832140, -0.474641,
		28.715212, 30.278997, 48.073059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483292, 30.580065, 48.124878>,  <28.915977, 30.861494, 48.405308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483292, 30.580065, 48.124878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.184320, 30.442770, 47.897354>,  <29.004938, 30.360394, 47.760841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.184320, 30.442770, 47.897354>,  <29.483292, 30.580065, 48.124878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184320, 30.442770, 47.897354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446563, 0.374336, -0.812683,
		0.491870, -0.861429, -0.126510,
		-0.747426, -0.343239, -0.568807,
		28.960093, 30.339798, 47.726711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849453, 30.153902, 47.650032>,  <29.483292, 30.580065, 48.124878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849453, 30.153902, 47.650032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.486044, 30.236053, 47.504482>,  <29.267998, 30.285345, 47.417152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.486044, 30.236053, 47.504482>,  <29.849453, 30.153902, 47.650032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486044, 30.236053, 47.504482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396037, 0.145685, -0.906604,
		-0.133188, -0.967778, -0.213697,
		-0.908524, 0.205381, -0.363873,
		29.213488, 30.297668, 47.395321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882778, 29.823750, 46.936825>,  <29.849453, 30.153902, 47.650032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882778, 29.823750, 46.936825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.591537, 30.097906, 46.932747>,  <29.416792, 30.262400, 46.930298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.591537, 30.097906, 46.932747>,  <29.882778, 29.823750, 46.936825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591537, 30.097906, 46.932747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318748, 0.325364, -0.890246,
		-0.606850, -0.651441, -0.455366,
		-0.728102, 0.685392, -0.010198,
		29.373106, 30.303524, 46.929688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792782, 29.965868, 46.181862>,  <29.882778, 29.823750, 46.936825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792782, 29.965868, 46.181862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635431, 30.278925, 46.374832>,  <29.541021, 30.466759, 46.490612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635431, 30.278925, 46.374832>,  <29.792782, 29.965868, 46.181862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635431, 30.278925, 46.374832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279996, 0.601784, -0.747970,
		-0.875704, -0.159157, -0.455863,
		-0.393375, 0.782640, 0.482421,
		29.517418, 30.513718, 46.519558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309069, 30.252522, 45.675552>,  <29.792782, 29.965868, 46.181862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309069, 30.252522, 45.675552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.369743, 30.531792, 45.955421>,  <29.406149, 30.699354, 46.123341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.369743, 30.531792, 45.955421>,  <29.309069, 30.252522, 45.675552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369743, 30.531792, 45.955421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142754, 0.684966, -0.714453,
		-0.978065, 0.208255, 0.004234,
		0.151689, 0.698178, 0.699670,
		29.415251, 30.741245, 46.165321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874506, 30.792688, 45.451900>,  <29.309069, 30.252522, 45.675552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874506, 30.792688, 45.451900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158781, 30.952166, 45.683750>,  <29.329346, 31.047852, 45.822861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.158781, 30.952166, 45.683750>,  <28.874506, 30.792688, 45.451900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158781, 30.952166, 45.683750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268621, 0.607699, -0.747358,
		-0.650205, 0.686838, 0.324787,
		0.710687, 0.398692, 0.579628,
		29.371986, 31.071774, 45.857639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.289490, 26.235449, 51.493362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445005, 26.568226, 51.651714>,  <31.538315, 26.767891, 51.746723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445005, 26.568226, 51.651714>,  <31.289490, 26.235449, 51.493362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445005, 26.568226, 51.651714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352946, 0.262413, -0.898091,
		-0.851042, 0.488890, -0.191608,
		0.388788, 0.831941, 0.395876,
		31.561642, 26.817808, 51.770477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059729, 26.863674, 51.134609>,  <31.289490, 26.235449, 51.493362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059729, 26.863674, 51.134609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402630, 26.957632, 51.317886>,  <31.608370, 27.014006, 51.427853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402630, 26.957632, 51.317886>,  <31.059729, 26.863674, 51.134609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402630, 26.957632, 51.317886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344570, 0.399540, -0.849494,
		-0.382607, 0.886111, 0.261570,
		0.857253, 0.234893, 0.458194,
		31.659805, 27.028101, 51.455345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266064, 27.542484, 50.874256>,  <31.059729, 26.863674, 51.134609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266064, 27.542484, 50.874256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593983, 27.388073, 51.043449>,  <31.790733, 27.295425, 51.144966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593983, 27.388073, 51.043449>,  <31.266064, 27.542484, 50.874256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593983, 27.388073, 51.043449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563816, 0.414808, -0.714175,
		0.100233, 0.823964, 0.557707,
		0.819795, -0.386028, 0.422987,
		31.839922, 27.272264, 51.170345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727360, 28.122526, 50.901901>,  <31.266064, 27.542484, 50.874256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727360, 28.122526, 50.901901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.950947, 27.791754, 50.926373>,  <32.085098, 27.593290, 50.941055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.950947, 27.791754, 50.926373>,  <31.727360, 28.122526, 50.901901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950947, 27.791754, 50.926373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456418, 0.245246, -0.855299,
		0.692270, 0.506006, 0.514510,
		0.558968, -0.826929, 0.061174,
		32.118637, 27.543674, 50.944725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473015, 28.406334, 50.825394>,  <31.727360, 28.122526, 50.901901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473015, 28.406334, 50.825394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434994, 28.019453, 50.731174>,  <32.412182, 27.787325, 50.674641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434994, 28.019453, 50.731174>,  <32.473015, 28.406334, 50.825394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434994, 28.019453, 50.731174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412949, 0.176994, -0.893390,
		0.905781, -0.182187, 0.382582,
		-0.095049, -0.967203, -0.235552,
		32.406479, 27.729292, 50.660507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099880, 28.183216, 50.365616>,  <32.473015, 28.406334, 50.825394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099880, 28.183216, 50.365616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807003, 27.919285, 50.298069>,  <32.631275, 27.760925, 50.257542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807003, 27.919285, 50.298069>,  <33.099880, 28.183216, 50.365616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807003, 27.919285, 50.298069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298919, -0.088539, -0.950162,
		0.611993, -0.746182, 0.262064,
		-0.732196, -0.659829, -0.168863,
		32.587345, 27.721336, 50.247410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550182, 27.631147, 50.009563>,  <33.099880, 28.183216, 50.365616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550182, 27.631147, 50.009563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154598, 27.601444, 49.958271>,  <32.917248, 27.583622, 49.927494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154598, 27.601444, 49.958271>,  <33.550182, 27.631147, 50.009563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154598, 27.601444, 49.958271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133763, -0.074999, -0.988171,
		0.063763, -0.994415, 0.084105,
		-0.988960, -0.074259, -0.128234,
		32.857910, 27.579166, 49.919800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550198, 27.221691, 49.518219>,  <33.550182, 27.631147, 50.009563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550198, 27.221691, 49.518219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175289, 27.361116, 49.520546>,  <32.950344, 27.444771, 49.521942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175289, 27.361116, 49.520546>,  <33.550198, 27.221691, 49.518219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175289, 27.361116, 49.520546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060673, 0.179536, -0.981878,
		-0.343290, -0.919930, -0.189422,
		-0.937268, 0.348562, 0.005818,
		32.894108, 27.465685, 49.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318325, 26.833366, 49.029346>,  <33.550198, 27.221691, 49.518219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318325, 26.833366, 49.029346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.080559, 27.153942, 49.055798>,  <32.937901, 27.346287, 49.071667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.080559, 27.153942, 49.055798>,  <33.318325, 26.833366, 49.029346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080559, 27.153942, 49.055798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120262, 0.169902, -0.978095,
		-0.795117, -0.573439, -0.197374,
		-0.594412, 0.801437, 0.066129,
		32.902237, 27.394373, 49.075638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881248, 26.783888, 48.495983>,  <33.318325, 26.833366, 49.029346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881248, 26.783888, 48.495983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894211, 27.169802, 48.600399>,  <32.901989, 27.401350, 48.663048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.894211, 27.169802, 48.600399>,  <32.881248, 26.783888, 48.495983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894211, 27.169802, 48.600399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171824, 0.251913, -0.952374,
		-0.984595, 0.075716, -0.157610,
		0.032406, 0.964783, 0.261042,
		32.903931, 27.459236, 48.678711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541008, 27.105453, 47.981850>,  <32.881248, 26.783888, 48.495983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541008, 27.105453, 47.981850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746342, 27.403730, 48.151760>,  <32.869541, 27.582697, 48.253708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746342, 27.403730, 48.151760>,  <32.541008, 27.105453, 47.981850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746342, 27.403730, 48.151760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416901, 0.215959, -0.882924,
		-0.750123, 0.630323, -0.200021,
		0.513331, 0.745690, 0.424779,
		32.900341, 27.627438, 48.279194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514893, 27.600670, 47.464092>,  <32.541008, 27.105453, 47.981850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514893, 27.600670, 47.464092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818714, 27.718225, 47.696198>,  <33.001007, 27.788759, 47.835461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818714, 27.718225, 47.696198>,  <32.514893, 27.600670, 47.464092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818714, 27.718225, 47.696198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561758, 0.153289, -0.812976,
		-0.327872, 0.943468, -0.048663,
		0.759557, 0.293889, 0.580260,
		33.046581, 27.806393, 47.870277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860292, 28.064489, 47.360405>,  <32.514893, 27.600670, 47.464092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860292, 28.064489, 47.360405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648813, 27.897318, 47.064888>,  <31.521927, 27.797016, 46.887577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648813, 27.897318, 47.064888>,  <31.860292, 28.064489, 47.360405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648813, 27.897318, 47.064888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651163, -0.358631, 0.668858,
		-0.544488, 0.834698, -0.082532,
		-0.528696, -0.417926, -0.738795,
		31.490204, 27.771940, 46.843250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192904, 28.119354, 47.533081>,  <31.860292, 28.064489, 47.360405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192904, 28.119354, 47.533081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169003, 27.822292, 47.266281>,  <31.154661, 27.644054, 47.106201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169003, 27.822292, 47.266281>,  <31.192904, 28.119354, 47.533081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169003, 27.822292, 47.266281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601019, -0.506740, 0.618055,
		-0.796998, 0.437812, -0.416070,
		-0.059752, -0.742655, -0.667004,
		31.151077, 27.599497, 47.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511372, 28.107853, 47.374577>,  <31.192904, 28.119354, 47.533081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511372, 28.107853, 47.374577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678488, 27.752195, 47.299873>,  <30.778757, 27.538801, 47.255051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.678488, 27.752195, 47.299873>,  <30.511372, 28.107853, 47.374577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678488, 27.752195, 47.299873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709552, -0.447699, 0.544152,
		-0.567441, -0.094824, -0.817936,
		0.417788, -0.889142, -0.186761,
		30.803823, 27.485453, 47.243847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925592, 27.660269, 47.336483>,  <30.511372, 28.107853, 47.374577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925592, 27.660269, 47.336483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251831, 27.441727, 47.412693>,  <30.447575, 27.310602, 47.458420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251831, 27.441727, 47.412693>,  <29.925592, 27.660269, 47.336483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251831, 27.441727, 47.412693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471743, -0.437197, 0.765713,
		-0.335052, -0.714393, -0.614315,
		0.815597, -0.546353, 0.190527,
		30.496510, 27.277821, 47.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636463, 27.131144, 47.474701>,  <29.925592, 27.660269, 47.336483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636463, 27.131144, 47.474701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993719, 27.069239, 47.643623>,  <30.208073, 27.032095, 47.744976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993719, 27.069239, 47.643623>,  <29.636463, 27.131144, 47.474701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993719, 27.069239, 47.643623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446477, -0.418575, 0.790856,
		0.054374, -0.894899, -0.442944,
		0.893142, -0.154762, 0.422311,
		30.261662, 27.022810, 47.770317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594072, 26.485559, 47.737366>,  <29.636463, 27.131144, 47.474701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594072, 26.485559, 47.737366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.888266, 26.668444, 47.937378>,  <30.064781, 26.778173, 48.057384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.888266, 26.668444, 47.937378>,  <29.594072, 26.485559, 47.737366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888266, 26.668444, 47.937378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436746, -0.244296, 0.865778,
		0.517996, -0.855149, 0.020010,
		0.735481, 0.457209, 0.500027,
		30.108910, 26.805607, 48.087387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585203, 26.083803, 48.321732>,  <29.594072, 26.485559, 47.737366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585203, 26.083803, 48.321732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798491, 26.410868, 48.408550>,  <29.926462, 26.607107, 48.460640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.798491, 26.410868, 48.408550>,  <29.585203, 26.083803, 48.321732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798491, 26.410868, 48.408550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349310, -0.020873, 0.936775,
		0.770494, -0.575321, 0.274488,
		0.533217, 0.817661, 0.217048,
		29.958456, 26.656166, 48.473663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833002, 25.845757, 48.880547>,  <29.585203, 26.083803, 48.321732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833002, 25.845757, 48.880547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.812302, 26.245060, 48.869244>,  <29.799881, 26.484642, 48.862461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.812302, 26.245060, 48.869244>,  <29.833002, 25.845757, 48.880547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812302, 26.245060, 48.869244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557301, -0.005389, 0.830293,
		0.828696, 0.058719, 0.556610,
		-0.051753, 0.998260, -0.028258,
		29.796776, 26.544538, 48.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038332, 26.064848, 49.520584>,  <29.833002, 25.845757, 48.880547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038332, 26.064848, 49.520584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842834, 26.368309, 49.348270>,  <29.725536, 26.550386, 49.244884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842834, 26.368309, 49.348270>,  <30.038332, 26.064848, 49.520584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842834, 26.368309, 49.348270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513395, 0.149124, 0.845096,
		0.705375, 0.634197, 0.316606,
		-0.488744, 0.758654, -0.430782,
		29.696211, 26.595905, 49.219036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009205, 26.580837, 50.030979>,  <30.038332, 26.064848, 49.520584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009205, 26.580837, 50.030979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.711559, 26.718716, 49.802074>,  <29.532972, 26.801443, 49.664734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.711559, 26.718716, 49.802074>,  <30.009205, 26.580837, 50.030979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711559, 26.718716, 49.802074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617613, -0.028429, 0.785968,
		0.254651, 0.938284, 0.234043,
		-0.744115, 0.344695, -0.572257,
		29.488325, 26.822124, 49.630398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666275, 26.935677, 50.508587>,  <30.009205, 26.580837, 50.030979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666275, 26.935677, 50.508587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402380, 26.899866, 50.210129>,  <29.244043, 26.878380, 50.031055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402380, 26.899866, 50.210129>,  <29.666275, 26.935677, 50.508587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402380, 26.899866, 50.210129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751408, 0.063505, 0.656775,
		-0.011415, 0.993958, -0.109167,
		-0.659740, -0.089526, -0.746143,
		29.204458, 26.873009, 49.986286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254431, 27.560394, 50.502464>,  <29.666275, 26.935677, 50.508587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254431, 27.560394, 50.502464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.051785, 27.265442, 50.323753>,  <28.930197, 27.088470, 50.216526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.051785, 27.265442, 50.323753>,  <29.254431, 27.560394, 50.502464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051785, 27.265442, 50.323753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759985, 0.137226, 0.635289,
		-0.407139, 0.661393, -0.629918,
		-0.506617, -0.737379, -0.446779,
		28.899799, 27.044228, 50.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531956, 27.761362, 50.567081>,  <29.254431, 27.560394, 50.502464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531956, 27.761362, 50.567081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504622, 27.374418, 50.469475>,  <28.488220, 27.142252, 50.410912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504622, 27.374418, 50.469475>,  <28.531956, 27.761362, 50.567081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504622, 27.374418, 50.469475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775296, -0.102445, 0.623234,
		-0.627890, 0.231778, -0.742989,
		-0.068337, -0.967359, -0.244020,
		28.484121, 27.084211, 50.396267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792274, 27.674850, 50.370403>,  <28.531956, 27.761362, 50.567081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792274, 27.674850, 50.370403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.976799, 27.338686, 50.484177>,  <28.087513, 27.136988, 50.552441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.976799, 27.338686, 50.484177>,  <27.792274, 27.674850, 50.370403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976799, 27.338686, 50.484177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695739, -0.143713, 0.703771,
		-0.550580, -0.522548, -0.651003,
		0.461312, -0.840411, 0.284431,
		28.115192, 27.086563, 50.569508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167906, 27.846090, 49.689754>,  <27.792274, 27.674850, 50.370403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167906, 27.846090, 49.689754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.866350, 28.103863, 49.740917>,  <27.685417, 28.258526, 49.771614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.866350, 28.103863, 49.740917>,  <28.167906, 27.846090, 49.689754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866350, 28.103863, 49.740917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433794, 0.634453, -0.639760,
		-0.493429, -0.426825, -0.757858,
		-0.753891, 0.644430, 0.127903,
		27.640182, 28.297192, 49.779289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701738, 27.996525, 49.086445>,  <28.167906, 27.846090, 49.689754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701738, 27.996525, 49.086445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.636766, 28.331963, 49.294437>,  <27.597784, 28.533224, 49.419231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.636766, 28.331963, 49.294437>,  <27.701738, 27.996525, 49.086445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636766, 28.331963, 49.294437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150195, 0.541849, -0.826947,
		-0.975222, -0.056222, -0.213964,
		-0.162429, 0.838593, 0.519979,
		27.588037, 28.583540, 49.450432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334574, 28.516327, 48.528313>,  <27.701738, 27.996525, 49.086445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334574, 28.516327, 48.528313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.480560, 28.737833, 48.827682>,  <27.568151, 28.870737, 49.007305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.480560, 28.737833, 48.827682>,  <27.334574, 28.516327, 48.528313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480560, 28.737833, 48.827682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154557, 0.756687, -0.635246,
		-0.918103, 0.347518, 0.190576,
		0.364965, 0.553766, 0.748427,
		27.590050, 28.903963, 49.052212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144600, 29.229319, 48.470612>,  <27.334574, 28.516327, 48.528313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144600, 29.229319, 48.470612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.459984, 29.251509, 48.715645>,  <27.649214, 29.264822, 48.862663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.459984, 29.251509, 48.715645>,  <27.144600, 29.229319, 48.470612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459984, 29.251509, 48.715645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431274, 0.660239, -0.614888,
		-0.438558, 0.749004, 0.496648,
		0.788460, 0.055473, 0.612579,
		27.696522, 29.268150, 48.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181269, 29.913866, 48.500504>,  <27.144600, 29.229319, 48.470612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181269, 29.913866, 48.500504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.534468, 29.795736, 48.646435>,  <27.746387, 29.724859, 48.733994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.534468, 29.795736, 48.646435>,  <27.181269, 29.913866, 48.500504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534468, 29.795736, 48.646435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468273, 0.607518, -0.641595,
		-0.032159, 0.737365, 0.674729,
		0.882999, -0.295324, 0.364825,
		27.799368, 29.707140, 48.755882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598238, 30.482428, 48.559532>,  <27.181269, 29.913866, 48.500504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598238, 30.482428, 48.559532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.873608, 30.193932, 48.590221>,  <28.038830, 30.020834, 48.608635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.873608, 30.193932, 48.590221>,  <27.598238, 30.482428, 48.559532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873608, 30.193932, 48.590221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559843, 0.461138, -0.688424,
		0.461138, 0.516881, 0.721239,
		0.688424, -0.721239, 0.076724,
		28.080135, 29.977560, 48.613239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240589, 30.758564, 48.624413>,  <27.598238, 30.482428, 48.559532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240589, 30.758564, 48.624413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.316347, 30.399452, 48.465355>,  <28.361803, 30.183985, 48.369923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.316347, 30.399452, 48.465355>,  <28.240589, 30.758564, 48.624413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316347, 30.399452, 48.465355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511595, 0.435884, -0.740456,
		0.838093, -0.063191, 0.541855,
		0.189396, -0.897782, -0.397640,
		28.373165, 30.130117, 48.346062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827658, 30.974892, 49.148705>,  <28.240589, 30.758564, 48.624413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827658, 30.974892, 49.148705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.898308, 31.333887, 49.310356>,  <28.940699, 31.549284, 49.407345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.898308, 31.333887, 49.310356>,  <28.827658, 30.974892, 49.148705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898308, 31.333887, 49.310356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339072, -0.329970, 0.880994,
		0.924031, -0.292636, 0.246031,
		0.176627, 0.897488, 0.404127,
		28.951296, 31.603134, 49.431595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083967, 30.841728, 49.829361>,  <28.827658, 30.974892, 49.148705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083967, 30.841728, 49.829361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.947119, 31.217585, 49.827160>,  <28.865009, 31.443098, 49.825840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.947119, 31.217585, 49.827160>,  <29.083967, 30.841728, 49.829361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947119, 31.217585, 49.827160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418102, -0.146977, 0.896431,
		0.841513, 0.308991, 0.443149,
		-0.342122, 0.939640, -0.005506,
		28.844482, 31.499477, 49.825508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053286, 31.006386, 50.537014>,  <29.083967, 30.841728, 49.829361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053286, 31.006386, 50.537014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810553, 31.284210, 50.382435>,  <28.664913, 31.450905, 50.289688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.810553, 31.284210, 50.382435>,  <29.053286, 31.006386, 50.537014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810553, 31.284210, 50.382435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630266, -0.124255, 0.766372,
		0.484274, 0.708622, 0.513161,
		-0.606830, 0.694562, -0.386446,
		28.628504, 31.492579, 50.266502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046877, 31.537443, 50.990940>,  <29.053286, 31.006386, 50.537014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046877, 31.537443, 50.990940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.715012, 31.569721, 50.769978>,  <28.515892, 31.589088, 50.637402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.715012, 31.569721, 50.769978>,  <29.046877, 31.537443, 50.990940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715012, 31.569721, 50.769978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558041, -0.091730, 0.824728,
		0.015880, 0.992509, 0.121136,
		-0.829661, 0.080696, -0.552404,
		28.466114, 31.593929, 50.604256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660629, 32.134609, 51.240753>,  <29.046877, 31.537443, 50.990940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660629, 32.134609, 51.240753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.383904, 31.925097, 51.041935>,  <28.217869, 31.799389, 50.922646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.383904, 31.925097, 51.041935>,  <28.660629, 32.134609, 51.240753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383904, 31.925097, 51.041935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625930, 0.091811, 0.774457,
		-0.360009, 0.846893, -0.391364,
		-0.691813, -0.523778, -0.497043,
		28.176359, 31.767963, 50.892822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942205, 32.535992, 51.216091>,  <28.660629, 32.134609, 51.240753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942205, 32.535992, 51.216091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.840828, 32.159626, 51.126251>,  <27.780001, 31.933805, 51.072350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.840828, 32.159626, 51.126251>,  <27.942205, 32.535992, 51.216091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840828, 32.159626, 51.126251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740779, 0.039464, 0.670589,
		-0.622104, 0.336334, -0.707012,
		-0.253444, -0.940915, -0.224598,
		27.764795, 31.877352, 51.058872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160437, 32.552826, 51.149315>,  <27.942205, 32.535992, 51.216091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160437, 32.552826, 51.149315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.264896, 32.168934, 51.190739>,  <27.327572, 31.938599, 51.215591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.264896, 32.168934, 51.190739>,  <27.160437, 32.552826, 51.149315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264896, 32.168934, 51.190739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804568, -0.157133, 0.572695,
		-0.533359, -0.232878, -0.813201,
		0.261149, -0.959728, 0.103557,
		27.343241, 31.881016, 51.221806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553982, 32.208370, 51.163517>,  <27.160437, 32.552826, 51.149315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553982, 32.208370, 51.163517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.823044, 31.972925, 51.342876>,  <26.984482, 31.831657, 51.450493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.823044, 31.972925, 51.342876>,  <26.553982, 32.208370, 51.163517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823044, 31.972925, 51.342876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620076, -0.117720, 0.775660,
		-0.403780, -0.799795, -0.444172,
		0.672657, -0.588617, 0.448401,
		27.024841, 31.796341, 51.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245211, 31.586296, 51.445869>,  <26.553982, 32.208370, 51.163517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245211, 31.586296, 51.445869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.576025, 31.641150, 51.663937>,  <26.774513, 31.674061, 51.794777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.576025, 31.641150, 51.663937>,  <26.245211, 31.586296, 51.445869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576025, 31.641150, 51.663937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509094, -0.228559, 0.829809,
		0.238397, -0.963823, -0.119213,
		0.827037, 0.137134, 0.545165,
		26.824137, 31.682289, 51.827484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.218494, 34.962814, 39.191376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457161, 34.844521, 39.489780>,  <36.600361, 34.773544, 39.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457161, 34.844521, 39.489780>,  <36.218494, 34.962814, 39.191376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457161, 34.844521, 39.489780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802477, -0.225379, 0.552480,
		0.004746, -0.928302, -0.371798,
		0.596664, -0.295738, 0.746011,
		36.636162, 34.755798, 39.713585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860474, 34.257339, 39.462612>,  <36.218494, 34.962814, 39.191376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860474, 34.257339, 39.462612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080605, 34.423656, 39.752235>,  <36.212685, 34.523445, 39.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080605, 34.423656, 39.752235>,  <35.860474, 34.257339, 39.462612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080605, 34.423656, 39.752235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777468, -0.061010, 0.625956,
		0.304441, -0.907412, 0.289688,
		0.550326, 0.415790, 0.724058,
		36.245701, 34.548393, 39.969452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778622, 33.886074, 40.115734>,  <35.860474, 34.257339, 39.462612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778622, 33.886074, 40.115734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933102, 34.241802, 40.213684>,  <36.025791, 34.455238, 40.272453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933102, 34.241802, 40.213684>,  <35.778622, 33.886074, 40.115734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933102, 34.241802, 40.213684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655751, 0.078003, 0.750937,
		0.648720, -0.450590, 0.613295,
		0.386204, 0.889317, 0.244873,
		36.048962, 34.508598, 40.287148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851452, 33.835934, 40.776466>,  <35.778622, 33.886074, 40.115734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851452, 33.835934, 40.776466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846794, 34.229755, 40.706593>,  <35.844002, 34.466049, 40.664669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846794, 34.229755, 40.706593>,  <35.851452, 33.835934, 40.776466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846794, 34.229755, 40.706593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672091, 0.121645, 0.730409,
		0.740377, 0.125906, 0.660295,
		-0.011641, 0.984556, -0.174684,
		35.843300, 34.525124, 40.654186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784798, 34.188713, 41.350677>,  <35.851452, 33.835934, 40.776466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784798, 34.188713, 41.350677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682938, 34.502182, 41.124050>,  <35.621822, 34.690266, 40.988071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682938, 34.502182, 41.124050>,  <35.784798, 34.188713, 41.350677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682938, 34.502182, 41.124050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674267, 0.276087, 0.684938,
		0.693192, 0.556442, 0.458101,
		-0.254653, 0.783676, -0.566572,
		35.606541, 34.737286, 40.954079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734917, 34.734222, 41.820110>,  <35.784798, 34.188713, 41.350677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734917, 34.734222, 41.820110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509811, 34.835075, 41.505219>,  <35.374748, 34.895588, 41.316284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509811, 34.835075, 41.505219>,  <35.734917, 34.734222, 41.820110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509811, 34.835075, 41.505219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702299, 0.356453, 0.616213,
		0.435976, 0.899651, -0.023526,
		-0.562762, 0.252132, -0.787228,
		35.340984, 34.910713, 41.269051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615707, 35.467281, 42.002739>,  <35.734917, 34.734222, 41.820110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615707, 35.467281, 42.002739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356567, 35.350822, 41.721165>,  <35.201084, 35.280949, 41.552219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356567, 35.350822, 41.721165>,  <35.615707, 35.467281, 42.002739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356567, 35.350822, 41.721165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735522, -0.001400, 0.677500,
		-0.198237, 0.956678, -0.213238,
		-0.647851, -0.291146, -0.703935,
		35.162212, 35.263477, 41.509983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109093, 35.904137, 42.146778>,  <35.615707, 35.467281, 42.002739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109093, 35.904137, 42.146778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946270, 35.612648, 41.926498>,  <34.848576, 35.437756, 41.794331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946270, 35.612648, 41.926498>,  <35.109093, 35.904137, 42.146778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946270, 35.612648, 41.926498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778114, -0.039105, 0.626904,
		-0.478376, 0.683689, -0.551113,
		-0.407056, -0.728725, -0.550695,
		34.824154, 35.394032, 41.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432121, 36.055252, 42.136806>,  <35.109093, 35.904137, 42.146778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432121, 36.055252, 42.136806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429718, 35.667900, 42.037041>,  <34.428276, 35.435490, 41.977180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429718, 35.667900, 42.037041>,  <34.432121, 36.055252, 42.136806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429718, 35.667900, 42.037041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733777, -0.165180, 0.659005,
		-0.679364, 0.186978, -0.709580,
		-0.006011, -0.968378, -0.249417,
		34.427914, 35.377388, 41.962215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751160, 35.872669, 42.032955>,  <34.432121, 36.055252, 42.136806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751160, 35.872669, 42.032955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945885, 35.528843, 42.095142>,  <34.062717, 35.322548, 42.132454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945885, 35.528843, 42.095142>,  <33.751160, 35.872669, 42.032955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945885, 35.528843, 42.095142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583586, -0.187609, 0.790083,
		-0.649957, -0.475349, -0.592958,
		0.486809, -0.859562, 0.155469,
		34.091927, 35.270973, 42.141785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254013, 35.346581, 42.031086>,  <33.751160, 35.872669, 42.032955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254013, 35.346581, 42.031086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556335, 35.193573, 42.243664>,  <33.737728, 35.101768, 42.371212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556335, 35.193573, 42.243664>,  <33.254013, 35.346581, 42.031086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556335, 35.193573, 42.243664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641452, -0.269539, 0.718254,
		-0.131496, -0.883761, -0.449084,
		0.755810, -0.382513, 0.531446,
		33.783077, 35.078819, 42.403099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967800, 34.780460, 42.295582>,  <33.254013, 35.346581, 42.031086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967800, 34.780460, 42.295582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275383, 34.807827, 42.549831>,  <33.459934, 34.824245, 42.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275383, 34.807827, 42.549831>,  <32.967800, 34.780460, 42.295582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275383, 34.807827, 42.549831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523725, -0.502776, 0.687698,
		0.366625, -0.861705, -0.350785,
		0.768960, 0.068412, 0.635626,
		33.506069, 34.828350, 42.740520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913078, 34.265602, 41.752258>,  <32.967800, 34.780460, 42.295582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913078, 34.265602, 41.752258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676552, 33.979458, 41.603336>,  <32.534637, 33.807774, 41.513985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676552, 33.979458, 41.603336>,  <32.913078, 34.265602, 41.752258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676552, 33.979458, 41.603336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162755, 0.346302, -0.923897,
		0.789845, -0.606910, -0.088347,
		-0.591317, -0.715357, -0.372303,
		32.499157, 33.764851, 41.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300087, 33.803333, 41.291805>,  <32.913078, 34.265602, 41.752258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300087, 33.803333, 41.291805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914200, 33.773682, 41.190754>,  <32.682667, 33.755890, 41.130123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914200, 33.773682, 41.190754>,  <33.300087, 33.803333, 41.291805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914200, 33.773682, 41.190754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239702, 0.149547, -0.959259,
		0.108883, -0.985972, -0.126503,
		-0.964722, -0.074124, -0.252623,
		32.624783, 33.751442, 41.114967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219620, 33.332218, 40.745136>,  <33.300087, 33.803333, 41.291805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219620, 33.332218, 40.745136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901707, 33.574104, 40.724590>,  <32.710960, 33.719234, 40.712265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901707, 33.574104, 40.724590>,  <33.219620, 33.332218, 40.745136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901707, 33.574104, 40.724590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165637, 0.134721, -0.976942,
		-0.583853, -0.784964, -0.207237,
		-0.794783, 0.604716, -0.051362,
		32.663273, 33.755520, 40.709183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888874, 33.142300, 40.124207>,  <33.219620, 33.332218, 40.745136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888874, 33.142300, 40.124207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710030, 33.490734, 40.205505>,  <32.602722, 33.699795, 40.254284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710030, 33.490734, 40.205505>,  <32.888874, 33.142300, 40.124207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710030, 33.490734, 40.205505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070519, 0.192193, -0.978820,
		-0.891696, -0.451972, -0.024503,
		-0.447108, 0.871082, 0.203250,
		32.575897, 33.752060, 40.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196560, 33.163361, 39.739014>,  <32.888874, 33.142300, 40.124207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196560, 33.163361, 39.739014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331673, 33.535816, 39.793987>,  <32.412739, 33.759289, 39.826969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331673, 33.535816, 39.793987>,  <32.196560, 33.163361, 39.739014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331673, 33.535816, 39.793987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238913, 0.226050, -0.944363,
		-0.910399, 0.286152, 0.298816,
		0.337779, 0.931138, 0.137431,
		32.433006, 33.815159, 39.835217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647741, 33.581059, 39.451298>,  <32.196560, 33.163361, 39.739014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647741, 33.581059, 39.451298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951839, 33.839561, 39.477768>,  <32.134296, 33.994663, 39.493649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951839, 33.839561, 39.477768>,  <31.647741, 33.581059, 39.451298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951839, 33.839561, 39.477768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260970, 0.397095, -0.879892,
		-0.594916, 0.651663, 0.470542,
		0.760243, 0.646260, 0.066174,
		32.179913, 34.033440, 39.497620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400200, 34.118702, 39.149685>,  <31.647741, 33.581059, 39.451298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400200, 34.118702, 39.149685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795826, 34.177517, 39.145145>,  <32.033203, 34.212807, 39.142422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795826, 34.177517, 39.145145>,  <31.400200, 34.118702, 39.149685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795826, 34.177517, 39.145145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052011, 0.275809, -0.959804,
		-0.137997, 0.949900, 0.280441,
		0.989066, 0.147036, -0.011345,
		32.092545, 34.221626, 39.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453184, 34.694008, 38.769146>,  <31.400200, 34.118702, 39.149685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453184, 34.694008, 38.769146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831829, 34.566769, 38.748215>,  <32.059017, 34.490425, 38.735657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831829, 34.566769, 38.748215>,  <31.453184, 34.694008, 38.769146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831829, 34.566769, 38.748215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056332, 0.323045, -0.944705,
		0.317416, 0.891321, 0.323718,
		0.946612, -0.318100, -0.052330,
		32.115814, 34.471340, 38.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011120, 35.228645, 38.644672>,  <31.453184, 34.694008, 38.769146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011120, 35.228645, 38.644672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191051, 34.891922, 38.525333>,  <32.299011, 34.689888, 38.453732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191051, 34.891922, 38.525333>,  <32.011120, 35.228645, 38.644672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191051, 34.891922, 38.525333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053010, 0.358629, -0.931974,
		0.891542, 0.403410, 0.205945,
		0.449825, -0.841811, -0.298349,
		32.326000, 34.639378, 38.435829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101948, 35.282436, 37.921471>,  <32.011120, 35.228645, 38.644672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101948, 35.282436, 37.921471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235966, 34.905704, 37.932041>,  <32.316376, 34.679665, 37.938385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235966, 34.905704, 37.932041>,  <32.101948, 35.282436, 37.921471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235966, 34.905704, 37.932041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129843, 0.018375, -0.991364,
		0.933214, 0.335580, 0.128446,
		0.335043, -0.941833, 0.026425,
		32.336479, 34.623154, 37.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722523, 35.220921, 37.504005>,  <32.101948, 35.282436, 37.921471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722523, 35.220921, 37.504005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592125, 34.843086, 37.519432>,  <32.513885, 34.616386, 37.528690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592125, 34.843086, 37.519432>,  <32.722523, 35.220921, 37.504005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592125, 34.843086, 37.519432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085430, -0.070067, -0.993878,
		0.941504, -0.320703, 0.103538,
		-0.325994, -0.944585, 0.038571,
		32.494328, 34.559711, 37.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181286, 34.697620, 37.096928>,  <32.722523, 35.220921, 37.504005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181286, 34.697620, 37.096928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819199, 34.527767, 37.103394>,  <32.601944, 34.425854, 37.107273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819199, 34.527767, 37.103394>,  <33.181286, 34.697620, 37.096928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819199, 34.527767, 37.103394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018617, -0.077643, -0.996807,
		0.424532, -0.902031, 0.078189,
		-0.905222, -0.424632, 0.016169,
		32.547630, 34.400379, 37.108246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293316, 34.086578, 36.673492>,  <33.181286, 34.697620, 37.096928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293316, 34.086578, 36.673492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899921, 34.158463, 36.682064>,  <32.663883, 34.201591, 36.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899921, 34.158463, 36.682064>,  <33.293316, 34.086578, 36.673492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899921, 34.158463, 36.682064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032535, -0.059085, -0.997723,
		-0.178035, -0.981943, 0.063956,
		-0.983486, 0.179711, 0.021429,
		32.604874, 34.212376, 36.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356842, 33.557220, 37.285446>,  <33.293316, 34.086578, 36.673492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356842, 33.557220, 37.285446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690884, 33.624737, 37.494865>,  <33.891308, 33.665249, 37.620518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690884, 33.624737, 37.494865>,  <33.356842, 33.557220, 37.285446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690884, 33.624737, 37.494865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436327, -0.376326, 0.817311,
		0.334982, -0.910981, -0.240624,
		0.835108, 0.168793, 0.523548,
		33.941418, 33.675373, 37.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672928, 32.895580, 37.658203>,  <33.356842, 33.557220, 37.285446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672928, 32.895580, 37.658203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735580, 33.236767, 37.857365>,  <33.773174, 33.441479, 37.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735580, 33.236767, 37.857365>,  <33.672928, 32.895580, 37.658203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735580, 33.236767, 37.857365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560196, -0.338465, 0.756056,
		0.813416, -0.397352, 0.424814,
		0.156636, 0.852967, 0.497907,
		33.782570, 33.492657, 38.006737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345757, 32.962738, 37.957989>,  <33.672928, 32.895580, 37.658203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345757, 32.962738, 37.957989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711716, 33.017811, 38.109783>,  <34.931290, 33.050854, 38.200859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711716, 33.017811, 38.109783>,  <34.345757, 32.962738, 37.957989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711716, 33.017811, 38.109783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154475, -0.749101, 0.644194,
		0.372970, -0.647991, -0.664080,
		0.914894, 0.137681, 0.379490,
		34.986183, 33.059116, 38.223629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735531, 32.383453, 37.796394>,  <34.345757, 32.962738, 37.957989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735531, 32.383453, 37.796394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837357, 32.580585, 38.129215>,  <34.898453, 32.698864, 38.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837357, 32.580585, 38.129215>,  <34.735531, 32.383453, 37.796394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837357, 32.580585, 38.129215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182843, -0.820352, 0.541840,
		0.949612, -0.290071, -0.118725,
		0.254568, 0.492829, 0.832054,
		34.913727, 32.728436, 38.378830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870060, 31.779217, 38.133301>,  <34.735531, 32.383453, 37.796394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870060, 31.779217, 38.133301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851765, 32.063133, 38.414471>,  <34.840786, 32.233482, 38.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851765, 32.063133, 38.414471>,  <34.870060, 31.779217, 38.133301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851765, 32.063133, 38.414471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317380, -0.677529, 0.663495,
		0.947195, -0.192746, 0.256263,
		-0.045740, 0.709791, 0.702925,
		34.838043, 32.276070, 38.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181557, 31.495943, 38.768852>,  <34.870060, 31.779217, 38.133301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181557, 31.495943, 38.768852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935596, 31.797606, 38.861061>,  <34.788021, 31.978603, 38.916386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935596, 31.797606, 38.861061>,  <35.181557, 31.495943, 38.768852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935596, 31.797606, 38.861061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484472, -0.591913, 0.644148,
		0.622238, 0.284407, 0.729337,
		-0.614904, 0.754156, 0.230523,
		34.751125, 32.023853, 38.930218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276348, 31.752317, 39.506176>,  <35.181557, 31.495943, 38.768852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276348, 31.752317, 39.506176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910725, 31.871799, 39.396427>,  <34.691353, 31.943489, 39.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910725, 31.871799, 39.396427>,  <35.276348, 31.752317, 39.506176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910725, 31.871799, 39.396427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402119, -0.579078, 0.709203,
		0.052959, 0.758580, 0.649423,
		-0.914054, 0.298704, -0.274373,
		34.636509, 31.961411, 39.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874409, 31.631912, 40.206448>,  <35.276348, 31.752317, 39.506176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874409, 31.631912, 40.206448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568176, 31.704147, 39.959461>,  <34.384438, 31.747488, 39.811268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568176, 31.704147, 39.959461>,  <34.874409, 31.631912, 40.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568176, 31.704147, 39.959461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578425, -0.613355, 0.537791,
		-0.281609, 0.768884, 0.574033,
		-0.765585, 0.180588, -0.617468,
		34.338501, 31.758324, 39.774220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357319, 31.940487, 40.653915>,  <34.874409, 31.631912, 40.206448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357319, 31.940487, 40.653915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183292, 31.786680, 40.328247>,  <34.078876, 31.694397, 40.132847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183292, 31.786680, 40.328247>,  <34.357319, 31.940487, 40.653915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183292, 31.786680, 40.328247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629862, -0.516191, 0.580362,
		-0.643424, 0.765307, -0.017617,
		-0.435062, -0.384515, -0.814168,
		34.052773, 31.671326, 40.083996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681957, 32.005768, 40.860641>,  <34.357319, 31.940487, 40.653915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681957, 32.005768, 40.860641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694530, 31.749462, 40.553802>,  <33.702072, 31.595678, 40.369701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694530, 31.749462, 40.553802>,  <33.681957, 32.005768, 40.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694530, 31.749462, 40.553802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545908, -0.653894, 0.523839,
		-0.837256, 0.402298, -0.370350,
		0.031431, -0.640764, -0.767094,
		33.703960, 31.557234, 40.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000858, 31.908348, 40.764923>,  <33.681957, 32.005768, 40.860641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000858, 31.908348, 40.764923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179806, 31.578079, 40.627445>,  <33.287174, 31.379917, 40.544960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179806, 31.578079, 40.627445>,  <33.000858, 31.908348, 40.764923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179806, 31.578079, 40.627445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597225, -0.561854, 0.572400,
		-0.665722, -0.050810, -0.744468,
		0.447366, -0.825674, -0.343694,
		33.314014, 31.330378, 40.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450294, 31.489212, 40.726036>,  <33.000858, 31.908348, 40.764923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450294, 31.489212, 40.726036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764023, 31.241261, 40.716278>,  <32.952259, 31.092489, 40.710423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764023, 31.241261, 40.716278>,  <32.450294, 31.489212, 40.726036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764023, 31.241261, 40.716278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477358, -0.628168, 0.614438,
		-0.396199, -0.470272, -0.788588,
		0.784319, -0.619879, -0.024392,
		32.999317, 31.055296, 40.708961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132381, 30.874786, 40.836876>,  <32.450294, 31.489212, 40.726036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132381, 30.874786, 40.836876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507282, 30.796869, 40.952541>,  <32.732224, 30.750118, 41.021942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507282, 30.796869, 40.952541>,  <32.132381, 30.874786, 40.836876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507282, 30.796869, 40.952541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342790, -0.666357, 0.662166,
		0.063704, -0.719738, -0.691317,
		0.937250, -0.194794, 0.289168,
		32.788456, 30.738432, 41.039291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121235, 30.127649, 40.973961>,  <32.132381, 30.874786, 40.836876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121235, 30.127649, 40.973961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433769, 30.287378, 41.165813>,  <32.621292, 30.383217, 41.280926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433769, 30.287378, 41.165813>,  <32.121235, 30.127649, 40.973961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433769, 30.287378, 41.165813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173007, -0.599811, 0.781214,
		0.599647, -0.693373, -0.399571,
		0.781340, 0.399324, 0.479633,
		32.668171, 30.407175, 41.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501900, 29.537876, 41.224533>,  <32.121235, 30.127649, 40.973961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501900, 29.537876, 41.224533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608231, 29.848124, 41.453533>,  <32.672028, 30.034271, 41.590931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608231, 29.848124, 41.453533>,  <32.501900, 29.537876, 41.224533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608231, 29.848124, 41.453533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131497, -0.617487, 0.775512,
		0.955010, -0.130871, -0.266137,
		0.265828, 0.775618, 0.572497,
		32.687981, 30.080809, 41.625282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950352, 29.258715, 41.725895>,  <32.501900, 29.537876, 41.224533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950352, 29.258715, 41.725895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894001, 29.617910, 41.892635>,  <32.860191, 29.833427, 41.992680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894001, 29.617910, 41.892635>,  <32.950352, 29.258715, 41.725895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894001, 29.617910, 41.892635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219080, -0.382336, 0.897677,
		0.965483, 0.217788, -0.142869,
		-0.140879, 0.897991, 0.416851,
		32.851738, 29.887308, 42.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586128, 29.524473, 42.039253>,  <32.950352, 29.258715, 41.725895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586128, 29.524473, 42.039253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295525, 29.731003, 42.220623>,  <33.121162, 29.854921, 42.329445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295525, 29.731003, 42.220623>,  <33.586128, 29.524473, 42.039253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295525, 29.731003, 42.220623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189001, -0.484255, 0.854269,
		0.660651, 0.706334, 0.254231,
		-0.726512, 0.516324, 0.453421,
		33.077572, 29.885900, 42.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779285, 29.796986, 42.727394>,  <33.586128, 29.524473, 42.039253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779285, 29.796986, 42.727394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380013, 29.807581, 42.749062>,  <33.140450, 29.813938, 42.762062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380013, 29.807581, 42.749062>,  <33.779285, 29.796986, 42.727394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380013, 29.807581, 42.749062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041781, -0.343878, 0.938084,
		0.043478, 0.938641, 0.342145,
		-0.998180, 0.026490, 0.054169,
		33.080559, 29.815529, 42.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731632, 29.932528, 43.458187>,  <33.779285, 29.796986, 42.727394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731632, 29.932528, 43.458187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402641, 29.762390, 43.307125>,  <33.205246, 29.660307, 43.216488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402641, 29.762390, 43.307125>,  <33.731632, 29.932528, 43.458187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402641, 29.762390, 43.307125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163051, -0.459775, 0.872939,
		-0.544933, 0.779545, 0.308800,
		-0.822473, -0.425343, -0.377652,
		33.155899, 29.634787, 43.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273300, 29.949764, 43.928925>,  <33.731632, 29.932528, 43.458187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273300, 29.949764, 43.928925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066982, 29.708935, 43.685131>,  <32.943192, 29.564438, 43.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066982, 29.708935, 43.685131>,  <33.273300, 29.949764, 43.928925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066982, 29.708935, 43.685131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346769, -0.503812, 0.791154,
		-0.783396, 0.619420, 0.051083,
		-0.515793, -0.602073, -0.609480,
		32.912243, 29.528313, 43.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602047, 29.922834, 44.137211>,  <33.273300, 29.949764, 43.928925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602047, 29.922834, 44.137211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605820, 29.580828, 43.929806>,  <32.608082, 29.375624, 43.805363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605820, 29.580828, 43.929806>,  <32.602047, 29.922834, 44.137211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605820, 29.580828, 43.929806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507928, -0.450757, 0.734048,
		-0.861348, 0.256448, -0.438537,
		0.009429, -0.855016, -0.518516,
		32.608646, 29.324324, 43.774250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863634, 29.743423, 43.992348>,  <32.602047, 29.922834, 44.137211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863634, 29.743423, 43.992348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075382, 29.406872, 43.948807>,  <32.202431, 29.204941, 43.922684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075382, 29.406872, 43.948807>,  <31.863634, 29.743423, 43.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075382, 29.406872, 43.948807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431265, -0.377363, 0.819517,
		-0.730600, -0.386884, -0.562622,
		0.529370, -0.841379, -0.108852,
		32.234192, 29.154459, 43.916153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361185, 29.127705, 44.152206>,  <31.863634, 29.743423, 43.992348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361185, 29.127705, 44.152206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732409, 28.986771, 44.200485>,  <31.955143, 28.902210, 44.229454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732409, 28.986771, 44.200485>,  <31.361185, 29.127705, 44.152206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732409, 28.986771, 44.200485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271343, -0.417672, 0.867135,
		-0.255109, -0.837502, -0.483228,
		0.928058, -0.352334, 0.120698,
		32.010826, 28.881071, 44.236694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339212, 28.361141, 44.238926>,  <31.361185, 29.127705, 44.152206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339212, 28.361141, 44.238926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721237, 28.415890, 44.344090>,  <31.950453, 28.448738, 44.407188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721237, 28.415890, 44.344090>,  <31.339212, 28.361141, 44.238926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721237, 28.415890, 44.344090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159165, -0.511441, 0.844449,
		0.250042, -0.848348, -0.466674,
		0.955063, 0.136870, 0.262909,
		32.007755, 28.456951, 44.422962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649275, 27.707176, 44.521660>,  <31.339212, 28.361141, 44.238926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649275, 27.707176, 44.521660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844812, 28.015217, 44.685600>,  <31.962135, 28.200041, 44.783962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844812, 28.015217, 44.685600>,  <31.649275, 27.707176, 44.521660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844812, 28.015217, 44.685600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200178, -0.358251, 0.911913,
		0.849093, -0.527827, -0.020972,
		0.488846, 0.770101, 0.409847,
		31.991467, 28.246246, 44.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073360, 27.436344, 44.963570>,  <31.649275, 27.707176, 44.521660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073360, 27.436344, 44.963570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042175, 27.803135, 45.120071>,  <32.023464, 28.023209, 45.213970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042175, 27.803135, 45.120071>,  <32.073360, 27.436344, 44.963570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042175, 27.803135, 45.120071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097019, -0.397560, 0.912433,
		0.992224, 0.033178, 0.119960,
		-0.077964, 0.916976, 0.391250,
		32.018787, 28.078228, 45.237446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409657, 27.360203, 45.539921>,  <32.073360, 27.436344, 44.963570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409657, 27.360203, 45.539921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189838, 27.686852, 45.610493>,  <32.057949, 27.882841, 45.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189838, 27.686852, 45.610493>,  <32.409657, 27.360203, 45.539921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189838, 27.686852, 45.610493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151392, -0.305019, 0.940236,
		0.821634, 0.489989, 0.291251,
		-0.549543, 0.816623, 0.176434,
		32.024975, 27.931839, 45.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448174, 27.485460, 46.268044>,  <32.409657, 27.360203, 45.539921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448174, 27.485460, 46.268044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141781, 27.730818, 46.191086>,  <31.957945, 27.878033, 46.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141781, 27.730818, 46.191086>,  <32.448174, 27.485460, 46.268044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141781, 27.730818, 46.191086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383435, -0.195720, 0.902591,
		0.515990, 0.765140, 0.385116,
		-0.765984, 0.613395, -0.192392,
		31.911985, 27.914837, 46.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348686, 27.971703, 46.802876>,  <32.448174, 27.485460, 46.268044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348686, 27.971703, 46.802876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007271, 27.899590, 46.607338>,  <31.802422, 27.856321, 46.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007271, 27.899590, 46.607338>,  <32.348686, 27.971703, 46.802876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007271, 27.899590, 46.607338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458952, -0.183973, 0.869205,
		-0.246636, 0.966257, 0.074287,
		-0.853542, -0.180283, -0.488840,
		31.751207, 27.845505, 46.460686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798580, 28.385603, 47.286648>,  <32.348686, 27.971703, 46.802876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798580, 28.385603, 47.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116417, 28.231033, 47.473965>,  <33.307117, 28.138292, 47.586357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116417, 28.231033, 47.473965>,  <32.798580, 28.385603, 47.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116417, 28.231033, 47.473965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606774, 0.478484, -0.634727,
		0.021201, 0.788498, 0.614671,
		0.794592, -0.386424, 0.468296,
		33.354794, 28.115107, 47.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297516, 28.964624, 47.294842>,  <32.798580, 28.385603, 47.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297516, 28.964624, 47.294842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484241, 28.616879, 47.359699>,  <33.596275, 28.408230, 47.398613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484241, 28.616879, 47.359699>,  <33.297516, 28.964624, 47.294842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484241, 28.616879, 47.359699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798536, 0.335574, -0.499731,
		0.380037, 0.362758, 0.850869,
		0.466810, -0.869366, 0.162145,
		33.624283, 28.356070, 47.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896648, 29.164381, 47.604267>,  <33.297516, 28.964624, 47.294842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896648, 29.164381, 47.604267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979012, 28.790705, 47.487724>,  <34.028431, 28.566500, 47.417797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979012, 28.790705, 47.487724>,  <33.896648, 29.164381, 47.604267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979012, 28.790705, 47.487724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775330, 0.337401, -0.533876,
		0.597047, -0.115969, 0.793780,
		0.205909, -0.934190, -0.291358,
		34.040783, 28.510448, 47.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545498, 29.100592, 47.708290>,  <33.896648, 29.164381, 47.604267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545498, 29.100592, 47.708290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443554, 28.817451, 47.444775>,  <34.382389, 28.647568, 47.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443554, 28.817451, 47.444775>,  <34.545498, 29.100592, 47.708290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443554, 28.817451, 47.444775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701775, 0.333307, -0.629617,
		0.665251, -0.622781, 0.411806,
		-0.254856, -0.707849, -0.658785,
		34.367096, 28.605097, 47.247139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128246, 28.673777, 47.620499>,  <34.545498, 29.100592, 47.708290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128246, 28.673777, 47.620499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908222, 28.642319, 47.287933>,  <34.776207, 28.623444, 47.088394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908222, 28.642319, 47.287933>,  <35.128246, 28.673777, 47.620499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908222, 28.642319, 47.287933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810786, 0.188316, -0.554224,
		0.200159, -0.978954, -0.039815,
		-0.550058, -0.078652, -0.831415,
		34.743206, 28.618725, 47.038509>
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
