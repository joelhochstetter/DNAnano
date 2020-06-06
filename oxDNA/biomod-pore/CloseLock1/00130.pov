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
	<24.125792, 35.185810, 34.571655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222496, 35.043423, 34.932728>,  <24.280519, 34.957989, 35.149372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222496, 35.043423, 34.932728>,  <24.125792, 35.185810, 34.571655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222496, 35.043423, 34.932728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243724, -0.878178, -0.411586,
		0.939228, 0.319511, -0.125552,
		0.241763, -0.355973, 0.902681,
		24.295025, 34.936630, 35.203533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850599, 35.044182, 34.591919>,  <24.125792, 35.185810, 34.571655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850599, 35.044182, 34.591919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636528, 34.815659, 34.840820>,  <24.508085, 34.678547, 34.990162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636528, 34.815659, 34.840820>,  <24.850599, 35.044182, 34.591919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636528, 34.815659, 34.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400124, -0.820183, -0.408902,
		0.743967, 0.030143, 0.667536,
		-0.535176, -0.571306, 0.622250,
		24.475975, 34.644268, 35.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263157, 34.615658, 35.220436>,  <24.850599, 35.044182, 34.591919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263157, 34.615658, 35.220436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932701, 34.466438, 35.051521>,  <24.734428, 34.376907, 34.950172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932701, 34.466438, 35.051521>,  <25.263157, 34.615658, 35.220436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932701, 34.466438, 35.051521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542505, -0.729114, -0.417231,
		-0.152250, -0.573785, 0.804730,
		-0.826140, -0.373047, -0.422289,
		24.684858, 34.354523, 34.924835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116829, 34.067554, 35.627422>,  <25.263157, 34.615658, 35.220436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116829, 34.067554, 35.627422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789232, 34.134892, 35.408001>,  <24.592674, 34.175293, 35.276348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789232, 34.134892, 35.408001>,  <25.116829, 34.067554, 35.627422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789232, 34.134892, 35.408001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025723, -0.965807, -0.257982,
		-0.573228, -0.197175, 0.795318,
		-0.818992, 0.168341, -0.548556,
		24.543535, 34.185394, 35.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853048, 33.437737, 35.539959>,  <25.116829, 34.067554, 35.627422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853048, 33.437737, 35.539959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657978, 33.627308, 35.246685>,  <24.540936, 33.741051, 35.070721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657978, 33.627308, 35.246685>,  <24.853048, 33.437737, 35.539959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657978, 33.627308, 35.246685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310857, -0.879046, -0.361451,
		-0.815805, 0.051643, 0.576017,
		-0.487678, 0.473932, -0.733184,
		24.511675, 33.769489, 35.026730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521471, 33.190262, 35.693825>,  <24.853048, 33.437737, 35.539959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521471, 33.190262, 35.693825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909782, 33.258511, 35.761330>,  <26.142769, 33.299461, 35.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909782, 33.258511, 35.761330>,  <25.521471, 33.190262, 35.693825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909782, 33.258511, 35.761330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136242, 0.970742, -0.197731,
		-0.197563, 0.168960, 0.965620,
		0.970776, 0.170623, 0.168763,
		26.201015, 33.309696, 35.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555813, 33.725906, 36.143703>,  <25.521471, 33.190262, 35.693825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555813, 33.725906, 36.143703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901346, 33.716747, 35.942398>,  <26.108665, 33.711250, 35.821617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901346, 33.716747, 35.942398>,  <25.555813, 33.725906, 36.143703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901346, 33.716747, 35.942398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109995, 0.966290, -0.232775,
		0.491627, 0.256434, 0.832193,
		0.863831, -0.022901, -0.503260,
		26.160496, 33.709877, 35.791420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869305, 34.460606, 36.182243>,  <25.555813, 33.725906, 36.143703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869305, 34.460606, 36.182243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114401, 34.319794, 35.899223>,  <26.261459, 34.235306, 35.729412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114401, 34.319794, 35.899223>,  <25.869305, 34.460606, 36.182243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114401, 34.319794, 35.899223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264402, 0.935032, -0.236234,
		0.744741, -0.042326, 0.666010,
		0.612741, -0.352028, -0.707548,
		26.298223, 34.214184, 35.686958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615313, 34.697487, 36.291275>,  <25.869305, 34.460606, 36.182243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615313, 34.697487, 36.291275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533634, 34.612858, 35.908958>,  <26.484627, 34.562080, 35.679569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533634, 34.612858, 35.908958>,  <26.615313, 34.697487, 36.291275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533634, 34.612858, 35.908958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370210, 0.887163, -0.275473,
		0.906228, -0.410094, -0.102826,
		-0.204193, -0.211575, -0.955794,
		26.472376, 34.549385, 35.622219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318329, 34.746136, 35.953571>,  <26.615313, 34.697487, 36.291275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318329, 34.746136, 35.953571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000061, 34.790596, 35.715393>,  <26.809101, 34.817272, 35.572487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000061, 34.790596, 35.715393>,  <27.318329, 34.746136, 35.953571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000061, 34.790596, 35.715393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453074, 0.761667, -0.463236,
		0.402041, -0.638364, -0.656395,
		-0.795668, 0.111155, -0.595447,
		26.761360, 34.823944, 35.536758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708206, 34.856190, 35.397221>,  <27.318329, 34.746136, 35.953571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708206, 34.856190, 35.397221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337551, 34.962994, 35.291351>,  <27.115158, 35.027077, 35.227829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337551, 34.962994, 35.291351>,  <27.708206, 34.856190, 35.397221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337551, 34.962994, 35.291351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374428, 0.718883, -0.585671,
		0.033892, -0.641806, -0.766118,
		-0.926637, 0.267006, -0.264674,
		27.059561, 35.043095, 35.211948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795362, 35.068447, 34.682774>,  <27.708206, 34.856190, 35.397221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795362, 35.068447, 34.682774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471928, 35.256714, 34.824001>,  <27.277866, 35.369675, 34.908737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471928, 35.256714, 34.824001>,  <27.795362, 35.068447, 34.682774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471928, 35.256714, 34.824001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330842, 0.859931, -0.388666,
		-0.486548, -0.197461, -0.851047,
		-0.808588, 0.470667, 0.353069,
		27.229351, 35.397915, 34.929920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504549, 35.458065, 34.201950>,  <27.795362, 35.068447, 34.682774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504549, 35.458065, 34.201950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351339, 35.635773, 34.525906>,  <27.259413, 35.742397, 34.720280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351339, 35.635773, 34.525906>,  <27.504549, 35.458065, 34.201950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351339, 35.635773, 34.525906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296980, 0.889428, -0.347448,
		-0.874697, 0.107439, -0.472611,
		-0.383024, 0.444267, 0.809888,
		27.236431, 35.769054, 34.768871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100676, 36.006664, 33.943516>,  <27.504549, 35.458065, 34.201950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100676, 36.006664, 33.943516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180025, 36.103775, 34.323349>,  <27.227634, 36.162041, 34.551250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180025, 36.103775, 34.323349>,  <27.100676, 36.006664, 33.943516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180025, 36.103775, 34.323349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119099, 0.955688, -0.269213,
		-0.972864, 0.166499, 0.160670,
		0.198374, 0.242772, 0.949584,
		27.239536, 36.176605, 34.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747099, 36.648933, 34.023113>,  <27.100676, 36.006664, 33.943516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747099, 36.648933, 34.023113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051081, 36.627144, 34.282188>,  <27.233469, 36.614071, 34.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051081, 36.627144, 34.282188>,  <26.747099, 36.648933, 34.023113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051081, 36.627144, 34.282188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300640, 0.912940, -0.275964,
		-0.576269, 0.404442, 0.710170,
		0.759954, -0.054476, 0.647690,
		27.279066, 36.610802, 34.476494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802628, 37.315434, 34.312000>,  <26.747099, 36.648933, 34.023113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802628, 37.315434, 34.312000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159094, 37.135731, 34.337276>,  <27.372972, 37.027908, 34.352440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159094, 37.135731, 34.337276>,  <26.802628, 37.315434, 34.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159094, 37.135731, 34.337276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453081, 0.888466, -0.073111,
		-0.023295, 0.093783, 0.995320,
		0.891165, -0.449258, 0.063188,
		27.426443, 37.000954, 34.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175463, 37.675846, 34.766945>,  <26.802628, 37.315434, 34.312000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175463, 37.675846, 34.766945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492424, 37.489887, 34.608971>,  <27.682600, 37.378311, 34.514187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492424, 37.489887, 34.608971>,  <27.175463, 37.675846, 34.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492424, 37.489887, 34.608971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562984, 0.806610, 0.180081,
		0.234838, -0.365037, 0.900888,
		0.792402, -0.464896, -0.394933,
		27.730145, 37.350418, 34.490490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689602, 37.935131, 35.122837>,  <27.175463, 37.675846, 34.766945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689602, 37.935131, 35.122837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867029, 37.761192, 34.809364>,  <27.973486, 37.656830, 34.621281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867029, 37.761192, 34.809364>,  <27.689602, 37.935131, 35.122837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867029, 37.761192, 34.809364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696376, 0.717666, -0.004068,
		0.564188, -0.543930, 0.621153,
		0.443568, -0.434851, -0.783678,
		28.000099, 37.630737, 34.574261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372541, 38.106903, 35.154842>,  <27.689602, 37.935131, 35.122837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372541, 38.106903, 35.154842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375992, 37.957661, 34.783745>,  <28.378063, 37.868114, 34.561085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375992, 37.957661, 34.783745>,  <28.372541, 38.106903, 35.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375992, 37.957661, 34.783745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736446, 0.629984, -0.246510,
		0.676441, -0.681110, 0.280209,
		0.008627, -0.373109, -0.927748,
		28.378580, 37.845730, 34.505421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998072, 37.874683, 35.068550>,  <28.372541, 38.106903, 35.154842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998072, 37.874683, 35.068550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861523, 37.940811, 34.698441>,  <28.779593, 37.980488, 34.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861523, 37.940811, 34.698441>,  <28.998072, 37.874683, 35.068550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861523, 37.940811, 34.698441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707307, 0.693494, -0.137047,
		0.619015, -0.701237, -0.353675,
		-0.341374, 0.165323, -0.925274,
		28.759111, 37.990410, 34.420856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642656, 38.026699, 34.696850>,  <28.998072, 37.874683, 35.068550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642656, 38.026699, 34.696850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311363, 38.177212, 34.530746>,  <29.112587, 38.267517, 34.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311363, 38.177212, 34.530746>,  <29.642656, 38.026699, 34.696850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311363, 38.177212, 34.530746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520567, 0.790954, -0.321562,
		0.207456, -0.482500, -0.850974,
		-0.828235, 0.376279, -0.415261,
		29.062893, 38.290096, 34.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871761, 38.019276, 34.052929>,  <29.642656, 38.026699, 34.696850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871761, 38.019276, 34.052929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568110, 38.270950, 34.119678>,  <29.385918, 38.421955, 34.159729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568110, 38.270950, 34.119678>,  <29.871761, 38.019276, 34.052929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568110, 38.270950, 34.119678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514435, 0.736966, -0.438450,
		-0.398847, -0.246994, -0.883128,
		-0.759130, 0.629186, 0.166874,
		29.340370, 38.459705, 34.169743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951385, 38.436378, 33.486992>,  <29.871761, 38.019276, 34.052929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951385, 38.436378, 33.486992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722191, 38.633270, 33.749104>,  <29.584675, 38.751404, 33.906372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722191, 38.633270, 33.749104>,  <29.951385, 38.436378, 33.486992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722191, 38.633270, 33.749104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516922, 0.837510, -0.177111,
		-0.635986, 0.237248, -0.734327,
		-0.572986, 0.492230, 0.655283,
		29.550295, 38.780941, 33.945690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805994, 39.124966, 33.185997>,  <29.951385, 38.436378, 33.486992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805994, 39.124966, 33.185997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720037, 39.152092, 33.575710>,  <29.668465, 39.168365, 33.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720037, 39.152092, 33.575710>,  <29.805994, 39.124966, 33.185997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720037, 39.152092, 33.575710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532039, 0.844693, 0.058556,
		-0.818998, 0.530938, -0.217594,
		-0.214889, 0.067811, 0.974281,
		29.655571, 39.172436, 33.867996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457792, 39.742741, 33.318970>,  <29.805994, 39.124966, 33.185997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457792, 39.742741, 33.318970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672867, 39.616936, 33.631886>,  <29.801912, 39.541454, 33.819633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672867, 39.616936, 33.631886>,  <29.457792, 39.742741, 33.318970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672867, 39.616936, 33.631886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385877, 0.916744, 0.103343,
		-0.749661, 0.246301, 0.614284,
		0.537688, -0.314510, 0.782289,
		29.834173, 39.522583, 33.866573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500690, 40.187206, 33.960606>,  <29.457792, 39.742741, 33.318970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500690, 40.187206, 33.960606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862484, 40.016747, 33.967560>,  <30.079561, 39.914471, 33.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862484, 40.016747, 33.967560>,  <29.500690, 40.187206, 33.960606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862484, 40.016747, 33.967560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407925, 0.876267, 0.256424,
		-0.124514, -0.224837, 0.966408,
		0.904485, -0.426150, 0.017390,
		30.133829, 39.888901, 33.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709459, 40.500954, 34.568115>,  <29.500690, 40.187206, 33.960606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709459, 40.500954, 34.568115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019188, 40.413765, 34.330490>,  <30.205025, 40.361450, 34.187916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019188, 40.413765, 34.330490>,  <29.709459, 40.500954, 34.568115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019188, 40.413765, 34.330490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519348, 0.755264, 0.399818,
		0.361525, -0.618114, 0.698022,
		0.774324, -0.217972, -0.594063,
		30.251486, 40.348373, 34.152271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395264, 40.507481, 34.939323>,  <29.709459, 40.500954, 34.568115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395264, 40.507481, 34.939323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427982, 40.609520, 34.553944>,  <30.447615, 40.670742, 34.322716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427982, 40.609520, 34.553944>,  <30.395264, 40.507481, 34.939323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427982, 40.609520, 34.553944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393578, 0.879852, 0.266377,
		0.915645, -0.400982, -0.028430,
		0.081798, 0.255096, -0.963450,
		30.452522, 40.686050, 34.264908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943193, 40.253590, 35.465034>,  <30.395264, 40.507481, 34.939323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943193, 40.253590, 35.465034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196316, 40.516155, 35.629318>,  <30.348188, 40.673695, 35.727890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196316, 40.516155, 35.629318>,  <29.943193, 40.253590, 35.465034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196316, 40.516155, 35.629318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213732, 0.657890, -0.722149,
		-0.744229, 0.369198, 0.556612,
		0.632805, 0.656410, 0.410711,
		30.386158, 40.713078, 35.752533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581408, 40.948875, 35.525650>,  <29.943193, 40.253590, 35.465034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581408, 40.948875, 35.525650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975964, 40.976185, 35.465820>,  <30.212698, 40.992573, 35.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975964, 40.976185, 35.465820>,  <29.581408, 40.948875, 35.525650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975964, 40.976185, 35.465820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148963, 0.756167, -0.637198,
		0.069594, 0.650807, 0.756047,
		0.986391, 0.068278, -0.149571,
		30.271881, 40.996670, 35.420948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844814, 41.616764, 35.710773>,  <29.581408, 40.948875, 35.525650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844814, 41.616764, 35.710773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063622, 41.435322, 35.429344>,  <30.194906, 41.326454, 35.260487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063622, 41.435322, 35.429344>,  <29.844814, 41.616764, 35.710773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063622, 41.435322, 35.429344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048434, 0.856205, -0.514361,
		0.835718, 0.247288, 0.490330,
		0.547018, -0.453609, -0.703569,
		30.227726, 41.299240, 35.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076725, 41.529079, 36.481796>,  <29.844814, 41.616764, 35.710773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076725, 41.529079, 36.481796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187719, 41.433353, 36.853977>,  <30.254316, 41.375919, 37.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187719, 41.433353, 36.853977>,  <30.076725, 41.529079, 36.481796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187719, 41.433353, 36.853977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942838, 0.253870, -0.215884,
		-0.184549, 0.937166, 0.296076,
		0.277484, -0.239311, 0.930448,
		30.270964, 41.361561, 37.133110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624178, 41.870182, 36.614540>,  <30.076725, 41.529079, 36.481796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624178, 41.870182, 36.614540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661419, 41.660568, 36.953175>,  <30.683764, 41.534798, 37.156357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661419, 41.660568, 36.953175>,  <30.624178, 41.870182, 36.614540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661419, 41.660568, 36.953175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938314, -0.238215, -0.250642,
		0.333016, 0.817702, 0.469535,
		0.093100, -0.524039, 0.846591,
		30.689348, 41.503357, 37.207153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351469, 41.879463, 36.868450>,  <30.624178, 41.870182, 36.614540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351469, 41.879463, 36.868450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172009, 41.552052, 37.011967>,  <31.064333, 41.355606, 37.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172009, 41.552052, 37.011967>,  <31.351469, 41.879463, 36.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172009, 41.552052, 37.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737386, -0.565863, -0.368864,
		0.504950, 0.099075, 0.857444,
		-0.448651, -0.818525, 0.358789,
		31.037413, 41.306496, 37.119602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854259, 41.537952, 37.205254>,  <31.351469, 41.879463, 36.868450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854259, 41.537952, 37.205254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612221, 41.266159, 37.039284>,  <31.466997, 41.103085, 36.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612221, 41.266159, 37.039284>,  <31.854259, 41.537952, 37.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612221, 41.266159, 37.039284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761231, -0.341115, -0.551515,
		0.233206, -0.649574, 0.723649,
		-0.605097, -0.679481, -0.414926,
		31.430691, 41.062313, 36.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555790, 41.426682, 37.024361>,  <31.854259, 41.537952, 37.205254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555790, 41.426682, 37.024361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357105, 41.314415, 37.352875>,  <32.237896, 41.247055, 37.549984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357105, 41.314415, 37.352875>,  <32.555790, 41.426682, 37.024361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357105, 41.314415, 37.352875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030256, -0.940093, -0.339573,
		0.867388, -0.193518, 0.458463,
		-0.496711, -0.280671, 0.821281,
		32.208092, 41.230213, 37.599258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786274, 40.683887, 37.293091>,  <32.555790, 41.426682, 37.024361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786274, 40.683887, 37.293091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410961, 40.760010, 37.408623>,  <32.185776, 40.805683, 37.477940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410961, 40.760010, 37.408623>,  <32.786274, 40.683887, 37.293091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410961, 40.760010, 37.408623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211074, -0.976556, -0.042255,
		0.274013, -0.100611, 0.956449,
		-0.938277, 0.190303, 0.288825,
		32.129478, 40.817101, 37.495270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669476, 40.175888, 37.801189>,  <32.786274, 40.683887, 37.293091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669476, 40.175888, 37.801189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314976, 40.293037, 37.657642>,  <32.102276, 40.363327, 37.571514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314976, 40.293037, 37.657642>,  <32.669476, 40.175888, 37.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314976, 40.293037, 37.657642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320851, -0.946928, 0.019564,
		-0.334091, 0.132481, 0.933184,
		-0.886249, 0.292877, -0.358866,
		32.049103, 40.380901, 37.549984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103863, 39.867340, 38.310997>,  <32.669476, 40.175888, 37.801189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103863, 39.867340, 38.310997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949835, 39.950542, 37.951340>,  <31.857420, 40.000465, 37.735546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949835, 39.950542, 37.951340>,  <32.103863, 39.867340, 38.310997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949835, 39.950542, 37.951340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389538, -0.919862, -0.045977,
		-0.836651, 0.332546, 0.435233,
		-0.385065, 0.208007, -0.899143,
		31.834314, 40.012943, 37.681599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529497, 39.556129, 38.290291>,  <32.103863, 39.867340, 38.310997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529497, 39.556129, 38.290291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521889, 39.623402, 37.896061>,  <31.517324, 39.663765, 37.659523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521889, 39.623402, 37.896061>,  <31.529497, 39.556129, 38.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521889, 39.623402, 37.896061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368299, -0.917613, -0.149475,
		-0.929513, 0.360143, 0.079392,
		-0.019019, 0.168179, -0.985573,
		31.516184, 39.673855, 37.600388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890020, 39.432796, 38.008869>,  <31.529497, 39.556129, 38.290291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890020, 39.432796, 38.008869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126724, 39.380562, 37.690681>,  <31.268747, 39.349220, 37.499771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126724, 39.380562, 37.690681>,  <30.890020, 39.432796, 38.008869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126724, 39.380562, 37.690681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383984, -0.913311, -0.135716,
		-0.708785, 0.385758, -0.590605,
		0.591760, -0.130589, -0.795467,
		31.304253, 39.341385, 37.452042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490662, 39.420559, 37.410873>,  <30.890020, 39.432796, 38.008869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490662, 39.420559, 37.410873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824638, 39.215515, 37.330769>,  <31.025024, 39.092491, 37.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824638, 39.215515, 37.330769>,  <30.490662, 39.420559, 37.410873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824638, 39.215515, 37.330769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541854, -0.829356, -0.136244,
		-0.096249, 0.222269, -0.970223,
		0.834943, -0.512606, -0.200263,
		31.075121, 39.061733, 37.270691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347128, 38.941490, 36.850887>,  <30.490662, 39.420559, 37.410873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347128, 38.941490, 36.850887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684090, 38.792091, 37.006245>,  <30.886267, 38.702450, 37.099461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684090, 38.792091, 37.006245>,  <30.347128, 38.941490, 36.850887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684090, 38.792091, 37.006245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331010, -0.927456, -0.173950,
		0.425192, 0.017973, -0.904925,
		0.842404, -0.373501, 0.388398,
		30.936811, 38.680042, 37.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719452, 38.419579, 36.367226>,  <30.347128, 38.941490, 36.850887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719452, 38.419579, 36.367226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844065, 38.344448, 36.739819>,  <30.918833, 38.299370, 36.963375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844065, 38.344448, 36.739819>,  <30.719452, 38.419579, 36.367226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844065, 38.344448, 36.739819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213191, -0.969095, -0.124113,
		0.926011, -0.159920, -0.341948,
		0.311532, -0.187830, 0.931486,
		30.937525, 38.288097, 37.019264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115458, 37.877365, 36.298649>,  <30.719452, 38.419579, 36.367226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115458, 37.877365, 36.298649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066216, 37.877731, 36.695606>,  <31.036671, 37.877953, 36.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066216, 37.877731, 36.695606>,  <31.115458, 37.877365, 36.298649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066216, 37.877731, 36.695606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079302, -0.996811, -0.008918,
		0.989220, -0.079797, 0.122783,
		-0.123103, 0.000915, 0.992393,
		31.029285, 37.878006, 36.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569113, 37.380371, 36.547398>,  <31.115458, 37.877365, 36.298649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569113, 37.380371, 36.547398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279421, 37.410904, 36.821526>,  <31.105606, 37.429226, 36.986004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279421, 37.410904, 36.821526>,  <31.569113, 37.380371, 36.547398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279421, 37.410904, 36.821526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039106, -0.996801, 0.069705,
		0.688447, 0.023682, 0.724900,
		-0.724232, 0.076336, 0.685318,
		31.062151, 37.433804, 37.027122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599010, 36.772049, 36.964359>,  <31.569113, 37.380371, 36.547398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599010, 36.772049, 36.964359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234751, 36.911556, 37.052975>,  <31.016195, 36.995262, 37.106144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234751, 36.911556, 37.052975>,  <31.599010, 36.772049, 36.964359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234751, 36.911556, 37.052975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340899, -0.937173, 0.074124,
		0.233473, -0.008021, 0.972330,
		-0.910647, 0.348772, 0.221539,
		30.961557, 37.016190, 37.119438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306374, 36.317047, 37.413696>,  <31.599010, 36.772049, 36.964359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306374, 36.317047, 37.413696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983957, 36.516384, 37.285980>,  <30.790508, 36.635986, 37.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983957, 36.516384, 37.285980>,  <31.306374, 36.317047, 37.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983957, 36.516384, 37.285980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567854, -0.803244, 0.179834,
		-0.166851, 0.326266, 0.930436,
		-0.806041, 0.498347, -0.319294,
		30.742146, 36.665890, 37.190193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705351, 36.167145, 37.938416>,  <31.306374, 36.317047, 37.413696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705351, 36.167145, 37.938416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554405, 36.306561, 37.595226>,  <30.463839, 36.390209, 37.389313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554405, 36.306561, 37.595226>,  <30.705351, 36.167145, 37.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554405, 36.306561, 37.595226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569635, -0.817829, -0.081686,
		-0.730147, 0.457906, 0.507157,
		-0.377363, 0.348537, -0.857974,
		30.441196, 36.411121, 37.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939484, 36.050533, 38.034634>,  <30.705351, 36.167145, 37.938416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939484, 36.050533, 38.034634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010696, 36.062275, 37.641197>,  <30.053425, 36.069321, 37.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010696, 36.062275, 37.641197>,  <29.939484, 36.050533, 38.034634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010696, 36.062275, 37.641197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660630, -0.737241, -0.141580,
		-0.729297, 0.674993, -0.111858,
		0.178031, 0.029357, -0.983587,
		30.064106, 36.071083, 37.346123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329287, 36.025326, 37.692009>,  <29.939484, 36.050533, 38.034634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329287, 36.025326, 37.692009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567055, 35.943474, 37.380936>,  <29.709715, 35.894363, 37.194290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567055, 35.943474, 37.380936>,  <29.329287, 36.025326, 37.692009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567055, 35.943474, 37.380936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623522, -0.727996, -0.285029,
		-0.507825, 0.654329, -0.560327,
		0.594419, -0.204631, -0.777684,
		29.745380, 35.882084, 37.147629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878611, 35.794743, 37.144547>,  <29.329287, 36.025326, 37.692009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878611, 35.794743, 37.144547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239464, 35.656727, 37.040932>,  <29.455976, 35.573917, 36.978764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239464, 35.656727, 37.040932>,  <28.878611, 35.794743, 37.144547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239464, 35.656727, 37.040932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426207, -0.806041, -0.410664,
		-0.067097, 0.480878, -0.874217,
		0.902134, -0.345042, -0.259037,
		29.510103, 35.553215, 36.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794050, 35.677750, 36.474731>,  <28.878611, 35.794743, 37.144547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794050, 35.677750, 36.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103081, 35.466118, 36.615131>,  <29.288498, 35.339138, 36.699371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103081, 35.466118, 36.615131>,  <28.794050, 35.677750, 36.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103081, 35.466118, 36.615131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339494, -0.811393, -0.475799,
		0.536538, 0.248426, -0.806481,
		0.772574, -0.529080, 0.351004,
		29.334852, 35.307392, 36.720432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061802, 35.228844, 35.865677>,  <28.794050, 35.677750, 36.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061802, 35.228844, 35.865677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193810, 35.048920, 36.197643>,  <29.273014, 34.940968, 36.396824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193810, 35.048920, 36.197643>,  <29.061802, 35.228844, 35.865677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193810, 35.048920, 36.197643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389224, -0.865800, -0.314477,
		0.859995, -0.219239, -0.460807,
		0.330021, -0.449806, 0.829916,
		29.292816, 34.913979, 36.446617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648415, 34.853298, 35.695438>,  <29.061802, 35.228844, 35.865677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648415, 34.853298, 35.695438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483820, 34.699356, 36.025909>,  <29.385063, 34.606991, 36.224190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483820, 34.699356, 36.025909>,  <29.648415, 34.853298, 35.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483820, 34.699356, 36.025909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195432, -0.848133, -0.492419,
		0.890216, -0.364086, 0.273784,
		-0.411488, -0.384853, 0.826175,
		29.360373, 34.583900, 36.273762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936472, 34.252522, 35.794079>,  <29.648415, 34.853298, 35.695438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936472, 34.252522, 35.794079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628954, 34.198185, 36.044041>,  <29.444443, 34.165585, 36.194019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628954, 34.198185, 36.044041>,  <29.936472, 34.252522, 35.794079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628954, 34.198185, 36.044041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076382, -0.950680, -0.300621,
		0.634919, -0.278847, 0.720501,
		-0.768793, -0.135837, 0.624904,
		29.398315, 34.157433, 36.231510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163023, 33.735523, 36.193375>,  <29.936472, 34.252522, 35.794079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163023, 33.735523, 36.193375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766247, 33.760612, 36.237404>,  <29.528181, 33.775665, 36.263821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766247, 33.760612, 36.237404>,  <30.163023, 33.735523, 36.193375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766247, 33.760612, 36.237404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095269, -0.942042, -0.321685,
		0.083515, -0.329579, 0.940427,
		-0.991942, 0.062728, 0.110073,
		29.468664, 33.779430, 36.270424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783964, 33.994286, 36.122326>,  <30.163023, 33.735523, 36.193375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783964, 33.994286, 36.122326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609203, 33.987579, 36.482067>,  <30.504347, 33.983555, 36.697910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609203, 33.987579, 36.482067>,  <30.783964, 33.994286, 36.122326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609203, 33.987579, 36.482067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272200, 0.950486, 0.149948,
		-0.857336, 0.310316, -0.410705,
		-0.436900, -0.016762, 0.899354,
		30.478132, 33.982552, 36.751873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430031, 34.342598, 36.331776>,  <30.783964, 33.994286, 36.122326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430031, 34.342598, 36.331776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764900, 34.347130, 36.113049>,  <31.965822, 34.349850, 35.981812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764900, 34.347130, 36.113049>,  <31.430031, 34.342598, 36.331776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764900, 34.347130, 36.113049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499125, 0.392975, 0.772298,
		0.223633, -0.919480, 0.323336,
		0.837175, 0.011326, -0.546818,
		32.016052, 34.350529, 35.949001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140751, 33.995899, 36.580246>,  <31.430031, 34.342598, 36.331776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140751, 33.995899, 36.580246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160744, 34.341225, 36.379368>,  <32.172737, 34.548420, 36.258842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160744, 34.341225, 36.379368>,  <32.140751, 33.995899, 36.580246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160744, 34.341225, 36.379368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327933, 0.460758, 0.824720,
		0.943378, -0.205902, -0.260081,
		0.049977, 0.863312, -0.502191,
		32.175735, 34.600220, 36.228710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822231, 34.271008, 36.528439>,  <32.140751, 33.995899, 36.580246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822231, 34.271008, 36.528439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562210, 34.574318, 36.548260>,  <32.406197, 34.756302, 36.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562210, 34.574318, 36.548260>,  <32.822231, 34.271008, 36.528439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562210, 34.574318, 36.548260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489318, 0.367808, 0.790750,
		0.581379, 0.538274, -0.610131,
		-0.650051, 0.758273, 0.049551,
		32.367195, 34.801800, 36.563126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196644, 34.932140, 36.603733>,  <32.822231, 34.271008, 36.528439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196644, 34.932140, 36.603733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831043, 34.925610, 36.765888>,  <32.611683, 34.921692, 36.863182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831043, 34.925610, 36.765888>,  <33.196644, 34.932140, 36.603733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831043, 34.925610, 36.765888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377409, 0.332478, 0.864303,
		-0.148891, 0.942970, -0.297724,
		-0.913999, -0.016323, 0.405389,
		32.556843, 34.920712, 36.887505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166603, 35.483692, 36.995667>,  <33.196644, 34.932140, 36.603733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166603, 35.483692, 36.995667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872799, 35.242939, 37.121037>,  <32.696518, 35.098488, 37.196259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872799, 35.242939, 37.121037>,  <33.166603, 35.483692, 36.995667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872799, 35.242939, 37.121037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233146, 0.209932, 0.949511,
		-0.637289, 0.770500, -0.013871,
		-0.734510, -0.601879, 0.313426,
		32.652447, 35.062374, 37.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630016, 35.854782, 37.392509>,  <33.166603, 35.483692, 36.995667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630016, 35.854782, 37.392509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656250, 35.468742, 37.493927>,  <32.671989, 35.237118, 37.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656250, 35.468742, 37.493927>,  <32.630016, 35.854782, 37.392509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656250, 35.468742, 37.493927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195823, 0.261595, 0.945104,
		-0.978444, -0.012336, 0.206146,
		0.065585, -0.965099, 0.253540,
		32.675926, 35.179214, 37.569988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310818, 35.852444, 38.074097>,  <32.630016, 35.854782, 37.392509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310818, 35.852444, 38.074097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537312, 35.527256, 38.019753>,  <32.673206, 35.332142, 37.987144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537312, 35.527256, 38.019753>,  <32.310818, 35.852444, 38.074097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537312, 35.527256, 38.019753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377592, 0.109333, 0.919495,
		-0.732667, -0.571950, 0.368879,
		0.566236, -0.812969, -0.135859,
		32.707184, 35.283363, 37.978996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207912, 35.451202, 38.652599>,  <32.310818, 35.852444, 38.074097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207912, 35.451202, 38.652599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548046, 35.309807, 38.496662>,  <32.752125, 35.224968, 38.403099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548046, 35.309807, 38.496662>,  <32.207912, 35.451202, 38.652599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548046, 35.309807, 38.496662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426273, 0.028277, 0.904152,
		-0.308587, -0.935010, 0.174729,
		0.850332, -0.353492, -0.389844,
		32.803146, 35.203758, 38.379707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491608, 35.082176, 39.271305>,  <32.207912, 35.451202, 38.652599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491608, 35.082176, 39.271305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803062, 35.067863, 39.020721>,  <32.989933, 35.059277, 38.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803062, 35.067863, 39.020721>,  <32.491608, 35.082176, 39.271305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803062, 35.067863, 39.020721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627095, 0.009459, 0.778886,
		-0.021945, -0.999315, 0.029804,
		0.778634, -0.035783, -0.626458,
		33.036652, 35.057129, 38.832783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795506, 34.515617, 39.481842>,  <32.491608, 35.082176, 39.271305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795506, 34.515617, 39.481842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056072, 34.737312, 39.274582>,  <33.212410, 34.870331, 39.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056072, 34.737312, 39.274582>,  <32.795506, 34.515617, 39.481842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056072, 34.737312, 39.274582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670536, -0.100993, 0.734971,
		0.355021, -0.826207, -0.437426,
		0.651415, 0.554240, -0.518148,
		33.251495, 34.903584, 39.119137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353783, 34.161575, 39.557045>,  <32.795506, 34.515617, 39.481842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353783, 34.161575, 39.557045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505249, 34.515572, 39.448673>,  <33.596130, 34.727970, 39.383652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505249, 34.515572, 39.448673>,  <33.353783, 34.161575, 39.557045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505249, 34.515572, 39.448673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662006, -0.054418, 0.747520,
		0.646805, -0.462418, -0.606476,
		0.378670, 0.884990, -0.270926,
		33.618851, 34.781067, 39.367397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127159, 34.114544, 39.561825>,  <33.353783, 34.161575, 39.557045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127159, 34.114544, 39.561825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053780, 34.507347, 39.579731>,  <34.009754, 34.743031, 39.590473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053780, 34.507347, 39.579731>,  <34.127159, 34.114544, 39.561825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053780, 34.507347, 39.579731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659924, 0.089273, 0.746010,
		0.728594, 0.166390, -0.664429,
		-0.183444, 0.982010, 0.044761,
		33.998745, 34.801949, 39.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785446, 34.498974, 39.484188>,  <34.127159, 34.114544, 39.561825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785446, 34.498974, 39.484188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546085, 34.749153, 39.684479>,  <34.402470, 34.899261, 39.804653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546085, 34.749153, 39.684479>,  <34.785446, 34.498974, 39.484188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546085, 34.749153, 39.684479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688916, 0.082602, 0.720119,
		0.409038, 0.775879, -0.480312,
		-0.598400, 0.625451, 0.500728,
		34.366566, 34.936787, 39.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243614, 34.996956, 39.691528>,  <34.785446, 34.498974, 39.484188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243614, 34.996956, 39.691528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911732, 35.052109, 39.907894>,  <34.712605, 35.085201, 40.037712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911732, 35.052109, 39.907894>,  <35.243614, 34.996956, 39.691528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911732, 35.052109, 39.907894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556470, 0.280698, 0.782016,
		-0.044004, 0.949840, -0.309624,
		-0.829701, 0.137885, 0.540910,
		34.662823, 35.093475, 40.070168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255642, 35.724342, 40.060612>,  <35.243614, 34.996956, 39.691528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255642, 35.724342, 40.060612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006248, 35.481781, 40.258011>,  <34.856613, 35.336243, 40.376450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006248, 35.481781, 40.258011>,  <35.255642, 35.724342, 40.060612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006248, 35.481781, 40.258011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413465, 0.279983, 0.866404,
		-0.663565, 0.744232, 0.076164,
		-0.623481, -0.606407, 0.493501,
		34.819202, 35.299858, 40.406059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134853, 36.135368, 40.594063>,  <35.255642, 35.724342, 40.060612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134853, 36.135368, 40.594063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016819, 35.764797, 40.687580>,  <34.945999, 35.542454, 40.743690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016819, 35.764797, 40.687580>,  <35.134853, 36.135368, 40.594063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016819, 35.764797, 40.687580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434438, 0.087844, 0.896408,
		-0.850993, 0.366084, 0.376554,
		-0.295083, -0.926426, 0.233795,
		34.928295, 35.486870, 40.757717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921913, 36.231236, 41.240017>,  <35.134853, 36.135368, 40.594063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921913, 36.231236, 41.240017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001537, 35.841877, 41.194630>,  <35.049313, 35.608261, 41.167397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001537, 35.841877, 41.194630>,  <34.921913, 36.231236, 41.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001537, 35.841877, 41.194630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285770, -0.053097, 0.956826,
		-0.937395, -0.222896, 0.267598,
		0.199064, -0.973395, -0.113470,
		35.061256, 35.549858, 41.160587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529381, 36.005550, 41.694195>,  <34.921913, 36.231236, 41.240017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529381, 36.005550, 41.694195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799324, 35.716587, 41.633938>,  <34.961292, 35.543209, 41.597786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799324, 35.716587, 41.633938>,  <34.529381, 36.005550, 41.694195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799324, 35.716587, 41.633938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094580, -0.117774, 0.988526,
		-0.731858, -0.681365, -0.011156,
		0.674861, -0.722406, -0.150638,
		35.001781, 35.499866, 41.588745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311413, 35.308723, 42.029610>,  <34.529381, 36.005550, 41.694195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311413, 35.308723, 42.029610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711235, 35.304478, 42.018501>,  <34.951130, 35.301929, 42.011837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711235, 35.304478, 42.018501>,  <34.311413, 35.308723, 42.029610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711235, 35.304478, 42.018501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023481, -0.291014, 0.956431,
		-0.018233, -0.956660, -0.290636,
		0.999558, -0.010614, -0.027769,
		35.011101, 35.301292, 42.010170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404697, 34.775276, 42.570324>,  <34.311413, 35.308723, 42.029610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404697, 34.775276, 42.570324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769688, 34.928120, 42.511826>,  <34.988682, 35.019825, 42.476727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769688, 34.928120, 42.511826>,  <34.404697, 34.775276, 42.570324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769688, 34.928120, 42.511826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214777, -0.143124, 0.966119,
		0.348229, -0.912968, -0.212664,
		0.912473, 0.382106, -0.146244,
		35.043430, 35.042751, 42.467953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840244, 34.291393, 42.778316>,  <34.404697, 34.775276, 42.570324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840244, 34.291393, 42.778316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048100, 34.633129, 42.781982>,  <35.172813, 34.838169, 42.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048100, 34.633129, 42.781982>,  <34.840244, 34.291393, 42.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048100, 34.633129, 42.781982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231359, -0.151029, 0.961074,
		0.822464, -0.497294, -0.276138,
		0.519641, 0.854336, 0.009162,
		35.203991, 34.889431, 42.784733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306011, 34.148331, 43.161938>,  <34.840244, 34.291393, 42.778316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306011, 34.148331, 43.161938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331512, 34.547493, 43.166431>,  <35.346813, 34.786991, 43.169128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331512, 34.547493, 43.166431>,  <35.306011, 34.148331, 43.161938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331512, 34.547493, 43.166431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087609, -0.016811, 0.996013,
		0.994113, -0.062513, -0.088497,
		0.063751, 0.997903, 0.011235,
		35.350639, 34.846863, 43.169804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730865, 34.296261, 43.761173>,  <35.306011, 34.148331, 43.161938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730865, 34.296261, 43.761173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630016, 34.678024, 43.697254>,  <35.569508, 34.907082, 43.658901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630016, 34.678024, 43.697254>,  <35.730865, 34.296261, 43.761173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630016, 34.678024, 43.697254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249254, 0.223610, 0.942269,
		0.935042, 0.197742, -0.294269,
		-0.252127, 0.954409, -0.159797,
		35.554379, 34.964348, 43.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306812, 34.743862, 43.854099>,  <35.730865, 34.296261, 43.761173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306812, 34.743862, 43.854099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973412, 34.960144, 43.899548>,  <35.773373, 35.089912, 43.926815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973412, 34.960144, 43.899548>,  <36.306812, 34.743862, 43.854099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973412, 34.960144, 43.899548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238829, 0.167155, 0.956567,
		0.498231, 0.824436, -0.268461,
		-0.833502, 0.540708, 0.113617,
		35.723362, 35.122356, 43.933632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492691, 35.451385, 44.035522>,  <36.306812, 34.743862, 43.854099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492691, 35.451385, 44.035522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111362, 35.421913, 44.152657>,  <35.882565, 35.404228, 44.222939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111362, 35.421913, 44.152657>,  <36.492691, 35.451385, 44.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111362, 35.421913, 44.152657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265748, 0.255760, 0.929497,
		-0.143385, 0.963928, -0.224239,
		-0.953320, -0.073684, 0.292834,
		35.825367, 35.399807, 44.240505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296139, 36.043060, 44.437256>,  <36.492691, 35.451385, 44.035522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296139, 36.043060, 44.437256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013489, 35.776920, 44.533581>,  <35.843899, 35.617237, 44.591373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013489, 35.776920, 44.533581>,  <36.296139, 36.043060, 44.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013489, 35.776920, 44.533581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077956, 0.265051, 0.961078,
		-0.703278, 0.697897, -0.135425,
		-0.706628, -0.665348, 0.240810,
		35.801502, 35.577316, 44.605824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797577, 36.451172, 44.884106>,  <36.296139, 36.043060, 44.437256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797577, 36.451172, 44.884106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814621, 36.058231, 44.956963>,  <35.824848, 35.822468, 45.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814621, 36.058231, 44.956963>,  <35.797577, 36.451172, 44.884106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814621, 36.058231, 44.956963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103672, 0.185674, 0.977127,
		-0.993699, -0.022748, 0.109753,
		0.042606, -0.982348, 0.182146,
		35.827404, 35.763527, 45.011608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510471, 36.337303, 45.574581>,  <35.797577, 36.451172, 44.884106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510471, 36.337303, 45.574581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654633, 35.967899, 45.522057>,  <35.741131, 35.746258, 45.490543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654633, 35.967899, 45.522057>,  <35.510471, 36.337303, 45.574581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654633, 35.967899, 45.522057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161628, -0.076817, 0.983857,
		-0.918686, -0.375813, 0.121580,
		0.360407, -0.923506, -0.131312,
		35.762756, 35.690845, 45.482662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278065, 35.929230, 46.143120>,  <35.510471, 36.337303, 45.574581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278065, 35.929230, 46.143120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590553, 35.728935, 45.994015>,  <35.778046, 35.608761, 45.904552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590553, 35.728935, 45.994015>,  <35.278065, 35.929230, 46.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590553, 35.728935, 45.994015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339619, -0.160115, 0.926834,
		-0.523784, -0.850663, 0.044974,
		0.781223, -0.500735, -0.372767,
		35.824921, 35.578716, 45.882183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290428, 35.310085, 46.438343>,  <35.278065, 35.929230, 46.143120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290428, 35.310085, 46.438343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 35.368107, 46.311237>,  <35.890110, 35.402920, 46.234974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665230, 35.368107, 46.311237>,  <35.290428, 35.310085, 46.438343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665230, 35.368107, 46.311237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338230, -0.149458, 0.929119,
		0.087279, -0.978071, -0.189105,
		0.937008, 0.145053, -0.317768,
		35.946331, 35.411621, 46.215908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594368, 34.709545, 46.705605>,  <35.290428, 35.310085, 46.438343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594368, 34.709545, 46.705605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891045, 34.969238, 46.638218>,  <36.069050, 35.125053, 46.597786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891045, 34.969238, 46.638218>,  <35.594368, 34.709545, 46.705605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891045, 34.969238, 46.638218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445091, -0.288498, 0.847740,
		0.501782, -0.703747, -0.502947,
		0.741693, 0.649237, -0.168468,
		36.113552, 35.164009, 46.587677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148735, 34.348660, 46.778046>,  <35.594368, 34.709545, 46.705605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148735, 34.348660, 46.778046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279991, 34.715900, 46.866966>,  <36.358746, 34.936245, 46.920319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279991, 34.715900, 46.866966>,  <36.148735, 34.348660, 46.778046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279991, 34.715900, 46.866966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490178, -0.366659, 0.790750,
		0.807495, -0.150514, -0.570349,
		0.328143, 0.918099, 0.222297,
		36.378433, 34.991329, 46.933655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815483, 34.221954, 47.054619>,  <36.148735, 34.348660, 46.778046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815483, 34.221954, 47.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751282, 34.591171, 47.194466>,  <36.712761, 34.812702, 47.278374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751282, 34.591171, 47.194466>,  <36.815483, 34.221954, 47.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751282, 34.591171, 47.194466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454130, -0.245436, 0.856462,
		0.876359, 0.296236, -0.379788,
		-0.160501, 0.923041, 0.349619,
		36.703133, 34.868084, 47.299351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395554, 34.510712, 47.284801>,  <36.815483, 34.221954, 47.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395554, 34.510712, 47.284801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126011, 34.726452, 47.486801>,  <36.964287, 34.855896, 47.608002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126011, 34.726452, 47.486801>,  <37.395554, 34.510712, 47.284801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126011, 34.726452, 47.486801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550871, -0.088760, 0.829857,
		0.492404, 0.837394, -0.237298,
		-0.673855, 0.539346, 0.505001,
		36.923855, 34.888256, 47.638302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767689, 35.011475, 47.701477>,  <37.395554, 34.510712, 47.284801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767689, 35.011475, 47.701477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406342, 34.971161, 47.868221>,  <37.189533, 34.946972, 47.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406342, 34.971161, 47.868221>,  <37.767689, 35.011475, 47.701477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406342, 34.971161, 47.868221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412435, 0.062354, 0.908850,
		-0.117591, 0.992952, -0.014761,
		-0.903366, -0.100785, 0.416861,
		37.135330, 34.940926, 47.993279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796501, 35.509010, 48.243988>,  <37.767689, 35.011475, 47.701477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796501, 35.509010, 48.243988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507397, 35.248810, 48.337341>,  <37.333935, 35.092690, 48.393353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507397, 35.248810, 48.337341>,  <37.796501, 35.509010, 48.243988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507397, 35.248810, 48.337341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321522, -0.017576, 0.946739,
		-0.611757, 0.759299, 0.221855,
		-0.722757, -0.650505, 0.233379,
		37.290569, 35.053658, 48.407356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683735, 35.759029, 48.842636>,  <37.796501, 35.509010, 48.243988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683735, 35.759029, 48.842636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499008, 35.404331, 48.850700>,  <37.388172, 35.191513, 48.855537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499008, 35.404331, 48.850700>,  <37.683735, 35.759029, 48.842636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499008, 35.404331, 48.850700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334885, -0.153273, 0.929709,
		-0.821327, 0.436106, 0.367742,
		-0.461817, -0.886746, 0.020158,
		37.360462, 35.138306, 48.856747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265232, 35.744411, 49.499542>,  <37.683735, 35.759029, 48.842636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265232, 35.744411, 49.499542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341343, 35.376266, 49.362877>,  <37.387009, 35.155380, 49.280876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341343, 35.376266, 49.362877>,  <37.265232, 35.744411, 49.499542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341343, 35.376266, 49.362877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388627, -0.248984, 0.887117,
		-0.901535, -0.301576, 0.310301,
		0.190273, -0.920358, -0.341668,
		37.398426, 35.100159, 49.260376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017288, 35.358040, 50.043751>,  <37.265232, 35.744411, 49.499542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017288, 35.358040, 50.043751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260410, 35.109657, 49.845768>,  <37.406284, 34.960629, 49.726978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260410, 35.109657, 49.845768>,  <37.017288, 35.358040, 50.043751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260410, 35.109657, 49.845768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556665, -0.111323, 0.823244,
		-0.566298, -0.775900, 0.278002,
		0.607807, -0.620956, -0.494958,
		37.442753, 34.923370, 49.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954815, 34.715958, 50.346336>,  <37.017288, 35.358040, 50.043751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954815, 34.715958, 50.346336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305088, 34.708172, 50.153339>,  <37.515251, 34.703499, 50.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305088, 34.708172, 50.153339>,  <36.954815, 34.715958, 50.346336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305088, 34.708172, 50.153339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455107, -0.300766, 0.838103,
		-0.161430, -0.953499, -0.254518,
		0.875681, -0.019462, -0.482497,
		37.567791, 34.702332, 50.008591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221954, 34.026779, 50.548962>,  <36.954815, 34.715958, 50.346336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221954, 34.026779, 50.548962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532063, 34.229916, 50.398735>,  <37.718128, 34.351795, 50.308598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532063, 34.229916, 50.398735>,  <37.221954, 34.026779, 50.548962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532063, 34.229916, 50.398735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604305, -0.423379, 0.674956,
		0.183760, -0.750233, -0.635123,
		0.775272, 0.507838, -0.375570,
		37.764645, 34.382267, 50.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802620, 33.562321, 50.491020>,  <37.221954, 34.026779, 50.548962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802620, 33.562321, 50.491020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980988, 33.920013, 50.506535>,  <38.088009, 34.134628, 50.515842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980988, 33.920013, 50.506535>,  <37.802620, 33.562321, 50.491020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980988, 33.920013, 50.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581741, -0.322483, 0.746714,
		0.680244, -0.310410, -0.664013,
		0.445920, 0.894232, 0.038789,
		38.114765, 34.188282, 50.518169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541031, 33.468281, 50.580170>,  <37.802620, 33.562321, 50.491020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541031, 33.468281, 50.580170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496494, 33.838409, 50.725159>,  <38.469772, 34.060486, 50.812153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496494, 33.838409, 50.725159>,  <38.541031, 33.468281, 50.580170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496494, 33.838409, 50.725159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617109, -0.221518, 0.755054,
		0.778960, 0.307755, -0.546359,
		-0.111344, 0.925320, 0.362472,
		38.463093, 34.116005, 50.833900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129177, 33.709759, 50.815941>,  <38.541031, 33.468281, 50.580170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129177, 33.709759, 50.815941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903667, 33.972908, 51.015682>,  <38.768360, 34.130798, 51.135529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903667, 33.972908, 51.015682>,  <39.129177, 33.709759, 50.815941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903667, 33.972908, 51.015682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598181, -0.091653, 0.796103,
		0.569503, 0.747530, -0.341856,
		-0.563779, 0.657874, 0.499355,
		38.734535, 34.170269, 51.165489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608936, 34.152306, 51.235725>,  <39.129177, 33.709759, 50.815941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608936, 34.152306, 51.235725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249393, 34.137550, 51.410397>,  <39.033669, 34.128696, 51.515198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249393, 34.137550, 51.410397>,  <39.608936, 34.152306, 51.235725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249393, 34.137550, 51.410397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438133, -0.097118, 0.893648,
		0.009441, 0.994589, 0.103459,
		-0.898860, -0.036892, 0.436679,
		38.979736, 34.126484, 51.541401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714184, 34.445152, 51.884129>,  <39.608936, 34.152306, 51.235725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714184, 34.445152, 51.884129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345177, 34.304226, 51.947170>,  <39.123772, 34.219669, 51.984993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345177, 34.304226, 51.947170>,  <39.714184, 34.445152, 51.884129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345177, 34.304226, 51.947170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242625, -0.211803, 0.946717,
		-0.300164, 0.911599, 0.280872,
		-0.922516, -0.352317, 0.157601,
		39.068420, 34.198532, 51.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545597, 34.785355, 52.498199>,  <39.714184, 34.445152, 51.884129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545597, 34.785355, 52.498199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329487, 34.456226, 52.427685>,  <39.199821, 34.258751, 52.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329487, 34.456226, 52.427685>,  <39.545597, 34.785355, 52.498199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329487, 34.456226, 52.427685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118138, -0.281587, 0.952236,
		-0.833155, 0.493642, 0.249340,
		-0.540274, -0.822816, -0.176288,
		39.167404, 34.209381, 52.374798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070648, 34.742062, 52.938782>,  <39.545597, 34.785355, 52.498199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070648, 34.742062, 52.938782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184170, 34.376369, 52.823097>,  <39.252285, 34.156956, 52.753685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184170, 34.376369, 52.823097>,  <39.070648, 34.742062, 52.938782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184170, 34.376369, 52.823097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155079, -0.253883, 0.954722,
		-0.946258, -0.315807, 0.069724,
		0.283806, -0.914226, -0.289214,
		39.269310, 34.102100, 52.736332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655518, 34.248920, 53.250664>,  <39.070648, 34.742062, 52.938782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655518, 34.248920, 53.250664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015610, 34.092861, 53.173344>,  <39.231667, 33.999226, 53.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015610, 34.092861, 53.173344>,  <38.655518, 34.248920, 53.250664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015610, 34.092861, 53.173344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210067, 0.000301, 0.977687,
		-0.381387, -0.920751, 0.082229,
		0.900231, -0.390151, -0.193304,
		39.285679, 33.975815, 53.115353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689304, 33.541317, 53.527458>,  <38.655518, 34.248920, 53.250664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689304, 33.541317, 53.527458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038208, 33.736870, 53.532570>,  <39.247551, 33.854202, 53.535637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038208, 33.736870, 53.532570>,  <38.689304, 33.541317, 53.527458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038208, 33.736870, 53.532570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127200, -0.252025, 0.959325,
		0.472217, -0.835151, -0.282016,
		0.872256, 0.488882, 0.012780,
		39.299885, 33.883533, 53.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348331, 33.116589, 53.768753>,  <38.689304, 33.541317, 53.527458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348331, 33.116589, 53.768753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406010, 33.500278, 53.865986>,  <39.440617, 33.730492, 53.924324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406010, 33.500278, 53.865986>,  <39.348331, 33.116589, 53.768753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406010, 33.500278, 53.865986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171482, -0.266156, 0.948554,
		0.974578, -0.095092, -0.202869,
		0.144195, 0.959228, 0.243083,
		39.449268, 33.788048, 53.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205811, 32.427048, 54.029175>,  <39.348331, 33.116589, 53.768753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205811, 32.427048, 54.029175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364597, 32.069283, 54.111580>,  <39.459869, 31.854624, 54.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364597, 32.069283, 54.111580>,  <39.205811, 32.427048, 54.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364597, 32.069283, 54.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742236, -0.444863, -0.501182,
		0.539913, 0.046037, -0.840461,
		0.396963, -0.894415, 0.206017,
		39.483685, 31.800959, 54.173386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299381, 31.979799, 53.343246>,  <39.205811, 32.427048, 54.029175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299381, 31.979799, 53.343246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268063, 31.710327, 53.637192>,  <39.249271, 31.548643, 53.813560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268063, 31.710327, 53.637192>,  <39.299381, 31.979799, 53.343246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268063, 31.710327, 53.637192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757039, -0.439438, -0.483514,
		0.648661, -0.594178, -0.475595,
		-0.078299, -0.673681, 0.734863,
		39.244572, 31.508223, 53.857651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011520, 32.195610, 53.505386>,  <39.299381, 31.979799, 53.343246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011520, 32.195610, 53.505386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994816, 31.796566, 53.527390>,  <39.984795, 31.557138, 53.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994816, 31.796566, 53.527390>,  <40.011520, 32.195610, 53.505386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994816, 31.796566, 53.527390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856839, 0.007440, -0.515531,
		0.513891, -0.068662, -0.855103,
		-0.041759, -0.997612, 0.055009,
		39.982288, 31.497282, 53.543892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793827, 32.212044, 52.801449>,  <40.011520, 32.195610, 53.505386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793827, 32.212044, 52.801449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753700, 31.853373, 52.973915>,  <39.729626, 31.638170, 53.077396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753700, 31.853373, 52.973915>,  <39.793827, 32.212044, 52.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753700, 31.853373, 52.973915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853989, -0.144760, -0.499747,
		0.510528, -0.418343, -0.751232,
		-0.100317, -0.896679, 0.431164,
		39.723606, 31.584370, 53.103264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750786, 31.811853, 52.145138>,  <39.793827, 32.212044, 52.801449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750786, 31.811853, 52.145138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565197, 31.695444, 52.479809>,  <39.453842, 31.625599, 52.680611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565197, 31.695444, 52.479809>,  <39.750786, 31.811853, 52.145138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565197, 31.695444, 52.479809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842004, -0.148581, -0.518607,
		0.275240, -0.945109, -0.176103,
		-0.463975, -0.291021, 0.836680,
		39.426006, 31.608137, 52.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703430, 31.121580, 52.265808>,  <39.750786, 31.811853, 52.145138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703430, 31.121580, 52.265808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381004, 31.288464, 52.433712>,  <39.187550, 31.388594, 52.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381004, 31.288464, 52.433712>,  <39.703430, 31.121580, 52.265808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381004, 31.288464, 52.433712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582854, -0.436542, -0.685356,
		-0.102691, -0.797101, 0.595051,
		-0.806062, 0.417207, 0.419764,
		39.139187, 31.413626, 52.559643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150898, 30.638645, 52.305454>,  <39.703430, 31.121580, 52.265808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150898, 30.638645, 52.305454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973583, 30.995939, 52.335453>,  <38.867195, 31.210316, 52.353455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973583, 30.995939, 52.335453>,  <39.150898, 30.638645, 52.305454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973583, 30.995939, 52.335453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754614, -0.326715, -0.569048,
		-0.483790, -0.308848, 0.818877,
		-0.443289, 0.893236, 0.074999,
		38.840595, 31.263910, 52.357952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465855, 30.579763, 52.546204>,  <39.150898, 30.638645, 52.305454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465855, 30.579763, 52.546204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474087, 30.934231, 52.361042>,  <38.479027, 31.146912, 52.249947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474087, 30.934231, 52.361042>,  <38.465855, 30.579763, 52.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474087, 30.934231, 52.361042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829684, -0.243203, -0.502470,
		-0.557854, 0.394407, 0.730234,
		0.020583, 0.886169, -0.462905,
		38.480263, 31.200081, 52.222172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678806, 30.829899, 52.478714>,  <38.465855, 30.579763, 52.546204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678806, 30.829899, 52.478714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922909, 30.999245, 52.210876>,  <38.069370, 31.100853, 52.050175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922909, 30.999245, 52.210876>,  <37.678806, 30.829899, 52.478714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922909, 30.999245, 52.210876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659014, -0.197779, -0.725661,
		-0.439650, 0.884107, 0.158308,
		0.610252, 0.423365, -0.669593,
		38.105984, 31.126253, 52.009998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248894, 31.308115, 52.184956>,  <37.678806, 30.829899, 52.478714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248894, 31.308115, 52.184956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550495, 31.231312, 51.933685>,  <37.731457, 31.185230, 51.782925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550495, 31.231312, 51.933685>,  <37.248894, 31.308115, 52.184956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550495, 31.231312, 51.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643146, -0.021363, -0.765446,
		0.133551, 0.981161, -0.139597,
		0.754008, -0.192007, -0.628176,
		37.776699, 31.173710, 51.745232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000069, 31.675245, 51.609188>,  <37.248894, 31.308115, 52.184956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000069, 31.675245, 51.609188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302158, 31.453787, 51.468842>,  <37.483414, 31.320911, 51.384632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302158, 31.453787, 51.468842>,  <37.000069, 31.675245, 51.609188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302158, 31.453787, 51.468842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510470, -0.161015, -0.844686,
		0.411161, 0.817038, -0.404222,
		0.755227, -0.553645, -0.350870,
		37.528725, 31.287693, 51.363579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443878, 31.933619, 51.062199>,  <37.000069, 31.675245, 51.609188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443878, 31.933619, 51.062199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464603, 31.536232, 51.021523>,  <37.477039, 31.297800, 50.997116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464603, 31.536232, 51.021523>,  <37.443878, 31.933619, 51.062199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464603, 31.536232, 51.021523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347933, 0.077486, -0.934312,
		0.936086, 0.083794, -0.341644,
		0.051818, -0.993466, -0.101688,
		37.480148, 31.238192, 50.991016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710182, 31.899246, 50.424465>,  <37.443878, 31.933619, 51.062199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710182, 31.899246, 50.424465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590996, 31.526081, 50.505352>,  <37.519485, 31.302181, 50.553883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590996, 31.526081, 50.505352>,  <37.710182, 31.899246, 50.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590996, 31.526081, 50.505352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214094, -0.141128, -0.966564,
		0.930259, -0.331292, -0.157680,
		-0.297962, -0.932914, 0.202213,
		37.501606, 31.246206, 50.566017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006752, 31.455952, 49.888481>,  <37.710182, 31.899246, 50.424465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006752, 31.455952, 49.888481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700779, 31.254074, 50.048561>,  <37.517197, 31.132948, 50.144611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700779, 31.254074, 50.048561>,  <38.006752, 31.455952, 49.888481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700779, 31.254074, 50.048561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329796, -0.226818, -0.916400,
		0.553274, -0.832969, 0.007054,
		-0.764933, -0.504694, 0.400202,
		37.471298, 31.102667, 50.168621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954643, 30.904016, 49.472324>,  <38.006752, 31.455952, 49.888481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954643, 30.904016, 49.472324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596294, 30.927536, 49.648487>,  <37.381287, 30.941648, 49.754185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596294, 30.927536, 49.648487>,  <37.954643, 30.904016, 49.472324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596294, 30.927536, 49.648487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443392, -0.182258, -0.877602,
		0.028668, -0.981491, 0.189349,
		-0.895869, 0.058797, 0.440411,
		37.327534, 30.945175, 49.780609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568989, 30.254404, 49.349216>,  <37.954643, 30.904016, 49.472324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568989, 30.254404, 49.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290306, 30.533739, 49.414848>,  <37.123096, 30.701340, 49.454227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290306, 30.533739, 49.414848>,  <37.568989, 30.254404, 49.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290306, 30.533739, 49.414848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459469, -0.258768, -0.849663,
		-0.550893, -0.667357, 0.501150,
		-0.696710, 0.698336, 0.164077,
		37.081291, 30.743240, 49.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872192, 29.965027, 49.152157>,  <37.568989, 30.254404, 49.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872192, 29.965027, 49.152157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813473, 30.360439, 49.166313>,  <36.778240, 30.597687, 49.174805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813473, 30.360439, 49.166313>,  <36.872192, 29.965027, 49.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813473, 30.360439, 49.166313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275735, -0.006538, -0.961212,
		-0.949957, -0.150867, 0.273533,
		-0.146804, 0.988532, 0.035388,
		36.769432, 30.657000, 49.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226261, 30.059254, 48.966721>,  <36.872192, 29.965027, 49.152157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226261, 30.059254, 48.966721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389545, 30.421577, 48.921333>,  <36.487514, 30.638971, 48.894100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389545, 30.421577, 48.921333>,  <36.226261, 30.059254, 48.966721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389545, 30.421577, 48.921333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298820, 0.015136, -0.954189,
		-0.862596, 0.423416, 0.276853,
		0.408209, 0.905809, -0.113469,
		36.512009, 30.693319, 48.887291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692741, 30.565096, 48.817589>,  <36.226261, 30.059254, 48.966721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692741, 30.565096, 48.817589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027142, 30.710758, 48.653397>,  <36.227783, 30.798155, 48.554882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027142, 30.710758, 48.653397>,  <35.692741, 30.565096, 48.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027142, 30.710758, 48.653397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503156, 0.210266, -0.838225,
		-0.218934, 0.907293, 0.359009,
		0.836003, 0.364154, -0.410476,
		36.277943, 30.820005, 48.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446960, 31.102150, 48.331497>,  <35.692741, 30.565096, 48.817589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446960, 31.102150, 48.331497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829739, 31.034876, 48.236870>,  <36.059406, 30.994511, 48.180096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829739, 31.034876, 48.236870>,  <35.446960, 31.102150, 48.331497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829739, 31.034876, 48.236870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198428, 0.215768, -0.956070,
		0.211841, 0.961851, 0.173106,
		0.956948, -0.168186, -0.236566,
		36.116821, 30.984421, 48.165901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592476, 31.679098, 48.006657>,  <35.446960, 31.102150, 48.331497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592476, 31.679098, 48.006657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892445, 31.442862, 47.887447>,  <36.072426, 31.301119, 47.815922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892445, 31.442862, 47.887447>,  <35.592476, 31.679098, 48.006657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892445, 31.442862, 47.887447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140323, 0.298243, -0.944119,
		0.646475, 0.749833, 0.140785,
		0.749920, -0.590594, -0.298025,
		36.117420, 31.265684, 47.798038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068195, 32.111420, 47.650013>,  <35.592476, 31.679098, 48.006657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068195, 32.111420, 47.650013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091942, 31.736465, 47.512733>,  <36.106190, 31.511494, 47.430367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091942, 31.736465, 47.512733>,  <36.068195, 32.111420, 47.650013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091942, 31.736465, 47.512733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393922, 0.293905, -0.870888,
		0.917225, 0.186896, -0.351807,
		0.059368, -0.937384, -0.343199,
		36.109753, 31.455250, 47.409775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183468, 32.187653, 47.000980>,  <36.068195, 32.111420, 47.650013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183468, 32.187653, 47.000980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073227, 31.803143, 47.000324>,  <36.007084, 31.572437, 46.999931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073227, 31.803143, 47.000324>,  <36.183468, 32.187653, 47.000980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073227, 31.803143, 47.000324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308408, 0.090039, -0.946983,
		0.910456, -0.260482, -0.321278,
		-0.275599, -0.961271, -0.001642,
		35.990547, 31.514761, 46.999832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332706, 32.005615, 46.377468>,  <36.183468, 32.187653, 47.000980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332706, 32.005615, 46.377468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079067, 31.726389, 46.510506>,  <35.926884, 31.558853, 46.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079067, 31.726389, 46.510506>,  <36.332706, 32.005615, 46.377468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079067, 31.726389, 46.510506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480850, 0.019129, -0.876594,
		0.605559, -0.715777, -0.347795,
		-0.634099, -0.698067, 0.332598,
		35.888836, 31.516970, 46.610287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371284, 31.564163, 45.917400>,  <36.332706, 32.005615, 46.377468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371284, 31.564163, 45.917400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019890, 31.518324, 46.102928>,  <35.809052, 31.490820, 46.214245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019890, 31.518324, 46.102928>,  <36.371284, 31.564163, 45.917400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019890, 31.518324, 46.102928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471916, 0.056716, -0.879817,
		0.074546, -0.991788, -0.103919,
		-0.878486, -0.114628, 0.463813,
		35.756344, 31.483944, 46.242073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136024, 31.037579, 45.560787>,  <36.371284, 31.564163, 45.917400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136024, 31.037579, 45.560787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839996, 31.241613, 45.736107>,  <35.662380, 31.364035, 45.841297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839996, 31.241613, 45.736107>,  <36.136024, 31.037579, 45.560787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839996, 31.241613, 45.736107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500776, 0.017046, -0.865409,
		-0.448905, -0.859954, 0.242824,
		-0.740072, 0.510087, 0.438297,
		35.617973, 31.394640, 45.867596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413925, 30.662897, 45.354839>,  <36.136024, 31.037579, 45.560787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413925, 30.662897, 45.354839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304012, 31.027502, 45.477242>,  <35.238064, 31.246265, 45.550682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304012, 31.027502, 45.477242>,  <35.413925, 30.662897, 45.354839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304012, 31.027502, 45.477242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664304, 0.050110, -0.745780,
		-0.695122, -0.408208, 0.591753,
		-0.274781, 0.911513, 0.306007,
		35.221577, 31.300957, 45.569042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649883, 30.613472, 45.490562>,  <35.413925, 30.662897, 45.354839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649883, 30.613472, 45.490562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750412, 30.993746, 45.417858>,  <34.810730, 31.221910, 45.374233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750412, 30.993746, 45.417858>,  <34.649883, 30.613472, 45.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750412, 30.993746, 45.417858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624541, 0.015814, -0.780832,
		-0.739450, 0.309758, 0.597716,
		0.251321, 0.950684, -0.181763,
		34.825809, 31.278952, 45.363331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061565, 30.935032, 45.308712>,  <34.649883, 30.613472, 45.490562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061565, 30.935032, 45.308712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311642, 31.215914, 45.172451>,  <34.461689, 31.384443, 45.090694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311642, 31.215914, 45.172451>,  <34.061565, 30.935032, 45.308712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311642, 31.215914, 45.172451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589606, 0.138962, -0.795647,
		-0.511370, 0.698282, 0.500903,
		0.625192, 0.702205, -0.340650,
		34.499199, 31.426575, 45.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563984, 31.406857, 44.999363>,  <34.061565, 30.935032, 45.308712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563984, 31.406857, 44.999363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919189, 31.479372, 44.830334>,  <34.132313, 31.522881, 44.728916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919189, 31.479372, 44.830334>,  <33.563984, 31.406857, 44.999363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919189, 31.479372, 44.830334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459651, 0.325147, -0.826438,
		-0.012423, 0.928124, 0.372063,
		0.888013, 0.181286, -0.422574,
		34.185593, 31.533758, 44.703560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542419, 32.082893, 44.665993>,  <33.563984, 31.406857, 44.999363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542419, 32.082893, 44.665993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832592, 31.867661, 44.494308>,  <34.006695, 31.738522, 44.391296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832592, 31.867661, 44.494308>,  <33.542419, 32.082893, 44.665993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832592, 31.867661, 44.494308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309384, 0.302130, -0.901665,
		0.614846, 0.786884, 0.052701,
		0.725428, -0.538080, -0.429213,
		34.050220, 31.706236, 44.365543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698421, 32.480732, 44.141582>,  <33.542419, 32.082893, 44.665993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698421, 32.480732, 44.141582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886604, 32.143055, 44.038815>,  <33.999516, 31.940449, 43.977154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886604, 32.143055, 44.038815>,  <33.698421, 32.480732, 44.141582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886604, 32.143055, 44.038815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153996, 0.208138, -0.965900,
		0.868881, 0.493980, -0.032082,
		0.470458, -0.844193, -0.256919,
		34.027740, 31.889797, 43.961739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128063, 32.656807, 43.599216>,  <33.698421, 32.480732, 44.141582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128063, 32.656807, 43.599216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072292, 32.261456, 43.574993>,  <34.038830, 32.024246, 43.560459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072292, 32.261456, 43.574993>,  <34.128063, 32.656807, 43.599216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072292, 32.261456, 43.574993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150989, 0.081662, -0.985156,
		0.978654, -0.128213, -0.160620,
		-0.139426, -0.988379, -0.060560,
		34.030464, 31.964941, 43.556824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479008, 32.416439, 43.038826>,  <34.128063, 32.656807, 43.599216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479008, 32.416439, 43.038826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205242, 32.135254, 43.116215>,  <34.040985, 31.966543, 43.162647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205242, 32.135254, 43.116215>,  <34.479008, 32.416439, 43.038826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205242, 32.135254, 43.116215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148353, -0.125538, -0.980934,
		0.713844, -0.700064, -0.018367,
		-0.684411, -0.702959, 0.193471,
		33.999920, 31.924366, 43.174255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621250, 31.824200, 42.555275>,  <34.479008, 32.416439, 43.038826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621250, 31.824200, 42.555275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234364, 31.831457, 42.656601>,  <34.002232, 31.835812, 42.717396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234364, 31.831457, 42.656601>,  <34.621250, 31.824200, 42.555275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234364, 31.831457, 42.656601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251655, -0.202648, -0.946363,
		0.034166, -0.979083, 0.200569,
		-0.967213, 0.018141, 0.253315,
		33.944199, 31.836899, 42.732597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351837, 31.391247, 42.196255>,  <34.621250, 31.824200, 42.555275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351837, 31.391247, 42.196255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984196, 31.500214, 42.310123>,  <33.763611, 31.565594, 42.378445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984196, 31.500214, 42.310123>,  <34.351837, 31.391247, 42.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984196, 31.500214, 42.310123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385950, -0.477054, -0.789596,
		-0.079295, -0.835589, 0.543601,
		-0.919105, 0.272414, 0.284668,
		33.708466, 31.581938, 42.395523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964043, 30.879213, 41.830692>,  <34.351837, 31.391247, 42.196255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964043, 30.879213, 41.830692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721821, 31.183981, 41.922588>,  <33.576488, 31.366842, 41.977726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721821, 31.183981, 41.922588>,  <33.964043, 30.879213, 41.830692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721821, 31.183981, 41.922588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338462, 0.014693, -0.940865,
		-0.720239, -0.647506, 0.248983,
		-0.605558, 0.761919, 0.229739,
		33.540154, 31.412556, 41.991508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363907, 30.761763, 41.462543>,  <33.964043, 30.879213, 41.830692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363907, 30.761763, 41.462543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337749, 31.150856, 41.551544>,  <33.322056, 31.384312, 41.604946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337749, 31.150856, 41.551544>,  <33.363907, 30.761763, 41.462543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337749, 31.150856, 41.551544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451122, 0.170077, -0.876107,
		-0.890063, -0.157668, 0.427701,
		-0.065392, 0.972736, 0.222506,
		33.318130, 31.442677, 41.618298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740414, 31.001595, 41.106537>,  <33.363907, 30.761763, 41.462543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740414, 31.001595, 41.106537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936970, 31.340588, 41.186840>,  <33.054905, 31.543983, 41.235023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936970, 31.340588, 41.186840>,  <32.740414, 31.001595, 41.106537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936970, 31.340588, 41.186840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396614, 0.422970, -0.814735,
		-0.775390, 0.320732, 0.543969,
		0.491394, 0.847483, 0.200760,
		33.084389, 31.594833, 41.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219547, 31.532385, 40.933792>,  <32.740414, 31.001595, 41.106537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219547, 31.532385, 40.933792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572407, 31.720552, 40.942970>,  <32.784122, 31.833452, 40.948479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572407, 31.720552, 40.942970>,  <32.219547, 31.532385, 40.933792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572407, 31.720552, 40.942970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179517, 0.380878, -0.907031,
		-0.435425, 0.796013, 0.420438,
		0.882145, 0.470420, 0.022946,
		32.837051, 31.861679, 40.949856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069645, 32.140850, 40.635380>,  <32.219547, 31.532385, 40.933792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069645, 32.140850, 40.635380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463726, 32.078537, 40.606819>,  <32.700176, 32.041149, 40.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463726, 32.078537, 40.606819>,  <32.069645, 32.140850, 40.635380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463726, 32.078537, 40.606819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001583, 0.408367, -0.912817,
		0.171362, 0.899426, 0.402079,
		0.985207, -0.155785, -0.071402,
		32.759289, 32.031803, 40.585400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335339, 32.754177, 40.394802>,  <32.069645, 32.140850, 40.635380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335339, 32.754177, 40.394802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605640, 32.473949, 40.303104>,  <32.767822, 32.305813, 40.248085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605640, 32.473949, 40.303104>,  <32.335339, 32.754177, 40.394802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605640, 32.473949, 40.303104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135347, 0.187778, -0.972841,
		0.724592, 0.688432, 0.032072,
		0.675758, -0.700572, -0.229240,
		32.808369, 32.263779, 40.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907993, 33.031197, 39.965912>,  <32.335339, 32.754177, 40.394802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907993, 33.031197, 39.965912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913593, 32.643272, 39.868523>,  <32.916954, 32.410519, 39.810089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913593, 32.643272, 39.868523>,  <32.907993, 33.031197, 39.965912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913593, 32.643272, 39.868523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040515, 0.243850, -0.968966,
		0.999081, 0.003703, 0.042706,
		0.014002, -0.969806, -0.243476,
		32.917793, 32.352329, 39.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432899, 32.931873, 39.514835>,  <32.907993, 33.031197, 39.965912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432899, 32.931873, 39.514835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186153, 32.624783, 39.445461>,  <33.038105, 32.440529, 39.403839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186153, 32.624783, 39.445461>,  <33.432899, 32.931873, 39.514835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186153, 32.624783, 39.445461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013267, 0.230464, -0.972990,
		0.786956, -0.597903, -0.152351,
		-0.616866, -0.767722, -0.173433,
		33.001095, 32.394466, 39.393433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680622, 32.699524, 38.936565>,  <33.432899, 32.931873, 39.514835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680622, 32.699524, 38.936565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309895, 32.554691, 38.976364>,  <33.087456, 32.467793, 39.000244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309895, 32.554691, 38.976364>,  <33.680622, 32.699524, 38.936565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309895, 32.554691, 38.976364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171286, 0.171874, -0.970114,
		0.334162, -0.916163, -0.221316,
		-0.926821, -0.362083, 0.099492,
		33.031849, 32.446068, 39.006210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570816, 32.294827, 38.413475>,  <33.680622, 32.699524, 38.936565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570816, 32.294827, 38.413475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191540, 32.383846, 38.504162>,  <32.963974, 32.437260, 38.558575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191540, 32.383846, 38.504162>,  <33.570816, 32.294827, 38.413475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191540, 32.383846, 38.504162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210892, 0.092785, -0.973096,
		-0.237602, -0.970495, -0.041043,
		-0.948193, 0.222554, 0.226716,
		32.907082, 32.450611, 38.572178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095600, 31.903898, 38.496307>,  <33.570816, 32.294827, 38.413475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095600, 31.903898, 38.496307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392651, 32.038166, 38.264507>,  <34.570881, 32.118729, 38.125427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392651, 32.038166, 38.264507>,  <34.095600, 31.903898, 38.496307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392651, 32.038166, 38.264507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665911, -0.462061, 0.585715,
		-0.071158, -0.820868, -0.566668,
		0.742630, 0.335672, -0.579504,
		34.615440, 32.138866, 38.090656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511135, 31.330137, 38.299164>,  <34.095600, 31.903898, 38.496307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511135, 31.330137, 38.299164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703583, 31.680206, 38.319553>,  <34.819054, 31.890247, 38.331787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703583, 31.680206, 38.319553>,  <34.511135, 31.330137, 38.299164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703583, 31.680206, 38.319553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697601, -0.417422, 0.582333,
		0.530918, -0.244613, -0.811351,
		0.481122, 0.875171, 0.050975,
		34.847919, 31.942757, 38.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187401, 31.164454, 38.265747>,  <34.511135, 31.330137, 38.299164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187401, 31.164454, 38.265747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192204, 31.532461, 38.422421>,  <35.195084, 31.753265, 38.516426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192204, 31.532461, 38.422421>,  <35.187401, 31.164454, 38.265747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192204, 31.532461, 38.422421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714320, -0.281999, 0.640487,
		0.699717, 0.272100, -0.660574,
		0.012005, 0.920021, 0.391686,
		35.195805, 31.808468, 38.539925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880322, 31.369726, 38.264538>,  <35.187401, 31.164454, 38.265747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880322, 31.369726, 38.264538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715717, 31.588348, 38.556274>,  <35.616955, 31.719522, 38.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715717, 31.588348, 38.556274>,  <35.880322, 31.369726, 38.264538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715717, 31.588348, 38.556274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824237, -0.118339, 0.553741,
		0.388959, 0.829019, -0.401793,
		-0.411514, 0.546555, 0.729338,
		35.592262, 31.752316, 38.775074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436382, 31.730576, 38.633949>,  <35.880322, 31.369726, 38.264538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436382, 31.730576, 38.633949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147392, 31.745934, 38.910084>,  <35.973999, 31.755148, 39.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147392, 31.745934, 38.910084>,  <36.436382, 31.730576, 38.633949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147392, 31.745934, 38.910084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654038, -0.285830, 0.700382,
		0.224210, 0.957511, 0.181391,
		-0.722471, 0.038396, 0.690335,
		35.930653, 31.757452, 39.117184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793133, 32.118561, 39.121677>,  <36.436382, 31.730576, 38.633949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793133, 32.118561, 39.121677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489002, 31.950102, 39.319481>,  <36.306522, 31.849026, 39.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489002, 31.950102, 39.319481>,  <36.793133, 32.118561, 39.121677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489002, 31.950102, 39.319481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603458, -0.176351, 0.777650,
		-0.240298, 0.889683, 0.388229,
		-0.760326, -0.421148, 0.494509,
		36.260906, 31.823757, 39.467834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843525, 32.349495, 39.794804>,  <36.793133, 32.118561, 39.121677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843525, 32.349495, 39.794804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624268, 32.015224, 39.808567>,  <36.492714, 31.814663, 39.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624268, 32.015224, 39.808567>,  <36.843525, 32.349495, 39.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624268, 32.015224, 39.808567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617427, -0.376552, 0.690646,
		-0.564201, 0.399816, 0.722374,
		-0.548143, -0.835676, 0.034406,
		36.459824, 31.764521, 39.818890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642349, 32.286060, 40.474770>,  <36.843525, 32.349495, 39.794804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642349, 32.286060, 40.474770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596691, 31.924736, 40.309357>,  <36.569298, 31.707943, 40.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596691, 31.924736, 40.309357>,  <36.642349, 32.286060, 40.474770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596691, 31.924736, 40.309357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516853, -0.409477, 0.751792,
		-0.848430, -0.127919, 0.513618,
		-0.114147, -0.903308, -0.413528,
		36.562447, 31.653744, 40.185299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358112, 31.870083, 41.002918>,  <36.642349, 32.286060, 40.474770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358112, 31.870083, 41.002918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555134, 31.647150, 40.735554>,  <36.673347, 31.513390, 40.575134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555134, 31.647150, 40.735554>,  <36.358112, 31.870083, 41.002918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555134, 31.647150, 40.735554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574394, -0.368809, 0.730788,
		-0.653810, -0.743880, 0.138473,
		0.492549, -0.557334, -0.668411,
		36.702900, 31.479950, 40.535030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208477, 31.190098, 41.192307>,  <36.358112, 31.870083, 41.002918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208477, 31.190098, 41.192307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523808, 31.121841, 40.955856>,  <36.713005, 31.080887, 40.813988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523808, 31.121841, 40.955856>,  <36.208477, 31.190098, 41.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523808, 31.121841, 40.955856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478027, -0.434986, 0.763071,
		-0.387340, -0.884121, -0.261340,
		0.788326, -0.170640, -0.591120,
		36.760303, 31.070648, 40.778519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371258, 30.468761, 41.274445>,  <36.208477, 31.190098, 41.192307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371258, 30.468761, 41.274445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717606, 30.607727, 41.130459>,  <36.925415, 30.691107, 41.044067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717606, 30.607727, 41.130459>,  <36.371258, 30.468761, 41.274445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717606, 30.607727, 41.130459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466415, -0.300391, 0.831999,
		0.180916, -0.888296, -0.422137,
		0.865868, 0.347413, -0.359969,
		36.977367, 30.711950, 41.022469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865967, 29.911623, 41.340992>,  <36.371258, 30.468761, 41.274445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865967, 29.911623, 41.340992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091446, 30.241255, 41.318577>,  <37.226734, 30.439034, 41.305126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091446, 30.241255, 41.318577>,  <36.865967, 29.911623, 41.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091446, 30.241255, 41.318577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470034, -0.264244, 0.842166,
		0.679204, -0.501065, -0.536299,
		0.563693, 0.824081, -0.056042,
		37.260555, 30.488480, 41.301765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602432, 29.638470, 41.388020>,  <36.865967, 29.911623, 41.340992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602432, 29.638470, 41.388020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616222, 30.024813, 41.490730>,  <37.624496, 30.256618, 41.552357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616222, 30.024813, 41.490730>,  <37.602432, 29.638470, 41.388020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616222, 30.024813, 41.490730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488636, -0.240414, 0.838711,
		0.871806, 0.096554, -0.480240,
		0.034476, 0.965856, 0.256774,
		37.626564, 30.314569, 41.567764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303318, 29.651234, 41.655781>,  <37.602432, 29.638470, 41.388020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303318, 29.651234, 41.655781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078007, 29.958942, 41.776405>,  <37.942822, 30.143568, 41.848778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078007, 29.958942, 41.776405>,  <38.303318, 29.651234, 41.655781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078007, 29.958942, 41.776405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406088, -0.060104, 0.911855,
		0.719591, 0.636086, -0.278537,
		-0.563277, 0.769274, 0.301557,
		37.909023, 30.189724, 41.866871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658520, 30.074253, 42.181709>,  <38.303318, 29.651234, 41.655781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658520, 30.074253, 42.181709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284229, 30.209425, 42.222164>,  <38.059654, 30.290527, 42.246437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284229, 30.209425, 42.222164>,  <38.658520, 30.074253, 42.181709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284229, 30.209425, 42.222164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179357, 0.208909, 0.961347,
		0.303738, 0.917693, -0.256091,
		-0.935721, 0.337929, 0.101141,
		38.003513, 30.310804, 42.252506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683987, 30.668575, 42.584316>,  <38.658520, 30.074253, 42.181709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683987, 30.668575, 42.584316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297485, 30.581045, 42.638687>,  <38.065586, 30.528526, 42.671310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297485, 30.581045, 42.638687>,  <38.683987, 30.668575, 42.584316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297485, 30.581045, 42.638687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137050, 0.010128, 0.990512,
		-0.218125, 0.975712, 0.020204,
		-0.966250, -0.218825, 0.135930,
		38.007610, 30.515398, 42.679466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494362, 31.094084, 43.193321>,  <38.683987, 30.668575, 42.584316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494362, 31.094084, 43.193321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192738, 30.832840, 43.165512>,  <38.011761, 30.676094, 43.148827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192738, 30.832840, 43.165512>,  <38.494362, 31.094084, 43.193321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192738, 30.832840, 43.165512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114086, 0.025997, 0.993131,
		-0.646818, 0.756815, -0.094114,
		-0.754063, -0.653111, -0.069527,
		37.966518, 30.636906, 43.144653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902851, 31.313940, 43.650070>,  <38.494362, 31.094084, 43.193321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902851, 31.313940, 43.650070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825325, 30.924070, 43.605446>,  <37.778809, 30.690147, 43.578671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825325, 30.924070, 43.605446>,  <37.902851, 31.313940, 43.650070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825325, 30.924070, 43.605446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319833, -0.044724, 0.946417,
		-0.927439, 0.219105, -0.303065,
		-0.193811, -0.974675, -0.111556,
		37.767181, 30.631668, 43.571980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270866, 31.272148, 43.906273>,  <37.902851, 31.313940, 43.650070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270866, 31.272148, 43.906273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453960, 30.916571, 43.912743>,  <37.563816, 30.703224, 43.916626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453960, 30.916571, 43.912743>,  <37.270866, 31.272148, 43.906273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453960, 30.916571, 43.912743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091982, -0.029254, 0.995331,
		-0.884319, -0.457083, -0.095158,
		0.457732, -0.888943, 0.016173,
		37.591282, 30.649887, 43.917595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903786, 30.856709, 44.392456>,  <37.270866, 31.272148, 43.906273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903786, 30.856709, 44.392456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253738, 30.664816, 44.365810>,  <37.463711, 30.549681, 44.349823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253738, 30.664816, 44.365810>,  <36.903786, 30.856709, 44.392456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253738, 30.664816, 44.365810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046410, -0.053861, 0.997469,
		-0.482107, -0.875759, -0.024858,
		0.874882, -0.479734, -0.066611,
		37.516205, 30.520897, 44.345829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905006, 30.424837, 44.959484>,  <36.903786, 30.856709, 44.392456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905006, 30.424837, 44.959484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294731, 30.407383, 44.871113>,  <37.528564, 30.396910, 44.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294731, 30.407383, 44.871113>,  <36.905006, 30.424837, 44.959484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294731, 30.407383, 44.871113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210009, -0.178121, 0.961337,
		-0.081299, -0.983041, -0.164382,
		0.974313, -0.043634, -0.220928,
		37.587025, 30.394293, 44.804832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162773, 29.850422, 45.320290>,  <36.905006, 30.424837, 44.959484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162773, 29.850422, 45.320290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466141, 30.105080, 45.264465>,  <37.648163, 30.257875, 45.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466141, 30.105080, 45.264465>,  <37.162773, 29.850422, 45.320290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466141, 30.105080, 45.264465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196935, -0.019729, 0.980218,
		0.621299, -0.770903, -0.140340,
		0.758422, 0.636646, -0.139560,
		37.693668, 30.296074, 45.222599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823441, 29.514637, 45.713970>,  <37.162773, 29.850422, 45.320290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823441, 29.514637, 45.713970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908703, 29.900919, 45.654671>,  <37.959862, 30.132689, 45.619091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908703, 29.900919, 45.654671>,  <37.823441, 29.514637, 45.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908703, 29.900919, 45.654671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195081, 0.106611, 0.974976,
		0.957344, -0.236745, -0.165666,
		0.213159, 0.965705, -0.148247,
		37.972652, 30.190630, 45.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528767, 29.693811, 45.912601>,  <37.823441, 29.514637, 45.713970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528767, 29.693811, 45.912601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341442, 30.045605, 45.946537>,  <38.229050, 30.256680, 45.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341442, 30.045605, 45.946537>,  <38.528767, 29.693811, 45.912601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341442, 30.045605, 45.946537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322899, 0.080973, 0.942963,
		0.822449, 0.468994, -0.321904,
		-0.468309, 0.879482, 0.084842,
		38.200951, 30.309450, 45.971989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058712, 30.183779, 45.993176>,  <38.528767, 29.693811, 45.912601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058712, 30.183779, 45.993176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729301, 30.370523, 46.122070>,  <38.531654, 30.482571, 46.199409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729301, 30.370523, 46.122070>,  <39.058712, 30.183779, 45.993176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729301, 30.370523, 46.122070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474856, 0.256575, 0.841832,
		0.310341, 0.846291, -0.432990,
		-0.823529, 0.466863, 0.322240,
		38.482243, 30.510582, 46.218742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224762, 30.351574, 46.590416>,  <39.058712, 30.183779, 45.993176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224762, 30.351574, 46.590416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882164, 30.556185, 46.617985>,  <38.676605, 30.678951, 46.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882164, 30.556185, 46.617985>,  <39.224762, 30.351574, 46.590416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882164, 30.556185, 46.617985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309155, 0.401492, 0.862106,
		0.413319, 0.759700, -0.502019,
		-0.856499, 0.511527, 0.068921,
		38.625214, 30.709642, 46.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331875, 31.115995, 46.471649>,  <39.224762, 30.351574, 46.590416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331875, 31.115995, 46.471649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059082, 30.977949, 46.729580>,  <38.895409, 30.895121, 46.884338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059082, 30.977949, 46.729580>,  <39.331875, 31.115995, 46.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059082, 30.977949, 46.729580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474810, 0.461687, 0.749267,
		-0.556292, 0.817154, -0.150996,
		-0.681979, -0.345116, 0.644826,
		38.854488, 30.874414, 46.923027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195175, 31.624361, 46.906357>,  <39.331875, 31.115995, 46.471649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195175, 31.624361, 46.906357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039234, 31.332863, 47.131550>,  <38.945671, 31.157963, 47.266666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039234, 31.332863, 47.131550>,  <39.195175, 31.624361, 46.906357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039234, 31.332863, 47.131550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332682, 0.458607, 0.824016,
		-0.858685, 0.508535, 0.063654,
		-0.389849, -0.728747, 0.562979,
		38.922279, 31.114239, 47.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972260, 31.938932, 47.578896>,  <39.195175, 31.624361, 46.906357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972260, 31.938932, 47.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924179, 31.566423, 47.716465>,  <38.895332, 31.342918, 47.799007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924179, 31.566423, 47.716465>,  <38.972260, 31.938932, 47.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924179, 31.566423, 47.716465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403735, 0.270633, 0.873931,
		-0.906946, 0.243898, 0.343458,
		-0.120199, -0.931274, 0.343920,
		38.888119, 31.287041, 47.819641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739590, 32.079842, 48.290207>,  <38.972260, 31.938932, 47.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739590, 32.079842, 48.290207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897232, 31.714235, 48.251736>,  <38.991817, 31.494871, 48.228653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897232, 31.714235, 48.251736>,  <38.739590, 32.079842, 48.290207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897232, 31.714235, 48.251736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526324, 0.138667, 0.838900,
		-0.753435, -0.381233, 0.535720,
		0.394103, -0.914020, -0.096176,
		39.015465, 31.440029, 48.222881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694061, 31.748386, 48.973740>,  <38.739590, 32.079842, 48.290207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694061, 31.748386, 48.973740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975243, 31.549488, 48.770325>,  <39.143951, 31.430149, 48.648277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975243, 31.549488, 48.770325>,  <38.694061, 31.748386, 48.973740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975243, 31.549488, 48.770325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594422, 0.018130, 0.803949,
		-0.390541, -0.867420, 0.308319,
		0.702951, -0.497246, -0.508533,
		39.186127, 31.400314, 48.617764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829441, 31.158051, 49.308155>,  <38.694061, 31.748386, 48.973740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829441, 31.158051, 49.308155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159916, 31.194387, 49.085743>,  <39.358200, 31.216190, 48.952297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159916, 31.194387, 49.085743>,  <38.829441, 31.158051, 49.308155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159916, 31.194387, 49.085743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561395, -0.049605, 0.826060,
		0.047461, -0.994629, -0.091982,
		0.826186, 0.090844, -0.556026,
		39.407772, 31.221640, 48.918934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301369, 30.566811, 49.454090>,  <38.829441, 31.158051, 49.308155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301369, 30.566811, 49.454090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500721, 30.889582, 49.327293>,  <39.620335, 31.083244, 49.251217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500721, 30.889582, 49.327293>,  <39.301369, 30.566811, 49.454090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500721, 30.889582, 49.327293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639575, -0.095371, 0.762789,
		0.585283, -0.582901, -0.563622,
		0.498384, 0.806926, -0.316990,
		39.650238, 31.131660, 49.232197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919434, 30.226799, 49.505501>,  <39.301369, 30.566811, 49.454090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919434, 30.226799, 49.505501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979523, 30.622189, 49.512985>,  <40.015575, 30.859423, 49.517475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979523, 30.622189, 49.512985>,  <39.919434, 30.226799, 49.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979523, 30.622189, 49.512985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782870, -0.130491, 0.608347,
		0.603779, -0.076733, -0.793450,
		0.150218, 0.988476, 0.018716,
		40.024590, 30.918732, 49.518600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597206, 30.245163, 49.756966>,  <39.919434, 30.226799, 49.505501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597206, 30.245163, 49.756966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492485, 30.628641, 49.801445>,  <40.429653, 30.858728, 49.828133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492485, 30.628641, 49.801445>,  <40.597206, 30.245163, 49.756966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492485, 30.628641, 49.801445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705043, 0.111299, 0.700377,
		0.659071, 0.261757, -0.705059,
		-0.261801, 0.958695, 0.111196,
		40.413944, 30.916250, 49.834805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162193, 30.599985, 49.737759>,  <40.597206, 30.245163, 49.756966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162193, 30.599985, 49.737759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911072, 30.827991, 49.949776>,  <40.760399, 30.964794, 50.076984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911072, 30.827991, 49.949776>,  <41.162193, 30.599985, 49.737759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911072, 30.827991, 49.949776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646373, 0.002402, 0.763018,
		0.433658, 0.821631, -0.369950,
		-0.627808, 0.570014, 0.530038,
		40.722729, 30.998997, 50.108788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576439, 31.097963, 50.060844>,  <41.162193, 30.599985, 49.737759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576439, 31.097963, 50.060844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244045, 31.045811, 50.277164>,  <41.044609, 31.014519, 50.406956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244045, 31.045811, 50.277164>,  <41.576439, 31.097963, 50.060844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244045, 31.045811, 50.277164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553571, -0.097765, 0.827043,
		-0.054958, 0.986632, 0.153416,
		-0.830986, -0.130379, 0.540798,
		40.994751, 31.006697, 50.439404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705093, 31.448692, 50.695122>,  <41.576439, 31.097963, 50.060844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705093, 31.448692, 50.695122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418858, 31.181452, 50.776676>,  <41.247116, 31.021107, 50.825611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418858, 31.181452, 50.776676>,  <41.705093, 31.448692, 50.695122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418858, 31.181452, 50.776676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457123, -0.227194, 0.859896,
		-0.528176, 0.708536, 0.467983,
		-0.715590, -0.668102, 0.203889,
		41.204182, 30.981022, 50.837845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162495, 31.845194, 50.170025>,  <41.705093, 31.448692, 50.695122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162495, 31.845194, 50.170025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422684, 32.148972, 50.165482>,  <42.578796, 32.331238, 50.162754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422684, 32.148972, 50.165482>,  <42.162495, 31.845194, 50.170025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422684, 32.148972, 50.165482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444140, 0.368194, -0.816806,
		-0.616136, 0.536357, 0.576800,
		0.650474, 0.759444, -0.011360,
		42.617825, 32.376804, 50.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801613, 32.404469, 50.197155>,  <42.162495, 31.845194, 50.170025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801613, 32.404469, 50.197155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152763, 32.519325, 50.043858>,  <42.363453, 32.588242, 49.951878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152763, 32.519325, 50.043858>,  <41.801613, 32.404469, 50.197155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152763, 32.519325, 50.043858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471192, 0.375072, -0.798311,
		-0.085486, 0.881402, 0.464567,
		0.877878, 0.287145, -0.383246,
		42.416126, 32.605469, 49.928883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649513, 32.979172, 49.806255>,  <41.801613, 32.404469, 50.197155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649513, 32.979172, 49.806255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996754, 32.874496, 49.637531>,  <42.205097, 32.811691, 49.536297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996754, 32.874496, 49.637531>,  <41.649513, 32.979172, 49.806255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996754, 32.874496, 49.637531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383748, 0.185214, -0.904673,
		0.314868, 0.947214, 0.060361,
		0.868099, -0.261689, -0.421810,
		42.257183, 32.795990, 49.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748985, 33.463081, 49.280582>,  <41.649513, 32.979172, 49.806255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748985, 33.463081, 49.280582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002876, 33.173603, 49.172230>,  <42.155212, 32.999916, 49.107216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002876, 33.173603, 49.172230>,  <41.748985, 33.463081, 49.280582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002876, 33.173603, 49.172230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149405, 0.229003, -0.961892,
		0.758153, 0.651013, 0.037231,
		0.634730, -0.723699, -0.270884,
		42.193295, 32.956493, 49.090965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149036, 33.752861, 48.878395>,  <41.748985, 33.463081, 49.280582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149036, 33.752861, 48.878395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186878, 33.365627, 48.785568>,  <42.209583, 33.133286, 48.729874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186878, 33.365627, 48.785568>,  <42.149036, 33.752861, 48.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186878, 33.365627, 48.785568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285448, 0.196945, -0.937941,
		0.953714, 0.154974, -0.257707,
		0.094602, -0.968089, -0.232066,
		42.215260, 33.075199, 48.715950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554848, 33.704384, 48.223526>,  <42.149036, 33.752861, 48.878395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554848, 33.704384, 48.223526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364220, 33.357117, 48.278893>,  <42.249844, 33.148754, 48.312111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364220, 33.357117, 48.278893>,  <42.554848, 33.704384, 48.223526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364220, 33.357117, 48.278893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263082, -0.009395, -0.964728,
		0.838848, -0.496178, -0.223922,
		-0.476573, -0.868170, 0.138416,
		42.221249, 33.096664, 48.320415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826660, 33.280796, 47.744995>,  <42.554848, 33.704384, 48.223526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826660, 33.280796, 47.744995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460114, 33.140289, 47.821815>,  <42.240185, 33.055984, 47.867908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460114, 33.140289, 47.821815>,  <42.826660, 33.280796, 47.744995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460114, 33.140289, 47.821815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209406, 0.011714, -0.977758,
		0.341207, -0.936201, -0.084292,
		-0.916366, -0.351270, 0.192050,
		42.185204, 33.034908, 47.879429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610878, 32.797894, 47.141102>,  <42.826660, 33.280796, 47.744995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610878, 32.797894, 47.141102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265976, 32.851440, 47.336487>,  <42.059032, 32.883568, 47.453716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265976, 32.851440, 47.336487>,  <42.610878, 32.797894, 47.141102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265976, 32.851440, 47.336487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484079, 0.065764, -0.872550,
		-0.148931, -0.988814, 0.008098,
		-0.862257, 0.133870, 0.488459,
		42.007298, 32.891602, 47.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106350, 32.467930, 46.726498>,  <42.610878, 32.797894, 47.141102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106350, 32.467930, 46.726498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890579, 32.700115, 46.970490>,  <41.761116, 32.839428, 47.116886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890579, 32.700115, 46.970490>,  <42.106350, 32.467930, 46.726498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890579, 32.700115, 46.970490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609251, 0.230987, -0.758589,
		-0.581234, -0.780835, 0.229050,
		-0.539426, 0.580467, 0.609982,
		41.728752, 32.874256, 47.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420689, 32.160290, 46.665909>,  <42.106350, 32.467930, 46.726498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420689, 32.160290, 46.665909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412426, 32.541859, 46.785648>,  <41.407467, 32.770798, 46.857494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412426, 32.541859, 46.785648>,  <41.420689, 32.160290, 46.665909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412426, 32.541859, 46.785648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694421, 0.201717, -0.690717,
		-0.719272, -0.222144, 0.658255,
		-0.020657, 0.953919, 0.299351,
		41.406227, 32.828033, 46.875454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699947, 32.493595, 47.056221>,  <41.420689, 32.160290, 46.665909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699947, 32.493595, 47.056221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896236, 32.786781, 46.867775>,  <41.014011, 32.962692, 46.754707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896236, 32.786781, 46.867775>,  <40.699947, 32.493595, 47.056221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896236, 32.786781, 46.867775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831271, 0.231799, -0.505231,
		-0.261114, 0.639553, 0.723043,
		0.490722, 0.732967, -0.471116,
		41.043453, 33.006672, 46.726440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098747, 32.896770, 46.979908>,  <40.699947, 32.493595, 47.056221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098747, 32.896770, 46.979908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378590, 33.061409, 46.746277>,  <40.546494, 33.160191, 46.606098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378590, 33.061409, 46.746277>,  <40.098747, 32.896770, 46.979908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378590, 33.061409, 46.746277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705142, 0.265603, -0.657441,
		-0.115465, 0.871806, 0.476048,
		0.699601, 0.411593, -0.584079,
		40.588470, 33.184887, 46.571053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879864, 33.555984, 46.727161>,  <40.098747, 32.896770, 46.979908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879864, 33.555984, 46.727161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168167, 33.438972, 46.475788>,  <40.341148, 33.368767, 46.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168167, 33.438972, 46.475788>,  <39.879864, 33.555984, 46.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168167, 33.438972, 46.475788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621759, 0.127987, -0.772680,
		0.306460, 0.947654, -0.089632,
		0.720762, -0.292525, -0.628436,
		40.384396, 33.351215, 46.287258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025059, 34.053234, 46.122086>,  <39.879864, 33.555984, 46.727161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025059, 34.053234, 46.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181801, 33.717251, 45.971931>,  <40.275848, 33.515659, 45.881840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181801, 33.717251, 45.971931>,  <40.025059, 34.053234, 46.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181801, 33.717251, 45.971931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538240, 0.121605, -0.833973,
		0.746153, 0.528844, -0.404449,
		0.391858, -0.839962, -0.375381,
		40.299358, 33.465263, 45.859318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220291, 34.211792, 45.423710>,  <40.025059, 34.053234, 46.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220291, 34.211792, 45.423710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218906, 33.812542, 45.448124>,  <40.218075, 33.572990, 45.462772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218906, 33.812542, 45.448124>,  <40.220291, 34.211792, 45.423710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218906, 33.812542, 45.448124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354093, -0.055858, -0.933540,
		0.935204, -0.024839, -0.353238,
		-0.003457, -0.998129, 0.061034,
		40.217869, 33.513103, 45.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583813, 33.960896, 44.797039>,  <40.220291, 34.211792, 45.423710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583813, 33.960896, 44.797039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330566, 33.686893, 44.941223>,  <40.178619, 33.522491, 45.027733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330566, 33.686893, 44.941223>,  <40.583813, 33.960896, 44.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330566, 33.686893, 44.941223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487005, -0.009454, -0.873348,
		0.601653, -0.728479, -0.327614,
		-0.633119, -0.685003, 0.360461,
		40.140633, 33.481392, 45.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647026, 33.563568, 44.309826>,  <40.583813, 33.960896, 44.797039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647026, 33.563568, 44.309826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310776, 33.440258, 44.487957>,  <40.109028, 33.366272, 44.594837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310776, 33.440258, 44.487957>,  <40.647026, 33.563568, 44.309826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310776, 33.440258, 44.487957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448727, -0.064041, -0.891371,
		0.303308, -0.949139, -0.084498,
		-0.840624, -0.308277, 0.445329,
		40.058590, 33.347775, 44.621555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401062, 33.031052, 44.003693>,  <40.647026, 33.563568, 44.309826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401062, 33.031052, 44.003693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045330, 33.094872, 44.175102>,  <39.831890, 33.133163, 44.277946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045330, 33.094872, 44.175102>,  <40.401062, 33.031052, 44.003693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045330, 33.094872, 44.175102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442312, -0.062495, -0.894681,
		-0.115972, -0.985209, 0.126153,
		-0.889332, 0.159557, 0.428522,
		39.778530, 33.142738, 44.303658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988003, 32.562035, 43.664635>,  <40.401062, 33.031052, 44.003693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988003, 32.562035, 43.664635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717812, 32.801956, 43.836201>,  <39.555695, 32.945908, 43.939140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717812, 32.801956, 43.836201>,  <39.988003, 32.562035, 43.664635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717812, 32.801956, 43.836201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642079, -0.192428, -0.742096,
		-0.362576, -0.776666, 0.515101,
		-0.675480, 0.599802, 0.428911,
		39.515167, 32.981895, 43.964874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301247, 32.211800, 43.632141>,  <39.988003, 32.562035, 43.664635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301247, 32.211800, 43.632141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244633, 32.606693, 43.661381>,  <39.210663, 32.843628, 43.678925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244633, 32.606693, 43.661381>,  <39.301247, 32.211800, 43.632141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244633, 32.606693, 43.661381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612137, -0.029248, -0.790210,
		-0.777982, -0.156591, 0.608460,
		-0.141536, 0.987230, 0.073100,
		39.202171, 32.902863, 43.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659500, 32.266636, 43.391647>,  <39.301247, 32.211800, 43.632141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659500, 32.266636, 43.391647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787056, 32.645710, 43.385921>,  <38.863590, 32.873154, 43.382484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787056, 32.645710, 43.385921>,  <38.659500, 32.266636, 43.391647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787056, 32.645710, 43.385921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522688, 0.163242, -0.836749,
		-0.790635, 0.274316, 0.547400,
		0.318893, 0.947683, -0.014317,
		38.882725, 32.930016, 43.381626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099968, 32.623569, 43.113171>,  <38.659500, 32.266636, 43.391647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099968, 32.623569, 43.113171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415775, 32.856133, 43.034550>,  <38.605259, 32.995670, 42.987377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415775, 32.856133, 43.034550>,  <38.099968, 32.623569, 43.113171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415775, 32.856133, 43.034550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299556, 0.085536, -0.950237,
		-0.535659, 0.809106, 0.241695,
		0.789516, 0.581404, -0.196554,
		38.652630, 33.030556, 42.975582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842899, 33.103699, 42.746250>,  <38.099968, 32.623569, 43.113171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842899, 33.103699, 42.746250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232349, 33.092930, 42.655628>,  <38.466019, 33.086468, 42.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232349, 33.092930, 42.655628>,  <37.842899, 33.103699, 42.746250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232349, 33.092930, 42.655628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228068, -0.088246, -0.969638,
		0.006113, 0.995735, -0.092059,
		0.973626, -0.026923, -0.226556,
		38.524437, 33.084854, 42.587662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948280, 33.716125, 42.315712>,  <37.842899, 33.103699, 42.746250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948280, 33.716125, 42.315712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258564, 33.473633, 42.245564>,  <38.444733, 33.328136, 42.203472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258564, 33.473633, 42.245564>,  <37.948280, 33.716125, 42.315712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258564, 33.473633, 42.245564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137327, 0.109083, -0.984501,
		0.615968, 0.787770, 0.001365,
		0.775710, -0.606233, -0.175374,
		38.491276, 33.291763, 42.192951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250374, 33.983051, 41.717922>,  <37.948280, 33.716125, 42.315712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250374, 33.983051, 41.717922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436447, 33.629833, 41.742706>,  <38.548092, 33.417904, 41.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436447, 33.629833, 41.742706>,  <38.250374, 33.983051, 41.717922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436447, 33.629833, 41.742706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072783, -0.107916, -0.991492,
		0.882217, 0.456717, -0.114472,
		0.465184, -0.883042, 0.061964,
		38.576004, 33.364922, 41.761295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721680, 34.020470, 41.226772>,  <38.250374, 33.983051, 41.717922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721680, 34.020470, 41.226772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666111, 33.627399, 41.275837>,  <38.632771, 33.391556, 41.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666111, 33.627399, 41.275837>,  <38.721680, 34.020470, 41.226772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666111, 33.627399, 41.275837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176887, -0.097252, -0.979415,
		0.974377, -0.157761, -0.160312,
		-0.138923, -0.982677, 0.122666,
		38.624435, 33.332596, 41.312637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176556, 33.743080, 40.751110>,  <38.721680, 34.020470, 41.226772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176556, 33.743080, 40.751110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892303, 33.475510, 40.838314>,  <38.721752, 33.314968, 40.890636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892303, 33.475510, 40.838314>,  <39.176556, 33.743080, 40.751110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892303, 33.475510, 40.838314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041345, -0.269630, -0.962076,
		0.702345, -0.692699, 0.163951,
		-0.710635, -0.668931, 0.218013,
		38.679111, 33.274830, 40.903717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379025, 33.143246, 40.385593>,  <39.176556, 33.743080, 40.751110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379025, 33.143246, 40.385593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996567, 33.057098, 40.465004>,  <38.767094, 33.005409, 40.512650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996567, 33.057098, 40.465004>,  <39.379025, 33.143246, 40.385593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996567, 33.057098, 40.465004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109741, -0.365006, -0.924515,
		0.271570, -0.905753, 0.325363,
		-0.956141, -0.215365, 0.198523,
		38.709724, 32.992489, 40.524559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290474, 32.533588, 40.132523>,  <39.379025, 33.143246, 40.385593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290474, 32.533588, 40.132523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920086, 32.684162, 40.144428>,  <38.697853, 32.774506, 40.151573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920086, 32.684162, 40.144428>,  <39.290474, 32.533588, 40.132523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920086, 32.684162, 40.144428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180343, -0.371598, -0.910709,
		-0.331752, -0.848657, 0.411974,
		-0.925968, 0.376426, 0.029771,
		38.642296, 32.797092, 40.153358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882339, 32.019985, 39.924110>,  <39.290474, 32.533588, 40.132523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882339, 32.019985, 39.924110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710567, 32.376640, 39.866741>,  <38.607502, 32.590633, 39.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710567, 32.376640, 39.866741>,  <38.882339, 32.019985, 39.924110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710567, 32.376640, 39.866741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141792, -0.223409, -0.964357,
		-0.891898, -0.393792, 0.222366,
		-0.429434, 0.891637, -0.143421,
		38.581738, 32.644131, 39.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429604, 31.877995, 39.371498>,  <38.882339, 32.019985, 39.924110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429604, 31.877995, 39.371498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432190, 32.277977, 39.374268>,  <38.433743, 32.517967, 39.375931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432190, 32.277977, 39.374268>,  <38.429604, 31.877995, 39.371498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432190, 32.277977, 39.374268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034279, 0.007141, -0.999387,
		-0.999391, 0.006222, 0.034323,
		0.006463, 0.999955, 0.006923,
		38.434128, 32.577965, 39.376343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965809, 31.986919, 38.880039>,  <38.429604, 31.877995, 39.371498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965809, 31.986919, 38.880039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149551, 32.339668, 38.922539>,  <38.259796, 32.551319, 38.948040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149551, 32.339668, 38.922539>,  <37.965809, 31.986919, 38.880039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149551, 32.339668, 38.922539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003913, 0.121625, -0.992568,
		-0.888242, 0.455530, 0.059320,
		0.459359, 0.881873, 0.106250,
		38.287357, 32.604229, 38.954414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510777, 32.452156, 38.601879>,  <37.965809, 31.986919, 38.880039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510777, 32.452156, 38.601879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869652, 32.627514, 38.623280>,  <38.084976, 32.732731, 38.636120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869652, 32.627514, 38.623280>,  <37.510777, 32.452156, 38.601879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869652, 32.627514, 38.623280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094589, 0.309074, -0.946323,
		-0.431404, 0.843967, 0.318765,
		0.897186, 0.438399, 0.053506,
		38.138809, 32.759033, 38.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563881, 33.101601, 38.192898>,  <37.510777, 32.452156, 38.601879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563881, 33.101601, 38.192898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950832, 33.010075, 38.236393>,  <38.183002, 32.955158, 38.262489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950832, 33.010075, 38.236393>,  <37.563881, 33.101601, 38.192898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950832, 33.010075, 38.236393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184790, 0.343726, -0.920709,
		0.173294, 0.910768, 0.374795,
		0.967379, -0.228811, 0.108735,
		38.241047, 32.941433, 38.269012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843803, 33.626896, 37.868507>,  <37.563881, 33.101601, 38.192898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843803, 33.626896, 37.868507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156666, 33.385647, 37.931076>,  <38.344383, 33.240898, 37.968616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156666, 33.385647, 37.931076>,  <37.843803, 33.626896, 37.868507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156666, 33.385647, 37.931076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507527, 0.471074, -0.721461,
		0.361448, 0.643683, 0.674557,
		0.782159, -0.603126, 0.156418,
		38.391312, 33.204708, 37.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422462, 34.068146, 37.804424>,  <37.843803, 33.626896, 37.868507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422462, 34.068146, 37.804424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520081, 33.687912, 37.727665>,  <38.578651, 33.459770, 37.681610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520081, 33.687912, 37.727665>,  <38.422462, 34.068146, 37.804424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520081, 33.687912, 37.727665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579285, 0.301596, -0.757277,
		0.777734, 0.073647, 0.624264,
		0.244047, -0.950587, -0.191899,
		38.593296, 33.402737, 37.670094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076271, 34.069843, 37.572914>,  <38.422462, 34.068146, 37.804424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076271, 34.069843, 37.572914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954140, 33.715950, 37.432049>,  <38.880859, 33.503613, 37.347530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954140, 33.715950, 37.432049>,  <39.076271, 34.069843, 37.572914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954140, 33.715950, 37.432049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543697, 0.141641, -0.827243,
		0.781772, -0.444049, 0.437781,
		-0.305329, -0.884736, -0.352159,
		38.862541, 33.450531, 37.326401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691727, 33.776665, 37.225571>,  <39.076271, 34.069843, 37.572914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691727, 33.776665, 37.225571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378639, 33.599464, 37.050713>,  <39.190788, 33.493145, 36.945797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378639, 33.599464, 37.050713>,  <39.691727, 33.776665, 37.225571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378639, 33.599464, 37.050713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412169, 0.157323, -0.897422,
		0.466336, -0.882607, 0.059453,
		-0.782718, -0.443005, -0.437149,
		39.143826, 33.466564, 36.919567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905457, 33.194805, 36.894001>,  <39.691727, 33.776665, 37.225571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905457, 33.194805, 36.894001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565861, 33.308620, 36.715900>,  <39.362103, 33.376911, 36.609039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565861, 33.308620, 36.715900>,  <39.905457, 33.194805, 36.894001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565861, 33.308620, 36.715900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503951, 0.182651, -0.844199,
		-0.158882, -0.941104, -0.298463,
		-0.848993, 0.284539, -0.445250,
		39.311161, 33.393982, 36.582325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869064, 32.928474, 36.235493>,  <39.905457, 33.194805, 36.894001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869064, 32.928474, 36.235493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613350, 33.233498, 36.195869>,  <39.459923, 33.416512, 36.172096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613350, 33.233498, 36.195869>,  <39.869064, 32.928474, 36.235493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613350, 33.233498, 36.195869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542201, 0.355659, -0.761265,
		-0.545281, -0.540376, -0.640830,
		-0.639286, 0.762562, -0.099059,
		39.421566, 33.462265, 36.166153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997410, 33.186069, 35.629234>,  <39.869064, 32.928474, 36.235493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997410, 33.186069, 35.629234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795662, 33.481277, 35.808540>,  <39.674614, 33.658401, 35.916122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795662, 33.481277, 35.808540>,  <39.997410, 33.186069, 35.629234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795662, 33.481277, 35.808540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366760, 0.653076, -0.662555,
		-0.781728, -0.169768, -0.600067,
		-0.504370, 0.738018, 0.448264,
		39.644352, 33.702682, 35.943020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075325, 33.194481, 34.868843>,  <39.997410, 33.186069, 35.629234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075325, 33.194481, 34.868843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019711, 33.484943, 35.138172>,  <39.986343, 33.659222, 35.299770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019711, 33.484943, 35.138172>,  <40.075325, 33.194481, 34.868843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019711, 33.484943, 35.138172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512471, 0.634565, -0.578533,
		-0.847374, 0.264625, -0.460359,
		-0.139033, 0.726155, 0.673327,
		39.978001, 33.702789, 35.340172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834362, 33.831451, 34.562931>,  <40.075325, 33.194481, 34.868843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834362, 33.831451, 34.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041016, 33.919174, 34.893990>,  <40.165009, 33.971806, 35.092625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041016, 33.919174, 34.893990>,  <39.834362, 33.831451, 34.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041016, 33.919174, 34.893990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551735, 0.653910, -0.517678,
		-0.654731, 0.724091, 0.216838,
		0.516638, 0.219303, 0.827642,
		40.196007, 33.984966, 35.142281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828865, 34.630474, 34.701332>,  <39.834362, 33.831451, 34.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828865, 34.630474, 34.701332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161842, 34.449043, 34.828644>,  <40.361629, 34.340183, 34.905033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161842, 34.449043, 34.828644>,  <39.828865, 34.630474, 34.701332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161842, 34.449043, 34.828644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548860, 0.596089, -0.586029,
		0.076086, 0.662528, 0.745163,
		0.832444, -0.453579, 0.318282,
		40.411575, 34.312969, 34.924129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329788, 35.053402, 35.135651>,  <39.828865, 34.630474, 34.701332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329788, 35.053402, 35.135651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465733, 34.771488, 34.886566>,  <40.547298, 34.602341, 34.737114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465733, 34.771488, 34.886566>,  <40.329788, 35.053402, 35.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465733, 34.771488, 34.886566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548378, 0.686424, -0.477602,
		0.764052, -0.179163, 0.619778,
		0.339862, -0.704786, -0.622713,
		40.567692, 34.560051, 34.699753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029018, 35.072887, 35.086380>,  <40.329788, 35.053402, 35.135651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029018, 35.072887, 35.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864704, 34.942013, 34.745979>,  <40.766113, 34.863487, 34.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864704, 34.942013, 34.745979>,  <41.029018, 35.072887, 35.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864704, 34.942013, 34.745979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437953, 0.747843, -0.498926,
		0.799656, -0.577652, -0.163915,
		-0.410788, -0.327183, -0.851002,
		40.741467, 34.843857, 34.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475082, 35.232246, 34.565563>,  <41.029018, 35.072887, 35.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475082, 35.232246, 34.565563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655315, 35.372028, 34.894161>,  <41.763454, 35.455898, 35.091320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655315, 35.372028, 34.894161>,  <41.475082, 35.232246, 34.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655315, 35.372028, 34.894161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425017, 0.725257, -0.541631,
		-0.785070, 0.593200, 0.178266,
		0.450584, 0.349452, 0.821497,
		41.790489, 35.476864, 35.140610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206532, 35.828045, 34.789562>,  <41.475082, 35.232246, 34.565563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206532, 35.828045, 34.789562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596462, 35.748837, 34.830544>,  <41.830421, 35.701309, 34.855133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596462, 35.748837, 34.830544>,  <41.206532, 35.828045, 34.789562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596462, 35.748837, 34.830544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212681, 0.688013, -0.693833,
		0.066907, 0.698158, 0.712811,
		0.974828, -0.198024, 0.102452,
		41.888912, 35.689430, 34.861279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553764, 36.450401, 34.626381>,  <41.206532, 35.828045, 34.789562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553764, 36.450401, 34.626381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816360, 36.151772, 34.583221>,  <41.973919, 35.972595, 34.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816360, 36.151772, 34.583221>,  <41.553764, 36.450401, 34.626381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816360, 36.151772, 34.583221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382026, 0.452399, -0.805848,
		0.650441, 0.487812, 0.582208,
		0.656493, -0.746575, -0.107903,
		42.013309, 35.927799, 34.550850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212353, 36.762444, 34.612080>,  <41.553764, 36.450401, 34.626381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212353, 36.762444, 34.612080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286739, 36.406425, 34.445595>,  <42.331371, 36.192814, 34.345703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286739, 36.406425, 34.445595>,  <42.212353, 36.762444, 34.612080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286739, 36.406425, 34.445595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312639, 0.455191, -0.833701,
		0.931489, 0.024918, 0.362915,
		0.185970, -0.890045, -0.416216,
		42.342529, 36.139412, 34.320728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897640, 36.837536, 34.334759>,  <42.212353, 36.762444, 34.612080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897640, 36.837536, 34.334759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757797, 36.511852, 34.149353>,  <42.673893, 36.316444, 34.038109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757797, 36.511852, 34.149353>,  <42.897640, 36.837536, 34.334759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757797, 36.511852, 34.149353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551184, 0.221315, -0.804497,
		0.757608, -0.536739, 0.371404,
		-0.349608, -0.814206, -0.463512,
		42.652916, 36.267590, 34.010300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533852, 36.589096, 33.944927>,  <42.897640, 36.837536, 34.334759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533852, 36.589096, 33.944927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215618, 36.425556, 33.766094>,  <43.024677, 36.327435, 33.658794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215618, 36.425556, 33.766094>,  <43.533852, 36.589096, 33.944927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215618, 36.425556, 33.766094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427053, 0.144982, -0.892528,
		0.429728, -0.901013, 0.059254,
		-0.795588, -0.408848, -0.447082,
		42.976940, 36.302902, 33.631969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741905, 35.961697, 33.417332>,  <43.533852, 36.589096, 33.944927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741905, 35.961697, 33.417332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393036, 36.084114, 33.264671>,  <43.183716, 36.157562, 33.173073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393036, 36.084114, 33.264671>,  <43.741905, 35.961697, 33.417332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393036, 36.084114, 33.264671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466914, 0.287951, -0.836108,
		-0.145984, -0.907427, -0.394036,
		-0.872170, 0.306040, -0.381654,
		43.131386, 36.175926, 33.150177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733219, 35.684879, 32.712330>,  <43.741905, 35.961697, 33.417332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733219, 35.684879, 32.712330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479397, 35.993580, 32.729042>,  <43.327103, 36.178799, 32.739071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479397, 35.993580, 32.729042>,  <43.733219, 35.684879, 32.712330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479397, 35.993580, 32.729042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252067, 0.257757, -0.932750,
		-0.730620, -0.581347, -0.358093,
		-0.634553, 0.771749, 0.041785,
		43.289032, 36.225105, 32.741577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285461, 35.594849, 32.175106>,  <43.733219, 35.684879, 32.712330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285461, 35.594849, 32.175106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216339, 35.983803, 32.237839>,  <43.174866, 36.217175, 32.275478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216339, 35.983803, 32.237839>,  <43.285461, 35.594849, 32.175106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216339, 35.983803, 32.237839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011667, 0.157198, -0.987498,
		-0.984887, -0.172475, -0.015820,
		-0.172806, 0.972389, 0.156834,
		43.164497, 36.275520, 32.284889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802631, 35.761623, 31.612820>,  <43.285461, 35.594849, 32.175106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802631, 35.761623, 31.612820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955036, 36.108444, 31.741220>,  <43.046478, 36.316536, 31.818260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955036, 36.108444, 31.741220>,  <42.802631, 35.761623, 31.612820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955036, 36.108444, 31.741220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043159, 0.363491, -0.930598,
		-0.923561, 0.340717, 0.175917,
		0.381015, 0.867056, 0.321001,
		43.069340, 36.368561, 31.837521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339756, 36.317192, 31.486284>,  <42.802631, 35.761623, 31.612820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339756, 36.317192, 31.486284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692577, 36.504341, 31.508471>,  <42.904270, 36.616631, 31.521782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692577, 36.504341, 31.508471>,  <42.339756, 36.317192, 31.486284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692577, 36.504341, 31.508471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123361, 0.342955, -0.931216,
		-0.454715, 0.814539, 0.360222,
		0.882052, 0.467876, 0.055464,
		42.957191, 36.644703, 31.525110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243935, 37.037266, 31.318638>,  <42.339756, 36.317192, 31.486284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243935, 37.037266, 31.318638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634521, 36.991768, 31.245350>,  <42.868874, 36.964470, 31.201376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634521, 36.991768, 31.245350>,  <42.243935, 37.037266, 31.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634521, 36.991768, 31.245350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089413, 0.559590, -0.823932,
		0.196251, 0.820926, 0.536252,
		0.976469, -0.113749, -0.183222,
		42.927464, 36.957642, 31.190384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392643, 37.590336, 31.146679>,  <42.243935, 37.037266, 31.318638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392643, 37.590336, 31.146679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701790, 37.386822, 30.994989>,  <42.887280, 37.264713, 30.903975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701790, 37.386822, 30.994989>,  <42.392643, 37.590336, 31.146679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701790, 37.386822, 30.994989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062129, 0.534074, -0.843152,
		0.631515, 0.675208, 0.381160,
		0.772870, -0.508782, -0.379226,
		42.933651, 37.234188, 30.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802700, 38.081505, 30.785522>,  <42.392643, 37.590336, 31.146679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802700, 38.081505, 30.785522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890980, 37.719780, 30.639370>,  <42.943947, 37.502743, 30.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890980, 37.719780, 30.639370>,  <42.802700, 38.081505, 30.785522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890980, 37.719780, 30.639370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195930, 0.408090, -0.891669,
		0.955460, 0.125201, 0.267248,
		0.220699, -0.904316, -0.365383,
		42.957188, 37.448486, 30.529755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499058, 38.226768, 30.420448>,  <42.802700, 38.081505, 30.785522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499058, 38.226768, 30.420448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332184, 37.896339, 30.268888>,  <43.232059, 37.698082, 30.177954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332184, 37.896339, 30.268888>,  <43.499058, 38.226768, 30.420448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332184, 37.896339, 30.268888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256020, 0.293203, -0.921133,
		0.872014, -0.481289, 0.089170,
		-0.417186, -0.826070, -0.378898,
		43.207027, 37.648518, 30.155220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012459, 38.011154, 29.920792>,  <43.499058, 38.226768, 30.420448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012459, 38.011154, 29.920792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706211, 37.786671, 29.795019>,  <43.522461, 37.651981, 29.719555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706211, 37.786671, 29.795019>,  <44.012459, 38.011154, 29.920792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706211, 37.786671, 29.795019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265426, 0.169650, -0.949088,
		0.585985, -0.810098, 0.019073,
		-0.765618, -0.561213, -0.314433,
		43.476524, 37.618305, 29.700689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268417, 37.616524, 29.400579>,  <44.012459, 38.011154, 29.920792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268417, 37.616524, 29.400579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874542, 37.605282, 29.331755>,  <43.638218, 37.598537, 29.290461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874542, 37.605282, 29.331755>,  <44.268417, 37.616524, 29.400579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874542, 37.605282, 29.331755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155336, 0.306683, -0.939050,
		0.079155, -0.951397, -0.297622,
		-0.984685, -0.028099, -0.172062,
		43.579136, 37.596851, 29.280136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295338, 37.204353, 28.894938>,  <44.268417, 37.616524, 29.400579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295338, 37.204353, 28.894938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945797, 37.398788, 28.899137>,  <43.736073, 37.515450, 28.901657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945797, 37.398788, 28.899137>,  <44.295338, 37.204353, 28.894938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945797, 37.398788, 28.899137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045899, 0.103976, -0.993520,
		-0.484029, -0.867703, -0.113170,
		-0.873847, 0.486087, 0.010500,
		43.683643, 37.544613, 28.902288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895050, 36.813931, 28.524254>,  <44.295338, 37.204353, 28.894938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895050, 36.813931, 28.524254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747372, 37.185513, 28.513443>,  <43.658764, 37.408463, 28.506956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747372, 37.185513, 28.513443>,  <43.895050, 36.813931, 28.524254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747372, 37.185513, 28.513443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263476, 0.076735, -0.961609,
		-0.891219, -0.362147, -0.273088,
		-0.369200, 0.928957, -0.027029,
		43.636612, 37.464199, 28.505335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474110, 36.784061, 27.913639>,  <43.895050, 36.813931, 28.524254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474110, 36.784061, 27.913639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551567, 37.170811, 27.980158>,  <43.598042, 37.402863, 28.020069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551567, 37.170811, 27.980158>,  <43.474110, 36.784061, 27.913639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551567, 37.170811, 27.980158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310851, 0.100304, -0.945151,
		-0.930523, 0.234717, -0.281131,
		0.193644, 0.966875, 0.166297,
		43.609661, 37.460873, 28.030046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044552, 37.125942, 27.397015>,  <43.474110, 36.784061, 27.913639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044552, 37.125942, 27.397015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342228, 37.358818, 27.528002>,  <43.520832, 37.498543, 27.606594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342228, 37.358818, 27.528002>,  <43.044552, 37.125942, 27.397015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342228, 37.358818, 27.528002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300311, 0.146287, -0.942557,
		-0.596651, 0.799785, -0.065972,
		0.744192, 0.582190, 0.327466,
		43.565487, 37.533474, 27.626242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123234, 37.337963, 26.787083>,  <43.044552, 37.125942, 27.397015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123234, 37.337963, 26.787083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429783, 37.503750, 26.983406>,  <43.613712, 37.603222, 27.101200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429783, 37.503750, 26.983406>,  <43.123234, 37.337963, 26.787083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429783, 37.503750, 26.983406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446228, 0.206152, -0.870852,
		-0.462116, 0.886410, -0.026955,
		0.766374, 0.414463, 0.490807,
		43.659695, 37.628090, 27.130648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287346, 37.895752, 26.351650>,  <43.123234, 37.337963, 26.787083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287346, 37.895752, 26.351650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596428, 37.756744, 26.564123>,  <43.781879, 37.673340, 26.691607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596428, 37.756744, 26.564123>,  <43.287346, 37.895752, 26.351650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596428, 37.756744, 26.564123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586632, 0.071328, -0.806706,
		0.242457, 0.934956, 0.258981,
		0.772708, -0.347519, 0.531181,
		43.828239, 37.652489, 26.723478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863552, 38.351318, 26.213722>,  <43.287346, 37.895752, 26.351650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863552, 38.351318, 26.213722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014889, 37.999119, 26.327972>,  <44.105690, 37.787800, 26.396523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014889, 37.999119, 26.327972>,  <43.863552, 38.351318, 26.213722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014889, 37.999119, 26.327972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649153, 0.032408, -0.759967,
		0.659891, 0.472945, 0.583837,
		0.378344, -0.880496, 0.285628,
		44.128391, 37.734970, 26.413660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552979, 38.513783, 26.398184>,  <43.863552, 38.351318, 26.213722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552979, 38.513783, 26.398184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551529, 38.142876, 26.248428>,  <44.550659, 37.920334, 26.158575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551529, 38.142876, 26.248428>,  <44.552979, 38.513783, 26.398184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551529, 38.142876, 26.248428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776769, 0.233171, -0.585031,
		0.629775, -0.292935, 0.719425,
		-0.003627, -0.927265, -0.374388,
		44.550442, 37.864697, 26.136112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156963, 39.008373, 26.257004>,  <44.552979, 38.513783, 26.398184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156963, 39.008373, 26.257004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521431, 38.987373, 26.420473>,  <45.740112, 38.974773, 26.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521431, 38.987373, 26.420473>,  <45.156963, 39.008373, 26.257004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521431, 38.987373, 26.420473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097403, -0.936292, -0.337447,
		0.400353, 0.347278, -0.848007,
		0.911170, -0.052499, 0.408673,
		45.794781, 38.971622, 26.543076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745052, 38.833279, 25.739548>,  <45.156963, 39.008373, 26.257004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745052, 38.833279, 25.739548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785946, 38.690247, 26.110855>,  <45.810482, 38.604427, 26.333641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785946, 38.690247, 26.110855>,  <45.745052, 38.833279, 25.739548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785946, 38.690247, 26.110855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180675, -0.910965, -0.370809,
		0.978215, 0.205624, -0.028525,
		0.102233, -0.357578, 0.928271,
		45.816616, 38.582973, 26.389336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324017, 38.353516, 25.599497>,  <45.745052, 38.833279, 25.739548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324017, 38.353516, 25.599497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139729, 38.245224, 25.937595>,  <46.029156, 38.180248, 26.140455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139729, 38.245224, 25.937595>,  <46.324017, 38.353516, 25.599497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139729, 38.245224, 25.937595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069125, -0.960395, -0.269932,
		0.884849, -0.065936, 0.461188,
		-0.460721, -0.270729, 0.845247,
		46.001511, 38.164005, 26.191170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834442, 38.027531, 26.002779>,  <46.324017, 38.353516, 25.599497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834442, 38.027531, 26.002779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453316, 37.913319, 26.043980>,  <46.224640, 37.844791, 26.068701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453316, 37.913319, 26.043980>,  <46.834442, 38.027531, 26.002779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453316, 37.913319, 26.043980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232610, -0.904844, -0.356582,
		0.195018, -0.315798, 0.928569,
		-0.952817, -0.285534, 0.103003,
		46.167469, 37.827660, 26.074881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841179, 37.304848, 26.338749>,  <46.834442, 38.027531, 26.002779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841179, 37.304848, 26.338749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500263, 37.367477, 26.139116>,  <46.295715, 37.405056, 26.019337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500263, 37.367477, 26.139116>,  <46.841179, 37.304848, 26.338749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500263, 37.367477, 26.139116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012403, -0.947827, -0.318544,
		-0.522922, -0.277682, 0.805882,
		-0.852291, 0.156579, -0.499083,
		46.244576, 37.414452, 25.989391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350723, 36.852940, 26.540922>,  <46.841179, 37.304848, 26.338749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350723, 36.852940, 26.540922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161858, 37.157791, 26.718111>,  <47.048538, 37.340702, 26.824425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161858, 37.157791, 26.718111>,  <47.350723, 36.852940, 26.540922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161858, 37.157791, 26.718111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383119, -0.629992, 0.675522,
		0.793901, 0.149249, 0.589446,
		-0.472167, 0.762125, 0.442971,
		47.020206, 37.386429, 26.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268204, 36.728683, 27.249203>,  <47.350723, 36.852940, 26.540922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268204, 36.728683, 27.249203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981312, 36.993950, 27.163612>,  <46.809177, 37.153111, 27.112257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981312, 36.993950, 27.163612>,  <47.268204, 36.728683, 27.249203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981312, 36.993950, 27.163612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624106, -0.474752, 0.620566,
		0.309954, 0.578633, 0.754395,
		-0.717231, 0.663170, -0.213977,
		46.766144, 37.192902, 27.099419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969574, 37.255753, 27.855043>,  <47.268204, 36.728683, 27.249203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969574, 37.255753, 27.855043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705391, 37.141537, 27.577261>,  <46.546883, 37.073006, 27.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705391, 37.141537, 27.577261>,  <46.969574, 37.255753, 27.855043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705391, 37.141537, 27.577261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604674, -0.346067, 0.717361,
		-0.445162, 0.893704, 0.055904,
		-0.660455, -0.285539, -0.694455,
		46.507256, 37.055874, 27.368925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289337, 37.584595, 28.018881>,  <46.969574, 37.255753, 27.855043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289337, 37.584595, 28.018881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233299, 37.250549, 27.806107>,  <46.199677, 37.050121, 27.678442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233299, 37.250549, 27.806107>,  <46.289337, 37.584595, 28.018881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233299, 37.250549, 27.806107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597142, -0.357276, 0.718175,
		-0.789807, 0.418253, -0.448630,
		-0.140094, -0.835116, -0.531935,
		46.191273, 37.000015, 27.646526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561440, 37.533981, 27.987818>,  <46.289337, 37.584595, 28.018881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561440, 37.533981, 27.987818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674278, 37.162209, 27.892675>,  <45.741982, 36.939144, 27.835590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674278, 37.162209, 27.892675>,  <45.561440, 37.533981, 27.987818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674278, 37.162209, 27.892675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700706, -0.368945, 0.610649,
		-0.655314, -0.005592, -0.755336,
		0.282093, -0.929435, -0.237856,
		45.758907, 36.883377, 27.821318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993237, 37.159161, 28.022488>,  <45.561440, 37.533981, 27.987818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993237, 37.159161, 28.022488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261612, 36.862881, 28.036371>,  <45.422638, 36.685112, 28.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261612, 36.862881, 28.036371>,  <44.993237, 37.159161, 28.022488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261612, 36.862881, 28.036371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532143, -0.448368, 0.718185,
		-0.516401, -0.500324, -0.694986,
		0.670935, -0.740704, 0.034706,
		45.462894, 36.640671, 28.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667278, 36.539043, 28.061687>,  <44.993237, 37.159161, 28.022488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667278, 36.539043, 28.061687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025883, 36.427311, 28.199234>,  <45.241047, 36.360271, 28.281761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025883, 36.427311, 28.199234>,  <44.667278, 36.539043, 28.061687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025883, 36.427311, 28.199234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440694, -0.482793, 0.756769,
		-0.045374, -0.829990, -0.555929,
		0.896510, -0.279332, 0.343866,
		45.294834, 36.343510, 28.302393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583584, 35.826839, 28.395550>,  <44.667278, 36.539043, 28.061687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583584, 35.826839, 28.395550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928936, 35.976665, 28.530769>,  <45.136147, 36.066559, 28.611900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928936, 35.976665, 28.530769>,  <44.583584, 35.826839, 28.395550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928936, 35.976665, 28.530769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188767, -0.381543, 0.904871,
		0.467909, -0.845062, -0.258712,
		0.863382, 0.374561, 0.338047,
		45.187950, 36.089035, 28.632183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029026, 35.237446, 28.645121>,  <44.583584, 35.826839, 28.395550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029026, 35.237446, 28.645121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135242, 35.570683, 28.839209>,  <45.198971, 35.770626, 28.955662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135242, 35.570683, 28.839209>,  <45.029026, 35.237446, 28.645121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135242, 35.570683, 28.839209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078651, -0.482893, 0.872140,
		0.960886, -0.269752, -0.062704,
		0.265540, 0.833096, 0.485222,
		45.214905, 35.820610, 28.984776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501640, 34.985905, 29.210880>,  <45.029026, 35.237446, 28.645121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501640, 34.985905, 29.210880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396275, 35.359001, 29.309353>,  <45.333057, 35.582859, 29.368437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396275, 35.359001, 29.309353>,  <45.501640, 34.985905, 29.210880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396275, 35.359001, 29.309353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073459, -0.273845, 0.958964,
		0.961883, 0.234519, 0.140652,
		-0.263412, 0.932743, 0.246180,
		45.317249, 35.638824, 29.383207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877678, 35.106262, 29.816431>,  <45.501640, 34.985905, 29.210880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877678, 35.106262, 29.816431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614983, 35.407867, 29.811401>,  <45.457363, 35.588829, 29.808384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614983, 35.407867, 29.811401>,  <45.877678, 35.106262, 29.816431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614983, 35.407867, 29.811401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057068, 0.066320, 0.996165,
		0.751953, 0.653505, -0.086585,
		-0.656742, 0.754011, -0.012575,
		45.417961, 35.634071, 29.807629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139442, 35.719505, 30.174219>,  <45.877678, 35.106262, 29.816431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139442, 35.719505, 30.174219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739841, 35.735722, 30.181713>,  <45.500080, 35.745453, 30.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739841, 35.735722, 30.181713>,  <46.139442, 35.719505, 30.174219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739841, 35.735722, 30.181713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017190, -0.038188, 0.999123,
		0.041222, 0.998448, 0.037453,
		-0.999002, 0.040542, 0.018737,
		45.440140, 35.747883, 30.187334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013676, 36.215710, 30.722588>,  <46.139442, 35.719505, 30.174219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013676, 36.215710, 30.722588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677986, 36.005962, 30.664984>,  <45.476574, 35.880116, 30.630421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677986, 36.005962, 30.664984>,  <46.013676, 36.215710, 30.722588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677986, 36.005962, 30.664984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015855, -0.241124, 0.970365,
		-0.543553, 0.816638, 0.194043,
		-0.839225, -0.524369, -0.144011,
		45.426220, 35.848652, 30.621780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704563, 36.322014, 31.288816>,  <46.013676, 36.215710, 30.722588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704563, 36.322014, 31.288816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476967, 36.024612, 31.148270>,  <45.340408, 35.846172, 31.063942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476967, 36.024612, 31.148270>,  <45.704563, 36.322014, 31.288816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476967, 36.024612, 31.148270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331133, -0.183959, 0.925479,
		-0.752730, 0.642936, -0.141526,
		-0.568989, -0.743500, -0.351369,
		45.306271, 35.801563, 31.042858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936874, 36.464569, 31.472822>,  <45.704563, 36.322014, 31.288816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936874, 36.464569, 31.472822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996101, 36.072773, 31.418152>,  <45.031639, 35.837696, 31.385349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996101, 36.072773, 31.418152>,  <44.936874, 36.464569, 31.472822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996101, 36.072773, 31.418152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281090, -0.174182, 0.943742,
		-0.948190, -0.101319, -0.301115,
		0.148068, -0.979487, -0.136678,
		45.040524, 35.778927, 31.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378910, 36.162693, 31.795963>,  <44.936874, 36.464569, 31.472822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378910, 36.162693, 31.795963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634666, 35.859264, 31.745750>,  <44.788120, 35.677208, 31.715624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634666, 35.859264, 31.745750>,  <44.378910, 36.162693, 31.795963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634666, 35.859264, 31.745750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283201, -0.384129, 0.878773,
		-0.714828, -0.526327, -0.460435,
		0.639389, -0.758568, -0.125530,
		44.826485, 35.631695, 31.708092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012943, 35.626511, 32.058010>,  <44.378910, 36.162693, 31.795963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012943, 35.626511, 32.058010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395245, 35.508884, 32.060921>,  <44.624626, 35.438309, 32.062668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395245, 35.508884, 32.060921>,  <44.012943, 35.626511, 32.058010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395245, 35.508884, 32.060921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118547, -0.362431, 0.924441,
		-0.269205, -0.884405, -0.381257,
		0.955759, -0.294061, 0.007275,
		44.681973, 35.420666, 32.063103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046497, 34.903175, 32.264576>,  <44.012943, 35.626511, 32.058010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046497, 34.903175, 32.264576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410748, 35.034958, 32.364353>,  <44.629295, 35.114029, 32.424221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410748, 35.034958, 32.364353>,  <44.046497, 34.903175, 32.264576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410748, 35.034958, 32.364353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084420, -0.442593, 0.892740,
		0.404523, -0.834008, -0.375223,
		0.910623, 0.329457, 0.249446,
		44.683933, 35.133797, 32.439186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323193, 34.389484, 32.720062>,  <44.046497, 34.903175, 32.264576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323193, 34.389484, 32.720062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605831, 34.660122, 32.802952>,  <44.775414, 34.822502, 32.852684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605831, 34.660122, 32.802952>,  <44.323193, 34.389484, 32.720062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605831, 34.660122, 32.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116334, -0.399939, 0.909129,
		0.697984, -0.618284, -0.361307,
		0.706601, 0.676590, 0.207224,
		44.817810, 34.863098, 32.865120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912827, 34.037155, 32.923607>,  <44.323193, 34.389484, 32.720062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912827, 34.037155, 32.923607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939255, 34.411331, 33.062511>,  <44.955112, 34.635838, 33.145855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939255, 34.411331, 33.062511>,  <44.912827, 34.037155, 32.923607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939255, 34.411331, 33.062511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198245, -0.353393, 0.914227,
		0.977923, 0.008439, -0.208795,
		0.066071, 0.935437, 0.347264,
		44.959076, 34.691963, 33.166691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585888, 34.155525, 33.266121>,  <44.912827, 34.037155, 32.923607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585888, 34.155525, 33.266121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333012, 34.420979, 33.426079>,  <45.181286, 34.580250, 33.522053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333012, 34.420979, 33.426079>,  <45.585888, 34.155525, 33.266121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333012, 34.420979, 33.426079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234501, -0.328028, 0.915099,
		0.738471, 0.672296, 0.051754,
		-0.632195, 0.663638, 0.399893,
		45.143353, 34.620071, 33.546047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865639, 34.304127, 33.812305>,  <45.585888, 34.155525, 33.266121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865639, 34.304127, 33.812305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485355, 34.411407, 33.874546>,  <45.257183, 34.475777, 33.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485355, 34.411407, 33.874546>,  <45.865639, 34.304127, 33.812305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485355, 34.411407, 33.874546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100298, -0.208836, 0.972794,
		0.293404, 0.940454, 0.171642,
		-0.950713, 0.268206, 0.155599,
		45.200142, 34.491871, 33.921227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863171, 34.663914, 34.450554>,  <45.865639, 34.304127, 33.812305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863171, 34.663914, 34.450554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542244, 34.447052, 34.350674>,  <45.349686, 34.316933, 34.290745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542244, 34.447052, 34.350674>,  <45.863171, 34.663914, 34.450554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542244, 34.447052, 34.350674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052969, -0.352008, 0.934497,
		-0.594540, 0.762992, 0.253705,
		-0.802320, -0.542157, -0.249698,
		45.301548, 34.284405, 34.275764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848854, 35.145363, 35.024643>,  <45.863171, 34.663914, 34.450554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848854, 35.145363, 35.024643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768520, 34.753525, 35.027645>,  <45.720318, 34.518421, 35.029446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768520, 34.753525, 35.027645>,  <45.848854, 35.145363, 35.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768520, 34.753525, 35.027645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943636, -0.195509, -0.267071,
		0.263088, -0.046559, 0.963648,
		-0.200836, -0.979596, 0.007501,
		45.708271, 34.459644, 35.029896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440182, 34.825100, 35.130070>,  <45.848854, 35.145363, 35.024643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440182, 34.825100, 35.130070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258858, 34.525555, 34.936695>,  <46.150063, 34.345825, 34.820671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258858, 34.525555, 34.936695>,  <46.440182, 34.825100, 35.130070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258858, 34.525555, 34.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861724, -0.229509, -0.452501,
		0.227910, -0.621710, 0.749355,
		-0.453308, -0.748867, -0.483435,
		46.122864, 34.300896, 34.791664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135929, 35.070034, 35.097713>,  <46.440182, 34.825100, 35.130070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135929, 35.070034, 35.097713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507809, 35.214588, 35.126179>,  <47.730938, 35.301319, 35.143257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507809, 35.214588, 35.126179>,  <47.135929, 35.070034, 35.097713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507809, 35.214588, 35.126179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309378, -0.871046, 0.381528,
		0.199867, -0.332689, -0.921614,
		0.929698, 0.361382, 0.071167,
		47.786716, 35.323002, 35.147530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.547062, 34.593399, 34.829971>,  <47.135929, 35.070034, 35.097713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.547062, 34.593399, 34.829971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740902, 34.790318, 35.119194>,  <47.857208, 34.908470, 35.292728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740902, 34.790318, 35.119194>,  <47.547062, 34.593399, 34.829971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.740902, 34.790318, 35.119194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207956, -0.867736, 0.451429,
		0.849656, -0.068401, -0.522882,
		0.484602, 0.492296, 0.723053,
		47.886284, 34.938007, 35.336109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.612057, 36.782707, 44.417171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248749, 36.665501, 44.536629>,  <39.030766, 36.595177, 44.608303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248749, 36.665501, 44.536629>,  <39.612057, 36.782707, 44.417171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248749, 36.665501, 44.536629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278130, -0.110370, -0.954182,
		0.312556, -0.949714, 0.018748,
		-0.908269, -0.293021, 0.298640,
		38.976269, 36.577595, 44.626221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456398, 36.146580, 44.216587>,  <39.612057, 36.782707, 44.417171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456398, 36.146580, 44.216587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087418, 36.296635, 44.253155>,  <38.866032, 36.386669, 44.275097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087418, 36.296635, 44.253155>,  <39.456398, 36.146580, 44.216587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087418, 36.296635, 44.253155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245754, -0.387801, -0.888378,
		-0.297812, -0.841951, 0.449919,
		-0.922450, 0.375138, 0.091421,
		38.810684, 36.409176, 44.280582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990250, 35.725132, 43.866539>,  <39.456398, 36.146580, 44.216587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990250, 35.725132, 43.866539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732239, 36.024258, 43.929417>,  <38.577431, 36.203735, 43.967144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732239, 36.024258, 43.929417>,  <38.990250, 35.725132, 43.866539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732239, 36.024258, 43.929417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461828, -0.217605, -0.859862,
		-0.608814, -0.627230, 0.485724,
		-0.645028, 0.747817, 0.157191,
		38.538731, 36.248604, 43.976574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326717, 35.413834, 43.766136>,  <38.990250, 35.725132, 43.866539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326717, 35.413834, 43.766136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284180, 35.811031, 43.745552>,  <38.258656, 36.049351, 43.733200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284180, 35.811031, 43.745552>,  <38.326717, 35.413834, 43.766136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284180, 35.811031, 43.745552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647494, -0.108436, -0.754316,
		-0.754614, -0.046898, 0.654491,
		-0.106347, 0.992996, -0.051461,
		38.252277, 36.108929, 43.730114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589230, 35.584019, 43.765072>,  <38.326717, 35.413834, 43.766136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589230, 35.584019, 43.765072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778530, 35.890583, 43.591339>,  <37.892109, 36.074524, 43.487099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778530, 35.890583, 43.591339>,  <37.589230, 35.584019, 43.765072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778530, 35.890583, 43.591339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649446, -0.029583, -0.759832,
		-0.595194, 0.641667, 0.483743,
		0.473249, 0.766413, -0.434336,
		37.920506, 36.120506, 43.461037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043594, 36.111523, 43.439308>,  <37.589230, 35.584019, 43.765072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043594, 36.111523, 43.439308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392769, 36.182072, 43.257370>,  <37.602272, 36.224400, 43.148209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.392769, 36.182072, 43.257370>,  <37.043594, 36.111523, 43.439308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392769, 36.182072, 43.257370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458020, -0.024675, -0.888599,
		-0.167948, 0.984014, 0.059242,
		0.872932, 0.176373, -0.454843,
		37.654648, 36.234982, 43.120918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891006, 36.657753, 42.904678>,  <37.043594, 36.111523, 43.439308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891006, 36.657753, 42.904678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231949, 36.472557, 42.807415>,  <37.436516, 36.361439, 42.749058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231949, 36.472557, 42.807415>,  <36.891006, 36.657753, 42.904678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231949, 36.472557, 42.807415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275632, -0.002596, -0.961260,
		0.444425, 0.886358, -0.129829,
		0.852357, -0.462993, -0.243155,
		37.487656, 36.333660, 42.734470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122318, 36.896015, 42.213306>,  <36.891006, 36.657753, 42.904678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122318, 36.896015, 42.213306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 36.578308, 42.225445>,  <37.510677, 36.387684, 42.232727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365044, 36.578308, 42.225445>,  <37.122318, 36.896015, 42.213306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365044, 36.578308, 42.225445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119670, -0.129036, -0.984393,
		0.785784, 0.593711, -0.173351,
		0.606813, -0.794265, 0.030345,
		37.547089, 36.340027, 42.234547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670258, 36.964558, 41.710083>,  <37.122318, 36.896015, 42.213306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670258, 36.964558, 41.710083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663193, 36.573116, 41.792080>,  <37.658955, 36.338253, 41.841278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663193, 36.573116, 41.792080>,  <37.670258, 36.964558, 41.710083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663193, 36.573116, 41.792080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180524, -0.198532, -0.963326,
		0.983412, -0.054024, -0.173154,
		-0.017666, -0.978605, 0.204991,
		37.657894, 36.279533, 41.853577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154396, 36.615314, 41.194141>,  <37.670258, 36.964558, 41.710083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154396, 36.615314, 41.194141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912186, 36.341667, 41.356785>,  <37.766861, 36.177479, 41.454372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.912186, 36.341667, 41.356785>,  <38.154396, 36.615314, 41.194141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912186, 36.341667, 41.356785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140311, -0.411150, -0.900705,
		0.783362, -0.602448, 0.152971,
		-0.605522, -0.684114, 0.406609,
		37.730530, 36.136433, 41.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333904, 35.842033, 41.029594>,  <38.154396, 36.615314, 41.194141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333904, 35.842033, 41.029594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940182, 35.836300, 41.099949>,  <37.703949, 35.832859, 41.142162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940182, 35.836300, 41.099949>,  <38.333904, 35.842033, 41.029594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940182, 35.836300, 41.099949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169252, -0.205506, -0.963909,
		0.049960, -0.978551, 0.199856,
		-0.984306, -0.014331, 0.175889,
		37.644890, 35.832001, 41.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056248, 35.251659, 40.624535>,  <38.333904, 35.842033, 41.029594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056248, 35.251659, 40.624535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705578, 35.427673, 40.702324>,  <37.495178, 35.533279, 40.748997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705578, 35.427673, 40.702324>,  <38.056248, 35.251659, 40.624535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705578, 35.427673, 40.702324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237043, -0.043320, -0.970533,
		-0.418641, -0.896937, 0.142284,
		-0.876670, 0.440032, 0.194478,
		37.442577, 35.559685, 40.760666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529987, 34.851734, 40.225662>,  <38.056248, 35.251659, 40.624535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529987, 34.851734, 40.225662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366566, 35.214504, 40.266773>,  <37.268513, 35.432167, 40.291439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366566, 35.214504, 40.266773>,  <37.529987, 34.851734, 40.225662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366566, 35.214504, 40.266773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263966, -0.009608, -0.964484,
		-0.873732, -0.421173, 0.243324,
		-0.408553, 0.906929, 0.102780,
		37.243999, 35.486584, 40.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835182, 34.818802, 40.054737>,  <37.529987, 34.851734, 40.225662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835182, 34.818802, 40.054737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921108, 35.205376, 39.998360>,  <36.972664, 35.437321, 39.964535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.921108, 35.205376, 39.998360>,  <36.835182, 34.818802, 40.054737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921108, 35.205376, 39.998360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558033, 0.003015, -0.829813,
		-0.801533, 0.256906, 0.539948,
		0.214812, 0.966432, -0.140945,
		36.985554, 35.495304, 39.956078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359604, 34.971203, 39.594841>,  <36.835182, 34.818802, 40.054737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359604, 34.971203, 39.594841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567200, 35.313103, 39.597527>,  <36.691757, 35.518242, 39.599140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567200, 35.313103, 39.597527>,  <36.359604, 34.971203, 39.594841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567200, 35.313103, 39.597527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422839, 0.263557, -0.867032,
		-0.742868, 0.447144, 0.498207,
		0.518994, 0.854751, 0.006718,
		36.722897, 35.569527, 39.599541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890648, 35.463554, 39.324619>,  <36.359604, 34.971203, 39.594841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890648, 35.463554, 39.324619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247154, 35.631275, 39.255539>,  <36.461060, 35.731907, 39.214092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247154, 35.631275, 39.255539>,  <35.890648, 35.463554, 39.324619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247154, 35.631275, 39.255539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364590, 0.436115, -0.822726,
		-0.269649, 0.796237, 0.541568,
		0.891271, 0.419298, -0.172702,
		36.514534, 35.757065, 39.203728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785435, 36.234444, 39.213497>,  <35.890648, 35.463554, 39.324619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785435, 36.234444, 39.213497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143356, 36.166412, 39.048378>,  <36.358109, 36.125595, 38.949306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143356, 36.166412, 39.048378>,  <35.785435, 36.234444, 39.213497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143356, 36.166412, 39.048378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294907, 0.469019, -0.832497,
		0.335198, 0.866657, 0.369524,
		0.894803, -0.170076, -0.412798,
		36.411797, 36.115391, 38.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078785, 36.861774, 39.050064>,  <35.785435, 36.234444, 39.213497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078785, 36.861774, 39.050064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265968, 36.590076, 38.823917>,  <36.378277, 36.427055, 38.688229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265968, 36.590076, 38.823917>,  <36.078785, 36.861774, 39.050064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265968, 36.590076, 38.823917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200735, 0.541317, -0.816505,
		0.860652, 0.495578, 0.116965,
		0.467957, -0.679247, -0.565366,
		36.406357, 36.386303, 38.654308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438759, 37.242348, 38.515888>,  <36.078785, 36.861774, 39.050064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438759, 37.242348, 38.515888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393101, 36.877697, 38.357952>,  <36.365704, 36.658905, 38.263191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393101, 36.877697, 38.357952>,  <36.438759, 37.242348, 38.515888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393101, 36.877697, 38.357952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145994, 0.408520, -0.900998,
		0.982678, -0.045201, -0.179724,
		-0.114147, -0.911630, -0.394844,
		36.358856, 36.604210, 38.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826714, 37.296520, 37.960175>,  <36.438759, 37.242348, 38.515888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826714, 37.296520, 37.960175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578125, 36.990032, 37.894836>,  <36.428974, 36.806137, 37.855633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578125, 36.990032, 37.894836>,  <36.826714, 37.296520, 37.960175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578125, 36.990032, 37.894836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258021, 0.397046, -0.880783,
		0.739732, -0.505230, -0.444453,
		-0.621467, -0.766222, -0.163348,
		36.391685, 36.760166, 37.845833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933315, 37.209934, 37.281986>,  <36.826714, 37.296520, 37.960175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933315, 37.209934, 37.281986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588055, 37.034206, 37.381554>,  <36.380898, 36.928768, 37.441292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588055, 37.034206, 37.381554>,  <36.933315, 37.209934, 37.281986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588055, 37.034206, 37.381554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458695, 0.476121, -0.750271,
		0.211095, -0.761778, -0.612481,
		-0.863156, -0.439321, 0.248917,
		36.329109, 36.902409, 37.456230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648228, 36.813412, 36.677692>,  <36.933315, 37.209934, 37.281986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648228, 36.813412, 36.677692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336739, 36.887638, 36.917412>,  <36.149845, 36.932175, 37.061245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336739, 36.887638, 36.917412>,  <36.648228, 36.813412, 36.677692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336739, 36.887638, 36.917412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532768, 0.308842, -0.787893,
		-0.331293, -0.932836, -0.141639,
		-0.778719, 0.185563, 0.599302,
		36.103123, 36.943306, 37.097202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393566, 36.672993, 36.804947>,  <36.648228, 36.813412, 36.677692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393566, 36.672993, 36.804947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591389, 36.391354, 36.601120>,  <37.710083, 36.222370, 36.478825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591389, 36.391354, 36.601120>,  <37.393566, 36.672993, 36.804947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591389, 36.391354, 36.601120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498849, -0.250147, 0.829805,
		-0.711731, -0.664584, 0.227526,
		0.494560, -0.704098, -0.509564,
		37.739758, 36.180122, 36.448250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462769, 36.161800, 37.197670>,  <37.393566, 36.672993, 36.804947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462769, 36.161800, 37.197670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759174, 36.109882, 36.934139>,  <37.937019, 36.078732, 36.776020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759174, 36.109882, 36.934139>,  <37.462769, 36.161800, 37.197670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759174, 36.109882, 36.934139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577028, -0.378701, 0.723619,
		-0.343417, -0.916373, -0.205729,
		0.741015, -0.129791, -0.658825,
		37.981480, 36.070942, 36.736492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755020, 35.523514, 37.257145>,  <37.462769, 36.161800, 37.197670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755020, 35.523514, 37.257145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051487, 35.723465, 37.077908>,  <38.229366, 35.843437, 36.970364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.051487, 35.723465, 37.077908>,  <37.755020, 35.523514, 37.257145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051487, 35.723465, 37.077908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631719, -0.293470, 0.717500,
		0.227161, -0.814859, -0.533295,
		0.741167, 0.499880, -0.448097,
		38.273838, 35.873428, 36.943478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443806, 35.067738, 37.231411>,  <37.755020, 35.523514, 37.257145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443806, 35.067738, 37.231411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568962, 35.445530, 37.191311>,  <38.644054, 35.672207, 37.167252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568962, 35.445530, 37.191311>,  <38.443806, 35.067738, 37.231411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568962, 35.445530, 37.191311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737027, -0.174868, 0.652849,
		0.599074, -0.278161, -0.750824,
		0.312892, 0.944483, -0.100253,
		38.662830, 35.728874, 37.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156303, 35.115520, 37.001583>,  <38.443806, 35.067738, 37.231411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156303, 35.115520, 37.001583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123180, 35.490383, 37.137161>,  <39.103306, 35.715302, 37.218506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123180, 35.490383, 37.137161>,  <39.156303, 35.115520, 37.001583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123180, 35.490383, 37.137161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799399, -0.140619, 0.584112,
		0.595065, 0.319322, -0.737516,
		-0.082811, 0.937155, 0.338943,
		39.098335, 35.771530, 37.238846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724556, 35.229660, 37.290684>,  <39.156303, 35.115520, 37.001583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724556, 35.229660, 37.290684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.530632, 35.530457, 37.469334>,  <39.414276, 35.710934, 37.576523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.530632, 35.530457, 37.469334>,  <39.724556, 35.229660, 37.290684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530632, 35.530457, 37.469334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686658, 0.010973, 0.726898,
		0.541718, 0.659085, -0.521679,
		-0.484812, 0.751988, 0.446622,
		39.385189, 35.756054, 37.603321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127869, 35.328148, 37.801018>,  <39.724556, 35.229660, 37.290684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127869, 35.328148, 37.801018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853157, 35.600739, 37.902145>,  <39.688332, 35.764294, 37.962822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853157, 35.600739, 37.902145>,  <40.127869, 35.328148, 37.801018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853157, 35.600739, 37.902145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455177, 0.132038, 0.880556,
		0.566698, 0.719828, -0.400875,
		-0.686780, 0.681479, 0.252823,
		39.647121, 35.805183, 37.977993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458103, 36.012913, 37.980946>,  <40.127869, 35.328148, 37.801018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458103, 36.012913, 37.980946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.100193, 35.980057, 38.156509>,  <39.885448, 35.960342, 38.261848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.100193, 35.980057, 38.156509>,  <40.458103, 36.012913, 37.980946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100193, 35.980057, 38.156509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442430, -0.030272, 0.896292,
		-0.060334, 0.996161, 0.063428,
		-0.894771, -0.082139, 0.438905,
		39.831760, 35.955414, 38.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615875, 36.285072, 38.558346>,  <40.458103, 36.012913, 37.980946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615875, 36.285072, 38.558346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263153, 36.113544, 38.636864>,  <40.051521, 36.010628, 38.683975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263153, 36.113544, 38.636864>,  <40.615875, 36.285072, 38.558346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263153, 36.113544, 38.636864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279386, -0.139664, 0.949967,
		-0.379950, 0.892529, 0.242962,
		-0.881806, -0.428820, 0.196295,
		39.998611, 35.984898, 38.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349709, 36.675755, 39.131424>,  <40.615875, 36.285072, 38.558346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349709, 36.675755, 39.131424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199688, 36.305279, 39.115864>,  <40.109676, 36.082993, 39.106529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199688, 36.305279, 39.115864>,  <40.349709, 36.675755, 39.131424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199688, 36.305279, 39.115864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307512, -0.163887, 0.937325,
		-0.874515, 0.339580, 0.346279,
		-0.375047, -0.926189, -0.038897,
		40.087173, 36.027420, 39.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807915, 36.508049, 39.686008>,  <40.349709, 36.675755, 39.131424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807915, 36.508049, 39.686008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971619, 36.153660, 39.598778>,  <40.069839, 35.941025, 39.546440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971619, 36.153660, 39.598778>,  <39.807915, 36.508049, 39.686008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971619, 36.153660, 39.598778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204303, -0.143961, 0.968264,
		-0.889251, -0.440826, 0.122090,
		0.409260, -0.885973, -0.218079,
		40.094398, 35.887867, 39.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566700, 36.069344, 40.136929>,  <39.807915, 36.508049, 39.686008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566700, 36.069344, 40.136929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894135, 35.881531, 40.004597>,  <40.090595, 35.768841, 39.925198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894135, 35.881531, 40.004597>,  <39.566700, 36.069344, 40.136929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894135, 35.881531, 40.004597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322264, -0.101332, 0.941211,
		-0.475455, -0.877079, 0.068365,
		0.818589, -0.469535, -0.330830,
		40.139709, 35.740669, 39.905346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546444, 35.328426, 40.367592>,  <39.566700, 36.069344, 40.136929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546444, 35.328426, 40.367592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909241, 35.490978, 40.323364>,  <40.126919, 35.588509, 40.296825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909241, 35.490978, 40.323364>,  <39.546444, 35.328426, 40.367592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909241, 35.490978, 40.323364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160920, -0.091770, 0.982692,
		0.389201, -0.909083, -0.148629,
		0.906988, 0.406382, -0.110573,
		40.181335, 35.612892, 40.290192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069706, 34.955330, 40.698158>,  <39.546444, 35.328426, 40.367592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069706, 34.955330, 40.698158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261253, 35.304649, 40.662292>,  <40.376183, 35.514240, 40.640774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261253, 35.304649, 40.662292>,  <40.069706, 34.955330, 40.698158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261253, 35.304649, 40.662292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341979, -0.091501, 0.935242,
		0.808541, -0.478517, -0.342466,
		0.478865, 0.873298, -0.089660,
		40.404911, 35.566639, 40.635395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729656, 34.852928, 40.939247>,  <40.069706, 34.955330, 40.698158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729656, 34.852928, 40.939247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674400, 35.245716, 40.990852>,  <40.641247, 35.481388, 41.021816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.674400, 35.245716, 40.990852>,  <40.729656, 34.852928, 40.939247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674400, 35.245716, 40.990852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280333, -0.086172, 0.956027,
		0.949910, 0.168237, -0.263375,
		-0.138143, 0.981973, 0.129018,
		40.632957, 35.540306, 41.029556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369675, 35.052814, 41.191132>,  <40.729656, 34.852928, 40.939247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369675, 35.052814, 41.191132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.099785, 35.318230, 41.320419>,  <40.937851, 35.477478, 41.397991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.099785, 35.318230, 41.320419>,  <41.369675, 35.052814, 41.191132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099785, 35.318230, 41.320419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198424, -0.258724, 0.945352,
		0.710900, 0.701983, 0.042905,
		-0.674721, 0.663537, 0.323217,
		40.897369, 35.517292, 41.417385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687256, 35.320480, 41.760174>,  <41.369675, 35.052814, 41.191132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687256, 35.320480, 41.760174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315617, 35.458195, 41.814209>,  <41.092632, 35.540825, 41.846630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315617, 35.458195, 41.814209>,  <41.687256, 35.320480, 41.760174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315617, 35.458195, 41.814209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079772, -0.170101, 0.982192,
		0.361135, 0.923326, 0.130576,
		-0.929095, 0.344288, 0.135085,
		41.036888, 35.561481, 41.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636658, 35.956684, 42.249943>,  <41.687256, 35.320480, 41.760174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636658, 35.956684, 42.249943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264286, 35.811890, 42.269257>,  <41.040863, 35.725014, 42.280846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264286, 35.811890, 42.269257>,  <41.636658, 35.956684, 42.249943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264286, 35.811890, 42.269257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068800, -0.043983, 0.996660,
		-0.358655, 0.931145, 0.065850,
		-0.930931, -0.361988, 0.048289,
		40.985008, 35.703293, 42.283745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.981598, 36.515591, 42.917843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829750, 36.150097, 42.859909>,  <40.738640, 35.930801, 42.825150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829750, 36.150097, 42.859909>,  <40.981598, 36.515591, 42.917843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829750, 36.150097, 42.859909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064480, -0.182303, 0.981126,
		-0.922893, 0.363116, 0.128123,
		-0.379620, -0.913735, -0.144832,
		40.715862, 35.875977, 42.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569996, 36.386635, 43.439949>,  <40.981598, 36.515591, 42.917843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569996, 36.386635, 43.439949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633183, 36.014278, 43.308201>,  <40.671093, 35.790863, 43.229153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633183, 36.014278, 43.308201>,  <40.569996, 36.386635, 43.439949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633183, 36.014278, 43.308201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084670, -0.319563, 0.943775,
		-0.983808, -0.176971, 0.028339,
		0.157964, -0.930893, -0.329373,
		40.680573, 35.735012, 43.209389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156822, 35.977684, 43.877834>,  <40.569996, 36.386635, 43.439949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156822, 35.977684, 43.877834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424026, 35.720650, 43.727718>,  <40.584351, 35.566429, 43.637650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424026, 35.720650, 43.727718>,  <40.156822, 35.977684, 43.877834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424026, 35.720650, 43.727718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106370, -0.416683, 0.902807,
		-0.736509, -0.643006, -0.209997,
		0.668012, -0.642588, -0.375287,
		40.624432, 35.527874, 43.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035686, 35.417480, 44.149578>,  <40.156822, 35.977684, 43.877834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035686, 35.417480, 44.149578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425900, 35.399349, 44.063526>,  <40.660027, 35.388470, 44.011894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425900, 35.399349, 44.063526>,  <40.035686, 35.417480, 44.149578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425900, 35.399349, 44.063526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194126, -0.281697, 0.939661,
		-0.103198, -0.958432, -0.266004,
		0.975534, -0.045333, -0.215127,
		40.718559, 35.385750, 43.998989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397614, 34.792328, 44.533623>,  <40.035686, 35.417480, 44.149578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397614, 34.792328, 44.533623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.651623, 35.084637, 44.433445>,  <40.804028, 35.260021, 44.373337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.651623, 35.084637, 44.433445>,  <40.397614, 34.792328, 44.533623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651623, 35.084637, 44.433445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269502, 0.094261, 0.958376,
		0.723957, -0.676087, -0.137086,
		0.635023, 0.730768, -0.250448,
		40.842129, 35.303867, 44.358311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977306, 34.581997, 44.964348>,  <40.397614, 34.792328, 44.533623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977306, 34.581997, 44.964348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067051, 34.949516, 44.834438>,  <41.120899, 35.170029, 44.756493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067051, 34.949516, 44.834438>,  <40.977306, 34.581997, 44.964348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067051, 34.949516, 44.834438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422993, 0.208417, 0.881839,
		0.877916, -0.335230, -0.341883,
		0.224364, 0.918795, -0.324772,
		41.134361, 35.225155, 44.737007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736031, 34.670895, 45.148304>,  <40.977306, 34.581997, 44.964348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736031, 34.670895, 45.148304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560551, 35.027061, 45.099804>,  <41.455265, 35.240761, 45.070702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560551, 35.027061, 45.099804>,  <41.736031, 34.670895, 45.148304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560551, 35.027061, 45.099804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401128, 0.314775, 0.860240,
		0.804141, 0.328745, -0.495262,
		-0.438696, 0.890417, -0.121255,
		41.428944, 35.294186, 45.063427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252678, 35.119835, 45.201466>,  <41.736031, 34.670895, 45.148304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252678, 35.119835, 45.201466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.920147, 35.329475, 45.275452>,  <41.720627, 35.455257, 45.319843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.920147, 35.329475, 45.275452>,  <42.252678, 35.119835, 45.201466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920147, 35.329475, 45.275452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440211, 0.417772, 0.794784,
		0.339270, 0.742151, -0.578020,
		-0.831330, 0.524097, 0.184966,
		41.670750, 35.486706, 45.330940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458961, 35.779846, 45.282757>,  <42.252678, 35.119835, 45.201466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458961, 35.779846, 45.282757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099201, 35.778545, 45.457603>,  <41.883347, 35.777763, 45.562511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099201, 35.778545, 45.457603>,  <42.458961, 35.779846, 45.282757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099201, 35.778545, 45.457603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351817, 0.588099, 0.728262,
		-0.259437, 0.808783, -0.527791,
		-0.899398, -0.003252, 0.437118,
		41.829380, 35.777569, 45.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316700, 36.489643, 45.458710>,  <42.458961, 35.779846, 45.282757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316700, 36.489643, 45.458710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099564, 36.249233, 45.693344>,  <41.969280, 36.104988, 45.834126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099564, 36.249233, 45.693344>,  <42.316700, 36.489643, 45.458710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099564, 36.249233, 45.693344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365200, 0.460034, 0.809319,
		-0.756275, 0.653555, -0.030231,
		-0.542842, -0.601027, 0.586591,
		41.936710, 36.068924, 45.869320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157413, 36.869381, 46.160477>,  <42.316700, 36.489643, 45.458710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157413, 36.869381, 46.160477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105740, 36.489059, 46.273102>,  <42.074734, 36.260864, 46.340679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105740, 36.489059, 46.273102>,  <42.157413, 36.869381, 46.160477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105740, 36.489059, 46.273102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308559, 0.231304, 0.922654,
		-0.942391, 0.206077, 0.263498,
		-0.129189, -0.950805, 0.281566,
		42.066982, 36.203819, 46.357571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876823, 36.903484, 46.830112>,  <42.157413, 36.869381, 46.160477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876823, 36.903484, 46.830112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038162, 36.538097, 46.808647>,  <42.134964, 36.318863, 46.795769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038162, 36.538097, 46.808647>,  <41.876823, 36.903484, 46.830112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038162, 36.538097, 46.808647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519913, 0.180517, 0.834927,
		-0.752995, -0.364668, 0.547738,
		0.403347, -0.913472, -0.053667,
		42.159168, 36.264057, 46.792545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709782, 36.678017, 47.548191>,  <41.876823, 36.903484, 46.830112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709782, 36.678017, 47.548191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.980339, 36.417683, 47.410259>,  <42.142673, 36.261482, 47.327499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.980339, 36.417683, 47.410259>,  <41.709782, 36.678017, 47.548191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980339, 36.417683, 47.410259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435029, -0.024773, 0.900075,
		-0.594345, -0.758813, 0.266377,
		0.676390, -0.650838, -0.344830,
		42.183254, 36.222431, 47.306808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610638, 36.061394, 47.741131>,  <41.709782, 36.678017, 47.548191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610638, 36.061394, 47.741131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004719, 36.045780, 47.674374>,  <42.241169, 36.036411, 47.634319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004719, 36.045780, 47.674374>,  <41.610638, 36.061394, 47.741131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004719, 36.045780, 47.674374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134517, -0.427388, 0.894005,
		-0.106223, -0.903225, -0.415813,
		0.985202, -0.039030, -0.166897,
		42.300278, 36.034073, 47.624306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876896, 35.605133, 48.198601>,  <41.610638, 36.061394, 47.741131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876896, 35.605133, 48.198601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.220490, 35.775883, 48.085510>,  <42.426643, 35.878334, 48.017654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.220490, 35.775883, 48.085510>,  <41.876896, 35.605133, 48.198601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220490, 35.775883, 48.085510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454836, -0.382618, 0.804194,
		0.235113, -0.819379, -0.522819,
		0.858980, 0.426873, -0.282725,
		42.478184, 35.903946, 48.000694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353619, 35.083805, 48.241898>,  <41.876896, 35.605133, 48.198601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353619, 35.083805, 48.241898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566193, 35.421345, 48.271568>,  <42.693737, 35.623867, 48.289371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566193, 35.421345, 48.271568>,  <42.353619, 35.083805, 48.241898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566193, 35.421345, 48.271568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377108, -0.314081, 0.871288,
		0.758532, -0.435057, -0.485134,
		0.531431, 0.843848, 0.074177,
		42.725620, 35.674500, 48.293823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998192, 34.894760, 48.402187>,  <42.353619, 35.083805, 48.241898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998192, 34.894760, 48.402187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.964382, 35.274200, 48.524178>,  <42.944096, 35.501865, 48.597370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.964382, 35.274200, 48.524178>,  <42.998192, 34.894760, 48.402187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964382, 35.274200, 48.524178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376556, -0.252964, 0.891187,
		0.922530, 0.190164, -0.335821,
		-0.084521, 0.948602, 0.304975,
		42.939026, 35.558781, 48.615669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652233, 34.994076, 48.892319>,  <42.998192, 34.894760, 48.402187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652233, 34.994076, 48.892319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.406624, 35.301807, 48.962864>,  <43.259258, 35.486446, 49.005192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.406624, 35.301807, 48.962864>,  <43.652233, 34.994076, 48.892319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406624, 35.301807, 48.962864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125575, -0.125379, 0.984130,
		0.779236, 0.626424, -0.019624,
		-0.614022, 0.769333, 0.176363,
		43.222416, 35.532608, 49.015774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997135, 35.318924, 49.442257>,  <43.652233, 34.994076, 48.892319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997135, 35.318924, 49.442257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.627262, 35.471218, 49.442783>,  <43.405338, 35.562595, 49.443100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.627262, 35.471218, 49.442783>,  <43.997135, 35.318924, 49.442257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627262, 35.471218, 49.442783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007465, 0.014682, 0.999864,
		0.380667, 0.924567, -0.016418,
		-0.924682, 0.380738, 0.001313,
		43.349857, 35.585438, 49.443176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030548, 36.004417, 49.804291>,  <43.997135, 35.318924, 49.442257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030548, 36.004417, 49.804291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.667862, 35.835964, 49.813358>,  <43.450249, 35.734894, 49.818798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.667862, 35.835964, 49.813358>,  <44.030548, 36.004417, 49.804291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667862, 35.835964, 49.813358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075100, -0.108329, 0.991274,
		-0.415002, 0.900507, 0.129851,
		-0.906716, -0.421133, 0.022671,
		43.395847, 35.709625, 49.820160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738194, 36.347813, 50.468273>,  <44.030548, 36.004417, 49.804291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738194, 36.347813, 50.468273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.530621, 36.016727, 50.382851>,  <43.406078, 35.818077, 50.331596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.530621, 36.016727, 50.382851>,  <43.738194, 36.347813, 50.468273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530621, 36.016727, 50.382851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077414, -0.203290, 0.976053,
		-0.851305, 0.523033, 0.041417,
		-0.518928, -0.827713, -0.213552,
		43.374943, 35.768414, 50.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053425, 36.407688, 50.747150>,  <43.738194, 36.347813, 50.468273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053425, 36.407688, 50.747150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.142914, 36.018803, 50.719585>,  <43.196609, 35.785473, 50.703045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.142914, 36.018803, 50.719585>,  <43.053425, 36.407688, 50.747150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142914, 36.018803, 50.719585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137608, -0.101504, 0.985272,
		-0.964889, -0.210949, -0.156494,
		0.223727, -0.972213, -0.068912,
		43.210033, 35.727139, 50.698914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642277, 36.025131, 51.111607>,  <43.053425, 36.407688, 50.747150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642277, 36.025131, 51.111607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912956, 35.731918, 51.084057>,  <43.075363, 35.555992, 51.067528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912956, 35.731918, 51.084057>,  <42.642277, 36.025131, 51.111607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912956, 35.731918, 51.084057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189897, -0.264154, 0.945602,
		-0.711347, -0.626810, -0.317953,
		0.676701, -0.733029, -0.068876,
		43.115967, 35.512009, 51.063393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375187, 35.646317, 51.599987>,  <42.642277, 36.025131, 51.111607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375187, 35.646317, 51.599987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.719795, 35.448360, 51.554623>,  <42.926559, 35.329586, 51.527405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.719795, 35.448360, 51.554623>,  <42.375187, 35.646317, 51.599987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719795, 35.448360, 51.554623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186658, -0.516454, 0.835724,
		-0.472164, -0.698825, -0.537312,
		0.861522, -0.494892, -0.113409,
		42.978252, 35.299892, 51.520599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689991, 35.539688, 51.952801>,  <42.375187, 35.646317, 51.599987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689991, 35.539688, 51.952801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.312164, 35.526737, 52.083488>,  <41.085468, 35.518967, 52.161900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.312164, 35.526737, 52.083488>,  <41.689991, 35.539688, 51.952801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312164, 35.526737, 52.083488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317089, -0.168099, -0.933379,
		0.085140, -0.985238, 0.148515,
		-0.944567, -0.032376, 0.326720,
		41.028793, 35.517025, 52.181503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372631, 34.935993, 51.797874>,  <41.689991, 35.539688, 51.952801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372631, 34.935993, 51.797874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093433, 35.218044, 51.847843>,  <40.925915, 35.387276, 51.877827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093433, 35.218044, 51.847843>,  <41.372631, 34.935993, 51.797874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093433, 35.218044, 51.847843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169678, 0.006633, -0.985477,
		-0.695713, -0.709052, 0.115014,
		-0.697992, 0.705124, 0.124925,
		40.884037, 35.429581, 51.885319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727242, 34.662064, 51.408100>,  <41.372631, 34.935993, 51.797874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727242, 34.662064, 51.408100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691681, 35.060005, 51.427582>,  <40.670345, 35.298771, 51.439270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691681, 35.060005, 51.427582>,  <40.727242, 34.662064, 51.408100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691681, 35.060005, 51.427582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267135, 0.023296, -0.963377,
		-0.959550, -0.098653, 0.263688,
		-0.088897, 0.994849, 0.048708,
		40.665012, 35.358459, 51.442196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114357, 34.856899, 51.023975>,  <40.727242, 34.662064, 51.408100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114357, 34.856899, 51.023975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289570, 35.216343, 51.034016>,  <40.394695, 35.432011, 51.040039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289570, 35.216343, 51.034016>,  <40.114357, 34.856899, 51.023975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289570, 35.216343, 51.034016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407233, 0.223242, -0.885621,
		-0.801432, 0.377705, 0.463730,
		0.438027, 0.898611, 0.025100,
		40.420979, 35.485928, 51.041546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685627, 35.317894, 50.727440>,  <40.114357, 34.856899, 51.023975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685627, 35.317894, 50.727440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014313, 35.545555, 50.739105>,  <40.211525, 35.682152, 50.746105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014313, 35.545555, 50.739105>,  <39.685627, 35.317894, 50.727440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014313, 35.545555, 50.739105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332592, 0.520477, -0.786439,
		-0.462786, 0.636527, 0.616979,
		0.821712, 0.569155, 0.029166,
		40.260826, 35.716301, 50.747856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492466, 35.968151, 50.746033>,  <39.685627, 35.317894, 50.727440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492466, 35.968151, 50.746033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860531, 35.974556, 50.589550>,  <40.081371, 35.978401, 50.495659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860531, 35.974556, 50.589550>,  <39.492466, 35.968151, 50.746033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860531, 35.974556, 50.589550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353199, 0.465161, -0.811712,
		0.168976, 0.885081, 0.433680,
		0.920162, 0.016015, -0.391211,
		40.136578, 35.979359, 50.472187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457027, 36.587540, 50.479038>,  <39.492466, 35.968151, 50.746033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457027, 36.587540, 50.479038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749577, 36.383415, 50.298077>,  <39.925106, 36.260941, 50.189499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.749577, 36.383415, 50.298077>,  <39.457027, 36.587540, 50.479038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749577, 36.383415, 50.298077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351053, 0.287016, -0.891282,
		0.584679, 0.810681, 0.030770,
		0.731377, -0.510312, -0.452404,
		39.968990, 36.230320, 50.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650494, 36.951424, 49.816399>,  <39.457027, 36.587540, 50.479038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650494, 36.951424, 49.816399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789429, 36.577374, 49.788429>,  <39.872791, 36.352943, 49.771648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789429, 36.577374, 49.788429>,  <39.650494, 36.951424, 49.816399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789429, 36.577374, 49.788429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110410, 0.033266, -0.993329,
		0.931216, 0.352745, -0.091692,
		0.347342, -0.935128, -0.069924,
		39.893631, 36.296837, 49.767452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138714, 36.993263, 49.352081>,  <39.650494, 36.951424, 49.816399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138714, 36.993263, 49.352081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026962, 36.609196, 49.353447>,  <39.959911, 36.378754, 49.354267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026962, 36.609196, 49.353447>,  <40.138714, 36.993263, 49.352081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026962, 36.609196, 49.353447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314509, 0.088153, -0.945152,
		0.907209, -0.265133, -0.326612,
		-0.279383, -0.960174, 0.003414,
		39.943146, 36.321144, 49.354469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423946, 36.638756, 48.725193>,  <40.138714, 36.993263, 49.352081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423946, 36.638756, 48.725193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140408, 36.389881, 48.858112>,  <39.970284, 36.240555, 48.937866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140408, 36.389881, 48.858112>,  <40.423946, 36.638756, 48.725193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140408, 36.389881, 48.858112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314174, -0.143302, -0.938488,
		0.631534, -0.769642, -0.093896,
		-0.708844, -0.622186, 0.332301,
		39.927753, 36.203224, 48.957802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582073, 36.065556, 48.364399>,  <40.423946, 36.638756, 48.725193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582073, 36.065556, 48.364399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.200439, 36.052235, 48.483479>,  <39.971458, 36.044243, 48.554924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.200439, 36.052235, 48.483479>,  <40.582073, 36.065556, 48.364399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200439, 36.052235, 48.483479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297775, -0.002687, -0.954632,
		0.032586, -0.999442, -0.007351,
		-0.954080, -0.033297, 0.297696,
		39.914215, 36.042244, 48.572788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260170, 35.432869, 48.133202>,  <40.582073, 36.065556, 48.364399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260170, 35.432869, 48.133202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.969353, 35.699764, 48.197952>,  <39.794861, 35.859901, 48.236805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.969353, 35.699764, 48.197952>,  <40.260170, 35.432869, 48.133202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969353, 35.699764, 48.197952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218053, -0.000824, -0.975937,
		-0.651046, -0.744846, 0.146092,
		-0.727043, 0.667236, 0.161880,
		39.751240, 35.899937, 48.246517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808388, 35.201145, 47.688000>,  <40.260170, 35.432869, 48.133202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808388, 35.201145, 47.688000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656158, 35.555408, 47.794407>,  <39.564819, 35.767967, 47.858253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656158, 35.555408, 47.794407>,  <39.808388, 35.201145, 47.688000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656158, 35.555408, 47.794407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227570, 0.189124, -0.955219,
		-0.896313, -0.424069, 0.129575,
		-0.380573, 0.885662, 0.266020,
		39.541988, 35.821106, 47.874214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341396, 35.177280, 47.292347>,  <39.808388, 35.201145, 47.688000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341396, 35.177280, 47.292347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334103, 35.565430, 47.388721>,  <39.329727, 35.798317, 47.446545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334103, 35.565430, 47.388721>,  <39.341396, 35.177280, 47.292347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334103, 35.565430, 47.388721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209133, 0.231942, -0.949982,
		-0.977717, -0.067713, 0.198707,
		-0.018238, 0.970370, 0.240935,
		39.328632, 35.856541, 47.461002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737827, 35.380322, 47.078083>,  <39.341396, 35.177280, 47.292347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737827, 35.380322, 47.078083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955250, 35.716034, 47.073212>,  <39.085705, 35.917461, 47.070290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955250, 35.716034, 47.073212>,  <38.737827, 35.380322, 47.078083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955250, 35.716034, 47.073212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246281, 0.145603, -0.958199,
		-0.802429, 0.523833, 0.285843,
		0.543556, 0.839285, -0.012174,
		39.118317, 35.967819, 47.069561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342533, 35.971485, 46.739403>,  <38.737827, 35.380322, 47.078083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342533, 35.971485, 46.739403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731628, 36.057819, 46.705471>,  <38.965084, 36.109619, 46.685112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731628, 36.057819, 46.705471>,  <38.342533, 35.971485, 46.739403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731628, 36.057819, 46.705471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139146, 0.250573, -0.958046,
		-0.185521, 0.943732, 0.273774,
		0.972739, 0.215832, -0.084829,
		39.023449, 36.122570, 46.680023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425022, 36.612736, 46.633560>,  <38.342533, 35.971485, 46.739403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425022, 36.612736, 46.633560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745953, 36.437119, 46.471817>,  <38.938511, 36.331749, 46.374771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745953, 36.437119, 46.471817>,  <38.425022, 36.612736, 46.633560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745953, 36.437119, 46.471817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234525, 0.391085, -0.889972,
		0.548877, 0.808883, 0.210812,
		0.802329, -0.439045, -0.404361,
		38.986652, 36.305405, 46.350510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694302, 37.072670, 46.219902>,  <38.425022, 36.612736, 46.633560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694302, 37.072670, 46.219902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864532, 36.735107, 46.089245>,  <38.966671, 36.532570, 46.010849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864532, 36.735107, 46.089245>,  <38.694302, 37.072670, 46.219902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864532, 36.735107, 46.089245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047892, 0.381466, -0.923141,
		0.903653, 0.377226, 0.202761,
		0.425579, -0.843910, -0.326646,
		38.992207, 36.481934, 45.991249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020554, 37.337009, 45.554844>,  <38.694302, 37.072670, 46.219902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020554, 37.337009, 45.554844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032829, 36.938820, 45.518852>,  <39.040195, 36.699905, 45.497257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032829, 36.938820, 45.518852>,  <39.020554, 37.337009, 45.554844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032829, 36.938820, 45.518852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039738, 0.088733, -0.995263,
		0.998739, 0.034116, -0.036836,
		0.030686, -0.995471, -0.089977,
		39.042034, 36.640179, 45.491859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521698, 37.202946, 45.056538>,  <39.020554, 37.337009, 45.554844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521698, 37.202946, 45.056538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265636, 36.896622, 45.080997>,  <39.112000, 36.712826, 45.095673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265636, 36.896622, 45.080997>,  <39.521698, 37.202946, 45.056538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265636, 36.896622, 45.080997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309968, 0.184640, -0.932645,
		0.702939, -0.615990, -0.355575,
		-0.640153, -0.765810, 0.061146,
		39.073589, 36.666878, 45.099342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.791012, 37.927162, 27.668760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428787, 37.862057, 27.512058>,  <44.211452, 37.822994, 27.418037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428787, 37.862057, 27.512058>,  <44.791012, 37.927162, 27.668760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428787, 37.862057, 27.512058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392953, -0.026149, 0.919187,
		-0.159850, 0.986319, -0.040277,
		-0.905558, -0.162759, -0.391757,
		44.157120, 37.813229, 27.394531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375854, 38.436962, 28.079182>,  <44.791012, 37.927162, 27.668760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375854, 38.436962, 28.079182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127045, 38.156754, 27.939260>,  <43.977760, 37.988628, 27.855309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127045, 38.156754, 27.939260>,  <44.375854, 38.436962, 28.079182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127045, 38.156754, 27.939260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390815, -0.109356, 0.913950,
		-0.678494, 0.705204, -0.205753,
		-0.622020, -0.700521, -0.349802,
		43.940437, 37.946598, 27.834320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718052, 38.719151, 28.263235>,  <44.375854, 38.436962, 28.079182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718052, 38.719151, 28.263235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699303, 38.327141, 28.185928>,  <43.688053, 38.091934, 28.139544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699303, 38.327141, 28.185928>,  <43.718052, 38.719151, 28.263235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699303, 38.327141, 28.185928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424037, -0.155661, 0.892167,
		-0.904431, 0.123770, -0.408271,
		-0.046872, -0.980026, -0.193268,
		43.685242, 38.033134, 28.127949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132675, 38.662289, 28.512379>,  <43.718052, 38.719151, 28.263235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132675, 38.662289, 28.512379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299053, 38.298630, 28.504002>,  <43.398880, 38.080433, 28.498976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299053, 38.298630, 28.504002>,  <43.132675, 38.662289, 28.512379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299053, 38.298630, 28.504002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466621, -0.233136, 0.853178,
		-0.780548, -0.345103, -0.521199,
		0.415945, -0.909149, -0.020942,
		43.423836, 38.025887, 28.497719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596085, 38.269279, 28.808546>,  <43.132675, 38.662289, 28.512379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596085, 38.269279, 28.808546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928112, 38.047462, 28.832083>,  <43.127331, 37.914371, 28.846205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928112, 38.047462, 28.832083>,  <42.596085, 38.269279, 28.808546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928112, 38.047462, 28.832083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311058, -0.372845, 0.874202,
		-0.462845, -0.743953, -0.481984,
		0.830070, -0.554545, 0.058843,
		43.177132, 37.881100, 28.849735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366474, 37.565437, 28.931143>,  <42.596085, 38.269279, 28.808546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366474, 37.565437, 28.931143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743431, 37.597530, 29.061045>,  <42.969604, 37.616787, 29.138987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.743431, 37.597530, 29.061045>,  <42.366474, 37.565437, 28.931143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743431, 37.597530, 29.061045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262071, -0.426284, 0.865795,
		0.207901, -0.901025, -0.380699,
		0.942389, 0.080229, 0.324757,
		43.026146, 37.621597, 29.158472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484756, 36.925320, 29.321087>,  <42.366474, 37.565437, 28.931143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484756, 36.925320, 29.321087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807121, 37.137665, 29.425920>,  <43.000542, 37.265072, 29.488821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807121, 37.137665, 29.425920>,  <42.484756, 36.925320, 29.321087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807121, 37.137665, 29.425920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066951, -0.358121, 0.931271,
		0.588234, -0.768072, -0.253074,
		0.805914, 0.530862, 0.262082,
		43.048897, 37.296925, 29.504545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764130, 36.477509, 29.768494>,  <42.484756, 36.925320, 29.321087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764130, 36.477509, 29.768494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925217, 36.832352, 29.858696>,  <43.021870, 37.045258, 29.912817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925217, 36.832352, 29.858696>,  <42.764130, 36.477509, 29.768494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925217, 36.832352, 29.858696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055128, -0.269428, 0.961441,
		0.913662, -0.374760, -0.157409,
		0.402720, 0.887110, 0.225506,
		43.046032, 37.098484, 29.926348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392597, 36.337536, 30.101349>,  <42.764130, 36.477509, 29.768494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392597, 36.337536, 30.101349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260639, 36.700943, 30.203920>,  <43.181465, 36.918987, 30.265463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.260639, 36.700943, 30.203920>,  <43.392597, 36.337536, 30.101349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260639, 36.700943, 30.203920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139261, -0.221827, 0.965090,
		0.933689, 0.354090, -0.053342,
		-0.329896, 0.908522, 0.256428,
		43.161671, 36.973499, 30.280849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964279, 36.578812, 30.467773>,  <43.392597, 36.337536, 30.101349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964279, 36.578812, 30.467773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.657043, 36.797188, 30.601631>,  <43.472702, 36.928215, 30.681946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.657043, 36.797188, 30.601631>,  <43.964279, 36.578812, 30.467773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657043, 36.797188, 30.601631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286459, -0.174443, 0.942078,
		0.572699, 0.819459, -0.022403,
		-0.768086, 0.545945, 0.334645,
		43.426617, 36.960972, 30.702024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213120, 36.928249, 31.072321>,  <43.964279, 36.578812, 30.467773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213120, 36.928249, 31.072321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816113, 36.938335, 31.120119>,  <43.577908, 36.944389, 31.148798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816113, 36.938335, 31.120119>,  <44.213120, 36.928249, 31.072321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816113, 36.938335, 31.120119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116398, -0.100882, 0.988066,
		0.036974, 0.994579, 0.097191,
		-0.992514, 0.025220, 0.119497,
		43.518360, 36.945900, 31.155968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096104, 37.203960, 31.673052>,  <44.213120, 36.928249, 31.072321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096104, 37.203960, 31.673052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.728832, 37.048908, 31.640347>,  <43.508469, 36.955875, 31.620724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.728832, 37.048908, 31.640347>,  <44.096104, 37.203960, 31.673052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728832, 37.048908, 31.640347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000728, -0.204735, 0.978817,
		-0.396158, 0.898792, 0.187702,
		-0.918182, -0.387629, -0.081761,
		43.453377, 36.932621, 31.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644772, 37.446159, 32.223454>,  <44.096104, 37.203960, 31.673052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644772, 37.446159, 32.223454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439198, 37.123859, 32.105717>,  <43.315853, 36.930477, 32.035076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439198, 37.123859, 32.105717>,  <43.644772, 37.446159, 32.223454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439198, 37.123859, 32.105717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307136, -0.147537, 0.940160,
		-0.800961, 0.573583, -0.171651,
		-0.513934, -0.805752, -0.294340,
		43.285019, 36.882133, 32.017414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028694, 37.518375, 32.581272>,  <43.644772, 37.446159, 32.223454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028694, 37.518375, 32.581272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040524, 37.131207, 32.481472>,  <43.047623, 36.898907, 32.421593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040524, 37.131207, 32.481472>,  <43.028694, 37.518375, 32.581272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040524, 37.131207, 32.481472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467181, -0.234052, 0.852621,
		-0.883667, 0.091344, -0.459118,
		0.029575, -0.967924, -0.249498,
		43.049397, 36.840828, 32.406624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321571, 37.118713, 32.719490>,  <43.028694, 37.518375, 32.581272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321571, 37.118713, 32.719490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606792, 36.838284, 32.722374>,  <42.777924, 36.670025, 32.724106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606792, 36.838284, 32.722374>,  <42.321571, 37.118713, 32.719490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606792, 36.838284, 32.722374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507007, -0.508512, 0.695960,
		-0.484247, -0.499917, -0.718045,
		0.713056, -0.701070, 0.007216,
		42.820709, 36.627960, 32.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023701, 36.434589, 32.632401>,  <42.321571, 37.118713, 32.719490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023701, 36.434589, 32.632401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374599, 36.387711, 32.818607>,  <42.585140, 36.359585, 32.930332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.374599, 36.387711, 32.818607>,  <42.023701, 36.434589, 32.632401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374599, 36.387711, 32.818607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450001, -0.538427, 0.712457,
		0.167147, -0.834482, -0.525072,
		0.877246, -0.117198, 0.465515,
		42.637772, 36.352551, 32.958263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016911, 35.823402, 32.975380>,  <42.023701, 36.434589, 32.632401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016911, 35.823402, 32.975380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297215, 36.021530, 33.180748>,  <42.465397, 36.140408, 33.303967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297215, 36.021530, 33.180748>,  <42.016911, 35.823402, 32.975380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297215, 36.021530, 33.180748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244601, -0.509235, 0.825136,
		0.670152, -0.703806, -0.235698,
		0.700761, 0.495315, 0.513417,
		42.507442, 36.170124, 33.334774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215042, 35.267136, 33.305611>,  <42.016911, 35.823402, 32.975380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215042, 35.267136, 33.305611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369743, 35.573368, 33.511253>,  <42.462563, 35.757107, 33.634640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369743, 35.573368, 33.511253>,  <42.215042, 35.267136, 33.305611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369743, 35.573368, 33.511253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167662, -0.489827, 0.855546,
		0.906814, -0.417083, -0.061084,
		0.386754, 0.765580, 0.514110,
		42.485771, 35.803043, 33.665485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496559, 34.933662, 33.855579>,  <42.215042, 35.267136, 33.305611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496559, 34.933662, 33.855579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448700, 35.306896, 33.991249>,  <42.419983, 35.530838, 34.072651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448700, 35.306896, 33.991249>,  <42.496559, 34.933662, 33.855579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448700, 35.306896, 33.991249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277247, -0.359441, 0.891031,
		0.953320, 0.012576, 0.301702,
		-0.119650, 0.933083, 0.339175,
		42.412804, 35.586823, 34.093002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826679, 34.967785, 34.411903>,  <42.496559, 34.933662, 33.855579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826679, 34.967785, 34.411903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576920, 35.277622, 34.452168>,  <42.427063, 35.463524, 34.476326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576920, 35.277622, 34.452168>,  <42.826679, 34.967785, 34.411903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576920, 35.277622, 34.452168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300837, -0.357403, 0.884172,
		0.720846, 0.521798, 0.456188,
		-0.624402, 0.774590, 0.100656,
		42.389599, 35.509998, 34.482365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159561, 35.400761, 34.965969>,  <42.826679, 34.967785, 34.411903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159561, 35.400761, 34.965969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769390, 35.483147, 34.934669>,  <42.535290, 35.532578, 34.915890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769390, 35.483147, 34.934669>,  <43.159561, 35.400761, 34.965969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769390, 35.483147, 34.934669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157478, -0.403314, 0.901409,
		0.154102, 0.891580, 0.425838,
		-0.975425, 0.205969, -0.078253,
		42.476761, 35.544937, 34.911194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872932, 35.261646, 34.942730>,  <43.159561, 35.400761, 34.965969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872932, 35.261646, 34.942730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132381, 35.362354, 35.230034>,  <44.288052, 35.422779, 35.402416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132381, 35.362354, 35.230034>,  <43.872932, 35.261646, 34.942730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132381, 35.362354, 35.230034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645049, 0.682736, 0.343194,
		-0.403979, -0.685919, 0.605240,
		0.648623, 0.251766, 0.718263,
		44.326969, 35.437885, 35.445511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106739, 34.942574, 34.322166>,  <43.872932, 35.261646, 34.942730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106739, 34.942574, 34.322166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459446, 34.808891, 34.189018>,  <44.671070, 34.728683, 34.109131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.459446, 34.808891, 34.189018>,  <44.106739, 34.942574, 34.322166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459446, 34.808891, 34.189018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023395, 0.673836, -0.738510,
		0.471112, 0.658979, 0.586345,
		0.881763, -0.334203, -0.332869,
		44.723976, 34.708630, 34.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364407, 35.548672, 34.006802>,  <44.106739, 34.942574, 34.322166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364407, 35.548672, 34.006802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.593449, 35.252209, 33.866631>,  <44.730873, 35.074329, 33.782528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.593449, 35.252209, 33.866631>,  <44.364407, 35.548672, 34.006802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593449, 35.252209, 33.866631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201620, 0.541621, -0.816085,
		0.794650, 0.396644, 0.459570,
		0.572608, -0.741161, -0.350428,
		44.765232, 35.029861, 33.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999809, 35.891525, 33.651489>,  <44.364407, 35.548672, 34.006802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999809, 35.891525, 33.651489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970131, 35.522606, 33.499771>,  <44.952324, 35.301254, 33.408741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970131, 35.522606, 33.499771>,  <44.999809, 35.891525, 33.651489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970131, 35.522606, 33.499771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109983, 0.370458, -0.922315,
		0.991161, -0.110144, 0.073952,
		-0.074191, -0.922296, -0.379298,
		44.947872, 35.245918, 33.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583439, 35.855793, 33.204304>,  <44.999809, 35.891525, 33.651489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583439, 35.855793, 33.204304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333614, 35.565220, 33.089603>,  <45.183720, 35.390877, 33.020782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333614, 35.565220, 33.089603>,  <45.583439, 35.855793, 33.204304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333614, 35.565220, 33.089603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199961, 0.206181, -0.957865,
		0.754946, -0.655580, 0.016486,
		-0.624558, -0.726432, -0.286746,
		45.146248, 35.347290, 33.003578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879128, 35.570374, 32.574997>,  <45.583439, 35.855793, 33.204304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879128, 35.570374, 32.574997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498131, 35.449577, 32.559200>,  <45.269531, 35.377098, 32.549725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498131, 35.449577, 32.559200>,  <45.879128, 35.570374, 32.574997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498131, 35.449577, 32.559200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001584, 0.134566, -0.990903,
		0.304561, -0.943764, -0.128652,
		-0.952491, -0.301995, -0.039488,
		45.212383, 35.358978, 32.547356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929844, 35.112240, 32.056145>,  <45.879128, 35.570374, 32.574997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929844, 35.112240, 32.056145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534924, 35.169022, 32.084644>,  <45.297970, 35.203091, 32.101746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534924, 35.169022, 32.084644>,  <45.929844, 35.112240, 32.056145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534924, 35.169022, 32.084644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085582, -0.097559, -0.991543,
		-0.133812, -0.985052, 0.108471,
		-0.987304, 0.141963, 0.071248,
		45.238731, 35.211609, 32.106018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596909, 34.587971, 31.727106>,  <45.929844, 35.112240, 32.056145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596909, 34.587971, 31.727106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.369911, 34.917286, 31.722128>,  <45.233715, 35.114876, 31.719141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.369911, 34.917286, 31.722128>,  <45.596909, 34.587971, 31.727106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369911, 34.917286, 31.722128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105518, 0.057727, -0.992741,
		-0.816591, -0.564684, -0.119631,
		-0.567491, 0.823286, -0.012445,
		45.199665, 35.164272, 31.718395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.214958, 34.513248, 31.109625>,  <45.596909, 34.587971, 31.727106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.214958, 34.513248, 31.109625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.159588, 34.900909, 31.191191>,  <45.126366, 35.133507, 31.240131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.159588, 34.900909, 31.191191>,  <45.214958, 34.513248, 31.109625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159588, 34.900909, 31.191191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120540, 0.187880, -0.974767,
		-0.983009, -0.159517, 0.090814,
		-0.138430, 0.969152, 0.203916,
		45.118057, 35.191654, 31.252365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780087, 34.704853, 30.610107>,  <45.214958, 34.513248, 31.109625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780087, 34.704853, 30.610107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920097, 35.052212, 30.750603>,  <45.004105, 35.260628, 30.834900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920097, 35.052212, 30.750603>,  <44.780087, 34.704853, 30.610107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920097, 35.052212, 30.750603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101243, 0.407836, -0.907425,
		-0.931251, 0.282065, 0.230673,
		0.350030, 0.868395, 0.351240,
		45.025105, 35.312729, 30.855974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327328, 35.184502, 30.415997>,  <44.780087, 34.704853, 30.610107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327328, 35.184502, 30.415997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.673100, 35.378475, 30.469053>,  <44.880562, 35.494862, 30.500887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.673100, 35.378475, 30.469053>,  <44.327328, 35.184502, 30.415997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673100, 35.378475, 30.469053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096852, 0.419519, -0.902565,
		-0.493332, 0.767360, 0.409612,
		0.864432, 0.484936, 0.132642,
		44.932430, 35.523956, 30.508846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136265, 35.896317, 30.099428>,  <44.327328, 35.184502, 30.415997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136265, 35.896317, 30.099428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531914, 35.849091, 30.134525>,  <44.769302, 35.820755, 30.155584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531914, 35.849091, 30.134525>,  <44.136265, 35.896317, 30.099428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531914, 35.849091, 30.134525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126256, 0.375339, -0.918248,
		0.075479, 0.919338, 0.386162,
		0.989122, -0.118064, 0.087742,
		44.828651, 35.813671, 30.160849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404076, 36.460670, 29.801720>,  <44.136265, 35.896317, 30.099428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404076, 36.460670, 29.801720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724598, 36.221676, 29.813877>,  <44.916912, 36.078278, 29.821171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724598, 36.221676, 29.813877>,  <44.404076, 36.460670, 29.801720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724598, 36.221676, 29.813877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384063, 0.474795, -0.791874,
		0.458704, 0.646204, 0.609927,
		0.801303, -0.597486, 0.030393,
		44.964989, 36.042431, 29.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911938, 36.857544, 29.668430>,  <44.404076, 36.460670, 29.801720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911938, 36.857544, 29.668430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045391, 36.486885, 29.599129>,  <45.125462, 36.264492, 29.557549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045391, 36.486885, 29.599129>,  <44.911938, 36.857544, 29.668430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045391, 36.486885, 29.599129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377005, 0.299602, -0.876416,
		0.864034, 0.227085, 0.449308,
		0.333634, -0.926645, -0.173255,
		45.145481, 36.208893, 29.547152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674824, 36.858116, 29.589458>,  <44.911938, 36.857544, 29.668430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674824, 36.858116, 29.589458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528015, 36.535767, 29.403614>,  <45.439930, 36.342358, 29.292109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.528015, 36.535767, 29.403614>,  <45.674824, 36.858116, 29.589458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528015, 36.535767, 29.403614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605361, 0.172308, -0.777077,
		0.706283, -0.566457, 0.424607,
		-0.367017, -0.805876, -0.464609,
		45.417912, 36.294003, 29.264231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243984, 36.556557, 29.252106>,  <45.674824, 36.858116, 29.589458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243984, 36.556557, 29.252106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921795, 36.417709, 29.059973>,  <45.728481, 36.334400, 28.944693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921795, 36.417709, 29.059973>,  <46.243984, 36.556557, 29.252106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921795, 36.417709, 29.059973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473615, 0.110160, -0.873815,
		0.356233, -0.931328, 0.075671,
		-0.805473, -0.347121, -0.480334,
		45.680153, 36.313572, 28.915873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481777, 36.050640, 28.815903>,  <46.243984, 36.556557, 29.252106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481777, 36.050640, 28.815903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.124863, 36.140224, 28.659103>,  <45.910713, 36.193974, 28.565023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.124863, 36.140224, 28.659103>,  <46.481777, 36.050640, 28.815903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124863, 36.140224, 28.659103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417551, 0.079210, -0.905195,
		-0.171679, -0.971374, -0.164193,
		-0.892288, 0.223962, -0.391999,
		45.857178, 36.207413, 28.541504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459145, 35.802887, 28.130106>,  <46.481777, 36.050640, 28.815903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459145, 35.802887, 28.130106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155510, 36.061874, 28.103075>,  <45.973328, 36.217266, 28.086857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155510, 36.061874, 28.103075>,  <46.459145, 35.802887, 28.130106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155510, 36.061874, 28.103075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197070, 0.129619, -0.971783,
		-0.620439, -0.750989, -0.225989,
		-0.759090, 0.647468, -0.067577,
		45.927784, 36.256115, 28.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114166, 35.668602, 27.541571>,  <46.459145, 35.802887, 28.130106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114166, 35.668602, 27.541571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.990639, 36.040665, 27.621000>,  <45.916523, 36.263905, 27.668657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.990639, 36.040665, 27.621000>,  <46.114166, 35.668602, 27.541571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990639, 36.040665, 27.621000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390618, 0.314397, -0.865201,
		-0.867206, -0.189627, -0.460430,
		-0.308823, 0.930160, 0.198575,
		45.897991, 36.319714, 27.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839012, 35.978230, 26.856678>,  <46.114166, 35.668602, 27.541571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839012, 35.978230, 26.856678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951965, 36.284904, 27.087311>,  <46.019737, 36.468910, 27.225691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951965, 36.284904, 27.087311>,  <45.839012, 35.978230, 26.856678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951965, 36.284904, 27.087311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366669, 0.469141, -0.803405,
		-0.886460, 0.438285, -0.148643,
		0.282386, 0.766690, 0.576581,
		46.036682, 36.514912, 27.260284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592278, 36.632786, 26.529665>,  <45.839012, 35.978230, 26.856678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592278, 36.632786, 26.529665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885052, 36.751564, 26.774971>,  <46.060715, 36.822830, 26.922153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885052, 36.751564, 26.774971>,  <45.592278, 36.632786, 26.529665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885052, 36.751564, 26.774971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322663, 0.641674, -0.695804,
		-0.600132, 0.707162, 0.373850,
		0.731936, 0.296946, 0.613264,
		46.104633, 36.840649, 26.958950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.013695, 35.003548, 39.329224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734631, 35.227551, 39.507961>,  <40.567192, 35.361950, 39.615204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734631, 35.227551, 39.507961>,  <41.013695, 35.003548, 39.329224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734631, 35.227551, 39.507961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508400, 0.052469, -0.859521,
		-0.504780, -0.826828, 0.248100,
		-0.697658, 0.560003, 0.446844,
		40.525333, 35.395550, 39.642014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351063, 34.676472, 39.136745>,  <41.013695, 35.003548, 39.329224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351063, 34.676472, 39.136745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289394, 35.054340, 39.252556>,  <40.252392, 35.281063, 39.322041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289394, 35.054340, 39.252556>,  <40.351063, 34.676472, 39.136745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289394, 35.054340, 39.252556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627505, 0.132725, -0.767217,
		-0.763197, -0.299960, 0.572324,
		-0.154173, 0.944673, 0.289521,
		40.243141, 35.337742, 39.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625622, 34.760204, 38.942688>,  <40.351063, 34.676472, 39.136745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625622, 34.760204, 38.942688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 35.136959, 38.998100>,  <39.821480, 35.363014, 39.031345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 35.136959, 38.998100>,  <39.625622, 34.760204, 38.942688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748032, 35.136959, 38.998100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662952, 0.315267, -0.679045,
		-0.683259, 0.115969, 0.720908,
		0.306027, 0.941891, 0.138527,
		39.839840, 35.419525, 39.039658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010754, 35.228867, 39.037251>,  <39.625622, 34.760204, 38.942688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010754, 35.228867, 39.037251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311707, 35.457645, 38.906525>,  <39.492279, 35.594913, 38.828091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311707, 35.457645, 38.906525>,  <39.010754, 35.228867, 39.037251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311707, 35.457645, 38.906525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618271, 0.441935, -0.649950,
		-0.227305, 0.691066, 0.686120,
		0.752379, 0.571945, -0.326812,
		39.537418, 35.629230, 38.808479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659821, 35.840687, 38.852619>,  <39.010754, 35.228867, 39.037251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659821, 35.840687, 38.852619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018864, 35.866760, 38.678242>,  <39.234291, 35.882404, 38.573616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018864, 35.866760, 38.678242>,  <38.659821, 35.840687, 38.852619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018864, 35.866760, 38.678242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424305, 0.395720, -0.814476,
		0.119426, 0.916055, 0.382858,
		0.897609, 0.065180, -0.435946,
		39.288147, 35.886314, 38.547459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706242, 36.435261, 38.570881>,  <38.659821, 35.840687, 38.852619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706242, 36.435261, 38.570881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986652, 36.245304, 38.358074>,  <39.154900, 36.131332, 38.230389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986652, 36.245304, 38.358074>,  <38.706242, 36.435261, 38.570881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986652, 36.245304, 38.358074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345763, 0.426138, -0.835975,
		0.623709, 0.769991, 0.134534,
		0.701024, -0.474889, -0.532021,
		39.196960, 36.102837, 38.198467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933929, 36.886707, 38.064831>,  <38.706242, 36.435261, 38.570881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933929, 36.886707, 38.064831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060173, 36.532455, 37.928570>,  <39.135921, 36.319904, 37.846813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060173, 36.532455, 37.928570>,  <38.933929, 36.886707, 38.064831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060173, 36.532455, 37.928570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374782, 0.213465, -0.902204,
		0.871738, 0.412416, -0.264547,
		0.315612, -0.885633, -0.340652,
		39.154858, 36.266766, 37.826374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664471, 36.929005, 37.504391>,  <38.933929, 36.886707, 38.064831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664471, 36.929005, 37.504391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855789, 36.582321, 37.447750>,  <38.970581, 36.374313, 37.413765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855789, 36.582321, 37.447750>,  <38.664471, 36.929005, 37.504391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855789, 36.582321, 37.447750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483957, -0.125582, -0.866034,
		0.732815, 0.482751, -0.479514,
		0.478297, -0.866707, -0.141603,
		38.999279, 36.322308, 37.405270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057205, 36.921921, 36.866524>,  <38.664471, 36.929005, 37.504391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057205, 36.921921, 36.866524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933254, 36.556602, 36.972252>,  <38.858883, 36.337410, 37.035686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933254, 36.556602, 36.972252>,  <39.057205, 36.921921, 36.866524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933254, 36.556602, 36.972252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496052, -0.081867, -0.864425,
		0.811116, -0.398980, -0.427674,
		-0.309876, -0.913298, 0.264319,
		38.840290, 36.282612, 37.051548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160534, 36.593521, 36.307358>,  <39.057205, 36.921921, 36.866524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160534, 36.593521, 36.307358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902287, 36.365879, 36.511040>,  <38.747337, 36.229294, 36.633251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902287, 36.365879, 36.511040>,  <39.160534, 36.593521, 36.307358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902287, 36.365879, 36.511040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582125, -0.064816, -0.810511,
		0.494269, -0.819708, -0.289443,
		-0.645622, -0.569103, 0.509209,
		38.708599, 36.195148, 36.663803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937061, 36.035782, 35.839001>,  <39.160534, 36.593521, 36.307358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937061, 36.035782, 35.839001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636139, 36.033203, 36.102512>,  <38.455585, 36.031654, 36.260620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636139, 36.033203, 36.102512>,  <38.937061, 36.035782, 35.839001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636139, 36.033203, 36.102512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655506, 0.107418, -0.747512,
		-0.065947, -0.994193, -0.085037,
		-0.752305, -0.006446, 0.658783,
		38.410446, 36.031269, 36.300148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455811, 35.399509, 35.754181>,  <38.937061, 36.035782, 35.839001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455811, 35.399509, 35.754181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226288, 35.638916, 35.977798>,  <38.088573, 35.782558, 36.111969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226288, 35.638916, 35.977798>,  <38.455811, 35.399509, 35.754181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226288, 35.638916, 35.977798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703414, -0.010535, -0.710702,
		-0.419475, -0.801043, 0.427048,
		-0.573802, 0.598513, 0.559046,
		38.054146, 35.818470, 36.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242447, 35.240326, 35.609745>,  <38.455811, 35.399509, 35.754181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242447, 35.240326, 35.609745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541527, 35.221432, 35.874687>,  <39.720974, 35.210094, 36.033653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541527, 35.221432, 35.874687>,  <39.242447, 35.240326, 35.609745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541527, 35.221432, 35.874687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319659, 0.848684, 0.421372,
		-0.582030, -0.526787, 0.619464,
		0.747702, -0.047234, 0.662352,
		39.765839, 35.207260, 36.073391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168159, 34.647999, 36.014591>,  <39.242447, 35.240326, 35.609745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168159, 34.647999, 36.014591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161846, 34.279263, 35.859688>,  <39.158058, 34.058022, 35.766747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161846, 34.279263, 35.859688>,  <39.168159, 34.647999, 36.014591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161846, 34.279263, 35.859688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432914, -0.342820, 0.833702,
		-0.901297, 0.180806, -0.393666,
		-0.015782, -0.921837, -0.387256,
		39.157112, 34.002712, 35.743511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496727, 34.328156, 36.090511>,  <39.168159, 34.647999, 36.014591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496727, 34.328156, 36.090511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779285, 34.045422, 36.105408>,  <38.948822, 33.875782, 36.114346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779285, 34.045422, 36.105408>,  <38.496727, 34.328156, 36.090511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779285, 34.045422, 36.105408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395512, -0.350533, 0.848938,
		-0.587007, -0.614416, -0.527178,
		0.706395, -0.706838, 0.037244,
		38.991203, 33.833370, 36.116581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089378, 33.707680, 36.208359>,  <38.496727, 34.328156, 36.090511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089378, 33.707680, 36.208359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463688, 33.601749, 36.301476>,  <38.688274, 33.538193, 36.357346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463688, 33.601749, 36.301476>,  <38.089378, 33.707680, 36.208359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463688, 33.601749, 36.301476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330395, -0.428040, 0.841202,
		-0.123127, -0.864089, -0.488046,
		0.935777, -0.264823, 0.232788,
		38.744423, 33.522301, 36.371311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029961, 32.954483, 36.528168>,  <38.089378, 33.707680, 36.208359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029961, 32.954483, 36.528168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384537, 33.099789, 36.642891>,  <38.597282, 33.186974, 36.711727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384537, 33.099789, 36.642891>,  <38.029961, 32.954483, 36.528168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384537, 33.099789, 36.642891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102283, -0.450603, 0.886846,
		0.451400, -0.815471, -0.362277,
		0.886440, 0.363268, 0.286811,
		38.650467, 33.208771, 36.728935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294930, 32.358440, 36.857853>,  <38.029961, 32.954483, 36.528168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294930, 32.358440, 36.857853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463421, 32.699707, 36.980927>,  <38.564514, 32.904469, 37.054771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463421, 32.699707, 36.980927>,  <38.294930, 32.358440, 36.857853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463421, 32.699707, 36.980927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050093, -0.360616, 0.931368,
		0.905570, -0.376907, -0.194640,
		0.421229, 0.853169, 0.307683,
		38.589790, 32.955658, 37.073231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698250, 32.148106, 37.291866>,  <38.294930, 32.358440, 36.857853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698250, 32.148106, 37.291866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681381, 32.531422, 37.404942>,  <38.671261, 32.761410, 37.472786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681381, 32.531422, 37.404942>,  <38.698250, 32.148106, 37.291866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681381, 32.531422, 37.404942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159596, -0.272842, 0.948729,
		0.986281, 0.085122, -0.141433,
		-0.042169, 0.958286, 0.282684,
		38.668732, 32.818909, 37.489746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154968, 32.168991, 37.959938>,  <38.698250, 32.148106, 37.291866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154968, 32.168991, 37.959938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917202, 32.489574, 37.933624>,  <38.774544, 32.681927, 37.917835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917202, 32.489574, 37.933624>,  <39.154968, 32.168991, 37.959938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917202, 32.489574, 37.933624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124851, -0.011159, 0.992113,
		0.794406, 0.597942, 0.106696,
		-0.594417, 0.801461, -0.065789,
		38.738876, 32.730011, 37.913887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456028, 32.585052, 38.409321>,  <39.154968, 32.168991, 37.959938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456028, 32.585052, 38.409321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081505, 32.710102, 38.345329>,  <38.856792, 32.785133, 38.306934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081505, 32.710102, 38.345329>,  <39.456028, 32.585052, 38.409321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081505, 32.710102, 38.345329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122987, 0.134798, 0.983211,
		0.328945, 0.940262, -0.087763,
		-0.936306, 0.312629, -0.159981,
		38.800613, 32.803890, 38.297337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287769, 33.274658, 38.632217>,  <39.456028, 32.585052, 38.409321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287769, 33.274658, 38.632217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931904, 33.092655, 38.647518>,  <38.718384, 32.983452, 38.656700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931904, 33.092655, 38.647518>,  <39.287769, 33.274658, 38.632217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931904, 33.092655, 38.647518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009487, 0.102180, 0.994721,
		-0.456515, 0.884605, -0.095222,
		-0.889665, -0.455008, 0.038255,
		38.665005, 32.956154, 38.658993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029823, 33.698997, 39.042286>,  <39.287769, 33.274658, 38.632217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029823, 33.698997, 39.042286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783051, 33.384956, 39.020363>,  <38.634987, 33.196533, 39.007210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783051, 33.384956, 39.020363>,  <39.029823, 33.698997, 39.042286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783051, 33.384956, 39.020363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278480, 0.152638, 0.948236,
		-0.736098, 0.600262, -0.312803,
		-0.616935, -0.785104, -0.054804,
		38.597969, 33.149426, 39.003922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387108, 33.885685, 39.322491>,  <39.029823, 33.698997, 39.042286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387108, 33.885685, 39.322491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372608, 33.486462, 39.342781>,  <38.363907, 33.246929, 39.354958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372608, 33.486462, 39.342781>,  <38.387108, 33.885685, 39.322491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372608, 33.486462, 39.342781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189706, 0.056712, 0.980202,
		-0.981171, 0.025909, -0.191393,
		-0.036250, -0.998054, 0.050729,
		38.361732, 33.187046, 39.357998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690144, 33.675770, 39.621605>,  <38.387108, 33.885685, 39.322491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690144, 33.675770, 39.621605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940220, 33.369564, 39.682430>,  <38.090263, 33.185841, 39.718925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940220, 33.369564, 39.682430>,  <37.690144, 33.675770, 39.621605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940220, 33.369564, 39.682430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151077, 0.072457, 0.985863,
		-0.765713, -0.639323, -0.070353,
		0.625187, -0.765517, 0.152068,
		38.127777, 33.139908, 39.728050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456390, 33.290703, 40.228809>,  <37.690144, 33.675770, 39.621605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456390, 33.290703, 40.228809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824795, 33.135250, 40.218193>,  <38.045837, 33.041977, 40.211823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824795, 33.135250, 40.218193>,  <37.456390, 33.290703, 40.228809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824795, 33.135250, 40.218193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026061, -0.129459, 0.991242,
		-0.388668, -0.912252, -0.129361,
		0.921009, -0.388636, -0.026542,
		38.101097, 33.018658, 40.210232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477154, 32.820415, 40.734699>,  <37.456390, 33.290703, 40.228809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477154, 32.820415, 40.734699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867535, 32.862686, 40.658440>,  <38.101765, 32.888050, 40.612686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867535, 32.862686, 40.658440>,  <37.477154, 32.820415, 40.734699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867535, 32.862686, 40.658440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205506, -0.154488, 0.966385,
		0.072674, -0.982326, -0.172490,
		0.975954, 0.105679, -0.190647,
		38.160320, 32.894390, 40.601246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822716, 32.251007, 41.055069>,  <37.477154, 32.820415, 40.734699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822716, 32.251007, 41.055069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077991, 32.557301, 41.023155>,  <38.231155, 32.741077, 41.004009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077991, 32.557301, 41.023155>,  <37.822716, 32.251007, 41.055069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077991, 32.557301, 41.023155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096237, 0.023470, 0.995082,
		0.763843, -0.642726, -0.058713,
		0.638187, 0.765736, -0.079782,
		38.269447, 32.787022, 40.999222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055828, 31.530462, 41.186169>,  <37.822716, 32.251007, 41.055069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055828, 31.530462, 41.186169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814350, 31.212666, 41.212513>,  <37.669464, 31.021988, 41.228321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814350, 31.212666, 41.212513>,  <38.055828, 31.530462, 41.186169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814350, 31.212666, 41.212513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358060, 0.196397, -0.912809,
		0.712284, -0.574639, -0.403040,
		-0.603692, -0.794492, 0.065865,
		37.633244, 30.974318, 41.232273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152103, 31.202564, 40.552372>,  <38.055828, 31.530462, 41.186169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152103, 31.202564, 40.552372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798592, 31.073650, 40.688053>,  <37.586483, 30.996304, 40.769463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798592, 31.073650, 40.688053>,  <38.152103, 31.202564, 40.552372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798592, 31.073650, 40.688053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413642, 0.199312, -0.888355,
		0.218705, -0.925419, -0.309463,
		-0.883781, -0.322294, 0.339202,
		37.533455, 30.976965, 40.789814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834301, 30.969019, 39.949295>,  <38.152103, 31.202564, 40.552372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834301, 30.969019, 39.949295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536579, 30.985804, 40.215904>,  <37.357948, 30.995874, 40.375870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536579, 30.985804, 40.215904>,  <37.834301, 30.969019, 39.949295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536579, 30.985804, 40.215904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609997, 0.363577, -0.704071,
		-0.271878, -0.930619, -0.245013,
		-0.744303, 0.041964, 0.666523,
		37.313290, 30.998392, 40.415859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255886, 30.644714, 39.665798>,  <37.834301, 30.969019, 39.949295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255886, 30.644714, 39.665798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072464, 30.892668, 39.920502>,  <36.962410, 31.041441, 40.073326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072464, 30.892668, 39.920502>,  <37.255886, 30.644714, 39.665798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072464, 30.892668, 39.920502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735438, 0.137516, -0.663491,
		-0.498854, -0.772548, 0.392828,
		-0.458559, 0.619886, 0.636762,
		36.934895, 31.078634, 40.111530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505615, 30.491302, 39.633587>,  <37.255886, 30.644714, 39.665798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505615, 30.491302, 39.633587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522942, 30.848368, 39.813046>,  <36.533337, 31.062607, 39.920719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522942, 30.848368, 39.813046>,  <36.505615, 30.491302, 39.633587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522942, 30.848368, 39.813046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841249, 0.274819, -0.465590,
		-0.538910, -0.357254, 0.762853,
		0.043313, 0.892661, 0.448643,
		36.535934, 31.116165, 39.947639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805653, 30.657633, 39.933849>,  <36.505615, 30.491302, 39.633587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805653, 30.657633, 39.933849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990891, 31.007048, 39.873882>,  <36.102036, 31.216696, 39.837902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990891, 31.007048, 39.873882>,  <35.805653, 30.657633, 39.933849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990891, 31.007048, 39.873882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831855, 0.370008, -0.413657,
		-0.305873, 0.316275, 0.898005,
		0.463098, 0.873536, -0.149919,
		36.129822, 31.269108, 39.828907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359589, 31.183657, 40.105442>,  <35.805653, 30.657633, 39.933849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359589, 31.183657, 40.105442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630211, 31.407152, 39.913570>,  <35.792583, 31.541250, 39.798447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630211, 31.407152, 39.913570>,  <35.359589, 31.183657, 40.105442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630211, 31.407152, 39.913570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718703, 0.359070, -0.595428,
		-0.160452, 0.747582, 0.644497,
		0.676551, 0.558740, -0.479676,
		35.833176, 31.574774, 39.769669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057423, 31.837133, 40.049030>,  <35.359589, 31.183657, 40.105442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057423, 31.837133, 40.049030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330791, 31.832872, 39.757053>,  <35.494812, 31.830315, 39.581867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330791, 31.832872, 39.757053>,  <35.057423, 31.837133, 40.049030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330791, 31.832872, 39.757053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655433, 0.431354, -0.619953,
		0.321471, 0.902120, 0.287813,
		0.683421, -0.010655, -0.729947,
		35.535816, 31.829676, 39.538071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104511, 32.642387, 39.674076>,  <35.057423, 31.837133, 40.049030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104511, 32.642387, 39.674076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193138, 32.332531, 39.437149>,  <35.246315, 32.146618, 39.294994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193138, 32.332531, 39.437149>,  <35.104511, 32.642387, 39.674076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193138, 32.332531, 39.437149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467418, 0.448719, -0.761690,
		0.855821, 0.445624, -0.262661,
		0.221566, -0.774642, -0.592315,
		35.259609, 32.100140, 39.259453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128426, 32.972706, 39.059475>,  <35.104511, 32.642387, 39.674076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128426, 32.972706, 39.059475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151829, 32.599079, 38.918564>,  <35.165871, 32.374905, 38.834019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151829, 32.599079, 38.918564>,  <35.128426, 32.972706, 39.059475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151829, 32.599079, 38.918564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432132, 0.294412, -0.852399,
		0.899911, 0.202102, -0.386414,
		0.058506, -0.934065, -0.352279,
		35.169380, 32.318859, 38.812881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629879, 33.018738, 38.575710>,  <35.128426, 32.972706, 39.059475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629879, 33.018738, 38.575710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362373, 32.725307, 38.527340>,  <35.201870, 32.549248, 38.498318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362373, 32.725307, 38.527340>,  <35.629879, 33.018738, 38.575710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362373, 32.725307, 38.527340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312574, 0.424989, -0.849518,
		0.674580, -0.530326, -0.513514,
		-0.668760, -0.733579, -0.120923,
		35.161747, 32.505234, 38.491062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636902, 32.752014, 37.926285>,  <35.629879, 33.018738, 38.575710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636902, 32.752014, 37.926285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268673, 32.673603, 38.061409>,  <35.047733, 32.626556, 38.142483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268673, 32.673603, 38.061409>,  <35.636902, 32.752014, 37.926285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268673, 32.673603, 38.061409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381104, 0.261597, -0.886751,
		0.085457, -0.945061, -0.315527,
		-0.920574, -0.196028, 0.337811,
		34.992500, 32.614796, 38.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.854961, 30.585865, 44.563560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466927, 30.527000, 44.640781>,  <38.234104, 30.491682, 44.687115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466927, 30.527000, 44.640781>,  <38.854961, 30.585865, 44.563560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466927, 30.527000, 44.640781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141999, -0.300984, -0.942998,
		0.196880, -0.942206, 0.271084,
		-0.970090, -0.147163, 0.193050,
		38.175900, 30.482851, 44.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640842, 29.902847, 44.259636>,  <38.854961, 30.585865, 44.563560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640842, 29.902847, 44.259636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294613, 30.100382, 44.292889>,  <38.086876, 30.218903, 44.312840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294613, 30.100382, 44.292889>,  <38.640842, 29.902847, 44.259636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294613, 30.100382, 44.292889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288606, -0.356256, -0.888700,
		-0.409263, -0.793222, 0.450890,
		-0.865569, 0.493842, 0.083126,
		38.034943, 30.248533, 44.317825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121819, 29.455122, 43.982292>,  <38.640842, 29.902847, 44.259636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121819, 29.455122, 43.982292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970760, 29.824949, 43.962040>,  <37.880127, 30.046844, 43.949886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970760, 29.824949, 43.962040>,  <38.121819, 29.455122, 43.982292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970760, 29.824949, 43.962040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314617, -0.179550, -0.932083,
		-0.870864, -0.336063, 0.358690,
		-0.377641, 0.924567, -0.050633,
		37.857468, 30.102320, 43.946850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689816, 29.380362, 43.391220>,  <38.121819, 29.455122, 43.982292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689816, 29.380362, 43.391220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684090, 29.775948, 43.450199>,  <37.680656, 30.013300, 43.485588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684090, 29.775948, 43.450199>,  <37.689816, 29.380362, 43.391220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684090, 29.775948, 43.450199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056460, 0.146429, -0.987608,
		-0.998302, -0.022460, 0.053741,
		-0.014312, 0.988966, 0.147449,
		37.679794, 30.072638, 43.494434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082062, 29.695381, 43.137268>,  <37.689816, 29.380362, 43.391220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082062, 29.695381, 43.137268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341919, 29.998215, 43.109585>,  <37.497833, 30.179914, 43.092976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.341919, 29.998215, 43.109585>,  <37.082062, 29.695381, 43.137268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341919, 29.998215, 43.109585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236109, 0.114394, -0.964970,
		-0.722645, 0.643227, 0.253069,
		0.649644, 0.757082, -0.069205,
		37.536812, 30.225340, 43.088821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779907, 30.146116, 42.710983>,  <37.082062, 29.695381, 43.137268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779907, 30.146116, 42.710983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166653, 30.247345, 42.697514>,  <37.398701, 30.308083, 42.689434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166653, 30.247345, 42.697514>,  <36.779907, 30.146116, 42.710983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166653, 30.247345, 42.697514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147623, 0.446582, -0.882481,
		-0.208295, 0.858207, 0.469142,
		0.966861, 0.253072, -0.033670,
		37.456711, 30.323267, 42.687412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839428, 30.756258, 42.566570>,  <36.779907, 30.146116, 42.710983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839428, 30.756258, 42.566570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190559, 30.594042, 42.464626>,  <37.401237, 30.496712, 42.403461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190559, 30.594042, 42.464626>,  <36.839428, 30.756258, 42.566570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190559, 30.594042, 42.464626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053615, 0.445555, -0.893648,
		0.475965, 0.798133, 0.369378,
		0.877828, -0.405541, -0.254860,
		37.453907, 30.472380, 42.388168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316620, 31.281601, 42.378265>,  <36.839428, 30.756258, 42.566570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316620, 31.281601, 42.378265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489861, 30.962196, 42.211029>,  <37.593807, 30.770554, 42.110687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489861, 30.962196, 42.211029>,  <37.316620, 31.281601, 42.378265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489861, 30.962196, 42.211029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107720, 0.414671, -0.903573,
		0.894884, 0.436377, 0.093580,
		0.433104, -0.798513, -0.418089,
		37.619793, 30.722643, 42.085602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683094, 31.598232, 41.822906>,  <37.316620, 31.281601, 42.378265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683094, 31.598232, 41.822906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691883, 31.204521, 41.752808>,  <37.697159, 30.968294, 41.710747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691883, 31.204521, 41.752808>,  <37.683094, 31.598232, 41.822906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691883, 31.204521, 41.752808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024435, 0.175770, -0.984128,
		0.999460, 0.017346, 0.027914,
		0.021977, -0.984278, -0.175251,
		37.698475, 30.909237, 41.700233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350876, 32.114059, 41.537575>,  <37.683094, 31.598232, 41.822906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350876, 32.114059, 41.537575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459919, 32.493420, 41.472797>,  <38.525345, 32.721035, 41.433933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459919, 32.493420, 41.472797>,  <38.350876, 32.114059, 41.537575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459919, 32.493420, 41.472797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099596, 0.139594, 0.985188,
		0.956956, -0.284701, -0.056402,
		0.272611, 0.948398, -0.161941,
		38.541702, 32.777939, 41.424213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017635, 32.091846, 41.779991>,  <38.350876, 32.114059, 41.537575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017635, 32.091846, 41.779991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850578, 32.455208, 41.772148>,  <38.750343, 32.673225, 41.767441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850578, 32.455208, 41.772148>,  <39.017635, 32.091846, 41.779991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850578, 32.455208, 41.772148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168144, 0.098477, 0.980831,
		0.892919, 0.406338, -0.193871,
		-0.417641, 0.908401, -0.019609,
		38.725285, 32.727730, 41.766266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551250, 32.475628, 42.043453>,  <39.017635, 32.091846, 41.779991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551250, 32.475628, 42.043453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229313, 32.710400, 42.078651>,  <39.036152, 32.851265, 42.099770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229313, 32.710400, 42.078651>,  <39.551250, 32.475628, 42.043453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229313, 32.710400, 42.078651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287677, 0.256126, 0.922844,
		0.519108, 0.768057, -0.374987,
		-0.804841, 0.586931, 0.087995,
		38.987862, 32.886478, 42.105049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761341, 33.128094, 42.266560>,  <39.551250, 32.475628, 42.043453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761341, 33.128094, 42.266560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377285, 33.101917, 42.375259>,  <39.146851, 33.086212, 42.440479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377285, 33.101917, 42.375259>,  <39.761341, 33.128094, 42.266560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377285, 33.101917, 42.375259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251444, 0.222457, 0.941960,
		-0.122100, 0.972743, -0.197134,
		-0.960139, -0.065446, 0.271752,
		39.089245, 33.082283, 42.456783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759121, 33.663589, 42.751579>,  <39.761341, 33.128094, 42.266560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759121, 33.663589, 42.751579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423088, 33.461613, 42.830864>,  <39.221470, 33.340427, 42.878437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423088, 33.461613, 42.830864>,  <39.759121, 33.663589, 42.751579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423088, 33.461613, 42.830864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175360, 0.092988, 0.980103,
		-0.513330, 0.858127, 0.010430,
		-0.840084, -0.504946, 0.198215,
		39.171062, 33.310127, 42.890327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363422, 34.113392, 43.185368>,  <39.759121, 33.663589, 42.751579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363422, 34.113392, 43.185368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215843, 33.749271, 43.260441>,  <39.127296, 33.530800, 43.305485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215843, 33.749271, 43.260441>,  <39.363422, 34.113392, 43.185368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215843, 33.749271, 43.260441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084019, 0.168436, 0.982125,
		-0.925645, 0.378121, 0.014339,
		-0.368947, -0.910304, 0.187681,
		39.105160, 33.476181, 43.316746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887646, 34.166180, 43.762524>,  <39.363422, 34.113392, 43.185368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887646, 34.166180, 43.762524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004803, 33.785023, 43.731007>,  <39.075096, 33.556328, 43.712097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004803, 33.785023, 43.731007>,  <38.887646, 34.166180, 43.762524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004803, 33.785023, 43.731007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160221, -0.032323, 0.986552,
		-0.942625, -0.301578, 0.143207,
		0.292894, -0.952894, -0.078788,
		39.092670, 33.499153, 43.707371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667492, 33.823143, 44.405373>,  <38.887646, 34.166180, 43.762524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667492, 33.823143, 44.405373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930977, 33.554466, 44.269764>,  <39.089066, 33.393261, 44.188400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930977, 33.554466, 44.269764>,  <38.667492, 33.823143, 44.405373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930977, 33.554466, 44.269764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368024, -0.105369, 0.923827,
		-0.656247, -0.733301, 0.177790,
		0.658710, -0.671689, -0.339020,
		39.128590, 33.352959, 44.168056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675537, 33.324574, 44.947742>,  <38.667492, 33.823143, 44.405373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675537, 33.324574, 44.947742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013893, 33.299686, 44.735855>,  <39.216908, 33.284756, 44.608723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013893, 33.299686, 44.735855>,  <38.675537, 33.324574, 44.947742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013893, 33.299686, 44.735855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525945, -0.067674, 0.847822,
		-0.088602, -0.995765, -0.024520,
		0.845891, -0.062223, -0.529714,
		39.267662, 33.281021, 44.576942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035141, 32.792145, 45.228039>,  <38.675537, 33.324574, 44.947742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035141, 32.792145, 45.228039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342415, 32.945049, 45.022602>,  <39.526779, 33.036793, 44.899342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342415, 32.945049, 45.022602>,  <39.035141, 32.792145, 45.228039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342415, 32.945049, 45.022602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610081, -0.193767, 0.768281,
		0.194166, -0.903511, -0.382058,
		0.768181, 0.382261, -0.513591,
		39.572868, 33.059727, 44.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509739, 32.392399, 45.463127>,  <39.035141, 32.792145, 45.228039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509739, 32.392399, 45.463127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703445, 32.716206, 45.330360>,  <39.819668, 32.910488, 45.250698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703445, 32.716206, 45.330360>,  <39.509739, 32.392399, 45.463127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703445, 32.716206, 45.330360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636150, -0.065329, 0.768795,
		0.600670, -0.583449, -0.546611,
		0.484262, 0.809518, -0.331920,
		39.848724, 32.959061, 45.230785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252140, 32.204254, 45.502308>,  <39.509739, 32.392399, 45.463127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252140, 32.204254, 45.502308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222515, 32.602959, 45.489792>,  <40.204742, 32.842182, 45.482281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.222515, 32.602959, 45.489792>,  <40.252140, 32.204254, 45.502308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222515, 32.602959, 45.489792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609026, 0.070050, 0.790051,
		0.789685, 0.039455, -0.612243,
		-0.074059, 0.996763, -0.031289,
		40.200298, 32.901989, 45.480404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906002, 32.425457, 45.443588>,  <40.252140, 32.204254, 45.502308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906002, 32.425457, 45.443588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694172, 32.736938, 45.578152>,  <40.567074, 32.923828, 45.658890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694172, 32.736938, 45.578152>,  <40.906002, 32.425457, 45.443588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694172, 32.736938, 45.578152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653696, 0.121903, 0.746875,
		0.540585, 0.615435, -0.573592,
		-0.529576, 0.778704, 0.336408,
		40.535297, 32.970551, 45.679073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279545, 32.938225, 45.446178>,  <40.906002, 32.425457, 45.443588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279545, 32.938225, 45.446178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.004040, 33.063393, 45.707771>,  <40.838737, 33.138493, 45.864727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.004040, 33.063393, 45.707771>,  <41.279545, 32.938225, 45.446178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004040, 33.063393, 45.707771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724927, 0.285753, 0.626759,
		0.009248, 0.905775, -0.423659,
		-0.688764, 0.312918, 0.653977,
		40.797409, 33.157269, 45.903965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.452366, 36.107559, 47.555592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502380, 35.714962, 47.497566>,  <36.532391, 35.479404, 47.462749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502380, 35.714962, 47.497566>,  <36.452366, 36.107559, 47.555592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502380, 35.714962, 47.497566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077440, 0.136112, -0.987662,
		0.989125, 0.134730, -0.058988,
		0.125039, -0.981489, -0.145066,
		36.539890, 35.420517, 47.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039631, 36.080688, 47.078018>,  <36.452366, 36.107559, 47.555592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039631, 36.080688, 47.078018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796112, 35.764019, 47.057510>,  <36.650002, 35.574017, 47.045204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796112, 35.764019, 47.057510>,  <37.039631, 36.080688, 47.078018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796112, 35.764019, 47.057510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206415, 0.220473, -0.953302,
		0.766005, -0.569782, -0.297635,
		-0.608794, -0.791670, -0.051271,
		36.613472, 35.526520, 47.042130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094761, 36.020248, 46.316380>,  <37.039631, 36.080688, 47.078018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094761, 36.020248, 46.316380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822388, 35.737431, 46.392712>,  <36.658962, 35.567738, 46.438511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822388, 35.737431, 46.392712>,  <37.094761, 36.020248, 46.316380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822388, 35.737431, 46.392712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292557, 0.023745, -0.955953,
		0.671373, -0.706767, -0.223021,
		-0.680932, -0.707047, 0.190828,
		36.618107, 35.525318, 46.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150814, 35.612926, 45.733768>,  <37.094761, 36.020248, 46.316380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150814, 35.612926, 45.733768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787197, 35.516804, 45.869946>,  <36.569027, 35.459129, 45.951653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.787197, 35.516804, 45.869946>,  <37.150814, 35.612926, 45.733768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787197, 35.516804, 45.869946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352455, 0.007533, -0.935798,
		0.222316, -0.970667, -0.091545,
		-0.909039, -0.240308, 0.340442,
		36.514484, 35.444714, 45.972076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902527, 35.035351, 45.359825>,  <37.150814, 35.612926, 45.733768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902527, 35.035351, 45.359825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571190, 35.195602, 45.516460>,  <36.372387, 35.291752, 45.610439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571190, 35.195602, 45.516460>,  <36.902527, 35.035351, 45.359825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571190, 35.195602, 45.516460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503482, -0.225872, -0.833959,
		-0.245665, -0.887960, 0.388812,
		-0.828345, 0.400635, 0.391583,
		36.322685, 35.315792, 45.633938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313480, 34.536163, 45.318890>,  <36.902527, 35.035351, 45.359825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313480, 34.536163, 45.318890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171303, 34.908680, 45.350777>,  <36.085995, 35.132191, 45.369907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171303, 34.908680, 45.350777>,  <36.313480, 34.536163, 45.318890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171303, 34.908680, 45.350777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498478, -0.116725, -0.859008,
		-0.790682, -0.345068, 0.505718,
		-0.355446, 0.931291, 0.079716,
		36.064671, 35.188068, 45.374691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597427, 34.442074, 45.170609>,  <36.313480, 34.536163, 45.318890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597427, 34.442074, 45.170609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693794, 34.826809, 45.118717>,  <35.751614, 35.057652, 45.087582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693794, 34.826809, 45.118717>,  <35.597427, 34.442074, 45.170609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693794, 34.826809, 45.118717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412148, -0.019626, -0.910906,
		-0.878689, 0.272919, 0.391691,
		0.240916, 0.961837, -0.129727,
		35.766068, 35.115360, 45.079800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935463, 34.670555, 44.916115>,  <35.597427, 34.442074, 45.170609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935463, 34.670555, 44.916115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202774, 34.958546, 44.841228>,  <35.363159, 35.131340, 44.796295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202774, 34.958546, 44.841228>,  <34.935463, 34.670555, 44.916115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202774, 34.958546, 44.841228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355475, 0.087978, -0.930536,
		-0.653489, 0.688404, 0.314725,
		0.668274, 0.719972, -0.187218,
		35.403255, 35.174538, 44.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579067, 35.191914, 44.553112>,  <34.935463, 34.670555, 44.916115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579067, 35.191914, 44.553112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965572, 35.237804, 44.460880>,  <35.197475, 35.265339, 44.405540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965572, 35.237804, 44.460880>,  <34.579067, 35.191914, 44.553112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965572, 35.237804, 44.460880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229286, -0.024536, -0.973050,
		-0.117295, 0.993094, 0.002597,
		0.966266, 0.114729, -0.230581,
		35.255451, 35.272224, 44.391705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569706, 35.575268, 43.969437>,  <34.579067, 35.191914, 44.553112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569706, 35.575268, 43.969437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943176, 35.432396, 43.979786>,  <35.167259, 35.346672, 43.985996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943176, 35.432396, 43.979786>,  <34.569706, 35.575268, 43.969437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943176, 35.432396, 43.979786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011154, -0.101221, -0.994801,
		0.357946, 0.928533, -0.098492,
		0.933675, -0.357184, 0.025875,
		35.223278, 35.325241, 43.987549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964897, 36.080154, 43.679451>,  <34.569706, 35.575268, 43.969437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964897, 36.080154, 43.679451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.156975, 35.730064, 43.656178>,  <35.272221, 35.520008, 43.642212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.156975, 35.730064, 43.656178>,  <34.964897, 36.080154, 43.679451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156975, 35.730064, 43.656178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002634, 0.067772, -0.997697,
		0.877156, 0.478940, 0.034850,
		0.480198, -0.875228, -0.058184,
		35.301033, 35.467495, 43.638721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409653, 36.123814, 43.249966>,  <34.964897, 36.080154, 43.679451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409653, 36.123814, 43.249966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413277, 35.725021, 43.219139>,  <35.415451, 35.485744, 43.200642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413277, 35.725021, 43.219139>,  <35.409653, 36.123814, 43.249966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413277, 35.725021, 43.219139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021084, 0.076862, -0.996819,
		0.999737, 0.010654, -0.020324,
		0.009058, -0.996985, -0.077067,
		35.415993, 35.425926, 43.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889866, 36.007030, 42.718273>,  <35.409653, 36.123814, 43.249966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889866, 36.007030, 42.718273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666027, 35.678665, 42.763798>,  <35.531723, 35.481647, 42.791111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.666027, 35.678665, 42.763798>,  <35.889866, 36.007030, 42.718273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666027, 35.678665, 42.763798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037979, -0.111777, -0.993007,
		0.827892, -0.560010, 0.031373,
		-0.559601, -0.820911, 0.113808,
		35.498146, 35.432392, 42.797939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232685, 35.508827, 42.278694>,  <35.889866, 36.007030, 42.718273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232685, 35.508827, 42.278694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863892, 35.357616, 42.312271>,  <35.642616, 35.266891, 42.332417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863892, 35.357616, 42.312271>,  <36.232685, 35.508827, 42.278694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863892, 35.357616, 42.312271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066672, -0.058568, -0.996054,
		0.381454, -0.923939, 0.028795,
		-0.921981, -0.378029, 0.083942,
		35.587296, 35.244209, 42.337452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861801, 35.252193, 42.048897>,  <36.232685, 35.508827, 42.278694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861801, 35.252193, 42.048897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115582, 35.483505, 41.843739>,  <37.267849, 35.622292, 41.720646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115582, 35.483505, 41.843739>,  <36.861801, 35.252193, 42.048897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115582, 35.483505, 41.843739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528757, 0.159301, 0.833690,
		0.563812, -0.800134, -0.204701,
		0.634454, 0.578281, -0.512892,
		37.305920, 35.656990, 41.689873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501453, 35.056015, 42.374420>,  <36.861801, 35.252193, 42.048897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501453, 35.056015, 42.374420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537781, 35.417461, 42.206982>,  <37.559578, 35.634331, 42.106518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537781, 35.417461, 42.206982>,  <37.501453, 35.056015, 42.374420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537781, 35.417461, 42.206982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667499, 0.256701, 0.698963,
		0.739051, -0.342895, -0.579850,
		0.090823, 0.903619, -0.418597,
		37.565029, 35.688545, 42.081402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201195, 35.253860, 42.349506>,  <37.501453, 35.056015, 42.374420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201195, 35.253860, 42.349506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003967, 35.601398, 42.331619>,  <37.885632, 35.809921, 42.320889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003967, 35.601398, 42.331619>,  <38.201195, 35.253860, 42.349506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003967, 35.601398, 42.331619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392442, 0.267994, 0.879869,
		0.776449, 0.416288, -0.473109,
		-0.493068, 0.868841, -0.044715,
		37.856049, 35.862049, 42.318207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649189, 35.773735, 42.397747>,  <38.201195, 35.253860, 42.349506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649189, 35.773735, 42.397747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.307514, 35.960617, 42.489037>,  <38.102509, 36.072746, 42.543812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.307514, 35.960617, 42.489037>,  <38.649189, 35.773735, 42.397747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307514, 35.960617, 42.489037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397896, 0.304770, 0.865329,
		0.334730, 0.829961, -0.446229,
		-0.854187, 0.467204, 0.228223,
		38.051258, 36.100777, 42.557503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821938, 36.444336, 42.614601>,  <38.649189, 35.773735, 42.397747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821938, 36.444336, 42.614601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453182, 36.396847, 42.762131>,  <38.231930, 36.368351, 42.850651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453182, 36.396847, 42.762131>,  <38.821938, 36.444336, 42.614601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453182, 36.396847, 42.762131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326798, 0.273146, 0.904762,
		-0.208163, 0.954618, -0.213010,
		-0.921885, -0.118727, 0.368826,
		38.176617, 36.361229, 42.872780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561218, 37.105190, 42.989952>,  <38.821938, 36.444336, 42.614601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561218, 37.105190, 42.989952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353241, 36.802464, 43.148388>,  <38.228455, 36.620827, 43.243450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353241, 36.802464, 43.148388>,  <38.561218, 37.105190, 42.989952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353241, 36.802464, 43.148388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318816, 0.258257, 0.911954,
		-0.792476, 0.600443, 0.107007,
		-0.519941, -0.756817, 0.396093,
		38.197258, 36.575420, 43.267216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107330, 37.395958, 43.558960>,  <38.561218, 37.105190, 42.989952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107330, 37.395958, 43.558960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135094, 37.001427, 43.618744>,  <38.151752, 36.764709, 43.654613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135094, 37.001427, 43.618744>,  <38.107330, 37.395958, 43.558960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135094, 37.001427, 43.618744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264462, 0.162659, 0.950580,
		-0.961895, -0.026455, 0.272137,
		0.069413, -0.986328, 0.149464,
		38.155918, 36.705528, 43.663582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800350, 37.281837, 44.210934>,  <38.107330, 37.395958, 43.558960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800350, 37.281837, 44.210934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022697, 36.961296, 44.122532>,  <38.156105, 36.768970, 44.069492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.022697, 36.961296, 44.122532>,  <37.800350, 37.281837, 44.210934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022697, 36.961296, 44.122532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372559, 0.002498, 0.928005,
		-0.743111, -0.598182, 0.299941,
		0.555865, -0.801356, -0.221002,
		38.189457, 36.720890, 44.056232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725719, 36.857685, 44.786282>,  <37.800350, 37.281837, 44.210934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725719, 36.857685, 44.786282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056831, 36.728237, 44.602955>,  <38.255497, 36.650570, 44.492958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056831, 36.728237, 44.602955>,  <37.725719, 36.857685, 44.786282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056831, 36.728237, 44.602955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371262, -0.296510, 0.879912,
		-0.420651, -0.898528, -0.125298,
		0.827778, -0.323618, -0.458317,
		38.305164, 36.631153, 44.465462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862179, 36.280510, 45.195652>,  <37.725719, 36.857685, 44.786282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862179, 36.280510, 45.195652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198071, 36.383957, 45.004669>,  <38.399605, 36.446026, 44.890079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198071, 36.383957, 45.004669>,  <37.862179, 36.280510, 45.195652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198071, 36.383957, 45.004669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542313, -0.355217, 0.761392,
		0.027309, -0.898297, -0.438539,
		0.839733, 0.258618, -0.477457,
		38.449989, 36.461544, 44.861431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251278, 35.670036, 45.131378>,  <37.862179, 36.280510, 45.195652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251278, 35.670036, 45.131378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488331, 35.991924, 45.145313>,  <38.630562, 36.185059, 45.153675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488331, 35.991924, 45.145313>,  <38.251278, 35.670036, 45.131378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488331, 35.991924, 45.145313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523138, -0.417432, 0.743019,
		0.612465, -0.422111, -0.668363,
		0.592632, 0.804719, 0.034841,
		38.666122, 36.233341, 45.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881653, 35.407993, 45.300838>,  <38.251278, 35.670036, 45.131378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881653, 35.407993, 45.300838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934750, 35.797604, 45.374222>,  <38.966606, 36.031368, 45.418251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934750, 35.797604, 45.374222>,  <38.881653, 35.407993, 45.300838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934750, 35.797604, 45.374222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382626, -0.221105, 0.897056,
		0.914318, -0.048880, -0.402036,
		0.132740, 0.974024, 0.183457,
		38.974571, 36.089809, 45.429260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604492, 35.416981, 45.544395>,  <38.881653, 35.407993, 45.300838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604492, 35.416981, 45.544395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.429508, 35.749451, 45.681671>,  <39.324516, 35.948933, 45.764034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.429508, 35.749451, 45.681671>,  <39.604492, 35.416981, 45.544395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429508, 35.749451, 45.681671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261473, -0.247579, 0.932919,
		0.860383, 0.497852, -0.109022,
		-0.437463, 0.831173, 0.343187,
		39.298267, 35.998802, 45.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127583, 35.834805, 46.035889>,  <39.604492, 35.416981, 45.544395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127583, 35.834805, 46.035889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.766769, 35.981968, 46.126202>,  <39.550282, 36.070267, 46.180389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.766769, 35.981968, 46.126202>,  <40.127583, 35.834805, 46.035889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766769, 35.981968, 46.126202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227214, -0.040061, 0.973021,
		0.367025, 0.929000, -0.047456,
		-0.902035, 0.367905, 0.225785,
		39.496159, 36.092339, 46.193935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560894, 36.194687, 45.482349>,  <40.127583, 35.834805, 46.035889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560894, 36.194687, 45.482349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.899342, 35.986629, 45.435806>,  <41.102409, 35.861794, 45.407883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.899342, 35.986629, 45.435806>,  <40.560894, 36.194687, 45.482349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899342, 35.986629, 45.435806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241794, -0.180034, -0.953480,
		0.474997, 0.834889, -0.278097,
		0.846116, -0.520142, -0.116356,
		41.153175, 35.830585, 45.400898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909870, 36.448669, 44.896667>,  <40.560894, 36.194687, 45.482349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909870, 36.448669, 44.896667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077980, 36.088085, 44.938126>,  <41.178844, 35.871735, 44.963001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077980, 36.088085, 44.938126>,  <40.909870, 36.448669, 44.896667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077980, 36.088085, 44.938126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130250, -0.172969, -0.976277,
		0.897999, 0.396806, -0.190109,
		0.420276, -0.901458, 0.103642,
		41.204063, 35.817646, 44.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590874, 36.425449, 44.455982>,  <40.909870, 36.448669, 44.896667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590874, 36.425449, 44.455982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446732, 36.061501, 44.538219>,  <41.360245, 35.843132, 44.587563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446732, 36.061501, 44.538219>,  <41.590874, 36.425449, 44.455982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446732, 36.061501, 44.538219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016693, -0.214075, -0.976675,
		0.932665, -0.355384, 0.061955,
		-0.360357, -0.909876, 0.205593,
		41.338623, 35.788536, 44.599895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829643, 36.028027, 43.932606>,  <41.590874, 36.425449, 44.455982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829643, 36.028027, 43.932606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528229, 35.798374, 44.060703>,  <41.347378, 35.660583, 44.137562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.528229, 35.798374, 44.060703>,  <41.829643, 36.028027, 43.932606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528229, 35.798374, 44.060703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318894, -0.106758, -0.941759,
		0.574878, -0.811776, -0.102640,
		-0.753540, -0.574127, 0.320243,
		41.302166, 35.626137, 44.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848629, 35.514698, 43.463116>,  <41.829643, 36.028027, 43.932606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848629, 35.514698, 43.463116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492531, 35.467033, 43.638966>,  <41.278873, 35.438435, 43.744476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492531, 35.467033, 43.638966>,  <41.848629, 35.514698, 43.463116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492531, 35.467033, 43.638966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394993, -0.278672, -0.875398,
		0.226825, -0.952965, 0.201018,
		-0.890242, -0.119161, 0.439624,
		41.225456, 35.431286, 43.770851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522316, 34.728893, 43.360668>,  <41.848629, 35.514698, 43.463116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522316, 34.728893, 43.360668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248009, 35.016071, 43.408443>,  <41.083424, 35.188377, 43.437111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248009, 35.016071, 43.408443>,  <41.522316, 34.728893, 43.360668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248009, 35.016071, 43.408443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393170, -0.227332, -0.890919,
		-0.612482, -0.657928, 0.438174,
		-0.685771, 0.717949, 0.119441,
		41.042278, 35.231457, 43.444275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959045, 34.528076, 42.804321>,  <41.522316, 34.728893, 43.360668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959045, 34.528076, 42.804321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856819, 34.893169, 42.931824>,  <40.795483, 35.112225, 43.008324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856819, 34.893169, 42.931824>,  <40.959045, 34.528076, 42.804321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856819, 34.893169, 42.931824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301050, 0.238177, -0.923386,
		-0.918724, -0.331948, 0.213908,
		-0.255568, 0.912734, 0.318752,
		40.780148, 35.166988, 43.027451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274433, 34.692513, 42.481880>,  <40.959045, 34.528076, 42.804321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274433, 34.692513, 42.481880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440830, 35.037750, 42.596439>,  <40.540668, 35.244892, 42.665173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440830, 35.037750, 42.596439>,  <40.274433, 34.692513, 42.481880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440830, 35.037750, 42.596439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185763, 0.388951, -0.902336,
		-0.890191, 0.322166, 0.322132,
		0.415995, 0.863091, 0.286394,
		40.565628, 35.296677, 42.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738869, 35.297691, 42.350727>,  <40.274433, 34.692513, 42.481880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738869, 35.297691, 42.350727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.121597, 35.413948, 42.348930>,  <40.351234, 35.483704, 42.347855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.121597, 35.413948, 42.348930>,  <39.738869, 35.297691, 42.350727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121597, 35.413948, 42.348930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135113, 0.431024, -0.892167,
		-0.257369, 0.854251, 0.451683,
		0.956820, 0.290645, -0.004488,
		40.408642, 35.501141, 42.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752541, 35.905514, 42.035431>,  <39.738869, 35.297691, 42.350727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752541, 35.905514, 42.035431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134941, 35.804581, 41.975571>,  <40.364380, 35.744022, 41.939655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134941, 35.804581, 41.975571>,  <39.752541, 35.905514, 42.035431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134941, 35.804581, 41.975571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097347, 0.208356, -0.973197,
		0.276748, 0.944943, 0.174624,
		0.955999, -0.252331, -0.149649,
		40.421741, 35.728882, 41.930676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161633, 36.522545, 41.728901>,  <39.752541, 35.905514, 42.035431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161633, 36.522545, 41.728901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361671, 36.188732, 41.636414>,  <40.481693, 35.988445, 41.580921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361671, 36.188732, 41.636414>,  <40.161633, 36.522545, 41.728901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361671, 36.188732, 41.636414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190575, 0.366516, -0.910685,
		0.844741, 0.411364, 0.342333,
		0.500094, -0.834533, -0.231216,
		40.511700, 35.938374, 41.567047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437313, 36.785206, 41.123695>,  <40.161633, 36.522545, 41.728901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437313, 36.785206, 41.123695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.536484, 36.399502, 41.086300>,  <40.595985, 36.168079, 41.063862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.536484, 36.399502, 41.086300>,  <40.437313, 36.785206, 41.123695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536484, 36.399502, 41.086300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000101, 0.096480, -0.995335,
		0.968778, 0.246782, 0.023823,
		0.247929, -0.964256, -0.093492,
		40.610863, 36.110226, 41.058250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026978, 36.713142, 40.639019>,  <40.437313, 36.785206, 41.123695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026978, 36.713142, 40.639019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788757, 36.391850, 40.634480>,  <40.645824, 36.199074, 40.631756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788757, 36.391850, 40.634480>,  <41.026978, 36.713142, 40.639019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788757, 36.391850, 40.634480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172722, 0.141836, -0.974705,
		0.784529, -0.578527, -0.223207,
		-0.595552, -0.803237, -0.011350,
		40.610092, 36.150879, 40.631073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307369, 36.390499, 40.069111>,  <41.026978, 36.713142, 40.639019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307369, 36.390499, 40.069111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953278, 36.223412, 40.150967>,  <40.740822, 36.123158, 40.200081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953278, 36.223412, 40.150967>,  <41.307369, 36.390499, 40.069111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953278, 36.223412, 40.150967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191994, -0.072584, -0.978708,
		0.423683, -0.905670, -0.015947,
		-0.885230, -0.417723, 0.204636,
		40.687710, 36.098095, 40.212357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.149076, 39.346443, 35.001724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959257, 39.507111, 34.688427>,  <29.845366, 39.603512, 34.500450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959257, 39.507111, 34.688427>,  <30.149076, 39.346443, 35.001724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959257, 39.507111, 34.688427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507645, -0.851813, -0.129269,
		-0.719097, 0.336263, 0.608134,
		-0.474548, 0.401673, -0.783238,
		29.816893, 39.627613, 34.453457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435534, 39.278908, 35.063126>,  <30.149076, 39.346443, 35.001724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435534, 39.278908, 35.063126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477793, 39.300999, 34.665977>,  <29.503149, 39.314251, 34.427689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477793, 39.300999, 34.665977>,  <29.435534, 39.278908, 35.063126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477793, 39.300999, 34.665977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657695, -0.744998, -0.111422,
		-0.745839, 0.664777, -0.042387,
		0.105649, 0.055226, -0.992869,
		29.509487, 39.317566, 34.368118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786583, 39.498055, 34.710171>,  <29.435534, 39.278908, 35.063126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786583, 39.498055, 34.710171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033247, 39.269836, 34.493206>,  <29.181246, 39.132904, 34.363029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033247, 39.269836, 34.493206>,  <28.786583, 39.498055, 34.710171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033247, 39.269836, 34.493206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713000, -0.696856, -0.077599,
		-0.333707, 0.434590, -0.836523,
		0.616660, -0.570546, -0.542409,
		29.218245, 39.098671, 34.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473843, 39.392979, 34.067986>,  <28.786583, 39.498055, 34.710171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473843, 39.392979, 34.067986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731977, 39.090935, 34.114212>,  <28.886858, 38.909710, 34.141949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731977, 39.090935, 34.114212>,  <28.473843, 39.392979, 34.067986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731977, 39.090935, 34.114212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723004, -0.652594, -0.226684,
		0.246587, 0.062734, -0.967088,
		0.645336, -0.755106, 0.115564,
		28.925579, 38.864403, 34.148880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315990, 38.899265, 33.514561>,  <28.473843, 39.392979, 34.067986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315990, 38.899265, 33.514561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517578, 38.712650, 33.805313>,  <28.638531, 38.600681, 33.979763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517578, 38.712650, 33.805313>,  <28.315990, 38.899265, 33.514561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517578, 38.712650, 33.805313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484856, -0.849272, -0.208928,
		0.714792, -0.247138, -0.654213,
		0.503971, -0.466540, 0.726879,
		28.668770, 38.572689, 34.023376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273296, 38.221577, 33.248436>,  <28.315990, 38.899265, 33.514561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273296, 38.221577, 33.248436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404537, 38.155472, 33.620464>,  <28.483282, 38.115807, 33.843681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404537, 38.155472, 33.620464>,  <28.273296, 38.221577, 33.248436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404537, 38.155472, 33.620464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335065, -0.940920, -0.048991,
		0.883222, -0.295561, -0.364092,
		0.328101, -0.165264, 0.930074,
		28.502968, 38.105892, 33.899487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313887, 37.495625, 33.297455>,  <28.273296, 38.221577, 33.248436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313887, 37.495625, 33.297455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333801, 37.604969, 33.681702>,  <28.345751, 37.670578, 33.912251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333801, 37.604969, 33.681702>,  <28.313887, 37.495625, 33.297455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333801, 37.604969, 33.681702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370991, -0.887937, 0.271909,
		0.927301, -0.369919, 0.057208,
		0.049787, 0.273365, 0.960621,
		28.348738, 37.686977, 33.969887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651350, 36.959202, 33.628448>,  <28.313887, 37.495625, 33.297455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651350, 36.959202, 33.628448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450769, 37.162560, 33.908470>,  <28.330421, 37.284573, 34.076485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450769, 37.162560, 33.908470>,  <28.651350, 36.959202, 33.628448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450769, 37.162560, 33.908470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312367, -0.860950, 0.401487,
		0.806829, -0.017349, 0.590530,
		-0.501452, 0.508394, 0.700059,
		28.300333, 37.315079, 34.118488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752142, 36.532162, 34.288223>,  <28.651350, 36.959202, 33.628448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752142, 36.532162, 34.288223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449942, 36.792412, 34.318974>,  <28.268621, 36.948563, 34.337425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449942, 36.792412, 34.318974>,  <28.752142, 36.532162, 34.288223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449942, 36.792412, 34.318974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539611, -0.684515, 0.490163,
		0.371534, 0.328835, 0.868234,
		-0.755502, 0.650621, 0.076877,
		28.223291, 36.987598, 34.342037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512423, 36.577557, 34.924194>,  <28.752142, 36.532162, 34.288223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512423, 36.577557, 34.924194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173008, 36.688057, 34.743675>,  <27.969358, 36.754356, 34.635365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173008, 36.688057, 34.743675>,  <28.512423, 36.577557, 34.924194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173008, 36.688057, 34.743675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516616, -0.616955, 0.593695,
		-0.114424, 0.736921, 0.666223,
		-0.848537, 0.276248, -0.451300,
		27.918447, 36.770931, 34.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086763, 36.588299, 35.535458>,  <28.512423, 36.577557, 34.924194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086763, 36.588299, 35.535458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849876, 36.587059, 35.213150>,  <27.707745, 36.586315, 35.019764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849876, 36.587059, 35.213150>,  <28.086763, 36.588299, 35.535458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849876, 36.587059, 35.213150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580136, -0.692363, 0.429040,
		-0.559216, 0.721542, 0.408233,
		-0.592216, -0.003095, -0.805774,
		27.672213, 36.586132, 34.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402184, 36.489265, 35.835182>,  <28.086763, 36.588299, 35.535458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402184, 36.489265, 35.835182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365173, 36.400063, 35.447018>,  <27.342968, 36.346539, 35.214119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365173, 36.400063, 35.447018>,  <27.402184, 36.489265, 35.835182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365173, 36.400063, 35.447018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642406, -0.731256, 0.229300,
		-0.760759, 0.644617, -0.075605,
		-0.092524, -0.223011, -0.970415,
		27.337416, 36.333160, 35.155891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771591, 36.242344, 35.829292>,  <27.402184, 36.489265, 35.835182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771591, 36.242344, 35.829292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909838, 36.115597, 35.475990>,  <26.992786, 36.039551, 35.264008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909838, 36.115597, 35.475990>,  <26.771591, 36.242344, 35.829292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909838, 36.115597, 35.475990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505327, -0.855972, 0.109343,
		-0.790692, 0.408544, -0.455959,
		0.345617, -0.316866, -0.883258,
		27.013523, 36.020538, 35.211014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194233, 35.977692, 35.472183>,  <26.771591, 36.242344, 35.829292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194233, 35.977692, 35.472183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510714, 35.807308, 35.296661>,  <26.700602, 35.705078, 35.191349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510714, 35.807308, 35.296661>,  <26.194233, 35.977692, 35.472183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510714, 35.807308, 35.296661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405956, -0.902464, 0.144076,
		-0.457380, 0.064144, -0.886955,
		0.791203, -0.425962, -0.438809,
		26.748075, 35.679520, 35.165020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862873, 35.483513, 35.076797>,  <26.194233, 35.977692, 35.472183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862873, 35.483513, 35.076797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240166, 35.358463, 35.121658>,  <26.466541, 35.283432, 35.148575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240166, 35.358463, 35.121658>,  <25.862873, 35.483513, 35.076797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240166, 35.358463, 35.121658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328455, -0.928116, 0.175265,
		0.049294, -0.202151, -0.978113,
		0.943232, -0.312627, 0.112149,
		26.523136, 35.264675, 35.155304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844353, 34.907940, 34.596195>,  <25.862873, 35.483513, 35.076797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844353, 34.907940, 34.596195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124039, 34.883682, 34.881126>,  <26.291851, 34.869125, 35.052086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.124039, 34.883682, 34.881126>,  <25.844353, 34.907940, 34.596195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124039, 34.883682, 34.881126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193442, -0.975276, 0.106847,
		0.688241, -0.212504, -0.693662,
		0.699217, -0.060647, 0.712332,
		26.333803, 34.865490, 35.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252663, 34.307739, 34.363537>,  <25.844353, 34.907940, 34.596195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252663, 34.307739, 34.363537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324005, 34.392963, 34.747787>,  <26.366810, 34.444096, 34.978336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324005, 34.392963, 34.747787>,  <26.252663, 34.307739, 34.363537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324005, 34.392963, 34.747787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059008, -0.976835, 0.205699,
		0.982195, 0.019997, -0.186797,
		0.178356, 0.213059, 0.960622,
		26.377512, 34.456882, 35.035973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863895, 33.849949, 34.628643>,  <26.252663, 34.307739, 34.363537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863895, 33.849949, 34.628643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659908, 33.945847, 34.959087>,  <26.537516, 34.003384, 35.157352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659908, 33.945847, 34.959087>,  <26.863895, 33.849949, 34.628643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659908, 33.945847, 34.959087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107360, -0.935128, 0.337651,
		0.853468, 0.260883, 0.451146,
		-0.509967, 0.239739, 0.826111,
		26.506918, 34.017769, 35.206921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235794, 33.592392, 35.144268>,  <26.863895, 33.849949, 34.628643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235794, 33.592392, 35.144268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.905645, 33.645035, 35.363884>,  <26.707556, 33.676620, 35.495655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.905645, 33.645035, 35.363884>,  <27.235794, 33.592392, 35.144268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905645, 33.645035, 35.363884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251044, -0.785485, 0.565677,
		0.505707, 0.604726, 0.615277,
		-0.825371, 0.131605, 0.549038,
		26.658033, 33.684517, 35.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445896, 33.640854, 35.963692>,  <27.235794, 33.592392, 35.144268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445896, 33.640854, 35.963692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068029, 33.532223, 35.890099>,  <26.841309, 33.467045, 35.845943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068029, 33.532223, 35.890099>,  <27.445896, 33.640854, 35.963692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068029, 33.532223, 35.890099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155132, -0.864055, 0.478898,
		-0.289025, 0.423859, 0.858375,
		-0.944669, -0.271575, -0.183979,
		26.784628, 33.450752, 35.834904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139549, 33.821907, 36.409214>,  <27.445896, 33.640854, 35.963692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139549, 33.821907, 36.409214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538626, 33.822964, 36.382076>,  <28.778072, 33.823597, 36.365795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538626, 33.822964, 36.382076>,  <28.139549, 33.821907, 36.409214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538626, 33.822964, 36.382076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029063, 0.886479, 0.461854,
		0.061361, -0.462760, 0.884357,
		0.997692, 0.002638, -0.067845,
		28.837933, 33.823753, 36.361721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364687, 34.222263, 36.988678>,  <28.139549, 33.821907, 36.409214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364687, 34.222263, 36.988678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679161, 34.189541, 36.743656>,  <28.867846, 34.169907, 36.596642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679161, 34.189541, 36.743656>,  <28.364687, 34.222263, 36.988678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679161, 34.189541, 36.743656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428350, 0.786602, 0.444717,
		0.445455, -0.612017, 0.653456,
		0.786184, -0.081806, -0.612554,
		28.915016, 34.165001, 36.559891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924109, 34.102177, 37.436825>,  <28.364687, 34.222263, 36.988678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924109, 34.102177, 37.436825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053328, 34.251297, 37.088882>,  <29.130859, 34.340771, 36.880116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053328, 34.251297, 37.088882>,  <28.924109, 34.102177, 37.436825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053328, 34.251297, 37.088882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457967, 0.742775, 0.488418,
		0.828195, -0.556149, 0.069220,
		0.323048, 0.372805, -0.869860,
		29.150242, 34.363140, 36.827923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670498, 34.268154, 37.511505>,  <28.924109, 34.102177, 37.436825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670498, 34.268154, 37.511505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560822, 34.463474, 37.180115>,  <29.495016, 34.580666, 36.981281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560822, 34.463474, 37.180115>,  <29.670498, 34.268154, 37.511505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560822, 34.463474, 37.180115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642401, 0.734092, 0.220065,
		0.715639, -0.471877, -0.514969,
		-0.274191, 0.488304, -0.828480,
		29.478563, 34.609966, 36.931572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250172, 34.448299, 37.070210>,  <29.670498, 34.268154, 37.511505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250172, 34.448299, 37.070210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971100, 34.712582, 36.959423>,  <29.803658, 34.871151, 36.892952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971100, 34.712582, 36.959423>,  <30.250172, 34.448299, 37.070210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971100, 34.712582, 36.959423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667187, 0.740053, 0.084756,
		0.260969, -0.125656, -0.957134,
		-0.697679, 0.660706, -0.276967,
		29.761797, 34.910793, 36.876331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572420, 34.954372, 36.551788>,  <30.250172, 34.448299, 37.070210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572420, 34.954372, 36.551788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251284, 35.161118, 36.670647>,  <30.058601, 35.285164, 36.741962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251284, 35.161118, 36.670647>,  <30.572420, 34.954372, 36.551788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251284, 35.161118, 36.670647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533802, 0.845152, -0.027831,
		-0.265520, 0.136275, -0.954426,
		-0.802842, 0.516863, 0.297149,
		30.010431, 35.316177, 36.759792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599041, 35.583431, 36.211826>,  <30.572420, 34.954372, 36.551788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599041, 35.583431, 36.211826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340155, 35.663773, 36.505974>,  <30.184822, 35.711979, 36.682461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340155, 35.663773, 36.505974>,  <30.599041, 35.583431, 36.211826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340155, 35.663773, 36.505974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358283, 0.931627, 0.060871,
		-0.672862, 0.302866, -0.674928,
		-0.647217, 0.200857, 0.735368,
		30.145990, 35.724030, 36.726585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326586, 36.249912, 35.999557>,  <30.599041, 35.583431, 36.211826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326586, 36.249912, 35.999557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257648, 36.210594, 36.391605>,  <30.216286, 36.187004, 36.626835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257648, 36.210594, 36.391605>,  <30.326586, 36.249912, 35.999557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257648, 36.210594, 36.391605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321745, 0.934817, 0.150325,
		-0.931009, 0.341256, -0.129484,
		-0.172343, -0.098294, 0.980120,
		30.205946, 36.181107, 36.685642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936619, 36.806015, 36.249168>,  <30.326586, 36.249912, 35.999557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936619, 36.806015, 36.249168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102766, 36.676060, 36.589031>,  <30.202454, 36.598087, 36.792950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.102766, 36.676060, 36.589031>,  <29.936619, 36.806015, 36.249168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102766, 36.676060, 36.589031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253056, 0.938445, 0.235126,
		-0.873747, 0.117347, 0.472013,
		0.415366, -0.324886, 0.849659,
		30.227377, 36.578594, 36.843929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642845, 37.179451, 36.838913>,  <29.936619, 36.806015, 36.249168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642845, 37.179451, 36.838913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988420, 37.021118, 36.963444>,  <30.195766, 36.926121, 37.038162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988420, 37.021118, 36.963444>,  <29.642845, 37.179451, 36.838913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988420, 37.021118, 36.963444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273408, 0.887843, 0.370113,
		-0.422914, -0.234635, 0.875266,
		0.863940, -0.395830, 0.311330,
		30.247602, 36.902370, 37.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776451, 37.353683, 37.537666>,  <29.642845, 37.179451, 36.838913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776451, 37.353683, 37.537666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134245, 37.246090, 37.394814>,  <30.348921, 37.181534, 37.309101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134245, 37.246090, 37.394814>,  <29.776451, 37.353683, 37.537666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134245, 37.246090, 37.394814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402307, 0.832708, 0.380456,
		0.195046, -0.483988, 0.853061,
		0.894487, -0.268986, -0.357127,
		30.402592, 37.165394, 37.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220791, 37.673859, 38.021919>,  <29.776451, 37.353683, 37.537666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220791, 37.673859, 38.021919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473738, 37.591553, 37.723183>,  <30.625505, 37.542168, 37.543941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473738, 37.591553, 37.723183>,  <30.220791, 37.673859, 38.021919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473738, 37.591553, 37.723183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521521, 0.825961, 0.214020,
		0.572825, -0.524833, 0.629620,
		0.632366, -0.205764, -0.746843,
		30.663448, 37.529823, 37.499130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906828, 37.743107, 38.272511>,  <30.220791, 37.673859, 38.021919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906828, 37.743107, 38.272511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949642, 37.795551, 37.878281>,  <30.975330, 37.827019, 37.641743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949642, 37.795551, 37.878281>,  <30.906828, 37.743107, 38.272511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949642, 37.795551, 37.878281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378539, 0.911238, 0.162336,
		0.919376, -0.390453, 0.047901,
		0.107034, 0.131115, -0.985572,
		30.981752, 37.834885, 37.582607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494587, 38.019203, 38.154022>,  <30.906828, 37.743107, 38.272511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494587, 38.019203, 38.154022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311144, 38.099449, 37.807743>,  <31.201078, 38.147594, 37.599976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.311144, 38.099449, 37.807743>,  <31.494587, 38.019203, 38.154022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311144, 38.099449, 37.807743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409704, 0.912201, -0.005653,
		0.788557, -0.357273, -0.500533,
		-0.458607, 0.200613, -0.865699,
		31.173561, 38.159634, 37.548035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064659, 38.238567, 37.639793>,  <31.494587, 38.019203, 38.154022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064659, 38.238567, 37.639793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713879, 38.377613, 37.507053>,  <31.503410, 38.461040, 37.427410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713879, 38.377613, 37.507053>,  <32.064659, 38.238567, 37.639793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713879, 38.377613, 37.507053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421796, 0.887652, -0.184829,
		0.230317, -0.302058, -0.925049,
		-0.876951, 0.347613, -0.331848,
		31.450794, 38.481895, 37.407497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191544, 38.478035, 37.023304>,  <32.064659, 38.238567, 37.639793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191544, 38.478035, 37.023304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.846840, 38.657303, 37.118389>,  <31.640017, 38.764862, 37.175442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.846840, 38.657303, 37.118389>,  <32.191544, 38.478035, 37.023304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846840, 38.657303, 37.118389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429966, 0.893922, -0.126622,
		-0.269247, -0.006909, -0.963046,
		-0.861763, 0.448170, 0.237715,
		31.588310, 38.791752, 37.189705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328808, 39.116447, 36.632160>,  <32.191544, 38.478035, 37.023304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328808, 39.116447, 36.632160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.004692, 39.187370, 36.855587>,  <31.810223, 39.229923, 36.989643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.004692, 39.187370, 36.855587>,  <32.328808, 39.116447, 36.632160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004692, 39.187370, 36.855587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161730, 0.983774, -0.077664,
		-0.563275, 0.027408, -0.825815,
		-0.810287, 0.177305, 0.558568,
		31.761606, 39.240562, 37.023159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983232, 39.873917, 36.414097>,  <32.328808, 39.116447, 36.632160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983232, 39.873917, 36.414097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802986, 39.806152, 36.764694>,  <31.694839, 39.765495, 36.975052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802986, 39.806152, 36.764694>,  <31.983232, 39.873917, 36.414097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802986, 39.806152, 36.764694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182530, 0.978571, 0.095298,
		-0.873859, -0.117044, -0.471880,
		-0.450614, -0.169409, 0.876497,
		31.667803, 39.755329, 37.027645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267296, 40.328785, 36.521160>,  <31.983232, 39.873917, 36.414097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267296, 40.328785, 36.521160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442583, 40.227528, 36.866154>,  <31.547756, 40.166775, 37.073151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442583, 40.227528, 36.866154>,  <31.267296, 40.328785, 36.521160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442583, 40.227528, 36.866154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114875, 0.935886, 0.333048,
		-0.891497, -0.245026, 0.381044,
		0.438219, -0.253139, 0.862488,
		31.574049, 40.151585, 37.124901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874178, 40.678093, 37.058121>,  <31.267296, 40.328785, 36.521160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874178, 40.678093, 37.058121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232435, 40.591133, 37.213329>,  <31.447390, 40.538960, 37.306454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232435, 40.591133, 37.213329>,  <30.874178, 40.678093, 37.058121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232435, 40.591133, 37.213329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011486, 0.883420, 0.468441,
		-0.444626, -0.415099, 0.793726,
		0.895643, -0.217398, 0.388024,
		31.501127, 40.525913, 37.329735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860878, 40.961205, 37.759018>,  <30.874178, 40.678093, 37.058121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860878, 40.961205, 37.759018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246954, 40.908993, 37.668354>,  <31.478600, 40.877666, 37.613956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246954, 40.908993, 37.668354>,  <30.860878, 40.961205, 37.759018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246954, 40.908993, 37.668354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217869, 0.880706, 0.420583,
		0.144721, -0.455324, 0.878485,
		0.965188, -0.130527, -0.226658,
		31.536510, 40.869835, 37.600357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257792, 41.175823, 38.389336>,  <30.860878, 40.961205, 37.759018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257792, 41.175823, 38.389336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463388, 41.215115, 38.048473>,  <31.586746, 41.238689, 37.843956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463388, 41.215115, 38.048473>,  <31.257792, 41.175823, 38.389336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463388, 41.215115, 38.048473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029175, 0.994848, 0.097084,
		0.857299, -0.025039, 0.514211,
		0.513993, 0.098232, -0.852152,
		31.617586, 41.244583, 37.792828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.454388, 33.748886, 45.739944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205624, 33.600323, 46.015709>,  <41.056366, 33.511185, 46.181168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.205624, 33.600323, 46.015709>,  <41.454388, 33.748886, 45.739944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205624, 33.600323, 46.015709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705782, 0.115566, 0.698939,
		-0.339261, 0.921251, 0.190259,
		-0.621911, -0.371404, 0.689410,
		41.019051, 33.488903, 46.222530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618595, 34.090565, 46.427940>,  <41.454388, 33.748886, 45.739944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618595, 34.090565, 46.427940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.411068, 33.766731, 46.537781>,  <41.286552, 33.572433, 46.603683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.411068, 33.766731, 46.537781>,  <41.618595, 34.090565, 46.427940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411068, 33.766731, 46.537781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556991, -0.076440, 0.826993,
		-0.648526, 0.582011, 0.490588,
		-0.518820, -0.809580, 0.274602,
		41.255421, 33.523857, 46.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509117, 34.090645, 47.247181>,  <41.618595, 34.090565, 46.427940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509117, 34.090645, 47.247181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426529, 33.713165, 47.143799>,  <41.376976, 33.486675, 47.081768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426529, 33.713165, 47.143799>,  <41.509117, 34.090645, 47.247181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426529, 33.713165, 47.143799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495090, -0.328597, 0.804307,
		-0.843953, 0.038106, 0.535062,
		-0.206469, -0.943701, -0.258455,
		41.364590, 33.430054, 47.066261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100754, 33.739559, 47.789867>,  <41.509117, 34.090645, 47.247181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100754, 33.739559, 47.789867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301628, 33.467548, 47.576187>,  <41.422153, 33.304340, 47.447979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301628, 33.467548, 47.576187>,  <41.100754, 33.739559, 47.789867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301628, 33.467548, 47.576187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335757, -0.415947, 0.845137,
		-0.796915, -0.603779, 0.019441,
		0.502190, -0.680029, -0.534197,
		41.452286, 33.263538, 47.415928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888149, 33.083679, 48.175507>,  <41.100754, 33.739559, 47.789867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888149, 33.083679, 48.175507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.224373, 33.031292, 47.965248>,  <41.426109, 32.999859, 47.839092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.224373, 33.031292, 47.965248>,  <40.888149, 33.083679, 48.175507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224373, 33.031292, 47.965248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415186, -0.467523, 0.780412,
		-0.347963, -0.874225, -0.338605,
		0.840561, -0.130970, -0.525646,
		41.476540, 32.992001, 47.807556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142960, 32.351963, 48.234726>,  <40.888149, 33.083679, 48.175507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142960, 32.351963, 48.234726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.456108, 32.580696, 48.136642>,  <41.643997, 32.717934, 48.077793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.456108, 32.580696, 48.136642>,  <41.142960, 32.351963, 48.234726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456108, 32.580696, 48.136642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467090, -0.279804, 0.838771,
		0.411023, -0.771182, -0.486146,
		0.782871, 0.571828, -0.245205,
		41.690968, 32.752243, 48.063080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639175, 31.927015, 48.370472>,  <41.142960, 32.351963, 48.234726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639175, 31.927015, 48.370472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.821556, 32.282261, 48.347286>,  <41.930984, 32.495407, 48.333374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.821556, 32.282261, 48.347286>,  <41.639175, 31.927015, 48.370472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821556, 32.282261, 48.347286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553836, -0.232151, 0.799608,
		0.696685, -0.396688, -0.597719,
		0.455956, 0.888113, -0.057964,
		41.958344, 32.548695, 48.329895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393555, 31.789127, 48.479462>,  <41.639175, 31.927015, 48.370472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393555, 31.789127, 48.479462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335457, 32.179688, 48.543392>,  <42.300598, 32.414024, 48.581753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335457, 32.179688, 48.543392>,  <42.393555, 31.789127, 48.479462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335457, 32.179688, 48.543392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561201, -0.051740, 0.826060,
		0.814836, 0.209674, -0.540443,
		-0.145241, 0.976401, 0.159829,
		42.291885, 32.472607, 48.591339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017067, 31.999735, 48.826462>,  <42.393555, 31.789127, 48.479462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017067, 31.999735, 48.826462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772102, 32.308975, 48.892513>,  <42.625122, 32.494518, 48.932144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772102, 32.308975, 48.892513>,  <43.017067, 31.999735, 48.826462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772102, 32.308975, 48.892513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480596, 0.198245, 0.854240,
		0.627677, 0.602508, -0.492956,
		-0.612413, 0.773100, 0.165129,
		42.588379, 32.540905, 48.942051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412197, 32.616989, 48.983837>,  <43.017067, 31.999735, 48.826462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412197, 32.616989, 48.983837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.060802, 32.668205, 49.167953>,  <42.849964, 32.698936, 49.278423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.060802, 32.668205, 49.167953>,  <43.412197, 32.616989, 48.983837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060802, 32.668205, 49.167953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471879, 0.081771, 0.877863,
		0.074767, 0.988392, -0.132256,
		-0.878488, 0.128044, 0.460287,
		42.797256, 32.706619, 49.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612961, 32.897068, 49.557953>,  <43.412197, 32.616989, 48.983837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612961, 32.897068, 49.557953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.232815, 32.831806, 49.663929>,  <43.004726, 32.792648, 49.727516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.232815, 32.831806, 49.663929>,  <43.612961, 32.897068, 49.557953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232815, 32.831806, 49.663929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271911, -0.021570, 0.962081,
		-0.151258, 0.986364, 0.064864,
		-0.950361, -0.163159, 0.264941,
		42.947708, 32.782860, 49.743412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540974, 33.252045, 50.215057>,  <43.612961, 32.897068, 49.557953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540974, 33.252045, 50.215057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273716, 32.955231, 50.193256>,  <43.113361, 32.777142, 50.180176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273716, 32.955231, 50.193256>,  <43.540974, 33.252045, 50.215057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273716, 32.955231, 50.193256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214908, -0.262602, 0.940668,
		-0.712322, 0.616785, 0.334924,
		-0.668141, -0.742035, -0.054505,
		43.073273, 32.732620, 50.176907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213345, 33.255062, 50.891926>,  <43.540974, 33.252045, 50.215057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213345, 33.255062, 50.891926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.173698, 32.898376, 50.715282>,  <43.149910, 32.684364, 50.609299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.173698, 32.898376, 50.715282>,  <43.213345, 33.255062, 50.891926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173698, 32.898376, 50.715282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293602, -0.450239, 0.843257,
		-0.950775, -0.046075, 0.306437,
		-0.099116, -0.891719, -0.441604,
		43.143963, 32.630859, 50.582802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743233, 33.761757, 50.541443>,  <43.213345, 33.255062, 50.891926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743233, 33.761757, 50.541443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.819649, 33.392555, 50.407841>,  <42.865498, 33.171032, 50.327679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.819649, 33.392555, 50.407841>,  <42.743233, 33.761757, 50.541443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819649, 33.392555, 50.407841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954959, -0.253483, 0.154274,
		-0.227061, 0.289490, -0.929860,
		0.191043, -0.923007, -0.334007,
		42.876961, 33.115654, 50.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191189, 34.396534, 50.489834>,  <42.743233, 33.761757, 50.541443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191189, 34.396534, 50.489834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.205242, 34.789452, 50.563442>,  <43.213673, 35.025204, 50.607609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.205242, 34.789452, 50.563442>,  <43.191189, 34.396534, 50.489834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205242, 34.789452, 50.563442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196850, 0.187333, -0.962370,
		-0.979804, -0.002415, 0.199946,
		0.035133, 0.982293, 0.184025,
		43.215782, 35.084141, 50.618649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725143, 34.677296, 50.123474>,  <43.191189, 34.396534, 50.489834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725143, 34.677296, 50.123474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.928616, 35.016964, 50.180252>,  <43.050697, 35.220764, 50.214317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.928616, 35.016964, 50.180252>,  <42.725143, 34.677296, 50.123474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928616, 35.016964, 50.180252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230629, 0.293240, -0.927804,
		-0.829491, 0.439219, 0.345010,
		0.508680, 0.849174, 0.141943,
		43.081219, 35.271717, 50.222836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170811, 35.275631, 49.833439>,  <42.725143, 34.677296, 50.123474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170811, 35.275631, 49.833439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552006, 35.396488, 49.842560>,  <42.780724, 35.469002, 49.848030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552006, 35.396488, 49.842560>,  <42.170811, 35.275631, 49.833439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552006, 35.396488, 49.842560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117804, 0.438793, -0.890833,
		-0.279161, 0.846269, 0.453759,
		0.952991, 0.302141, 0.022800,
		42.837902, 35.487129, 49.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123589, 35.928211, 49.484821>,  <42.170811, 35.275631, 49.833439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123589, 35.928211, 49.484821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.519924, 35.875507, 49.472935>,  <42.757725, 35.843884, 49.465805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.519924, 35.875507, 49.472935>,  <42.123589, 35.928211, 49.484821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519924, 35.875507, 49.472935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027906, 0.414946, -0.909418,
		0.132153, 0.900255, 0.414821,
		0.990837, -0.131758, -0.029713,
		42.817177, 35.835979, 49.464020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502583, 36.577454, 49.211384>,  <42.123589, 35.928211, 49.484821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502583, 36.577454, 49.211384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.746124, 36.265217, 49.154850>,  <42.892250, 36.077873, 49.120930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.746124, 36.265217, 49.154850>,  <42.502583, 36.577454, 49.211384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746124, 36.265217, 49.154850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028084, 0.199262, -0.979544,
		0.792788, 0.592426, 0.143243,
		0.608850, -0.780593, -0.141335,
		42.928780, 36.031040, 49.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013882, 36.869209, 48.951122>,  <42.502583, 36.577454, 49.211384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013882, 36.869209, 48.951122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.996449, 36.480278, 48.859322>,  <42.985989, 36.246918, 48.804241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.996449, 36.480278, 48.859322>,  <43.013882, 36.869209, 48.951122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996449, 36.480278, 48.859322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191456, 0.233593, -0.953299,
		0.980533, 0.002394, -0.196339,
		-0.043581, -0.972331, -0.229504,
		42.983376, 36.188580, 48.790470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464741, 36.759399, 48.325821>,  <43.013882, 36.869209, 48.951122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464741, 36.759399, 48.325821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227459, 36.437725, 48.310913>,  <43.085091, 36.244720, 48.301968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227459, 36.437725, 48.310913>,  <43.464741, 36.759399, 48.325821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227459, 36.437725, 48.310913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187015, 0.182679, -0.965222,
		0.783029, -0.565604, -0.258762,
		-0.593204, -0.804190, -0.037267,
		43.049500, 36.196468, 48.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538624, 36.543388, 47.616013>,  <43.464741, 36.759399, 48.325821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538624, 36.543388, 47.616013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227322, 36.326595, 47.742870>,  <43.040543, 36.196522, 47.818985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227322, 36.326595, 47.742870>,  <43.538624, 36.543388, 47.616013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227322, 36.326595, 47.742870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305049, -0.115143, -0.945350,
		0.548878, -0.832466, -0.075720,
		-0.778253, -0.541980, 0.317143,
		42.993847, 36.164001, 47.838013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512844, 36.030251, 47.206596>,  <43.538624, 36.543388, 47.616013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512844, 36.030251, 47.206596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140965, 36.023376, 47.353760>,  <42.917835, 36.019253, 47.442059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140965, 36.023376, 47.353760>,  <43.512844, 36.030251, 47.206596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140965, 36.023376, 47.353760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359193, -0.178550, -0.916024,
		0.081436, -0.983781, 0.159824,
		-0.929703, -0.017189, 0.367908,
		42.862053, 36.018219, 47.464130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216663, 35.441093, 46.913063>,  <43.512844, 36.030251, 47.206596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216663, 35.441093, 46.913063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.905701, 35.673222, 47.010113>,  <42.719124, 35.812496, 47.068344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.905701, 35.673222, 47.010113>,  <43.216663, 35.441093, 46.913063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905701, 35.673222, 47.010113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474507, -0.287872, -0.831849,
		-0.412891, -0.761815, 0.499158,
		-0.777409, 0.580317, 0.242627,
		42.672478, 35.847317, 47.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617516, 35.071133, 46.743851>,  <43.216663, 35.441093, 46.913063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617516, 35.071133, 46.743851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.448711, 35.433517, 46.757374>,  <42.347427, 35.650948, 46.765488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.448711, 35.433517, 46.757374>,  <42.617516, 35.071133, 46.743851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448711, 35.433517, 46.757374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528071, -0.215327, -0.821447,
		-0.736919, -0.364513, 0.569281,
		-0.422009, 0.905961, 0.033810,
		42.322109, 35.705307, 46.767517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925377, 34.968472, 46.635078>,  <42.617516, 35.071133, 46.743851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925377, 34.968472, 46.635078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.948830, 35.360828, 46.560883>,  <41.962902, 35.596245, 46.516365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.948830, 35.360828, 46.560883>,  <41.925377, 34.968472, 46.635078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948830, 35.360828, 46.560883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571106, -0.119436, -0.812141,
		-0.818780, 0.153552, 0.553192,
		0.058635, 0.980896, -0.185486,
		41.966419, 35.655098, 46.505238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205795, 35.270180, 46.571297>,  <41.925377, 34.968472, 46.635078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205795, 35.270180, 46.571297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.439896, 35.512341, 46.355530>,  <41.580357, 35.657635, 46.226070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.439896, 35.512341, 46.355530>,  <41.205795, 35.270180, 46.571297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439896, 35.512341, 46.355530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606558, -0.114621, -0.786734,
		-0.538116, 0.787626, 0.300127,
		0.585250, 0.605399, -0.539420,
		41.615471, 35.693958, 46.193703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829151, 35.872066, 46.306850>,  <41.205795, 35.270180, 46.571297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829151, 35.872066, 46.306850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.130150, 35.776127, 46.061504>,  <41.310749, 35.718563, 45.914299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.130150, 35.776127, 46.061504>,  <40.829151, 35.872066, 46.306850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130150, 35.776127, 46.061504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652290, -0.142900, -0.744377,
		0.090889, 0.960235, -0.263984,
		0.752501, -0.239850, -0.613363,
		41.355900, 35.704170, 45.877495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273441, 36.290718, 46.666138>,  <40.829151, 35.872066, 46.306850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273441, 36.290718, 46.666138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877209, 36.236023, 46.663357>,  <39.639469, 36.203205, 46.661690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877209, 36.236023, 46.663357>,  <40.273441, 36.290718, 46.666138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877209, 36.236023, 46.663357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014894, 0.057138, 0.998255,
		-0.136106, 0.988958, -0.058636,
		-0.990582, -0.136741, -0.006952,
		39.580032, 36.195000, 46.661270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971497, 36.921089, 47.000931>,  <40.273441, 36.290718, 46.666138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971497, 36.921089, 47.000931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.714329, 36.615318, 47.020134>,  <39.560028, 36.431854, 47.031654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.714329, 36.615318, 47.020134>,  <39.971497, 36.921089, 47.000931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714329, 36.615318, 47.020134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037247, 0.031396, 0.998813,
		-0.765030, 0.643942, 0.008287,
		-0.642917, -0.764430, 0.048004,
		39.521454, 36.385990, 47.034534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486687, 37.175945, 47.502499>,  <39.971497, 36.921089, 47.000931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486687, 37.175945, 47.502499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458858, 36.776943, 47.507137>,  <39.442162, 36.537540, 47.509922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458858, 36.776943, 47.507137>,  <39.486687, 37.175945, 47.502499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458858, 36.776943, 47.507137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111815, 0.019353, 0.993541,
		-0.991291, 0.067825, -0.112883,
		-0.069572, -0.997510, 0.011600,
		39.437988, 36.477692, 47.510616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147499, 37.068436, 48.072323>,  <39.486687, 37.175945, 47.502499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147499, 37.068436, 48.072323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.276653, 36.694092, 48.015888>,  <39.354145, 36.469486, 47.982025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.276653, 36.694092, 48.015888>,  <39.147499, 37.068436, 48.072323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276653, 36.694092, 48.015888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064544, -0.170500, 0.983241,
		-0.944235, -0.308366, -0.115456,
		0.322883, -0.935863, -0.141089,
		39.373520, 36.413334, 47.973560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724335, 36.664780, 48.456451>,  <39.147499, 37.068436, 48.072323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724335, 36.664780, 48.456451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033619, 36.422745, 48.380539>,  <39.219189, 36.277523, 48.334991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033619, 36.422745, 48.380539>,  <38.724335, 36.664780, 48.456451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033619, 36.422745, 48.380539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106848, -0.170688, 0.979515,
		-0.625083, -0.777649, -0.067325,
		0.773210, -0.605085, -0.189785,
		39.265583, 36.241219, 48.323605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646664, 36.014854, 48.914738>,  <38.724335, 36.664780, 48.456451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646664, 36.014854, 48.914738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036453, 36.032215, 48.826633>,  <39.270329, 36.042633, 48.773773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036453, 36.032215, 48.826633>,  <38.646664, 36.014854, 48.914738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036453, 36.032215, 48.826633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224406, -0.161281, 0.961057,
		0.006189, -0.985954, -0.166904,
		0.974476, 0.043402, -0.220256,
		39.328796, 36.045235, 48.760555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936279, 35.409142, 49.258232>,  <38.646664, 36.014854, 48.914738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936279, 35.409142, 49.258232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245251, 35.644047, 49.161507>,  <39.430634, 35.784988, 49.103470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245251, 35.644047, 49.161507>,  <38.936279, 35.409142, 49.258232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245251, 35.644047, 49.161507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447199, -0.232576, 0.863668,
		0.450960, -0.775262, -0.442272,
		0.772431, 0.587263, -0.241814,
		39.476978, 35.820225, 49.088963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644485, 34.733040, 49.273636>,  <38.936279, 35.409142, 49.258232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644485, 34.733040, 49.273636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322464, 34.723354, 49.510719>,  <38.129253, 34.717545, 49.652969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322464, 34.723354, 49.510719>,  <38.644485, 34.733040, 49.273636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322464, 34.723354, 49.510719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589415, -0.080098, -0.803850,
		0.066941, -0.996493, 0.050210,
		-0.805052, -0.024216, 0.592710,
		38.080948, 34.716091, 49.688534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319996, 34.174480, 49.055347>,  <38.644485, 34.733040, 49.273636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319996, 34.174480, 49.055347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053074, 34.401173, 49.248642>,  <37.892921, 34.537186, 49.364620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053074, 34.401173, 49.248642>,  <38.319996, 34.174480, 49.055347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053074, 34.401173, 49.248642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610809, -0.045175, -0.790488,
		-0.426162, -0.822665, 0.376309,
		-0.667306, 0.566729, 0.483239,
		37.852882, 34.571190, 49.393616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692024, 33.862324, 48.827805>,  <38.319996, 34.174480, 49.055347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692024, 33.862324, 48.827805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598484, 34.226433, 48.964455>,  <37.542358, 34.444901, 49.046444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598484, 34.226433, 48.964455>,  <37.692024, 33.862324, 48.827805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598484, 34.226433, 48.964455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615589, 0.133352, -0.776703,
		-0.752571, -0.391938, 0.529171,
		-0.233853, 0.910276, 0.341629,
		37.528328, 34.499516, 49.066944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931084, 33.899101, 48.977764>,  <37.692024, 33.862324, 48.827805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931084, 33.899101, 48.977764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055935, 34.276142, 48.930305>,  <37.130848, 34.502365, 48.901829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055935, 34.276142, 48.930305>,  <36.931084, 33.899101, 48.977764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055935, 34.276142, 48.930305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629268, 0.111562, -0.769140,
		-0.711756, 0.314731, 0.627971,
		0.312130, 0.942602, -0.118645,
		37.149574, 34.558922, 48.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274254, 34.266655, 48.743206>,  <36.931084, 33.899101, 48.977764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274254, 34.266655, 48.743206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576431, 34.509117, 48.643707>,  <36.757736, 34.654594, 48.584007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576431, 34.509117, 48.643707>,  <36.274254, 34.266655, 48.743206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576431, 34.509117, 48.643707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516654, 0.317610, -0.795105,
		-0.402955, 0.729174, 0.553112,
		0.755444, 0.606159, -0.248748,
		36.803066, 34.690964, 48.569084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899616, 35.015312, 48.574780>,  <36.274254, 34.266655, 48.743206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899616, 35.015312, 48.574780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256107, 34.986538, 48.395653>,  <36.470001, 34.969273, 48.288177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256107, 34.986538, 48.395653>,  <35.899616, 35.015312, 48.574780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256107, 34.986538, 48.395653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381656, 0.414539, -0.826133,
		0.245064, 0.907184, 0.341995,
		0.891225, -0.071931, -0.447820,
		36.523476, 34.964958, 48.261307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998825, 35.622070, 48.136826>,  <35.899616, 35.015312, 48.574780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998825, 35.622070, 48.136826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275814, 35.368114, 47.999775>,  <36.442009, 35.215740, 47.917545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275814, 35.368114, 47.999775>,  <35.998825, 35.622070, 48.136826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275814, 35.368114, 47.999775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175690, 0.312221, -0.933622,
		0.699724, 0.706705, 0.104661,
		0.692473, -0.634890, -0.342630,
		36.483555, 35.177647, 47.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.164062, 30.381046, 51.236725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.486115, 30.589308, 51.123100>,  <40.679344, 30.714264, 51.054928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.486115, 30.589308, 51.123100>,  <40.164062, 30.381046, 51.236725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486115, 30.589308, 51.123100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482836, 0.297241, -0.823721,
		-0.344439, 0.800355, 0.490707,
		0.805128, 0.520653, -0.284059,
		40.727654, 30.745504, 51.037884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850220, 30.904360, 51.031685>,  <40.164062, 30.381046, 51.236725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850220, 30.904360, 51.031685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.211792, 30.947752, 50.866203>,  <40.428734, 30.973787, 50.766914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.211792, 30.947752, 50.866203>,  <39.850220, 30.904360, 51.031685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211792, 30.947752, 50.866203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427685, 0.233360, -0.873286,
		0.001808, 0.966321, 0.257335,
		0.903926, 0.108480, -0.413703,
		40.482971, 30.980295, 50.742092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790874, 31.536203, 50.793304>,  <39.850220, 30.904360, 51.031685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790874, 31.536203, 50.793304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091003, 31.385845, 50.575783>,  <40.271080, 31.295630, 50.445271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091003, 31.385845, 50.575783>,  <39.790874, 31.536203, 50.793304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091003, 31.385845, 50.575783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398846, 0.398617, -0.825849,
		0.527203, 0.836544, 0.149165,
		0.750319, -0.375896, -0.543804,
		40.316097, 31.273077, 50.412640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066776, 32.003845, 50.316494>,  <39.790874, 31.536203, 50.793304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066776, 32.003845, 50.316494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.134274, 31.637796, 50.170033>,  <40.174770, 31.418165, 50.082157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.134274, 31.637796, 50.170033>,  <40.066776, 32.003845, 50.316494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134274, 31.637796, 50.170033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403355, 0.274841, -0.872793,
		0.899350, 0.294968, -0.322743,
		0.168743, -0.915126, -0.366155,
		40.184895, 31.363258, 50.060184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370880, 32.172306, 49.650505>,  <40.066776, 32.003845, 50.316494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370880, 32.172306, 49.650505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239170, 31.795988, 49.618279>,  <40.160145, 31.570198, 49.598942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239170, 31.795988, 49.618279>,  <40.370880, 32.172306, 49.650505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239170, 31.795988, 49.618279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154293, 0.137790, -0.978370,
		0.931543, -0.309722, -0.190528,
		-0.329275, -0.940790, -0.080569,
		40.140388, 31.513750, 49.594109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543674, 31.970449, 48.828320>,  <40.370880, 32.172306, 49.650505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543674, 31.970449, 48.828320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.242928, 31.745070, 48.965267>,  <40.062477, 31.609842, 49.047436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.242928, 31.745070, 48.965267>,  <40.543674, 31.970449, 48.828320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242928, 31.745070, 48.965267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399794, -0.023285, -0.916309,
		0.524265, -0.825823, -0.207756,
		-0.751871, -0.563449, 0.342367,
		40.017365, 31.576035, 49.067978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479778, 31.506393, 48.246742>,  <40.543674, 31.970449, 48.828320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479778, 31.506393, 48.246742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.149895, 31.429529, 48.459507>,  <39.951965, 31.383411, 48.587166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.149895, 31.429529, 48.459507>,  <40.479778, 31.506393, 48.246742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149895, 31.429529, 48.459507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493389, -0.215253, -0.842753,
		0.276438, -0.957466, 0.082712,
		-0.824711, -0.192160, 0.531907,
		39.902481, 31.371881, 48.619080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149418, 30.829079, 47.961006>,  <40.479778, 31.506393, 48.246742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149418, 30.829079, 47.961006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.859047, 30.998959, 48.177399>,  <39.684826, 31.100887, 48.307236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.859047, 30.998959, 48.177399>,  <40.149418, 30.829079, 47.961006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859047, 30.998959, 48.177399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655129, -0.187538, -0.731871,
		-0.209377, -0.885693, 0.414377,
		-0.725925, 0.424707, 0.540977,
		39.641270, 31.126369, 48.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629997, 30.344450, 47.957977>,  <40.149418, 30.829079, 47.961006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629997, 30.344450, 47.957977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.425678, 30.668076, 48.074253>,  <39.303085, 30.862251, 48.144020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.425678, 30.668076, 48.074253>,  <39.629997, 30.344450, 47.957977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425678, 30.668076, 48.074253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776316, -0.288815, -0.560286,
		-0.369354, -0.511856, 0.775616,
		-0.510795, 0.809067, 0.290687,
		39.272438, 30.910795, 48.161461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980068, 30.081556, 48.187943>,  <39.629997, 30.344450, 47.957977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980068, 30.081556, 48.187943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.965343, 30.458941, 48.056168>,  <38.956509, 30.685371, 47.977104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.965343, 30.458941, 48.056168>,  <38.980068, 30.081556, 48.187943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965343, 30.458941, 48.056168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690902, -0.262210, -0.673721,
		-0.722010, 0.202805, 0.661492,
		-0.036815, 0.943460, -0.329437,
		38.954300, 30.741978, 47.957336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316307, 30.365370, 48.114277>,  <38.980068, 30.081556, 48.187943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316307, 30.365370, 48.114277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.512016, 30.577084, 47.837013>,  <38.629440, 30.704111, 47.670654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.512016, 30.577084, 47.837013>,  <38.316307, 30.365370, 48.114277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512016, 30.577084, 47.837013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760377, -0.130374, -0.636262,
		-0.427133, 0.838369, 0.338666,
		0.489269, 0.529282, -0.693164,
		38.658798, 30.735868, 47.629063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878811, 30.350807, 47.500534>,  <38.316307, 30.365370, 48.114277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878811, 30.350807, 47.500534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.162888, 30.578869, 47.335346>,  <38.333336, 30.715706, 47.236233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.162888, 30.578869, 47.335346>,  <37.878811, 30.350807, 47.500534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162888, 30.578869, 47.335346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517959, 0.025878, -0.855014,
		-0.476804, 0.821129, 0.313696,
		0.710195, 0.570156, -0.412972,
		38.375946, 30.749916, 47.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342701, 30.840839, 47.792397>,  <37.878811, 30.350807, 47.500534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342701, 30.840839, 47.792397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.962929, 30.922743, 47.887600>,  <36.735065, 30.971884, 47.944721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.962929, 30.922743, 47.887600>,  <37.342701, 30.840839, 47.792397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962929, 30.922743, 47.887600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279571, 0.206390, 0.937679,
		0.142874, 0.956806, -0.253199,
		-0.949435, 0.204758, 0.238008,
		36.678097, 30.984171, 47.959003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387627, 31.449020, 48.188469>,  <37.342701, 30.840839, 47.792397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387627, 31.449020, 48.188469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052048, 31.247980, 48.271946>,  <36.850700, 31.127356, 48.322033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052048, 31.247980, 48.271946>,  <37.387627, 31.449020, 48.188469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052048, 31.247980, 48.271946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141793, 0.168352, 0.975475,
		-0.525409, 0.847967, -0.069973,
		-0.838951, -0.502602, 0.208690,
		36.800362, 31.097198, 48.334553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107727, 31.866396, 48.682522>,  <37.387627, 31.449020, 48.188469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107727, 31.866396, 48.682522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.937401, 31.508781, 48.738197>,  <36.835205, 31.294212, 48.771603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.937401, 31.508781, 48.738197>,  <37.107727, 31.866396, 48.682522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937401, 31.508781, 48.738197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159359, 0.077324, 0.984188,
		-0.890664, 0.441267, 0.109547,
		-0.425819, -0.894038, 0.139190,
		36.809654, 31.240570, 48.779953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579388, 31.925200, 49.203045>,  <37.107727, 31.866396, 48.682522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579388, 31.925200, 49.203045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.648621, 31.531258, 49.207073>,  <36.690159, 31.294891, 49.209492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.648621, 31.531258, 49.207073>,  <36.579388, 31.925200, 49.203045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648621, 31.531258, 49.207073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286205, 0.060077, 0.956283,
		-0.942407, -0.162629, 0.292269,
		0.173078, -0.984857, 0.010072,
		36.700542, 31.235800, 49.210094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259174, 31.686760, 49.906708>,  <36.579388, 31.925200, 49.203045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259174, 31.686760, 49.906708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495605, 31.382923, 49.798161>,  <36.637466, 31.200621, 49.733032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495605, 31.382923, 49.798161>,  <36.259174, 31.686760, 49.906708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495605, 31.382923, 49.798161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329537, -0.079669, 0.940776,
		-0.736226, -0.645501, 0.203223,
		0.591081, -0.759593, -0.271371,
		36.672932, 31.155045, 49.716751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206261, 30.986221, 50.388588>,  <36.259174, 31.686760, 49.906708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206261, 30.986221, 50.388588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552586, 31.011311, 50.190018>,  <36.760380, 31.026365, 50.070877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.552586, 31.011311, 50.190018>,  <36.206261, 30.986221, 50.388588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552586, 31.011311, 50.190018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500372, -0.107317, 0.859134,
		0.000615, -0.992244, -0.124302,
		0.865811, 0.062725, -0.496425,
		36.812328, 31.030128, 50.041092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480080, 30.410471, 50.615124>,  <36.206261, 30.986221, 50.388588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480080, 30.410471, 50.615124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778316, 30.640112, 50.479771>,  <36.957260, 30.777897, 50.398560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778316, 30.640112, 50.479771>,  <36.480080, 30.410471, 50.615124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778316, 30.640112, 50.479771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542246, -0.227479, 0.808840,
		0.387381, -0.786551, -0.480910,
		0.745591, 0.574101, -0.338382,
		37.001995, 30.812342, 50.378258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012569, 30.007156, 50.781178>,  <36.480080, 30.410471, 50.615124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012569, 30.007156, 50.781178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.148022, 30.379755, 50.728050>,  <37.229294, 30.603315, 50.696175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.148022, 30.379755, 50.728050>,  <37.012569, 30.007156, 50.781178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148022, 30.379755, 50.728050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475364, -0.047546, 0.878503,
		0.812009, -0.360626, -0.458901,
		0.338631, 0.931498, -0.132821,
		37.249611, 30.659204, 50.688206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803772, 30.013353, 50.890690>,  <37.012569, 30.007156, 50.781178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803772, 30.013353, 50.890690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693565, 30.395725, 50.931263>,  <37.627441, 30.625149, 50.955608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693565, 30.395725, 50.931263>,  <37.803772, 30.013353, 50.890690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693565, 30.395725, 50.931263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666716, 0.114006, 0.736541,
		0.692518, 0.270555, -0.668744,
		-0.275516, 0.955930, 0.101432,
		37.610912, 30.682505, 50.961693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364334, 30.447077, 50.977684>,  <37.803772, 30.013353, 50.890690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364334, 30.447077, 50.977684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.095596, 30.713009, 51.108295>,  <37.934353, 30.872568, 51.186661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.095596, 30.713009, 51.108295>,  <38.364334, 30.447077, 50.977684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095596, 30.713009, 51.108295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703412, 0.434595, 0.562440,
		0.232021, 0.607557, -0.759632,
		-0.671847, 0.664832, 0.326528,
		37.894043, 30.912458, 51.206253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713280, 31.116745, 50.874462>,  <38.364334, 30.447077, 50.977684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713280, 31.116745, 50.874462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.423069, 31.139782, 51.148773>,  <38.248940, 31.153605, 51.313358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.423069, 31.139782, 51.148773>,  <38.713280, 31.116745, 50.874462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423069, 31.139782, 51.148773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661123, 0.335048, 0.671312,
		-0.191104, 0.940439, -0.281164,
		-0.725532, 0.057594, 0.685775,
		38.205410, 31.157061, 51.354507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749641, 31.878330, 51.180637>,  <38.713280, 31.116745, 50.874462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749641, 31.878330, 51.180637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534916, 31.653524, 51.432343>,  <38.406082, 31.518641, 51.583366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534916, 31.653524, 51.432343>,  <38.749641, 31.878330, 51.180637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534916, 31.653524, 51.432343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487401, 0.402218, 0.775023,
		-0.688674, 0.722747, 0.058010,
		-0.536813, -0.562013, 0.629265,
		38.373871, 31.484921, 51.621120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443085, 32.338406, 51.650192>,  <38.749641, 31.878330, 51.180637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443085, 32.338406, 51.650192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.539639, 31.973425, 51.782352>,  <38.597572, 31.754436, 51.861649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.539639, 31.973425, 51.782352>,  <38.443085, 32.338406, 51.650192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539639, 31.973425, 51.782352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737428, 0.393792, 0.548751,
		-0.630818, 0.111187, 0.767923,
		0.241388, -0.912450, 0.330404,
		38.612057, 31.699690, 51.881474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453625, 32.386154, 52.468258>,  <38.443085, 32.338406, 51.650192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453625, 32.386154, 52.468258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.672726, 32.091827, 52.308990>,  <38.804184, 31.915230, 52.213428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.672726, 32.091827, 52.308990>,  <38.453625, 32.386154, 52.468258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672726, 32.091827, 52.308990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808254, 0.342469, 0.479000,
		-0.216096, -0.584196, 0.782315,
		0.547749, -0.735819, -0.398173,
		38.837051, 31.871082, 52.189537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346527, 33.226555, 52.364429>,  <38.453625, 32.386154, 52.468258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346527, 33.226555, 52.364429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568546, 33.557827, 52.395512>,  <38.701759, 33.756588, 52.414162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568546, 33.557827, 52.395512>,  <38.346527, 33.226555, 52.364429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568546, 33.557827, 52.395512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365908, 0.326990, -0.871314,
		-0.747013, 0.455191, 0.484533,
		0.555052, 0.828178, 0.077708,
		38.735062, 33.806282, 52.418823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869503, 33.775936, 52.299213>,  <38.346527, 33.226555, 52.364429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869503, 33.775936, 52.299213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240894, 33.877056, 52.190388>,  <38.463730, 33.937729, 52.125092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240894, 33.877056, 52.190388>,  <37.869503, 33.775936, 52.299213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240894, 33.877056, 52.190388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347604, 0.333616, -0.876283,
		-0.130760, 0.908181, 0.397630,
		0.928479, 0.252801, -0.272063,
		38.519440, 33.952896, 52.108768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769714, 34.345310, 51.988987>,  <37.869503, 33.775936, 52.299213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769714, 34.345310, 51.988987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.135609, 34.264389, 51.849087>,  <38.355145, 34.215836, 51.765144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.135609, 34.264389, 51.849087>,  <37.769714, 34.345310, 51.988987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135609, 34.264389, 51.849087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182123, 0.566263, -0.803852,
		0.360670, 0.799013, 0.481139,
		0.914739, -0.202299, -0.349752,
		38.410030, 34.203701, 51.744160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017399, 34.998833, 51.841839>,  <37.769714, 34.345310, 51.988987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017399, 34.998833, 51.841839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243351, 34.743183, 51.633057>,  <38.378922, 34.589794, 51.507790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243351, 34.743183, 51.633057>,  <38.017399, 34.998833, 51.841839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243351, 34.743183, 51.633057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341908, 0.394399, -0.852964,
		0.751005, 0.660283, 0.004268,
		0.564881, -0.639121, -0.521952,
		38.412815, 34.551445, 51.476471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206337, 35.348782, 51.194912>,  <38.017399, 34.998833, 51.841839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206337, 35.348782, 51.194912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.294682, 34.972118, 51.093319>,  <38.347687, 34.746120, 51.032364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.294682, 34.972118, 51.093319>,  <38.206337, 35.348782, 51.194912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294682, 34.972118, 51.093319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168517, 0.219651, -0.960914,
		0.960637, 0.255024, -0.110174,
		0.220857, -0.941656, -0.253981,
		38.360939, 34.689621, 51.017124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604336, 35.382435, 50.564995>,  <38.206337, 35.348782, 51.194912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604336, 35.382435, 50.564995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.455948, 35.011005, 50.569454>,  <38.366913, 34.788147, 50.572132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.455948, 35.011005, 50.569454>,  <38.604336, 35.382435, 50.564995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455948, 35.011005, 50.569454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247789, 0.087406, -0.964863,
		0.894975, -0.360700, -0.262516,
		-0.370972, -0.928577, 0.011152,
		38.344658, 34.732433, 50.572800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844368, 35.134171, 49.967743>,  <38.604336, 35.382435, 50.564995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844368, 35.134171, 49.967743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520466, 34.919308, 50.062199>,  <38.326126, 34.790390, 50.118874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520466, 34.919308, 50.062199>,  <38.844368, 35.134171, 49.967743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520466, 34.919308, 50.062199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343101, 0.106979, -0.933186,
		0.476004, -0.836672, -0.270925,
		-0.809754, -0.537155, 0.236140,
		38.277538, 34.758160, 50.133041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553772, 35.092339, 49.542625>,  <38.844368, 35.134171, 49.967743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553772, 35.092339, 49.542625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.666569, 35.468460, 49.466396>,  <39.734245, 35.694134, 49.420658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.666569, 35.468460, 49.466396>,  <39.553772, 35.092339, 49.542625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666569, 35.468460, 49.466396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527251, 0.014065, 0.849593,
		0.801552, -0.340057, -0.491808,
		0.281993, 0.940300, -0.190569,
		39.751167, 35.750549, 49.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316586, 35.115192, 49.461044>,  <39.553772, 35.092339, 49.542625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316586, 35.115192, 49.461044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.184422, 35.467285, 49.597290>,  <40.105125, 35.678543, 49.679039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.184422, 35.467285, 49.597290>,  <40.316586, 35.115192, 49.461044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184422, 35.467285, 49.597290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611870, -0.075015, 0.787393,
		0.718642, 0.468571, -0.513805,
		-0.330407, 0.880235, 0.340614,
		40.085300, 35.731358, 49.699474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932430, 35.491776, 49.574139>,  <40.316586, 35.115192, 49.461044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932430, 35.491776, 49.574139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.653477, 35.717422, 49.750969>,  <40.486107, 35.852810, 49.857067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.653477, 35.717422, 49.750969>,  <40.932430, 35.491776, 49.574139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653477, 35.717422, 49.750969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550800, 0.027201, 0.834194,
		0.458560, 0.825245, -0.329686,
		-0.697382, 0.564119, 0.442072,
		40.444263, 35.886658, 49.883591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297211, 36.060635, 49.999313>,  <40.932430, 35.491776, 49.574139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297211, 36.060635, 49.999313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.944290, 35.998123, 50.176907>,  <40.732536, 35.960617, 50.283463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.944290, 35.998123, 50.176907>,  <41.297211, 36.060635, 49.999313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944290, 35.998123, 50.176907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449663, -0.001123, 0.893198,
		-0.139090, 0.987712, 0.071264,
		-0.882302, -0.156279, 0.443981,
		40.679600, 35.951241, 50.310101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467793, 36.245075, 50.694027>,  <41.297211, 36.060635, 49.999313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467793, 36.245075, 50.694027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.101513, 36.085697, 50.714939>,  <40.881744, 35.990070, 50.727486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.101513, 36.085697, 50.714939>,  <41.467793, 36.245075, 50.694027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101513, 36.085697, 50.714939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071004, -0.032376, 0.996950,
		-0.395542, 0.916619, 0.057939,
		-0.915699, -0.398449, 0.052278,
		40.826801, 35.966164, 50.730621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949741, 36.652740, 51.167698>,  <41.467793, 36.245075, 50.694027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949741, 36.652740, 51.167698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.809238, 36.280495, 51.126583>,  <40.724937, 36.057148, 51.101913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.809238, 36.280495, 51.126583>,  <40.949741, 36.652740, 51.167698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809238, 36.280495, 51.126583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090346, -0.075580, 0.993038,
		-0.931908, 0.358102, -0.057530,
		-0.351261, -0.930618, -0.102786,
		40.703861, 36.001308, 51.095749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430183, 36.637722, 51.638531>,  <40.949741, 36.652740, 51.167698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430183, 36.637722, 51.638531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.513931, 36.250290, 51.584850>,  <40.564178, 36.017830, 51.552643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.513931, 36.250290, 51.584850>,  <40.430183, 36.637722, 51.638531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513931, 36.250290, 51.584850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107632, -0.159239, 0.981355,
		-0.971895, -0.191019, -0.137590,
		0.209368, -0.968584, -0.134204,
		40.576740, 35.959713, 51.544590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897102, 36.277191, 52.005383>,  <40.430183, 36.637722, 51.638531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897102, 36.277191, 52.005383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.210793, 36.032154, 51.965946>,  <40.399006, 35.885132, 51.942284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.210793, 36.032154, 51.965946>,  <39.897102, 36.277191, 52.005383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210793, 36.032154, 51.965946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047915, -0.218213, 0.974724,
		-0.618621, -0.759682, -0.200481,
		0.784227, -0.612590, -0.098591,
		40.446060, 35.848377, 51.936367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767208, 35.851280, 52.550922>,  <39.897102, 36.277191, 52.005383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767208, 35.851280, 52.550922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.138771, 35.742035, 52.450890>,  <40.361710, 35.676487, 52.390869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.138771, 35.742035, 52.450890>,  <39.767208, 35.851280, 52.550922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138771, 35.742035, 52.450890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153888, -0.329570, 0.931505,
		-0.336840, -0.903762, -0.264107,
		0.928901, -0.273125, -0.250091,
		40.417442, 35.660103, 52.375862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.221825, 36.995853, 38.002529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463276, 36.942226, 37.688164>,  <35.608147, 36.910049, 37.499546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463276, 36.942226, 37.688164>,  <35.221825, 36.995853, 38.002529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463276, 36.942226, 37.688164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345643, -0.844297, 0.409505,
		-0.718445, -0.518834, -0.463302,
		0.603629, -0.134070, -0.785912,
		35.644363, 36.902004, 37.452389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209290, 36.253967, 37.743446>,  <35.221825, 36.995853, 38.002529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209290, 36.253967, 37.743446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554138, 36.437927, 37.658371>,  <35.761047, 36.548306, 37.607327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554138, 36.437927, 37.658371>,  <35.209290, 36.253967, 37.743446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554138, 36.437927, 37.658371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495460, -0.677225, 0.543953,
		0.106130, -0.574331, -0.811714,
		0.862123, 0.459902, -0.212684,
		35.812775, 36.575897, 37.594566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604462, 35.763916, 37.597446>,  <35.209290, 36.253967, 37.743446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604462, 35.763916, 37.597446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828373, 36.081776, 37.691410>,  <35.962719, 36.272491, 37.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828373, 36.081776, 37.691410>,  <35.604462, 35.763916, 37.597446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828373, 36.081776, 37.691410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420064, -0.516485, 0.746183,
		0.714280, -0.319020, -0.622921,
		0.559777, 0.794650, 0.234906,
		35.996307, 36.320171, 37.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248047, 35.414413, 37.808598>,  <35.604462, 35.763916, 37.597446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248047, 35.414413, 37.808598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308376, 35.792271, 37.925152>,  <36.344574, 36.018986, 37.995083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308376, 35.792271, 37.925152>,  <36.248047, 35.414413, 37.808598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308376, 35.792271, 37.925152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519403, -0.326513, 0.789690,
		0.841115, 0.032242, -0.539895,
		0.150822, 0.944643, 0.291382,
		36.353622, 36.075665, 38.012566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018192, 35.503555, 37.910954>,  <36.248047, 35.414413, 37.808598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018192, 35.503555, 37.910954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806740, 35.761772, 38.131435>,  <36.679867, 35.916702, 38.263725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806740, 35.761772, 38.131435>,  <37.018192, 35.503555, 37.910954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806740, 35.761772, 38.131435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496576, -0.291468, 0.817594,
		0.688448, 0.705920, -0.166481,
		-0.528632, 0.645541, 0.551203,
		36.648151, 35.955433, 38.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493504, 36.017101, 38.277653>,  <37.018192, 35.503555, 37.910954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493504, 36.017101, 38.277653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152203, 36.008411, 38.486069>,  <36.947422, 36.003197, 38.611118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152203, 36.008411, 38.486069>,  <37.493504, 36.017101, 38.277653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152203, 36.008411, 38.486069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519991, -0.111191, 0.846904,
		0.039540, 0.993562, 0.106168,
		-0.853256, -0.021720, 0.521039,
		36.896225, 36.001896, 38.642380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763123, 36.169300, 38.878334>,  <37.493504, 36.017101, 38.277653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763123, 36.169300, 38.878334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393574, 36.067982, 38.993088>,  <37.171844, 36.007191, 39.061939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393574, 36.067982, 38.993088>,  <37.763123, 36.169300, 38.878334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393574, 36.067982, 38.993088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328625, -0.140915, 0.933889,
		-0.196123, 0.957071, 0.213427,
		-0.923873, -0.253295, 0.286881,
		37.116413, 35.991993, 39.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696697, 36.491486, 39.493603>,  <37.763123, 36.169300, 38.878334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696697, 36.491486, 39.493603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408276, 36.215977, 39.523720>,  <37.235222, 36.050671, 39.541790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408276, 36.215977, 39.523720>,  <37.696697, 36.491486, 39.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408276, 36.215977, 39.523720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198976, -0.101758, 0.974707,
		-0.663691, 0.717800, 0.210423,
		-0.721057, -0.688773, 0.075289,
		37.191959, 36.009346, 39.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115944, 36.731621, 39.913811>,  <37.696697, 36.491486, 39.493603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115944, 36.731621, 39.913811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072121, 36.334122, 39.922421>,  <37.045826, 36.095623, 39.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072121, 36.334122, 39.922421>,  <37.115944, 36.731621, 39.913811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072121, 36.334122, 39.922421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002579, 0.021366, 0.999768,
		-0.993978, 0.109584, 0.000222,
		-0.109554, -0.993748, 0.021520,
		37.039253, 36.035995, 39.928875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584248, 36.618629, 40.418755>,  <37.115944, 36.731621, 39.913811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584248, 36.618629, 40.418755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769592, 36.267010, 40.373920>,  <36.880798, 36.056038, 40.347019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769592, 36.267010, 40.373920>,  <36.584248, 36.618629, 40.418755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769592, 36.267010, 40.373920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086505, -0.081014, 0.992952,
		-0.881938, -0.469791, 0.038503,
		0.463360, -0.879053, -0.112088,
		36.908600, 36.003292, 40.340294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412682, 36.330765, 40.959682>,  <36.584248, 36.618629, 40.418755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412682, 36.330765, 40.959682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725403, 36.089035, 40.898266>,  <36.913036, 35.943996, 40.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725403, 36.089035, 40.898266>,  <36.412682, 36.330765, 40.959682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725403, 36.089035, 40.898266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194039, 0.001788, 0.980992,
		-0.592567, -0.796734, 0.118661,
		0.781801, -0.604328, -0.153538,
		36.959942, 35.907738, 40.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397331, 35.687256, 41.447174>,  <36.412682, 36.330765, 40.959682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397331, 35.687256, 41.447174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780464, 35.745144, 41.347881>,  <37.010342, 35.779877, 41.288303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780464, 35.745144, 41.347881>,  <36.397331, 35.687256, 41.447174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780464, 35.745144, 41.347881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265949, -0.119413, 0.956563,
		0.108795, -0.982240, -0.152867,
		0.957828, 0.144724, -0.248234,
		37.067814, 35.788563, 41.273411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268475, 34.993397, 41.739052>,  <36.397331, 35.687256, 41.447174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268475, 34.993397, 41.739052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889275, 35.079556, 41.832771>,  <35.661755, 35.131252, 41.889004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889275, 35.079556, 41.832771>,  <36.268475, 34.993397, 41.739052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889275, 35.079556, 41.832771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231596, 0.038079, -0.972067,
		-0.218303, -0.975784, 0.013786,
		-0.948002, 0.215398, 0.234300,
		35.604874, 35.144173, 41.903061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900249, 34.680157, 41.207863>,  <36.268475, 34.993397, 41.739052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900249, 34.680157, 41.207863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611965, 34.920025, 41.346985>,  <35.438995, 35.063946, 41.430458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611965, 34.920025, 41.346985>,  <35.900249, 34.680157, 41.207863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611965, 34.920025, 41.346985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449809, -0.022760, -0.892835,
		-0.527491, -0.799923, 0.286141,
		-0.720711, 0.599671, 0.347807,
		35.395752, 35.099926, 41.451328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235443, 34.318459, 41.041119>,  <35.900249, 34.680157, 41.207863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235443, 34.318459, 41.041119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165066, 34.707520, 41.101765>,  <35.122841, 34.940956, 41.138153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165066, 34.707520, 41.101765>,  <35.235443, 34.318459, 41.041119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165066, 34.707520, 41.101765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527314, 0.036931, -0.848867,
		-0.831254, -0.229298, 0.506397,
		-0.175942, 0.972655, 0.151611,
		35.112282, 34.999317, 41.147247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486889, 34.440971, 41.277672>,  <35.235443, 34.318459, 41.041119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486889, 34.440971, 41.277672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650532, 34.745281, 41.076134>,  <34.748718, 34.927868, 40.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650532, 34.745281, 41.076134>,  <34.486889, 34.440971, 41.277672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650532, 34.745281, 41.076134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775738, -0.000777, -0.631054,
		-0.480480, 0.649018, 0.589842,
		0.409107, 0.760772, -0.503842,
		34.773266, 34.973515, 40.924980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959728, 34.771740, 41.178749>,  <34.486889, 34.440971, 41.277672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959728, 34.771740, 41.178749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231716, 34.912235, 40.921295>,  <34.394909, 34.996532, 40.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231716, 34.912235, 40.921295>,  <33.959728, 34.771740, 41.178749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231716, 34.912235, 40.921295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724696, 0.188340, -0.662830,
		-0.111590, 0.917147, 0.382608,
		0.679973, 0.351239, -0.643636,
		34.435707, 35.017609, 40.728203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620781, 35.275856, 40.890785>,  <33.959728, 34.771740, 41.178749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620781, 35.275856, 40.890785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934605, 35.225323, 40.647968>,  <34.122898, 35.195004, 40.502277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934605, 35.225323, 40.647968>,  <33.620781, 35.275856, 40.890785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934605, 35.225323, 40.647968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605933, 0.051493, -0.793848,
		0.131550, 0.990650, -0.036152,
		0.784564, -0.126337, -0.607041,
		34.169975, 35.187420, 40.465855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538673, 35.765293, 40.385029>,  <33.620781, 35.275856, 40.890785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538673, 35.765293, 40.385029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786259, 35.489582, 40.234413>,  <33.934811, 35.324158, 40.144043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786259, 35.489582, 40.234413>,  <33.538673, 35.765293, 40.385029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786259, 35.489582, 40.234413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513054, 0.008164, -0.858317,
		0.594689, 0.724455, -0.348581,
		0.618967, -0.689273, -0.376540,
		33.971951, 35.282799, 40.121452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676319, 36.077724, 39.801476>,  <33.538673, 35.765293, 40.385029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676319, 36.077724, 39.801476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770210, 35.694519, 39.735619>,  <33.826546, 35.464596, 39.696106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770210, 35.694519, 39.735619>,  <33.676319, 36.077724, 39.801476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770210, 35.694519, 39.735619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577086, -0.001043, -0.816683,
		0.782224, 0.286709, -0.553103,
		0.234727, -0.958017, -0.164640,
		33.840630, 35.407112, 39.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973953, 35.963203, 39.103149>,  <33.676319, 36.077724, 39.801476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973953, 35.963203, 39.103149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867165, 35.592995, 39.210583>,  <33.803093, 35.370869, 39.275043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867165, 35.592995, 39.210583>,  <33.973953, 35.963203, 39.103149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867165, 35.592995, 39.210583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475764, -0.115792, -0.871918,
		0.838079, -0.360555, -0.409418,
		-0.266968, -0.925523, 0.268582,
		33.787075, 35.315338, 39.291157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128754, 35.607662, 38.525379>,  <33.973953, 35.963203, 39.103149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128754, 35.607662, 38.525379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855068, 35.398319, 38.728535>,  <33.690857, 35.272713, 38.850430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855068, 35.398319, 38.728535>,  <34.128754, 35.607662, 38.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855068, 35.398319, 38.728535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502796, -0.165929, -0.848330,
		0.528251, -0.835803, -0.149610,
		-0.684213, -0.523355, 0.507891,
		33.649803, 35.241314, 38.880901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892151, 35.432602, 37.993862>,  <34.128754, 35.607662, 38.525379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892151, 35.432602, 37.993862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646339, 35.276661, 38.268196>,  <33.498852, 35.183098, 38.432796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646339, 35.276661, 38.268196>,  <33.892151, 35.432602, 37.993862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646339, 35.276661, 38.268196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577134, -0.370522, -0.727756,
		0.537834, -0.843046, 0.002700,
		-0.614533, -0.389854, 0.685830,
		33.461979, 35.159706, 38.473946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885067, 34.708965, 37.768314>,  <33.892151, 35.432602, 37.993862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885067, 34.708965, 37.768314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560635, 34.812271, 37.978249>,  <33.365974, 34.874256, 38.104210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560635, 34.812271, 37.978249>,  <33.885067, 34.708965, 37.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560635, 34.812271, 37.978249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581105, -0.253188, -0.773442,
		-0.066871, -0.932306, 0.355435,
		-0.811076, 0.258266, 0.524837,
		33.317310, 34.889751, 38.135700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413486, 34.174126, 37.813015>,  <33.885067, 34.708965, 37.768314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413486, 34.174126, 37.813015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188137, 34.498302, 37.877243>,  <33.052925, 34.692810, 37.915779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188137, 34.498302, 37.877243>,  <33.413486, 34.174126, 37.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188137, 34.498302, 37.877243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594726, -0.262902, -0.759726,
		-0.573504, -0.523506, 0.630107,
		-0.563378, 0.810447, 0.160567,
		33.019123, 34.741436, 37.925415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599003, 33.962006, 37.957458>,  <33.413486, 34.174126, 37.813015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599003, 33.962006, 37.957458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632729, 34.333328, 37.812603>,  <32.652966, 34.556122, 37.725689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632729, 34.333328, 37.812603>,  <32.599003, 33.962006, 37.957458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632729, 34.333328, 37.812603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611898, -0.238603, -0.754088,
		-0.786430, 0.285174, 0.547909,
		0.084314, 0.928302, -0.362142,
		32.658024, 34.611820, 37.703960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094830, 33.307201, 37.907856>,  <32.599003, 33.962006, 37.957458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094830, 33.307201, 37.907856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119110, 32.909473, 37.872902>,  <32.133678, 32.670837, 37.851929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119110, 32.909473, 37.872902>,  <32.094830, 33.307201, 37.907856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119110, 32.909473, 37.872902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224370, -0.071714, 0.971862,
		-0.972612, -0.078600, 0.218743,
		0.060701, -0.994323, -0.087385,
		32.137321, 32.611176, 37.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674936, 32.885654, 38.409634>,  <32.094830, 33.307201, 37.907856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674936, 32.885654, 38.409634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995369, 32.668709, 38.308357>,  <32.187630, 32.538540, 38.247589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995369, 32.668709, 38.308357>,  <31.674936, 32.885654, 38.409634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995369, 32.668709, 38.308357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187078, -0.174943, 0.966642,
		-0.568570, -0.821725, -0.038678,
		0.801080, -0.542368, -0.253194,
		32.235695, 32.505997, 38.232399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639400, 32.239231, 38.795204>,  <31.674936, 32.885654, 38.409634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639400, 32.239231, 38.795204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024395, 32.311829, 38.714531>,  <32.255390, 32.355389, 38.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024395, 32.311829, 38.714531>,  <31.639400, 32.239231, 38.795204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024395, 32.311829, 38.714531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242290, -0.240357, 0.939960,
		0.122120, -0.953566, -0.275315,
		0.962487, 0.181494, -0.201687,
		32.313141, 32.366276, 38.654026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974518, 31.729216, 38.996616>,  <31.639400, 32.239231, 38.795204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974518, 31.729216, 38.996616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314548, 31.939854, 38.993404>,  <32.518566, 32.066235, 38.991478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314548, 31.939854, 38.993404>,  <31.974518, 31.729216, 38.996616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314548, 31.939854, 38.993404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265052, -0.414595, 0.870551,
		0.455098, -0.742165, -0.492013,
		0.850079, 0.526595, -0.008031,
		32.569572, 32.097832, 38.990993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368774, 31.278591, 39.315067>,  <31.974518, 31.729216, 38.996616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368774, 31.278591, 39.315067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555630, 31.631525, 39.337936>,  <32.667744, 31.843285, 39.351658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555630, 31.631525, 39.337936>,  <32.368774, 31.278591, 39.315067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555630, 31.631525, 39.337936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305581, -0.221784, 0.925976,
		0.829702, -0.415086, -0.373228,
		0.467136, 0.882335, 0.057173,
		32.695770, 31.896225, 39.355087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063869, 31.121685, 39.492882>,  <32.368774, 31.278591, 39.315067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063869, 31.121685, 39.492882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003944, 31.503000, 39.597801>,  <32.967991, 31.731789, 39.660751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003944, 31.503000, 39.597801>,  <33.063869, 31.121685, 39.492882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003944, 31.503000, 39.597801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394170, -0.185712, 0.900078,
		0.906745, 0.238234, -0.347935,
		-0.149814, 0.953287, 0.262298,
		32.959000, 31.788986, 39.676491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748241, 31.402666, 39.863403>,  <33.063869, 31.121685, 39.492882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748241, 31.402666, 39.863403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483837, 31.680000, 39.978191>,  <33.325195, 31.846401, 40.047066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483837, 31.680000, 39.978191>,  <33.748241, 31.402666, 39.863403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483837, 31.680000, 39.978191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371329, -0.030092, 0.928014,
		0.652060, 0.719987, -0.237564,
		-0.661009, 0.693335, 0.286974,
		33.285534, 31.888000, 40.064285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075638, 31.972359, 40.289795>,  <33.748241, 31.402666, 39.863403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075638, 31.972359, 40.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690334, 31.966938, 40.397091>,  <33.459152, 31.963686, 40.461468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690334, 31.966938, 40.397091>,  <34.075638, 31.972359, 40.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690334, 31.966938, 40.397091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268218, 0.003359, 0.963352,
		-0.013958, 0.999902, 0.000400,
		-0.963257, -0.013554, 0.268239,
		33.401356, 31.962872, 40.477562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074631, 32.289349, 40.902328>,  <34.075638, 31.972359, 40.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074631, 32.289349, 40.902328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694229, 32.166759, 40.918709>,  <33.465988, 32.093208, 40.928535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694229, 32.166759, 40.918709>,  <34.074631, 32.289349, 40.902328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694229, 32.166759, 40.918709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105140, -0.195987, 0.974954,
		-0.290767, 0.931486, 0.218606,
		-0.950999, -0.306469, 0.040950,
		33.408928, 32.074818, 40.930992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729485, 32.659550, 41.419556>,  <34.074631, 32.289349, 40.902328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729485, 32.659550, 41.419556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506645, 32.330128, 41.376850>,  <33.372944, 32.132473, 41.351227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506645, 32.330128, 41.376850>,  <33.729485, 32.659550, 41.419556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506645, 32.330128, 41.376850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064750, -0.171250, 0.983098,
		-0.827921, 0.540766, 0.148728,
		-0.557095, -0.823557, -0.106767,
		33.339516, 32.083061, 41.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198017, 32.701332, 42.017685>,  <33.729485, 32.659550, 41.419556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198017, 32.701332, 42.017685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249008, 32.327293, 41.885422>,  <33.279602, 32.102871, 41.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249008, 32.327293, 41.885422>,  <33.198017, 32.701332, 42.017685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249008, 32.327293, 41.885422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098847, -0.319741, 0.942335,
		-0.986903, -0.152813, 0.051672,
		0.127480, -0.935101, -0.330658,
		33.287251, 32.046764, 41.786224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759663, 32.362919, 42.376904>,  <33.198017, 32.701332, 42.017685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759663, 32.362919, 42.376904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985664, 32.055569, 42.256657>,  <33.121265, 31.871159, 42.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985664, 32.055569, 42.256657>,  <32.759663, 32.362919, 42.376904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985664, 32.055569, 42.256657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219917, -0.210919, 0.952444,
		-0.795243, -0.604242, 0.049810,
		0.565000, -0.768378, -0.300615,
		33.155163, 31.825056, 42.166473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601898, 31.928373, 42.914017>,  <32.759663, 32.362919, 42.376904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601898, 31.928373, 42.914017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936928, 31.803478, 42.734695>,  <33.137947, 31.728540, 42.627102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936928, 31.803478, 42.734695>,  <32.601898, 31.928373, 42.914017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936928, 31.803478, 42.734695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322383, -0.380011, 0.866984,
		-0.441070, -0.870687, -0.217625,
		0.837572, -0.312242, -0.448306,
		33.188202, 31.709806, 42.600204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798145, 31.336309, 43.167591>,  <32.601898, 31.928373, 42.914017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798145, 31.336309, 43.167591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138393, 31.500458, 43.036110>,  <33.342541, 31.598948, 42.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138393, 31.500458, 43.036110>,  <32.798145, 31.336309, 43.167591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138393, 31.500458, 43.036110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462006, -0.284934, 0.839859,
		0.250997, -0.866261, -0.431964,
		0.850618, 0.410372, -0.328700,
		33.393578, 31.623569, 42.937500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234966, 30.901718, 43.211853>,  <32.798145, 31.336309, 43.167591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234966, 30.901718, 43.211853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480808, 31.216587, 43.191360>,  <33.628311, 31.405508, 43.179066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480808, 31.216587, 43.191360>,  <33.234966, 30.901718, 43.211853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480808, 31.216587, 43.191360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508375, -0.345589, 0.788748,
		0.603175, -0.510811, -0.612578,
		0.614601, 0.787172, -0.051232,
		33.665188, 31.452738, 43.175991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780666, 30.617113, 43.534458>,  <33.234966, 30.901718, 43.211853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780666, 30.617113, 43.534458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859516, 31.009258, 43.536640>,  <33.906826, 31.244545, 43.537949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859516, 31.009258, 43.536640>,  <33.780666, 30.617113, 43.534458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859516, 31.009258, 43.536640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420271, -0.089531, 0.902971,
		0.885728, -0.175706, -0.429667,
		0.197126, 0.980363, 0.005456,
		33.918655, 31.303368, 43.538277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508884, 30.704641, 43.661243>,  <33.780666, 30.617113, 43.534458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508884, 30.704641, 43.661243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364025, 31.066675, 43.750393>,  <34.277107, 31.283895, 43.803883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364025, 31.066675, 43.750393>,  <34.508884, 30.704641, 43.661243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364025, 31.066675, 43.750393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399608, -0.065262, 0.914360,
		0.842116, 0.420199, -0.338044,
		-0.362151, 0.905082, 0.222873,
		34.255379, 31.338200, 43.817253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122528, 31.162264, 43.877789>,  <34.508884, 30.704641, 43.661243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122528, 31.162264, 43.877789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786068, 31.320892, 44.024868>,  <34.584194, 31.416069, 44.113117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786068, 31.320892, 44.024868>,  <35.122528, 31.162264, 43.877789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786068, 31.320892, 44.024868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383536, -0.041912, 0.922574,
		0.381278, 0.917047, -0.116846,
		-0.841146, 0.396572, 0.367701,
		34.533726, 31.439863, 44.135178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334545, 31.756159, 44.129845>,  <35.122528, 31.162264, 43.877789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334545, 31.756159, 44.129845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993690, 31.704552, 44.332710>,  <34.789177, 31.673588, 44.454430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993690, 31.704552, 44.332710>,  <35.334545, 31.756159, 44.129845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993690, 31.704552, 44.332710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472191, 0.228219, 0.851441,
		-0.225596, 0.965023, -0.133553,
		-0.852140, -0.129019, 0.507160,
		34.738049, 31.665846, 44.484859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350391, 32.220871, 44.504063>,  <35.334545, 31.756159, 44.129845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350391, 32.220871, 44.504063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092270, 31.972912, 44.682644>,  <34.937397, 31.824137, 44.789791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092270, 31.972912, 44.682644>,  <35.350391, 32.220871, 44.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092270, 31.972912, 44.682644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485269, 0.118732, 0.866266,
		-0.590001, 0.775650, 0.224197,
		-0.645300, -0.619894, 0.446451,
		34.898682, 31.786943, 44.816578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097954, 32.522575, 45.126392>,  <35.350391, 32.220871, 44.504063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097954, 32.522575, 45.126392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027279, 32.134422, 45.192291>,  <34.984871, 31.901531, 45.231831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027279, 32.134422, 45.192291>,  <35.097954, 32.522575, 45.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027279, 32.134422, 45.192291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313447, 0.103190, 0.943982,
		-0.933022, 0.218433, 0.285930,
		-0.176692, -0.970381, 0.164746,
		34.974270, 31.843307, 45.241714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794613, 32.496838, 45.849106>,  <35.097954, 32.522575, 45.126392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794613, 32.496838, 45.849106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927563, 32.126789, 45.775696>,  <35.007332, 31.904760, 45.731647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927563, 32.126789, 45.775696>,  <34.794613, 32.496838, 45.849106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927563, 32.126789, 45.775696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374701, -0.049053, 0.925847,
		-0.865523, -0.376493, 0.330340,
		0.332371, -0.925120, -0.183529,
		35.027275, 31.849253, 45.720638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537716, 31.898363, 46.393433>,  <34.794613, 32.496838, 45.849106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537716, 31.898363, 46.393433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876831, 31.755486, 46.236633>,  <35.080299, 31.669760, 46.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876831, 31.755486, 46.236633>,  <34.537716, 31.898363, 46.393433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876831, 31.755486, 46.236633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411146, -0.024190, 0.911249,
		-0.334974, -0.933718, 0.126350,
		0.847792, -0.357193, -0.391997,
		35.131168, 31.648327, 46.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620144, 31.318382, 46.805977>,  <34.537716, 31.898363, 46.393433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620144, 31.318382, 46.805977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986366, 31.326054, 46.645283>,  <35.206100, 31.330656, 46.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986366, 31.326054, 46.645283>,  <34.620144, 31.318382, 46.805977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986366, 31.326054, 46.645283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399644, -0.155657, 0.903358,
		-0.045204, -0.987625, -0.150179,
		0.915556, 0.019183, -0.401735,
		35.261032, 31.331808, 46.524761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028767, 30.743530, 47.164402>,  <34.620144, 31.318382, 46.805977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028767, 30.743530, 47.164402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316807, 30.935415, 46.963871>,  <35.489632, 31.050547, 46.843552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316807, 30.935415, 46.963871>,  <35.028767, 30.743530, 47.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316807, 30.935415, 46.963871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636152, -0.167945, 0.753064,
		0.277062, -0.861201, -0.426109,
		0.720102, 0.479715, -0.501324,
		35.532837, 31.079330, 46.813473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628487, 30.323908, 47.159801>,  <35.028767, 30.743530, 47.164402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628487, 30.323908, 47.159801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754684, 30.698536, 47.098740>,  <35.830402, 30.923313, 47.062103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754684, 30.698536, 47.098740>,  <35.628487, 30.323908, 47.159801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754684, 30.698536, 47.098740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788481, -0.169231, 0.591320,
		0.527979, -0.306920, -0.791858,
		0.315494, 0.936569, -0.152650,
		35.849331, 30.979507, 47.052944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300888, 30.258451, 46.956020>,  <35.628487, 30.323908, 47.159801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300888, 30.258451, 46.956020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223007, 30.621696, 47.104301>,  <36.176277, 30.839643, 47.193272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223007, 30.621696, 47.104301>,  <36.300888, 30.258451, 46.956020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223007, 30.621696, 47.104301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609739, -0.183983, 0.770953,
		0.768316, 0.376141, -0.517889,
		-0.194704, 0.908113, 0.370705,
		36.164597, 30.894131, 47.215511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943569, 30.385075, 47.275749>,  <36.300888, 30.258451, 46.956020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943569, 30.385075, 47.275749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679462, 30.635923, 47.441044>,  <36.521000, 30.786432, 47.540222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679462, 30.635923, 47.441044>,  <36.943569, 30.385075, 47.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679462, 30.635923, 47.441044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417390, -0.151025, 0.896090,
		0.624369, 0.764138, -0.162038,
		-0.660265, 0.627124, 0.413239,
		36.481384, 30.824060, 47.565014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471722, 30.564997, 46.807812>,  <36.943569, 30.385075, 47.275749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471722, 30.564997, 46.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840057, 30.707003, 46.743282>,  <38.061058, 30.792206, 46.704563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840057, 30.707003, 46.743282>,  <37.471722, 30.564997, 46.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840057, 30.707003, 46.743282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154008, -0.048989, -0.986854,
		-0.358250, 0.933576, 0.009564,
		0.920836, 0.355014, -0.161328,
		38.116306, 30.813507, 46.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428482, 31.291508, 46.455650>,  <37.471722, 30.564997, 46.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428482, 31.291508, 46.455650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748302, 31.058216, 46.398289>,  <37.940193, 30.918242, 46.363873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748302, 31.058216, 46.398289>,  <37.428482, 31.291508, 46.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748302, 31.058216, 46.398289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098232, 0.108556, -0.989225,
		0.592513, 0.805021, 0.029504,
		0.799549, -0.583230, -0.143400,
		37.988167, 30.883247, 46.355270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610607, 31.445751, 45.840683>,  <37.428482, 31.291508, 46.455650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610607, 31.445751, 45.840683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834614, 31.119967, 45.901386>,  <37.969017, 30.924496, 45.937809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834614, 31.119967, 45.901386>,  <37.610607, 31.445751, 45.840683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834614, 31.119967, 45.901386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152104, -0.078989, -0.985203,
		0.814396, 0.574818, 0.079647,
		0.560021, -0.814460, 0.151761,
		38.002621, 30.875629, 45.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250999, 31.474054, 45.447517>,  <37.610607, 31.445751, 45.840683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250999, 31.474054, 45.447517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162247, 31.087093, 45.496353>,  <38.108997, 30.854918, 45.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162247, 31.087093, 45.496353>,  <38.250999, 31.474054, 45.447517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162247, 31.087093, 45.496353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144750, -0.156503, -0.977013,
		0.964270, -0.199105, 0.174756,
		-0.221878, -0.967401, 0.122090,
		38.095684, 30.796873, 45.532982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582226, 31.250332, 44.945282>,  <38.250999, 31.474054, 45.447517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582226, 31.250332, 44.945282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327316, 30.954239, 45.031013>,  <38.174370, 30.776583, 45.082451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327316, 30.954239, 45.031013>,  <38.582226, 31.250332, 44.945282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327316, 30.954239, 45.031013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029450, -0.301309, -0.953072,
		0.770074, -0.601057, 0.213817,
		-0.637275, -0.740232, 0.214329,
		38.136135, 30.732170, 45.095314>
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
